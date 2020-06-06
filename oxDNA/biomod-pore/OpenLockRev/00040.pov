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
	<40.950378, 35.393784, 47.204678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850262, 35.365833, 47.590935>,  <40.790192, 35.349064, 47.822689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850262, 35.365833, 47.590935>,  <40.950378, 35.393784, 47.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850262, 35.365833, 47.590935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953692, 0.154052, 0.258341,
		-0.166811, 0.985589, 0.028080,
		-0.250292, -0.069874, 0.965646,
		40.775173, 35.344872, 47.880627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208096, 36.013794, 47.565121>,  <40.950378, 35.393784, 47.204678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208096, 36.013794, 47.565121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167999, 35.748104, 47.861435>,  <41.143944, 35.588692, 48.039223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167999, 35.748104, 47.861435>,  <41.208096, 36.013794, 47.565121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167999, 35.748104, 47.861435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943985, 0.171777, 0.281755,
		-0.314397, 0.727533, 0.609796,
		-0.100237, -0.664221, 0.740786,
		41.137928, 35.548840, 48.083672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615429, 36.315281, 48.167465>,  <41.208096, 36.013794, 47.565121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615429, 36.315281, 48.167465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568760, 35.930027, 48.264427>,  <41.540756, 35.698875, 48.322605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568760, 35.930027, 48.264427>,  <41.615429, 36.315281, 48.167465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568760, 35.930027, 48.264427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877865, 0.014132, 0.478701,
		-0.464479, 0.268648, 0.843853,
		-0.116676, -0.963135, 0.242401,
		41.533756, 35.641087, 48.337147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583401, 36.213417, 48.817898>,  <41.615429, 36.315281, 48.167465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583401, 36.213417, 48.817898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700790, 35.846298, 48.710926>,  <41.771225, 35.626026, 48.646744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700790, 35.846298, 48.710926>,  <41.583401, 36.213417, 48.817898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700790, 35.846298, 48.710926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730664, 0.034954, 0.681842,
		-0.616446, -0.395503, 0.680861,
		0.293469, -0.917799, -0.267432,
		41.788830, 35.570957, 48.630695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823433, 35.887081, 49.425297>,  <41.583401, 36.213417, 48.817898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823433, 35.887081, 49.425297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996655, 35.653687, 49.150486>,  <42.100590, 35.513649, 48.985600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996655, 35.653687, 49.150486>,  <41.823433, 35.887081, 49.425297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996655, 35.653687, 49.150486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891627, 0.165562, 0.421414,
		-0.132146, -0.795065, 0.591953,
		0.433057, -0.583490, -0.687024,
		42.126572, 35.478638, 48.944378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174355, 35.327522, 49.765514>,  <41.823433, 35.887081, 49.425297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174355, 35.327522, 49.765514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356495, 35.332451, 49.409424>,  <42.465778, 35.335407, 49.195770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356495, 35.332451, 49.409424>,  <42.174355, 35.327522, 49.765514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356495, 35.332451, 49.409424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885991, -0.104658, 0.451738,
		-0.087600, -0.994432, -0.058579,
		0.455353, 0.012328, -0.890226,
		42.493099, 35.336147, 49.142357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588482, 34.892822, 49.960285>,  <42.174355, 35.327522, 49.765514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588482, 34.892822, 49.960285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770855, 35.037460, 49.634983>,  <42.880280, 35.124245, 49.439804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770855, 35.037460, 49.634983>,  <42.588482, 34.892822, 49.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770855, 35.037460, 49.634983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890015, -0.186180, 0.416186,
		-0.000920, -0.913557, -0.406709,
		0.455930, 0.361594, -0.813251,
		42.907635, 35.145939, 49.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104660, 34.362087, 49.684849>,  <42.588482, 34.892822, 49.960285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104660, 34.362087, 49.684849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201050, 34.734150, 49.574032>,  <43.258884, 34.957386, 49.507542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201050, 34.734150, 49.574032>,  <43.104660, 34.362087, 49.684849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201050, 34.734150, 49.574032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851946, -0.065995, 0.519455,
		0.464889, -0.361195, -0.808342,
		0.240971, 0.930152, -0.277038,
		43.273342, 35.013195, 49.490921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842491, 34.363304, 49.588036>,  <43.104660, 34.362087, 49.684849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842491, 34.363304, 49.588036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778103, 34.758011, 49.580330>,  <43.739471, 34.994835, 49.575706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778103, 34.758011, 49.580330>,  <43.842491, 34.363304, 49.588036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778103, 34.758011, 49.580330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922269, 0.157342, 0.353077,
		0.351437, 0.039067, -0.935396,
		-0.160970, 0.986771, -0.019266,
		43.729813, 35.054043, 49.574551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340019, 34.700359, 49.149883>,  <43.842491, 34.363304, 49.588036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340019, 34.700359, 49.149883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217766, 34.986645, 49.401070>,  <44.144413, 35.158417, 49.551781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217766, 34.986645, 49.401070>,  <44.340019, 34.700359, 49.149883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217766, 34.986645, 49.401070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936620, 0.107368, 0.333489,
		0.171260, 0.690090, -0.703168,
		-0.305635, 0.715715, 0.627965,
		44.126076, 35.201359, 49.589458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928833, 35.113964, 49.119419>,  <44.340019, 34.700359, 49.149883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928833, 35.113964, 49.119419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732170, 35.227745, 49.448627>,  <44.614174, 35.296013, 49.646152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732170, 35.227745, 49.448627>,  <44.928833, 35.113964, 49.119419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732170, 35.227745, 49.448627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870115, 0.197692, 0.451462,
		-0.034283, 0.938085, -0.344705,
		-0.491655, 0.284455, 0.823019,
		44.584675, 35.313080, 49.695534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316807, 35.666695, 49.290447>,  <44.928833, 35.113964, 49.119419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316807, 35.666695, 49.290447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120640, 35.588707, 49.630207>,  <45.002937, 35.541916, 49.834061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120640, 35.588707, 49.630207>,  <45.316807, 35.666695, 49.290447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120640, 35.588707, 49.630207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864545, 0.013919, 0.502362,
		-0.109767, 0.980711, 0.161731,
		-0.490421, -0.194967, 0.849397,
		44.973515, 35.530216, 49.885025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542511, 36.087677, 49.818775>,  <45.316807, 35.666695, 49.290447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542511, 36.087677, 49.818775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370564, 35.796162, 50.031975>,  <45.267395, 35.621254, 50.159893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370564, 35.796162, 50.031975>,  <45.542511, 36.087677, 49.818775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370564, 35.796162, 50.031975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829819, -0.086246, 0.551328,
		-0.355830, 0.679290, 0.641833,
		-0.429867, -0.728785, 0.532998,
		45.241604, 35.577526, 50.191875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530884, 36.257744, 50.516644>,  <45.542511, 36.087677, 49.818775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530884, 36.257744, 50.516644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479553, 35.862156, 50.546219>,  <45.448753, 35.624802, 50.563965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479553, 35.862156, 50.546219>,  <45.530884, 36.257744, 50.516644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479553, 35.862156, 50.546219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700591, -0.037636, 0.712570,
		-0.701928, 0.143242, 0.697695,
		-0.128329, -0.988972, 0.073936,
		45.441055, 35.565464, 50.568401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543617, 36.126972, 51.187809>,  <45.530884, 36.257744, 50.516644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543617, 36.126972, 51.187809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598347, 35.751785, 51.060375>,  <45.631184, 35.526672, 50.983917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598347, 35.751785, 51.060375>,  <45.543617, 36.126972, 51.187809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598347, 35.751785, 51.060375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739614, -0.117215, 0.662745,
		-0.658977, -0.326305, 0.677698,
		0.136821, -0.937969, -0.318582,
		45.639393, 35.470394, 50.964802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520470, 35.745029, 51.777763>,  <45.543617, 36.126972, 51.187809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520470, 35.745029, 51.777763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714470, 35.509411, 51.519215>,  <45.830872, 35.368038, 51.364086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714470, 35.509411, 51.519215>,  <45.520470, 35.745029, 51.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714470, 35.509411, 51.519215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611656, -0.299758, 0.732135,
		-0.625019, -0.750443, 0.214913,
		0.485004, -0.589051, -0.646367,
		45.859970, 35.332695, 51.325306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570801, 35.182636, 52.138924>,  <45.520470, 35.745029, 51.777763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570801, 35.182636, 52.138924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843258, 35.152103, 51.847660>,  <46.006733, 35.133785, 51.672901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843258, 35.152103, 51.847660>,  <45.570801, 35.182636, 52.138924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843258, 35.152103, 51.847660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705428, -0.197838, 0.680611,
		-0.195958, -0.977264, -0.080965,
		0.681155, -0.076256, -0.728157,
		46.047600, 35.129204, 51.629211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989944, 34.648499, 52.281086>,  <45.570801, 35.182636, 52.138924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989944, 34.648499, 52.281086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209881, 34.875847, 52.036259>,  <46.341843, 35.012257, 51.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209881, 34.875847, 52.036259>,  <45.989944, 34.648499, 52.281086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209881, 34.875847, 52.036259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809540, -0.182136, 0.558096,
		0.205728, -0.802357, -0.560267,
		0.549838, 0.568374, -0.612069,
		46.374832, 35.046360, 51.852638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656639, 34.345146, 52.231823>,  <45.989944, 34.648499, 52.281086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656639, 34.345146, 52.231823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720177, 34.715015, 52.093407>,  <46.758301, 34.936935, 52.010357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720177, 34.715015, 52.093407>,  <46.656639, 34.345146, 52.231823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720177, 34.715015, 52.093407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933682, -0.026755, 0.357102,
		0.320945, -0.379819, -0.867601,
		0.158847, 0.924674, -0.346044,
		46.767830, 34.992416, 51.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337315, 34.362862, 51.918854>,  <46.656639, 34.345146, 52.231823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337315, 34.362862, 51.918854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266117, 34.741306, 52.027077>,  <47.223400, 34.968372, 52.092010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266117, 34.741306, 52.027077>,  <47.337315, 34.362862, 51.918854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266117, 34.741306, 52.027077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878393, 0.028829, 0.477068,
		0.443558, 0.322568, -0.836186,
		-0.177993, 0.946107, 0.270554,
		47.212719, 35.025139, 52.108242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907177, 34.756897, 51.670479>,  <47.337315, 34.362862, 51.918854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907177, 34.756897, 51.670479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756424, 34.992645, 51.956303>,  <47.665970, 35.134094, 52.127796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756424, 34.992645, 51.956303>,  <47.907177, 34.756897, 51.670479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756424, 34.992645, 51.956303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926034, 0.256772, 0.276639,
		-0.020435, 0.765968, -0.642554,
		-0.376887, 0.589373, 0.714560,
		47.643356, 35.169456, 52.170670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.307219, 34.995270, 52.347755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.364006, 34.971848, 51.952499>,  <24.398079, 34.957794, 51.715347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.364006, 34.971848, 51.952499>,  <24.307219, 34.995270, 52.347755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364006, 34.971848, 51.952499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953384, -0.260442, 0.152408,
		-0.266278, -0.963712, 0.018856,
		0.141966, -0.058560, -0.988138,
		24.406595, 34.954281, 51.656059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718456, 34.359947, 52.208221>,  <24.307219, 34.995270, 52.347755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718456, 34.359947, 52.208221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.758171, 34.620953, 51.907722>,  <24.782000, 34.777557, 51.727425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.758171, 34.620953, 51.907722>,  <24.718456, 34.359947, 52.208221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758171, 34.620953, 51.907722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985085, -0.171081, -0.018405,
		-0.140534, -0.738214, -0.659766,
		0.099286, 0.652512, -0.751246,
		24.787956, 34.816708, 51.682350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220463, 33.955746, 51.853386>,  <24.718456, 34.359947, 52.208221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220463, 33.955746, 51.853386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.215548, 34.324577, 51.698666>,  <25.212599, 34.545876, 51.605831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.215548, 34.324577, 51.698666>,  <25.220463, 33.955746, 51.853386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215548, 34.324577, 51.698666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963556, -0.092462, -0.251021,
		-0.267226, -0.375792, -0.887339,
		-0.012287, 0.922080, -0.386805,
		25.211861, 34.601200, 51.582623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641951, 33.896103, 51.277630>,  <25.220463, 33.955746, 51.853386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641951, 33.896103, 51.277630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.625515, 34.290539, 51.342041>,  <25.615654, 34.527203, 51.380688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.625515, 34.290539, 51.342041>,  <25.641951, 33.896103, 51.277630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625515, 34.290539, 51.342041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920765, 0.099949, -0.377096,
		-0.387947, 0.132777, -0.912068,
		-0.041091, 0.986094, 0.161032,
		25.613188, 34.586369, 51.390350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697487, 34.313850, 50.621998>,  <25.641951, 33.896103, 51.277630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697487, 34.313850, 50.621998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.820053, 34.517570, 50.943672>,  <25.893593, 34.639801, 51.136677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.820053, 34.517570, 50.943672>,  <25.697487, 34.313850, 50.621998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820053, 34.517570, 50.943672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951515, -0.139926, -0.273935,
		-0.026989, 0.849137, -0.527483,
		0.306417, 0.509301, 0.804190,
		25.911978, 34.670361, 51.184929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293957, 34.514187, 50.398727>,  <25.697487, 34.313850, 50.621998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293957, 34.514187, 50.398727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.364889, 34.611057, 50.780285>,  <26.407448, 34.669178, 51.009220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.364889, 34.611057, 50.780285>,  <26.293957, 34.514187, 50.398727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364889, 34.611057, 50.780285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982945, -0.091564, -0.159484,
		0.048719, 0.965902, -0.254284,
		0.177329, 0.242177, 0.953889,
		26.418087, 34.683712, 51.066452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834805, 35.096485, 50.433235>,  <26.293957, 34.514187, 50.398727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834805, 35.096485, 50.433235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.841581, 34.915436, 50.789852>,  <26.845648, 34.806805, 51.003822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.841581, 34.915436, 50.789852>,  <26.834805, 35.096485, 50.433235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841581, 34.915436, 50.789852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942169, -0.291264, -0.165779,
		0.334709, 0.842789, 0.421517,
		0.016944, -0.452628, 0.891538,
		26.846664, 34.779648, 51.057312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486483, 35.293522, 50.691704>,  <26.834805, 35.096485, 50.433235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486483, 35.293522, 50.691704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.372017, 34.978558, 50.910095>,  <27.303337, 34.789577, 51.041130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.372017, 34.978558, 50.910095>,  <27.486483, 35.293522, 50.691704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372017, 34.978558, 50.910095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957245, -0.260117, 0.126577,
		0.042351, 0.558860, 0.828180,
		-0.286162, -0.787410, 0.545982,
		27.286169, 34.742336, 51.073891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851532, 35.223175, 51.318321>,  <27.486483, 35.293522, 50.691704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851532, 35.223175, 51.318321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.729887, 34.848213, 51.250454>,  <27.656900, 34.623238, 51.209732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.729887, 34.848213, 51.250454>,  <27.851532, 35.223175, 51.318321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729887, 34.848213, 51.250454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945691, -0.318535, 0.064837,
		-0.114825, -0.140740, 0.983366,
		-0.304111, -0.937405, -0.169672,
		27.638653, 34.566990, 51.199551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215054, 34.793076, 51.861950>,  <27.851532, 35.223175, 51.318321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215054, 34.793076, 51.861950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.122532, 34.561996, 51.548832>,  <28.067019, 34.423347, 51.360962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.122532, 34.561996, 51.548832>,  <28.215054, 34.793076, 51.861950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122532, 34.561996, 51.548832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930064, -0.367378, -0.003697,
		-0.285446, -0.728903, 0.622271,
		-0.231303, -0.577696, -0.782793,
		28.053141, 34.388687, 51.313995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662891, 34.071617, 51.967674>,  <28.215054, 34.793076, 51.861950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662891, 34.071617, 51.967674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.512829, 34.074184, 51.596897>,  <28.422791, 34.075726, 51.374432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.512829, 34.074184, 51.596897>,  <28.662891, 34.071617, 51.967674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512829, 34.074184, 51.596897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878358, -0.317088, -0.357691,
		-0.296218, -0.948374, 0.113319,
		-0.375157, 0.006420, -0.926939,
		28.400282, 34.076111, 51.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765610, 33.381565, 51.818588>,  <28.662891, 34.071617, 51.967674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765610, 33.381565, 51.818588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.731115, 33.618919, 51.498474>,  <28.710419, 33.761330, 51.306404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.731115, 33.618919, 51.498474>,  <28.765610, 33.381565, 51.818588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731115, 33.618919, 51.498474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898859, -0.300096, -0.319366,
		-0.429669, -0.746888, -0.507487,
		-0.086236, 0.593381, -0.800289,
		28.705244, 33.796932, 51.258389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884937, 32.926819, 51.236294>,  <28.765610, 33.381565, 51.818588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884937, 32.926819, 51.236294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988035, 33.306087, 51.161945>,  <29.049894, 33.533649, 51.117336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988035, 33.306087, 51.161945>,  <28.884937, 32.926819, 51.236294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988035, 33.306087, 51.161945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894566, -0.306869, -0.324935,
		-0.365130, -0.082520, -0.927292,
		0.257744, 0.948168, -0.185867,
		29.065359, 33.590538, 51.106186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499777, 32.807446, 50.821522>,  <28.884937, 32.926819, 51.236294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499777, 32.807446, 50.821522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.508930, 33.205284, 50.862015>,  <29.514421, 33.443989, 50.886311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.508930, 33.205284, 50.862015>,  <29.499777, 32.807446, 50.821522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508930, 33.205284, 50.862015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931888, 0.015447, -0.362417,
		-0.362024, 0.102631, -0.926502,
		0.022884, 0.994600, 0.101232,
		29.515795, 33.503662, 50.892384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847088, 33.048119, 50.180367>,  <29.499777, 32.807446, 50.821522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847088, 33.048119, 50.180367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879299, 33.338333, 50.453747>,  <29.898626, 33.512463, 50.617775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.879299, 33.338333, 50.453747>,  <29.847088, 33.048119, 50.180367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879299, 33.338333, 50.453747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969164, 0.103213, -0.223760,
		-0.232887, 0.680399, -0.694853,
		0.080528, 0.725538, 0.683455,
		29.903458, 33.555996, 50.658783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091816, 33.626427, 49.790253>,  <29.847088, 33.048119, 50.180367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091816, 33.626427, 49.790253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.158188, 33.718250, 50.173870>,  <30.198011, 33.773342, 50.404041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.158188, 33.718250, 50.173870>,  <30.091816, 33.626427, 49.790253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158188, 33.718250, 50.173870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928478, 0.291308, -0.230366,
		-0.332260, 0.928679, -0.164801,
		0.165928, 0.229555, 0.959047,
		30.207966, 33.787117, 50.461586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686598, 34.090401, 49.751678>,  <30.091816, 33.626427, 49.790253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686598, 34.090401, 49.751678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.679588, 33.969414, 50.132877>,  <30.675383, 33.896820, 50.361595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.679588, 33.969414, 50.132877>,  <30.686598, 34.090401, 49.751678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679588, 33.969414, 50.132877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993024, 0.105893, 0.051867,
		-0.116604, 0.947259, 0.298503,
		-0.017522, -0.302469, 0.952998,
		30.674332, 33.878674, 50.418777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200302, 34.498547, 50.055534>,  <30.686598, 34.090401, 49.751678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200302, 34.498547, 50.055534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.168940, 34.207817, 50.328468>,  <31.150122, 34.033379, 50.492229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.168940, 34.207817, 50.328468>,  <31.200302, 34.498547, 50.055534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168940, 34.207817, 50.328468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996346, -0.033873, 0.078404,
		-0.033873, 0.685991, 0.726821,
		-0.078404, -0.726821, 0.682337,
		31.145418, 33.989769, 50.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788767, 34.598179, 50.475101>,  <31.200302, 34.498547, 50.055534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788767, 34.598179, 50.475101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.676525, 34.219810, 50.540203>,  <31.609180, 33.992790, 50.579266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.676525, 34.219810, 50.540203>,  <31.788767, 34.598179, 50.475101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676525, 34.219810, 50.540203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953477, -0.255248, 0.160405,
		-0.110188, 0.200192, 0.973541,
		-0.280606, -0.945924, 0.162753,
		31.592344, 33.936035, 50.589027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173717, 34.517380, 51.005199>,  <31.788767, 34.598179, 50.475101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173717, 34.517380, 51.005199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.089355, 34.150845, 50.869057>,  <32.038738, 33.930923, 50.787369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.089355, 34.150845, 50.869057>,  <32.173717, 34.517380, 51.005199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089355, 34.150845, 50.869057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954610, -0.267995, 0.129997,
		-0.210336, -0.297495, 0.931266,
		-0.210901, -0.916338, -0.340360,
		32.026085, 33.875942, 50.766949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463123, 33.968044, 51.530636>,  <32.173717, 34.517380, 51.005199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463123, 33.968044, 51.530636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423317, 33.795166, 51.172127>,  <32.399433, 33.691441, 50.957020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.423317, 33.795166, 51.172127>,  <32.463123, 33.968044, 51.530636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423317, 33.795166, 51.172127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972852, -0.231400, 0.003564,
		-0.208938, -0.871586, 0.443490,
		-0.099517, -0.432195, -0.896272,
		32.393463, 33.665508, 50.903244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.068359, 34.732174, 35.323841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.116985, 34.815041, 34.935551>,  <24.146162, 34.864761, 34.702576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.116985, 34.815041, 34.935551>,  <24.068359, 34.732174, 35.323841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116985, 34.815041, 34.935551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989938, 0.046045, 0.133799,
		0.072416, -0.977221, -0.199488,
		0.121566, 0.207170, -0.970723,
		24.153456, 34.877193, 34.644333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.958040, 33.935909, 35.081715>,  <24.068359, 34.732174, 35.323841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.958040, 33.935909, 35.081715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.156162, 33.936184, 35.429203>,  <24.275036, 33.936348, 35.637695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.156162, 33.936184, 35.429203>,  <23.958040, 33.935909, 35.081715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156162, 33.936184, 35.429203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647544, -0.666909, -0.368672,
		0.579104, 0.745139, -0.330768,
		0.495304, 0.000687, 0.868719,
		24.304754, 33.936390, 35.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629944, 33.616016, 34.935978>,  <23.958040, 33.935909, 35.081715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629944, 33.616016, 34.935978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.629692, 33.646404, 35.334824>,  <24.629541, 33.664635, 35.574131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.629692, 33.646404, 35.334824>,  <24.629944, 33.616016, 34.935978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629692, 33.646404, 35.334824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814479, -0.578477, 0.044587,
		0.580193, 0.812153, -0.061509,
		-0.000630, 0.075966, 0.997110,
		24.629503, 33.669193, 35.633957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250374, 33.675339, 35.146690>,  <24.629944, 33.616016, 34.935978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250374, 33.675339, 35.146690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.119730, 33.556519, 35.505596>,  <25.041344, 33.485226, 35.720940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.119730, 33.556519, 35.505596>,  <25.250374, 33.675339, 35.146690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119730, 33.556519, 35.505596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867103, -0.471941, 0.159389,
		0.376109, 0.830079, 0.411717,
		-0.326611, -0.297054, 0.897265,
		25.021746, 33.467403, 35.774776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745872, 33.946159, 35.665939>,  <25.250374, 33.675339, 35.146690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745872, 33.946159, 35.665939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.567532, 33.631355, 35.836510>,  <25.460527, 33.442474, 35.938850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.567532, 33.631355, 35.836510>,  <25.745872, 33.946159, 35.665939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567532, 33.631355, 35.836510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844475, -0.211885, 0.491901,
		-0.296777, 0.579418, 0.759077,
		-0.445853, -0.787006, 0.426422,
		25.433775, 33.395252, 35.964436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790363, 34.178482, 36.359158>,  <25.745872, 33.946159, 35.665939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790363, 34.178482, 36.359158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.776814, 33.778923, 36.346153>,  <25.768684, 33.539188, 36.338352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.776814, 33.778923, 36.346153>,  <25.790363, 34.178482, 36.359158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776814, 33.778923, 36.346153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707665, -0.046942, 0.704987,
		-0.705735, 0.000875, 0.708475,
		-0.033874, -0.998897, -0.032510,
		25.766651, 33.479256, 36.336399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857204, 34.000404, 37.033161>,  <25.790363, 34.178482, 36.359158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857204, 34.000404, 37.033161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.954643, 33.648151, 36.870605>,  <26.013107, 33.436802, 36.773071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.954643, 33.648151, 36.870605>,  <25.857204, 34.000404, 37.033161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954643, 33.648151, 36.870605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655203, -0.159517, 0.738420,
		-0.715101, -0.446143, 0.538133,
		0.243599, -0.880631, -0.406385,
		26.027723, 33.383961, 36.748692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692772, 33.513935, 37.579391>,  <25.857204, 34.000404, 37.033161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692772, 33.513935, 37.579391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.000793, 33.407864, 37.347290>,  <26.185606, 33.344223, 37.208027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.000793, 33.407864, 37.347290>,  <25.692772, 33.513935, 37.579391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000793, 33.407864, 37.347290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582553, -0.078530, 0.808990,
		-0.260091, -0.960997, 0.094006,
		0.770055, -0.265175, -0.580257,
		26.231810, 33.328312, 37.173214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928497, 32.803013, 37.497673>,  <25.692772, 33.513935, 37.579391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928497, 32.803013, 37.497673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.235428, 33.057098, 37.462532>,  <26.419586, 33.209549, 37.441448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.235428, 33.057098, 37.462532>,  <25.928497, 32.803013, 37.497673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235428, 33.057098, 37.462532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437526, -0.418443, 0.795912,
		0.468812, -0.649161, -0.599003,
		0.767324, 0.635213, -0.087854,
		26.465626, 33.247662, 37.436176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585573, 32.430248, 37.490669>,  <25.928497, 32.803013, 37.497673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585573, 32.430248, 37.490669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.566391, 32.779766, 37.684238>,  <26.554882, 32.989475, 37.800381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.566391, 32.779766, 37.684238>,  <26.585573, 32.430248, 37.490669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566391, 32.779766, 37.684238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147636, -0.472961, 0.868626,
		0.987878, 0.113100, -0.106323,
		-0.047955, 0.873794, 0.483925,
		26.552004, 33.041904, 37.829414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239031, 32.648842, 37.868153>,  <26.585573, 32.430248, 37.490669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239031, 32.648842, 37.868153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.894373, 32.730576, 38.053978>,  <26.687578, 32.779617, 38.165474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.894373, 32.730576, 38.053978>,  <27.239031, 32.648842, 37.868153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894373, 32.730576, 38.053978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271501, -0.587783, 0.762101,
		0.428785, 0.782788, 0.450983,
		-0.861644, 0.204335, 0.464560,
		26.635880, 32.791878, 38.193344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451061, 32.934853, 38.596439>,  <27.239031, 32.648842, 37.868153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451061, 32.934853, 38.596439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.081264, 32.782963, 38.609859>,  <26.859386, 32.691830, 38.617912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.081264, 32.782963, 38.609859>,  <27.451061, 32.934853, 38.596439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081264, 32.782963, 38.609859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227642, -0.479346, 0.847589,
		-0.305768, 0.791225, 0.529592,
		-0.924492, -0.379723, 0.033547,
		26.803917, 32.669044, 38.619923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447132, 33.650124, 38.754917>,  <27.451061, 32.934853, 38.596439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447132, 33.650124, 38.754917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.626217, 33.432838, 39.039021>,  <27.733669, 33.302467, 39.209484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.626217, 33.432838, 39.039021>,  <27.447132, 33.650124, 38.754917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626217, 33.432838, 39.039021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100911, 0.758551, 0.643753,
		-0.888465, -0.359890, 0.284798,
		0.447714, -0.543212, 0.710262,
		27.760530, 33.269875, 39.252098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055643, 33.511986, 39.475010>,  <27.447132, 33.650124, 38.754917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055643, 33.511986, 39.475010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450335, 33.575436, 39.461094>,  <27.687149, 33.613506, 39.452744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450335, 33.575436, 39.461094>,  <27.055643, 33.511986, 39.475010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450335, 33.575436, 39.461094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128837, 0.895085, 0.426877,
		0.098853, -0.416728, 0.903640,
		0.986727, 0.158620, -0.034792,
		27.746353, 33.623020, 39.450657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188826, 33.680603, 40.108917>,  <27.055643, 33.511986, 39.475010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188826, 33.680603, 40.108917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.420460, 33.861977, 39.837902>,  <27.559441, 33.970798, 39.675293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.420460, 33.861977, 39.837902>,  <27.188826, 33.680603, 40.108917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420460, 33.861977, 39.837902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100969, 0.864556, 0.492289,
		0.808990, -0.216667, 0.546434,
		0.579085, 0.453430, -0.677541,
		27.594185, 33.998005, 39.634640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676096, 33.941303, 40.548416>,  <27.188826, 33.680603, 40.108917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676096, 33.941303, 40.548416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.523335, 34.107685, 40.218292>,  <27.431679, 34.207516, 40.020218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.523335, 34.107685, 40.218292>,  <27.676096, 33.941303, 40.548416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523335, 34.107685, 40.218292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179703, 0.842529, 0.507790,
		0.906564, 0.342237, -0.247015,
		-0.381902, 0.415955, -0.825307,
		27.408764, 34.232471, 39.970699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918436, 33.163452, 40.628998>,  <27.676096, 33.941303, 40.548416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918436, 33.163452, 40.628998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.101690, 32.820866, 40.533855>,  <28.211643, 32.615314, 40.476772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.101690, 32.820866, 40.533855>,  <27.918436, 33.163452, 40.628998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101690, 32.820866, 40.533855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057646, -0.238395, 0.969456,
		-0.887010, -0.457855, -0.059846,
		0.458137, -0.856467, -0.237852,
		28.239132, 32.563927, 40.462502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541471, 32.691616, 40.996944>,  <27.918436, 33.163452, 40.628998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541471, 32.691616, 40.996944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.924015, 32.591061, 40.937363>,  <28.153542, 32.530727, 40.901615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.924015, 32.591061, 40.937363>,  <27.541471, 32.691616, 40.996944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924015, 32.591061, 40.937363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123394, -0.114619, 0.985716,
		-0.264871, -0.961075, -0.078597,
		0.956356, -0.251389, -0.148950,
		28.210922, 32.515644, 40.892677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808239, 31.943251, 41.337585>,  <27.541471, 32.691616, 40.996944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808239, 31.943251, 41.337585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.077572, 32.237312, 41.306164>,  <28.239172, 32.413750, 41.287312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.077572, 32.237312, 41.306164>,  <27.808239, 31.943251, 41.337585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077572, 32.237312, 41.306164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308682, -0.182980, 0.933399,
		0.671819, -0.652736, -0.350135,
		0.673331, 0.735156, -0.078558,
		28.279572, 32.457859, 41.282597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544317, 31.680336, 41.454239>,  <27.808239, 31.943251, 41.337585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544317, 31.680336, 41.454239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.489450, 32.054379, 41.584934>,  <28.456530, 32.278805, 41.663353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.489450, 32.054379, 41.584934>,  <28.544317, 31.680336, 41.454239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489450, 32.054379, 41.584934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407743, -0.247311, 0.878967,
		0.902735, 0.253793, -0.347361,
		-0.137169, 0.935108, 0.326738,
		28.448299, 32.334911, 41.682957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209087, 32.010952, 41.630142>,  <28.544317, 31.680336, 41.454239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209087, 32.010952, 41.630142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.935577, 32.200668, 41.851952>,  <28.771471, 32.314499, 41.985039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.935577, 32.200668, 41.851952>,  <29.209087, 32.010952, 41.630142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935577, 32.200668, 41.851952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426863, -0.356344, 0.831148,
		0.591810, 0.805024, 0.041201,
		-0.683776, 0.474294, 0.554523,
		28.730444, 32.342957, 42.018307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553507, 32.529022, 42.003906>,  <29.209087, 32.010952, 41.630142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553507, 32.529022, 42.003906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225874, 32.442966, 42.216629>,  <29.029293, 32.391331, 42.344261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225874, 32.442966, 42.216629>,  <29.553507, 32.529022, 42.003906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225874, 32.442966, 42.216629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546268, -0.009400, 0.837558,
		-0.175194, 0.976538, 0.125224,
		-0.819084, -0.215141, 0.531804,
		28.980148, 32.378426, 42.376171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881908, 32.490776, 42.701771>,  <29.553507, 32.529022, 42.003906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881908, 32.490776, 42.701771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494543, 32.398705, 42.740131>,  <29.262125, 32.343460, 42.763145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494543, 32.398705, 42.740131>,  <29.881908, 32.490776, 42.701771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494543, 32.398705, 42.740131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147951, -0.220825, 0.964026,
		-0.200722, 0.947763, 0.247905,
		-0.968412, -0.230179, 0.095898,
		29.204020, 32.329651, 42.768902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612410, 32.912155, 43.388088>,  <29.881908, 32.490776, 42.701771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612410, 32.912155, 43.388088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.410751, 32.580128, 43.292732>,  <29.289757, 32.380913, 43.235519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.410751, 32.580128, 43.292732>,  <29.612410, 32.912155, 43.388088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410751, 32.580128, 43.292732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040102, -0.253241, 0.966572,
		-0.862687, 0.496853, 0.094383,
		-0.504146, -0.830064, -0.238393,
		29.259508, 32.331108, 43.221214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042500, 32.873352, 43.853077>,  <29.612410, 32.912155, 43.388088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042500, 32.873352, 43.853077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103323, 32.496582, 43.733315>,  <29.139818, 32.270519, 43.661457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103323, 32.496582, 43.733315>,  <29.042500, 32.873352, 43.853077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103323, 32.496582, 43.733315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117979, -0.283469, 0.951696,
		-0.981305, -0.180040, 0.068024,
		0.152060, -0.941929, -0.299411,
		29.148941, 32.214005, 43.643490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569708, 32.876881, 44.486496>,  <29.042500, 32.873352, 43.853077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569708, 32.876881, 44.486496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.471067, 33.007786, 44.851372>,  <28.411882, 33.086330, 45.070297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.471067, 33.007786, 44.851372>,  <28.569708, 32.876881, 44.486496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471067, 33.007786, 44.851372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565206, 0.813165, -0.138941,
		-0.787229, 0.481310, -0.385502,
		-0.246603, 0.327266, 0.912186,
		28.397087, 33.105965, 45.125027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233215, 33.530941, 44.482983>,  <28.569708, 32.876881, 44.486496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233215, 33.530941, 44.482983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.484568, 33.479336, 44.789837>,  <28.635380, 33.448372, 44.973949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.484568, 33.479336, 44.789837>,  <28.233215, 33.530941, 44.482983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484568, 33.479336, 44.789837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481985, 0.838626, -0.253766,
		-0.610597, 0.529208, 0.589161,
		0.628380, -0.129018, 0.767133,
		28.673082, 33.440632, 45.019978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122429, 34.052826, 45.058186>,  <28.233215, 33.530941, 44.482983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122429, 34.052826, 45.058186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.502644, 33.952347, 44.985107>,  <28.730772, 33.892059, 44.941261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.502644, 33.952347, 44.985107>,  <28.122429, 34.052826, 45.058186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502644, 33.952347, 44.985107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211941, 0.954515, -0.209721,
		0.227066, 0.160627, 0.960542,
		0.950538, -0.251198, -0.182694,
		28.787806, 33.876987, 44.930298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673708, 34.279652, 45.568047>,  <28.122429, 34.052826, 45.058186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673708, 34.279652, 45.568047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802994, 34.279476, 45.189518>,  <28.880566, 34.279369, 44.962399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802994, 34.279476, 45.189518>,  <28.673708, 34.279652, 45.568047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802994, 34.279476, 45.189518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005614, 0.999982, -0.002386,
		0.946309, 0.006084, 0.323206,
		0.323214, -0.000443, -0.946326,
		28.899958, 34.279343, 44.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327843, 34.519920, 45.843571>,  <28.673708, 34.279652, 45.568047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327843, 34.519920, 45.843571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.458469, 34.896931, 45.815281>,  <29.536846, 35.123135, 45.798306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.458469, 34.896931, 45.815281>,  <29.327843, 34.519920, 45.843571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458469, 34.896931, 45.815281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921587, -0.300913, 0.245213,
		0.209836, -0.145261, -0.966886,
		0.326569, 0.942523, -0.070728,
		29.556440, 35.179688, 45.794064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950829, 34.653362, 45.315826>,  <29.327843, 34.519920, 45.843571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950829, 34.653362, 45.315826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011890, 34.949787, 45.577370>,  <30.048527, 35.127644, 45.734295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011890, 34.949787, 45.577370>,  <29.950829, 34.653362, 45.315826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011890, 34.949787, 45.577370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979255, -0.202629, 0.001029,
		0.133252, 0.640133, -0.756620,
		0.152655, 0.741061, 0.653854,
		30.057688, 35.172104, 45.773525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510809, 35.036095, 45.054161>,  <29.950829, 34.653362, 45.315826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510809, 35.036095, 45.054161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471666, 35.066750, 45.451057>,  <30.448181, 35.085144, 45.689198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471666, 35.066750, 45.451057>,  <30.510809, 35.036095, 45.054161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471666, 35.066750, 45.451057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916285, -0.382166, 0.119882,
		0.388390, 0.920911, -0.032823,
		-0.097857, 0.076636, 0.992245,
		30.442308, 35.089741, 45.748730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963055, 35.629829, 45.406658>,  <30.510809, 35.036095, 45.054161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963055, 35.629829, 45.406658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866087, 35.320156, 45.640537>,  <30.807907, 35.134350, 45.780865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866087, 35.320156, 45.640537>,  <30.963055, 35.629829, 45.406658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866087, 35.320156, 45.640537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969130, -0.165318, 0.182912,
		-0.044948, 0.610986, 0.790364,
		-0.242418, -0.774187, 0.584694,
		30.793362, 35.087898, 45.815945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586611, 35.658886, 45.678791>,  <30.963055, 35.629829, 45.406658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586611, 35.658886, 45.678791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370152, 35.338158, 45.780178>,  <31.240276, 35.145721, 45.841011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.370152, 35.338158, 45.780178>,  <31.586611, 35.658886, 45.678791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370152, 35.338158, 45.780178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815265, -0.426345, 0.391883,
		-0.206156, 0.418707, 0.884412,
		-0.541149, -0.801819, 0.253464,
		31.207808, 35.097610, 45.856216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871870, 35.574234, 46.365318>,  <31.586611, 35.658886, 45.678791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871870, 35.574234, 46.365318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720354, 35.271267, 46.152588>,  <31.629444, 35.089489, 46.024948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.720354, 35.271267, 46.152588>,  <31.871870, 35.574234, 46.365318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720354, 35.271267, 46.152588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849544, -0.512530, 0.124848,
		-0.367139, -0.404519, 0.837600,
		-0.378792, -0.757415, -0.531826,
		31.606716, 35.044041, 45.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202927, 36.252239, 46.522633>,  <31.871870, 35.574234, 46.365318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202927, 36.252239, 46.522633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442753, 36.376770, 46.817551>,  <32.586647, 36.451488, 46.994499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442753, 36.376770, 46.817551>,  <32.202927, 36.252239, 46.522633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442753, 36.376770, 46.817551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420455, -0.661337, 0.621169,
		0.680985, -0.682428, -0.265615,
		0.599564, 0.311327, 0.737291,
		32.622623, 36.470169, 47.038738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508900, 35.677414, 46.838039>,  <32.202927, 36.252239, 46.522633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508900, 35.677414, 46.838039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493355, 35.969753, 47.110615>,  <32.484028, 36.145157, 47.274158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493355, 35.969753, 47.110615>,  <32.508900, 35.677414, 46.838039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493355, 35.969753, 47.110615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456768, -0.619525, 0.638398,
		0.888737, -0.286449, 0.357902,
		-0.038861, 0.730846, 0.681435,
		32.481697, 36.189007, 47.315044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948368, 35.485035, 47.425980>,  <32.508900, 35.677414, 46.838039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948368, 35.485035, 47.425980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.658981, 35.742119, 47.526794>,  <32.485352, 35.896370, 47.587284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.658981, 35.742119, 47.526794>,  <32.948368, 35.485035, 47.425980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658981, 35.742119, 47.526794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337473, -0.647729, 0.683052,
		0.602256, 0.409108, 0.685505,
		-0.723464, 0.642712, 0.252036,
		32.441944, 35.934933, 47.602406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821114, 34.939804, 47.813042>,  <32.948368, 35.485035, 47.425980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821114, 34.939804, 47.813042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847065, 34.702522, 48.134014>,  <32.862637, 34.560154, 48.326599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847065, 34.702522, 48.134014>,  <32.821114, 34.939804, 47.813042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847065, 34.702522, 48.134014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404921, -0.750598, -0.522150,
		0.912047, -0.291045, -0.288900,
		0.064879, -0.593207, 0.802431,
		32.866528, 34.524559, 48.374744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876522, 35.544285, 48.170410>,  <32.821114, 34.939804, 47.813042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876522, 35.544285, 48.170410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515873, 35.652676, 48.035557>,  <32.299484, 35.717709, 47.954647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.515873, 35.652676, 48.035557>,  <32.876522, 35.544285, 48.170410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515873, 35.652676, 48.035557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413460, -0.768847, 0.487776,
		-0.127026, 0.579177, 0.805245,
		-0.901618, 0.270976, -0.337130,
		32.245388, 35.733967, 47.934418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325897, 35.671337, 48.780144>,  <32.876522, 35.544285, 48.170410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325897, 35.671337, 48.780144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169201, 35.544926, 48.434505>,  <32.075184, 35.469078, 48.227123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169201, 35.544926, 48.434505>,  <32.325897, 35.671337, 48.780144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169201, 35.544926, 48.434505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350726, -0.816959, 0.457787,
		-0.850606, 0.482396, 0.209199,
		-0.391742, -0.316025, -0.864099,
		32.051678, 35.450119, 48.175278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610809, 34.941986, 48.762550>,  <32.325897, 35.671337, 48.780144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610809, 34.941986, 48.762550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804962, 34.612095, 48.878639>,  <32.921455, 34.414162, 48.948292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804962, 34.612095, 48.878639>,  <32.610809, 34.941986, 48.762550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804962, 34.612095, 48.878639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864119, 0.402020, -0.302785,
		0.133039, 0.397754, 0.907795,
		0.485386, -0.824725, 0.290222,
		32.950577, 34.364677, 48.965706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220272, 35.249119, 49.071270>,  <32.610809, 34.941986, 48.762550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220272, 35.249119, 49.071270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303532, 34.864773, 48.998165>,  <33.353489, 34.634163, 48.954300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303532, 34.864773, 48.998165>,  <33.220272, 35.249119, 49.071270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303532, 34.864773, 48.998165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901573, 0.260942, -0.345074,
		0.379262, -0.092949, 0.920609,
		0.208151, -0.960869, -0.182766,
		33.365978, 34.576511, 48.943336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720802, 35.077805, 49.470570>,  <33.220272, 35.249119, 49.071270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720802, 35.077805, 49.470570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752846, 34.832100, 49.156559>,  <33.772072, 34.684677, 48.968151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752846, 34.832100, 49.156559>,  <33.720802, 35.077805, 49.470570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752846, 34.832100, 49.156559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961726, 0.254668, -0.101132,
		0.262043, -0.746880, 0.611149,
		0.080106, -0.614259, -0.785028,
		33.776878, 34.647823, 48.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403522, 34.808765, 49.413517>,  <33.720802, 35.077805, 49.470570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403522, 34.808765, 49.413517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286407, 34.720249, 49.041431>,  <34.216141, 34.667141, 48.818180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286407, 34.720249, 49.041431>,  <34.403522, 34.808765, 49.413517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286407, 34.720249, 49.041431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948855, 0.052931, -0.311243,
		0.118113, -0.973770, 0.194476,
		-0.292786, -0.221292, -0.930219,
		34.198570, 34.653862, 48.762367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759060, 34.191441, 49.111961>,  <34.403522, 34.808765, 49.413517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759060, 34.191441, 49.111961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649952, 34.428085, 48.808491>,  <34.584488, 34.570072, 48.626408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649952, 34.428085, 48.808491>,  <34.759060, 34.191441, 49.111961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649952, 34.428085, 48.808491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958589, 0.100020, -0.266652,
		-0.081870, -0.799997, -0.594391,
		-0.272772, 0.591608, -0.758680,
		34.568119, 34.605568, 48.580887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197506, 34.022255, 48.595978>,  <34.759060, 34.191441, 49.111961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197506, 34.022255, 48.595978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042774, 34.370850, 48.475395>,  <34.949936, 34.580006, 48.403046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042774, 34.370850, 48.475395>,  <35.197506, 34.022255, 48.595978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042774, 34.370850, 48.475395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864552, 0.229023, -0.447324,
		-0.320797, -0.433660, -0.842038,
		-0.386833, 0.871486, -0.301452,
		34.926723, 34.632294, 48.384960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334061, 33.977032, 47.806660>,  <35.197506, 34.022255, 48.595978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334061, 33.977032, 47.806660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287830, 34.369831, 47.866428>,  <35.260094, 34.605511, 47.902290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287830, 34.369831, 47.866428>,  <35.334061, 33.977032, 47.806660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287830, 34.369831, 47.866428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836913, 0.177294, -0.517825,
		-0.534995, 0.065210, -0.842335,
		-0.115574, 0.981995, 0.149426,
		35.253159, 34.664429, 47.911255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471561, 34.333256, 47.140671>,  <35.334061, 33.977032, 47.806660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471561, 34.333256, 47.140671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534454, 34.595066, 47.436474>,  <35.572189, 34.752151, 47.613956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534454, 34.595066, 47.436474>,  <35.471561, 34.333256, 47.140671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534454, 34.595066, 47.436474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956620, 0.085030, -0.278656,
		-0.245268, 0.751241, -0.612765,
		0.157234, 0.654529, 0.739506,
		35.581623, 34.791424, 47.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858566, 34.863895, 46.832722>,  <35.471561, 34.333256, 47.140671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858566, 34.863895, 46.832722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916046, 34.934517, 47.222218>,  <35.950535, 34.976891, 47.455917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916046, 34.934517, 47.222218>,  <35.858566, 34.863895, 46.832722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916046, 34.934517, 47.222218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954066, 0.236663, -0.183711,
		-0.262885, 0.955415, -0.134439,
		0.143703, 0.176558, 0.973744,
		35.959156, 34.987484, 47.514339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295841, 35.475517, 46.914749>,  <35.858566, 34.863895, 46.832722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295841, 35.475517, 46.914749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334412, 35.305241, 47.274635>,  <36.357555, 35.203075, 47.490566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334412, 35.305241, 47.274635>,  <36.295841, 35.475517, 46.914749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334412, 35.305241, 47.274635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990907, 0.126273, -0.046458,
		-0.093833, 0.896013, 0.433999,
		0.096430, -0.425694, 0.899715,
		36.363342, 35.177532, 47.544548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705063, 35.859467, 47.344658>,  <36.295841, 35.475517, 46.914749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705063, 35.859467, 47.344658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742805, 35.484276, 47.478104>,  <36.765453, 35.259163, 47.558170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742805, 35.484276, 47.478104>,  <36.705063, 35.859467, 47.344658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742805, 35.484276, 47.478104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992040, 0.060523, -0.110424,
		0.083383, 0.341382, 0.936219,
		0.094360, -0.937974, 0.333618,
		36.771114, 35.202885, 47.578190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205978, 35.945908, 47.863750>,  <36.705063, 35.859467, 47.344658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205978, 35.945908, 47.863750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180687, 35.573227, 47.720676>,  <37.165512, 35.349621, 47.634830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180687, 35.573227, 47.720676>,  <37.205978, 35.945908, 47.863750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180687, 35.573227, 47.720676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997644, -0.049456, -0.047543,
		0.026606, -0.359850, 0.932631,
		-0.063233, -0.931699, -0.357686,
		37.161716, 35.293716, 47.613369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673180, 35.577145, 48.259136>,  <37.205978, 35.945908, 47.863750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673180, 35.577145, 48.259136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627865, 35.405018, 47.900921>,  <37.600677, 35.301743, 47.685989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627865, 35.405018, 47.900921>,  <37.673180, 35.577145, 48.259136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627865, 35.405018, 47.900921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988315, -0.141322, -0.057115,
		-0.101982, -0.891548, 0.441296,
		-0.113286, -0.430315, -0.895542,
		37.593880, 35.275925, 47.632259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215000, 35.263821, 48.210491>,  <37.673180, 35.577145, 48.259136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215000, 35.263821, 48.210491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112106, 35.259918, 47.823971>,  <38.050369, 35.257576, 47.592060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112106, 35.259918, 47.823971>,  <38.215000, 35.263821, 48.210491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112106, 35.259918, 47.823971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963477, 0.074448, -0.257234,
		0.074448, -0.997177, -0.009753,
		0.257234, 0.009753, 0.966300,
		38.034935, 35.256992, 47.534081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786728, 34.864609, 47.839909>,  <38.215000, 35.263821, 48.210491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786728, 34.864609, 47.839909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575417, 35.075481, 47.573673>,  <38.448627, 35.202003, 47.413933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575417, 35.075481, 47.573673>,  <38.786728, 34.864609, 47.839909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575417, 35.075481, 47.573673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836435, 0.457853, -0.301243,
		0.145932, -0.715859, -0.682825,
		-0.528281, 0.527177, -0.665585,
		38.416931, 35.233635, 47.373997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103947, 34.640057, 48.435001>,  <38.786728, 34.864609, 47.839909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103947, 34.640057, 48.435001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374920, 34.772179, 48.172100>,  <39.537502, 34.851452, 48.014359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374920, 34.772179, 48.172100>,  <39.103947, 34.640057, 48.435001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374920, 34.772179, 48.172100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165274, 0.802317, 0.573560,
		0.716776, -0.497176, 0.488925,
		0.677434, 0.330308, -0.657252,
		39.578152, 34.871269, 47.974926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732063, 34.672081, 48.718502>,  <39.103947, 34.640057, 48.435001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732063, 34.672081, 48.718502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702881, 34.944477, 48.427044>,  <39.685371, 35.107914, 48.252167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702881, 34.944477, 48.427044>,  <39.732063, 34.672081, 48.718502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702881, 34.944477, 48.427044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259638, 0.718371, 0.645393,
		0.962946, -0.142099, -0.229221,
		-0.072956, 0.680993, -0.728647,
		39.680996, 35.148773, 48.208450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704670, 34.350731, 49.409397>,  <39.732063, 34.672081, 48.718502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704670, 34.350731, 49.409397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686352, 34.054386, 49.141357>,  <39.675362, 33.876579, 48.980534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686352, 34.054386, 49.141357>,  <39.704670, 34.350731, 49.409397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686352, 34.054386, 49.141357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788656, 0.384904, -0.479448,
		0.613126, -0.550434, 0.566655,
		-0.045797, -0.740858, -0.670098,
		39.672611, 33.832130, 48.940327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467094, 34.475937, 50.057980>,  <39.704670, 34.350731, 49.409397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467094, 34.475937, 50.057980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495235, 34.867950, 50.132374>,  <39.512119, 35.103157, 50.177010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495235, 34.867950, 50.132374>,  <39.467094, 34.475937, 50.057980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495235, 34.867950, 50.132374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621297, -0.102816, 0.776800,
		0.780410, -0.170201, 0.601657,
		0.070352, 0.980031, 0.185984,
		39.516342, 35.161961, 50.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779205, 34.692993, 50.738514>,  <39.467094, 34.475937, 50.057980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779205, 34.692993, 50.738514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499611, 34.917938, 50.561806>,  <39.331852, 35.052906, 50.455780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499611, 34.917938, 50.561806>,  <39.779205, 34.692993, 50.738514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499611, 34.917938, 50.561806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642581, -0.222794, 0.733112,
		0.313850, 0.796312, 0.517093,
		-0.698991, 0.562361, -0.441771,
		39.289913, 35.086647, 50.429276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402714, 34.964146, 51.282330>,  <39.779205, 34.692993, 50.738514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402714, 34.964146, 51.282330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148941, 35.011002, 50.976707>,  <38.996677, 35.039116, 50.793335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148941, 35.011002, 50.976707>,  <39.402714, 34.964146, 51.282330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148941, 35.011002, 50.976707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772689, -0.123257, 0.622703,
		-0.021228, 0.985436, 0.168714,
		-0.634430, 0.117145, -0.764053,
		38.958611, 35.046146, 50.747490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855183, 35.325325, 51.580166>,  <39.402714, 34.964146, 51.282330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855183, 35.325325, 51.580166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716175, 35.149086, 51.249081>,  <38.632771, 35.043343, 51.050430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716175, 35.149086, 51.249081>,  <38.855183, 35.325325, 51.580166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716175, 35.149086, 51.249081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833578, -0.259064, 0.487886,
		-0.429390, 0.859513, -0.277238,
		-0.347522, -0.440593, -0.827712,
		38.611919, 35.016907, 51.000767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219635, 35.576633, 51.432175>,  <38.855183, 35.325325, 51.580166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219635, 35.576633, 51.432175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.202080, 35.236984, 51.221626>,  <38.191547, 35.033195, 51.095299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.202080, 35.236984, 51.221626>,  <38.219635, 35.576633, 51.432175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202080, 35.236984, 51.221626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851454, -0.243819, 0.464305,
		-0.522590, 0.468557, -0.712287,
		-0.043884, -0.849121, -0.526372,
		38.188915, 34.982246, 51.063713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584263, 35.544994, 51.261574>,  <38.219635, 35.576633, 51.432175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584263, 35.544994, 51.261574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722748, 35.172161, 51.218922>,  <37.805840, 34.948463, 51.193333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722748, 35.172161, 51.218922>,  <37.584263, 35.544994, 51.261574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722748, 35.172161, 51.218922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692221, -0.330508, 0.641557,
		-0.633222, -0.148303, -0.759629,
		0.346208, -0.932079, -0.106626,
		37.826611, 34.892536, 51.186935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979595, 35.170460, 50.963249>,  <37.584263, 35.544994, 51.261574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979595, 35.170460, 50.963249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216541, 34.912445, 51.156342>,  <37.358707, 34.757637, 51.272198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216541, 34.912445, 51.156342>,  <36.979595, 35.170460, 50.963249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216541, 34.912445, 51.156342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727921, -0.171690, 0.663818,
		-0.345309, -0.744611, -0.571241,
		0.592363, -0.645040, 0.482731,
		37.394249, 34.718933, 51.301163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453613, 34.680412, 51.096939>,  <36.979595, 35.170460, 50.963249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453613, 34.680412, 51.096939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754818, 34.531799, 51.314171>,  <36.935539, 34.442631, 51.444511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754818, 34.531799, 51.314171>,  <36.453613, 34.680412, 51.096939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754818, 34.531799, 51.314171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657020, -0.379364, 0.651466,
		-0.036012, -0.847378, -0.529767,
		0.753013, -0.371528, 0.543082,
		36.980721, 34.420341, 51.477097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319576, 34.014713, 51.170250>,  <36.453613, 34.680412, 51.096939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319576, 34.014713, 51.170250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546631, 34.126186, 51.480122>,  <36.682865, 34.193069, 51.666046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546631, 34.126186, 51.480122>,  <36.319576, 34.014713, 51.170250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546631, 34.126186, 51.480122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738801, -0.242767, 0.628679,
		0.363266, -0.929195, 0.068085,
		0.567636, 0.278678, 0.774679,
		36.716923, 34.209789, 51.712524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207634, 33.501385, 51.590813>,  <36.319576, 34.014713, 51.170250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207634, 33.501385, 51.590813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387508, 33.758190, 51.839199>,  <36.495434, 33.912273, 51.988232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387508, 33.758190, 51.839199>,  <36.207634, 33.501385, 51.590813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387508, 33.758190, 51.839199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732985, -0.132024, 0.667311,
		0.510405, -0.755240, 0.411216,
		0.449690, 0.642014, 0.620965,
		36.522415, 33.950794, 52.025490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393875, 33.170033, 52.301933>,  <36.207634, 33.501385, 51.590813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393875, 33.170033, 52.301933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350914, 33.566143, 52.337284>,  <36.325138, 33.803810, 52.358494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350914, 33.566143, 52.337284>,  <36.393875, 33.170033, 52.301933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350914, 33.566143, 52.337284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538868, -0.132683, 0.831875,
		0.835516, 0.041720, 0.547880,
		-0.107400, 0.990280, 0.088377,
		36.318695, 33.863228, 52.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196819, 33.262108, 53.014030>,  <36.393875, 33.170033, 52.301933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196819, 33.262108, 53.014030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143982, 33.614628, 52.832546>,  <36.112282, 33.826141, 52.723656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143982, 33.614628, 52.832546>,  <36.196819, 33.262108, 53.014030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143982, 33.614628, 52.832546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815682, 0.163437, 0.554934,
		0.563219, 0.443389, 0.697274,
		-0.132091, 0.881303, -0.453715,
		36.104355, 33.879017, 52.696430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218956, 33.691200, 53.512794>,  <36.196819, 33.262108, 53.014030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218956, 33.691200, 53.512794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022812, 33.867809, 53.212234>,  <35.905125, 33.973774, 53.031898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022812, 33.867809, 53.212234>,  <36.218956, 33.691200, 53.512794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022812, 33.867809, 53.212234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738401, 0.247497, 0.627303,
		0.462938, 0.862441, 0.204658,
		-0.490359, 0.441522, -0.751403,
		35.875706, 34.000267, 52.986813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206215, 34.467125, 53.676750>,  <36.218956, 33.691200, 53.512794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206215, 34.467125, 53.676750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893383, 34.402855, 53.435905>,  <35.705685, 34.364292, 53.291397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893383, 34.402855, 53.435905>,  <36.206215, 34.467125, 53.676750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893383, 34.402855, 53.435905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621349, 0.275104, 0.733650,
		0.047765, 0.947893, -0.314987,
		-0.782076, -0.160674, -0.602113,
		35.658760, 34.354652, 53.255272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709206, 34.967331, 53.891655>,  <36.206215, 34.467125, 53.676750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709206, 34.967331, 53.891655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494404, 34.710167, 53.673191>,  <35.365524, 34.555866, 53.542114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494404, 34.710167, 53.673191>,  <35.709206, 34.967331, 53.891655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494404, 34.710167, 53.673191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782770, 0.138406, 0.606725,
		-0.314481, 0.753329, -0.577578,
		-0.537004, -0.642914, -0.546157,
		35.333302, 34.517292, 53.509342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165897, 35.349976, 53.581856>,  <35.709206, 34.967331, 53.891655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165897, 35.349976, 53.581856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040546, 34.970383, 53.567841>,  <34.965336, 34.742626, 53.559429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040546, 34.970383, 53.567841>,  <35.165897, 35.349976, 53.581856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040546, 34.970383, 53.567841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796312, 0.242497, 0.554150,
		-0.517381, 0.201561, -0.831679,
		-0.313375, -0.948982, -0.035042,
		34.946533, 34.685688, 53.557327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491196, 35.446281, 53.557278>,  <35.165897, 35.349976, 53.581856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491196, 35.446281, 53.557278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527317, 35.062435, 53.663853>,  <34.548988, 34.832127, 53.727798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527317, 35.062435, 53.663853>,  <34.491196, 35.446281, 53.557278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527317, 35.062435, 53.663853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819146, 0.080597, 0.567895,
		-0.566433, -0.269534, -0.778784,
		0.090299, -0.959612, 0.266440,
		34.554405, 34.774551, 53.743786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865204, 35.095745, 53.393829>,  <34.491196, 35.446281, 53.557278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865204, 35.095745, 53.393829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049557, 34.872768, 53.670044>,  <34.160168, 34.738983, 53.835773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049557, 34.872768, 53.670044>,  <33.865204, 35.095745, 53.393829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049557, 34.872768, 53.670044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742946, 0.183238, 0.643782,
		-0.485404, -0.809742, -0.329698,
		0.460884, -0.557442, 0.690539,
		34.187820, 34.705536, 53.877205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369526, 34.603966, 53.713444>,  <33.865204, 35.095745, 53.393829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369526, 34.603966, 53.713444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659534, 34.674110, 53.979855>,  <33.833542, 34.716198, 54.139702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659534, 34.674110, 53.979855>,  <33.369526, 34.603966, 53.713444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659534, 34.674110, 53.979855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687935, 0.138205, 0.712492,
		0.032894, -0.974756, 0.220837,
		0.725026, 0.175358, 0.666023,
		33.877041, 34.726719, 54.179661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122433, 34.211845, 54.301723>,  <33.369526, 34.603966, 53.713444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122433, 34.211845, 54.301723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398102, 34.456264, 54.457497>,  <33.563503, 34.602917, 54.550961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398102, 34.456264, 54.457497>,  <33.122433, 34.211845, 54.301723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398102, 34.456264, 54.457497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583045, 0.148536, 0.798746,
		0.430231, -0.777530, 0.458638,
		0.689173, 0.611052, 0.389430,
		33.604855, 34.639580, 54.574326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276035, 34.067448, 55.036858>,  <33.122433, 34.211845, 54.301723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276035, 34.067448, 55.036858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414272, 34.440395, 54.994427>,  <33.497215, 34.664165, 54.968967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414272, 34.440395, 54.994427>,  <33.276035, 34.067448, 55.036858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414272, 34.440395, 54.994427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465238, 0.268409, 0.843510,
		0.814935, -0.242162, 0.526535,
		0.345593, 0.932370, -0.106073,
		33.517952, 34.720108, 54.962605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430252, 34.245346, 55.676704>,  <33.276035, 34.067448, 55.036858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430252, 34.245346, 55.676704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421642, 34.602329, 55.496460>,  <33.416477, 34.816521, 55.388313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421642, 34.602329, 55.496460>,  <33.430252, 34.245346, 55.676704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421642, 34.602329, 55.496460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523866, 0.373816, 0.765393,
		0.851528, 0.252538, 0.459482,
		-0.021529, 0.892461, -0.450611,
		33.415184, 34.870068, 55.361279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596359, 34.675484, 56.238361>,  <33.430252, 34.245346, 55.676704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596359, 34.675484, 56.238361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437500, 34.895023, 55.944138>,  <33.342186, 35.026745, 55.767605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437500, 34.895023, 55.944138>,  <33.596359, 34.675484, 56.238361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437500, 34.895023, 55.944138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576760, 0.474168, 0.665216,
		0.713879, 0.688427, 0.128239,
		-0.397146, 0.548847, -0.735555,
		33.318356, 35.059677, 55.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662022, 35.318565, 56.490978>,  <33.596359, 34.675484, 56.238361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662022, 35.318565, 56.490978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380703, 35.313812, 56.206657>,  <33.211914, 35.310963, 56.036064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380703, 35.313812, 56.206657>,  <33.662022, 35.318565, 56.490978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380703, 35.313812, 56.206657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592905, 0.561459, 0.577259,
		0.392228, 0.827419, -0.401914,
		-0.703293, -0.011880, -0.710800,
		33.169716, 35.310249, 55.993416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308834, 35.924976, 56.346226>,  <33.662022, 35.318565, 56.490978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308834, 35.924976, 56.346226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018822, 35.680523, 56.219204>,  <32.844814, 35.533852, 56.142990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018822, 35.680523, 56.219204>,  <33.308834, 35.924976, 56.346226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018822, 35.680523, 56.219204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668659, 0.514178, 0.537137,
		-0.164981, 0.601780, -0.781436,
		-0.725035, -0.611132, -0.317556,
		32.801311, 35.497185, 56.123936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781296, 36.373215, 56.382923>,  <33.308834, 35.924976, 56.346226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781296, 36.373215, 56.382923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623890, 36.015862, 56.296188>,  <32.529446, 35.801449, 56.244148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623890, 36.015862, 56.296188>,  <32.781296, 36.373215, 56.382923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623890, 36.015862, 56.296188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792832, 0.210397, 0.571971,
		-0.465368, 0.396990, -0.791095,
		-0.393511, -0.893383, -0.216834,
		32.505836, 35.747849, 56.231136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984076, 36.484863, 56.245213>,  <32.781296, 36.373215, 56.382923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984076, 36.484863, 56.245213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005661, 36.100525, 56.353916>,  <32.018612, 35.869923, 56.419140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005661, 36.100525, 56.353916>,  <31.984076, 36.484863, 56.245213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005661, 36.100525, 56.353916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792194, 0.124484, 0.597438,
		-0.607878, -0.247529, -0.754462,
		0.053965, -0.960850, 0.271762,
		32.021851, 35.812271, 56.435444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314955, 36.215202, 56.261353>,  <31.984076, 36.484863, 56.245213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314955, 36.215202, 56.261353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525608, 35.964123, 56.490665>,  <31.652000, 35.813477, 56.628254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525608, 35.964123, 56.490665>,  <31.314955, 36.215202, 56.261353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525608, 35.964123, 56.490665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739251, -0.005189, 0.673410,
		-0.419722, -0.778442, -0.466757,
		0.526632, -0.627696, 0.573286,
		31.683598, 35.775814, 56.662651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848944, 35.769913, 56.539303>,  <31.314955, 36.215202, 56.261353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848944, 35.769913, 56.539303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156105, 35.752224, 56.794918>,  <31.340401, 35.741611, 56.948288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156105, 35.752224, 56.794918>,  <30.848944, 35.769913, 56.539303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156105, 35.752224, 56.794918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640497, -0.038176, 0.767011,
		-0.009524, -0.998292, -0.057641,
		0.767901, -0.044224, 0.639040,
		31.386475, 35.738956, 56.986629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718538, 35.162968, 56.936478>,  <30.848944, 35.769913, 56.539303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718538, 35.162968, 56.936478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961058, 35.388435, 57.160862>,  <31.106569, 35.523716, 57.295494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961058, 35.388435, 57.160862>,  <30.718538, 35.162968, 56.936478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961058, 35.388435, 57.160862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673873, -0.010388, 0.738774,
		0.422252, -0.825935, 0.373544,
		0.606299, 0.563670, 0.560961,
		31.142948, 35.557537, 57.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477865, 35.134563, 57.645161>,  <30.718538, 35.162968, 56.936478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477865, 35.134563, 57.645161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744244, 35.424507, 57.715698>,  <30.904070, 35.598473, 57.758022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744244, 35.424507, 57.715698>,  <30.477865, 35.134563, 57.645161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744244, 35.424507, 57.715698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467933, 0.221780, 0.855484,
		0.580995, -0.652222, 0.486878,
		0.665945, 0.724858, 0.176344,
		30.944027, 35.641964, 57.768600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868603, 35.013279, 58.313583>,  <30.477865, 35.134563, 57.645161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868603, 35.013279, 58.313583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826412, 35.395176, 58.202347>,  <30.801098, 35.624313, 58.135605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826412, 35.395176, 58.202347>,  <30.868603, 35.013279, 58.313583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826412, 35.395176, 58.202347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599196, 0.162166, 0.784007,
		0.793624, 0.249329, 0.554974,
		-0.105478, 0.954745, -0.278095,
		30.794769, 35.681599, 58.118919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027905, 35.280117, 58.922337>,  <30.868603, 35.013279, 58.313583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027905, 35.280117, 58.922337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856941, 35.576149, 58.714642>,  <30.754364, 35.753769, 58.590023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856941, 35.576149, 58.714642>,  <31.027905, 35.280117, 58.922337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856941, 35.576149, 58.714642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409490, 0.353568, 0.841016,
		0.806003, 0.572079, 0.151936,
		-0.427407, 0.740078, -0.519238,
		30.728720, 35.798172, 58.558868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187214, 35.925865, 59.265884>,  <31.027905, 35.280117, 58.922337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187214, 35.925865, 59.265884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839687, 35.976711, 59.074471>,  <30.631172, 36.007221, 58.959621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839687, 35.976711, 59.074471>,  <31.187214, 35.925865, 59.265884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839687, 35.976711, 59.074471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431460, 0.279764, 0.857656,
		0.242901, 0.951616, -0.188218,
		-0.868816, 0.127117, -0.478539,
		30.579042, 36.014847, 58.930908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958580, 36.471764, 59.531067>,  <31.187214, 35.925865, 59.265884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958580, 36.471764, 59.531067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.619781, 36.321827, 59.380287>,  <30.416502, 36.231865, 59.289822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.619781, 36.321827, 59.380287>,  <30.958580, 36.471764, 59.531067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619781, 36.321827, 59.380287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517945, 0.422229, 0.743946,
		-0.119706, 0.825357, -0.551775,
		-0.846997, -0.374844, -0.376946,
		30.365683, 36.209373, 59.267204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488853, 37.000980, 59.631157>,  <30.958580, 36.471764, 59.531067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488853, 37.000980, 59.631157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260370, 36.677208, 59.576694>,  <30.123281, 36.482944, 59.544018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260370, 36.677208, 59.576694>,  <30.488853, 37.000980, 59.631157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260370, 36.677208, 59.576694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551257, 0.255410, 0.794280,
		-0.608143, 0.528754, -0.592099,
		-0.571207, -0.809435, -0.136154,
		30.089008, 36.434376, 59.535847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935087, 37.239445, 59.631683>,  <30.488853, 37.000980, 59.631157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935087, 37.239445, 59.631683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880199, 36.854282, 59.724625>,  <29.847267, 36.623184, 59.780392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880199, 36.854282, 59.724625>,  <29.935087, 37.239445, 59.631683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880199, 36.854282, 59.724625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740950, 0.255462, 0.621073,
		-0.657391, -0.086940, -0.748518,
		-0.137221, -0.962902, 0.232357,
		29.839033, 36.565411, 59.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312218, 37.176548, 59.769009>,  <29.935087, 37.239445, 59.631683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312218, 37.176548, 59.769009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.397459, 36.842388, 59.971668>,  <29.448605, 36.641891, 60.093266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.397459, 36.842388, 59.971668>,  <29.312218, 37.176548, 59.769009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397459, 36.842388, 59.971668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567374, 0.316351, 0.760269,
		-0.795407, -0.449476, -0.406569,
		0.213104, -0.835400, 0.506649,
		29.461390, 36.591766, 60.123665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673651, 37.036083, 60.093685>,  <29.312218, 37.176548, 59.769009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673651, 37.036083, 60.093685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.914743, 36.781128, 60.285709>,  <29.059399, 36.628155, 60.400925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.914743, 36.781128, 60.285709>,  <28.673651, 37.036083, 60.093685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914743, 36.781128, 60.285709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496589, 0.171293, 0.850916,
		-0.624591, -0.751266, -0.213274,
		0.602732, -0.637384, 0.480058,
		29.095562, 36.589912, 60.429726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197132, 36.689907, 60.623672>,  <28.673651, 37.036083, 60.093685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197132, 36.689907, 60.623672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571789, 36.662601, 60.761101>,  <28.796583, 36.646217, 60.843559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571789, 36.662601, 60.761101>,  <28.197132, 36.689907, 60.623672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571789, 36.662601, 60.761101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322449, 0.215159, 0.921810,
		-0.136846, -0.974191, 0.179516,
		0.936643, -0.068262, 0.343570,
		28.852781, 36.642124, 60.864170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204670, 36.214218, 61.200623>,  <28.197132, 36.689907, 60.623672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204670, 36.214218, 61.200623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.532848, 36.440308, 61.235004>,  <28.729755, 36.575962, 61.255634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.532848, 36.440308, 61.235004>,  <28.204670, 36.214218, 61.200623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532848, 36.440308, 61.235004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311211, 0.315413, 0.896472,
		0.479599, -0.762256, 0.434684,
		0.820446, 0.565226, 0.085951,
		28.778982, 36.609875, 61.260788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420437, 36.050621, 61.784309>,  <28.204670, 36.214218, 61.200623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420437, 36.050621, 61.784309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.570875, 36.412937, 61.706230>,  <28.661139, 36.630325, 61.659382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.570875, 36.412937, 61.706230>,  <28.420437, 36.050621, 61.784309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570875, 36.412937, 61.706230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294622, 0.316632, 0.901633,
		0.878493, -0.281592, 0.385949,
		0.376097, 0.905787, -0.195195,
		28.683704, 36.684673, 61.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941717, 36.306007, 62.286674>,  <28.420437, 36.050621, 61.784309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941717, 36.306007, 62.286674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.764093, 36.613777, 62.103027>,  <28.657518, 36.798439, 61.992840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.764093, 36.613777, 62.103027>,  <28.941717, 36.306007, 62.286674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764093, 36.613777, 62.103027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300933, 0.354572, 0.885278,
		0.843950, 0.531281, 0.074096,
		-0.444059, 0.769428, -0.459121,
		28.630877, 36.844604, 61.965290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133591, 37.041466, 62.233318>,  <28.941717, 36.306007, 62.286674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133591, 37.041466, 62.233318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742016, 37.121338, 62.250359>,  <28.507071, 37.169262, 62.260582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742016, 37.121338, 62.250359>,  <29.133591, 37.041466, 62.233318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742016, 37.121338, 62.250359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123463, 0.412756, 0.902435,
		0.162614, 0.888685, -0.428714,
		-0.978935, 0.199679, 0.042600,
		28.448336, 37.181240, 62.263138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104523, 37.643177, 62.509285>,  <29.133591, 37.041466, 62.233318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104523, 37.643177, 62.509285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.725962, 37.538208, 62.584606>,  <28.498825, 37.475227, 62.629799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.725962, 37.538208, 62.584606>,  <29.104523, 37.643177, 62.509285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725962, 37.538208, 62.584606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171622, 0.085329, 0.981461,
		-0.273626, 0.961173, -0.035718,
		-0.946401, -0.262423, 0.188306,
		28.442041, 37.459480, 62.641098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932453, 38.157078, 63.078415>,  <29.104523, 37.643177, 62.509285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932453, 38.157078, 63.078415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668100, 37.857082, 63.067455>,  <28.509489, 37.677086, 63.060879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668100, 37.857082, 63.067455>,  <28.932453, 38.157078, 63.078415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668100, 37.857082, 63.067455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012274, -0.025708, 0.999594,
		-0.750388, 0.660952, 0.007785,
		-0.660884, -0.749988, -0.027404,
		28.469835, 37.632088, 63.059235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434895, 38.372414, 63.636215>,  <28.932453, 38.157078, 63.078415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434895, 38.372414, 63.636215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.477644, 37.979156, 63.576866>,  <28.503294, 37.743202, 63.541256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.477644, 37.979156, 63.576866>,  <28.434895, 38.372414, 63.636215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477644, 37.979156, 63.576866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066196, -0.141856, 0.987671,
		-0.992067, -0.115376, 0.049919,
		0.106872, -0.983140, -0.148368,
		28.509706, 37.684216, 63.532356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978786, 38.899830, 63.794514>,  <28.434895, 38.372414, 63.636215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978786, 38.899830, 63.794514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.584286, 38.949154, 63.750519>,  <27.347584, 38.978748, 63.724121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.584286, 38.949154, 63.750519>,  <27.978786, 38.899830, 63.794514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584286, 38.949154, 63.750519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139482, 0.264432, -0.954264,
		-0.088586, -0.956488, -0.277997,
		-0.986254, 0.123310, -0.109988,
		27.288410, 38.986145, 63.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728064, 38.447178, 63.305298>,  <27.978786, 38.899830, 63.794514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728064, 38.447178, 63.305298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517401, 38.786678, 63.324310>,  <27.391003, 38.990379, 63.335716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517401, 38.786678, 63.324310>,  <27.728064, 38.447178, 63.305298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517401, 38.786678, 63.324310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173342, 0.161958, -0.971454,
		-0.832216, -0.503385, -0.232420,
		-0.526658, 0.848748, 0.047527,
		27.359404, 39.041302, 63.338570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273115, 38.424484, 62.698517>,  <27.728064, 38.447178, 63.305298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273115, 38.424484, 62.698517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.391264, 38.781925, 62.833710>,  <27.462154, 38.996387, 62.914825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.391264, 38.781925, 62.833710>,  <27.273115, 38.424484, 62.698517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391264, 38.781925, 62.833710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305094, 0.247019, -0.919728,
		-0.905357, 0.374780, -0.199669,
		0.295374, 0.893600, 0.337984,
		27.479876, 39.050007, 62.935104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363884, 38.821030, 62.079685>,  <27.273115, 38.424484, 62.698517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363884, 38.821030, 62.079685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.506432, 39.081173, 62.348022>,  <27.591961, 39.237259, 62.509026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.506432, 39.081173, 62.348022>,  <27.363884, 38.821030, 62.079685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506432, 39.081173, 62.348022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131491, 0.675933, -0.725138,
		-0.925047, 0.346627, 0.155365,
		0.356369, 0.650357, 0.670848,
		27.613342, 39.276279, 62.549278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144165, 39.507133, 61.964008>,  <27.363884, 38.821030, 62.079685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144165, 39.507133, 61.964008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505135, 39.514252, 62.136200>,  <27.721716, 39.518524, 62.239517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505135, 39.514252, 62.136200>,  <27.144165, 39.507133, 61.964008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505135, 39.514252, 62.136200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359938, 0.518013, -0.775955,
		-0.236807, 0.855188, 0.461061,
		0.902423, 0.017798, 0.430484,
		27.775862, 39.519592, 62.265347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385630, 40.232628, 61.921215>,  <27.144165, 39.507133, 61.964008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385630, 40.232628, 61.921215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.651287, 39.933678, 61.913818>,  <27.810680, 39.754307, 61.909382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.651287, 39.933678, 61.913818>,  <27.385630, 40.232628, 61.921215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651287, 39.933678, 61.913818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256491, 0.251015, -0.933383,
		0.702231, 0.615156, 0.358406,
		0.664142, -0.747378, -0.018488,
		27.850529, 39.709465, 61.908272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046404, 40.478138, 61.637508>,  <27.385630, 40.232628, 61.921215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046404, 40.478138, 61.637508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.073477, 40.085758, 61.564667>,  <28.089722, 39.850330, 61.520962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.073477, 40.085758, 61.564667>,  <28.046404, 40.478138, 61.637508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073477, 40.085758, 61.564667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269220, 0.193710, -0.943396,
		0.960697, 0.014826, 0.277202,
		0.067684, -0.980947, -0.182106,
		28.093782, 39.791473, 61.510036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686340, 40.392662, 61.321114>,  <28.046404, 40.478138, 61.637508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686340, 40.392662, 61.321114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.461014, 40.076656, 61.224319>,  <28.325817, 39.887054, 61.166245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.461014, 40.076656, 61.224319>,  <28.686340, 40.392662, 61.321114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461014, 40.076656, 61.224319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334493, 0.049746, -0.941084,
		0.755505, -0.611071, 0.236231,
		-0.563317, -0.790011, -0.241982,
		28.292019, 39.839653, 61.151726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176733, 39.962513, 60.998608>,  <28.686340, 40.392662, 61.321114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176733, 39.962513, 60.998608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799391, 39.881004, 60.893875>,  <28.572985, 39.832100, 60.831036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799391, 39.881004, 60.893875>,  <29.176733, 39.962513, 60.998608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799391, 39.881004, 60.893875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276907, -0.048868, -0.959653,
		0.182758, -0.977797, 0.102527,
		-0.943357, -0.203775, -0.261828,
		28.516384, 39.819874, 60.815327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275953, 39.401638, 60.518047>,  <29.176733, 39.962513, 60.998608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275953, 39.401638, 60.518047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.904680, 39.531357, 60.445042>,  <28.681917, 39.609188, 60.401237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.904680, 39.531357, 60.445042>,  <29.275953, 39.401638, 60.518047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904680, 39.531357, 60.445042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226077, 0.101846, -0.968771,
		-0.295584, -0.940456, -0.167848,
		-0.928181, 0.324300, -0.182511,
		28.626226, 39.628647, 60.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878513, 38.992130, 59.990967>,  <29.275953, 39.401638, 60.518047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878513, 38.992130, 59.990967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.702911, 39.351521, 59.992668>,  <28.597549, 39.567154, 59.993690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.702911, 39.351521, 59.992668>,  <28.878513, 38.992130, 59.990967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702911, 39.351521, 59.992668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187112, 0.096053, -0.977631,
		-0.878784, -0.428391, -0.210284,
		-0.439007, 0.898474, 0.004253,
		28.571209, 39.621063, 59.993942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429781, 38.988876, 59.373127>,  <28.878513, 38.992130, 59.990967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429781, 38.988876, 59.373127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.495138, 39.375324, 59.453045>,  <28.534351, 39.607193, 59.500996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.495138, 39.375324, 59.453045>,  <28.429781, 38.988876, 59.373127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495138, 39.375324, 59.453045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252065, 0.154916, -0.955230,
		-0.953817, 0.206439, -0.218213,
		0.163392, 0.966118, 0.199797,
		28.544155, 39.665161, 59.512985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284033, 39.169415, 58.766026>,  <28.429781, 38.988876, 59.373127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284033, 39.169415, 58.766026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.463221, 39.489140, 58.926239>,  <28.570732, 39.680973, 59.022366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.463221, 39.489140, 58.926239>,  <28.284033, 39.169415, 58.766026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463221, 39.489140, 58.926239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336390, 0.264385, -0.903849,
		-0.828351, 0.539630, -0.150444,
		0.447969, 0.799312, 0.400530,
		28.597610, 39.728931, 59.046398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005482, 39.739601, 58.411743>,  <28.284033, 39.169415, 58.766026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005482, 39.739601, 58.411743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.353979, 39.835781, 58.582912>,  <28.563078, 39.893490, 58.685616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.353979, 39.835781, 58.582912>,  <28.005482, 39.739601, 58.411743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353979, 39.835781, 58.582912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325329, 0.369950, -0.870229,
		-0.367559, 0.897396, 0.244090,
		0.871241, 0.240450, 0.427928,
		28.615351, 39.907917, 58.711292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173525, 40.516422, 58.261681>,  <28.005482, 39.739601, 58.411743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173525, 40.516422, 58.261681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506014, 40.317703, 58.361492>,  <28.705507, 40.198471, 58.421379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506014, 40.317703, 58.361492>,  <28.173525, 40.516422, 58.261681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506014, 40.317703, 58.361492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478719, 0.411412, -0.775609,
		0.282660, 0.764157, 0.579800,
		0.831223, -0.496794, 0.249527,
		28.755381, 40.168667, 58.436352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832174, 40.847038, 57.928711>,  <28.173525, 40.516422, 58.261681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832174, 40.847038, 57.928711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008259, 40.502327, 58.029545>,  <29.113911, 40.295498, 58.090046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008259, 40.502327, 58.029545>,  <28.832174, 40.847038, 57.928711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008259, 40.502327, 58.029545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493764, -0.002147, -0.869593,
		0.749940, 0.507276, 0.424571,
		0.440213, -0.861781, 0.252085,
		29.140322, 40.243793, 58.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552292, 40.974644, 57.726730>,  <28.832174, 40.847038, 57.928711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552292, 40.974644, 57.726730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495258, 40.580120, 57.693573>,  <29.461039, 40.343407, 57.673679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495258, 40.580120, 57.693573>,  <29.552292, 40.974644, 57.726730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495258, 40.580120, 57.693573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646728, -0.029443, -0.762153,
		0.749275, -0.162279, 0.642069,
		-0.142585, -0.986306, -0.082890,
		29.452482, 40.284229, 57.668705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211580, 40.625866, 57.636990>,  <29.552292, 40.974644, 57.726730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211580, 40.625866, 57.636990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968889, 40.340439, 57.496872>,  <29.823275, 40.169182, 57.412804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968889, 40.340439, 57.496872>,  <30.211580, 40.625866, 57.636990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968889, 40.340439, 57.496872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666872, -0.217084, -0.712851,
		0.432626, -0.666104, 0.607569,
		-0.606726, -0.713569, -0.350290,
		29.786871, 40.126369, 57.391785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667341, 40.110706, 57.496574>,  <30.211580, 40.625866, 57.636990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667341, 40.110706, 57.496574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335670, 40.020596, 57.291943>,  <30.136669, 39.966530, 57.169163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335670, 40.020596, 57.291943>,  <30.667341, 40.110706, 57.496574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335670, 40.020596, 57.291943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557799, -0.273794, -0.783516,
		0.036444, -0.935032, 0.352686,
		-0.829175, -0.225282, -0.511582,
		30.086918, 39.953011, 57.138470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682365, 39.417934, 57.404335>,  <30.667341, 40.110706, 57.496574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682365, 39.417934, 57.404335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470259, 39.604420, 57.121078>,  <30.342995, 39.716309, 56.951126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470259, 39.604420, 57.121078>,  <30.682365, 39.417934, 57.404335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470259, 39.604420, 57.121078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514558, -0.486857, -0.705833,
		-0.673832, -0.738659, 0.018270,
		-0.530265, 0.466212, -0.708143,
		30.311180, 39.744282, 56.908634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355280, 38.921814, 57.116573>,  <30.682365, 39.417934, 57.404335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355280, 38.921814, 57.116573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418449, 39.219345, 56.856792>,  <30.456350, 39.397861, 56.700924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418449, 39.219345, 56.856792>,  <30.355280, 38.921814, 57.116573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418449, 39.219345, 56.856792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293896, -0.663304, -0.688224,
		-0.942701, -0.082184, -0.323359,
		0.157924, 0.743823, -0.649451,
		30.465826, 39.442493, 56.661957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529995, 38.587563, 56.590794>,  <30.355280, 38.921814, 57.116573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529995, 38.587563, 56.590794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516140, 38.930431, 56.385250>,  <30.507828, 39.136154, 56.261925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516140, 38.930431, 56.385250>,  <30.529995, 38.587563, 56.590794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516140, 38.930431, 56.385250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272546, -0.486575, -0.830038,
		-0.961519, -0.168801, -0.216766,
		-0.034638, 0.857177, -0.513857,
		30.505749, 39.187584, 56.231094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084885, 38.530128, 55.977993>,  <30.529995, 38.587563, 56.590794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084885, 38.530128, 55.977993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.374340, 38.801689, 55.928288>,  <30.548014, 38.964626, 55.898464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.374340, 38.801689, 55.928288>,  <30.084885, 38.530128, 55.977993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374340, 38.801689, 55.928288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331891, -0.500154, -0.799809,
		-0.605143, 0.537529, -0.587251,
		0.723636, 0.678903, -0.124263,
		30.591431, 39.005360, 55.891010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238400, 38.643967, 55.287857>,  <30.084885, 38.530128, 55.977993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238400, 38.643967, 55.287857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574118, 38.817471, 55.418964>,  <30.775549, 38.921574, 55.497631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574118, 38.817471, 55.418964>,  <30.238400, 38.643967, 55.287857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574118, 38.817471, 55.418964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482948, -0.317942, -0.815888,
		-0.249687, 0.843069, -0.476331,
		0.839296, 0.433760, 0.327773,
		30.825907, 38.947598, 55.517296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536991, 39.064178, 54.706303>,  <30.238400, 38.643967, 55.287857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536991, 39.064178, 54.706303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828918, 38.985580, 54.968220>,  <31.004074, 38.938423, 55.125370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.828918, 38.985580, 54.968220>,  <30.536991, 39.064178, 54.706303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828918, 38.985580, 54.968220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603673, -0.264292, -0.752149,
		0.320852, 0.944213, -0.074266,
		0.729817, -0.196496, 0.654795,
		31.047863, 38.926632, 55.164658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188381, 39.355183, 54.369087>,  <30.536991, 39.064178, 54.706303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188381, 39.355183, 54.369087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363543, 39.122719, 54.643456>,  <31.468639, 38.983242, 54.808079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363543, 39.122719, 54.643456>,  <31.188381, 39.355183, 54.369087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363543, 39.122719, 54.643456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765604, -0.158877, -0.623385,
		0.471264, 0.798130, 0.375365,
		0.437906, -0.581160, 0.685924,
		31.494915, 38.948372, 54.849232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806467, 39.644062, 54.547562>,  <31.188381, 39.355183, 54.369087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806467, 39.644062, 54.547562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850861, 39.262077, 54.657635>,  <31.877497, 39.032887, 54.723679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850861, 39.262077, 54.657635>,  <31.806467, 39.644062, 54.547562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850861, 39.262077, 54.657635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798627, -0.079101, -0.596606,
		0.591505, 0.285982, 0.753881,
		0.110985, -0.954965, 0.275182,
		31.884155, 38.975590, 54.740189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537739, 39.531883, 54.601864>,  <31.806467, 39.644062, 54.547562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537739, 39.531883, 54.601864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399128, 39.158993, 54.560173>,  <32.315960, 38.935257, 54.535160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399128, 39.158993, 54.560173>,  <32.537739, 39.531883, 54.601864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399128, 39.158993, 54.560173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769021, -0.218709, -0.600645,
		0.537144, -0.288294, 0.792693,
		-0.346531, -0.932230, -0.104226,
		32.295170, 38.879322, 54.528904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044125, 39.047634, 54.810642>,  <32.537739, 39.531883, 54.601864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044125, 39.047634, 54.810642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807434, 38.818192, 54.584072>,  <32.665421, 38.680527, 54.448132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807434, 38.818192, 54.584072>,  <33.044125, 39.047634, 54.810642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807434, 38.818192, 54.584072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806134, -0.418855, -0.417982,
		0.002504, -0.703947, 0.710249,
		-0.591728, -0.573602, -0.566426,
		32.629917, 38.646111, 54.414143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408253, 38.486771, 54.666256>,  <33.044125, 39.047634, 54.810642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408253, 38.486771, 54.666256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123096, 38.447773, 54.388470>,  <32.952003, 38.424374, 54.221798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123096, 38.447773, 54.388470>,  <33.408253, 38.486771, 54.666256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123096, 38.447773, 54.388470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619176, -0.552455, -0.558046,
		-0.329251, -0.827821, 0.454209,
		-0.712892, -0.097499, -0.694463,
		32.909229, 38.418522, 54.180130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429775, 37.810745, 54.459618>,  <33.408253, 38.486771, 54.666256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429775, 37.810745, 54.459618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281120, 38.014713, 54.149296>,  <33.191929, 38.137093, 53.963104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281120, 38.014713, 54.149296>,  <33.429775, 37.810745, 54.459618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281120, 38.014713, 54.149296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562489, -0.541134, -0.625124,
		-0.738576, -0.668699, -0.085719,
		-0.371634, 0.509918, -0.775804,
		33.169628, 38.167690, 53.916553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472385, 37.240204, 53.999538>,  <33.429775, 37.810745, 54.459618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472385, 37.240204, 53.999538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379253, 37.557686, 53.774746>,  <33.323376, 37.748177, 53.639870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379253, 37.557686, 53.774746>,  <33.472385, 37.240204, 53.999538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379253, 37.557686, 53.774746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533700, -0.378795, -0.756095,
		-0.812992, -0.475968, -0.335407,
		-0.232827, 0.793706, -0.561981,
		33.309406, 37.795799, 53.606152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366459, 36.955872, 53.253117>,  <33.472385, 37.240204, 53.999538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366459, 36.955872, 53.253117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438770, 37.348907, 53.235950>,  <33.482155, 37.584728, 53.225651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438770, 37.348907, 53.235950>,  <33.366459, 36.955872, 53.253117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438770, 37.348907, 53.235950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590777, -0.143369, -0.793995,
		-0.786323, 0.118180, -0.606408,
		0.180774, 0.982588, -0.042916,
		33.493004, 37.643684, 53.223076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315540, 37.124306, 52.554283>,  <33.366459, 36.955872, 53.253117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315540, 37.124306, 52.554283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530865, 37.418655, 52.718586>,  <33.660057, 37.595264, 52.817165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530865, 37.418655, 52.718586>,  <33.315540, 37.124306, 52.554283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530865, 37.418655, 52.718586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530855, 0.082464, -0.843441,
		-0.654535, 0.672082, -0.346250,
		0.538309, 0.735870, 0.410754,
		33.692356, 37.639416, 52.841812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425575, 37.645470, 51.985977>,  <33.315540, 37.124306, 52.554283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425575, 37.645470, 51.985977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733150, 37.696365, 52.236588>,  <33.917698, 37.726902, 52.386955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733150, 37.696365, 52.236588>,  <33.425575, 37.645470, 51.985977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733150, 37.696365, 52.236588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598169, 0.202717, -0.775306,
		-0.225659, 0.970936, 0.079766,
		0.768942, 0.127241, 0.626528,
		33.963833, 37.734539, 52.424545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801254, 38.172768, 51.756374>,  <33.425575, 37.645470, 51.985977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801254, 38.172768, 51.756374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060921, 37.983932, 51.994942>,  <34.216721, 37.870632, 52.138084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060921, 37.983932, 51.994942>,  <33.801254, 38.172768, 51.756374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060921, 37.983932, 51.994942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692164, 0.041475, -0.720547,
		0.315424, 0.880577, 0.353685,
		0.649166, -0.472086, 0.596422,
		34.255669, 37.842308, 52.173866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441376, 38.605637, 51.650803>,  <33.801254, 38.172768, 51.756374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441376, 38.605637, 51.650803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560505, 38.267757, 51.828693>,  <34.631985, 38.065029, 51.935429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560505, 38.267757, 51.828693>,  <34.441376, 38.605637, 51.650803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560505, 38.267757, 51.828693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762810, -0.069511, -0.642876,
		0.573951, 0.530705, 0.623644,
		0.297828, -0.844701, 0.444723,
		34.649853, 38.014347, 51.962109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165943, 38.623230, 51.706463>,  <34.441376, 38.605637, 51.650803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165943, 38.623230, 51.706463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123447, 38.226582, 51.735840>,  <35.097950, 37.988590, 51.753464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123447, 38.226582, 51.735840>,  <35.165943, 38.623230, 51.706463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123447, 38.226582, 51.735840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739933, -0.128178, -0.660355,
		0.664238, -0.015815, 0.747354,
		-0.106238, -0.991625, 0.073439,
		35.091576, 37.929092, 51.757870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877087, 38.347462, 51.756020>,  <35.165943, 38.623230, 51.706463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877087, 38.347462, 51.756020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631260, 38.058693, 51.628811>,  <35.483765, 37.885433, 51.552486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631260, 38.058693, 51.628811>,  <35.877087, 38.347462, 51.756020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631260, 38.058693, 51.628811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692911, -0.301309, -0.655048,
		0.377071, -0.622930, 0.685402,
		-0.614567, -0.721922, -0.318020,
		35.446892, 37.842117, 51.533405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212421, 37.761387, 51.792469>,  <35.877087, 38.347462, 51.756020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212421, 37.761387, 51.792469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923775, 37.694077, 51.523861>,  <35.750587, 37.653690, 51.362694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923775, 37.694077, 51.523861>,  <36.212421, 37.761387, 51.792469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923775, 37.694077, 51.523861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691771, -0.212749, -0.690066,
		-0.026744, -0.962508, 0.269933,
		-0.721621, -0.168277, -0.671525,
		35.707287, 37.643593, 51.322403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521721, 37.286919, 51.403343>,  <36.212421, 37.761387, 51.792469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521721, 37.286919, 51.403343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219997, 37.412487, 51.172703>,  <36.038963, 37.487827, 51.034317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219997, 37.412487, 51.172703>,  <36.521721, 37.286919, 51.403343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219997, 37.412487, 51.172703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581001, -0.089761, -0.808938,
		-0.305700, -0.945196, -0.114682,
		-0.754311, 0.313923, -0.576600,
		35.993706, 37.506664, 50.999722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488556, 36.840710, 50.846123>,  <36.521721, 37.286919, 51.403343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488556, 36.840710, 50.846123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300713, 37.157455, 50.689964>,  <36.188007, 37.347504, 50.596268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300713, 37.157455, 50.689964>,  <36.488556, 36.840710, 50.846123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300713, 37.157455, 50.689964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575671, -0.060617, -0.815431,
		-0.669378, -0.607677, -0.427389,
		-0.469612, 0.791868, -0.390398,
		36.159828, 37.395016, 50.572845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254982, 36.681587, 50.097225>,  <36.488556, 36.840710, 50.846123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254982, 36.681587, 50.097225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237656, 37.080212, 50.125462>,  <36.227261, 37.319386, 50.142403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237656, 37.080212, 50.125462>,  <36.254982, 36.681587, 50.097225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237656, 37.080212, 50.125462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477113, 0.082717, -0.874941,
		-0.877774, -0.004216, -0.479056,
		-0.043315, 0.996564, 0.070595,
		36.224663, 37.379181, 50.146641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150421, 36.899548, 49.433216>,  <36.254982, 36.681587, 50.097225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150421, 36.899548, 49.433216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295628, 37.225006, 49.614857>,  <36.382751, 37.420280, 49.723843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295628, 37.225006, 49.614857>,  <36.150421, 36.899548, 49.433216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295628, 37.225006, 49.614857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588288, 0.177801, -0.788863,
		-0.722592, 0.553510, -0.414111,
		0.363014, 0.813642, 0.454101,
		36.404533, 37.469097, 49.751087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171349, 37.509445, 48.941284>,  <36.150421, 36.899548, 49.433216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171349, 37.509445, 48.941284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444965, 37.575035, 49.225594>,  <36.609135, 37.614391, 49.396179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444965, 37.575035, 49.225594>,  <36.171349, 37.509445, 48.941284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444965, 37.575035, 49.225594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699291, 0.129823, -0.702950,
		-0.207544, 0.977884, -0.025864,
		0.684045, 0.163979, 0.710769,
		36.650181, 37.624229, 49.438824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689171, 37.814678, 48.358143>,  <36.171349, 37.509445, 48.941284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689171, 37.814678, 48.358143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750618, 37.576550, 48.042679>,  <35.787487, 37.433670, 47.853401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750618, 37.576550, 48.042679>,  <35.689171, 37.814678, 48.358143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750618, 37.576550, 48.042679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503448, -0.733930, 0.455945,
		-0.850260, 0.327009, -0.412460,
		0.153619, -0.595324, -0.788664,
		35.796703, 37.397953, 47.806080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979473, 38.043716, 48.403645>,  <35.689171, 37.814678, 48.358143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979473, 38.043716, 48.403645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854450, 37.899422, 48.052151>,  <34.779438, 37.812843, 47.841255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854450, 37.899422, 48.052151>,  <34.979473, 38.043716, 48.403645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854450, 37.899422, 48.052151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939441, 0.254288, 0.229756,
		0.140572, 0.897334, -0.418368,
		-0.312554, -0.360735, -0.878738,
		34.760685, 37.791203, 47.788528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489067, 38.431141, 48.284225>,  <34.979473, 38.043716, 48.403645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489067, 38.431141, 48.284225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.416130, 38.131527, 48.029446>,  <34.372368, 37.951759, 47.876579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.416130, 38.131527, 48.029446>,  <34.489067, 38.431141, 48.284225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416130, 38.131527, 48.029446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971344, 0.036777, 0.234816,
		-0.152460, 0.661510, -0.734275,
		-0.182338, -0.749034, -0.636947,
		34.361427, 37.906818, 47.838360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876526, 38.761993, 47.987801>,  <34.489067, 38.431141, 48.284225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876526, 38.761993, 47.987801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874226, 38.372944, 47.894871>,  <33.872845, 38.139515, 47.839111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874226, 38.372944, 47.894871>,  <33.876526, 38.761993, 47.987801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874226, 38.372944, 47.894871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988243, 0.041026, -0.147287,
		0.152786, 0.228751, -0.961421,
		-0.005752, -0.972621, -0.232329,
		33.872501, 38.081158, 47.825172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365646, 38.633358, 47.459213>,  <33.876526, 38.761993, 47.987801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365646, 38.633358, 47.459213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432648, 38.270584, 47.613831>,  <33.472847, 38.052921, 47.706600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432648, 38.270584, 47.613831>,  <33.365646, 38.633358, 47.459213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432648, 38.270584, 47.613831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976398, -0.206832, -0.062182,
		0.136344, -0.367006, -0.920172,
		0.167500, -0.906933, 0.386544,
		33.482899, 37.998505, 47.729794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936199, 38.269405, 47.073849>,  <33.365646, 38.633358, 47.459213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936199, 38.269405, 47.073849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998497, 38.085793, 47.423714>,  <33.035873, 37.975624, 47.633633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998497, 38.085793, 47.423714>,  <32.936199, 38.269405, 47.073849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998497, 38.085793, 47.423714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970447, -0.236338, 0.048766,
		0.184331, -0.856409, -0.482272,
		0.155742, -0.459030, 0.874663,
		33.045219, 37.948082, 47.686111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398254, 37.720726, 47.093254>,  <32.936199, 38.269405, 47.073849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398254, 37.720726, 47.093254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.529186, 37.774609, 47.467358>,  <32.607746, 37.806938, 47.691818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.529186, 37.774609, 47.467358>,  <32.398254, 37.720726, 47.093254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529186, 37.774609, 47.467358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887485, -0.295963, 0.353237,
		0.324387, -0.945653, 0.022677,
		0.327328, 0.134711, 0.935259,
		32.627384, 37.815022, 47.747936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076321, 37.196091, 47.473019>,  <32.398254, 37.720726, 47.093254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076321, 37.196091, 47.473019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194447, 37.466347, 47.743217>,  <32.265324, 37.628502, 47.905338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194447, 37.466347, 47.743217>,  <32.076321, 37.196091, 47.473019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194447, 37.466347, 47.743217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746398, -0.278194, 0.604564,
		0.596388, -0.682727, 0.422143,
		0.295314, 0.675642, 0.675498,
		32.283039, 37.669041, 47.945866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874331, 36.895451, 48.146706>,  <32.076321, 37.196091, 47.473019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874331, 36.895451, 48.146706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931190, 37.287510, 48.201977>,  <31.965307, 37.522747, 48.235142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931190, 37.287510, 48.201977>,  <31.874331, 36.895451, 48.146706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931190, 37.287510, 48.201977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783291, 0.026037, 0.621110,
		0.605185, -0.196526, 0.771446,
		0.142150, 0.980153, 0.138180,
		31.973835, 37.581554, 48.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775923, 37.029945, 48.921478>,  <31.874331, 36.895451, 48.146706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775923, 37.029945, 48.921478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.734343, 37.387959, 48.747990>,  <31.709394, 37.602764, 48.643894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.734343, 37.387959, 48.747990>,  <31.775923, 37.029945, 48.921478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734343, 37.387959, 48.747990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629882, 0.278244, 0.725141,
		0.769703, 0.348575, 0.534839,
		-0.103950, 0.895028, -0.433726,
		31.703157, 37.656467, 48.617870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761799, 37.428410, 49.600155>,  <31.775923, 37.029945, 48.921478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761799, 37.428410, 49.600155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623293, 37.644287, 49.293213>,  <31.540190, 37.773815, 49.109047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623293, 37.644287, 49.293213>,  <31.761799, 37.428410, 49.600155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623293, 37.644287, 49.293213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615079, 0.487012, 0.620077,
		0.708363, 0.686693, 0.163321,
		-0.346264, 0.539696, -0.767353,
		31.519413, 37.806194, 49.063007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824383, 38.043983, 49.786758>,  <31.761799, 37.428410, 49.600155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824383, 38.043983, 49.786758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511885, 38.027412, 49.537621>,  <31.324387, 38.017471, 49.388138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511885, 38.027412, 49.537621>,  <31.824383, 38.043983, 49.786758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511885, 38.027412, 49.537621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563715, 0.475377, 0.675457,
		0.268107, 0.878806, -0.394738,
		-0.781245, -0.041425, -0.622848,
		31.277512, 38.014984, 49.350765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547626, 38.679909, 49.815868>,  <31.824383, 38.043983, 49.786758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547626, 38.679909, 49.815868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.246826, 38.455822, 49.676926>,  <31.066347, 38.321369, 49.593559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.246826, 38.455822, 49.676926>,  <31.547626, 38.679909, 49.815868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246826, 38.455822, 49.676926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644524, 0.514468, 0.565608,
		-0.138155, 0.649219, -0.747950,
		-0.751999, -0.560213, -0.347361,
		31.021227, 38.287758, 49.572716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938560, 39.150024, 49.700447>,  <31.547626, 38.679909, 49.815868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938560, 39.150024, 49.700447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826378, 38.771133, 49.762543>,  <30.759068, 38.543797, 49.799801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826378, 38.771133, 49.762543>,  <30.938560, 39.150024, 49.700447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826378, 38.771133, 49.762543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717815, 0.314345, 0.621232,
		-0.637249, 0.062794, -0.768095,
		-0.280456, -0.947230, 0.155242,
		30.742241, 38.486965, 49.809116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297260, 39.291210, 49.723866>,  <30.938560, 39.150024, 49.700447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297260, 39.291210, 49.723866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344263, 38.931969, 49.893387>,  <30.372465, 38.716423, 49.995098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344263, 38.931969, 49.893387>,  <30.297260, 39.291210, 49.723866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344263, 38.931969, 49.893387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619999, 0.267022, 0.737767,
		-0.775753, -0.349449, -0.525445,
		0.117507, -0.898100, 0.423802,
		30.379515, 38.662540, 50.020527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711224, 39.077911, 49.902599>,  <30.297260, 39.291210, 49.723866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711224, 39.077911, 49.902599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928013, 38.836342, 50.136364>,  <30.058086, 38.691399, 50.276623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928013, 38.836342, 50.136364>,  <29.711224, 39.077911, 49.902599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928013, 38.836342, 50.136364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533309, 0.290279, 0.794556,
		-0.649496, -0.742300, -0.164756,
		0.541974, -0.603927, 0.584411,
		30.090605, 38.655163, 50.311687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248400, 38.747425, 50.393185>,  <29.711224, 39.077911, 49.902599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248400, 38.747425, 50.393185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603567, 38.710152, 50.573368>,  <29.816668, 38.687786, 50.681480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603567, 38.710152, 50.573368>,  <29.248400, 38.747425, 50.393185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603567, 38.710152, 50.573368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404251, 0.309205, 0.860798,
		-0.219501, -0.946419, 0.236878,
		0.887919, -0.093187, 0.450462,
		29.869944, 38.682194, 50.708508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126041, 38.287235, 51.020931>,  <29.248400, 38.747425, 50.393185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126041, 38.287235, 51.020931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465504, 38.488583, 51.085930>,  <29.669182, 38.609390, 51.124928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465504, 38.488583, 51.085930>,  <29.126041, 38.287235, 51.020931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465504, 38.488583, 51.085930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303686, 0.212156, 0.928851,
		0.433077, -0.837624, 0.332913,
		0.848657, 0.503365, 0.162495,
		29.720100, 38.639591, 51.134678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309780, 38.051811, 51.670555>,  <29.126041, 38.287235, 51.020931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309780, 38.051811, 51.670555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524628, 38.387344, 51.635105>,  <29.653536, 38.588665, 51.613834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524628, 38.387344, 51.635105>,  <29.309780, 38.051811, 51.670555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524628, 38.387344, 51.635105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269922, 0.270468, 0.924115,
		0.799152, -0.472439, 0.371695,
		0.537119, 0.838838, -0.088623,
		29.685764, 38.638996, 51.608517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683115, 38.055820, 52.287151>,  <29.309780, 38.051811, 51.670555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683115, 38.055820, 52.287151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709106, 38.427231, 52.140938>,  <29.724701, 38.650078, 52.053207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709106, 38.427231, 52.140938>,  <29.683115, 38.055820, 52.287151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709106, 38.427231, 52.140938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288272, 0.368159, 0.883945,
		0.955342, 0.047938, 0.291590,
		0.064977, 0.928526, -0.365537,
		29.728600, 38.705788, 52.031277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104340, 38.389534, 52.747486>,  <29.683115, 38.055820, 52.287151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104340, 38.389534, 52.747486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917019, 38.688286, 52.558655>,  <29.804626, 38.867538, 52.445354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917019, 38.688286, 52.558655>,  <30.104340, 38.389534, 52.747486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917019, 38.688286, 52.558655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330309, 0.347566, 0.877550,
		0.819505, 0.566892, 0.083936,
		-0.468303, 0.746881, -0.472081,
		29.776527, 38.912350, 52.417030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188101, 38.867268, 53.180717>,  <30.104340, 38.389534, 52.747486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188101, 38.867268, 53.180717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.888838, 39.006691, 52.954880>,  <29.709280, 39.090343, 52.819378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.888838, 39.006691, 52.954880>,  <30.188101, 38.867268, 53.180717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888838, 39.006691, 52.954880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419516, 0.410759, 0.809496,
		0.514069, 0.842487, -0.161087,
		-0.748158, 0.348558, -0.564595,
		29.664391, 39.111259, 52.785500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080755, 39.541157, 53.436306>,  <30.188101, 38.867268, 53.180717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080755, 39.541157, 53.436306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748959, 39.429890, 53.242580>,  <29.549881, 39.363129, 53.126343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748959, 39.429890, 53.242580>,  <30.080755, 39.541157, 53.436306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748959, 39.429890, 53.242580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552766, 0.284756, 0.783176,
		-0.079945, 0.917352, -0.389967,
		-0.829493, -0.278172, -0.484316,
		29.500111, 39.346439, 53.097286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680655, 40.096352, 53.595459>,  <30.080755, 39.541157, 53.436306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680655, 40.096352, 53.595459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462168, 39.778656, 53.489006>,  <29.331076, 39.588039, 53.425133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462168, 39.778656, 53.489006>,  <29.680655, 40.096352, 53.595459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462168, 39.778656, 53.489006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424996, -0.011009, 0.905128,
		-0.721820, 0.607502, -0.331536,
		-0.546218, -0.794242, -0.266132,
		29.298302, 39.540382, 53.409168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030350, 40.347267, 53.817562>,  <29.680655, 40.096352, 53.595459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030350, 40.347267, 53.817562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957396, 39.955292, 53.785416>,  <28.913624, 39.720108, 53.766129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957396, 39.955292, 53.785416>,  <29.030350, 40.347267, 53.817562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957396, 39.955292, 53.785416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584228, 0.042266, 0.810489,
		-0.790832, 0.194772, -0.580215,
		-0.182384, -0.979938, -0.080366,
		28.902681, 39.661312, 53.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288616, 40.312523, 53.801117>,  <29.030350, 40.347267, 53.817562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288616, 40.312523, 53.801117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.467068, 39.977699, 53.927799>,  <28.574139, 39.776806, 54.003811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.467068, 39.977699, 53.927799>,  <28.288616, 40.312523, 53.801117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467068, 39.977699, 53.927799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612358, -0.027426, 0.790105,
		-0.652677, -0.546429, -0.524813,
		0.446130, -0.837056, 0.316710,
		28.600906, 39.726582, 54.022812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793268, 39.854572, 54.036434>,  <28.288616, 40.312523, 53.801117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793268, 39.854572, 54.036434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118702, 39.728649, 54.231976>,  <28.313961, 39.653095, 54.349300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118702, 39.728649, 54.231976>,  <27.793268, 39.854572, 54.036434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118702, 39.728649, 54.231976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513701, 0.004694, 0.857957,
		-0.272387, -0.949143, -0.157899,
		0.813583, -0.314809, 0.488854,
		28.362778, 39.634209, 54.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681284, 39.202553, 54.220570>,  <27.793268, 39.854572, 54.036434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681284, 39.202553, 54.220570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930574, 39.385693, 54.474171>,  <28.080149, 39.495575, 54.626331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930574, 39.385693, 54.474171>,  <27.681284, 39.202553, 54.220570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930574, 39.385693, 54.474171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612783, -0.217795, 0.759646,
		0.485888, -0.861938, 0.144828,
		0.623225, 0.457851, 0.634006,
		28.117542, 39.523048, 54.664371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816236, 38.689541, 54.831715>,  <27.681284, 39.202553, 54.220570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816236, 38.689541, 54.831715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.902573, 39.052464, 54.976055>,  <27.954374, 39.270218, 55.062660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.902573, 39.052464, 54.976055>,  <27.816236, 38.689541, 54.831715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902573, 39.052464, 54.976055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530301, -0.201387, 0.823544,
		0.819874, -0.369116, 0.437676,
		0.215841, 0.907302, 0.360854,
		27.967325, 39.324654, 55.084312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120541, 38.665546, 55.497208>,  <27.816236, 38.689541, 54.831715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120541, 38.665546, 55.497208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972292, 39.036808, 55.483521>,  <27.883343, 39.259563, 55.475307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972292, 39.036808, 55.483521>,  <28.120541, 38.665546, 55.497208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972292, 39.036808, 55.483521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561367, -0.194506, 0.804384,
		0.739936, 0.317333, 0.593123,
		-0.370624, 0.928153, -0.034219,
		27.861105, 39.315254, 55.473255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068850, 38.785198, 56.160801>,  <28.120541, 38.665546, 55.497208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068850, 38.785198, 56.160801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.857090, 39.072533, 55.980255>,  <27.730034, 39.244934, 55.871925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.857090, 39.072533, 55.980255>,  <28.068850, 38.785198, 56.160801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857090, 39.072533, 55.980255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690131, -0.055211, 0.721576,
		0.493412, 0.693505, 0.524973,
		-0.529400, 0.718334, -0.451367,
		27.698271, 39.288033, 55.844845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913799, 39.395420, 56.638645>,  <28.068850, 38.785198, 56.160801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913799, 39.395420, 56.638645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.611542, 39.392586, 56.376667>,  <27.430187, 39.390884, 56.219482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.611542, 39.392586, 56.376667>,  <27.913799, 39.395420, 56.638645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611542, 39.392586, 56.376667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651827, -0.089859, 0.753025,
		-0.064190, 0.995929, 0.063282,
		-0.755646, -0.007088, -0.654942,
		27.384848, 39.390461, 56.180183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387541, 39.863823, 56.889267>,  <27.913799, 39.395420, 56.638645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387541, 39.863823, 56.889267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181896, 39.634434, 56.634136>,  <27.058510, 39.496799, 56.481056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181896, 39.634434, 56.634136>,  <27.387541, 39.863823, 56.889267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181896, 39.634434, 56.634136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773191, -0.012056, 0.634059,
		-0.371303, 0.819138, -0.437204,
		-0.514110, -0.573471, -0.637826,
		27.027662, 39.462391, 56.442787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683725, 40.034664, 56.996265>,  <27.387541, 39.863823, 56.889267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683725, 40.034664, 56.996265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648010, 39.678310, 56.818115>,  <26.626581, 39.464500, 56.711227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648010, 39.678310, 56.818115>,  <26.683725, 40.034664, 56.996265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648010, 39.678310, 56.818115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858373, -0.157982, 0.488097,
		-0.505197, 0.425878, -0.750602,
		-0.089288, -0.890881, -0.445374,
		26.621223, 39.411045, 56.684502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960745, 39.869942, 56.851669>,  <26.683725, 40.034664, 56.996265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960745, 39.869942, 56.851669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.150820, 39.518337, 56.867325>,  <26.264866, 39.307373, 56.876717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.150820, 39.518337, 56.867325>,  <25.960745, 39.869942, 56.851669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150820, 39.518337, 56.867325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694319, -0.347282, 0.630331,
		-0.540478, -0.326699, -0.775340,
		0.475189, -0.879013, 0.039135,
		26.293377, 39.254635, 56.879066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425760, 39.355564, 56.967155>,  <25.960745, 39.869942, 56.851669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425760, 39.355564, 56.967155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.749758, 39.146488, 57.073521>,  <25.944157, 39.021042, 57.137341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.749758, 39.146488, 57.073521>,  <25.425760, 39.355564, 56.967155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749758, 39.146488, 57.073521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459552, -0.284041, 0.841506,
		-0.364318, -0.803812, -0.470275,
		0.809990, -0.522692, 0.265912,
		25.992756, 38.989681, 57.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213943, 38.652523, 57.123974>,  <25.425760, 39.355564, 56.967155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213943, 38.652523, 57.123974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.555756, 38.721249, 57.320042>,  <25.760843, 38.762486, 57.437683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.555756, 38.721249, 57.320042>,  <25.213943, 38.652523, 57.123974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555756, 38.721249, 57.320042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450966, -0.222798, 0.864286,
		0.257705, -0.959604, -0.112904,
		0.854528, 0.171815, 0.490165,
		25.812115, 38.772793, 57.467091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180019, 38.186684, 57.591877>,  <25.213943, 38.652523, 57.123974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180019, 38.186684, 57.591877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.455530, 38.439285, 57.734310>,  <25.620836, 38.590847, 57.819771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.455530, 38.439285, 57.734310>,  <25.180019, 38.186684, 57.591877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455530, 38.439285, 57.734310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320937, -0.174821, 0.930826,
		0.650069, -0.755410, 0.082260,
		0.688775, 0.631501, 0.356084,
		25.662163, 38.628735, 57.841137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231001, 37.458969, 57.507519>,  <25.180019, 38.186684, 57.591877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231001, 37.458969, 57.507519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.328772, 37.393463, 57.889812>,  <25.387434, 37.354160, 58.119190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.328772, 37.393463, 57.889812>,  <25.231001, 37.458969, 57.507519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328772, 37.393463, 57.889812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910269, -0.300913, -0.284361,
		0.334163, 0.939485, 0.075520,
		0.244428, -0.163766, 0.955738,
		25.402100, 37.344334, 58.176533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861525, 37.689301, 57.598450>,  <25.231001, 37.458969, 57.507519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861525, 37.689301, 57.598450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.797634, 37.381504, 57.845795>,  <25.759300, 37.196827, 57.994202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.797634, 37.381504, 57.845795>,  <25.861525, 37.689301, 57.598450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797634, 37.381504, 57.845795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910717, -0.356564, -0.208463,
		0.380896, 0.529855, 0.757741,
		-0.159728, -0.769490, 0.618362,
		25.749716, 37.150658, 58.031303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590858, 37.600834, 57.838467>,  <25.861525, 37.689301, 57.598450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590858, 37.600834, 57.838467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.383516, 37.275932, 57.945469>,  <26.259111, 37.080994, 58.009670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.383516, 37.275932, 57.945469>,  <26.590858, 37.600834, 57.838467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383516, 37.275932, 57.945469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812137, -0.565544, -0.143506,
		0.267848, 0.142864, 0.952810,
		-0.518355, -0.812250, 0.267505,
		26.228010, 37.032257, 58.025719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987675, 37.271095, 58.404911>,  <26.590858, 37.600834, 57.838467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987675, 37.271095, 58.404911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.749855, 37.002232, 58.228405>,  <26.607164, 36.840912, 58.122501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.749855, 37.002232, 58.228405>,  <26.987675, 37.271095, 58.404911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749855, 37.002232, 58.228405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803880, -0.508528, -0.308505,
		-0.017028, -0.538142, 0.842682,
		-0.594547, -0.672163, -0.441261,
		26.571491, 36.800583, 58.096027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306290, 36.568302, 58.506454>,  <26.987675, 37.271095, 58.404911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306290, 36.568302, 58.506454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.080273, 36.532959, 58.178329>,  <26.944662, 36.511753, 57.981453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.080273, 36.532959, 58.178329>,  <27.306290, 36.568302, 58.506454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080273, 36.532959, 58.178329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677341, -0.617382, -0.400062,
		-0.471101, -0.781686, 0.408694,
		-0.565043, -0.088355, -0.820317,
		26.910759, 36.506451, 57.932236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463543, 35.947266, 58.318989>,  <27.306290, 36.568302, 58.506454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463543, 35.947266, 58.318989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.308821, 36.109070, 57.987507>,  <27.215988, 36.206154, 57.788620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.308821, 36.109070, 57.987507>,  <27.463543, 35.947266, 58.318989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308821, 36.109070, 57.987507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730582, -0.413929, -0.543058,
		-0.562699, -0.815494, -0.135421,
		-0.386806, 0.404515, -0.828703,
		27.192780, 36.230423, 57.738895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431452, 35.496162, 57.723248>,  <27.463543, 35.947266, 58.318989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431452, 35.496162, 57.723248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.377224, 35.837093, 57.521191>,  <27.344688, 36.041653, 57.399956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.377224, 35.837093, 57.521191>,  <27.431452, 35.496162, 57.723248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377224, 35.837093, 57.521191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433703, -0.407352, -0.803720,
		-0.890799, -0.328040, -0.314431,
		-0.135568, 0.852323, -0.505141,
		27.336554, 36.092789, 57.369648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387697, 35.224228, 57.057297>,  <27.431452, 35.496162, 57.723248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387697, 35.224228, 57.057297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.445047, 35.615128, 56.994770>,  <27.479458, 35.849667, 56.957253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.445047, 35.615128, 56.994770>,  <27.387697, 35.224228, 57.057297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445047, 35.615128, 56.994770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505813, -0.208117, -0.837162,
		-0.850645, 0.040960, -0.524142,
		0.143373, 0.977246, -0.156315,
		27.488060, 35.908302, 56.947876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136248, 35.463547, 56.373589>,  <27.387697, 35.224228, 57.057297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136248, 35.463547, 56.373589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.419514, 35.726696, 56.476116>,  <27.589474, 35.884586, 56.537632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.419514, 35.726696, 56.476116>,  <27.136248, 35.463547, 56.373589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419514, 35.726696, 56.476116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469194, -0.167222, -0.867118,
		-0.527596, 0.734326, -0.427093,
		0.708166, 0.657877, 0.256316,
		27.631964, 35.924061, 56.553009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212601, 35.739235, 55.754837>,  <27.136248, 35.463547, 56.373589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212601, 35.739235, 55.754837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.535553, 35.892933, 55.933945>,  <27.729324, 35.985153, 56.041409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.535553, 35.892933, 55.933945>,  <27.212601, 35.739235, 55.754837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535553, 35.892933, 55.933945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495789, -0.030362, -0.867912,
		-0.319896, 0.922732, -0.215017,
		0.807379, 0.384244, 0.447767,
		27.777767, 36.008205, 56.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457809, 36.356590, 55.402958>,  <27.212601, 35.739235, 55.754837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457809, 36.356590, 55.402958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.773466, 36.213524, 55.602692>,  <27.962860, 36.127686, 55.722530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.773466, 36.213524, 55.602692>,  <27.457809, 36.356590, 55.402958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773466, 36.213524, 55.602692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489692, -0.124357, -0.862982,
		0.370754, 0.925533, 0.077010,
		0.789141, -0.357664, 0.499332,
		28.010208, 36.106224, 55.752491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035511, 36.836094, 55.219738>,  <27.457809, 36.356590, 55.402958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035511, 36.836094, 55.219738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.209522, 36.496735, 55.340382>,  <28.313929, 36.293118, 55.412769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.209522, 36.496735, 55.340382>,  <28.035511, 36.836094, 55.219738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209522, 36.496735, 55.340382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475175, -0.068213, -0.877243,
		0.764827, 0.524942, 0.373464,
		0.435026, -0.848400, 0.301610,
		28.340031, 36.242214, 55.430866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770746, 36.887550, 54.998646>,  <28.035511, 36.836094, 55.219738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770746, 36.887550, 54.998646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623549, 36.517052, 55.031273>,  <28.535231, 36.294754, 55.050850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623549, 36.517052, 55.031273>,  <28.770746, 36.887550, 54.998646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623549, 36.517052, 55.031273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174351, -0.154900, -0.972424,
		0.913336, -0.343625, 0.218494,
		-0.367994, -0.926244, 0.081565,
		28.513151, 36.239178, 55.055744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221472, 36.276894, 54.784637>,  <28.770746, 36.887550, 54.998646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221472, 36.276894, 54.784637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843122, 36.171959, 54.708218>,  <28.616112, 36.108997, 54.662365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843122, 36.171959, 54.708218>,  <29.221472, 36.276894, 54.784637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843122, 36.171959, 54.708218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185557, 0.045779, -0.981566,
		0.266249, -0.963889, 0.005378,
		-0.945875, -0.262339, -0.191045,
		28.559361, 36.093258, 54.650906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216457, 35.775631, 54.211567>,  <29.221472, 36.276894, 54.784637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216457, 35.775631, 54.211567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847677, 35.929539, 54.229271>,  <28.626410, 36.021885, 54.239891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.847677, 35.929539, 54.229271>,  <29.216457, 35.775631, 54.211567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847677, 35.929539, 54.229271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067400, 0.271918, -0.959957,
		-0.381396, -0.882051, -0.276629,
		-0.921952, 0.384768, 0.044258,
		28.571093, 36.044968, 54.242550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873947, 35.532352, 53.565662>,  <29.216457, 35.775631, 54.211567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873947, 35.532352, 53.565662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.657522, 35.849442, 53.677979>,  <28.527666, 36.039696, 53.745369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.657522, 35.849442, 53.677979>,  <28.873947, 35.532352, 53.565662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657522, 35.849442, 53.677979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000248, 0.333738, -0.942666,
		-0.840981, -0.510113, -0.180377,
		-0.541065, 0.792720, 0.280794,
		28.495203, 36.087257, 53.762218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231579, 35.440727, 53.087448>,  <28.873947, 35.532352, 53.565662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231579, 35.440727, 53.087448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.284832, 35.814285, 53.220184>,  <28.316784, 36.038418, 53.299828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.284832, 35.814285, 53.220184>,  <28.231579, 35.440727, 53.087448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284832, 35.814285, 53.220184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007762, 0.335798, -0.941902,
		-0.991068, 0.122824, 0.051956,
		0.133134, 0.933892, 0.331845,
		28.324772, 36.094452, 53.319736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686449, 35.766426, 52.881973>,  <28.231579, 35.440727, 53.087448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686449, 35.766426, 52.881973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.973587, 36.038319, 52.942188>,  <28.145870, 36.201454, 52.978317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.973587, 36.038319, 52.942188>,  <27.686449, 35.766426, 52.881973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973587, 36.038319, 52.942188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064053, 0.150825, -0.986483,
		-0.693252, 0.717783, 0.064730,
		0.717843, 0.679735, 0.150536,
		28.188940, 36.242241, 52.987350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551857, 36.208214, 52.306725>,  <27.686449, 35.766426, 52.881973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551857, 36.208214, 52.306725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907637, 36.343277, 52.429924>,  <28.121105, 36.424316, 52.503845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907637, 36.343277, 52.429924>,  <27.551857, 36.208214, 52.306725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907637, 36.343277, 52.429924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196536, 0.325828, -0.924775,
		-0.412615, 0.883074, 0.223446,
		0.889450, 0.337661, 0.307998,
		28.174471, 36.444576, 52.522324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619633, 36.837345, 52.031860>,  <27.551857, 36.208214, 52.306725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619633, 36.837345, 52.031860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983852, 36.698479, 52.121635>,  <28.202385, 36.615158, 52.175503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983852, 36.698479, 52.121635>,  <27.619633, 36.837345, 52.031860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983852, 36.698479, 52.121635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269563, 0.086990, -0.959046,
		0.313424, 0.933760, 0.172792,
		0.910550, -0.347166, 0.224442,
		28.257017, 36.594330, 52.188969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007006, 37.209431, 51.543304>,  <27.619633, 36.837345, 52.031860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007006, 37.209431, 51.543304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.238785, 36.909496, 51.671047>,  <28.377853, 36.729534, 51.747692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.238785, 36.909496, 51.671047>,  <28.007006, 37.209431, 51.543304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238785, 36.909496, 51.671047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459559, -0.023002, -0.887849,
		0.673086, 0.661225, 0.331265,
		0.579449, -0.749835, 0.319354,
		28.412619, 36.684547, 51.766853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643703, 37.409168, 51.436115>,  <28.007006, 37.209431, 51.543304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643703, 37.409168, 51.436115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678185, 37.010658, 51.435707>,  <28.698874, 36.771553, 51.435463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678185, 37.010658, 51.435707>,  <28.643703, 37.409168, 51.436115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678185, 37.010658, 51.435707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581717, 0.051167, -0.811781,
		0.808811, 0.069381, 0.583962,
		0.086202, -0.996277, -0.001025,
		28.704044, 36.711777, 51.435398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327385, 37.321564, 51.391422>,  <28.643703, 37.409168, 51.436115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327385, 37.321564, 51.391422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174713, 36.968983, 51.280163>,  <29.083109, 36.757435, 51.213409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174713, 36.968983, 51.280163>,  <29.327385, 37.321564, 51.391422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174713, 36.968983, 51.280163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610583, -0.014530, -0.791819,
		0.693908, -0.472052, 0.543744,
		-0.381681, -0.881451, -0.278144,
		29.060209, 36.704548, 51.196720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811773, 36.836765, 51.198307>,  <29.327385, 37.321564, 51.391422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811773, 36.836765, 51.198307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486479, 36.685013, 51.021801>,  <29.291302, 36.593964, 50.915897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486479, 36.685013, 51.021801>,  <29.811773, 36.836765, 51.198307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486479, 36.685013, 51.021801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521048, -0.137033, -0.842455,
		0.259142, -0.915037, 0.309115,
		-0.813237, -0.379379, -0.441268,
		29.242508, 36.571198, 50.889420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063980, 36.263779, 50.749336>,  <29.811773, 36.836765, 51.198307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063980, 36.263779, 50.749336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.698376, 36.330414, 50.601372>,  <29.479013, 36.370396, 50.512592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.698376, 36.330414, 50.601372>,  <30.063980, 36.263779, 50.749336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698376, 36.330414, 50.601372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302865, -0.326475, -0.895370,
		-0.269924, -0.930410, 0.247948,
		-0.914010, 0.166587, -0.369912,
		29.424173, 36.380390, 50.490398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905855, 35.611481, 50.416084>,  <30.063980, 36.263779, 50.749336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905855, 35.611481, 50.416084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658169, 35.881802, 50.256149>,  <29.509558, 36.043995, 50.160191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658169, 35.881802, 50.256149>,  <29.905855, 35.611481, 50.416084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658169, 35.881802, 50.256149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172098, -0.380019, -0.908828,
		-0.766129, -0.631572, 0.119011,
		-0.619216, 0.675798, -0.399836,
		29.472404, 36.084541, 50.136200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469244, 35.230110, 49.939590>,  <29.905855, 35.611481, 50.416084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469244, 35.230110, 49.939590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459917, 35.617443, 49.840157>,  <29.454321, 35.849842, 49.780495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459917, 35.617443, 49.840157>,  <29.469244, 35.230110, 49.939590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459917, 35.617443, 49.840157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026381, -0.249165, -0.968102,
		-0.999380, -0.016016, 0.031355,
		-0.023317, 0.968329, -0.248588,
		29.452921, 35.907940, 49.765579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912737, 35.316677, 49.486549>,  <29.469244, 35.230110, 49.939590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912737, 35.316677, 49.486549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170578, 35.615139, 49.419918>,  <29.325283, 35.794216, 49.379940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170578, 35.615139, 49.419918>,  <28.912737, 35.316677, 49.486549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170578, 35.615139, 49.419918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113098, -0.308550, -0.944460,
		-0.756108, 0.589961, -0.283280,
		0.644601, 0.746152, -0.166574,
		29.363958, 35.838985, 49.369946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622387, 35.716064, 48.900753>,  <28.912737, 35.316677, 49.486549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622387, 35.716064, 48.900753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015802, 35.766792, 48.952244>,  <29.251852, 35.797230, 48.983139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015802, 35.766792, 48.952244>,  <28.622387, 35.716064, 48.900753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015802, 35.766792, 48.952244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174733, -0.485778, -0.856439,
		-0.046078, 0.864833, -0.499940,
		0.983537, 0.126819, 0.128731,
		29.310863, 35.804836, 48.990864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866770, 35.630833, 48.239376>,  <28.622387, 35.716064, 48.900753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866770, 35.630833, 48.239376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.195375, 35.608932, 48.466396>,  <29.392538, 35.595795, 48.602608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.195375, 35.608932, 48.466396>,  <28.866770, 35.630833, 48.239376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195375, 35.608932, 48.466396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454837, -0.537349, -0.710196,
		0.343856, 0.841581, -0.416539,
		0.821515, -0.054748, 0.567553,
		29.441830, 35.592506, 48.636662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344833, 35.570004, 47.749905>,  <28.866770, 35.630833, 48.239376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344833, 35.570004, 47.749905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.526793, 35.463291, 48.089764>,  <29.635967, 35.399265, 48.293678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.526793, 35.463291, 48.089764>,  <29.344833, 35.570004, 47.749905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526793, 35.463291, 48.089764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555694, -0.660510, -0.504907,
		0.695897, 0.701824, -0.152218,
		0.454897, -0.266776, 0.849646,
		29.663261, 35.383259, 48.344658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018127, 35.364189, 47.551159>,  <29.344833, 35.570004, 47.749905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018127, 35.364189, 47.551159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996037, 35.186161, 47.908676>,  <29.982782, 35.079346, 48.123188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996037, 35.186161, 47.908676>,  <30.018127, 35.364189, 47.551159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996037, 35.186161, 47.908676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629326, -0.710482, -0.314903,
		0.775177, 0.545095, 0.319331,
		-0.055227, -0.445069, 0.893792,
		29.979469, 35.052639, 48.176815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602943, 35.087120, 47.662010>,  <30.018127, 35.364189, 47.551159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602943, 35.087120, 47.662010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.414186, 34.875118, 47.943836>,  <30.300932, 34.747917, 48.112930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.414186, 34.875118, 47.943836>,  <30.602943, 35.087120, 47.662010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414186, 34.875118, 47.943836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566984, -0.794402, -0.217840,
		0.675163, 0.296679, 0.675378,
		-0.471893, -0.530007, 0.704563,
		30.272619, 34.716118, 48.155205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124947, 34.746704, 48.110546>,  <30.602943, 35.087120, 47.662010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124947, 34.746704, 48.110546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785551, 34.535046, 48.113945>,  <30.581915, 34.408051, 48.115982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785551, 34.535046, 48.113945>,  <31.124947, 34.746704, 48.110546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785551, 34.535046, 48.113945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522991, -0.840854, -0.139448,
		0.080930, -0.113879, 0.990193,
		-0.848487, -0.529147, 0.008493,
		30.531004, 34.376301, 48.116493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251505, 34.262989, 48.560814>,  <31.124947, 34.746704, 48.110546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251505, 34.262989, 48.560814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954781, 34.138157, 48.323387>,  <30.776747, 34.063259, 48.180931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954781, 34.138157, 48.323387>,  <31.251505, 34.262989, 48.560814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954781, 34.138157, 48.323387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468193, -0.874706, -0.125235,
		-0.480115, -0.370806, 0.794979,
		-0.741812, -0.312076, -0.593569,
		30.732237, 34.044533, 48.145317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297947, 33.587154, 48.574757>,  <31.251505, 34.262989, 48.560814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297947, 33.587154, 48.574757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054028, 33.627892, 48.260361>,  <30.907677, 33.652336, 48.071724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054028, 33.627892, 48.260361>,  <31.297947, 33.587154, 48.574757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054028, 33.627892, 48.260361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409252, -0.808803, -0.422316,
		-0.678718, -0.579194, 0.451527,
		-0.609799, 0.101845, -0.785985,
		30.871088, 33.658443, 48.024567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051662, 32.942963, 48.431728>,  <31.297947, 33.587154, 48.574757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051662, 32.942963, 48.431728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013985, 33.144958, 48.088539>,  <30.991377, 33.266155, 47.882626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013985, 33.144958, 48.088539>,  <31.051662, 32.942963, 48.431728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013985, 33.144958, 48.088539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670941, -0.604489, -0.429454,
		-0.735503, -0.616101, -0.281878,
		-0.094195, 0.504989, -0.857971,
		30.985725, 33.296455, 47.831146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979099, 32.421280, 47.961391>,  <31.051662, 32.942963, 48.431728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979099, 32.421280, 47.961391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108730, 32.748871, 47.771973>,  <31.186508, 32.945427, 47.658321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108730, 32.748871, 47.771973>,  <30.979099, 32.421280, 47.961391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108730, 32.748871, 47.771973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727216, -0.535825, -0.429008,
		-0.605087, -0.205340, -0.769223,
		0.324076, 0.818979, -0.473548,
		31.205954, 32.994564, 47.629910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270121, 32.143078, 47.340111>,  <30.979099, 32.421280, 47.961391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270121, 32.143078, 47.340111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413479, 32.516270, 47.326824>,  <31.499493, 32.740185, 47.318851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413479, 32.516270, 47.326824>,  <31.270121, 32.143078, 47.340111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413479, 32.516270, 47.326824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896393, -0.353844, -0.266972,
		-0.260831, 0.065910, -0.963132,
		0.358395, 0.932979, -0.033212,
		31.520998, 32.796162, 47.316860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743370, 32.205238, 46.696110>,  <31.270121, 32.143078, 47.340111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743370, 32.205238, 46.696110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859951, 32.504246, 46.934864>,  <31.929899, 32.683647, 47.078117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859951, 32.504246, 46.934864>,  <31.743370, 32.205238, 46.696110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859951, 32.504246, 46.934864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951337, -0.161232, -0.262607,
		-0.100065, 0.644381, -0.758129,
		0.291454, 0.747514, 0.596890,
		31.947388, 32.728500, 47.113930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110058, 32.774269, 46.346321>,  <31.743370, 32.205238, 46.696110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110058, 32.774269, 46.346321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225952, 32.798038, 46.728424>,  <32.295486, 32.812302, 46.957687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225952, 32.798038, 46.728424>,  <32.110058, 32.774269, 46.346321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225952, 32.798038, 46.728424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954600, -0.090144, -0.283923,
		0.069239, 0.994154, -0.082845,
		0.289731, 0.059426, 0.955261,
		32.312870, 32.815865, 47.015003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732456, 33.129616, 46.303043>,  <32.110058, 32.774269, 46.346321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732456, 33.129616, 46.303043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754929, 32.960857, 46.665005>,  <32.768410, 32.859604, 46.882183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754929, 32.960857, 46.665005>,  <32.732456, 33.129616, 46.303043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754929, 32.960857, 46.665005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974726, -0.173107, -0.141219,
		0.216225, 0.889967, 0.401505,
		0.056177, -0.421892, 0.904904,
		32.771782, 32.834290, 46.936478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323395, 33.417393, 46.615498>,  <32.732456, 33.129616, 46.303043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323395, 33.417393, 46.615498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229027, 33.055351, 46.756992>,  <33.172405, 32.838127, 46.841888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.229027, 33.055351, 46.756992>,  <33.323395, 33.417393, 46.615498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229027, 33.055351, 46.756992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967722, -0.252017, 0.000586,
		0.088617, 0.342458, 0.935345,
		-0.235924, -0.905102, 0.353737,
		33.158249, 32.783821, 46.863113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605492, 33.246845, 47.321419>,  <33.323395, 33.417393, 46.615498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605492, 33.246845, 47.321419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586060, 32.942890, 47.062122>,  <33.574398, 32.760517, 46.906544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586060, 32.942890, 47.062122>,  <33.605492, 33.246845, 47.321419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586060, 32.942890, 47.062122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998496, -0.020442, -0.050874,
		0.025407, -0.649733, 0.759738,
		-0.048585, -0.759888, -0.648236,
		33.571484, 32.714924, 46.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237942, 32.763535, 47.515335>,  <33.605492, 33.246845, 47.321419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237942, 32.763535, 47.515335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105717, 32.690620, 47.144932>,  <34.026382, 32.646873, 46.922688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105717, 32.690620, 47.144932>,  <34.237942, 32.763535, 47.515335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105717, 32.690620, 47.144932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943726, -0.053057, -0.326445,
		0.010375, -0.981813, 0.189565,
		-0.330566, -0.182284, -0.926012,
		34.006546, 32.635937, 46.867126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573627, 32.200974, 47.378845>,  <34.237942, 32.763535, 47.515335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573627, 32.200974, 47.378845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479977, 32.394138, 47.041328>,  <34.423786, 32.510036, 46.838818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479977, 32.394138, 47.041328>,  <34.573627, 32.200974, 47.378845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479977, 32.394138, 47.041328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951495, -0.064373, -0.300854,
		-0.199603, -0.873300, -0.444417,
		-0.234128, 0.482912, -0.843789,
		34.409737, 32.539013, 46.788193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785046, 31.844305, 46.598915>,  <34.573627, 32.200974, 47.378845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785046, 31.844305, 46.598915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.769787, 32.243153, 46.625145>,  <34.760632, 32.482460, 46.640884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.769787, 32.243153, 46.625145>,  <34.785046, 31.844305, 46.598915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769787, 32.243153, 46.625145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999135, 0.036976, 0.019005,
		0.016526, 0.066244, -0.997667,
		-0.038148, 0.997118, 0.065575,
		34.758343, 32.542290, 46.644817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144100, 32.171623, 45.989540>,  <34.785046, 31.844305, 46.598915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144100, 32.171623, 45.989540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143978, 32.390903, 46.324078>,  <35.143906, 32.522472, 46.524799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143978, 32.390903, 46.324078>,  <35.144100, 32.171623, 45.989540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143978, 32.390903, 46.324078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996689, 0.068168, -0.044319,
		-0.081307, 0.833565, -0.546405,
		-0.000305, 0.548199, 0.836348,
		35.143887, 32.555363, 46.574982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636845, 32.677013, 45.871704>,  <35.144100, 32.171623, 45.989540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636845, 32.677013, 45.871704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598057, 32.640469, 46.268139>,  <35.574783, 32.618542, 46.506001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598057, 32.640469, 46.268139>,  <35.636845, 32.677013, 45.871704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598057, 32.640469, 46.268139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968881, 0.219192, 0.114999,
		-0.227745, 0.971394, 0.067269,
		-0.096965, -0.091366, 0.991085,
		35.568966, 32.613060, 46.565464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877274, 33.272781, 46.196239>,  <35.636845, 32.677013, 45.871704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877274, 33.272781, 46.196239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896454, 33.005371, 46.493099>,  <35.907963, 32.844925, 46.671215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896454, 33.005371, 46.493099>,  <35.877274, 33.272781, 46.196239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896454, 33.005371, 46.493099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965234, 0.222148, 0.137742,
		-0.256950, 0.709739, 0.655933,
		0.047953, -0.668522, 0.742145,
		35.910839, 32.804813, 46.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308167, 33.557003, 46.774590>,  <35.877274, 33.272781, 46.196239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308167, 33.557003, 46.774590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300117, 33.171844, 46.882236>,  <36.295288, 32.940750, 46.946827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300117, 33.171844, 46.882236>,  <36.308167, 33.557003, 46.774590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300117, 33.171844, 46.882236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855704, 0.122626, 0.502726,
		-0.517074, 0.240403, 0.821487,
		-0.020122, -0.962896, 0.269121,
		36.294083, 32.882977, 46.962975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371983, 33.566319, 47.466114>,  <36.308167, 33.557003, 46.774590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371983, 33.566319, 47.466114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509102, 33.211269, 47.343075>,  <36.591373, 32.998241, 47.269253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509102, 33.211269, 47.343075>,  <36.371983, 33.566319, 47.466114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509102, 33.211269, 47.343075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798662, 0.102974, 0.592904,
		-0.494601, -0.448912, 0.744209,
		0.342797, -0.887623, -0.307598,
		36.611942, 32.944984, 47.250797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603275, 33.266792, 48.090912>,  <36.371983, 33.566319, 47.466114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603275, 33.266792, 48.090912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794998, 33.062939, 47.805103>,  <36.910030, 32.940628, 47.633617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794998, 33.062939, 47.805103>,  <36.603275, 33.266792, 48.090912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794998, 33.062939, 47.805103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827594, -0.008564, 0.561262,
		-0.292155, -0.860351, 0.417662,
		0.479305, -0.509630, -0.714523,
		36.938789, 32.910049, 47.590748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939186, 32.793217, 48.480206>,  <36.603275, 33.266792, 48.090912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939186, 32.793217, 48.480206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122700, 32.782345, 48.124954>,  <37.232807, 32.775822, 47.911804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122700, 32.782345, 48.124954>,  <36.939186, 32.793217, 48.480206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122700, 32.782345, 48.124954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887240, -0.040203, 0.459554,
		-0.048200, -0.998821, 0.005678,
		0.458784, -0.027188, -0.888132,
		37.260334, 32.774193, 47.858513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466743, 32.372120, 48.618004>,  <36.939186, 32.793217, 48.480206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466743, 32.372120, 48.618004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580757, 32.584869, 48.299038>,  <37.649166, 32.712521, 48.107658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580757, 32.584869, 48.299038>,  <37.466743, 32.372120, 48.618004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580757, 32.584869, 48.299038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909594, 0.112293, 0.400036,
		0.302313, -0.839345, -0.451782,
		0.285036, 0.531874, -0.797411,
		37.666267, 32.744431, 48.059814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140705, 32.069202, 48.528973>,  <37.466743, 32.372120, 48.618004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140705, 32.069202, 48.528973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125614, 32.429901, 48.356724>,  <38.116562, 32.646320, 48.253372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.125614, 32.429901, 48.356724>,  <38.140705, 32.069202, 48.528973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125614, 32.429901, 48.356724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852774, 0.253689, 0.456528,
		0.520916, -0.350003, -0.778553,
		-0.037724, 0.901743, -0.430624,
		38.114296, 32.700424, 48.227535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818443, 32.174915, 48.337605>,  <38.140705, 32.069202, 48.528973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818443, 32.174915, 48.337605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656372, 32.540115, 48.356621>,  <38.559128, 32.759235, 48.368031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656372, 32.540115, 48.356621>,  <38.818443, 32.174915, 48.337605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656372, 32.540115, 48.356621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883567, 0.377703, 0.276858,
		0.234815, 0.154183, -0.959734,
		-0.405181, 0.913000, 0.047541,
		38.534817, 32.814014, 48.370884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316326, 32.634720, 48.035202>,  <38.818443, 32.174915, 48.337605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316326, 32.634720, 48.035202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093845, 32.885815, 48.253036>,  <38.960358, 33.036472, 48.383739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093845, 32.885815, 48.253036>,  <39.316326, 32.634720, 48.035202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093845, 32.885815, 48.253036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798077, 0.586214, 0.139378,
		-0.231753, 0.512147, -0.827040,
		-0.556205, 0.627741, 0.544590,
		38.926983, 33.074139, 48.416412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394989, 33.295834, 47.736137>,  <39.316326, 32.634720, 48.035202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394989, 33.295834, 47.736137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276070, 33.367630, 48.111240>,  <39.204716, 33.410709, 48.336304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276070, 33.367630, 48.111240>,  <39.394989, 33.295834, 47.736137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276070, 33.367630, 48.111240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804644, 0.575810, 0.144884,
		-0.513966, 0.797637, -0.315618,
		-0.297301, 0.179494, 0.937760,
		39.186878, 33.421478, 48.392567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155071, 33.437176, 47.678558>,  <39.394989, 33.295834, 47.736137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155071, 33.437176, 47.678558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331188, 33.104427, 47.813690>,  <40.436859, 32.904778, 47.894768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.331188, 33.104427, 47.813690>,  <40.155071, 33.437176, 47.678558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331188, 33.104427, 47.813690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743972, -0.548666, -0.381406,
		0.502637, -0.083404, -0.860465,
		0.440297, -0.831871, 0.337830,
		40.463276, 32.854866, 47.915039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365944, 32.985851, 47.077431>,  <40.155071, 33.437176, 47.678558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365944, 32.985851, 47.077431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257771, 32.812794, 47.421452>,  <40.192867, 32.708961, 47.627865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257771, 32.812794, 47.421452>,  <40.365944, 32.985851, 47.077431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257771, 32.812794, 47.421452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766755, -0.443435, -0.464168,
		0.582194, -0.784976, -0.211808,
		-0.270438, -0.432641, 0.860050,
		40.176640, 32.683002, 47.679466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405628, 32.810371, 46.275135>,  <40.365944, 32.985851, 47.077431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405628, 32.810371, 46.275135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.233646, 32.712711, 45.927452>,  <40.130459, 32.654114, 45.718842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.233646, 32.712711, 45.927452>,  <40.405628, 32.810371, 46.275135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233646, 32.712711, 45.927452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747502, 0.443665, -0.494371,
		0.506339, -0.862295, -0.008255,
		-0.429956, -0.244149, -0.869212,
		40.104660, 32.639465, 45.666687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832546, 32.489960, 45.807945>,  <40.405628, 32.810371, 46.275135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832546, 32.489960, 45.807945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.542053, 32.620602, 45.565983>,  <40.367756, 32.698986, 45.420807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.542053, 32.620602, 45.565983>,  <40.832546, 32.489960, 45.807945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542053, 32.620602, 45.565983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681365, 0.225224, -0.696431,
		-0.091220, -0.917934, -0.386104,
		-0.726237, 0.326606, -0.604903,
		40.324181, 32.718582, 45.384510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863209, 32.180340, 45.181854>,  <40.832546, 32.489960, 45.807945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863209, 32.180340, 45.181854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.673779, 32.521503, 45.093975>,  <40.560120, 32.726204, 45.041248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.673779, 32.521503, 45.093975>,  <40.863209, 32.180340, 45.181854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673779, 32.521503, 45.093975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527975, 0.075261, -0.845918,
		-0.704960, -0.516601, -0.485958,
		-0.473576, 0.852912, -0.219696,
		40.531704, 32.777378, 45.028065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579193, 32.130329, 44.457233>,  <40.863209, 32.180340, 45.181854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579193, 32.130329, 44.457233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.622620, 32.518394, 44.543953>,  <40.648678, 32.751232, 44.595985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.622620, 32.518394, 44.543953>,  <40.579193, 32.130329, 44.457233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622620, 32.518394, 44.543953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507818, 0.133360, -0.851079,
		-0.854595, 0.202495, -0.478186,
		0.108569, 0.970160, 0.216799,
		40.655190, 32.809444, 44.608994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575558, 32.517887, 43.758709>,  <40.579193, 32.130329, 44.457233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575558, 32.517887, 43.758709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.662804, 32.809441, 44.018295>,  <40.715153, 32.984371, 44.174046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.662804, 32.809441, 44.018295>,  <40.575558, 32.517887, 43.758709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662804, 32.809441, 44.018295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390222, 0.544370, -0.742555,
		-0.894513, 0.415204, -0.165690,
		0.218115, 0.728881, 0.648967,
		40.728237, 33.028107, 44.212986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195789, 33.118587, 43.600590>,  <40.575558, 32.517887, 43.758709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195789, 33.118587, 43.600590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.558178, 33.194824, 43.751797>,  <40.775612, 33.240566, 43.842522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.558178, 33.194824, 43.751797>,  <40.195789, 33.118587, 43.600590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558178, 33.194824, 43.751797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184930, 0.625063, -0.758351,
		-0.380818, 0.756949, 0.531042,
		0.905968, 0.190588, 0.378018,
		40.829967, 33.251999, 43.865204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141171, 33.840786, 43.587837>,  <40.195789, 33.118587, 43.600590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141171, 33.840786, 43.587837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524673, 33.740936, 43.533482>,  <40.754776, 33.681026, 43.500870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524673, 33.740936, 43.533482>,  <40.141171, 33.840786, 43.587837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524673, 33.740936, 43.533482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004735, 0.492069, -0.870544,
		0.284178, 0.833999, 0.472958,
		0.958760, -0.249629, -0.135886,
		40.812302, 33.666046, 43.492718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599697, 34.394833, 43.314144>,  <40.141171, 33.840786, 43.587837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599697, 34.394833, 43.314144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777390, 34.058960, 43.189182>,  <40.884003, 33.857437, 43.114204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777390, 34.058960, 43.189182>,  <40.599697, 34.394833, 43.314144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777390, 34.058960, 43.189182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130419, 0.405592, -0.904702,
		0.886371, 0.361149, 0.289686,
		0.444227, -0.839682, -0.312404,
		40.910656, 33.807056, 43.095463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363167, 34.542683, 43.093056>,  <40.599697, 34.394833, 43.314144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363167, 34.542683, 43.093056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191093, 34.245193, 42.888382>,  <41.087849, 34.066700, 42.765575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191093, 34.245193, 42.888382>,  <41.363167, 34.542683, 43.093056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191093, 34.245193, 42.888382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248777, 0.447202, -0.859139,
		0.867788, -0.496881, -0.007357,
		-0.430180, -0.743720, -0.511689,
		41.062038, 34.022076, 42.734875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909466, 34.276764, 42.607601>,  <41.363167, 34.542683, 43.093056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909466, 34.276764, 42.607601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.539474, 34.192795, 42.480892>,  <41.317478, 34.142414, 42.404869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.539474, 34.192795, 42.480892>,  <41.909466, 34.276764, 42.607601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539474, 34.192795, 42.480892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229214, 0.356666, -0.905677,
		0.303103, -0.910342, -0.281792,
		-0.924981, -0.209922, -0.316769,
		41.261982, 34.129818, 42.385860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888348, 33.724716, 41.989681>,  <41.909466, 34.276764, 42.607601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888348, 33.724716, 41.989681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.573750, 33.970779, 42.011600>,  <41.384991, 34.118420, 42.024754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.573750, 33.970779, 42.011600>,  <41.888348, 33.724716, 41.989681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573750, 33.970779, 42.011600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074514, 0.182603, -0.980359,
		-0.613087, -0.766963, -0.189454,
		-0.786494, 0.615162, 0.054802,
		41.337803, 34.155327, 42.028042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447384, 33.530502, 41.401630>,  <41.888348, 33.724716, 41.989681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447384, 33.530502, 41.401630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.328087, 33.896435, 41.510540>,  <41.256508, 34.115993, 41.575886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.328087, 33.896435, 41.510540>,  <41.447384, 33.530502, 41.401630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328087, 33.896435, 41.510540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088212, 0.310456, -0.946486,
		-0.950405, -0.258265, -0.173290,
		-0.298243, 0.914832, 0.272277,
		41.238613, 34.170883, 41.592224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944405, 33.839935, 40.949631>,  <41.447384, 33.530502, 41.401630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944405, 33.839935, 40.949631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118370, 34.161213, 41.112469>,  <41.222748, 34.353981, 41.210171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118370, 34.161213, 41.112469>,  <40.944405, 33.839935, 40.949631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118370, 34.161213, 41.112469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332523, 0.276884, -0.901534,
		-0.836826, 0.527459, -0.146661,
		0.434914, 0.803195, 0.407096,
		41.248844, 34.402172, 41.234596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670864, 34.451855, 40.675709>,  <40.944405, 33.839935, 40.949631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670864, 34.451855, 40.675709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055981, 34.495869, 40.774437>,  <41.287052, 34.522278, 40.833675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055981, 34.495869, 40.774437>,  <40.670864, 34.451855, 40.675709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055981, 34.495869, 40.774437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216248, 0.234059, -0.947868,
		-0.162073, 0.965975, 0.201555,
		0.962792, 0.110038, 0.246825,
		41.344818, 34.528881, 40.848484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848347, 35.115810, 40.291603>,  <40.670864, 34.451855, 40.675709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848347, 35.115810, 40.291603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140347, 34.852741, 40.365982>,  <41.315544, 34.694901, 40.410610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140347, 34.852741, 40.365982>,  <40.848347, 35.115810, 40.291603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140347, 34.852741, 40.365982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313628, 0.080622, -0.946117,
		0.607243, 0.748978, 0.265118,
		0.729996, -0.657671, 0.185943,
		41.359344, 34.655441, 40.421764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407089, 35.465057, 40.058331>,  <40.848347, 35.115810, 40.291603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407089, 35.465057, 40.058331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.494377, 35.075432, 40.034409>,  <41.546749, 34.841656, 40.020058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.494377, 35.075432, 40.034409>,  <41.407089, 35.465057, 40.058331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494377, 35.075432, 40.034409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242215, 0.113420, -0.963570,
		0.945364, 0.195783, 0.260684,
		0.218218, -0.974066, -0.059801,
		41.559841, 34.783211, 40.016468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117554, 35.365200, 39.902546>,  <41.407089, 35.465057, 40.058331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117554, 35.365200, 39.902546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.874386, 35.092178, 39.740284>,  <41.728485, 34.928368, 39.642925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.874386, 35.092178, 39.740284>,  <42.117554, 35.365200, 39.902546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874386, 35.092178, 39.740284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222164, 0.344277, -0.912204,
		0.762285, -0.644669, -0.057654,
		-0.607918, -0.682551, -0.405659,
		41.692009, 34.887413, 39.618587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269810, 35.505272, 39.169922>,  <42.117554, 35.365200, 39.902546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269810, 35.505272, 39.169922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983856, 35.225750, 39.179787>,  <41.812283, 35.058037, 39.185707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983856, 35.225750, 39.179787>,  <42.269810, 35.505272, 39.169922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983856, 35.225750, 39.179787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110460, 0.078032, -0.990813,
		0.690461, -0.711043, -0.132974,
		-0.714887, -0.698805, 0.024664,
		41.769390, 35.016109, 39.187187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848637, 35.141766, 39.378536>,  <42.269810, 35.505272, 39.169922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848637, 35.141766, 39.378536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.879932, 35.344559, 39.035175>,  <42.898708, 35.466236, 38.829159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.879932, 35.344559, 39.035175>,  <42.848637, 35.141766, 39.378536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879932, 35.344559, 39.035175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262876, -0.841056, -0.472780,
		-0.961652, -0.188663, -0.199075,
		0.078237, 0.506982, -0.858398,
		42.903404, 35.496655, 38.777657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413528, 34.529182, 39.498543>,  <42.848637, 35.141766, 39.378536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413528, 34.529182, 39.498543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.272530, 34.154919, 39.505455>,  <42.187931, 33.930363, 39.509602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.272530, 34.154919, 39.505455>,  <42.413528, 34.529182, 39.498543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272530, 34.154919, 39.505455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211724, -0.097725, -0.972431,
		0.911549, -0.339116, 0.232548,
		-0.352492, -0.935655, 0.017282,
		42.166782, 33.874222, 39.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206978, 34.401524, 39.698715>,  <42.413528, 34.529182, 39.498543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206978, 34.401524, 39.698715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.230629, 34.281368, 40.079510>,  <43.244820, 34.209274, 40.307987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.230629, 34.281368, 40.079510>,  <43.206978, 34.401524, 39.698715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230629, 34.281368, 40.079510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561184, -0.778690, -0.280561,
		0.825577, 0.550826, 0.122530,
		0.059127, -0.300387, 0.951983,
		43.248367, 34.191254, 40.365105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877960, 34.150360, 39.791664>,  <43.206978, 34.401524, 39.698715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877960, 34.150360, 39.791664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643093, 33.941162, 40.038795>,  <43.502171, 33.815643, 40.187073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.643093, 33.941162, 40.038795>,  <43.877960, 34.150360, 39.791664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643093, 33.941162, 40.038795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397520, -0.851180, -0.342739,
		0.705131, 0.044352, 0.707689,
		-0.587170, -0.522996, 0.617824,
		43.466942, 33.784264, 40.224144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354530, 33.613861, 40.023075>,  <43.877960, 34.150360, 39.791664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354530, 33.613861, 40.023075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.963417, 33.530758, 40.034184>,  <43.728748, 33.480896, 40.040848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.963417, 33.530758, 40.034184>,  <44.354530, 33.613861, 40.023075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963417, 33.530758, 40.034184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190090, -0.934748, -0.300186,
		0.088328, -0.288238, 0.953476,
		-0.977785, -0.207761, 0.027773,
		43.670082, 33.468430, 40.042515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162273, 33.042244, 40.515717>,  <44.354530, 33.613861, 40.023075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162273, 33.042244, 40.515717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.909935, 33.077965, 40.207413>,  <43.758533, 33.099396, 40.022430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.909935, 33.077965, 40.207413>,  <44.162273, 33.042244, 40.515717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909935, 33.077965, 40.207413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256618, -0.913441, -0.315868,
		-0.732246, -0.397052, 0.553321,
		-0.630843, 0.089301, -0.770755,
		43.720684, 33.104755, 39.976185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633869, 32.464622, 40.470097>,  <44.162273, 33.042244, 40.515717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633869, 32.464622, 40.470097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692299, 32.634441, 40.112679>,  <43.727356, 32.736332, 39.898228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692299, 32.634441, 40.112679>,  <43.633869, 32.464622, 40.470097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692299, 32.634441, 40.112679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089297, -0.905205, -0.415487,
		-0.985236, -0.019100, -0.170134,
		0.146070, 0.424545, -0.893546,
		43.736118, 32.761806, 39.844616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130554, 32.184757, 39.916790>,  <43.633869, 32.464622, 40.470097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130554, 32.184757, 39.916790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.460773, 32.315346, 39.732662>,  <43.658905, 32.393700, 39.622185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.460773, 32.315346, 39.732662>,  <43.130554, 32.184757, 39.916790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460773, 32.315346, 39.732662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060046, -0.861866, -0.503569,
		-0.561130, 0.388079, -0.731114,
		0.825547, 0.326468, -0.460317,
		43.708439, 32.413284, 39.594566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106537, 32.204258, 39.168640>,  <43.130554, 32.184757, 39.916790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106537, 32.204258, 39.168640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487087, 32.147991, 39.278255>,  <43.715416, 32.114231, 39.344025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487087, 32.147991, 39.278255>,  <43.106537, 32.204258, 39.168640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487087, 32.147991, 39.278255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017863, -0.913335, -0.406818,
		0.307514, 0.382142, -0.871437,
		0.951376, -0.140668, 0.274037,
		43.772499, 32.105789, 39.360466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653347, 32.137840, 38.567921>,  <43.106537, 32.204258, 39.168640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653347, 32.137840, 38.567921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.728638, 31.910906, 38.888596>,  <43.773811, 31.774744, 39.081001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.728638, 31.910906, 38.888596>,  <43.653347, 32.137840, 38.567921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728638, 31.910906, 38.888596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090367, -0.822815, -0.561079,
		0.977959, 0.033164, -0.206144,
		0.188226, -0.567341, 0.801683,
		43.785107, 31.740704, 39.129101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219376, 32.378059, 38.251648>,  <43.653347, 32.137840, 38.567921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219376, 32.378059, 38.251648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.351925, 32.514133, 37.899632>,  <44.431454, 32.595776, 37.688423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.351925, 32.514133, 37.899632>,  <44.219376, 32.378059, 38.251648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351925, 32.514133, 37.899632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364284, 0.906541, 0.213260,
		0.870339, 0.249917, 0.424324,
		0.331370, 0.340183, -0.880039,
		44.451336, 32.616188, 37.635620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858971, 32.298283, 37.975140>,  <44.219376, 32.378059, 38.251648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858971, 32.298283, 37.975140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.823872, 32.342960, 37.579197>,  <44.802814, 32.369766, 37.341629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.823872, 32.342960, 37.579197>,  <44.858971, 32.298283, 37.975140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823872, 32.342960, 37.579197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847811, 0.530076, -0.015337,
		0.522988, -0.840561, -0.141210,
		-0.087744, 0.111699, -0.989861,
		44.797550, 32.376469, 37.282238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573132, 32.359943, 37.671421>,  <44.858971, 32.298283, 37.975140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573132, 32.359943, 37.671421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.367474, 32.472313, 37.347263>,  <45.244080, 32.539734, 37.152767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.367474, 32.472313, 37.347263>,  <45.573132, 32.359943, 37.671421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367474, 32.472313, 37.347263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831876, 0.393448, -0.391383,
		0.208900, -0.875375, -0.435981,
		-0.514143, 0.280922, -0.810395,
		45.213230, 32.556591, 37.104145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867329, 32.017673, 37.158943>,  <45.573132, 32.359943, 37.671421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867329, 32.017673, 37.158943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.706257, 32.354187, 37.014675>,  <45.609612, 32.556095, 36.928112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.706257, 32.354187, 37.014675>,  <45.867329, 32.017673, 37.158943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706257, 32.354187, 37.014675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903713, 0.302801, -0.302679,
		-0.145427, -0.447829, -0.882213,
		-0.402684, 0.841285, -0.360674,
		45.585453, 32.606571, 36.906471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023109, 32.225925, 36.438953>,  <45.867329, 32.017673, 37.158943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023109, 32.225925, 36.438953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.982094, 32.549892, 36.669960>,  <45.957485, 32.744270, 36.808563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.982094, 32.549892, 36.669960>,  <46.023109, 32.225925, 36.438953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982094, 32.549892, 36.669960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781272, 0.424936, -0.457213,
		-0.615710, 0.404314, -0.676337,
		-0.102542, 0.809914, 0.577516,
		45.951332, 32.792866, 36.843216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973450, 32.828571, 36.020683>,  <46.023109, 32.225925, 36.438953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973450, 32.828571, 36.020683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.120575, 32.932590, 36.377804>,  <46.208851, 32.995003, 36.592075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.120575, 32.932590, 36.377804>,  <45.973450, 32.828571, 36.020683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120575, 32.932590, 36.377804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825587, 0.350503, -0.442214,
		-0.427925, 0.899736, -0.085770,
		0.367813, 0.260045, 0.892799,
		46.230919, 33.010605, 36.645645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169014, 33.597317, 36.025570>,  <45.973450, 32.828571, 36.020683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169014, 33.597317, 36.025570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.368698, 33.346004, 36.264252>,  <46.488506, 33.195217, 36.407459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.368698, 33.346004, 36.264252>,  <46.169014, 33.597317, 36.025570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368698, 33.346004, 36.264252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865241, 0.324598, -0.382091,
		0.046374, 0.707033, 0.705659,
		0.499207, -0.628284, 0.596701,
		46.518459, 33.157520, 36.443260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442444, 34.389236, 36.215584>,  <46.169014, 33.597317, 36.025570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442444, 34.389236, 36.215584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.643909, 34.732288, 36.174019>,  <46.764790, 34.938118, 36.149078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.643909, 34.732288, 36.174019>,  <46.442444, 34.389236, 36.215584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643909, 34.732288, 36.174019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408697, -0.342516, -0.845961,
		-0.761111, 0.383611, -0.523023,
		0.503663, 0.857628, -0.103912,
		46.795010, 34.989578, 36.142845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299774, 34.696350, 35.643875>,  <46.442444, 34.389236, 36.215584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299774, 34.696350, 35.643875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.679729, 34.767883, 35.746426>,  <46.907703, 34.810802, 35.807957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.679729, 34.767883, 35.746426>,  <46.299774, 34.696350, 35.643875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679729, 34.767883, 35.746426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304146, -0.339491, -0.890079,
		-0.072139, 0.923452, -0.376871,
		0.949890, 0.178833, 0.256374,
		46.964695, 34.821533, 35.823338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595798, 35.245789, 35.177067>,  <46.299774, 34.696350, 35.643875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595798, 35.245789, 35.177067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.853981, 34.977703, 35.323601>,  <47.008892, 34.816853, 35.411522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.853981, 34.977703, 35.323601>,  <46.595798, 35.245789, 35.177067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853981, 34.977703, 35.323601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343769, -0.173383, -0.922909,
		0.682063, 0.721630, 0.118488,
		0.645456, -0.670215, 0.366332,
		47.047619, 34.776638, 35.433502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219482, 35.363003, 34.982834>,  <46.595798, 35.245789, 35.177067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219482, 35.363003, 34.982834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.313236, 34.997864, 35.116566>,  <47.369488, 34.778782, 35.196804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.313236, 34.997864, 35.116566>,  <47.219482, 35.363003, 34.982834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.313236, 34.997864, 35.116566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658197, -0.104082, -0.745616,
		0.715431, 0.394813, 0.576438,
		0.234382, -0.912847, 0.334329,
		47.383553, 34.724010, 35.216866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946194, 35.328083, 35.071728>,  <47.219482, 35.363003, 34.982834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946194, 35.328083, 35.071728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.824257, 34.954632, 34.996464>,  <47.751095, 34.730560, 34.951305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.824257, 34.954632, 34.996464>,  <47.946194, 35.328083, 35.071728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.824257, 34.954632, 34.996464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688180, -0.079358, -0.721187,
		0.658390, -0.349337, 0.666698,
		-0.304845, -0.933631, -0.188158,
		47.732803, 34.674541, 34.940018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.237286, 31.579844, 56.138863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.486284, 31.881344, 56.223110>,  <31.635683, 32.062244, 56.273659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.486284, 31.881344, 56.223110>,  <31.237286, 31.579844, 56.138863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486284, 31.881344, 56.223110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461168, -0.135840, -0.876853,
		-0.632316, 0.642970, -0.432165,
		0.622495, 0.753749, 0.210623,
		31.673033, 32.107468, 56.286297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517855, 31.800745, 55.487682>,  <31.237286, 31.579844, 56.138863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517855, 31.800745, 55.487682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.761673, 32.015774, 55.720737>,  <31.907965, 32.144791, 55.860573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.761673, 32.015774, 55.720737>,  <31.517855, 31.800745, 55.487682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761673, 32.015774, 55.720737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527694, 0.273338, -0.804255,
		-0.591603, 0.797686, -0.117061,
		0.609546, 0.537572, 0.582641,
		31.944536, 32.177044, 55.895531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564665, 32.476116, 55.269661>,  <31.517855, 31.800745, 55.487682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564665, 32.476116, 55.269661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.902908, 32.409527, 55.472534>,  <32.105854, 32.369572, 55.594257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.902908, 32.409527, 55.472534>,  <31.564665, 32.476116, 55.269661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902908, 32.409527, 55.472534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533688, 0.244071, -0.809695,
		0.011005, 0.955362, 0.295234,
		0.845610, -0.166474, 0.507179,
		32.156590, 32.359585, 55.624687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995819, 33.081036, 55.017979>,  <31.564665, 32.476116, 55.269661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995819, 33.081036, 55.017979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.240261, 32.801506, 55.166672>,  <32.386929, 32.633789, 55.255890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.240261, 32.801506, 55.166672>,  <31.995819, 33.081036, 55.017979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240261, 32.801506, 55.166672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487935, -0.037215, -0.872086,
		0.623272, 0.714322, 0.318240,
		0.611107, -0.698827, 0.371737,
		32.423592, 32.591858, 55.278194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733723, 33.262661, 54.857449>,  <31.995819, 33.081036, 55.017979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733723, 33.262661, 54.857449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.717415, 32.866779, 54.912338>,  <32.707630, 32.629250, 54.945274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.717415, 32.866779, 54.912338>,  <32.733723, 33.262661, 54.857449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717415, 32.866779, 54.912338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619791, -0.132772, -0.773454,
		0.783707, 0.053520, 0.618820,
		-0.040767, -0.989701, 0.137226,
		32.705185, 32.569870, 54.953506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505039, 33.034508, 54.953495>,  <32.733723, 33.262661, 54.857449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505039, 33.034508, 54.953495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.287331, 32.719601, 54.837582>,  <33.156704, 32.530655, 54.768032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.287331, 32.719601, 54.837582>,  <33.505039, 33.034508, 54.953495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287331, 32.719601, 54.837582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722249, -0.264021, -0.639257,
		0.426759, -0.557225, 0.712304,
		-0.544273, -0.787270, -0.289782,
		33.124050, 32.483421, 54.750648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895927, 32.530483, 54.896694>,  <33.505039, 33.034508, 54.953495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895927, 32.530483, 54.896694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599113, 32.392700, 54.666656>,  <33.421024, 32.310032, 54.528633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599113, 32.392700, 54.666656>,  <33.895927, 32.530483, 54.896694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599113, 32.392700, 54.666656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657462, -0.206449, -0.724654,
		0.130884, -0.915821, 0.379660,
		-0.742033, -0.344457, -0.575096,
		33.376503, 32.289364, 54.494129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172737, 32.002220, 54.644382>,  <33.895927, 32.530483, 54.896694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172737, 32.002220, 54.644382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.880539, 32.062428, 54.377934>,  <33.705219, 32.098553, 54.218063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.880539, 32.062428, 54.377934>,  <34.172737, 32.002220, 54.644382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880539, 32.062428, 54.377934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629747, -0.228855, -0.742323,
		-0.264179, -0.961753, 0.072389,
		-0.730498, 0.150520, -0.666120,
		33.661388, 32.107582, 54.178097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144909, 31.412043, 54.146435>,  <34.172737, 32.002220, 54.644382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144909, 31.412043, 54.146435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.969841, 31.716719, 53.955322>,  <33.864799, 31.899525, 53.840656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.969841, 31.716719, 53.955322>,  <34.144909, 31.412043, 54.146435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969841, 31.716719, 53.955322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502496, -0.233443, -0.832468,
		-0.745617, -0.604428, -0.280575,
		-0.437668, 0.761690, -0.477781,
		33.838539, 31.945225, 53.811989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067272, 31.136532, 53.443218>,  <34.144909, 31.412043, 54.146435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067272, 31.136532, 53.443218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.987465, 31.526695, 53.405762>,  <33.939583, 31.760794, 53.383289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.987465, 31.526695, 53.405762>,  <34.067272, 31.136532, 53.443218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987465, 31.526695, 53.405762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319428, -0.025600, -0.947265,
		-0.926369, -0.218905, -0.306466,
		-0.199516, 0.975410, -0.093640,
		33.927608, 31.819319, 53.377670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533237, 31.348787, 52.794754>,  <34.067272, 31.136532, 53.443218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533237, 31.348787, 52.794754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.780853, 31.649015, 52.887215>,  <33.929424, 31.829153, 52.942692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.780853, 31.649015, 52.887215>,  <33.533237, 31.348787, 52.794754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780853, 31.649015, 52.887215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202315, 0.131986, -0.970386,
		-0.758851, 0.647476, -0.070146,
		0.619043, 0.750570, 0.231152,
		33.966568, 31.874186, 52.956562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397621, 31.880697, 52.365524>,  <33.533237, 31.348787, 52.794754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397621, 31.880697, 52.365524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.778023, 31.944935, 52.471203>,  <34.006264, 31.983479, 52.534611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.778023, 31.944935, 52.471203>,  <33.397621, 31.880697, 52.365524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778023, 31.944935, 52.471203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235527, 0.177253, -0.955567,
		-0.200289, 0.970974, 0.130744,
		0.951005, 0.160596, 0.264192,
		34.063324, 31.993114, 52.550461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603828, 32.458004, 52.042660>,  <33.397621, 31.880697, 52.365524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603828, 32.458004, 52.042660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.952923, 32.287781, 52.138359>,  <34.162380, 32.185646, 52.195778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.952923, 32.287781, 52.138359>,  <33.603828, 32.458004, 52.042660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952923, 32.287781, 52.138359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364983, 0.243288, -0.898665,
		0.324224, 0.871616, 0.367646,
		0.872735, -0.425553, 0.239245,
		34.214745, 32.160114, 52.210133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104328, 32.909420, 51.743385>,  <33.603828, 32.458004, 52.042660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104328, 32.909420, 51.743385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.307514, 32.572617, 51.816048>,  <34.429424, 32.370537, 51.859646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.307514, 32.572617, 51.816048>,  <34.104328, 32.909420, 51.743385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307514, 32.572617, 51.816048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557090, 0.160287, -0.814836,
		0.656979, 0.515107, 0.550493,
		0.507965, -0.842005, 0.181656,
		34.459904, 32.320015, 51.870544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738060, 33.093220, 51.516022>,  <34.104328, 32.909420, 51.743385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738060, 33.093220, 51.516022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.748642, 32.696007, 51.561970>,  <34.754993, 32.457680, 51.589539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.748642, 32.696007, 51.561970>,  <34.738060, 33.093220, 51.516022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748642, 32.696007, 51.561970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665255, -0.068279, -0.743488,
		0.746147, 0.096088, 0.658810,
		0.026457, -0.993028, 0.114870,
		34.756580, 32.398098, 51.596432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371990, 32.825939, 51.493813>,  <34.738060, 33.093220, 51.516022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371990, 32.825939, 51.493813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.133297, 32.534985, 51.358273>,  <34.990082, 32.360413, 51.276947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.133297, 32.534985, 51.358273>,  <35.371990, 32.825939, 51.493813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133297, 32.534985, 51.358273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490999, 0.003023, -0.871155,
		0.634688, -0.686224, 0.355340,
		-0.596734, -0.727384, -0.338854,
		34.954277, 32.316769, 51.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755894, 32.596909, 50.968513>,  <35.371990, 32.825939, 51.493813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755894, 32.596909, 50.968513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.406593, 32.410332, 50.912144>,  <35.197014, 32.298386, 50.878323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.406593, 32.410332, 50.912144>,  <35.755894, 32.596909, 50.968513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406593, 32.410332, 50.912144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255274, -0.191585, -0.947697,
		0.415046, -0.863555, 0.286373,
		-0.873254, -0.466441, -0.140927,
		35.144619, 32.270401, 50.869865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961685, 31.983461, 50.947083>,  <35.755894, 32.596909, 50.968513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961685, 31.983461, 50.947083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614040, 31.991766, 50.749409>,  <35.405453, 31.996750, 50.630806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614040, 31.991766, 50.749409>,  <35.961685, 31.983461, 50.947083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614040, 31.991766, 50.749409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477449, -0.225765, -0.849160,
		-0.129198, -0.973960, 0.186302,
		-0.869109, 0.020760, -0.494185,
		35.353310, 31.997995, 50.601154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920509, 31.400120, 50.452927>,  <35.961685, 31.983461, 50.947083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920509, 31.400120, 50.452927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.665321, 31.676254, 50.316437>,  <35.512211, 31.841936, 50.234543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.665321, 31.676254, 50.316437>,  <35.920509, 31.400120, 50.452927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665321, 31.676254, 50.316437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312665, -0.172725, -0.934027,
		-0.703732, -0.702566, -0.105651,
		-0.637967, 0.690338, -0.341220,
		35.473930, 31.883356, 50.214069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679417, 31.085300, 49.826073>,  <35.920509, 31.400120, 50.452927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679417, 31.085300, 49.826073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589466, 31.471489, 49.773464>,  <35.535496, 31.703201, 49.741898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589466, 31.471489, 49.773464>,  <35.679417, 31.085300, 49.826073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589466, 31.471489, 49.773464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465630, -0.012092, -0.884897,
		-0.855931, -0.260236, -0.446832,
		-0.224879, 0.965469, -0.131524,
		35.522003, 31.761129, 49.734009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450428, 31.027662, 49.206650>,  <35.679417, 31.085300, 49.826073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450428, 31.027662, 49.206650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.562042, 31.406986, 49.267113>,  <35.629009, 31.634581, 49.303391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.562042, 31.406986, 49.267113>,  <35.450428, 31.027662, 49.206650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562042, 31.406986, 49.267113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350582, 0.045944, -0.935404,
		-0.893999, 0.314000, -0.319642,
		0.279031, 0.948311, 0.151156,
		35.645752, 31.691479, 49.312458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447693, 31.230000, 48.540890>,  <35.450428, 31.027662, 49.206650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447693, 31.230000, 48.540890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645153, 31.513971, 48.741810>,  <35.763630, 31.684355, 48.862362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645153, 31.513971, 48.741810>,  <35.447693, 31.230000, 48.540890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645153, 31.513971, 48.741810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456828, 0.279790, -0.844409,
		-0.740009, 0.646311, -0.186196,
		0.493655, 0.709929, 0.502300,
		35.793251, 31.726950, 48.892498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719128, 31.274439, 48.832302>,  <35.447693, 31.230000, 48.540890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719128, 31.274439, 48.832302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.453728, 31.243656, 48.534618>,  <34.294487, 31.225187, 48.356010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.453728, 31.243656, 48.534618>,  <34.719128, 31.274439, 48.832302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453728, 31.243656, 48.534618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740720, -0.072489, 0.667891,
		-0.105345, 0.994396, -0.008906,
		-0.663503, -0.076955, -0.744206,
		34.254677, 31.220570, 48.311356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082962, 31.769211, 48.910740>,  <34.719128, 31.274439, 48.832302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082962, 31.769211, 48.910740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.961826, 31.479317, 48.663177>,  <33.889145, 31.305380, 48.514641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.961826, 31.479317, 48.663177>,  <34.082962, 31.769211, 48.910740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961826, 31.479317, 48.663177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813866, -0.141240, 0.563624,
		-0.495892, 0.674398, -0.547063,
		-0.302840, -0.724733, -0.618910,
		33.870975, 31.261896, 48.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411446, 31.984604, 48.615814>,  <34.082962, 31.769211, 48.910740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411446, 31.984604, 48.615814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439098, 31.587891, 48.572762>,  <33.455688, 31.349863, 48.546928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439098, 31.587891, 48.572762>,  <33.411446, 31.984604, 48.615814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439098, 31.587891, 48.572762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851978, -0.114822, 0.510832,
		-0.518994, 0.056386, -0.852916,
		0.069130, -0.991785, -0.107631,
		33.459839, 31.290356, 48.540474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674740, 31.669153, 48.560863>,  <33.411446, 31.984604, 48.615814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674740, 31.669153, 48.560863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.887180, 31.342594, 48.651573>,  <33.014645, 31.146660, 48.705997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.887180, 31.342594, 48.651573>,  <32.674740, 31.669153, 48.560863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887180, 31.342594, 48.651573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693493, -0.265063, 0.669932,
		-0.486822, -0.513067, -0.706942,
		0.531104, -0.816397, 0.226770,
		33.046513, 31.097675, 48.719604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191387, 31.094208, 48.595909>,  <32.674740, 31.669153, 48.560863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191387, 31.094208, 48.595909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.510433, 31.005659, 48.820339>,  <32.701859, 30.952530, 48.954998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.510433, 31.005659, 48.820339>,  <32.191387, 31.094208, 48.595909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510433, 31.005659, 48.820339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599955, -0.387080, 0.700159,
		0.062187, -0.895078, -0.441553,
		0.797613, -0.221371, 0.561077,
		32.749718, 30.939247, 48.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954435, 30.530216, 48.956451>,  <32.191387, 31.094208, 48.595909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954435, 30.530216, 48.956451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.272675, 30.667231, 49.156330>,  <32.463619, 30.749439, 49.276257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.272675, 30.667231, 49.156330>,  <31.954435, 30.530216, 48.956451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272675, 30.667231, 49.156330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454333, -0.208271, 0.866143,
		0.400757, -0.916129, -0.010074,
		0.795597, 0.342536, 0.499694,
		32.511353, 30.769991, 49.306240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181561, 29.908758, 49.381794>,  <31.954435, 30.530216, 48.956451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181561, 29.908758, 49.381794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.312344, 30.245527, 49.553501>,  <32.390812, 30.447588, 49.656525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.312344, 30.245527, 49.553501>,  <32.181561, 29.908758, 49.381794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312344, 30.245527, 49.553501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392120, -0.292424, 0.872198,
		0.859849, -0.453495, 0.234524,
		0.326957, 0.841921, 0.429265,
		32.410431, 30.498104, 49.682281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339333, 29.706810, 50.029980>,  <32.181561, 29.908758, 49.381794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339333, 29.706810, 50.029980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.307774, 30.101637, 50.085796>,  <32.288837, 30.338533, 50.119286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.307774, 30.101637, 50.085796>,  <32.339333, 29.706810, 50.029980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307774, 30.101637, 50.085796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472573, -0.160286, 0.866593,
		0.877753, 0.002427, 0.479108,
		-0.078898, 0.987068, 0.139544,
		32.284103, 30.397757, 50.127659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546890, 29.815525, 50.797478>,  <32.339333, 29.706810, 50.029980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546890, 29.815525, 50.797478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.352379, 30.142563, 50.674141>,  <32.235672, 30.338785, 50.600140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.352379, 30.142563, 50.674141>,  <32.546890, 29.815525, 50.797478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352379, 30.142563, 50.674141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490137, 0.036916, 0.870863,
		0.723396, 0.574609, 0.382782,
		-0.486275, 0.817595, -0.308342,
		32.206497, 30.387842, 50.581638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652428, 30.298262, 51.357384>,  <32.546890, 29.815525, 50.797478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652428, 30.298262, 51.357384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.340977, 30.406172, 51.130772>,  <32.154106, 30.470919, 50.994804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.340977, 30.406172, 51.130772>,  <32.652428, 30.298262, 51.357384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340977, 30.406172, 51.130772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507496, 0.260240, 0.821415,
		0.369032, 0.927090, -0.065720,
		-0.778629, 0.269776, -0.566531,
		32.107388, 30.487104, 50.960812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519054, 30.970047, 51.514000>,  <32.652428, 30.298262, 51.357384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519054, 30.970047, 51.514000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.177673, 30.826761, 51.362583>,  <31.972843, 30.740789, 51.271732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.177673, 30.826761, 51.362583>,  <32.519054, 30.970047, 51.514000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177673, 30.826761, 51.362583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500659, 0.361790, 0.786416,
		-0.144751, 0.860693, -0.488114,
		-0.853457, -0.358213, -0.378544,
		31.921637, 30.719297, 51.249020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018948, 31.363018, 51.776405>,  <32.519054, 30.970047, 51.514000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018948, 31.363018, 51.776405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.786655, 31.060198, 51.656654>,  <31.647280, 30.878506, 51.584805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.786655, 31.060198, 51.656654>,  <32.018948, 31.363018, 51.776405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786655, 31.060198, 51.656654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678134, 0.246380, 0.692410,
		-0.450427, 0.605124, -0.656461,
		-0.580733, -0.757048, -0.299378,
		31.612436, 30.833084, 51.566841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356642, 31.664474, 51.625835>,  <32.018948, 31.363018, 51.776405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356642, 31.664474, 51.625835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.294498, 31.274908, 51.691994>,  <31.257212, 31.041168, 51.731689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.294498, 31.274908, 51.691994>,  <31.356642, 31.664474, 51.625835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294498, 31.274908, 51.691994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745083, 0.225457, 0.627710,
		-0.648625, -0.025712, -0.760674,
		-0.155360, -0.973914, 0.165394,
		31.247890, 30.982735, 51.741611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631155, 31.612585, 51.581589>,  <31.356642, 31.664474, 51.625835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631155, 31.612585, 51.581589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.770746, 31.300768, 51.789639>,  <30.854500, 31.113678, 51.914467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.770746, 31.300768, 51.789639>,  <30.631155, 31.612585, 51.581589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770746, 31.300768, 51.789639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763282, 0.085568, 0.640373,
		-0.543706, -0.620474, -0.565152,
		0.348976, -0.779545, 0.520120,
		30.875439, 31.066904, 51.945675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027328, 31.398592, 51.897129>,  <30.631155, 31.612585, 51.581589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027328, 31.398592, 51.897129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.303101, 31.188568, 52.096725>,  <30.468565, 31.062553, 52.216484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.303101, 31.188568, 52.096725>,  <30.027328, 31.398592, 51.897129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303101, 31.188568, 52.096725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589860, -0.007129, 0.807474,
		-0.420416, -0.851035, -0.314628,
		0.689431, -0.525061, 0.498994,
		30.509930, 31.031050, 52.246422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637445, 30.885601, 52.192387>,  <30.027328, 31.398592, 51.897129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637445, 30.885601, 52.192387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.986250, 30.905298, 52.387188>,  <30.195532, 30.917116, 52.504070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.986250, 30.905298, 52.387188>,  <29.637445, 30.885601, 52.192387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986250, 30.905298, 52.387188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488890, 0.136700, 0.861568,
		-0.024150, -0.989388, 0.143277,
		0.872011, 0.049240, 0.487003,
		30.247854, 30.920071, 52.533287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565845, 30.485485, 52.794258>,  <29.637445, 30.885601, 52.192387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565845, 30.485485, 52.794258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.872034, 30.728678, 52.878555>,  <30.055748, 30.874594, 52.929134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.872034, 30.728678, 52.878555>,  <29.565845, 30.485485, 52.794258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872034, 30.728678, 52.878555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347484, 0.114925, 0.930617,
		0.541580, -0.785589, 0.299236,
		0.765471, 0.607983, 0.210739,
		30.101675, 30.911072, 52.941776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867748, 30.261082, 53.374989>,  <29.565845, 30.485485, 52.794258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867748, 30.261082, 53.374989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.943769, 30.652697, 53.345684>,  <29.989382, 30.887665, 53.328102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.943769, 30.652697, 53.345684>,  <29.867748, 30.261082, 53.374989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943769, 30.652697, 53.345684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197824, 0.111276, 0.973901,
		0.961637, -0.170599, 0.214825,
		0.190051, 0.979037, -0.073258,
		30.000784, 30.946407, 53.323708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.496656, 30.498409, 54.043270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329784, 30.827768, 53.889397>,  <30.229662, 31.025383, 53.797073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329784, 30.827768, 53.889397>,  <30.496656, 30.498409, 54.043270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329784, 30.827768, 53.889397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124667, 0.367428, 0.921659,
		0.900233, 0.432455, -0.050633,
		-0.417179, 0.823395, -0.384684,
		30.204630, 31.074787, 53.773991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937939, 31.070782, 54.296547>,  <30.496656, 30.498409, 54.043270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937939, 31.070782, 54.296547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565779, 31.202375, 54.231888>,  <30.342484, 31.281332, 54.193092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565779, 31.202375, 54.231888>,  <30.937939, 31.070782, 54.296547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565779, 31.202375, 54.231888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053781, 0.313707, 0.947996,
		0.362584, 0.890707, -0.274180,
		-0.930398, 0.328982, -0.161648,
		30.286659, 31.301069, 54.183392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817308, 31.414719, 54.910542>,  <30.937939, 31.070782, 54.296547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817308, 31.414719, 54.910542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446806, 31.416843, 54.759800>,  <30.224504, 31.418118, 54.669353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446806, 31.416843, 54.759800>,  <30.817308, 31.414719, 54.910542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446806, 31.416843, 54.759800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331855, 0.462515, 0.822163,
		0.178670, 0.886596, -0.426645,
		-0.926256, 0.005311, -0.376858,
		30.168930, 31.418436, 54.646744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576786, 32.161022, 54.861103>,  <30.817308, 31.414719, 54.910542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576786, 32.161022, 54.861103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264746, 31.911863, 54.884583>,  <30.077522, 31.762367, 54.898670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264746, 31.911863, 54.884583>,  <30.576786, 32.161022, 54.861103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264746, 31.911863, 54.884583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364060, 0.528226, 0.767097,
		-0.508828, 0.577041, -0.638841,
		-0.780099, -0.622897, 0.058699,
		30.030716, 31.724995, 54.902191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093311, 32.526016, 55.211609>,  <30.576786, 32.161022, 54.861103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093311, 32.526016, 55.211609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930132, 32.162090, 55.242092>,  <29.832224, 31.943733, 55.260384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930132, 32.162090, 55.242092>,  <30.093311, 32.526016, 55.211609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930132, 32.162090, 55.242092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471669, 0.281484, 0.835640,
		-0.781732, 0.304955, -0.543965,
		-0.407950, -0.909818, 0.076207,
		29.807747, 31.889145, 55.264954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474989, 32.680916, 55.306393>,  <30.093311, 32.526016, 55.211609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474989, 32.680916, 55.306393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493238, 32.308952, 55.452370>,  <29.504189, 32.085773, 55.539955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493238, 32.308952, 55.452370>,  <29.474989, 32.680916, 55.306393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493238, 32.308952, 55.452370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481768, 0.299549, 0.823511,
		-0.875111, -0.213387, -0.434336,
		0.045622, -0.929912, 0.364942,
		29.506926, 32.029980, 55.561852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736444, 32.478802, 55.372189>,  <29.474989, 32.680916, 55.306393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736444, 32.478802, 55.372189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938187, 32.232773, 55.614616>,  <29.059231, 32.085155, 55.760075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938187, 32.232773, 55.614616>,  <28.736444, 32.478802, 55.372189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938187, 32.232773, 55.614616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585387, 0.272426, 0.763614,
		-0.634783, -0.739916, -0.222654,
		0.504354, -0.615068, 0.606069,
		29.089493, 32.048252, 55.796436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226854, 31.972256, 55.519695>,  <28.736444, 32.478802, 55.372189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226854, 31.972256, 55.519695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508450, 31.970181, 55.803772>,  <28.677406, 31.968935, 55.974220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508450, 31.970181, 55.803772>,  <28.226854, 31.972256, 55.519695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508450, 31.970181, 55.803772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682697, 0.270706, 0.678706,
		-0.195774, -0.962648, 0.187033,
		0.703987, -0.005186, 0.710194,
		28.719646, 31.968624, 56.016830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085020, 31.451859, 56.075462>,  <28.226854, 31.972256, 55.519695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085020, 31.451859, 56.075462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305025, 31.740711, 56.243279>,  <28.437027, 31.914022, 56.343967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305025, 31.740711, 56.243279>,  <28.085020, 31.451859, 56.075462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305025, 31.740711, 56.243279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652772, 0.058370, 0.755302,
		0.520939, -0.689289, 0.503492,
		0.550010, 0.722132, 0.419541,
		28.470028, 31.957350, 56.369141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153576, 31.351915, 56.785904>,  <28.085020, 31.451859, 56.075462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153576, 31.351915, 56.785904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210058, 31.747314, 56.764236>,  <28.243948, 31.984554, 56.751236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210058, 31.747314, 56.764236>,  <28.153576, 31.351915, 56.785904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210058, 31.747314, 56.764236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688051, 0.137333, 0.712548,
		0.711791, -0.063345, 0.699529,
		0.141205, 0.988497, -0.054168,
		28.252420, 32.043865, 56.747986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072678, 31.479498, 57.471016>,  <28.153576, 31.351915, 56.785904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072678, 31.479498, 57.471016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079168, 31.833406, 57.284718>,  <28.083063, 32.045753, 57.172939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079168, 31.833406, 57.284718>,  <28.072678, 31.479498, 57.471016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079168, 31.833406, 57.284718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509613, 0.408077, 0.757474,
		0.860251, 0.225058, 0.457513,
		0.016225, 0.884772, -0.465741,
		28.084036, 32.098839, 57.144997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087198, 31.899437, 58.023563>,  <28.072678, 31.479498, 57.471016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087198, 31.899437, 58.023563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953035, 32.119137, 57.717407>,  <27.872538, 32.250957, 57.533714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953035, 32.119137, 57.717407>,  <28.087198, 31.899437, 58.023563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953035, 32.119137, 57.717407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581084, 0.518875, 0.626986,
		0.741514, 0.655054, 0.145125,
		-0.335407, 0.549248, -0.765394,
		27.852413, 32.283913, 57.487789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044409, 32.603867, 58.294704>,  <28.087198, 31.899437, 58.023563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044409, 32.603867, 58.294704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837732, 32.636253, 57.953770>,  <27.713726, 32.655685, 57.749210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837732, 32.636253, 57.953770>,  <28.044409, 32.603867, 58.294704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837732, 32.636253, 57.953770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788793, 0.342085, 0.510669,
		0.332920, 0.936174, -0.112883,
		-0.516691, 0.080970, -0.852335,
		27.682726, 32.660545, 57.698071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723976, 33.246670, 58.341637>,  <28.044409, 32.603867, 58.294704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723976, 33.246670, 58.341637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518620, 33.056248, 58.056034>,  <27.395407, 32.941994, 57.884674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518620, 33.056248, 58.056034>,  <27.723976, 33.246670, 58.341637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518620, 33.056248, 58.056034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858037, 0.270893, 0.436337,
		-0.014299, 0.836656, -0.547542,
		-0.513389, -0.476051, -0.714008,
		27.364603, 32.913433, 57.841831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259003, 33.756786, 57.937645>,  <27.723976, 33.246670, 58.341637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259003, 33.756786, 57.937645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113871, 33.384220, 57.949043>,  <27.026791, 33.160679, 57.955883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113871, 33.384220, 57.949043>,  <27.259003, 33.756786, 57.937645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113871, 33.384220, 57.949043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891084, 0.355739, 0.281813,
		-0.272624, 0.076857, -0.959046,
		-0.362829, -0.931419, 0.028497,
		27.005022, 33.104794, 57.957592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656273, 33.906971, 57.887123>,  <27.259003, 33.756786, 57.937645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656273, 33.906971, 57.887123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647406, 33.523182, 57.999496>,  <26.642086, 33.292908, 58.066921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647406, 33.523182, 57.999496>,  <26.656273, 33.906971, 57.887123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647406, 33.523182, 57.999496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760272, 0.198656, 0.618484,
		-0.649226, -0.199875, -0.733863,
		-0.022167, -0.959472, 0.280932,
		26.640755, 33.235340, 58.083775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002750, 33.869907, 58.108311>,  <26.656273, 33.906971, 57.887123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002750, 33.869907, 58.108311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192741, 33.558758, 58.272896>,  <26.306736, 33.372066, 58.371647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192741, 33.558758, 58.272896>,  <26.002750, 33.869907, 58.108311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192741, 33.558758, 58.272896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453781, 0.184109, 0.871887,
		-0.753976, -0.600841, -0.265538,
		0.474977, -0.777878, 0.411464,
		26.335236, 33.325394, 58.396336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499151, 33.429733, 58.446728>,  <26.002750, 33.869907, 58.108311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499151, 33.429733, 58.446728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831989, 33.326309, 58.642998>,  <26.031693, 33.264256, 58.760761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831989, 33.326309, 58.642998>,  <25.499151, 33.429733, 58.446728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831989, 33.326309, 58.642998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498128, 0.040647, 0.866150,
		-0.243901, -0.965138, -0.094976,
		0.832095, -0.258565, 0.490676,
		26.081617, 33.248741, 58.790199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315617, 32.979240, 58.942699>,  <25.499151, 33.429733, 58.446728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315617, 32.979240, 58.942699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674755, 33.105965, 59.065014>,  <25.890238, 33.181999, 59.138405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674755, 33.105965, 59.065014>,  <25.315617, 32.979240, 58.942699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674755, 33.105965, 59.065014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388250, 0.242038, 0.889202,
		0.207686, -0.917091, 0.340311,
		0.897847, 0.316800, 0.305793,
		25.944109, 33.201008, 59.156750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471172, 32.716003, 59.681000>,  <25.315617, 32.979240, 58.942699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471172, 32.716003, 59.681000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681103, 33.050438, 59.617107>,  <25.807062, 33.251099, 59.578773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681103, 33.050438, 59.617107>,  <25.471172, 32.716003, 59.681000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681103, 33.050438, 59.617107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163992, 0.283453, 0.944860,
		0.835262, -0.469694, 0.285876,
		0.524827, 0.836087, -0.159731,
		25.838551, 33.301266, 59.569187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865221, 32.807663, 60.270435>,  <25.471172, 32.716003, 59.681000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865221, 32.807663, 60.270435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857975, 33.167393, 60.095676>,  <25.853626, 33.383232, 59.990822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857975, 33.167393, 60.095676>,  <25.865221, 32.807663, 60.270435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857975, 33.167393, 60.095676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134301, 0.435201, 0.890260,
		0.990775, -0.042547, -0.128665,
		-0.018117, 0.899327, -0.436901,
		25.852539, 33.437191, 59.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446249, 33.228149, 60.571648>,  <25.865221, 32.807663, 60.270435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446249, 33.228149, 60.571648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152323, 33.453045, 60.419891>,  <25.975967, 33.587982, 60.328838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152323, 33.453045, 60.419891>,  <26.446249, 33.228149, 60.571648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152323, 33.453045, 60.419891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135337, 0.669637, 0.730254,
		0.664630, 0.485255, -0.568150,
		-0.734813, 0.562240, -0.379388,
		25.931879, 33.621716, 60.306076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051497, 33.064175, 61.148682>,  <26.446249, 33.228149, 60.571648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051497, 33.064175, 61.148682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991323, 32.787998, 61.431709>,  <25.955219, 32.622292, 61.601528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991323, 32.787998, 61.431709>,  <26.051497, 33.064175, 61.148682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991323, 32.787998, 61.431709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280281, -0.656565, -0.700261,
		0.948057, -0.303659, -0.094751,
		-0.150431, -0.690444, 0.707571,
		25.946194, 32.580864, 61.643982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258932, 32.422062, 60.909748>,  <26.051497, 33.064175, 61.148682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258932, 32.422062, 60.909748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007719, 32.351967, 61.213028>,  <25.856991, 32.309910, 61.394997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007719, 32.351967, 61.213028>,  <26.258932, 32.422062, 60.909748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007719, 32.351967, 61.213028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380203, -0.781013, -0.495444,
		0.678985, -0.599425, 0.423875,
		-0.628033, -0.175240, 0.758199,
		25.819309, 32.299397, 61.440487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534746, 32.608067, 61.553474>,  <26.258932, 32.422062, 60.909748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534746, 32.608067, 61.553474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822880, 32.622303, 61.830559>,  <26.995760, 32.630844, 61.996811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822880, 32.622303, 61.830559>,  <26.534746, 32.608067, 61.553474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822880, 32.622303, 61.830559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632240, 0.377073, -0.676822,
		-0.285293, 0.925499, 0.249116,
		0.720334, 0.035591, 0.692714,
		27.038980, 32.632980, 62.038372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685371, 33.287701, 61.572018>,  <26.534746, 32.608067, 61.553474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685371, 33.287701, 61.572018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021877, 33.121563, 61.710442>,  <27.223782, 33.021881, 61.793495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021877, 33.121563, 61.710442>,  <26.685371, 33.287701, 61.572018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021877, 33.121563, 61.710442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539961, 0.613876, -0.575846,
		0.026734, 0.671300, 0.740703,
		0.841265, -0.415345, 0.346064,
		27.274258, 32.996960, 61.814262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260418, 33.827953, 61.487110>,  <26.685371, 33.287701, 61.572018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260418, 33.827953, 61.487110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462955, 33.489403, 61.553146>,  <27.584478, 33.286270, 61.592770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462955, 33.489403, 61.553146>,  <27.260418, 33.827953, 61.487110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462955, 33.489403, 61.553146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827817, 0.423468, -0.367958,
		0.241522, 0.322979, 0.915069,
		0.506346, -0.846380, 0.165091,
		27.614859, 33.235489, 61.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896656, 34.039890, 61.748787>,  <27.260418, 33.827953, 61.487110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896656, 34.039890, 61.748787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955276, 33.676888, 61.591331>,  <27.990448, 33.459087, 61.496857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955276, 33.676888, 61.591331>,  <27.896656, 34.039890, 61.748787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955276, 33.676888, 61.591331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921078, 0.270309, -0.280263,
		0.360745, -0.321500, 0.875500,
		0.146551, -0.907508, -0.393640,
		27.999241, 33.404636, 61.473240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619095, 33.814796, 61.838947>,  <27.896656, 34.039890, 61.748787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619095, 33.814796, 61.838947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474283, 33.616879, 61.522945>,  <28.387396, 33.498127, 61.333344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474283, 33.616879, 61.522945>,  <28.619095, 33.814796, 61.838947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474283, 33.616879, 61.522945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814730, 0.243834, -0.526079,
		0.452934, -0.834097, 0.314853,
		-0.362029, -0.494799, -0.790005,
		28.365675, 33.468437, 61.285942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168346, 33.386013, 61.494354>,  <28.619095, 33.814796, 61.838947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168346, 33.386013, 61.494354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896339, 33.460899, 61.210796>,  <28.733135, 33.505829, 61.040661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896339, 33.460899, 61.210796>,  <29.168346, 33.386013, 61.494354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896339, 33.460899, 61.210796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733070, 0.191516, -0.652633,
		0.013584, -0.963469, -0.267473,
		-0.680017, 0.187212, -0.708892,
		28.692335, 33.517063, 60.998127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503054, 33.189705, 60.917976>,  <29.168346, 33.386013, 61.494354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503054, 33.189705, 60.917976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190193, 33.375397, 60.751732>,  <29.002478, 33.486813, 60.651985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190193, 33.375397, 60.751732>,  <29.503054, 33.189705, 60.917976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190193, 33.375397, 60.751732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575748, 0.283431, -0.766930,
		-0.238234, -0.839141, -0.488965,
		-0.782150, 0.464229, -0.415611,
		28.955547, 33.514664, 60.627048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591003, 33.170094, 60.230637>,  <29.503054, 33.189705, 60.917976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591003, 33.170094, 60.230637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312645, 33.457310, 60.235382>,  <29.145630, 33.629639, 60.238228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312645, 33.457310, 60.235382>,  <29.591003, 33.170094, 60.230637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312645, 33.457310, 60.235382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439133, 0.438540, -0.784121,
		-0.568235, -0.540458, -0.620495,
		-0.695896, 0.718044, 0.011861,
		29.103876, 33.672722, 60.238941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401981, 33.197586, 59.547451>,  <29.591003, 33.170094, 60.230637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401981, 33.197586, 59.547451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304388, 33.547832, 59.714191>,  <29.245832, 33.757980, 59.814236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304388, 33.547832, 59.714191>,  <29.401981, 33.197586, 59.547451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304388, 33.547832, 59.714191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504501, 0.481699, -0.716551,
		-0.828221, 0.035473, -0.559278,
		-0.243985, 0.875619, 0.416849,
		29.231192, 33.810516, 59.839245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693769, 32.926781, 59.559448>,  <29.401981, 33.197586, 59.547451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693769, 32.926781, 59.559448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822933, 33.299461, 59.492916>,  <28.900431, 33.523067, 59.452995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822933, 33.299461, 59.492916>,  <28.693769, 32.926781, 59.559448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822933, 33.299461, 59.492916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386433, -0.290224, -0.875465,
		-0.863944, 0.218419, -0.453756,
		0.322909, 0.931699, -0.166333,
		28.919806, 33.578972, 59.443016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489805, 33.107113, 58.803268>,  <28.693769, 32.926781, 59.559448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489805, 33.107113, 58.803268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788877, 33.338928, 58.932949>,  <28.968321, 33.478020, 59.010757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788877, 33.338928, 58.932949>,  <28.489805, 33.107113, 58.803268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788877, 33.338928, 58.932949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485991, -0.144842, -0.861878,
		-0.452537, 0.801967, -0.389947,
		0.747679, 0.579542, 0.324203,
		29.013182, 33.512791, 59.030209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584047, 33.497025, 58.325790>,  <28.489805, 33.107113, 58.803268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584047, 33.497025, 58.325790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929125, 33.494625, 58.528065>,  <29.136171, 33.493187, 58.649429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929125, 33.494625, 58.528065>,  <28.584047, 33.497025, 58.325790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929125, 33.494625, 58.528065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487190, -0.258367, -0.834202,
		0.135655, 0.966028, -0.219970,
		0.862696, -0.005996, 0.505688,
		29.187933, 33.492825, 58.679771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102959, 33.700874, 57.874168>,  <28.584047, 33.497025, 58.325790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102959, 33.700874, 57.874168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315643, 33.520897, 58.161175>,  <29.443254, 33.412910, 58.333378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315643, 33.520897, 58.161175>,  <29.102959, 33.700874, 57.874168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315643, 33.520897, 58.161175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636409, -0.346724, -0.689033,
		0.558809, 0.823000, 0.101994,
		0.531710, -0.449948, 0.717517,
		29.475157, 33.385914, 58.376431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855413, 33.919193, 57.632050>,  <29.102959, 33.700874, 57.874168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855413, 33.919193, 57.632050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892723, 33.614532, 57.888546>,  <29.915110, 33.431736, 58.042442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892723, 33.614532, 57.888546>,  <29.855413, 33.919193, 57.632050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892723, 33.614532, 57.888546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765100, -0.357302, -0.535685,
		0.637121, 0.540580, 0.549410,
		0.093275, -0.761649, 0.641242,
		29.920706, 33.386040, 58.080917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623739, 33.857349, 57.631165>,  <29.855413, 33.919193, 57.632050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623739, 33.857349, 57.631165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453901, 33.526752, 57.779015>,  <30.351999, 33.328392, 57.867725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453901, 33.526752, 57.779015>,  <30.623739, 33.857349, 57.631165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453901, 33.526752, 57.779015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632230, -0.562892, -0.532389,
		0.648078, 0.007641, 0.761535,
		-0.424594, -0.826495, 0.369629,
		30.326523, 33.278805, 57.889904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125444, 33.536545, 58.057819>,  <30.623739, 33.857349, 57.631165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125444, 33.536545, 58.057819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873081, 33.246616, 57.947124>,  <30.721663, 33.072659, 57.880707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873081, 33.246616, 57.947124>,  <31.125444, 33.536545, 58.057819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873081, 33.246616, 57.947124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732415, -0.438728, -0.520658,
		0.255973, -0.531176, 0.807670,
		-0.630909, -0.724824, -0.276739,
		30.683809, 33.029171, 57.864101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473625, 32.969833, 58.164680>,  <31.125444, 33.536545, 58.057819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473625, 32.969833, 58.164680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188955, 32.875179, 57.900101>,  <31.018152, 32.818386, 57.741352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188955, 32.875179, 57.900101>,  <31.473625, 32.969833, 58.164680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188955, 32.875179, 57.900101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676910, -0.482848, -0.555564,
		-0.187913, -0.843125, 0.503814,
		-0.711676, -0.236639, -0.661453,
		30.975452, 32.804188, 57.701664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616848, 32.231853, 58.079075>,  <31.473625, 32.969833, 58.164680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616848, 32.231853, 58.079075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397163, 32.376389, 57.777664>,  <31.265352, 32.463108, 57.596817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397163, 32.376389, 57.777664>,  <31.616848, 32.231853, 58.079075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397163, 32.376389, 57.777664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539134, -0.535747, -0.649854,
		-0.638517, -0.763158, 0.099428,
		-0.549210, 0.361338, -0.753527,
		31.232401, 32.484791, 57.551605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580614, 31.668919, 57.545895>,  <31.616848, 32.231853, 58.079075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580614, 31.668919, 57.545895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527227, 32.016510, 57.355289>,  <31.495195, 32.225063, 57.240929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527227, 32.016510, 57.355289>,  <31.580614, 31.668919, 57.545895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527227, 32.016510, 57.355289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468106, -0.368520, -0.803162,
		-0.873535, -0.330253, -0.357589,
		-0.133468, 0.868980, -0.476509,
		31.487186, 32.277203, 57.212337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503052, 31.437948, 56.824131>,  <31.580614, 31.668919, 57.545895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503052, 31.437948, 56.824131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572693, 31.829239, 56.778938>,  <31.614477, 32.064014, 56.751823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572693, 31.829239, 56.778938>,  <31.503052, 31.437948, 56.824131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572693, 31.829239, 56.778938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374844, -0.171929, -0.911006,
		-0.910594, 0.116257, -0.396614,
		0.174101, 0.978225, -0.112979,
		31.624924, 32.122707, 56.745045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.871204, 35.870388, 52.974632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.133652, 35.670341, 52.748573>,  <47.291122, 35.550316, 52.612938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.133652, 35.670341, 52.748573>,  <46.871204, 35.870388, 52.974632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133652, 35.670341, 52.748573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606619, 0.095953, -0.789181,
		0.448907, 0.860628, -0.240421,
		0.656122, -0.500113, -0.565147,
		47.330490, 35.520309, 52.579029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888283, 36.262741, 52.341236>,  <46.871204, 35.870388, 52.974632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888283, 36.262741, 52.341236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.000240, 35.888695, 52.254314>,  <47.067413, 35.664268, 52.202160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.000240, 35.888695, 52.254314>,  <46.888283, 36.262741, 52.341236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.000240, 35.888695, 52.254314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685709, -0.036309, -0.726969,
		0.671909, 0.352483, -0.651379,
		0.279895, -0.935114, -0.217304,
		47.084209, 35.608162, 52.189121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852726, 36.191471, 51.588627>,  <46.888283, 36.262741, 52.341236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852726, 36.191471, 51.588627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.858047, 35.811016, 51.712021>,  <46.861240, 35.582745, 51.786057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.858047, 35.811016, 51.712021>,  <46.852726, 36.191471, 51.588627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858047, 35.811016, 51.712021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717105, -0.224082, -0.659961,
		0.696838, -0.212438, -0.685044,
		0.013305, -0.951135, 0.308489,
		46.862038, 35.525677, 51.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948494, 35.781425, 50.959747>,  <46.852726, 36.191471, 51.588627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948494, 35.781425, 50.959747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.775219, 35.545998, 51.232788>,  <46.671253, 35.404743, 51.396610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.775219, 35.545998, 51.232788>,  <46.948494, 35.781425, 50.959747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775219, 35.545998, 51.232788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687434, -0.274054, -0.672554,
		0.582911, -0.760582, -0.285884,
		-0.433184, -0.588566, 0.682600,
		46.645264, 35.369427, 51.437569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.901478, 35.162949, 50.629581>,  <46.948494, 35.781425, 50.959747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.901478, 35.162949, 50.629581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.645443, 35.156273, 50.936829>,  <46.491821, 35.152267, 51.121178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.645443, 35.156273, 50.936829>,  <46.901478, 35.162949, 50.629581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645443, 35.156273, 50.936829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750071, -0.202921, -0.629457,
		0.166372, -0.979053, 0.117371,
		-0.640089, -0.016687, 0.768119,
		46.453415, 35.151268, 51.167263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.494343, 34.619274, 50.451035>,  <46.901478, 35.162949, 50.629581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.494343, 34.619274, 50.451035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.298885, 34.839249, 50.721973>,  <46.181610, 34.971233, 50.884537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.298885, 34.839249, 50.721973>,  <46.494343, 34.619274, 50.451035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298885, 34.839249, 50.721973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766861, 0.099549, -0.634046,
		-0.416114, -0.829253, 0.373081,
		-0.488644, 0.549936, 0.677345,
		46.152290, 35.004230, 50.925179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872707, 34.288952, 50.498829>,  <46.494343, 34.619274, 50.451035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872707, 34.288952, 50.498829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.803631, 34.652100, 50.651646>,  <45.762184, 34.869987, 50.743336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.803631, 34.652100, 50.651646>,  <45.872707, 34.288952, 50.498829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803631, 34.652100, 50.651646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737538, 0.137898, -0.661076,
		-0.652852, -0.395933, 0.645772,
		-0.172691, 0.907866, 0.382043,
		45.751823, 34.924458, 50.766258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123608, 34.359299, 50.689415>,  <45.872707, 34.288952, 50.498829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123608, 34.359299, 50.689415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.237061, 34.740402, 50.645954>,  <45.305130, 34.969063, 50.619877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.237061, 34.740402, 50.645954>,  <45.123608, 34.359299, 50.689415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237061, 34.740402, 50.645954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857725, 0.201397, -0.473020,
		-0.428791, 0.227356, 0.874327,
		0.283631, 0.952759, -0.108651,
		45.322151, 35.026230, 50.613358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634300, 34.685741, 50.972210>,  <45.123608, 34.359299, 50.689415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634300, 34.685741, 50.972210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.810905, 34.969280, 50.752174>,  <44.916870, 35.139404, 50.620152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.810905, 34.969280, 50.752174>,  <44.634300, 34.685741, 50.972210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810905, 34.969280, 50.752174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869147, 0.185622, -0.458397,
		-0.222825, 0.680499, 0.698047,
		0.441512, 0.708848, -0.550093,
		44.943359, 35.181934, 50.587147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273445, 35.290382, 51.022171>,  <44.634300, 34.685741, 50.972210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273445, 35.290382, 51.022171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.458782, 35.341160, 50.671356>,  <44.569984, 35.371624, 50.460865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.458782, 35.341160, 50.671356>,  <44.273445, 35.290382, 51.022171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458782, 35.341160, 50.671356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828891, 0.412143, -0.378257,
		0.313449, 0.902233, 0.296184,
		0.463346, 0.126940, -0.877039,
		44.597786, 35.379242, 50.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169018, 35.947762, 50.789684>,  <44.273445, 35.290382, 51.022171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169018, 35.947762, 50.789684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.258869, 35.728867, 50.467178>,  <44.312782, 35.597530, 50.273674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.258869, 35.728867, 50.467178>,  <44.169018, 35.947762, 50.789684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258869, 35.728867, 50.467178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934433, 0.113688, -0.337505,
		0.276359, 0.829218, -0.485823,
		0.224633, -0.547242, -0.806267,
		44.326260, 35.564693, 50.225300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662895, 36.100960, 50.413990>,  <44.169018, 35.947762, 50.789684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662895, 36.100960, 50.413990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.812035, 35.823956, 50.166954>,  <43.901516, 35.657753, 50.018734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.812035, 35.823956, 50.166954>,  <43.662895, 36.100960, 50.413990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812035, 35.823956, 50.166954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840115, 0.030637, -0.541542,
		0.393946, 0.720754, -0.570368,
		0.372844, -0.692513, -0.617586,
		43.923889, 35.616203, 49.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502983, 36.306427, 49.573940>,  <43.662895, 36.100960, 50.413990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502983, 36.306427, 49.573940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.589832, 35.916599, 49.596134>,  <43.641941, 35.682705, 49.609451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.589832, 35.916599, 49.596134>,  <43.502983, 36.306427, 49.573940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589832, 35.916599, 49.596134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616817, -0.181029, -0.766006,
		0.756567, 0.132097, -0.640434,
		0.217124, -0.974566, 0.055481,
		43.654968, 35.624229, 49.612778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689888, 36.069706, 48.931286>,  <43.502983, 36.306427, 49.573940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689888, 36.069706, 48.931286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.538338, 35.756626, 49.128807>,  <43.447407, 35.568779, 49.247318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.538338, 35.756626, 49.128807>,  <43.689888, 36.069706, 48.931286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538338, 35.756626, 49.128807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636786, -0.166697, -0.752806,
		0.671533, -0.599666, -0.435252,
		-0.378877, -0.782696, 0.493801,
		43.424675, 35.521816, 49.276947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466320, 35.716396, 48.365768>,  <43.689888, 36.069706, 48.931286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466320, 35.716396, 48.365768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.290398, 35.543648, 48.680744>,  <43.184845, 35.439999, 48.869728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.290398, 35.543648, 48.680744>,  <43.466320, 35.716396, 48.365768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290398, 35.543648, 48.680744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863476, -0.037742, -0.502976,
		0.246940, -0.901146, -0.356310,
		-0.439807, -0.431870, 0.787438,
		43.158455, 35.414085, 48.916977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113010, 35.149757, 48.067410>,  <43.466320, 35.716396, 48.365768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113010, 35.149757, 48.067410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.937431, 35.206230, 48.422352>,  <42.832085, 35.240116, 48.635315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.937431, 35.206230, 48.422352>,  <43.113010, 35.149757, 48.067410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937431, 35.206230, 48.422352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897619, -0.112980, -0.426047,
		0.040101, -0.983515, 0.176323,
		-0.438944, 0.141186, 0.887352,
		42.805748, 35.248585, 48.688557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654953, 34.738216, 47.998272>,  <43.113010, 35.149757, 48.067410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654953, 34.738216, 47.998272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.492424, 34.979977, 48.272385>,  <42.394909, 35.125031, 48.436852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.492424, 34.979977, 48.272385>,  <42.654953, 34.738216, 47.998272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492424, 34.979977, 48.272385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896548, -0.118943, -0.426679,
		-0.176375, -0.787753, 0.590201,
		-0.406318, 0.604399, 0.685279,
		42.370529, 35.161297, 48.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072968, 34.422363, 48.162613>,  <42.654953, 34.738216, 47.998272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072968, 34.422363, 48.162613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.999462, 34.792660, 48.294815>,  <41.955360, 35.014839, 48.374134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.999462, 34.792660, 48.294815>,  <42.072968, 34.422363, 48.162613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999462, 34.792660, 48.294815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913536, -0.036712, -0.405098,
		-0.362883, -0.376368, 0.852445,
		-0.183761, 0.925743, 0.330503,
		41.944332, 35.070381, 48.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560909, 34.389790, 48.604290>,  <42.072968, 34.422363, 48.162613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560909, 34.389790, 48.604290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.535534, 34.778080, 48.511620>,  <41.520309, 35.011055, 48.456017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.535534, 34.778080, 48.511620>,  <41.560909, 34.389790, 48.604290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535534, 34.778080, 48.511620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995528, -0.077838, -0.053530,
		-0.069996, 0.227238, 0.971321,
		-0.063442, 0.970723, -0.231670,
		41.516502, 35.069298, 48.442116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986610, 34.601971, 48.967758>,  <41.560909, 34.389790, 48.604290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986610, 34.601971, 48.967758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.017616, 34.897785, 48.700302>,  <41.036221, 35.075272, 48.539829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.017616, 34.897785, 48.700302>,  <40.986610, 34.601971, 48.967758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017616, 34.897785, 48.700302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975727, -0.081502, -0.203257,
		-0.204810, 0.668169, 0.715265,
		0.077514, 0.739533, -0.668643,
		41.040871, 35.119644, 48.499710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592148, 35.052105, 49.200142>,  <40.986610, 34.601971, 48.967758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592148, 35.052105, 49.200142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630699, 35.099876, 48.804882>,  <40.653831, 35.128540, 48.567726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630699, 35.099876, 48.804882>,  <40.592148, 35.052105, 49.200142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630699, 35.099876, 48.804882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944726, -0.301592, -0.128592,
		-0.313376, 0.945928, 0.083756,
		0.096379, 0.119424, -0.988154,
		40.659615, 35.135704, 48.508434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083118, 35.323864, 49.467716>,  <40.592148, 35.052105, 49.200142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083118, 35.323864, 49.467716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795300, 35.445316, 49.717537>,  <39.622608, 35.518188, 49.867428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795300, 35.445316, 49.717537>,  <40.083118, 35.323864, 49.467716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795300, 35.445316, 49.717537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633220, 0.082369, -0.769577,
		-0.285113, -0.949222, 0.132998,
		-0.719544, 0.303633, 0.624550,
		39.579437, 35.536407, 49.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313332, 35.034119, 49.354137>,  <40.083118, 35.323864, 49.467716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313332, 35.034119, 49.354137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272003, 35.392345, 49.527245>,  <39.247208, 35.607281, 49.631111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272003, 35.392345, 49.527245>,  <39.313332, 35.034119, 49.354137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272003, 35.392345, 49.527245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688888, 0.249419, -0.680605,
		-0.717467, -0.368451, 0.591173,
		-0.103320, 0.895563, 0.432771,
		39.241009, 35.661015, 49.657078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069473, 34.329395, 49.098061>,  <39.313332, 35.034119, 49.354137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069473, 34.329395, 49.098061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696747, 34.377644, 48.961140>,  <38.473110, 34.406593, 48.878986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696747, 34.377644, 48.961140>,  <39.069473, 34.329395, 49.098061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696747, 34.377644, 48.961140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183815, -0.656398, -0.731678,
		-0.312942, -0.744709, 0.589470,
		-0.931815, 0.120619, -0.342303,
		38.417202, 34.413830, 48.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694500, 33.796440, 49.548679>,  <39.069473, 34.329395, 49.098061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694500, 33.796440, 49.548679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.791916, 33.667770, 49.182682>,  <38.850365, 33.590569, 48.963085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.791916, 33.667770, 49.182682>,  <38.694500, 33.796440, 49.548679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791916, 33.667770, 49.182682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969714, -0.062766, -0.236040,
		0.018498, 0.944767, -0.327220,
		0.243541, -0.321676, -0.914993,
		38.864979, 33.571266, 48.908184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153568, 33.826752, 49.137825>,  <38.694500, 33.796440, 49.548679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153568, 33.826752, 49.137825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.382336, 33.598557, 48.902046>,  <38.519596, 33.461639, 48.760578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.382336, 33.598557, 48.902046>,  <38.153568, 33.826752, 49.137825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382336, 33.598557, 48.902046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809039, -0.273553, -0.520217,
		0.135534, 0.774408, -0.617999,
		0.571915, -0.570492, -0.589451,
		38.553909, 33.427410, 48.725212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083897, 34.010242, 48.428829>,  <38.153568, 33.826752, 49.137825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083897, 34.010242, 48.428829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226177, 33.638577, 48.388588>,  <38.311546, 33.415577, 48.364441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226177, 33.638577, 48.388588>,  <38.083897, 34.010242, 48.428829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226177, 33.638577, 48.388588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788966, -0.240823, -0.565276,
		0.501009, 0.280445, -0.818744,
		0.355701, -0.929169, -0.100607,
		38.332886, 33.359825, 48.358406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932251, 33.963081, 47.712391>,  <38.083897, 34.010242, 48.428829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932251, 33.963081, 47.712391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002728, 33.596020, 47.854870>,  <38.045013, 33.375782, 47.940357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002728, 33.596020, 47.854870>,  <37.932251, 33.963081, 47.712391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002728, 33.596020, 47.854870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712961, -0.368459, -0.596594,
		0.678708, -0.148839, -0.719168,
		0.176188, -0.917652, 0.356193,
		38.055584, 33.320724, 47.961727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952053, 33.538250, 47.144718>,  <37.932251, 33.963081, 47.712391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952053, 33.538250, 47.144718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853630, 33.296257, 47.447624>,  <37.794575, 33.151062, 47.629368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853630, 33.296257, 47.447624>,  <37.952053, 33.538250, 47.144718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853630, 33.296257, 47.447624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681299, -0.447753, -0.579093,
		0.689410, -0.658414, -0.302001,
		-0.246061, -0.604986, 0.757262,
		37.779812, 33.114761, 47.674805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953987, 32.792282, 46.751820>,  <37.952053, 33.538250, 47.144718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953987, 32.792282, 46.751820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727238, 32.789436, 47.081329>,  <37.591190, 32.787727, 47.279034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727238, 32.789436, 47.081329>,  <37.953987, 32.792282, 46.751820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727238, 32.789436, 47.081329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783162, -0.305559, -0.541563,
		0.255566, -0.952146, 0.167639,
		-0.566871, -0.007116, 0.823776,
		37.557175, 32.787300, 47.328461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450249, 32.149910, 46.661308>,  <37.953987, 32.792282, 46.751820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450249, 32.149910, 46.661308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292488, 32.375698, 46.951363>,  <37.197834, 32.511173, 47.125397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292488, 32.375698, 46.951363>,  <37.450249, 32.149910, 46.661308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292488, 32.375698, 46.951363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917937, -0.205143, -0.339571,
		-0.042921, -0.799556, 0.599056,
		-0.394398, 0.564471, 0.725137,
		37.174168, 32.545040, 47.168903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943802, 31.765108, 46.847092>,  <37.450249, 32.149910, 46.661308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943802, 31.765108, 46.847092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.842285, 32.125118, 46.988823>,  <36.781376, 32.341125, 47.073860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.842285, 32.125118, 46.988823>,  <36.943802, 31.765108, 46.847092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842285, 32.125118, 46.988823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941473, -0.145829, -0.303911,
		-0.221856, -0.410718, 0.884359,
		-0.253787, 0.900025, 0.354327,
		36.766148, 32.395126, 47.095123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397457, 31.676098, 47.278404>,  <36.943802, 31.765108, 46.847092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397457, 31.676098, 47.278404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.354767, 32.062473, 47.184113>,  <36.329155, 32.294300, 47.127537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.354767, 32.062473, 47.184113>,  <36.397457, 31.676098, 47.278404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354767, 32.062473, 47.184113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963415, -0.159082, -0.215695,
		-0.245850, 0.204089, 0.947579,
		-0.106721, 0.965941, -0.235732,
		36.322750, 32.352257, 47.113392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787937, 31.966248, 47.656612>,  <36.397457, 31.676098, 47.278404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787937, 31.966248, 47.656612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851120, 32.238911, 47.370846>,  <35.889030, 32.402508, 47.199387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851120, 32.238911, 47.370846>,  <35.787937, 31.966248, 47.656612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851120, 32.238911, 47.370846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987389, 0.116850, -0.106815,
		0.010668, 0.722279, 0.691519,
		0.157954, 0.681659, -0.714417,
		35.898506, 32.443409, 47.156521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362133, 32.617168, 47.865932>,  <35.787937, 31.966248, 47.656612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362133, 32.617168, 47.865932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424515, 32.597012, 47.471340>,  <35.461945, 32.584915, 47.234585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424515, 32.597012, 47.471340>,  <35.362133, 32.617168, 47.865932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424515, 32.597012, 47.471340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954789, 0.248203, -0.163628,
		0.253093, 0.967396, -0.009408,
		0.155958, -0.050396, -0.986477,
		35.471302, 32.581894, 47.175396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.779079, 29.860699, 51.281643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045424, 30.151867, 51.347076>,  <31.205231, 30.326569, 51.386337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045424, 30.151867, 51.347076>,  <30.779079, 29.860699, 51.281643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045424, 30.151867, 51.347076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384832, -0.147255, -0.911164,
		-0.639165, 0.669663, -0.378178,
		0.665862, 0.727920, 0.163588,
		31.245182, 30.370243, 51.396152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881338, 30.202862, 50.684086>,  <30.779079, 29.860699, 51.281643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881338, 30.202862, 50.684086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179560, 30.401682, 50.861664>,  <31.358492, 30.520973, 50.968212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179560, 30.401682, 50.861664>,  <30.881338, 30.202862, 50.684086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179560, 30.401682, 50.861664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413791, 0.176940, -0.893011,
		-0.522424, 0.849490, -0.073757,
		0.745553, 0.497050, 0.443949,
		31.403225, 30.550797, 50.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051130, 30.847160, 50.326416>,  <30.881338, 30.202862, 50.684086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051130, 30.847160, 50.326416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385033, 30.763651, 50.530216>,  <31.585375, 30.713545, 50.652496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385033, 30.763651, 50.530216>,  <31.051130, 30.847160, 50.326416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385033, 30.763651, 50.530216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550610, 0.311388, -0.774510,
		0.003045, 0.927065, 0.374888,
		0.834757, -0.208775, 0.509504,
		31.635460, 30.701017, 50.683067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531622, 31.433329, 50.313625>,  <31.051130, 30.847160, 50.326416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531622, 31.433329, 50.313625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764700, 31.120039, 50.400368>,  <31.904547, 30.932066, 50.452412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.764700, 31.120039, 50.400368>,  <31.531622, 31.433329, 50.313625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764700, 31.120039, 50.400368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632326, 0.269313, -0.726385,
		0.510521, 0.560383, 0.652180,
		0.582695, -0.783225, 0.216855,
		31.939508, 30.885071, 50.465424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290226, 31.711681, 50.244350>,  <31.531622, 31.433329, 50.313625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290226, 31.711681, 50.244350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.275810, 31.314415, 50.199944>,  <32.267159, 31.076056, 50.173302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.275810, 31.314415, 50.199944>,  <32.290226, 31.711681, 50.244350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275810, 31.314415, 50.199944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652626, 0.060734, -0.755242,
		0.756822, -0.099672, 0.645977,
		-0.036043, -0.993165, -0.111013,
		32.264996, 31.016466, 50.166641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993732, 31.558287, 50.241512>,  <32.290226, 31.711681, 50.244350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993732, 31.558287, 50.241512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810734, 31.252832, 50.059277>,  <32.700935, 31.069561, 49.949936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810734, 31.252832, 50.059277>,  <32.993732, 31.558287, 50.241512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810734, 31.252832, 50.059277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731708, -0.032160, -0.680859,
		0.505276, -0.644847, 0.573471,
		-0.457493, -0.763635, -0.455591,
		32.673485, 31.023743, 49.922600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549984, 31.119347, 50.112522>,  <32.993732, 31.558287, 50.241512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549984, 31.119347, 50.112522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264835, 30.975885, 49.871464>,  <33.093746, 30.889809, 49.726830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264835, 30.975885, 49.871464>,  <33.549984, 31.119347, 50.112522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264835, 30.975885, 49.871464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698776, -0.290574, -0.653665,
		0.059326, -0.887094, 0.457760,
		-0.712876, -0.358652, -0.602642,
		33.050972, 30.868290, 49.690670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756878, 30.491282, 49.736767>,  <33.549984, 31.119347, 50.112522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756878, 30.491282, 49.736767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437984, 30.608339, 49.525574>,  <33.246647, 30.678574, 49.398857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437984, 30.608339, 49.525574>,  <33.756878, 30.491282, 49.736767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437984, 30.608339, 49.525574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524956, -0.095741, -0.845728,
		-0.298048, -0.951416, -0.077297,
		-0.797238, 0.292645, -0.527987,
		33.198814, 30.696133, 49.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852451, 30.170385, 49.116379>,  <33.756878, 30.491282, 49.736767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852451, 30.170385, 49.116379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598667, 30.449614, 48.983624>,  <33.446396, 30.617151, 48.903969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598667, 30.449614, 48.983624>,  <33.852451, 30.170385, 49.116379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598667, 30.449614, 48.983624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432069, -0.035730, -0.901132,
		-0.640914, -0.715136, -0.278947,
		-0.634465, 0.698072, -0.331888,
		33.408329, 30.659035, 48.884056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620480, 30.037434, 48.340096>,  <33.852451, 30.170385, 49.116379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620480, 30.037434, 48.340096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550499, 30.426020, 48.404156>,  <33.508511, 30.659172, 48.442593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550499, 30.426020, 48.404156>,  <33.620480, 30.037434, 48.340096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550499, 30.426020, 48.404156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401076, 0.218872, -0.889513,
		-0.899183, -0.091389, -0.427923,
		-0.174952, 0.971464, 0.160152,
		33.498013, 30.717459, 48.452202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347443, 30.417839, 47.650845>,  <33.620480, 30.037434, 48.340096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347443, 30.417839, 47.650845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520367, 30.684959, 47.893215>,  <33.624123, 30.845232, 48.038639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520367, 30.684959, 47.893215>,  <33.347443, 30.417839, 47.650845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520367, 30.684959, 47.893215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501209, 0.380642, -0.777111,
		-0.749596, 0.639651, -0.170151,
		0.432314, 0.667801, 0.605926,
		33.650063, 30.885300, 48.074993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280872, 31.097952, 47.368687>,  <33.347443, 30.417839, 47.650845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280872, 31.097952, 47.368687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581848, 31.135487, 47.629463>,  <33.762436, 31.158009, 47.785927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581848, 31.135487, 47.629463>,  <33.280872, 31.097952, 47.368687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581848, 31.135487, 47.629463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576529, 0.384800, -0.720794,
		-0.318505, 0.918217, 0.235439,
		0.752442, 0.093839, 0.651939,
		33.807579, 31.163639, 47.825047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022621, 31.781351, 47.455978>,  <33.280872, 31.097952, 47.368687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022621, 31.781351, 47.455978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104786, 32.166790, 47.387531>,  <33.154087, 32.398052, 47.346462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104786, 32.166790, 47.387531>,  <33.022621, 31.781351, 47.455978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104786, 32.166790, 47.387531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964605, 0.228884, 0.130958,
		0.165357, 0.138161, 0.976508,
		0.205414, 0.963599, -0.171118,
		33.166409, 32.455872, 47.336197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805557, 32.264481, 48.070061>,  <33.022621, 31.781351, 47.455978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805557, 32.264481, 48.070061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810230, 32.483742, 47.735542>,  <32.813034, 32.615299, 47.534832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810230, 32.483742, 47.735542>,  <32.805557, 32.264481, 48.070061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810230, 32.483742, 47.735542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966248, 0.221437, 0.131644,
		0.257348, 0.806533, 0.532238,
		0.011682, 0.548152, -0.836297,
		32.813736, 32.648186, 47.484653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499550, 33.024796, 48.250126>,  <32.805557, 32.264481, 48.070061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499550, 33.024796, 48.250126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468945, 32.971912, 47.854820>,  <32.450581, 32.940182, 47.617638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468945, 32.971912, 47.854820>,  <32.499550, 33.024796, 48.250126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468945, 32.971912, 47.854820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938861, 0.343253, 0.026771,
		0.335685, 0.929891, -0.150394,
		-0.076517, -0.132212, -0.988264,
		32.445988, 32.932247, 47.558342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326195, 33.672573, 47.910683>,  <32.499550, 33.024796, 48.250126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326195, 33.672573, 47.910683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200676, 33.393448, 47.653130>,  <32.125362, 33.225971, 47.498596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200676, 33.393448, 47.653130>,  <32.326195, 33.672573, 47.910683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200676, 33.393448, 47.653130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928202, 0.368244, 0.053276,
		0.199929, 0.614372, -0.763266,
		-0.313799, -0.697814, -0.643884,
		32.106537, 33.184105, 47.459965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007572, 33.984035, 47.321495>,  <32.326195, 33.672573, 47.910683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007572, 33.984035, 47.321495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849030, 33.616859, 47.314739>,  <31.753902, 33.396553, 47.310684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849030, 33.616859, 47.314739>,  <32.007572, 33.984035, 47.321495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849030, 33.616859, 47.314739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915238, 0.396510, -0.071544,
		0.072371, -0.012897, -0.997294,
		-0.396360, -0.917940, -0.016892,
		31.730122, 33.341476, 47.309673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390011, 34.030457, 46.868027>,  <32.007572, 33.984035, 47.321495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390011, 34.030457, 46.868027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346066, 33.699818, 47.088810>,  <31.319698, 33.501434, 47.221279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346066, 33.699818, 47.088810>,  <31.390011, 34.030457, 46.868027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346066, 33.699818, 47.088810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975735, 0.195510, 0.098579,
		-0.189399, -0.527736, -0.828023,
		-0.109863, -0.826602, 0.551960,
		31.313107, 33.451836, 47.254398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740377, 33.895596, 46.721409>,  <31.390011, 34.030457, 46.868027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740377, 33.895596, 46.721409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.830889, 33.711601, 47.064854>,  <30.885195, 33.601204, 47.270920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.830889, 33.711601, 47.064854>,  <30.740377, 33.895596, 46.721409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830889, 33.711601, 47.064854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868767, 0.303325, 0.391456,
		-0.440504, -0.834508, -0.330989,
		0.226276, -0.459990, 0.858609,
		30.898771, 33.573605, 47.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038681, 33.785503, 46.972939>,  <30.740377, 33.895596, 46.721409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038681, 33.785503, 46.972939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.284412, 33.749924, 47.286549>,  <30.431850, 33.728577, 47.474712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.284412, 33.749924, 47.286549>,  <30.038681, 33.785503, 46.972939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284412, 33.749924, 47.286549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742802, 0.269987, 0.612660,
		-0.266172, -0.958747, 0.099787,
		0.614327, -0.088951, 0.784022,
		30.468710, 33.723240, 47.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618282, 33.822094, 47.548180>,  <30.038681, 33.785503, 46.972939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618282, 33.822094, 47.548180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.976549, 33.865078, 47.720798>,  <30.191509, 33.890869, 47.824371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.976549, 33.865078, 47.720798>,  <29.618282, 33.822094, 47.548180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976549, 33.865078, 47.720798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417020, 0.540092, 0.731023,
		-0.154520, -0.834717, 0.528555,
		0.895666, 0.107460, 0.431549,
		30.245249, 33.897316, 47.850262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549671, 33.549633, 48.250744>,  <29.618282, 33.822094, 47.548180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549671, 33.549633, 48.250744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.811543, 33.843430, 48.179276>,  <29.968666, 34.019707, 48.136395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.811543, 33.843430, 48.179276>,  <29.549671, 33.549633, 48.250744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811543, 33.843430, 48.179276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370627, 0.517905, 0.770980,
		0.658810, -0.438523, 0.611283,
		0.654679, 0.734487, -0.178672,
		30.007946, 34.063774, 48.125675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514015, 33.875904, 48.779156>,  <29.549671, 33.549633, 48.250744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514015, 33.875904, 48.779156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.747252, 34.141529, 48.591953>,  <29.887194, 34.300903, 48.479633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.747252, 34.141529, 48.591953>,  <29.514015, 33.875904, 48.779156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747252, 34.141529, 48.591953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368013, 0.729481, 0.576563,
		0.724263, -0.163968, 0.669745,
		0.583103, 0.664058, -0.467993,
		29.922178, 34.340748, 48.451553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742332, 34.354504, 49.275661>,  <29.514015, 33.875904, 48.779156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742332, 34.354504, 49.275661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.824511, 34.562107, 48.943779>,  <29.873817, 34.686668, 48.744648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.824511, 34.562107, 48.943779>,  <29.742332, 34.354504, 49.275661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824511, 34.562107, 48.943779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330534, 0.834776, 0.440337,
		0.921162, 0.183783, 0.343051,
		0.205445, 0.519011, -0.829710,
		29.886145, 34.717812, 48.694866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050276, 34.928810, 49.483234>,  <29.742332, 34.354504, 49.275661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050276, 34.928810, 49.483234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970314, 35.083351, 49.123062>,  <29.922337, 35.176075, 48.906960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970314, 35.083351, 49.123062>,  <30.050276, 34.928810, 49.483234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970314, 35.083351, 49.123062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445028, 0.782917, 0.434731,
		0.872920, 0.487620, 0.015428,
		-0.199904, 0.386351, -0.900428,
		29.910343, 35.199257, 48.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523546, 35.587547, 49.293365>,  <30.050276, 34.928810, 49.483234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523546, 35.587547, 49.293365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.173145, 35.576820, 49.100742>,  <29.962904, 35.570385, 48.985168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.173145, 35.576820, 49.100742>,  <30.523546, 35.587547, 49.293365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173145, 35.576820, 49.100742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295818, 0.818476, 0.492533,
		0.380935, 0.573914, -0.724921,
		-0.876002, -0.026822, -0.481561,
		29.910345, 35.568775, 48.956276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487776, 36.289165, 48.938984>,  <30.523546, 35.587547, 49.293365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487776, 36.289165, 48.938984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.136127, 36.108364, 48.999432>,  <29.925138, 35.999882, 49.035698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.136127, 36.108364, 48.999432>,  <30.487776, 36.289165, 48.938984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136127, 36.108364, 48.999432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320663, 0.795546, 0.514084,
		-0.352588, 0.403485, -0.844323,
		-0.879123, -0.452003, 0.151117,
		29.872391, 35.972763, 49.044765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031279, 36.861198, 49.081409>,  <30.487776, 36.289165, 48.938984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031279, 36.861198, 49.081409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.829285, 36.530262, 49.179790>,  <29.708088, 36.331699, 49.238819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.829285, 36.530262, 49.179790>,  <30.031279, 36.861198, 49.081409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829285, 36.530262, 49.179790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599800, 0.541278, 0.589286,
		-0.620670, 0.150060, -0.769578,
		-0.504984, -0.827345, 0.245949,
		29.677790, 36.282059, 49.253574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057051, 37.612011, 49.032814>,  <30.031279, 36.861198, 49.081409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057051, 37.612011, 49.032814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353786, 37.846752, 49.162601>,  <30.531828, 37.987598, 49.240475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353786, 37.846752, 49.162601>,  <30.057051, 37.612011, 49.032814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353786, 37.846752, 49.162601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568959, -0.294748, -0.767730,
		-0.354911, 0.754139, -0.552552,
		0.741839, 0.586855, 0.324464,
		30.576338, 38.022808, 49.259941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421082, 37.982971, 48.433617>,  <30.057051, 37.612011, 49.032814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421082, 37.982971, 48.433617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684336, 38.024422, 48.731911>,  <30.842287, 38.049290, 48.910889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684336, 38.024422, 48.731911>,  <30.421082, 37.982971, 48.433617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684336, 38.024422, 48.731911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748502, -0.196971, -0.633204,
		0.081275, 0.974918, -0.207194,
		0.658133, 0.103622, 0.745737,
		30.881775, 38.055508, 48.955631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962729, 38.332443, 48.027924>,  <30.421082, 37.982971, 48.433617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962729, 38.332443, 48.027924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128775, 38.171017, 48.354069>,  <31.228401, 38.074162, 48.549755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128775, 38.171017, 48.354069>,  <30.962729, 38.332443, 48.027924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128775, 38.171017, 48.354069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891167, 0.000063, -0.453676,
		0.183037, 0.914950, 0.359672,
		0.415114, -0.403567, 0.815361,
		31.253309, 38.049946, 48.598679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496647, 38.837608, 48.133846>,  <30.962729, 38.332443, 48.027924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496647, 38.837608, 48.133846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571684, 38.472328, 48.278557>,  <31.616707, 38.253162, 48.365383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.571684, 38.472328, 48.278557>,  <31.496647, 38.837608, 48.133846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571684, 38.472328, 48.278557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925250, 0.040647, -0.377173,
		0.329728, 0.405488, 0.852560,
		0.187593, -0.913196, 0.361776,
		31.627962, 38.198368, 48.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192703, 38.851772, 48.448177>,  <31.496647, 38.837608, 48.133846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192703, 38.851772, 48.448177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126942, 38.463650, 48.377216>,  <32.087482, 38.230774, 48.334641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126942, 38.463650, 48.377216>,  <32.192703, 38.851772, 48.448177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126942, 38.463650, 48.377216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963897, -0.119846, -0.237780,
		0.209459, -0.210091, 0.954981,
		-0.164406, -0.970308, -0.177403,
		32.077621, 38.172558, 48.323994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610519, 38.438560, 48.884830>,  <32.192703, 38.851772, 48.448177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610519, 38.438560, 48.884830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529968, 38.223827, 48.557110>,  <32.481636, 38.094986, 48.360477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529968, 38.223827, 48.557110>,  <32.610519, 38.438560, 48.884830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529968, 38.223827, 48.557110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971135, -0.218587, -0.095475,
		-0.127835, -0.814880, 0.565358,
		-0.201381, -0.536834, -0.819302,
		32.469555, 38.062778, 48.311317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093494, 37.917412, 48.985603>,  <32.610519, 38.438560, 48.884830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093494, 37.917412, 48.985603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960220, 37.890297, 48.609436>,  <32.880257, 37.874027, 48.383736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960220, 37.890297, 48.609436>,  <33.093494, 37.917412, 48.985603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960220, 37.890297, 48.609436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903082, -0.309604, -0.297639,
		-0.270983, -0.948447, 0.164371,
		-0.333185, -0.067785, -0.940422,
		32.860264, 37.869961, 48.327309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192314, 37.197479, 48.758274>,  <33.093494, 37.917412, 48.985603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192314, 37.197479, 48.758274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146969, 37.424801, 48.432285>,  <33.119762, 37.561195, 48.236694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146969, 37.424801, 48.432285>,  <33.192314, 37.197479, 48.758274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146969, 37.424801, 48.432285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943765, -0.194807, -0.267129,
		-0.310573, -0.799423, -0.514265,
		-0.113366, 0.568308, -0.814969,
		33.112961, 37.595295, 48.187794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642094, 36.824974, 48.272423>,  <33.192314, 37.197479, 48.758274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642094, 36.824974, 48.272423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597965, 37.193527, 48.123360>,  <33.571487, 37.414661, 48.033920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597965, 37.193527, 48.123360>,  <33.642094, 36.824974, 48.272423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597965, 37.193527, 48.123360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935558, -0.030297, -0.351871,
		-0.335500, -0.387465, -0.858668,
		-0.110323, 0.921386, -0.372661,
		33.564869, 37.469944, 48.011562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828857, 36.785259, 47.610676>,  <33.642094, 36.824974, 48.272423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828857, 36.785259, 47.610676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849720, 37.177933, 47.683979>,  <33.862236, 37.413536, 47.727962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849720, 37.177933, 47.683979>,  <33.828857, 36.785259, 47.610676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849720, 37.177933, 47.683979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960622, 0.000834, -0.277857,
		-0.272920, 0.190532, -0.942981,
		0.052155, 0.981681, 0.183257,
		33.865368, 37.472439, 47.738956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109520, 36.925648, 47.023319>,  <33.828857, 36.785259, 47.610676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109520, 36.925648, 47.023319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188976, 37.226467, 47.274704>,  <34.236649, 37.406960, 47.425537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188976, 37.226467, 47.274704>,  <34.109520, 36.925648, 47.023319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188976, 37.226467, 47.274704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893127, 0.125143, -0.432046,
		-0.403566, 0.647121, -0.646815,
		0.198642, 0.752047, 0.628464,
		34.248569, 37.452080, 47.463242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340115, 37.486046, 46.612572>,  <34.109520, 36.925648, 47.023319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340115, 37.486046, 46.612572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474556, 37.560734, 46.981823>,  <34.555222, 37.605549, 47.203373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474556, 37.560734, 46.981823>,  <34.340115, 37.486046, 46.612572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474556, 37.560734, 46.981823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890652, 0.255668, -0.375997,
		-0.306222, 0.948561, -0.080375,
		0.336107, 0.186724, 0.923128,
		34.575390, 37.616753, 47.258762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.330940, 39.033279, 54.808441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977310, 39.182671, 54.696064>,  <28.765133, 39.272305, 54.628635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977310, 39.182671, 54.696064>,  <29.330940, 39.033279, 54.808441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977310, 39.182671, 54.696064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190740, -0.260460, -0.946456,
		-0.426654, -0.890323, 0.159029,
		-0.884073, 0.373476, -0.280946,
		28.712088, 39.294712, 54.611778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006063, 38.535797, 54.521610>,  <29.330940, 39.033279, 54.808441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006063, 38.535797, 54.521610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883593, 38.882565, 54.364281>,  <28.810110, 39.090626, 54.269882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883593, 38.882565, 54.364281>,  <29.006063, 38.535797, 54.521610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883593, 38.882565, 54.364281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339731, -0.286457, -0.895837,
		-0.889291, -0.407907, -0.206814,
		-0.306175, 0.866922, -0.393323,
		28.791740, 39.142643, 54.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715233, 38.372612, 53.791412>,  <29.006063, 38.535797, 54.521610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715233, 38.372612, 53.791412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.780806, 38.767193, 53.794048>,  <28.820148, 39.003941, 53.795631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.780806, 38.767193, 53.794048>,  <28.715233, 38.372612, 53.791412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780806, 38.767193, 53.794048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383893, -0.057641, -0.921577,
		-0.908709, 0.153606, -0.388140,
		0.163932, 0.986450, 0.006590,
		28.829985, 39.063129, 53.796024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431528, 38.595451, 53.159061>,  <28.715233, 38.372612, 53.791412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431528, 38.595451, 53.159061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.680904, 38.905357, 53.201141>,  <28.830530, 39.091301, 53.226391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.680904, 38.905357, 53.201141>,  <28.431528, 38.595451, 53.159061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680904, 38.905357, 53.201141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248009, -0.068350, -0.966343,
		-0.741495, 0.628547, -0.234760,
		0.623439, 0.774762, 0.105204,
		28.867935, 39.137787, 53.232704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384260, 38.945534, 52.509632>,  <28.431528, 38.595451, 53.159061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384260, 38.945534, 52.509632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719954, 39.076378, 52.683384>,  <28.921370, 39.154884, 52.787636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719954, 39.076378, 52.683384>,  <28.384260, 38.945534, 52.509632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719954, 39.076378, 52.683384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450503, 0.029093, -0.892301,
		-0.304518, 0.944539, -0.122947,
		0.839236, 0.327109, 0.434377,
		28.971724, 39.174511, 52.813698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685310, 39.669605, 52.112865>,  <28.384260, 38.945534, 52.509632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685310, 39.669605, 52.112865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982742, 39.482944, 52.304417>,  <29.161201, 39.370949, 52.419350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982742, 39.482944, 52.304417>,  <28.685310, 39.669605, 52.112865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982742, 39.482944, 52.304417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554481, 0.030084, -0.831653,
		0.373687, 0.883929, 0.281120,
		0.743579, -0.466653, 0.478880,
		29.205816, 39.342949, 52.448082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271147, 40.005871, 51.927032>,  <28.685310, 39.669605, 52.112865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271147, 40.005871, 51.927032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427258, 39.664452, 52.065102>,  <29.520924, 39.459602, 52.147945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427258, 39.664452, 52.065102>,  <29.271147, 40.005871, 51.927032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427258, 39.664452, 52.065102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406469, -0.176660, -0.896423,
		0.826116, 0.490155, 0.277993,
		0.390276, -0.853545, 0.345174,
		29.544340, 39.408386, 52.168655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873875, 39.932045, 51.695404>,  <29.271147, 40.005871, 51.927032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873875, 39.932045, 51.695404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800352, 39.551628, 51.794788>,  <29.756239, 39.323380, 51.854420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800352, 39.551628, 51.794788>,  <29.873875, 39.932045, 51.695404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800352, 39.551628, 51.794788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542355, -0.308931, -0.781289,
		0.819797, -0.008853, 0.572586,
		-0.183806, -0.951043, 0.248459,
		29.745211, 39.266315, 51.869328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574913, 39.585369, 51.617054>,  <29.873875, 39.932045, 51.695404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574913, 39.585369, 51.617054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.280512, 39.315468, 51.595093>,  <30.103870, 39.153526, 51.581917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.280512, 39.315468, 51.595093>,  <30.574913, 39.585369, 51.617054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280512, 39.315468, 51.595093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454751, -0.432698, -0.778443,
		0.501500, -0.597901, 0.625310,
		-0.736003, -0.674749, -0.054898,
		30.059711, 39.113045, 51.578625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887913, 39.061150, 51.471462>,  <30.574913, 39.585369, 51.617054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887913, 39.061150, 51.471462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520470, 38.942196, 51.367367>,  <30.300003, 38.870823, 51.304909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520470, 38.942196, 51.367367>,  <30.887913, 39.061150, 51.471462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520470, 38.942196, 51.367367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383160, -0.509172, -0.770671,
		0.096680, -0.807656, 0.581675,
		-0.918609, -0.297382, -0.260234,
		30.244886, 38.852982, 51.289295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960487, 38.402119, 51.327370>,  <30.887913, 39.061150, 51.471462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960487, 38.402119, 51.327370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629358, 38.506313, 51.128632>,  <30.430681, 38.568832, 51.009388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629358, 38.506313, 51.128632>,  <30.960487, 38.402119, 51.327370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629358, 38.506313, 51.128632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345889, -0.460267, -0.817628,
		-0.441663, -0.848705, 0.290920,
		-0.827825, 0.260490, -0.496841,
		30.381010, 38.584461, 50.979580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834772, 37.862103, 50.949104>,  <30.960487, 38.402119, 51.327370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834772, 37.862103, 50.949104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579979, 38.106380, 50.760933>,  <30.427103, 38.252949, 50.648029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579979, 38.106380, 50.760933>,  <30.834772, 37.862103, 50.949104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579979, 38.106380, 50.760933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282779, -0.382603, -0.879574,
		-0.717139, -0.693301, 0.071021,
		-0.636983, 0.610694, -0.470431,
		30.388884, 38.289589, 50.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491154, 37.425941, 50.454414>,  <30.834772, 37.862103, 50.949104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491154, 37.425941, 50.454414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.467857, 37.808228, 50.339031>,  <30.453880, 38.037601, 50.269802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.467857, 37.808228, 50.339031>,  <30.491154, 37.425941, 50.454414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467857, 37.808228, 50.339031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322203, -0.255494, -0.911541,
		-0.944877, -0.146031, -0.293056,
		-0.058239, 0.955719, -0.288462,
		30.450386, 38.094944, 50.252491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094584, 37.355999, 49.799725>,  <30.491154, 37.425941, 50.454414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094584, 37.355999, 49.799725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286272, 37.707016, 49.793163>,  <30.401285, 37.917625, 49.789227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286272, 37.707016, 49.793163>,  <30.094584, 37.355999, 49.799725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286272, 37.707016, 49.793163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354884, -0.210822, -0.910830,
		-0.802747, 0.430671, -0.412455,
		0.479223, 0.877540, -0.016399,
		30.430038, 37.970280, 49.788242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469885, 37.176651, 49.511524>,  <30.094584, 37.355999, 49.799725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469885, 37.176651, 49.511524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471491, 36.782230, 49.578091>,  <29.472454, 36.545578, 49.618031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471491, 36.782230, 49.578091>,  <29.469885, 37.176651, 49.511524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471491, 36.782230, 49.578091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357042, 0.154037, 0.921300,
		-0.934080, -0.063116, -0.351442,
		0.004014, -0.986047, 0.166418,
		29.472694, 36.486416, 49.628017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798685, 37.064442, 49.670330>,  <29.469885, 37.176651, 49.511524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798685, 37.064442, 49.670330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999874, 36.751228, 49.816685>,  <29.120586, 36.563301, 49.904499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999874, 36.751228, 49.816685>,  <28.798685, 37.064442, 49.670330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999874, 36.751228, 49.816685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466310, 0.110587, 0.877682,
		-0.727719, -0.612065, -0.309516,
		0.502970, -0.783037, 0.365889,
		29.150764, 36.516319, 49.926453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237034, 36.568531, 49.928738>,  <28.798685, 37.064442, 49.670330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237034, 36.568531, 49.928738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592165, 36.499077, 50.099201>,  <28.805243, 36.457405, 50.201481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592165, 36.499077, 50.099201>,  <28.237034, 36.568531, 49.928738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592165, 36.499077, 50.099201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427198, 0.033274, 0.903546,
		-0.171074, -0.984246, -0.044638,
		0.887827, -0.173642, 0.426160,
		28.858513, 36.446983, 50.227051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156599, 36.046673, 50.412975>,  <28.237034, 36.568531, 49.928738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156599, 36.046673, 50.412975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499819, 36.203583, 50.545567>,  <28.705750, 36.297729, 50.625122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499819, 36.203583, 50.545567>,  <28.156599, 36.046673, 50.412975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499819, 36.203583, 50.545567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304357, -0.131479, 0.943440,
		0.413667, -0.910405, 0.006575,
		0.858048, 0.392271, 0.331477,
		28.757233, 36.321262, 50.645008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428261, 35.543690, 50.871780>,  <28.156599, 36.046673, 50.412975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428261, 35.543690, 50.871780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600313, 35.895584, 50.952820>,  <28.703545, 36.106720, 51.001446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600313, 35.895584, 50.952820>,  <28.428261, 35.543690, 50.871780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600313, 35.895584, 50.952820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223701, -0.113559, 0.968019,
		0.874612, -0.461697, 0.147954,
		0.430130, 0.879739, 0.202602,
		28.729353, 36.159504, 51.013599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893332, 35.417610, 51.484711>,  <28.428261, 35.543690, 50.871780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893332, 35.417610, 51.484711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.834888, 35.813221, 51.493526>,  <28.799824, 36.050587, 51.498817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.834888, 35.813221, 51.493526>,  <28.893332, 35.417610, 51.484711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834888, 35.813221, 51.493526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078418, -0.033792, 0.996348,
		0.986156, 0.143844, 0.082495,
		-0.146106, 0.989023, 0.022044,
		28.791056, 36.109928, 51.500141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314831, 35.724987, 51.946289>,  <28.893332, 35.417610, 51.484711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314831, 35.724987, 51.946289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053648, 36.027020, 51.922630>,  <28.896938, 36.208241, 51.908436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053648, 36.027020, 51.922630>,  <29.314831, 35.724987, 51.946289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053648, 36.027020, 51.922630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061627, 0.024870, 0.997790,
		0.754883, 0.655160, 0.030294,
		-0.652958, 0.755081, -0.059150,
		28.857761, 36.253544, 51.904884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422251, 36.099125, 52.537132>,  <29.314831, 35.724987, 51.946289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422251, 36.099125, 52.537132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067472, 36.247272, 52.426746>,  <28.854607, 36.336163, 52.360516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067472, 36.247272, 52.426746>,  <29.422251, 36.099125, 52.537132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067472, 36.247272, 52.426746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241541, 0.137329, 0.960624,
		0.393684, 0.918677, -0.032343,
		-0.886944, 0.370370, -0.275962,
		28.801390, 36.358383, 52.343956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388206, 36.623806, 52.975525>,  <29.422251, 36.099125, 52.537132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388206, 36.623806, 52.975525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.014753, 36.578541, 52.839569>,  <28.790682, 36.551384, 52.757996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.014753, 36.578541, 52.839569>,  <29.388206, 36.623806, 52.975525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014753, 36.578541, 52.839569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342719, 0.005920, 0.939419,
		-0.104294, 0.993559, -0.044310,
		-0.933631, -0.113161, -0.339894,
		28.734665, 36.544594, 52.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957161, 37.234188, 53.235321>,  <29.388206, 36.623806, 52.975525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957161, 37.234188, 53.235321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.722416, 36.920864, 53.153320>,  <28.581570, 36.732872, 53.104118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.722416, 36.920864, 53.153320>,  <28.957161, 37.234188, 53.235321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722416, 36.920864, 53.153320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254514, -0.061894, 0.965086,
		-0.768646, 0.618548, -0.163039,
		-0.586861, -0.783305, -0.205004,
		28.546358, 36.685871, 53.091820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495047, 37.337322, 53.723351>,  <28.957161, 37.234188, 53.235321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495047, 37.337322, 53.723351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.456369, 36.959824, 53.596867>,  <28.433163, 36.733322, 53.520977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.456369, 36.959824, 53.596867>,  <28.495047, 37.337322, 53.723351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456369, 36.959824, 53.596867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321674, -0.271014, 0.907236,
		-0.941900, 0.189439, -0.277375,
		-0.096694, -0.943750, -0.316206,
		28.427361, 36.676697, 53.502007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908453, 37.167809, 54.100834>,  <28.495047, 37.337322, 53.723351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908453, 37.167809, 54.100834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050976, 36.816166, 53.974205>,  <28.136490, 36.605183, 53.898228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050976, 36.816166, 53.974205>,  <27.908453, 37.167809, 54.100834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050976, 36.816166, 53.974205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178014, -0.396474, 0.900622,
		-0.917254, -0.264545, -0.297760,
		0.356309, -0.879104, -0.316575,
		28.157869, 36.552433, 53.879234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416048, 36.633553, 54.334042>,  <27.908453, 37.167809, 54.100834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416048, 36.633553, 54.334042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777464, 36.468155, 54.289074>,  <27.994312, 36.368916, 54.262093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777464, 36.468155, 54.289074>,  <27.416048, 36.633553, 54.334042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777464, 36.468155, 54.289074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127684, -0.510242, 0.850500,
		-0.409040, -0.754105, -0.513820,
		0.903539, -0.413495, -0.112422,
		28.048525, 36.344105, 54.255348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293585, 35.940872, 54.417904>,  <27.416048, 36.633553, 54.334042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293585, 35.940872, 54.417904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685768, 35.978855, 54.486820>,  <27.921078, 36.001644, 54.528172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685768, 35.978855, 54.486820>,  <27.293585, 35.940872, 54.417904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685768, 35.978855, 54.486820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132182, -0.330656, 0.934449,
		0.145704, -0.938962, -0.311642,
		0.980458, 0.094960, 0.172292,
		27.979906, 36.007343, 54.538509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.441341, 35.594448, 57.788044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125671, 35.645569, 57.547756>,  <31.936270, 35.676239, 57.403584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125671, 35.645569, 57.547756>,  <32.441341, 35.594448, 57.788044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125671, 35.645569, 57.547756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544806, -0.305867, -0.780789,
		-0.283519, -0.943459, 0.171763,
		-0.789179, 0.127791, -0.600721,
		31.888918, 35.683907, 57.367538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508278, 35.022118, 57.285019>,  <32.441341, 35.594448, 57.788044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508278, 35.022118, 57.285019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234673, 35.255157, 57.109428>,  <32.070507, 35.394981, 57.004074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234673, 35.255157, 57.109428>,  <32.508278, 35.022118, 57.285019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234673, 35.255157, 57.109428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389877, -0.216633, -0.895023,
		-0.616537, -0.783356, -0.078962,
		-0.684016, 0.582601, -0.438975,
		32.029469, 35.429939, 56.977737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255188, 34.591343, 56.792843>,  <32.508278, 35.022118, 57.285019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255188, 34.591343, 56.792843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188000, 34.972713, 56.692623>,  <32.147686, 35.201534, 56.632492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188000, 34.972713, 56.692623>,  <32.255188, 34.591343, 56.792843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188000, 34.972713, 56.692623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452140, -0.151339, -0.879014,
		-0.875989, -0.260928, -0.405660,
		-0.167967, 0.953422, -0.250547,
		32.137611, 35.258739, 56.617458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925024, 34.579525, 56.124557>,  <32.255188, 34.591343, 56.792843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925024, 34.579525, 56.124557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109955, 34.931694, 56.166721>,  <32.220913, 35.142994, 56.192020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109955, 34.931694, 56.166721>,  <31.925024, 34.579525, 56.124557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109955, 34.931694, 56.166721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410875, -0.107365, -0.905348,
		-0.785771, 0.461876, -0.411381,
		0.462326, 0.880422, 0.105408,
		32.248653, 35.195820, 56.198345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968828, 34.871342, 55.422806>,  <31.925024, 34.579525, 56.124557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968828, 34.871342, 55.422806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221329, 35.084133, 55.648556>,  <32.372829, 35.211807, 55.784008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221329, 35.084133, 55.648556>,  <31.968828, 34.871342, 55.422806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221329, 35.084133, 55.648556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538427, 0.223171, -0.812583,
		-0.558228, 0.816821, -0.145553,
		0.631251, 0.531976, 0.564379,
		32.410706, 35.243725, 55.817871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258530, 35.307980, 54.992184>,  <31.968828, 34.871342, 55.422806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258530, 35.307980, 54.992184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525497, 35.302441, 55.290005>,  <32.685680, 35.299118, 55.468697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525497, 35.302441, 55.290005>,  <32.258530, 35.307980, 54.992184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525497, 35.302441, 55.290005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744679, 0.010788, -0.667336,
		0.001208, 0.999846, 0.017511,
		0.667422, -0.013846, 0.744551,
		32.725723, 35.298286, 55.513371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687675, 35.901493, 54.863834>,  <32.258530, 35.307980, 54.992184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687675, 35.901493, 54.863834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.861614, 35.624043, 55.093544>,  <32.965977, 35.457573, 55.231369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.861614, 35.624043, 55.093544>,  <32.687675, 35.901493, 54.863834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861614, 35.624043, 55.093544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713029, -0.124285, -0.690031,
		0.549996, 0.709534, 0.440529,
		0.434849, -0.693625, 0.574274,
		32.992069, 35.415955, 55.265827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346336, 36.091187, 54.876144>,  <32.687675, 35.901493, 54.863834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346336, 36.091187, 54.876144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387257, 35.719471, 55.018101>,  <33.411808, 35.496441, 55.103275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387257, 35.719471, 55.018101>,  <33.346336, 36.091187, 54.876144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387257, 35.719471, 55.018101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781976, -0.145387, -0.606116,
		0.614856, 0.339525, 0.711811,
		0.102303, -0.929293, 0.354893,
		33.417946, 35.440681, 55.124569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030964, 35.891537, 54.841232>,  <33.346336, 36.091187, 54.876144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030964, 35.891537, 54.841232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864422, 35.529663, 54.877441>,  <33.764496, 35.312538, 54.899166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864422, 35.529663, 54.877441>,  <34.030964, 35.891537, 54.841232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864422, 35.529663, 54.877441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727945, -0.391353, -0.562974,
		0.544741, -0.168500, 0.821502,
		-0.416358, -0.904683, 0.090527,
		33.739513, 35.258259, 54.904598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620071, 35.408775, 54.872940>,  <34.030964, 35.891537, 54.841232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620071, 35.408775, 54.872940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295837, 35.184479, 54.805382>,  <34.101295, 35.049900, 54.764847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295837, 35.184479, 54.805382>,  <34.620071, 35.408775, 54.872940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295837, 35.184479, 54.805382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549872, -0.629544, -0.548922,
		0.201477, -0.537817, 0.818633,
		-0.810585, -0.560739, -0.168892,
		34.052662, 35.016258, 54.754715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794876, 34.801548, 55.045452>,  <34.620071, 35.408775, 54.872940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794876, 34.801548, 55.045452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499680, 34.779026, 54.776470>,  <34.322563, 34.765514, 54.615082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499680, 34.779026, 54.776470>,  <34.794876, 34.801548, 55.045452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499680, 34.779026, 54.776470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473537, -0.753165, -0.456623,
		-0.480760, -0.655417, 0.582493,
		-0.737992, -0.056306, -0.672456,
		34.278282, 34.762135, 54.574734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750385, 34.122585, 54.886482>,  <34.794876, 34.801548, 55.045452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750385, 34.122585, 54.886482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577694, 34.285870, 54.564743>,  <34.474079, 34.383842, 54.371700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577694, 34.285870, 54.564743>,  <34.750385, 34.122585, 54.886482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577694, 34.285870, 54.564743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604685, -0.530704, -0.593894,
		-0.669306, -0.742775, -0.017723,
		-0.431724, 0.408214, -0.804348,
		34.448177, 34.408333, 54.323437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762638, 33.650284, 54.317661>,  <34.750385, 34.122585, 54.886482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762638, 33.650284, 54.317661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687195, 34.002338, 54.143402>,  <34.641930, 34.213570, 54.038845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687195, 34.002338, 54.143402>,  <34.762638, 33.650284, 54.317661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687195, 34.002338, 54.143402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495202, -0.297850, -0.816125,
		-0.848058, -0.369661, -0.379668,
		-0.188606, 0.880134, -0.435651,
		34.630611, 34.266380, 54.012707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575611, 33.393063, 53.664482>,  <34.762638, 33.650284, 54.317661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575611, 33.393063, 53.664482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704575, 33.771603, 53.655769>,  <34.781952, 33.998726, 53.650539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704575, 33.771603, 53.655769>,  <34.575611, 33.393063, 53.664482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704575, 33.771603, 53.655769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729690, -0.263125, -0.631124,
		-0.602996, 0.187583, -0.775376,
		0.322409, 0.946350, -0.021785,
		34.801296, 34.055508, 53.649235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966606, 33.123180, 53.319786>,  <34.575611, 33.393063, 53.664482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966606, 33.123180, 53.319786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948975, 32.723713, 53.309097>,  <33.938396, 32.484032, 53.302685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948975, 32.723713, 53.309097>,  <33.966606, 33.123180, 53.319786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948975, 32.723713, 53.309097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836314, 0.022253, 0.547799,
		-0.546476, 0.046496, -0.836183,
		-0.044078, -0.998671, -0.026725,
		33.935753, 32.424110, 53.301079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245087, 32.910938, 53.163246>,  <33.966606, 33.123180, 53.319786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245087, 32.910938, 53.163246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416180, 32.602650, 53.352150>,  <33.518833, 32.417675, 53.465492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416180, 32.602650, 53.352150>,  <33.245087, 32.910938, 53.163246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416180, 32.602650, 53.352150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779286, -0.049701, 0.624694,
		-0.457996, -0.635226, -0.621874,
		0.427730, -0.770725, 0.472260,
		33.544498, 32.371433, 53.493828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786789, 32.432549, 53.308834>,  <33.245087, 32.910938, 53.163246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786789, 32.432549, 53.308834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044456, 32.312397, 53.590206>,  <33.199059, 32.240307, 53.759029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044456, 32.312397, 53.590206>,  <32.786789, 32.432549, 53.308834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044456, 32.312397, 53.590206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668699, 0.225313, 0.708573,
		-0.371331, -0.926827, -0.055721,
		0.644170, -0.300376, 0.703434,
		33.237709, 32.222286, 53.801235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515396, 31.829861, 53.684547>,  <32.786789, 32.432549, 53.308834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515396, 31.829861, 53.684547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787727, 31.957647, 53.948189>,  <32.951126, 32.034321, 54.106373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787727, 31.957647, 53.948189>,  <32.515396, 31.829861, 53.684547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787727, 31.957647, 53.948189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642292, -0.172122, 0.746884,
		0.352051, -0.931834, 0.088007,
		0.680823, 0.319467, 0.659105,
		32.991974, 32.053486, 54.145920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430565, 31.474504, 54.416496>,  <32.515396, 31.829861, 53.684547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430565, 31.474504, 54.416496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667053, 31.773256, 54.538235>,  <32.808945, 31.952507, 54.611279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667053, 31.773256, 54.538235>,  <32.430565, 31.474504, 54.416496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667053, 31.773256, 54.538235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593872, 0.147838, 0.790860,
		0.545686, -0.648314, 0.530957,
		0.591222, 0.746882, 0.304342,
		32.844421, 31.997320, 54.629536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705158, 31.307234, 55.197727>,  <32.430565, 31.474504, 54.416496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705158, 31.307234, 55.197727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723316, 31.700598, 55.127483>,  <32.734211, 31.936617, 55.085335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723316, 31.700598, 55.127483>,  <32.705158, 31.307234, 55.197727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723316, 31.700598, 55.127483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212515, 0.181277, 0.960196,
		0.976103, -0.006272, 0.217220,
		0.045399, 0.983412, -0.175612,
		32.736935, 31.995621, 55.074799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127254, 31.591051, 55.792393>,  <32.705158, 31.307234, 55.197727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127254, 31.591051, 55.792393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894680, 31.880869, 55.644356>,  <32.755135, 32.054760, 55.555534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894680, 31.880869, 55.644356>,  <33.127254, 31.591051, 55.792393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894680, 31.880869, 55.644356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295906, 0.235411, 0.925755,
		0.757873, 0.647781, 0.077520,
		-0.581437, 0.724543, -0.370094,
		32.720249, 32.098232, 55.533329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182251, 32.106205, 56.300373>,  <33.127254, 31.591051, 55.792393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182251, 32.106205, 56.300373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868698, 32.231445, 56.085899>,  <32.680565, 32.306587, 55.957214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868698, 32.231445, 56.085899>,  <33.182251, 32.106205, 56.300373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868698, 32.231445, 56.085899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503079, 0.185876, 0.844015,
		0.363924, 0.931354, 0.011807,
		-0.783882, 0.313097, -0.536189,
		32.633533, 32.325375, 55.925041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867607, 32.542427, 56.646553>,  <33.182251, 32.106205, 56.300373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867607, 32.542427, 56.646553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566395, 32.457153, 56.397560>,  <32.385666, 32.405987, 56.248165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566395, 32.457153, 56.397560>,  <32.867607, 32.542427, 56.646553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566395, 32.457153, 56.397560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657961, 0.236603, 0.714917,
		-0.005129, 0.947929, -0.318440,
		-0.753035, -0.213188, -0.622487,
		32.340485, 32.393196, 56.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506256, 33.114601, 56.603546>,  <32.867607, 32.542427, 56.646553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506256, 33.114601, 56.603546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256969, 32.816692, 56.508121>,  <32.107395, 32.637947, 56.450867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256969, 32.816692, 56.508121>,  <32.506256, 33.114601, 56.603546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256969, 32.816692, 56.508121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650919, 0.324914, 0.686102,
		-0.433478, 0.582875, -0.687279,
		-0.623218, -0.744773, -0.238562,
		32.070004, 32.593262, 56.436554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892162, 33.376930, 56.552952>,  <32.506256, 33.114601, 56.603546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892162, 33.376930, 56.552952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774811, 32.997982, 56.604202>,  <31.704401, 32.770615, 56.634953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774811, 32.997982, 56.604202>,  <31.892162, 33.376930, 56.552952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774811, 32.997982, 56.604202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637013, 0.293657, 0.712727,
		-0.712842, 0.127482, -0.689641,
		-0.293378, -0.947372, 0.128124,
		31.686798, 32.713772, 56.642639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163002, 33.365139, 56.563431>,  <31.892162, 33.376930, 56.552952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163002, 33.365139, 56.563431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258591, 33.020824, 56.743183>,  <31.315945, 32.814236, 56.851036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258591, 33.020824, 56.743183>,  <31.163002, 33.365139, 56.563431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258591, 33.020824, 56.743183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707799, 0.162414, 0.687490,
		-0.664765, -0.482365, -0.570449,
		0.238972, -0.860782, 0.449384,
		31.330282, 32.762589, 56.877998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605104, 32.925953, 56.506824>,  <31.163002, 33.365139, 56.563431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605104, 32.925953, 56.506824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.806330, 32.804077, 56.830330>,  <30.927065, 32.730953, 57.024433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.806330, 32.804077, 56.830330>,  <30.605104, 32.925953, 56.506824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806330, 32.804077, 56.830330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777374, 0.249387, 0.577491,
		-0.377650, -0.919223, -0.111401,
		0.503061, -0.304690, 0.808760,
		30.957249, 32.712669, 57.072960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040070, 32.500286, 56.872074>,  <30.605104, 32.925953, 56.506824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040070, 32.500286, 56.872074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332449, 32.617622, 57.118542>,  <30.507877, 32.688026, 57.266422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332449, 32.617622, 57.118542>,  <30.040070, 32.500286, 56.872074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332449, 32.617622, 57.118542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679554, 0.230045, 0.696625,
		0.062605, -0.927916, 0.367495,
		0.730950, 0.293345, 0.616166,
		30.551733, 32.705627, 57.303391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612471, 31.874155, 56.923061>,  <30.040070, 32.500286, 56.872074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612471, 31.874155, 56.923061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.326437, 31.906960, 56.645378>,  <29.154818, 31.926643, 56.478767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.326437, 31.906960, 56.645378>,  <29.612471, 31.874155, 56.923061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326437, 31.906960, 56.645378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617714, -0.390759, -0.682449,
		-0.327238, -0.916832, 0.228765,
		-0.715083, 0.082012, -0.694212,
		29.111912, 31.931564, 56.437115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710379, 31.239893, 56.553329>,  <29.612471, 31.874155, 56.923061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710379, 31.239893, 56.553329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.518303, 31.494389, 56.311794>,  <29.403057, 31.647085, 56.166874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.518303, 31.494389, 56.311794>,  <29.710379, 31.239893, 56.553329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518303, 31.494389, 56.311794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384223, -0.466275, -0.796844,
		-0.788537, -0.614644, -0.020557,
		-0.480190, 0.636240, -0.603835,
		29.374247, 31.685261, 56.130642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573486, 30.788044, 55.997967>,  <29.710379, 31.239893, 56.553329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573486, 30.788044, 55.997967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.529995, 31.164972, 55.871342>,  <29.503901, 31.391129, 55.795368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.529995, 31.164972, 55.871342>,  <29.573486, 30.788044, 55.997967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529995, 31.164972, 55.871342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314163, -0.269553, -0.910298,
		-0.943122, -0.198426, -0.266734,
		-0.108728, 0.942321, -0.316559,
		29.497375, 31.447668, 55.776375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505020, 30.691498, 55.325882>,  <29.573486, 30.788044, 55.997967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505020, 30.691498, 55.325882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.544060, 31.088011, 55.290489>,  <29.567484, 31.325918, 55.269253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.544060, 31.088011, 55.290489>,  <29.505020, 30.691498, 55.325882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544060, 31.088011, 55.290489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189268, -0.105774, -0.976212,
		-0.977063, 0.078529, -0.197942,
		0.097598, 0.991284, -0.088485,
		29.573339, 31.385397, 55.263943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976671, 30.981291, 54.834827>,  <29.505020, 30.691498, 55.325882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976671, 30.981291, 54.834827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284805, 31.234585, 54.864754>,  <29.469685, 31.386562, 54.882710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284805, 31.234585, 54.864754>,  <28.976671, 30.981291, 54.834827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284805, 31.234585, 54.864754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146909, -0.062073, -0.987200,
		-0.620487, 0.771465, -0.140845,
		0.770333, 0.633236, 0.074820,
		29.515905, 31.424555, 54.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953335, 31.248449, 54.176960>,  <28.976671, 30.981291, 54.834827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953335, 31.248449, 54.176960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.323689, 31.325628, 54.306889>,  <29.545900, 31.371935, 54.384846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.323689, 31.325628, 54.306889>,  <28.953335, 31.248449, 54.176960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323689, 31.325628, 54.306889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334381, -0.018280, -0.942261,
		-0.175868, 0.981039, -0.081443,
		0.925883, 0.192946, 0.324826,
		29.601454, 31.383512, 54.404335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136127, 31.731888, 53.758915>,  <28.953335, 31.248449, 54.176960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136127, 31.731888, 53.758915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.487707, 31.604025, 53.900490>,  <29.698654, 31.527308, 53.985435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.487707, 31.604025, 53.900490>,  <29.136127, 31.731888, 53.758915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487707, 31.604025, 53.900490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397603, 0.081318, -0.913947,
		0.263369, 0.944037, 0.198571,
		0.878948, -0.319658, 0.353935,
		29.751392, 31.508127, 54.006672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528545, 32.147499, 53.440464>,  <29.136127, 31.731888, 53.758915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528545, 32.147499, 53.440464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.740957, 31.824783, 53.544071>,  <29.868404, 31.631153, 53.606236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.740957, 31.824783, 53.544071>,  <29.528545, 32.147499, 53.440464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740957, 31.824783, 53.544071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361484, -0.060775, -0.930395,
		0.766379, 0.587700, 0.259370,
		0.531030, -0.806793, 0.259021,
		29.900267, 31.582745, 53.621777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260265, 32.230453, 53.182888>,  <29.528545, 32.147499, 53.440464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260265, 32.230453, 53.182888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180878, 31.841681, 53.233402>,  <30.133245, 31.608416, 53.263710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180878, 31.841681, 53.233402>,  <30.260265, 32.230453, 53.182888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180878, 31.841681, 53.233402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431088, -0.202286, -0.879343,
		0.880212, -0.120083, 0.459138,
		-0.198471, -0.971936, 0.126288,
		30.121336, 31.550100, 53.271290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941765, 31.809708, 53.290295>,  <30.260265, 32.230453, 53.182888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941765, 31.809708, 53.290295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694155, 31.516317, 53.177990>,  <30.545589, 31.340284, 53.110607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694155, 31.516317, 53.177990>,  <30.941765, 31.809708, 53.290295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694155, 31.516317, 53.177990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581680, -0.187984, -0.791398,
		0.527691, -0.653206, 0.543014,
		-0.619024, -0.733474, -0.280759,
		30.508448, 31.296276, 53.093761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302801, 31.233362, 53.232285>,  <30.941765, 31.809708, 53.290295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302801, 31.233362, 53.232285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980404, 31.131472, 53.018559>,  <30.786966, 31.070337, 52.890324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980404, 31.131472, 53.018559>,  <31.302801, 31.233362, 53.232285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980404, 31.131472, 53.018559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591674, -0.372931, -0.714734,
		-0.017202, -0.892210, 0.451294,
		-0.805994, -0.254724, -0.534312,
		30.738605, 31.055054, 52.858265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353045, 30.550789, 53.064407>,  <31.302801, 31.233362, 53.232285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353045, 30.550789, 53.064407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091919, 30.672543, 52.786938>,  <30.935244, 30.745594, 52.620457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091919, 30.672543, 52.786938>,  <31.353045, 30.550789, 53.064407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091919, 30.672543, 52.786938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501178, -0.513110, -0.696806,
		-0.568028, -0.802539, 0.182414,
		-0.652813, 0.304383, -0.693676,
		30.896074, 30.763857, 52.578835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124872, 29.983105, 52.545563>,  <31.353045, 30.550789, 53.064407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124872, 29.983105, 52.545563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.068365, 30.330717, 52.355896>,  <31.034460, 30.539284, 52.242096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.068365, 30.330717, 52.355896>,  <31.124872, 29.983105, 52.545563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068365, 30.330717, 52.355896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368920, -0.398253, -0.839817,
		-0.918662, -0.293569, -0.264342,
		-0.141269, 0.869029, -0.474164,
		31.025984, 30.591425, 52.213646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053371, 29.720661, 51.982372>,  <31.124872, 29.983105, 52.545563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053371, 29.720661, 51.982372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.119278, 30.109022, 51.912861>,  <31.158821, 30.342039, 51.871155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.119278, 30.109022, 51.912861>,  <31.053371, 29.720661, 51.982372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119278, 30.109022, 51.912861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212217, -0.206958, -0.955056,
		-0.963232, 0.120481, -0.240141,
		0.164765, 0.970903, -0.173781,
		31.168707, 30.400293, 51.860725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.224922, 35.054661, 55.417320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.511471, 35.327938, 55.360676>,  <28.683399, 35.491905, 55.326691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.511471, 35.327938, 55.360676>,  <28.224922, 35.054661, 55.417320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511471, 35.327938, 55.360676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200378, 0.395863, 0.896181,
		0.668328, -0.613623, 0.420483,
		0.716371, 0.683198, -0.141610,
		28.726381, 35.532898, 55.318192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837694, 35.141087, 55.888790>,  <28.224922, 35.054661, 55.417320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837694, 35.141087, 55.888790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.691557, 35.480492, 55.735664>,  <28.603874, 35.684135, 55.643791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.691557, 35.480492, 55.735664>,  <28.837694, 35.141087, 55.888790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691557, 35.480492, 55.735664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275581, 0.294215, 0.915146,
		0.889146, 0.439837, 0.126346,
		-0.365343, 0.848517, -0.382811,
		28.581955, 35.735046, 55.620823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095463, 35.722954, 56.275352>,  <28.837694, 35.141087, 55.888790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095463, 35.722954, 56.275352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.754135, 35.840492, 56.103073>,  <28.549339, 35.911015, 55.999706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.754135, 35.840492, 56.103073>,  <29.095463, 35.722954, 56.275352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754135, 35.840492, 56.103073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391248, 0.185130, 0.901472,
		0.344632, 0.937752, -0.043006,
		-0.853319, 0.293850, -0.430695,
		28.498138, 35.928646, 55.973866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864342, 36.324566, 56.693222>,  <29.095463, 35.722954, 56.275352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864342, 36.324566, 56.693222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.534840, 36.224918, 56.489510>,  <28.337137, 36.165131, 56.367283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.534840, 36.224918, 56.489510>,  <28.864342, 36.324566, 56.693222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534840, 36.224918, 56.489510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560247, 0.495344, 0.663896,
		0.086878, 0.832210, -0.547611,
		-0.823757, -0.249120, -0.509278,
		28.287712, 36.150181, 56.336727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449287, 36.822056, 56.895664>,  <28.864342, 36.324566, 56.693222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449287, 36.822056, 56.895664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.180510, 36.558640, 56.760124>,  <28.019243, 36.400589, 56.678802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.180510, 36.558640, 56.760124>,  <28.449287, 36.822056, 56.895664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180510, 36.558640, 56.760124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684144, 0.376726, 0.624519,
		-0.283619, 0.651461, -0.703675,
		-0.671943, -0.658541, -0.338846,
		27.978928, 36.361076, 56.658470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772871, 37.178913, 56.847660>,  <28.449287, 36.822056, 56.895664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772871, 37.178913, 56.847660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.658733, 36.795547, 56.849430>,  <27.590250, 36.565529, 56.850491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.658733, 36.795547, 56.849430>,  <27.772871, 37.178913, 56.847660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658733, 36.795547, 56.849430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813717, 0.244698, 0.527245,
		-0.506401, 0.146847, -0.849702,
		-0.285345, -0.958415, 0.004423,
		27.573130, 36.508022, 56.850758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046350, 37.106575, 56.667473>,  <27.772871, 37.178913, 56.847660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046350, 37.106575, 56.667473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.143211, 36.778454, 56.874725>,  <27.201328, 36.581581, 56.999077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.143211, 36.778454, 56.874725>,  <27.046350, 37.106575, 56.667473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143211, 36.778454, 56.874725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739525, 0.189639, 0.645863,
		-0.628063, -0.539568, -0.560716,
		0.242153, -0.820307, 0.518130,
		27.215857, 36.532360, 57.030163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567228, 36.734600, 56.739605>,  <27.046350, 37.106575, 56.667473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567228, 36.734600, 56.739605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.772552, 36.577808, 57.044987>,  <26.895746, 36.483734, 57.228218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.772552, 36.577808, 57.044987>,  <26.567228, 36.734600, 56.739605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772552, 36.577808, 57.044987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813262, 0.061933, 0.578592,
		-0.274077, -0.917889, -0.286988,
		0.513309, -0.391975, 0.763458,
		26.926546, 36.460217, 57.274025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240297, 36.188354, 56.899426>,  <26.567228, 36.734600, 56.739605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240297, 36.188354, 56.899426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.424221, 36.326946, 57.226482>,  <26.534575, 36.410099, 57.422714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.424221, 36.326946, 57.226482>,  <26.240297, 36.188354, 56.899426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424221, 36.326946, 57.226482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880014, 0.054432, 0.471819,
		0.118970, -0.936477, 0.329935,
		0.459806, 0.346480, 0.817637,
		26.562162, 36.430889, 57.471775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820620, 35.935368, 57.407822>,  <26.240297, 36.188354, 56.899426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820620, 35.935368, 57.407822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.036661, 36.232296, 57.566437>,  <26.166286, 36.410454, 57.661606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.036661, 36.232296, 57.566437>,  <25.820620, 35.935368, 57.407822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036661, 36.232296, 57.566437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759864, 0.227574, 0.608947,
		0.361794, -0.630211, 0.686978,
		0.540103, 0.742324, 0.396540,
		26.198692, 36.454994, 57.685398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719826, 35.844913, 58.118221>,  <25.820620, 35.935368, 57.407822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719826, 35.844913, 58.118221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.847902, 36.222794, 58.089901>,  <25.924747, 36.449524, 58.072910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.847902, 36.222794, 58.089901>,  <25.719826, 35.844913, 58.118221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847902, 36.222794, 58.089901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827614, 0.315308, 0.464366,
		0.461012, -0.090089, 0.882809,
		0.320191, 0.944703, -0.070802,
		25.943960, 36.506203, 58.068661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468143, 36.154617, 58.739662>,  <25.719826, 35.844913, 58.118221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468143, 36.154617, 58.739662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.560745, 36.479046, 58.524788>,  <25.616306, 36.673702, 58.395863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.560745, 36.479046, 58.524788>,  <25.468143, 36.154617, 58.739662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560745, 36.479046, 58.524788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760414, 0.495275, 0.420087,
		0.606775, 0.311229, 0.731410,
		0.231505, 0.811073, -0.537183,
		25.630198, 36.722366, 58.363632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585951, 36.040070, 59.443878>,  <25.468143, 36.154617, 58.739662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585951, 36.040070, 59.443878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.943592, 35.901825, 59.329941>,  <26.158176, 35.818878, 59.261578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.943592, 35.901825, 59.329941>,  <25.585951, 36.040070, 59.443878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943592, 35.901825, 59.329941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243995, 0.909225, -0.337307,
		0.375559, 0.232089, 0.897268,
		0.894104, -0.345608, -0.284840,
		26.211823, 35.798141, 59.244488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178761, 35.507244, 59.398262>,  <25.585951, 36.040070, 59.443878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178761, 35.507244, 59.398262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.009411, 35.158535, 59.299656>,  <24.907801, 34.949310, 59.240494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.009411, 35.158535, 59.299656>,  <25.178761, 35.507244, 59.398262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009411, 35.158535, 59.299656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103473, 0.316853, -0.942814,
		0.900026, -0.373657, -0.224352,
		-0.423375, -0.871771, -0.246513,
		24.882399, 34.897003, 59.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530783, 35.252541, 58.783142>,  <25.178761, 35.507244, 59.398262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530783, 35.252541, 58.783142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.168736, 35.084831, 58.811333>,  <24.951508, 34.984203, 58.828247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.168736, 35.084831, 58.811333>,  <25.530783, 35.252541, 58.783142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168736, 35.084831, 58.811333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216351, 0.311514, -0.925284,
		0.365998, -0.852739, -0.372669,
		-0.905117, -0.419279, 0.070477,
		24.897200, 34.959049, 58.832478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693636, 34.542351, 59.217655>,  <25.530783, 35.252541, 58.783142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693636, 34.542351, 59.217655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.784082, 34.231747, 59.452908>,  <25.838350, 34.045383, 59.594059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.784082, 34.231747, 59.452908>,  <25.693636, 34.542351, 59.217655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784082, 34.231747, 59.452908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622869, -0.348952, -0.700191,
		0.748936, 0.524655, 0.404761,
		0.226117, -0.776511, 0.588134,
		25.851917, 33.998795, 59.629349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486675, 34.322132, 59.122002>,  <25.693636, 34.542351, 59.217655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486675, 34.322132, 59.122002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.295605, 34.015739, 59.294090>,  <26.180964, 33.831902, 59.397343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.295605, 34.015739, 59.294090>,  <26.486675, 34.322132, 59.122002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295605, 34.015739, 59.294090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425359, -0.630127, -0.649622,
		0.768698, -0.127308, 0.626814,
		-0.477675, -0.765984, 0.430226,
		26.152302, 33.785946, 59.423157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076767, 33.767521, 59.334095>,  <26.486675, 34.322132, 59.122002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076767, 33.767521, 59.334095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724195, 33.586220, 59.280956>,  <26.512653, 33.477440, 59.249073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724195, 33.586220, 59.280956>,  <27.076767, 33.767521, 59.334095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724195, 33.586220, 59.280956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427459, -0.645859, -0.632571,
		0.200914, -0.614352, 0.763024,
		-0.881427, -0.453254, -0.132848,
		26.459768, 33.450245, 59.241100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227396, 33.016994, 59.227802>,  <27.076767, 33.767521, 59.334095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227396, 33.016994, 59.227802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.849890, 33.081406, 59.112305>,  <26.623386, 33.120052, 59.043007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.849890, 33.081406, 59.112305>,  <27.227396, 33.016994, 59.227802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849890, 33.081406, 59.112305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167257, -0.520803, -0.837132,
		-0.285184, -0.838351, 0.464582,
		-0.943766, 0.161032, -0.288745,
		26.566759, 33.129715, 59.025681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863047, 32.397377, 59.088261>,  <27.227396, 33.016994, 59.227802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863047, 32.397377, 59.088261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.682388, 32.673580, 58.862263>,  <26.573994, 32.839302, 58.726665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.682388, 32.673580, 58.862263>,  <26.863047, 32.397377, 59.088261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682388, 32.673580, 58.862263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270652, -0.497380, -0.824233,
		-0.850157, -0.525175, 0.037750,
		-0.451643, 0.690510, -0.564991,
		26.546896, 32.880733, 58.692764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640154, 31.974566, 58.513878>,  <26.863047, 32.397377, 59.088261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640154, 31.974566, 58.513878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.638952, 32.352444, 58.382706>,  <26.638231, 32.579170, 58.304001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.638952, 32.352444, 58.382706>,  <26.640154, 31.974566, 58.513878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638952, 32.352444, 58.382706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523313, -0.277960, -0.805532,
		-0.852136, -0.174031, -0.493537,
		-0.003004, 0.944697, -0.327932,
		26.638050, 32.635853, 58.284325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436506, 31.974091, 57.827454>,  <26.640154, 31.974566, 58.513878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436506, 31.974091, 57.827454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.626619, 32.323727, 57.867596>,  <26.740686, 32.533508, 57.891682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.626619, 32.323727, 57.867596>,  <26.436506, 31.974091, 57.827454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626619, 32.323727, 57.867596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708869, -0.312865, -0.632155,
		-0.521163, 0.371592, -0.768316,
		0.475282, 0.874091, 0.100356,
		26.769203, 32.585953, 57.897701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498446, 32.301052, 57.084312>,  <26.436506, 31.974091, 57.827454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498446, 32.301052, 57.084312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.784588, 32.473789, 57.304050>,  <26.956272, 32.577431, 57.435894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.784588, 32.473789, 57.304050>,  <26.498446, 32.301052, 57.084312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784588, 32.473789, 57.304050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655523, -0.142475, -0.741613,
		-0.241988, 0.890627, -0.385000,
		0.715354, 0.431838, 0.549350,
		26.999193, 32.603340, 57.468857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915401, 32.793827, 56.641830>,  <26.498446, 32.301052, 57.084312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915401, 32.793827, 56.641830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.148172, 32.733994, 56.961578>,  <27.287834, 32.698093, 57.153427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.148172, 32.733994, 56.961578>,  <26.915401, 32.793827, 56.641830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148172, 32.733994, 56.961578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780328, -0.174101, -0.600647,
		0.229020, 0.973300, 0.015414,
		0.581926, -0.149588, 0.799366,
		27.322750, 32.689117, 57.201389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467445, 33.020966, 56.425106>,  <26.915401, 32.793827, 56.641830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467445, 33.020966, 56.425106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.600006, 32.812481, 56.739689>,  <27.679543, 32.687389, 56.928436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.600006, 32.812481, 56.739689>,  <27.467445, 33.020966, 56.425106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600006, 32.812481, 56.739689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870525, -0.152504, -0.467898,
		0.363811, 0.839692, 0.403187,
		0.331402, -0.521211, 0.786455,
		27.699427, 32.656116, 56.975624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110041, 33.285755, 56.618561>,  <27.467445, 33.020966, 56.425106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110041, 33.285755, 56.618561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.113903, 32.910934, 56.758183>,  <28.116220, 32.686043, 56.841957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.113903, 32.910934, 56.758183>,  <28.110041, 33.285755, 56.618561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113903, 32.910934, 56.758183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938046, -0.112426, -0.327765,
		0.346376, 0.330595, 0.877913,
		0.009657, -0.937053, 0.349055,
		28.116800, 32.629818, 56.862900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796608, 33.137550, 56.613762>,  <28.110041, 33.285755, 56.618561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796608, 33.137550, 56.613762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.635756, 32.782070, 56.701855>,  <28.539244, 32.568783, 56.754711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.635756, 32.782070, 56.701855>,  <28.796608, 33.137550, 56.613762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635756, 32.782070, 56.701855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793386, -0.458286, -0.400639,
		0.456978, 0.013621, 0.889374,
		-0.402131, -0.888700, 0.220234,
		28.515116, 32.515461, 56.767925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309374, 32.663692, 56.978397>,  <28.796608, 33.137550, 56.613762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309374, 32.663692, 56.978397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.036486, 32.469070, 56.760101>,  <28.872753, 32.352295, 56.629124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.036486, 32.469070, 56.760101>,  <29.309374, 32.663692, 56.978397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036486, 32.469070, 56.760101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730426, -0.420469, -0.538223,
		0.032409, -0.765811, 0.642248,
		-0.682223, -0.486558, -0.545741,
		28.831820, 32.323105, 56.596378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725012, 32.185505, 57.555172>,  <29.309374, 32.663692, 56.978397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725012, 32.185505, 57.555172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.028255, 32.424255, 57.660248>,  <30.210201, 32.567505, 57.723293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.028255, 32.424255, 57.660248>,  <29.725012, 32.185505, 57.555172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028255, 32.424255, 57.660248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493652, 0.262051, 0.829239,
		0.426117, -0.758331, 0.493314,
		0.758111, 0.596878, 0.262687,
		30.255688, 32.603317, 57.739056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748974, 32.129559, 58.279629>,  <29.725012, 32.185505, 57.555172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748974, 32.129559, 58.279629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.927574, 32.471764, 58.174755>,  <30.034735, 32.677086, 58.111832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.927574, 32.471764, 58.174755>,  <29.748974, 32.129559, 58.279629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927574, 32.471764, 58.174755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439594, 0.464944, 0.768495,
		0.779355, -0.227881, 0.583675,
		0.446501, 0.855510, -0.262182,
		30.061525, 32.728416, 58.096100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171621, 32.408173, 58.853596>,  <29.748974, 32.129559, 58.279629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171621, 32.408173, 58.853596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.076733, 32.708187, 58.606640>,  <30.019800, 32.888195, 58.458466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.076733, 32.708187, 58.606640>,  <30.171621, 32.408173, 58.853596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076733, 32.708187, 58.606640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429452, 0.489089, 0.759185,
		0.871377, 0.445232, 0.206085,
		-0.237220, 0.750040, -0.617387,
		30.005566, 32.933201, 58.421425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123512, 32.994453, 59.398056>,  <30.171621, 32.408173, 58.853596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123512, 32.994453, 59.398056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932928, 33.115253, 59.067776>,  <29.818579, 33.187733, 58.869606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932928, 33.115253, 59.067776>,  <30.123512, 32.994453, 59.398056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932928, 33.115253, 59.067776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488447, 0.689962, 0.534203,
		0.731032, 0.657837, -0.181227,
		-0.476458, 0.301999, -0.825702,
		29.789991, 33.205853, 58.820065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262066, 33.718151, 59.475018>,  <30.123512, 32.994453, 59.398056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262066, 33.718151, 59.475018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951746, 33.625263, 59.240341>,  <29.765554, 33.569530, 59.099533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951746, 33.625263, 59.240341>,  <30.262066, 33.718151, 59.475018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951746, 33.625263, 59.240341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587737, 0.604241, 0.538012,
		0.229568, 0.762211, -0.605254,
		-0.775799, -0.232220, -0.586694,
		29.719006, 33.555595, 59.064331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919106, 34.347527, 59.413452>,  <30.262066, 33.718151, 59.475018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919106, 34.347527, 59.413452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.633593, 34.095703, 59.290703>,  <29.462284, 33.944611, 59.217052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.633593, 34.095703, 59.290703>,  <29.919106, 34.347527, 59.413452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633593, 34.095703, 59.290703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672992, 0.495233, 0.549387,
		-0.193895, 0.598669, -0.777175,
		-0.713784, -0.629555, -0.306876,
		29.419458, 33.906837, 59.198639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357882, 34.790112, 59.213310>,  <29.919106, 34.347527, 59.413452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357882, 34.790112, 59.213310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.221380, 34.421410, 59.286980>,  <29.139479, 34.200188, 59.331181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.221380, 34.421410, 59.286980>,  <29.357882, 34.790112, 59.213310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221380, 34.421410, 59.286980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676861, 0.376924, 0.632288,
		-0.652230, 0.091114, -0.752525,
		-0.341255, -0.921752, 0.184170,
		29.119003, 34.144882, 59.342232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193251, 35.550377, 59.300423>,  <29.357882, 34.790112, 59.213310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193251, 35.550377, 59.300423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484838, 35.810360, 59.386368>,  <29.659790, 35.966351, 59.437935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484838, 35.810360, 59.386368>,  <29.193251, 35.550377, 59.300423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484838, 35.810360, 59.386368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203403, 0.094045, -0.974568,
		-0.653630, 0.754133, -0.063646,
		0.728968, 0.649953, 0.214864,
		29.703529, 36.005344, 59.450829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231945, 35.944645, 58.744576>,  <29.193251, 35.550377, 59.300423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231945, 35.944645, 58.744576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.594839, 36.021889, 58.894047>,  <29.812574, 36.068237, 58.983730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.594839, 36.021889, 58.894047>,  <29.231945, 35.944645, 58.744576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594839, 36.021889, 58.894047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392237, -0.067564, -0.917380,
		-0.151912, 0.978848, -0.137042,
		0.907234, 0.193114, 0.373676,
		29.867010, 36.079823, 59.006149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497774, 36.451790, 58.289845>,  <29.231945, 35.944645, 58.744576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497774, 36.451790, 58.289845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.806660, 36.268196, 58.465576>,  <29.991991, 36.158039, 58.571014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.806660, 36.268196, 58.465576>,  <29.497774, 36.451790, 58.289845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806660, 36.268196, 58.465576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459213, -0.074677, -0.885182,
		0.439096, 0.885298, 0.153107,
		0.772216, -0.458988, 0.439331,
		30.038324, 36.130501, 58.597374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038790, 36.728836, 57.895462>,  <29.497774, 36.451790, 58.289845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038790, 36.728836, 57.895462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222620, 36.427174, 58.083092>,  <30.332918, 36.246174, 58.195671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222620, 36.427174, 58.083092>,  <30.038790, 36.728836, 57.895462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222620, 36.427174, 58.083092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701484, -0.015698, -0.712512,
		0.544712, 0.656503, 0.521816,
		0.459575, -0.754160, 0.469077,
		30.360493, 36.200924, 58.223816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774662, 36.926872, 57.770329>,  <30.038790, 36.728836, 57.895462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774662, 36.926872, 57.770329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788910, 36.545654, 57.890625>,  <30.797459, 36.316925, 57.962803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788910, 36.545654, 57.890625>,  <30.774662, 36.926872, 57.770329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788910, 36.545654, 57.890625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822579, -0.142936, -0.550394,
		0.567534, 0.266989, 0.778859,
		0.035622, -0.953041, 0.300740,
		30.799597, 36.259743, 57.980846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511459, 36.810696, 57.772682>,  <30.774662, 36.926872, 57.770329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511459, 36.810696, 57.772682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.341331, 36.449368, 57.795029>,  <31.239256, 36.232571, 57.808437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.341331, 36.449368, 57.795029>,  <31.511459, 36.810696, 57.772682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341331, 36.449368, 57.795029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640641, -0.344094, -0.686424,
		0.639283, -0.256157, 0.725052,
		-0.425318, -0.903318, 0.055869,
		31.213736, 36.178371, 57.811790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006691, 36.264545, 57.971500>,  <31.511459, 36.810696, 57.772682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006691, 36.264545, 57.971500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730900, 36.063808, 57.762589>,  <31.565426, 35.943367, 57.637241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730900, 36.063808, 57.762589>,  <32.006691, 36.264545, 57.971500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730900, 36.063808, 57.762589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689708, -0.234687, -0.685000,
		0.221193, -0.832509, 0.507939,
		-0.689475, -0.501847, -0.522278,
		31.524057, 35.913254, 57.605904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<25.842722, 39.123112, 58.355179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587751, 39.172333, 58.659428>,  <25.434769, 39.201866, 58.841976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587751, 39.172333, 58.659428>,  <25.842722, 39.123112, 58.355179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587751, 39.172333, 58.659428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553908, -0.759391, -0.341337,
		0.535608, -0.638892, 0.552215,
		-0.637425, 0.123054, 0.760623,
		25.396524, 39.209248, 58.887615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676706, 39.204742, 58.364277>,  <25.842722, 39.123112, 58.355179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676706, 39.204742, 58.364277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388660, 38.975109, 58.208397>,  <26.215832, 38.837330, 58.114868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388660, 38.975109, 58.208397>,  <26.676706, 39.204742, 58.364277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388660, 38.975109, 58.208397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538094, -0.107475, -0.836005,
		0.438049, -0.811716, 0.386303,
		-0.720116, -0.574079, -0.389701,
		26.172626, 38.802887, 58.091488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005621, 38.783226, 58.016113>,  <26.676706, 39.204742, 58.364277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005621, 38.783226, 58.016113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641657, 38.764202, 57.851288>,  <26.423279, 38.752789, 57.752392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641657, 38.764202, 57.851288>,  <27.005621, 38.783226, 58.016113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641657, 38.764202, 57.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409989, 0.047765, -0.910839,
		0.063012, -0.997725, -0.023958,
		-0.909911, -0.047571, -0.412067,
		26.368683, 38.749935, 57.727669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071571, 38.367851, 57.532413>,  <27.005621, 38.783226, 58.016113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071571, 38.367851, 57.532413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734058, 38.553703, 57.424965>,  <26.531551, 38.665215, 57.360497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734058, 38.553703, 57.424965>,  <27.071571, 38.367851, 57.532413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734058, 38.553703, 57.424965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402053, 0.215683, -0.889851,
		-0.355512, -0.858838, -0.368794,
		-0.843780, 0.464628, -0.268620,
		26.480925, 38.693092, 57.344379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858212, 38.072388, 56.873459>,  <27.071571, 38.367851, 57.532413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858212, 38.072388, 56.873459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704319, 38.441269, 56.889057>,  <26.611984, 38.662598, 56.898415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704319, 38.441269, 56.889057>,  <26.858212, 38.072388, 56.873459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704319, 38.441269, 56.889057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473387, 0.233402, -0.849369,
		-0.792394, -0.308319, -0.526357,
		-0.384730, 0.922205, 0.038992,
		26.588900, 38.717930, 56.900753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633600, 38.209488, 56.189049>,  <26.858212, 38.072388, 56.873459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633600, 38.209488, 56.189049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649000, 38.568844, 56.364052>,  <26.658239, 38.784458, 56.469055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649000, 38.568844, 56.364052>,  <26.633600, 38.209488, 56.189049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649000, 38.568844, 56.364052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641730, 0.313387, -0.699980,
		-0.765964, 0.307713, -0.564457,
		0.038499, 0.898388, 0.437511,
		26.660549, 38.838360, 56.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433853, 38.706856, 55.633011>,  <26.633600, 38.209488, 56.189049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433853, 38.706856, 55.633011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630486, 38.938663, 55.893013>,  <26.748465, 39.077747, 56.049015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630486, 38.938663, 55.893013>,  <26.433853, 38.706856, 55.633011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630486, 38.938663, 55.893013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534305, 0.388688, -0.750626,
		-0.687651, 0.716294, -0.118568,
		0.491583, 0.579521, 0.650001,
		26.777960, 39.112518, 56.088013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545034, 39.369801, 55.200794>,  <26.433853, 38.706856, 55.633011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545034, 39.369801, 55.200794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804733, 39.373230, 55.505005>,  <26.960552, 39.375286, 55.687531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804733, 39.373230, 55.505005>,  <26.545034, 39.369801, 55.200794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804733, 39.373230, 55.505005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668526, 0.470414, -0.576007,
		-0.362700, 0.882404, 0.299686,
		0.649247, 0.008570, 0.760529,
		26.999508, 39.375801, 55.733162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859554, 40.101833, 55.240658>,  <26.545034, 39.369801, 55.200794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859554, 40.101833, 55.240658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117649, 39.846733, 55.408916>,  <27.272505, 39.693672, 55.509872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117649, 39.846733, 55.408916>,  <26.859554, 40.101833, 55.240658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117649, 39.846733, 55.408916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752768, 0.436718, -0.492562,
		0.130424, 0.634472, 0.761863,
		0.645236, -0.637748, 0.420651,
		27.311220, 39.655407, 55.535110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432596, 40.469654, 55.224888>,  <26.859554, 40.101833, 55.240658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432596, 40.469654, 55.224888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574200, 40.115974, 55.346790>,  <27.659163, 39.903767, 55.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574200, 40.115974, 55.346790>,  <27.432596, 40.469654, 55.224888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574200, 40.115974, 55.346790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832101, 0.149021, -0.534228,
		0.426948, 0.442707, 0.788496,
		0.354009, -0.884196, 0.304753,
		27.680403, 39.850716, 55.438217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234451, 40.582111, 55.460140>,  <27.432596, 40.469654, 55.224888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234451, 40.582111, 55.460140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150696, 40.211918, 55.333881>,  <28.100443, 39.989803, 55.258125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150696, 40.211918, 55.333881>,  <28.234451, 40.582111, 55.460140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150696, 40.211918, 55.333881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692623, 0.087490, -0.715974,
		0.690239, -0.368542, 0.622693,
		-0.209387, -0.925485, -0.315650,
		28.087879, 39.934273, 55.239185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909990, 40.261398, 55.480534>,  <28.234451, 40.582111, 55.460140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909990, 40.261398, 55.480534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650677, 40.065311, 55.247498>,  <28.495089, 39.947659, 55.107677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650677, 40.065311, 55.247498>,  <28.909990, 40.261398, 55.480534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650677, 40.065311, 55.247498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671650, -0.007799, -0.740828,
		0.358625, -0.871564, 0.334312,
		-0.648286, -0.490221, -0.582589,
		28.456190, 39.918247, 55.072720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398270, 39.990513, 56.053223>,  <28.909990, 40.261398, 55.480534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398270, 39.990513, 56.053223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684723, 39.885246, 56.311802>,  <29.856594, 39.822086, 56.466949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684723, 39.885246, 56.311802>,  <29.398270, 39.990513, 56.053223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684723, 39.885246, 56.311802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643125, 0.111077, 0.757663,
		-0.271195, -0.958335, -0.089702,
		0.716131, -0.263164, 0.646453,
		29.899563, 39.806297, 56.505737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002016, 39.531620, 56.474995>,  <29.398270, 39.990513, 56.053223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002016, 39.531620, 56.474995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323891, 39.659004, 56.675419>,  <29.517015, 39.735435, 56.795673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323891, 39.659004, 56.675419>,  <29.002016, 39.531620, 56.474995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323891, 39.659004, 56.675419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547506, 0.071679, 0.833726,
		0.229596, -0.945221, 0.232040,
		0.804688, 0.318464, 0.501057,
		29.565298, 39.754543, 56.825737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040581, 39.115318, 57.037308>,  <29.002016, 39.531620, 56.474995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040581, 39.115318, 57.037308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254738, 39.438763, 57.134884>,  <29.383232, 39.632828, 57.193432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254738, 39.438763, 57.134884>,  <29.040581, 39.115318, 57.037308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254738, 39.438763, 57.134884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443248, 0.023146, 0.896100,
		0.718946, -0.587894, 0.370805,
		0.535395, 0.808607, 0.243942,
		29.415356, 39.681343, 57.208065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255550, 38.967686, 57.724281>,  <29.040581, 39.115318, 57.037308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255550, 38.967686, 57.724281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297380, 39.364353, 57.694183>,  <29.322477, 39.602352, 57.676125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297380, 39.364353, 57.694183>,  <29.255550, 38.967686, 57.724281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297380, 39.364353, 57.694183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444303, 0.114271, 0.888559,
		0.889752, -0.059490, 0.452551,
		0.104574, 0.991667, -0.075242,
		29.328753, 39.661854, 57.671612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683804, 39.138924, 58.384174>,  <29.255550, 38.967686, 57.724281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683804, 39.138924, 58.384174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517782, 39.492710, 58.298893>,  <29.418169, 39.704983, 58.247726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517782, 39.492710, 58.298893>,  <29.683804, 39.138924, 58.384174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517782, 39.492710, 58.298893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265557, 0.106359, 0.958211,
		0.870179, 0.454324, 0.190731,
		-0.415052, 0.884464, -0.213200,
		29.393267, 39.758049, 58.234932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883570, 39.662128, 58.873131>,  <29.683804, 39.138924, 58.384174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883570, 39.662128, 58.873131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545963, 39.787598, 58.699120>,  <29.343399, 39.862881, 58.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545963, 39.787598, 58.699120>,  <29.883570, 39.662128, 58.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545963, 39.787598, 58.699120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293803, 0.408168, 0.864337,
		0.448686, 0.857325, -0.252340,
		-0.844015, 0.313677, -0.435024,
		29.292759, 39.881702, 58.568611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746618, 40.208721, 59.410675>,  <29.883570, 39.662128, 58.873131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746618, 40.208721, 59.410675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418581, 40.117744, 59.200642>,  <29.221758, 40.063160, 59.074619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418581, 40.117744, 59.200642>,  <29.746618, 40.208721, 59.410675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418581, 40.117744, 59.200642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546011, 0.036447, 0.836985,
		-0.171224, 0.973110, -0.154074,
		-0.820094, -0.227438, -0.525088,
		29.172552, 40.049515, 59.043114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274067, 40.656628, 59.687145>,  <29.746618, 40.208721, 59.410675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274067, 40.656628, 59.687145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056679, 40.396782, 59.474487>,  <28.926247, 40.240875, 59.346893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056679, 40.396782, 59.474487>,  <29.274067, 40.656628, 59.687145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056679, 40.396782, 59.474487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607484, -0.132716, 0.783167,
		-0.579314, 0.748590, -0.322503,
		-0.543469, -0.649615, -0.531640,
		28.893639, 40.201897, 59.314995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561932, 40.896664, 59.751873>,  <29.274067, 40.656628, 59.687145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561932, 40.896664, 59.751873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562666, 40.502731, 59.682465>,  <28.563107, 40.266373, 59.640820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562666, 40.502731, 59.682465>,  <28.561932, 40.896664, 59.751873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562666, 40.502731, 59.682465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474921, -0.153559, 0.866527,
		-0.880026, 0.080816, -0.467998,
		0.001836, -0.984829, -0.173517,
		28.563217, 40.207283, 59.630409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879845, 40.715370, 59.960567>,  <28.561932, 40.896664, 59.751873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879845, 40.715370, 59.960567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073647, 40.365582, 59.970062>,  <28.189928, 40.155708, 59.975761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073647, 40.365582, 59.970062>,  <27.879845, 40.715370, 59.960567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073647, 40.365582, 59.970062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452425, -0.227256, 0.862361,
		-0.748711, -0.428557, -0.505737,
		0.484503, -0.874467, 0.023741,
		28.218998, 40.103241, 59.977184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455551, 40.115448, 60.189404>,  <27.879845, 40.715370, 59.960567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455551, 40.115448, 60.189404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820944, 39.960110, 60.237968>,  <28.040180, 39.866909, 60.267109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820944, 39.960110, 60.237968>,  <27.455551, 40.115448, 60.189404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820944, 39.960110, 60.237968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274074, -0.366733, 0.889039,
		-0.300720, -0.845400, -0.441437,
		0.913483, -0.388338, 0.121419,
		28.094988, 39.843605, 60.274395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322727, 39.504086, 60.493359>,  <27.455551, 40.115448, 60.189404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322727, 39.504086, 60.493359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707952, 39.581066, 60.568695>,  <27.939087, 39.627254, 60.613895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707952, 39.581066, 60.568695>,  <27.322727, 39.504086, 60.493359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707952, 39.581066, 60.568695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107902, -0.365025, 0.924724,
		0.246710, -0.910890, -0.330777,
		0.963063, 0.192447, 0.188342,
		27.996872, 39.638802, 60.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450125, 38.953190, 60.832100>,  <27.322727, 39.504086, 60.493359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450125, 38.953190, 60.832100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728054, 39.223972, 60.929211>,  <27.894812, 39.386444, 60.987476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728054, 39.223972, 60.929211>,  <27.450125, 38.953190, 60.832100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728054, 39.223972, 60.929211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079338, -0.263366, 0.961428,
		0.714789, -0.687286, -0.129285,
		0.694825, 0.676961, 0.242779,
		27.936502, 39.427059, 61.002045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144142, 38.586254, 61.151154>,  <27.450125, 38.953190, 60.832100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144142, 38.586254, 61.151154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082367, 38.963497, 61.268929>,  <28.045301, 39.189842, 61.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082367, 38.963497, 61.268929>,  <28.144142, 38.586254, 61.151154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082367, 38.963497, 61.268929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214065, -0.258989, 0.941860,
		0.964534, 0.208486, -0.161890,
		-0.154437, 0.943111, 0.294433,
		28.036036, 39.246429, 61.357258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496702, 38.017982, 61.494774>,  <28.144142, 38.586254, 61.151154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496702, 38.017982, 61.494774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597866, 37.692192, 61.703640>,  <28.658566, 37.496716, 61.828960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597866, 37.692192, 61.703640>,  <28.496702, 38.017982, 61.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597866, 37.692192, 61.703640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527839, -0.336154, -0.779991,
		0.810816, 0.472890, 0.344896,
		0.252912, -0.814479, 0.522169,
		28.673740, 37.447849, 61.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313265, 37.819904, 61.556469>,  <28.496702, 38.017982, 61.494774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313265, 37.819904, 61.556469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129230, 37.465454, 61.578739>,  <29.018810, 37.252785, 61.592102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129230, 37.465454, 61.578739>,  <29.313265, 37.819904, 61.556469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129230, 37.465454, 61.578739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575032, -0.345161, -0.741756,
		0.676507, -0.309257, 0.668355,
		-0.460083, -0.886129, 0.055671,
		28.991205, 37.199615, 61.595440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818857, 37.314800, 61.490570>,  <29.313265, 37.819904, 61.556469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818857, 37.314800, 61.490570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492966, 37.093784, 61.420235>,  <29.297432, 36.961174, 61.378033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492966, 37.093784, 61.420235>,  <29.818857, 37.314800, 61.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492966, 37.093784, 61.420235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487307, -0.488112, -0.724071,
		0.314248, -0.675608, 0.666934,
		-0.814727, -0.552540, -0.175841,
		29.248549, 36.928024, 61.367481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017982, 36.649258, 61.358803>,  <29.818857, 37.314800, 61.490570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017982, 36.649258, 61.358803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661922, 36.636147, 61.177010>,  <29.448286, 36.628281, 61.067932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661922, 36.636147, 61.177010>,  <30.017982, 36.649258, 61.358803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661922, 36.636147, 61.177010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406988, -0.505752, -0.760642,
		-0.204921, -0.862056, 0.463537,
		-0.890151, -0.032782, -0.454486,
		29.394876, 36.626312, 61.040665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015495, 36.015682, 61.069317>,  <30.017982, 36.649258, 61.358803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015495, 36.015682, 61.069317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766768, 36.254265, 60.866306>,  <29.617531, 36.397415, 60.744499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766768, 36.254265, 60.866306>,  <30.015495, 36.015682, 61.069317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766768, 36.254265, 60.866306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335742, -0.382450, -0.860819,
		-0.707544, -0.705670, 0.037560,
		-0.621819, 0.596457, -0.507523,
		29.580221, 36.433201, 60.714050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618382, 35.541771, 60.684052>,  <30.015495, 36.015682, 61.069317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618382, 35.541771, 60.684052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631105, 35.891041, 60.489506>,  <29.638741, 36.100605, 60.372780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631105, 35.891041, 60.489506>,  <29.618382, 35.541771, 60.684052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631105, 35.891041, 60.489506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268065, -0.476235, -0.837461,
		-0.962875, -0.103736, -0.249218,
		0.031811, 0.873177, -0.486363,
		29.640650, 36.152992, 60.343597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443382, 35.311481, 60.019089>,  <29.618382, 35.541771, 60.684052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443382, 35.311481, 60.019089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590525, 35.677334, 59.952003>,  <29.678810, 35.896847, 59.911751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590525, 35.677334, 59.952003>,  <29.443382, 35.311481, 60.019089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590525, 35.677334, 59.952003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175071, -0.245259, -0.953519,
		-0.913253, 0.321397, -0.250346,
		0.367858, 0.914632, -0.167717,
		29.700882, 35.951725, 59.901688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884369, 34.927845, 60.293770>,  <29.443382, 35.311481, 60.019089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884369, 34.927845, 60.293770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981810, 34.575794, 60.130783>,  <29.040274, 34.364563, 60.032990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981810, 34.575794, 60.130783>,  <28.884369, 34.927845, 60.293770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981810, 34.575794, 60.130783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646989, -0.460450, 0.607775,
		-0.722540, 0.115572, -0.681601,
		0.243602, -0.880130, -0.407467,
		29.054890, 34.311756, 60.008541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292509, 34.708527, 60.273262>,  <28.884369, 34.927845, 60.293770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292509, 34.708527, 60.273262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516636, 34.378700, 60.241932>,  <28.651112, 34.180805, 60.223133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516636, 34.378700, 60.241932>,  <28.292509, 34.708527, 60.273262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516636, 34.378700, 60.241932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561272, -0.447536, 0.696193,
		-0.609113, -0.346125, -0.713568,
		0.560317, -0.824566, -0.078330,
		28.684731, 34.131332, 60.218433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873081, 34.122688, 60.179256>,  <28.292509, 34.708527, 60.273262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873081, 34.122688, 60.179256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203276, 33.959923, 60.335712>,  <28.401392, 33.862263, 60.429588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203276, 33.959923, 60.335712>,  <27.873081, 34.122688, 60.179256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203276, 33.959923, 60.335712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559569, -0.499299, 0.661501,
		-0.073878, -0.764931, -0.639861,
		0.825484, -0.406917, 0.391145,
		28.450920, 33.837849, 60.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737234, 33.428005, 60.207748>,  <27.873081, 34.122688, 60.179256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737234, 33.428005, 60.207748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049961, 33.451378, 60.456055>,  <28.237597, 33.465401, 60.605038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049961, 33.451378, 60.456055>,  <27.737234, 33.428005, 60.207748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049961, 33.451378, 60.456055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476316, -0.586493, 0.655095,
		0.402351, -0.807844, -0.430698,
		0.781816, 0.058429, 0.620765,
		28.284506, 33.468906, 60.642284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924244, 32.732632, 60.313122>,  <27.737234, 33.428005, 60.207748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924244, 32.732632, 60.313122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074492, 32.939045, 60.621048>,  <28.164640, 33.062893, 60.805805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074492, 32.939045, 60.621048>,  <27.924244, 32.732632, 60.313122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074492, 32.939045, 60.621048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506514, -0.581306, 0.636810,
		0.776115, -0.629122, 0.043028,
		0.375619, 0.516032, 0.769819,
		28.187178, 33.093853, 60.851994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085062, 32.242817, 60.907223>,  <27.924244, 32.732632, 60.313122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085062, 32.242817, 60.907223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064459, 32.596985, 61.091999>,  <28.052097, 32.809486, 61.202866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064459, 32.596985, 61.091999>,  <28.085062, 32.242817, 60.907223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064459, 32.596985, 61.091999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495411, -0.424280, 0.757994,
		0.867130, -0.189804, 0.460499,
		-0.051510, 0.885415, 0.461937,
		28.049006, 32.862610, 61.230579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237568, 32.105564, 61.660301>,  <28.085062, 32.242817, 60.907223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237568, 32.105564, 61.660301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056492, 32.462151, 61.667923>,  <27.947845, 32.676102, 61.672497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056492, 32.462151, 61.667923>,  <28.237568, 32.105564, 61.660301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056492, 32.462151, 61.667923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558223, -0.300000, 0.773555,
		0.695311, 0.339548, 0.633443,
		-0.452692, 0.891464, 0.019050,
		27.920685, 32.729591, 61.673637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252144, 32.344635, 62.362415>,  <28.237568, 32.105564, 61.660301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252144, 32.344635, 62.362415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942503, 32.541225, 62.202805>,  <27.756720, 32.659180, 62.107037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942503, 32.541225, 62.202805>,  <28.252144, 32.344635, 62.362415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942503, 32.541225, 62.202805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601916, -0.376123, 0.704435,
		0.196126, 0.785485, 0.586982,
		-0.774100, 0.491472, -0.399029,
		27.710274, 32.688667, 62.083096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869747, 32.703037, 62.994221>,  <28.252144, 32.344635, 62.362415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869747, 32.703037, 62.994221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629408, 32.662457, 62.677063>,  <27.485205, 32.638107, 62.486767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629408, 32.662457, 62.677063>,  <27.869747, 32.703037, 62.994221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629408, 32.662457, 62.677063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712741, -0.381092, 0.588871,
		-0.361911, 0.918954, 0.156667,
		-0.600850, -0.101456, -0.792898,
		27.449154, 32.632019, 62.439194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.948311, 34.066479, 47.345463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010307, 34.449577, 47.442371>,  <37.047504, 34.679436, 47.500519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010307, 34.449577, 47.442371>,  <36.948311, 34.066479, 47.345463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010307, 34.449577, 47.442371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915305, 0.046937, 0.400016,
		0.371743, -0.283756, 0.883906,
		0.154994, 0.957747, 0.242275,
		37.056805, 34.736900, 47.515053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865673, 34.086262, 48.132904>,  <36.948311, 34.066479, 47.345463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865673, 34.086262, 48.132904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814236, 34.434128, 47.942261>,  <36.783371, 34.642845, 47.827877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814236, 34.434128, 47.942261>,  <36.865673, 34.086262, 48.132904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814236, 34.434128, 47.942261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927737, 0.064303, 0.367653,
		0.350381, 0.489444, 0.798547,
		-0.128597, 0.869661, -0.476606,
		36.775658, 34.695026, 47.799278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572498, 34.539688, 48.672943>,  <36.865673, 34.086262, 48.132904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572498, 34.539688, 48.672943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500870, 34.716026, 48.321129>,  <36.457893, 34.821831, 48.110039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500870, 34.716026, 48.321129>,  <36.572498, 34.539688, 48.672943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500870, 34.716026, 48.321129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958804, 0.122180, 0.256452,
		0.220518, 0.889227, 0.400808,
		-0.179074, 0.440848, -0.879537,
		36.447147, 34.848282, 48.057266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306110, 35.254616, 48.741508>,  <36.572498, 34.539688, 48.672943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306110, 35.254616, 48.741508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202000, 35.140488, 48.372543>,  <36.139534, 35.072010, 48.151165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202000, 35.140488, 48.372543>,  <36.306110, 35.254616, 48.741508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202000, 35.140488, 48.372543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963651, 0.136385, 0.229728,
		0.060256, 0.948678, -0.310451,
		-0.260278, -0.285324, -0.922413,
		36.123917, 35.054890, 48.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677876, 35.728489, 48.530197>,  <36.306110, 35.254616, 48.741508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677876, 35.728489, 48.530197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657101, 35.427841, 48.267178>,  <35.644638, 35.247452, 48.109364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657101, 35.427841, 48.267178>,  <35.677876, 35.728489, 48.530197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657101, 35.427841, 48.267178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971408, -0.114723, 0.207857,
		-0.231665, 0.649546, -0.724169,
		-0.051934, -0.751617, -0.657552,
		35.641521, 35.202354, 48.069912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046700, 35.919731, 48.086620>,  <35.677876, 35.728489, 48.530197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046700, 35.919731, 48.086620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113640, 35.527615, 48.044632>,  <35.153805, 35.292343, 48.019440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113640, 35.527615, 48.044632>,  <35.046700, 35.919731, 48.086620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113640, 35.527615, 48.044632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972704, -0.181528, 0.144549,
		-0.160756, 0.077913, -0.983914,
		0.167346, -0.980294, -0.104968,
		35.163845, 35.233528, 48.013142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471516, 35.734623, 47.788380>,  <35.046700, 35.919731, 48.086620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471516, 35.734623, 47.788380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604977, 35.397121, 47.956551>,  <34.685051, 35.194622, 48.057453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.604977, 35.397121, 47.956551>,  <34.471516, 35.734623, 47.788380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604977, 35.397121, 47.956551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936465, -0.245454, 0.250573,
		-0.108224, -0.477322, -0.872038,
		0.333649, -0.843751, 0.420431,
		34.705070, 35.143997, 48.082680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095341, 35.145874, 47.493744>,  <34.471516, 35.734623, 47.788380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095341, 35.145874, 47.493744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.233475, 34.994110, 47.837090>,  <34.316357, 34.903053, 48.043098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.233475, 34.994110, 47.837090>,  <34.095341, 35.145874, 47.493744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233475, 34.994110, 47.837090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861635, -0.490655, 0.129777,
		0.371922, -0.784414, -0.496354,
		0.345338, -0.379409, 0.858365,
		34.337074, 34.880287, 48.094601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959454, 34.420582, 47.519192>,  <34.095341, 35.145874, 47.493744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959454, 34.420582, 47.519192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.011089, 34.539112, 47.897720>,  <34.042072, 34.610229, 48.124836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.011089, 34.539112, 47.897720>,  <33.959454, 34.420582, 47.519192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011089, 34.539112, 47.897720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821627, -0.502352, 0.269390,
		0.555215, -0.812300, 0.178622,
		0.129094, 0.296330, 0.946321,
		34.049816, 34.628010, 48.181618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767200, 33.850712, 47.824867>,  <33.959454, 34.420582, 47.519192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767200, 33.850712, 47.824867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.757370, 34.105019, 48.133465>,  <33.751472, 34.257603, 48.318623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.757370, 34.105019, 48.133465>,  <33.767200, 33.850712, 47.824867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757370, 34.105019, 48.133465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786093, -0.489067, 0.377982,
		0.617619, -0.597173, 0.511793,
		-0.024580, 0.635766, 0.771491,
		33.749996, 34.295750, 48.364914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669563, 33.438354, 48.404408>,  <33.767200, 33.850712, 47.824867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669563, 33.438354, 48.404408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.550194, 33.784653, 48.565125>,  <33.478573, 33.992432, 48.661556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.550194, 33.784653, 48.565125>,  <33.669563, 33.438354, 48.404408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550194, 33.784653, 48.565125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768231, -0.467687, 0.437139,
		0.566362, -0.178216, 0.804657,
		-0.298422, 0.865741, 0.401791,
		33.460667, 34.044376, 48.685661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714321, 33.298233, 49.113197>,  <33.669563, 33.438354, 48.404408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714321, 33.298233, 49.113197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471611, 33.615143, 49.087509>,  <33.325985, 33.805290, 49.072098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471611, 33.615143, 49.087509>,  <33.714321, 33.298233, 49.113197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471611, 33.615143, 49.087509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784884, -0.584424, 0.205925,
		0.125619, 0.175353, 0.976459,
		-0.606776, 0.792275, -0.064217,
		33.289577, 33.852825, 49.068245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262814, 33.332806, 49.613422>,  <33.714321, 33.298233, 49.113197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262814, 33.332806, 49.613422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067600, 33.539200, 49.331833>,  <32.950474, 33.663036, 49.162880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067600, 33.539200, 49.331833>,  <33.262814, 33.332806, 49.613422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067600, 33.539200, 49.331833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810237, -0.567738, 0.145569,
		-0.324562, 0.641429, 0.695146,
		-0.488033, 0.515986, -0.703976,
		32.921192, 33.693996, 49.120640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668617, 33.643673, 49.867790>,  <33.262814, 33.332806, 49.613422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668617, 33.643673, 49.867790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.588360, 33.578281, 49.481419>,  <32.540203, 33.539047, 49.249596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.588360, 33.578281, 49.481419>,  <32.668617, 33.643673, 49.867790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588360, 33.578281, 49.481419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954532, -0.189275, 0.230313,
		-0.220476, 0.968221, -0.118064,
		-0.200648, -0.163475, -0.965928,
		32.528164, 33.529240, 49.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228580, 32.987682, 49.859745>,  <32.668617, 33.643673, 49.867790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228580, 32.987682, 49.859745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.279984, 33.186054, 50.203266>,  <32.310825, 33.305077, 50.409378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.279984, 33.186054, 50.203266>,  <32.228580, 32.987682, 49.859745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279984, 33.186054, 50.203266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985069, 0.163873, 0.052769,
		-0.114565, -0.852763, 0.509579,
		0.128505, 0.495925, 0.858804,
		32.318535, 33.334831, 50.460907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761002, 32.680153, 50.250313>,  <32.228580, 32.987682, 49.859745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761002, 32.680153, 50.250313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854900, 33.025314, 50.429333>,  <31.911240, 33.232410, 50.536743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854900, 33.025314, 50.429333>,  <31.761002, 32.680153, 50.250313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854900, 33.025314, 50.429333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971572, 0.222822, 0.079992,
		-0.030698, -0.453601, 0.890676,
		0.234747, 0.862900, 0.447546,
		31.925323, 33.284184, 50.563595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274403, 32.704952, 50.829063>,  <31.761002, 32.680153, 50.250313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274403, 32.704952, 50.829063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379227, 33.079971, 50.737553>,  <31.442122, 33.304981, 50.682648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379227, 33.079971, 50.737553>,  <31.274403, 32.704952, 50.829063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379227, 33.079971, 50.737553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912874, 0.317716, 0.256354,
		0.313027, 0.141656, 0.939121,
		0.262060, 0.937545, -0.228767,
		31.457844, 33.361233, 50.668919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934525, 33.029835, 51.337574>,  <31.274403, 32.704952, 50.829063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934525, 33.029835, 51.337574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.014219, 33.334621, 51.091091>,  <31.062037, 33.517494, 50.943199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.014219, 33.334621, 51.091091>,  <30.934525, 33.029835, 51.337574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014219, 33.334621, 51.091091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903094, 0.386879, 0.186400,
		0.380430, 0.519365, 0.765201,
		0.199231, 0.761961, -0.616216,
		31.073990, 33.563210, 50.906227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700203, 33.628201, 51.682713>,  <30.934525, 33.029835, 51.337574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700203, 33.628201, 51.682713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.687487, 33.699234, 51.289276>,  <30.679857, 33.741852, 51.053215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.687487, 33.699234, 51.289276>,  <30.700203, 33.628201, 51.682713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687487, 33.699234, 51.289276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946758, 0.310084, 0.086586,
		0.320372, 0.933977, 0.158268,
		-0.031793, 0.177582, -0.983592,
		30.677948, 33.752510, 50.994198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481989, 34.244564, 51.631546>,  <30.700203, 33.628201, 51.682713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481989, 34.244564, 51.631546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.401274, 34.092522, 51.270481>,  <30.352844, 34.001297, 51.053841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.401274, 34.092522, 51.270481>,  <30.481989, 34.244564, 51.631546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401274, 34.092522, 51.270481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979209, 0.097811, 0.177713,
		0.020740, 0.919756, -0.391942,
		-0.201788, -0.380107, -0.902663,
		30.340736, 33.978489, 50.999683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880671, 34.508194, 51.569736>,  <30.481989, 34.244564, 51.631546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880671, 34.508194, 51.569736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.900942, 34.220108, 51.292976>,  <29.913105, 34.047256, 51.126919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.900942, 34.220108, 51.292976>,  <29.880671, 34.508194, 51.569736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900942, 34.220108, 51.292976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989715, -0.129018, 0.061803,
		-0.133779, 0.681653, -0.719341,
		0.050680, -0.720210, -0.691902,
		29.916145, 34.004044, 51.085407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657774, 34.732849, 51.053078>,  <29.880671, 34.508194, 51.569736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657774, 34.732849, 51.053078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.591465, 34.340954, 51.008118>,  <29.551680, 34.105816, 50.981140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.591465, 34.340954, 51.008118>,  <29.657774, 34.732849, 51.053078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591465, 34.340954, 51.008118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985991, 0.166802, 0.000268,
		0.018486, 0.110871, -0.993663,
		-0.165774, -0.979737, -0.112401,
		29.541733, 34.047031, 50.974396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285069, 34.662876, 50.522449>,  <29.657774, 34.732849, 51.053078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285069, 34.662876, 50.522449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.191616, 34.328053, 50.720337>,  <29.135544, 34.127159, 50.839069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.191616, 34.328053, 50.720337>,  <29.285069, 34.662876, 50.522449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191616, 34.328053, 50.720337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971813, 0.217545, -0.090853,
		-0.031575, -0.502004, -0.864289,
		-0.233630, -0.837058, 0.494723,
		29.121527, 34.076935, 50.868755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722570, 34.398724, 50.151123>,  <29.285069, 34.662876, 50.522449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722570, 34.398724, 50.151123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.705240, 34.212437, 50.504673>,  <28.694841, 34.100666, 50.716801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.705240, 34.212437, 50.504673>,  <28.722570, 34.398724, 50.151123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705240, 34.212437, 50.504673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996746, 0.080345, -0.006525,
		-0.067976, -0.881278, -0.467684,
		-0.043327, -0.465718, 0.883872,
		28.692242, 34.072720, 50.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064631, 33.901642, 50.119278>,  <28.722570, 34.398724, 50.151123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064631, 33.901642, 50.119278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.151510, 33.994053, 50.498634>,  <28.203638, 34.049500, 50.726250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.151510, 33.994053, 50.498634>,  <28.064631, 33.901642, 50.119278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151510, 33.994053, 50.498634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965157, 0.196081, 0.173273,
		-0.145931, -0.952984, 0.265568,
		0.217199, 0.231029, 0.948394,
		28.216669, 34.063362, 50.783154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579836, 33.571873, 50.477753>,  <28.064631, 33.901642, 50.119278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579836, 33.571873, 50.477753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.728418, 33.838730, 50.736034>,  <27.817568, 33.998844, 50.891003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.728418, 33.838730, 50.736034>,  <27.579836, 33.571873, 50.477753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728418, 33.838730, 50.736034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928440, 0.270132, 0.255007,
		-0.004299, -0.694224, 0.719747,
		0.371458, 0.667145, 0.645706,
		27.839855, 34.038872, 50.929745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132860, 33.394382, 51.031200>,  <27.579836, 33.571873, 50.477753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132860, 33.394382, 51.031200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.279448, 33.761066, 51.094872>,  <27.367399, 33.981079, 51.133076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.279448, 33.761066, 51.094872>,  <27.132860, 33.394382, 51.031200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279448, 33.761066, 51.094872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825091, 0.241113, 0.510970,
		0.430032, -0.318591, 0.844732,
		0.366467, 0.916713, 0.159180,
		27.389387, 34.036079, 51.142624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925552, 33.702583, 51.841568>,  <27.132860, 33.394382, 51.031200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925552, 33.702583, 51.841568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.033878, 34.015034, 51.616531>,  <27.098873, 34.202503, 51.481510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.033878, 34.015034, 51.616531>,  <26.925552, 33.702583, 51.841568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033878, 34.015034, 51.616531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827973, 0.487127, 0.277790,
		0.491036, 0.390566, 0.778679,
		0.270820, 0.781131, -0.562576,
		27.115122, 34.249371, 51.447754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815041, 34.272949, 52.277058>,  <26.925552, 33.702583, 51.841568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815041, 34.272949, 52.277058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.826458, 34.419697, 51.905125>,  <26.833307, 34.507748, 51.681965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.826458, 34.419697, 51.905125>,  <26.815041, 34.272949, 52.277058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826458, 34.419697, 51.905125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851580, 0.496040, 0.169575,
		0.523447, 0.786988, 0.326578,
		0.028543, 0.366871, -0.929834,
		26.835020, 34.529758, 51.626175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739063, 35.049847, 52.236713>,  <26.815041, 34.272949, 52.277058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739063, 35.049847, 52.236713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.606081, 34.908211, 51.887062>,  <26.526293, 34.823231, 51.677273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.606081, 34.908211, 51.887062>,  <26.739063, 35.049847, 52.236713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606081, 34.908211, 51.887062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877176, 0.456575, 0.148667,
		0.346463, 0.816188, -0.462386,
		-0.332454, -0.354086, -0.874126,
		26.506344, 34.801987, 51.624825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337309, 35.589821, 51.954872>,  <26.739063, 35.049847, 52.236713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337309, 35.589821, 51.954872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.212082, 35.278610, 51.737003>,  <26.136946, 35.091885, 51.606281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.212082, 35.278610, 51.737003>,  <26.337309, 35.589821, 51.954872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212082, 35.278610, 51.737003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901533, 0.423829, -0.087224,
		0.298710, 0.463735, -0.834100,
		-0.313067, -0.778023, -0.544674,
		26.118162, 35.045204, 51.573601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587051, 35.833012, 51.789890>,  <26.337309, 35.589821, 51.954872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587051, 35.833012, 51.789890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.603689, 35.463959, 51.636520>,  <25.613672, 35.242527, 51.544498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.603689, 35.463959, 51.636520>,  <25.587051, 35.833012, 51.789890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603689, 35.463959, 51.636520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999135, -0.038522, -0.015693,
		-0.000291, 0.383742, -0.923441,
		0.041595, -0.922636, -0.383421,
		25.616167, 35.187168, 51.521496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228411, 35.861130, 51.160717>,  <25.587051, 35.833012, 51.789890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228411, 35.861130, 51.160717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.242069, 35.476002, 51.267910>,  <25.250265, 35.244926, 51.332226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.242069, 35.476002, 51.267910>,  <25.228411, 35.861130, 51.160717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242069, 35.476002, 51.267910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985043, -0.077738, -0.153779,
		0.168894, -0.258724, -0.951071,
		0.034148, -0.962818, 0.267983,
		25.252314, 35.187157, 51.348305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987906, 35.531399, 50.617855>,  <25.228411, 35.861130, 51.160717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987906, 35.531399, 50.617855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.931833, 35.310944, 50.946877>,  <24.898190, 35.178673, 51.144291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.931833, 35.310944, 50.946877>,  <24.987906, 35.531399, 50.617855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931833, 35.310944, 50.946877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986282, 0.004597, -0.165003,
		0.087157, -0.834402, -0.544221,
		-0.140181, -0.551137, 0.822555,
		24.889778, 35.145603, 51.193642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613024, 35.042267, 50.364552>,  <24.987906, 35.531399, 50.617855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613024, 35.042267, 50.364552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.558790, 35.007229, 50.759308>,  <24.526251, 34.986206, 50.996162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.558790, 35.007229, 50.759308>,  <24.613024, 35.042267, 50.364552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.558790, 35.007229, 50.759308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988634, 0.077278, -0.128964,
		-0.064968, -0.993154, -0.097074,
		-0.135583, -0.087592, 0.986886,
		24.518116, 34.980949, 51.055374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.498749, 32.618282, 49.511982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247837, 32.404060, 49.285812>,  <36.097290, 32.275528, 49.150112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247837, 32.404060, 49.285812>,  <36.498749, 32.618282, 49.511982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247837, 32.404060, 49.285812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604490, -0.122947, 0.787068,
		-0.491035, 0.835503, -0.246615,
		-0.627277, -0.535555, -0.565424,
		36.059654, 32.243393, 49.116184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875534, 32.995728, 49.523449>,  <36.498749, 32.618282, 49.511982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875534, 32.995728, 49.523449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817032, 32.605732, 49.456516>,  <35.781929, 32.371735, 49.416355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817032, 32.605732, 49.456516>,  <35.875534, 32.995728, 49.523449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817032, 32.605732, 49.456516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717347, -0.011950, 0.696613,
		-0.681191, 0.221921, -0.697660,
		-0.146256, -0.974991, -0.167335,
		35.773155, 32.313236, 49.406315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152431, 32.988960, 49.567116>,  <35.875534, 32.995728, 49.523449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152431, 32.988960, 49.567116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278610, 32.617527, 49.645321>,  <35.354317, 32.394669, 49.692245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278610, 32.617527, 49.645321>,  <35.152431, 32.988960, 49.567116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278610, 32.617527, 49.645321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620861, -0.046143, 0.782561,
		-0.717651, -0.368245, -0.591077,
		0.315448, -0.928583, 0.195515,
		35.373245, 32.338951, 49.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559681, 32.673985, 49.720554>,  <35.152431, 32.988960, 49.567116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559681, 32.673985, 49.720554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832584, 32.421436, 49.868011>,  <34.996326, 32.269909, 49.956486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832584, 32.421436, 49.868011>,  <34.559681, 32.673985, 49.720554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832584, 32.421436, 49.868011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578561, -0.157986, 0.800192,
		-0.446978, -0.759218, -0.473073,
		0.682259, -0.631370, 0.368638,
		35.037262, 32.232025, 49.978603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186234, 32.097595, 49.998783>,  <34.559681, 32.673985, 49.720554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186234, 32.097595, 49.998783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540703, 32.098679, 50.184120>,  <34.753384, 32.099327, 50.295322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540703, 32.098679, 50.184120>,  <34.186234, 32.097595, 49.998783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540703, 32.098679, 50.184120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458372, -0.141022, 0.877501,
		0.067714, -0.990003, -0.123730,
		0.886177, 0.002705, 0.463338,
		34.806557, 32.099491, 50.323120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985836, 31.764626, 50.565178>,  <34.186234, 32.097595, 49.998783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985836, 31.764626, 50.565178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345829, 31.906992, 50.665855>,  <34.561825, 31.992413, 50.726261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.345829, 31.906992, 50.665855>,  <33.985836, 31.764626, 50.565178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345829, 31.906992, 50.665855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130599, -0.330722, 0.934648,
		0.415900, -0.874040, -0.251162,
		0.899984, 0.355918, 0.251696,
		34.615826, 32.013767, 50.741364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242443, 31.288017, 51.091282>,  <33.985836, 31.764626, 50.565178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242443, 31.288017, 51.091282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474201, 31.612976, 51.117538>,  <34.613258, 31.807951, 51.133293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474201, 31.612976, 51.117538>,  <34.242443, 31.288017, 51.091282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474201, 31.612976, 51.117538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029123, -0.059845, 0.997783,
		0.814525, -0.580024, -0.011015,
		0.579397, 0.812398, 0.065637,
		34.648022, 31.856695, 51.137230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718178, 31.079033, 51.513988>,  <34.242443, 31.288017, 51.091282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718178, 31.079033, 51.513988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737495, 31.477245, 51.546444>,  <34.749088, 31.716173, 51.565918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737495, 31.477245, 51.546444>,  <34.718178, 31.079033, 51.513988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737495, 31.477245, 51.546444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225333, -0.068281, 0.971886,
		0.973084, -0.065222, 0.221029,
		0.048296, 0.995532, 0.081140,
		34.751984, 31.775906, 51.570786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064198, 31.190395, 52.072166>,  <34.718178, 31.079033, 51.513988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064198, 31.190395, 52.072166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880600, 31.542490, 52.023983>,  <34.770443, 31.753746, 51.995071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880600, 31.542490, 52.023983>,  <35.064198, 31.190395, 52.072166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880600, 31.542490, 52.023983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305775, -0.029212, 0.951656,
		0.834164, 0.473634, 0.282563,
		-0.458991, 0.880237, -0.120458,
		34.742901, 31.806561, 51.987846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282776, 31.592701, 52.630997>,  <35.064198, 31.190395, 52.072166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282776, 31.592701, 52.630997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965656, 31.797316, 52.498447>,  <34.775387, 31.920084, 52.418919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965656, 31.797316, 52.498447>,  <35.282776, 31.592701, 52.630997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965656, 31.797316, 52.498447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252176, 0.219661, 0.942420,
		0.554872, 0.830710, -0.045149,
		-0.792795, 0.511537, -0.331369,
		34.727818, 31.950777, 52.399036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290630, 32.233429, 53.018959>,  <35.282776, 31.592701, 52.630997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290630, 32.233429, 53.018959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918400, 32.165051, 52.889462>,  <34.695061, 32.124023, 52.811764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918400, 32.165051, 52.889462>,  <35.290630, 32.233429, 53.018959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918400, 32.165051, 52.889462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364912, 0.361832, 0.857856,
		-0.029510, 0.916436, -0.399093,
		-0.930574, -0.170949, -0.323741,
		34.639229, 32.113766, 52.792339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827469, 32.820339, 53.276878>,  <35.290630, 32.233429, 53.018959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827469, 32.820339, 53.276878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555820, 32.543892, 53.177963>,  <34.392830, 32.378025, 53.118614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555820, 32.543892, 53.177963>,  <34.827469, 32.820339, 53.276878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555820, 32.543892, 53.177963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582197, 0.301983, 0.754886,
		-0.447037, 0.656631, -0.607449,
		-0.679121, -0.691117, -0.247290,
		34.352085, 32.336555, 53.103775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699211, 33.496128, 52.901169>,  <34.827469, 32.820339, 53.276878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699211, 33.496128, 52.901169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875336, 33.813969, 53.068375>,  <34.981010, 34.004673, 53.168697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875336, 33.813969, 53.068375>,  <34.699211, 33.496128, 52.901169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875336, 33.813969, 53.068375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696410, -0.008403, -0.717594,
		-0.566688, 0.607075, -0.557068,
		0.440315, 0.794600, 0.418012,
		35.007431, 34.052349, 53.193779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678341, 33.988087, 52.396317>,  <34.699211, 33.496128, 52.901169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678341, 33.988087, 52.396317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964615, 34.097008, 52.653576>,  <35.136379, 34.162361, 52.807934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964615, 34.097008, 52.653576>,  <34.678341, 33.988087, 52.396317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964615, 34.097008, 52.653576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685770, -0.099505, -0.720984,
		-0.132330, 0.957053, -0.257951,
		0.715687, 0.272303, 0.643151,
		35.179321, 34.178699, 52.846519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094814, 34.471203, 52.061066>,  <34.678341, 33.988087, 52.396317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094814, 34.471203, 52.061066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330223, 34.347389, 52.359818>,  <35.471470, 34.273102, 52.539066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330223, 34.347389, 52.359818>,  <35.094814, 34.471203, 52.061066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330223, 34.347389, 52.359818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785594, 0.000703, -0.618742,
		0.190999, 0.950887, 0.243585,
		0.588524, -0.309538, 0.746877,
		35.506779, 34.254528, 52.583881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620148, 34.988350, 52.188934>,  <35.094814, 34.471203, 52.061066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620148, 34.988350, 52.188934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753719, 34.642841, 52.339870>,  <35.833862, 34.435535, 52.430431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753719, 34.642841, 52.339870>,  <35.620148, 34.988350, 52.188934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753719, 34.642841, 52.339870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772977, 0.021841, -0.634058,
		0.539442, 0.503403, 0.674972,
		0.333929, -0.863775, 0.377337,
		35.853897, 34.383709, 52.453072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311127, 35.142899, 52.439255>,  <35.620148, 34.988350, 52.188934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311127, 35.142899, 52.439255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294395, 34.744289, 52.410435>,  <36.284355, 34.505123, 52.393143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294395, 34.744289, 52.410435>,  <36.311127, 35.142899, 52.439255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294395, 34.744289, 52.410435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898028, -0.005889, -0.439899,
		0.437946, -0.083104, 0.895152,
		-0.041829, -0.996523, -0.072051,
		36.281845, 34.445332, 52.388821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813313, 34.949917, 52.724430>,  <36.311127, 35.142899, 52.439255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813313, 34.949917, 52.724430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737232, 34.616852, 52.516392>,  <36.691586, 34.417011, 52.391571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737232, 34.616852, 52.516392>,  <36.813313, 34.949917, 52.724430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737232, 34.616852, 52.516392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890816, 0.076290, -0.447913,
		0.412639, -0.548499, 0.727240,
		-0.190199, -0.832664, -0.520092,
		36.680172, 34.367054, 52.360363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434483, 34.467628, 52.767494>,  <36.813313, 34.949917, 52.724430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434483, 34.467628, 52.767494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219124, 34.400585, 52.437153>,  <37.089909, 34.360359, 52.238949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219124, 34.400585, 52.437153>,  <37.434483, 34.467628, 52.767494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219124, 34.400585, 52.437153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841551, -0.056035, -0.537263,
		0.043774, -0.984260, 0.171221,
		-0.538401, -0.167609, -0.825853,
		37.057602, 34.350304, 52.189396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915371, 34.129772, 52.337585>,  <37.434483, 34.467628, 52.767494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915371, 34.129772, 52.337585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.631176, 34.225681, 52.072945>,  <37.460659, 34.283226, 51.914162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.631176, 34.225681, 52.072945>,  <37.915371, 34.129772, 52.337585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631176, 34.225681, 52.072945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662857, -0.087624, -0.743601,
		-0.236267, -0.966867, -0.096678,
		-0.710492, 0.239772, -0.661597,
		37.418030, 34.297611, 51.874466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069275, 33.742531, 51.751316>,  <37.915371, 34.129772, 52.337585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069275, 33.742531, 51.751316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839397, 34.034557, 51.603413>,  <37.701469, 34.209774, 51.514671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839397, 34.034557, 51.603413>,  <38.069275, 33.742531, 51.751316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839397, 34.034557, 51.603413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558353, 0.019468, -0.829375,
		-0.598304, -0.683094, -0.418826,
		-0.574695, 0.730071, -0.369760,
		37.666988, 34.253578, 51.492485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231808, 33.638634, 51.054356>,  <38.069275, 33.742531, 51.751316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231808, 33.638634, 51.054356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104454, 34.017559, 51.068356>,  <38.028042, 34.244915, 51.076756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104454, 34.017559, 51.068356>,  <38.231808, 33.638634, 51.054356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104454, 34.017559, 51.068356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601054, 0.230286, -0.765312,
		-0.733053, -0.222623, -0.642707,
		-0.318383, 0.947316, 0.035003,
		38.008938, 34.301754, 51.078857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064552, 33.831627, 50.363819>,  <38.231808, 33.638634, 51.054356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064552, 33.831627, 50.363819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105171, 34.169300, 50.574360>,  <38.129543, 34.371902, 50.700684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105171, 34.169300, 50.574360>,  <38.064552, 33.831627, 50.363819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105171, 34.169300, 50.574360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607246, 0.366486, -0.704940,
		-0.787998, 0.391206, -0.475412,
		0.101545, 0.844183, 0.526349,
		38.135635, 34.422554, 50.732265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333817, 34.369804, 49.885468>,  <38.064552, 33.831627, 50.363819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333817, 34.369804, 49.885468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360023, 34.589569, 50.218658>,  <38.375748, 34.721428, 50.418571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360023, 34.589569, 50.218658>,  <38.333817, 34.369804, 49.885468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360023, 34.589569, 50.218658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667470, 0.596396, -0.445865,
		-0.741750, 0.585198, -0.327645,
		0.065513, 0.549413, 0.832979,
		38.379677, 34.754395, 50.468552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123402, 35.110535, 49.709839>,  <38.333817, 34.369804, 49.885468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123402, 35.110535, 49.709839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382648, 35.094429, 50.014030>,  <38.538197, 35.084766, 50.196545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382648, 35.094429, 50.014030>,  <38.123402, 35.110535, 49.709839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382648, 35.094429, 50.014030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686905, 0.462059, -0.560948,
		-0.328802, 0.885935, 0.327122,
		0.648113, -0.040261, 0.760479,
		38.577084, 35.082352, 50.242172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423431, 35.801620, 49.761360>,  <38.123402, 35.110535, 49.709839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423431, 35.801620, 49.761360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676865, 35.522469, 49.894955>,  <38.828922, 35.354977, 49.975113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676865, 35.522469, 49.894955>,  <38.423431, 35.801620, 49.761360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676865, 35.522469, 49.894955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726092, 0.387297, -0.568147,
		0.267144, 0.602471, 0.752106,
		0.633580, -0.697875, 0.333985,
		38.866940, 35.313107, 49.995152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019203, 36.464512, 49.546597>,  <38.423431, 35.801620, 49.761360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019203, 36.464512, 49.546597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336456, 36.603035, 49.346195>,  <38.526810, 36.686150, 49.225956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336456, 36.603035, 49.346195>,  <38.019203, 36.464512, 49.546597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336456, 36.603035, 49.346195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586294, -0.656870, 0.474111,
		-0.164901, -0.669769, -0.724029,
		0.793137, 0.346312, -0.501000,
		38.574398, 36.706928, 49.195896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684128, 37.104801, 49.353733>,  <38.019203, 36.464512, 49.546597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684128, 37.104801, 49.353733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654133, 37.503300, 49.371067>,  <37.636135, 37.742397, 49.381466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654133, 37.503300, 49.371067>,  <37.684128, 37.104801, 49.353733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654133, 37.503300, 49.371067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682652, -0.082958, 0.726019,
		0.726886, 0.024860, 0.686308,
		-0.074984, 0.996243, 0.043330,
		37.631638, 37.802174, 49.384068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623112, 37.322388, 50.073166>,  <37.684128, 37.104801, 49.353733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623112, 37.322388, 50.073166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433205, 37.564602, 49.817692>,  <37.319260, 37.709930, 49.664406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433205, 37.564602, 49.817692>,  <37.623112, 37.322388, 50.073166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433205, 37.564602, 49.817692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749739, 0.101817, 0.653854,
		0.460959, 0.789281, 0.405651,
		-0.474772, 0.605532, -0.638687,
		37.290771, 37.746262, 49.626087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424133, 37.962265, 50.404621>,  <37.623112, 37.322388, 50.073166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424133, 37.962265, 50.404621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178722, 37.890617, 50.096985>,  <37.031475, 37.847630, 49.912403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.178722, 37.890617, 50.096985>,  <37.424133, 37.962265, 50.404621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178722, 37.890617, 50.096985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789033, 0.178234, 0.587928,
		0.031771, 0.967548, -0.250680,
		-0.613529, -0.179115, -0.769090,
		36.994663, 37.836884, 49.866257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950005, 38.566727, 50.327053>,  <37.424133, 37.962265, 50.404621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950005, 38.566727, 50.327053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782661, 38.232376, 50.184906>,  <36.682255, 38.031765, 50.099617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782661, 38.232376, 50.184906>,  <36.950005, 38.566727, 50.327053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782661, 38.232376, 50.184906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810291, 0.166698, 0.561819,
		-0.410375, 0.522987, -0.747045,
		-0.418355, -0.835880, -0.355363,
		36.657154, 37.981613, 50.078297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218563, 38.673496, 50.360783>,  <36.950005, 38.566727, 50.327053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218563, 38.673496, 50.360783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218838, 38.277275, 50.305935>,  <36.219002, 38.039543, 50.273026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218838, 38.277275, 50.305935>,  <36.218563, 38.673496, 50.360783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218838, 38.277275, 50.305935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831106, -0.076820, 0.550782,
		-0.556113, 0.113577, -0.823309,
		0.000690, -0.990555, -0.137115,
		36.219044, 37.980110, 50.264801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434425, 38.402512, 50.183022>,  <36.218563, 38.673496, 50.360783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434425, 38.402512, 50.183022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645844, 38.084789, 50.302834>,  <35.772694, 37.894157, 50.374722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645844, 38.084789, 50.302834>,  <35.434425, 38.402512, 50.183022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645844, 38.084789, 50.302834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730138, -0.245364, 0.637726,
		-0.433056, -0.555766, -0.709639,
		0.528546, -0.794305, 0.299530,
		35.804409, 37.846497, 50.392693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982365, 37.778557, 50.244175>,  <35.434425, 38.402512, 50.183022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982365, 37.778557, 50.244175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296108, 37.676151, 50.470177>,  <35.484356, 37.614708, 50.605778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296108, 37.676151, 50.470177>,  <34.982365, 37.778557, 50.244175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296108, 37.676151, 50.470177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602765, -0.099515, 0.791689,
		-0.146459, -0.961537, -0.232373,
		0.784362, -0.256016, 0.565005,
		35.531418, 37.599346, 50.639679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712425, 37.123463, 50.603851>,  <34.982365, 37.778557, 50.244175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712425, 37.123463, 50.603851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006641, 37.299713, 50.809700>,  <35.183170, 37.405464, 50.933208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006641, 37.299713, 50.809700>,  <34.712425, 37.123463, 50.603851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006641, 37.299713, 50.809700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544027, -0.068550, 0.836263,
		0.403757, -0.895069, 0.189292,
		0.735537, 0.440627, 0.514619,
		35.227303, 37.431900, 50.964085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687389, 36.827538, 51.172852>,  <34.712425, 37.123463, 50.603851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687389, 36.827538, 51.172852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920303, 37.133011, 51.284378>,  <35.060051, 37.316296, 51.351295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920303, 37.133011, 51.284378>,  <34.687389, 36.827538, 51.172852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920303, 37.133011, 51.284378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544110, 0.111256, 0.831605,
		0.604060, -0.635937, 0.480308,
		0.582285, 0.763680, 0.278815,
		35.094990, 37.362114, 51.368023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747669, 36.731606, 51.823158>,  <34.687389, 36.827538, 51.172852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747669, 36.731606, 51.823158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879639, 37.108562, 51.801056>,  <34.958820, 37.334736, 51.787796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879639, 37.108562, 51.801056>,  <34.747669, 36.731606, 51.823158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879639, 37.108562, 51.801056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457725, 0.210887, 0.863721,
		0.825613, -0.259674, 0.500932,
		0.329926, 0.942388, -0.055252,
		34.978615, 37.391277, 51.784481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053722, 36.849937, 52.410095>,  <34.747669, 36.731606, 51.823158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053722, 36.849937, 52.410095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.938721, 37.210590, 52.280846>,  <34.869720, 37.426983, 52.203297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.938721, 37.210590, 52.280846>,  <35.053722, 36.849937, 52.410095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938721, 37.210590, 52.280846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548800, 0.121419, 0.827088,
		0.784960, 0.415121, 0.459906,
		-0.287500, 0.901627, -0.323128,
		34.852470, 37.481079, 52.183907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205524, 37.375992, 52.902836>,  <35.053722, 36.849937, 52.410095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205524, 37.375992, 52.902836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897926, 37.507713, 52.683670>,  <34.713367, 37.586746, 52.552170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897926, 37.507713, 52.683670>,  <35.205524, 37.375992, 52.902836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897926, 37.507713, 52.683670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534735, 0.138308, 0.833624,
		0.350297, 0.934039, 0.069732,
		-0.768994, 0.329304, -0.547912,
		34.667229, 37.606506, 52.519295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921673, 37.869564, 53.281010>,  <35.205524, 37.375992, 52.902836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921673, 37.869564, 53.281010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625656, 37.850140, 53.012688>,  <34.448048, 37.838486, 52.851696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625656, 37.850140, 53.012688>,  <34.921673, 37.869564, 53.281010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625656, 37.850140, 53.012688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662672, 0.223047, 0.714924,
		0.114903, 0.973597, -0.197245,
		-0.740043, -0.048561, -0.670805,
		34.403645, 37.835571, 52.811447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471661, 38.478500, 53.436676>,  <34.921673, 37.869564, 53.281010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471661, 38.478500, 53.436676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.244408, 38.223366, 53.228676>,  <34.108055, 38.070286, 53.103878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.244408, 38.223366, 53.228676>,  <34.471661, 38.478500, 53.436676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244408, 38.223366, 53.228676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772589, 0.195764, 0.603973,
		-0.283437, 0.744879, -0.604002,
		-0.568129, -0.637833, -0.519999,
		34.073971, 38.032017, 53.072678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816071, 38.914429, 53.332390>,  <34.471661, 38.478500, 53.436676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816071, 38.914429, 53.332390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718487, 38.530792, 53.274944>,  <33.659935, 38.300610, 53.240479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718487, 38.530792, 53.274944>,  <33.816071, 38.914429, 53.332390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718487, 38.530792, 53.274944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925004, 0.185649, 0.331513,
		-0.291290, 0.213719, -0.932456,
		-0.243960, -0.959093, -0.143613,
		33.645298, 38.243065, 53.231861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221416, 38.896675, 52.946987>,  <33.816071, 38.914429, 53.332390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221416, 38.896675, 52.946987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242542, 38.553165, 53.150837>,  <33.255219, 38.347057, 53.273148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242542, 38.553165, 53.150837>,  <33.221416, 38.896675, 52.946987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242542, 38.553165, 53.150837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908596, 0.170417, 0.381328,
		-0.414324, -0.483177, -0.771282,
		0.052810, -0.858777, 0.509621,
		33.258385, 38.295532, 53.303722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518002, 38.635212, 52.930477>,  <33.221416, 38.896675, 52.946987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518002, 38.635212, 52.930477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.725437, 38.489235, 53.239769>,  <32.849899, 38.401649, 53.425343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.725437, 38.489235, 53.239769>,  <32.518002, 38.635212, 52.930477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725437, 38.489235, 53.239769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709390, 0.321202, 0.627371,
		-0.477317, -0.873869, -0.092315,
		0.518588, -0.364943, 0.773229,
		32.881012, 38.379753, 53.471737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047043, 38.205593, 53.257084>,  <32.518002, 38.635212, 52.930477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047043, 38.205593, 53.257084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.323055, 38.313831, 53.525600>,  <32.488663, 38.378773, 53.686710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.323055, 38.313831, 53.525600>,  <32.047043, 38.205593, 53.257084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323055, 38.313831, 53.525600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717495, 0.133783, 0.683596,
		0.095169, -0.953352, 0.286465,
		0.690032, 0.270594, 0.671294,
		32.530064, 38.395012, 53.726990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822468, 37.802353, 53.788841>,  <32.047043, 38.205593, 53.257084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822468, 37.802353, 53.788841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074337, 38.056816, 53.967194>,  <32.225460, 38.209496, 54.074203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074337, 38.056816, 53.967194>,  <31.822468, 37.802353, 53.788841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074337, 38.056816, 53.967194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684842, 0.183596, 0.705184,
		0.366751, -0.749392, 0.551276,
		0.629671, 0.636164, 0.445881,
		32.263237, 38.247665, 54.100960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766670, 37.733540, 54.500076>,  <31.822468, 37.802353, 53.788841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766670, 37.733540, 54.500076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.941145, 38.093472, 54.502670>,  <32.045830, 38.309433, 54.504227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.941145, 38.093472, 54.502670>,  <31.766670, 37.733540, 54.500076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941145, 38.093472, 54.502670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498266, 0.235517, 0.834424,
		0.749314, -0.367197, 0.551086,
		0.436188, 0.899833, 0.006486,
		32.072002, 38.363422, 54.504616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926102, 37.744495, 55.158939>,  <31.766670, 37.733540, 54.500076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926102, 37.744495, 55.158939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922293, 38.120979, 55.023865>,  <31.920008, 38.346870, 54.942822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922293, 38.120979, 55.023865>,  <31.926102, 37.744495, 55.158939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922293, 38.120979, 55.023865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501042, 0.287756, 0.816182,
		0.865371, 0.176965, 0.468846,
		-0.009522, 0.941212, -0.337683,
		31.919436, 38.403343, 54.922562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792046, 38.099388, 55.751083>,  <31.926102, 37.744495, 55.158939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792046, 38.099388, 55.751083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731825, 38.384735, 55.477314>,  <31.695692, 38.555943, 55.313053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731825, 38.384735, 55.477314>,  <31.792046, 38.099388, 55.751083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731825, 38.384735, 55.477314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466609, 0.559072, 0.685357,
		0.871557, 0.422539, 0.248697,
		-0.150551, 0.713372, -0.684423,
		31.686659, 38.598747, 55.271988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010895, 38.759373, 55.996975>,  <31.792046, 38.099388, 55.751083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010895, 38.759373, 55.996975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730774, 38.833641, 55.721264>,  <31.562702, 38.878204, 55.555836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730774, 38.833641, 55.721264>,  <32.010895, 38.759373, 55.996975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730774, 38.833641, 55.721264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495000, 0.569424, 0.656301,
		0.514351, 0.800800, -0.306858,
		-0.700298, 0.185674, -0.689280,
		31.520685, 38.889343, 55.514481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863976, 39.391327, 56.050980>,  <32.010895, 38.759373, 55.996975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863976, 39.391327, 56.050980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545149, 39.216747, 55.884033>,  <31.353853, 39.112000, 55.783863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545149, 39.216747, 55.884033>,  <31.863976, 39.391327, 56.050980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545149, 39.216747, 55.884033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603153, 0.609562, 0.514433,
		0.029887, 0.661774, -0.749108,
		-0.797065, -0.436452, -0.417369,
		31.306028, 39.085812, 55.758823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448471, 40.001286, 55.718781>,  <31.863976, 39.391327, 56.050980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448471, 40.001286, 55.718781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192846, 39.700397, 55.782997>,  <31.039471, 39.519867, 55.821526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192846, 39.700397, 55.782997>,  <31.448471, 40.001286, 55.718781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192846, 39.700397, 55.782997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657319, 0.642498, 0.393863,
		-0.399414, 0.146178, -0.905041,
		-0.639062, -0.752215, 0.160537,
		31.001127, 39.474731, 55.831158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719717, 40.316822, 55.604218>,  <31.448471, 40.001286, 55.718781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719717, 40.316822, 55.604218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640671, 39.979515, 55.804157>,  <30.593243, 39.777130, 55.924122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640671, 39.979515, 55.804157>,  <30.719717, 40.316822, 55.604218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640671, 39.979515, 55.804157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596832, 0.508003, 0.621067,
		-0.777651, -0.175595, -0.603677,
		-0.197613, -0.843267, 0.499850,
		30.581387, 39.726536, 55.954113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019302, 40.338028, 55.715199>,  <30.719717, 40.316822, 55.604218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019302, 40.338028, 55.715199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167984, 40.080944, 55.983158>,  <30.257193, 39.926693, 56.143932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167984, 40.080944, 55.983158>,  <30.019302, 40.338028, 55.715199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167984, 40.080944, 55.983158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714320, 0.262881, 0.648568,
		-0.592943, -0.719596, -0.361386,
		0.371705, -0.642709, 0.669896,
		30.279495, 39.888130, 56.184128>
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
