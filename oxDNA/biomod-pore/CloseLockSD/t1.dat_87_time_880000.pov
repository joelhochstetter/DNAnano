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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.689719, 15.325515, 15.101479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.505465, 14.970970, 15.120147>,  <4.394912, 14.758244, 15.131348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.505465, 14.970970, 15.120147>,  <4.689719, 15.325515, 15.101479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.505465, 14.970970, 15.120147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760828, 0.367226, -0.535057,
		0.457115, -0.281973, -0.843526,
		-0.460636, -0.886362, 0.046669,
		4.367273, 14.705062, 15.134148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622412, 14.867288, 14.465192>,  <4.689719, 15.325515, 15.101479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622412, 14.867288, 14.465192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302639, 14.846405, 14.704585>,  <4.110775, 14.833876, 14.848221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302639, 14.846405, 14.704585>,  <4.622412, 14.867288, 14.465192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302639, 14.846405, 14.704585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514797, 0.573038, -0.637661,
		-0.309662, -0.817864, -0.484982,
		-0.799433, -0.052208, 0.598482,
		4.062809, 14.830743, 14.884130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.018413, 14.552729, 14.077518>,  <4.622412, 14.867288, 14.465192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.018413, 14.552729, 14.077518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.912959, 14.815884, 14.359705>,  <3.849687, 14.973777, 14.529016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.912959, 14.815884, 14.359705>,  <4.018413, 14.552729, 14.077518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.912959, 14.815884, 14.359705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605287, 0.456617, -0.652018,
		-0.751082, -0.598904, 0.277831,
		-0.263634, 0.657887, 0.705466,
		3.833869, 15.013249, 14.571344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.360587, 14.880074, 13.637321>,  <4.018413, 14.552729, 14.077518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.360587, 14.880074, 13.637321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.490525, 15.140224, 13.911982>,  <3.568487, 15.296314, 14.076777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.490525, 15.140224, 13.911982>,  <3.360587, 14.880074, 13.637321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.490525, 15.140224, 13.911982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218526, 0.757992, -0.614568,
		-0.920175, 0.049588, 0.388353,
		0.324844, 0.650376, 0.686650,
		3.587978, 15.335338, 14.117976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846149, 15.354220, 13.601186>,  <3.360587, 14.880074, 13.637321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846149, 15.354220, 13.601186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.190738, 15.497834, 13.744830>,  <3.397491, 15.584002, 13.831017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.190738, 15.497834, 13.744830>,  <2.846149, 15.354220, 13.601186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.190738, 15.497834, 13.744830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107532, 0.820124, -0.561990,
		-0.496290, 0.445523, 0.745121,
		0.861471, 0.359035, 0.359112,
		3.449179, 15.605545, 13.852564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.668911, 16.076813, 13.761136>,  <2.846149, 15.354220, 13.601186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.668911, 16.076813, 13.761136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.063245, 16.072126, 13.828059>,  <3.299845, 16.069315, 13.868214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.063245, 16.072126, 13.828059>,  <2.668911, 16.076813, 13.761136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.063245, 16.072126, 13.828059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051771, 0.970099, -0.237125,
		-0.159528, 0.242428, 0.956964,
		0.985835, -0.011715, 0.167309,
		3.358995, 16.068611, 13.878252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.850741, 16.603676, 14.228693>,  <2.668911, 16.076813, 13.761136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.850741, 16.603676, 14.228693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.179130, 16.545372, 14.007873>,  <3.376163, 16.510389, 13.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.179130, 16.545372, 14.007873>,  <2.850741, 16.603676, 14.228693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.179130, 16.545372, 14.007873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008461, 0.969866, -0.243492,
		0.570906, 0.195229, 0.797466,
		0.820972, -0.145758, -0.552050,
		3.425421, 16.501644, 13.842257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.327480, 17.089808, 14.344546>,  <2.850741, 16.603676, 14.228693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.327480, 17.089808, 14.344546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.438229, 16.954763, 13.984689>,  <3.504679, 16.873737, 13.768774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.438229, 16.954763, 13.984689>,  <3.327480, 17.089808, 14.344546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.438229, 16.954763, 13.984689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207752, 0.935134, -0.286992,
		0.938179, -0.107442, 0.329052,
		0.276873, -0.337611, -0.899644,
		3.521291, 16.853479, 13.714795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.983231, 17.376812, 14.275727>,  <3.327480, 17.089808, 14.344546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.983231, 17.376812, 14.275727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.852757, 17.287741, 13.908245>,  <3.774472, 17.234299, 13.687756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.852757, 17.287741, 13.908245>,  <3.983231, 17.376812, 14.275727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.852757, 17.287741, 13.908245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337251, 0.880494, -0.333155,
		0.883098, -0.418505, -0.212110,
		-0.326189, -0.222674, -0.918704,
		3.754901, 17.220938, 13.632633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.454993, 17.723038, 13.814869>,  <3.983231, 17.376812, 14.275727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.454993, 17.723038, 13.814869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151785, 17.625172, 13.573028>,  <3.969861, 17.566452, 13.427922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.151785, 17.625172, 13.573028>,  <4.454993, 17.723038, 13.814869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.151785, 17.625172, 13.573028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169697, 0.821072, -0.545017,
		0.629770, -0.515733, -0.580870,
		-0.758019, -0.244664, -0.604604,
		3.924380, 17.551773, 13.391646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.671399, 17.783117, 13.211459>,  <4.454993, 17.723038, 13.814869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.671399, 17.783117, 13.211459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.274115, 17.827913, 13.198854>,  <4.035744, 17.854790, 13.191292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.274115, 17.827913, 13.198854>,  <4.671399, 17.783117, 13.211459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.274115, 17.827913, 13.198854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113271, 0.869117, -0.481462,
		-0.026531, -0.481762, -0.875900,
		-0.993210, 0.111988, -0.031511,
		3.976152, 17.861509, 13.189401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.473887, 18.157412, 12.469838>,  <4.671399, 17.783117, 13.211459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.473887, 18.157412, 12.469838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.132873, 18.193714, 12.675730>,  <3.928264, 18.215496, 12.799265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.132873, 18.193714, 12.675730>,  <4.473887, 18.157412, 12.469838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.132873, 18.193714, 12.675730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105325, 0.934776, -0.339264,
		-0.511946, -0.343449, -0.787372,
		-0.852536, 0.090755, 0.514728,
		3.877112, 18.220942, 12.830149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.906011, 18.214739, 12.082012>,  <4.473887, 18.157412, 12.469838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.906011, 18.214739, 12.082012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785897, 18.384100, 12.423903>,  <3.713828, 18.485716, 12.629038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785897, 18.384100, 12.423903>,  <3.906011, 18.214739, 12.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785897, 18.384100, 12.423903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049678, 0.901809, -0.429271,
		-0.952555, -0.086443, -0.291834,
		-0.300286, 0.423401, 0.854728,
		3.695811, 18.511120, 12.680322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.324679, 18.644640, 11.906967>,  <3.906011, 18.214739, 12.082012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.324679, 18.644640, 11.906967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429393, 18.773851, 12.270752>,  <3.492222, 18.851377, 12.489023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429393, 18.773851, 12.270752>,  <3.324679, 18.644640, 11.906967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429393, 18.773851, 12.270752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134760, 0.920859, -0.365867,
		-0.955671, 0.218338, 0.197536,
		0.261786, 0.323029, 0.909462,
		3.507929, 18.870760, 12.543591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.914265, 19.363165, 12.022095>,  <3.324679, 18.644640, 11.906967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.914265, 19.363165, 12.022095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.214442, 19.344006, 12.285774>,  <3.394548, 19.332510, 12.443982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.214442, 19.344006, 12.285774>,  <2.914265, 19.363165, 12.022095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214442, 19.344006, 12.285774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209991, 0.962971, -0.169089,
		-0.626690, 0.265317, 0.732712,
		0.750442, -0.047897, 0.659198,
		3.439575, 19.329636, 12.483534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.872573, 20.040340, 12.432829>,  <2.914265, 19.363165, 12.022095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.872573, 20.040340, 12.432829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.240199, 19.905472, 12.514444>,  <3.460775, 19.824551, 12.563414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.240199, 19.905472, 12.514444>,  <2.872573, 20.040340, 12.432829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240199, 19.905472, 12.514444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353683, 0.934048, -0.049616,
		-0.173854, 0.117765, 0.977704,
		0.919066, -0.337171, 0.204039,
		3.515919, 19.804321, 12.575656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.098374, 20.267370, 13.079095>,  <2.872573, 20.040340, 12.432829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.098374, 20.267370, 13.079095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.436142, 20.184114, 12.881657>,  <3.638802, 20.134161, 12.763194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.436142, 20.184114, 12.881657>,  <3.098374, 20.267370, 13.079095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.436142, 20.184114, 12.881657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304465, 0.944608, 0.122542,
		0.440748, -0.253759, 0.861015,
		0.844418, -0.208138, -0.493595,
		3.689467, 20.121674, 12.733578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.719190, 20.509336, 13.494305>,  <3.098374, 20.267370, 13.079095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.719190, 20.509336, 13.494305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863129, 20.470835, 13.123092>,  <3.949493, 20.447733, 12.900364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863129, 20.470835, 13.123092>,  <3.719190, 20.509336, 13.494305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.863129, 20.470835, 13.123092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342076, 0.939011, 0.035249,
		0.868040, -0.330142, 0.370828,
		0.359848, -0.096254, -0.928033,
		3.971084, 20.441959, 12.844682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.370444, 20.781555, 13.618714>,  <3.719190, 20.509336, 13.494305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.370444, 20.781555, 13.618714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.336512, 20.750183, 13.221393>,  <4.316153, 20.731359, 12.983000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.336512, 20.750183, 13.221393>,  <4.370444, 20.781555, 13.618714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.336512, 20.750183, 13.221393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390335, 0.914603, -0.105550,
		0.916756, -0.396675, -0.046975,
		-0.084832, -0.078428, -0.993304,
		4.311063, 20.726654, 12.923402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.986328, 20.866135, 13.344274>,  <4.370444, 20.781555, 13.618714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.986328, 20.866135, 13.344274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.764161, 20.969782, 13.028206>,  <4.630861, 21.031971, 12.838565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.764161, 20.969782, 13.028206>,  <4.986328, 20.866135, 13.344274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.764161, 20.969782, 13.028206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558113, 0.820566, -0.123215,
		0.616459, -0.509439, -0.600375,
		-0.555418, 0.259120, -0.790169,
		4.597536, 21.047518, 12.791155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.507685, 21.115919, 12.823207>,  <4.986328, 20.866135, 13.344274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.507685, 21.115919, 12.823207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.149961, 21.254475, 12.709910>,  <4.935328, 21.337608, 12.641932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.149961, 21.254475, 12.709910>,  <5.507685, 21.115919, 12.823207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.149961, 21.254475, 12.709910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392930, 0.910785, -0.126799,
		0.214051, -0.224691, -0.950629,
		-0.894309, 0.346389, -0.283242,
		4.881669, 21.358391, 12.624938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.662465, 21.430567, 12.180980>,  <5.507685, 21.115919, 12.823207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.662465, 21.430567, 12.180980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.330365, 21.607267, 12.316944>,  <5.131104, 21.713287, 12.398522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.330365, 21.607267, 12.316944>,  <5.662465, 21.430567, 12.180980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.330365, 21.607267, 12.316944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464631, 0.885364, -0.015739,
		-0.307897, 0.144866, -0.940326,
		-0.830251, 0.441750, 0.339911,
		5.081289, 21.739792, 12.418918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.347988, 21.842840, 11.636282>,  <5.662465, 21.430567, 12.180980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.347988, 21.842840, 11.636282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.245068, 21.968985, 12.001652>,  <5.183316, 22.044672, 12.220874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.245068, 21.968985, 12.001652>,  <5.347988, 21.842840, 11.636282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.245068, 21.968985, 12.001652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334615, 0.915846, -0.221942,
		-0.906548, 0.248540, -0.341171,
		-0.257298, 0.315362, 0.913424,
		5.167879, 22.063593, 12.275679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.141770, 22.498878, 11.484948>,  <5.347988, 21.842840, 11.636282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.141770, 22.498878, 11.484948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.217152, 22.514204, 11.877481>,  <5.262382, 22.523399, 12.113002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.217152, 22.514204, 11.877481>,  <5.141770, 22.498878, 11.484948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.217152, 22.514204, 11.877481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362991, 0.925761, -0.105852,
		-0.912536, 0.376164, 0.160557,
		0.188455, 0.038313, 0.981334,
		5.273689, 22.525698, 12.171882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.851345, 23.103991, 11.789054>,  <5.141770, 22.498878, 11.484948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.851345, 23.103991, 11.789054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.166133, 23.011353, 12.017803>,  <5.355006, 22.955769, 12.155053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.166133, 23.011353, 12.017803>,  <4.851345, 23.103991, 11.789054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.166133, 23.011353, 12.017803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317256, 0.946851, -0.053129,
		-0.529175, 0.223241, 0.818619,
		0.786971, -0.231597, 0.571874,
		5.402224, 22.941874, 12.189365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.922474, 23.513935, 12.423453>,  <4.851345, 23.103991, 11.789054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.922474, 23.513935, 12.423453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.273386, 23.401781, 12.267624>,  <5.483933, 23.334490, 12.174127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.273386, 23.401781, 12.267624>,  <4.922474, 23.513935, 12.423453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.273386, 23.401781, 12.267624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340428, 0.935639, 0.093211,
		0.338365, -0.214393, 0.916267,
		0.877279, -0.280383, -0.389573,
		5.536570, 23.317665, 12.150752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.510986, 23.718264, 12.896715>,  <4.922474, 23.513935, 12.423453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.510986, 23.718264, 12.896715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.562779, 23.707596, 12.500226>,  <5.593854, 23.701195, 12.262333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.562779, 23.707596, 12.500226>,  <5.510986, 23.718264, 12.896715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.562779, 23.707596, 12.500226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483730, 0.874318, 0.039665,
		0.865586, -0.484620, 0.126109,
		0.129481, -0.026669, -0.991223,
		5.601624, 23.699594, 12.202859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.769232, 24.235182, 12.313263>,  <5.510986, 23.718264, 12.896715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.769232, 24.235182, 12.313263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.059020, 23.971579, 12.232414>,  <6.232893, 23.813417, 12.183905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.059020, 23.971579, 12.232414>,  <5.769232, 24.235182, 12.313263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.059020, 23.971579, 12.232414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547130, 0.728121, -0.412902,
		0.419274, 0.188549, 0.888064,
		0.724471, -0.659006, -0.202122,
		6.276361, 23.773876, 12.171778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.309630, 24.678484, 12.130390>,  <5.769232, 24.235182, 12.313263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.309630, 24.678484, 12.130390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.614697, 24.868420, 12.306056>,  <6.797738, 24.982382, 12.411455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.614697, 24.868420, 12.306056>,  <6.309630, 24.678484, 12.130390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.614697, 24.868420, 12.306056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381604, -0.878566, 0.287228,
		0.522222, -0.051473, -0.851255,
		0.762668, 0.474839, 0.439164,
		6.843498, 25.010872, 12.437805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.164305, 24.432209, 12.006912>,  <6.309630, 24.678484, 12.130390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.164305, 24.432209, 12.006912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.134971, 24.601862, 12.367963>,  <7.117371, 24.703653, 12.584593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.134971, 24.601862, 12.367963>,  <7.164305, 24.432209, 12.006912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.134971, 24.601862, 12.367963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422903, -0.806437, 0.413294,
		0.903203, 0.412032, -0.120227,
		-0.073334, 0.424133, 0.902626,
		7.112971, 24.729101, 12.638751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.756297, 24.317345, 12.207799>,  <7.164305, 24.432209, 12.006912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.756297, 24.317345, 12.207799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.540836, 24.386028, 12.537738>,  <7.411560, 24.427238, 12.735701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.540836, 24.386028, 12.537738>,  <7.756297, 24.317345, 12.207799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.540836, 24.386028, 12.537738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425545, -0.789511, 0.442248,
		0.727163, 0.589227, 0.352200,
		-0.538651, 0.171709, 0.824846,
		7.379241, 24.437542, 12.785192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.187211, 24.416704, 12.635481>,  <7.756297, 24.317345, 12.207799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.187211, 24.416704, 12.635481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863779, 24.249502, 12.801115>,  <7.669719, 24.149181, 12.900496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.863779, 24.249502, 12.801115>,  <8.187211, 24.416704, 12.635481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.863779, 24.249502, 12.801115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569802, -0.731768, 0.373952,
		0.146701, 0.538318, 0.829875,
		-0.808582, -0.418006, 0.414086,
		7.621204, 24.124100, 12.925341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.860395, 24.216337, 12.306316>,  <8.187211, 24.416704, 12.635481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.860395, 24.216337, 12.306316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.936182, 24.394594, 12.656289>,  <8.981654, 24.501549, 12.866273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.936182, 24.394594, 12.656289>,  <8.860395, 24.216337, 12.306316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.936182, 24.394594, 12.656289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733467, 0.656644, -0.175625,
		-0.652785, -0.608459, 0.451275,
		0.189467, 0.445641, 0.874932,
		8.993022, 24.528286, 12.918769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.317470, 23.892420, 12.876139>,  <8.860395, 24.216337, 12.306316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.317470, 23.892420, 12.876139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141855, 24.098459, 13.170600>,  <9.036487, 24.222084, 13.347277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141855, 24.098459, 13.170600>,  <9.317470, 23.892420, 12.876139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141855, 24.098459, 13.170600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082117, -0.838915, 0.538031,
		0.894709, 0.175764, 0.410612,
		-0.439035, 0.515100, 0.736152,
		9.010144, 24.252989, 13.391445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.645492, 23.818895, 13.562648>,  <9.317470, 23.892420, 12.876139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.645492, 23.818895, 13.562648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.261797, 23.911745, 13.627128>,  <9.031580, 23.967455, 13.665815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.261797, 23.911745, 13.627128>,  <9.645492, 23.818895, 13.562648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.261797, 23.911745, 13.627128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097978, -0.808177, 0.580732,
		0.265079, 0.541265, 0.797976,
		-0.959236, 0.232124, 0.161199,
		8.974026, 23.981382, 13.675488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.516155, 23.472961, 14.088968>,  <9.645492, 23.818895, 13.562648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.516155, 23.472961, 14.088968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147229, 23.601046, 14.002433>,  <8.925874, 23.677896, 13.950512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.147229, 23.601046, 14.002433>,  <9.516155, 23.472961, 14.088968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.147229, 23.601046, 14.002433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380875, -0.847903, 0.368775,
		-0.065349, 0.422524, 0.903993,
		-0.922314, 0.320209, -0.216339,
		8.870535, 23.697107, 13.937531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.084787, 23.239628, 14.526769>,  <9.516155, 23.472961, 14.088968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.084787, 23.239628, 14.526769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.838570, 23.322283, 14.222556>,  <8.690839, 23.371876, 14.040029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.838570, 23.322283, 14.222556>,  <9.084787, 23.239628, 14.526769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.838570, 23.322283, 14.222556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543387, -0.810237, 0.219651,
		-0.570821, 0.548467, 0.611021,
		-0.615543, 0.206639, -0.760531,
		8.653907, 23.384274, 13.994397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.433853, 23.156528, 14.751102>,  <9.084787, 23.239628, 14.526769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.433853, 23.156528, 14.751102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.367626, 23.127256, 14.357711>,  <8.327889, 23.109694, 14.121675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.367626, 23.127256, 14.357711>,  <8.433853, 23.156528, 14.751102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.367626, 23.127256, 14.357711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582272, -0.797617, 0.157375,
		-0.795956, 0.598709, 0.089450,
		-0.165568, -0.073180, -0.983479,
		8.317956, 23.105303, 14.062667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.606483, 23.062828, 14.606130>,  <8.433853, 23.156528, 14.751102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.606483, 23.062828, 14.606130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.817049, 22.928320, 14.293768>,  <7.943388, 22.847614, 14.106351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.817049, 22.928320, 14.293768>,  <7.606483, 23.062828, 14.606130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.817049, 22.928320, 14.293768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475447, -0.877862, 0.057519,
		-0.704868, 0.341000, -0.621997,
		0.526414, -0.336270, -0.780904,
		7.974973, 22.827438, 14.059497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.111769, 22.619396, 14.263270>,  <7.606483, 23.062828, 14.606130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.111769, 22.619396, 14.263270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.487075, 22.526896, 14.160366>,  <7.712258, 22.471395, 14.098623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.487075, 22.526896, 14.160366>,  <7.111769, 22.619396, 14.263270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.487075, 22.526896, 14.160366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248178, -0.968085, -0.034924,
		-0.240974, 0.096615, -0.965711,
		0.938264, -0.231253, -0.257261,
		7.768554, 22.457520, 14.083188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925321, 22.202890, 13.685154>,  <7.111769, 22.619396, 14.263270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925321, 22.202890, 13.685154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.306773, 22.114506, 13.766898>,  <7.535645, 22.061476, 13.815945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.306773, 22.114506, 13.766898>,  <6.925321, 22.202890, 13.685154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.306773, 22.114506, 13.766898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163315, -0.950229, -0.265315,
		0.252814, 0.219637, -0.942255,
		0.953632, -0.220960, 0.204361,
		7.592863, 22.048218, 13.828206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.059373, 21.736372, 13.150103>,  <6.925321, 22.202890, 13.685154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.059373, 21.736372, 13.150103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.314303, 21.663908, 13.449702>,  <7.467261, 21.620430, 13.629462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.314303, 21.663908, 13.449702>,  <7.059373, 21.736372, 13.150103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.314303, 21.663908, 13.449702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312427, -0.949250, 0.036252,
		0.704419, -0.257111, -0.661579,
		0.637325, -0.181159, 0.748998,
		7.505501, 21.609560, 13.674401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.320714, 21.093754, 13.090219>,  <7.059373, 21.736372, 13.150103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.320714, 21.093754, 13.090219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.418005, 21.144617, 13.474858>,  <7.476381, 21.175135, 13.705642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.418005, 21.144617, 13.474858>,  <7.320714, 21.093754, 13.090219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.418005, 21.144617, 13.474858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230220, -0.955473, 0.184581,
		0.942252, -0.266275, -0.203125,
		0.243230, 0.127159, 0.961598,
		7.490974, 21.182764, 13.763337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.801866, 20.640907, 13.214796>,  <7.320714, 21.093754, 13.090219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.801866, 20.640907, 13.214796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.650317, 20.744167, 13.570282>,  <7.559388, 20.806124, 13.783574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.650317, 20.744167, 13.570282>,  <7.801866, 20.640907, 13.214796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.650317, 20.744167, 13.570282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197884, -0.960695, 0.194698,
		0.904046, -0.102097, 0.415063,
		-0.378871, 0.258151, 0.888716,
		7.536656, 20.821613, 13.836897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.925091, 20.146536, 13.651746>,  <7.801866, 20.640907, 13.214796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.925091, 20.146536, 13.651746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637718, 20.310806, 13.876317>,  <7.465295, 20.409369, 14.011060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637718, 20.310806, 13.876317>,  <7.925091, 20.146536, 13.651746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.637718, 20.310806, 13.876317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322641, -0.911780, 0.254086,
		0.616246, 0.001403, 0.787552,
		-0.718431, 0.410676, 0.561428,
		7.422189, 20.434010, 14.044745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.907523, 19.801901, 14.262131>,  <7.925091, 20.146536, 13.651746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.907523, 19.801901, 14.262131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541300, 19.959652, 14.230585>,  <7.321566, 20.054302, 14.211658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541300, 19.959652, 14.230585>,  <7.907523, 19.801901, 14.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.541300, 19.959652, 14.230585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399946, -0.872116, 0.281883,
		0.042389, 0.289621, 0.956202,
		-0.915558, 0.394378, -0.078865,
		7.266633, 20.077965, 14.206925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.584432, 19.658527, 14.911222>,  <7.907523, 19.801901, 14.262131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.584432, 19.658527, 14.911222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.292218, 19.723347, 14.645874>,  <7.116890, 19.762238, 14.486665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.292218, 19.723347, 14.645874>,  <7.584432, 19.658527, 14.911222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.292218, 19.723347, 14.645874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485485, -0.806409, 0.337651,
		-0.480233, 0.568723, 0.667781,
		-0.730534, 0.162046, -0.663371,
		7.073058, 19.771961, 14.446863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.929047, 19.497620, 15.318445>,  <7.584432, 19.658527, 14.911222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.929047, 19.497620, 15.318445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.837903, 19.476383, 14.929547>,  <6.783216, 19.463642, 14.696208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.837903, 19.476383, 14.929547>,  <6.929047, 19.497620, 15.318445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.837903, 19.476383, 14.929547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448111, -0.880767, 0.153118,
		-0.864451, 0.470564, 0.176901,
		-0.227861, -0.053092, -0.972245,
		6.769545, 19.460455, 14.637874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.208951, 19.252434, 15.378929>,  <6.929047, 19.497620, 15.318445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.208951, 19.252434, 15.378929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.353331, 19.165560, 15.016151>,  <6.439959, 19.113436, 14.798485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.353331, 19.165560, 15.016151>,  <6.208951, 19.252434, 15.378929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.353331, 19.165560, 15.016151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330215, -0.939263, 0.093505,
		-0.872166, 0.265736, -0.410744,
		0.360949, -0.217186, -0.906943,
		6.461616, 19.100405, 14.744068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.693798, 18.824118, 15.027575>,  <6.208951, 19.252434, 15.378929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.693798, 18.824118, 15.027575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.017114, 18.754702, 14.802524>,  <6.211104, 18.713053, 14.667493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.017114, 18.754702, 14.802524>,  <5.693798, 18.824118, 15.027575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.017114, 18.754702, 14.802524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285312, -0.951334, -0.116453,
		-0.515038, 0.254652, -0.818467,
		0.808290, -0.173541, -0.562629,
		6.259601, 18.702639, 14.633735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.489402, 18.398565, 14.378276>,  <5.693798, 18.824118, 15.027575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.489402, 18.398565, 14.378276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.877091, 18.329893, 14.448854>,  <6.109704, 18.288691, 14.491201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.877091, 18.329893, 14.448854>,  <5.489402, 18.398565, 14.378276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.877091, 18.329893, 14.448854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148174, -0.979172, -0.138804,
		0.196602, 0.108388, -0.974474,
		0.969222, -0.171681, 0.176447,
		6.167858, 18.278389, 14.501788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.700888, 18.084385, 13.795320>,  <5.489402, 18.398565, 14.378276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.700888, 18.084385, 13.795320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.997164, 17.995407, 14.048901>,  <6.174930, 17.942020, 14.201050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.997164, 17.995407, 14.048901>,  <5.700888, 18.084385, 13.795320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.997164, 17.995407, 14.048901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185867, -0.974615, -0.124814,
		0.645625, -0.025383, -0.763233,
		0.740690, -0.222443, 0.633953,
		6.219371, 17.928675, 14.239086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.296548, 17.682825, 13.476268>,  <5.700888, 18.084385, 13.795320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.296548, 17.682825, 13.476268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.337167, 17.585678, 13.862160>,  <6.361538, 17.527390, 14.093695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.337167, 17.585678, 13.862160>,  <6.296548, 17.682825, 13.476268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.337167, 17.585678, 13.862160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022279, -0.970055, -0.241861,
		0.994581, 0.003067, -0.103918,
		0.101548, -0.242866, 0.964730,
		6.367631, 17.512819, 14.151579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.792904, 17.057278, 13.417366>,  <6.296548, 17.682825, 13.476268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.792904, 17.057278, 13.417366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.604341, 17.070410, 13.769887>,  <6.491203, 17.078289, 13.981400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.604341, 17.070410, 13.769887>,  <6.792904, 17.057278, 13.417366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.604341, 17.070410, 13.769887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053683, -0.998522, 0.008482,
		0.880279, -0.043312, 0.472474,
		-0.471409, 0.032831, 0.881303,
		6.462918, 17.080259, 14.034278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.098535, 16.572660, 13.805307>,  <6.792904, 17.057278, 13.417366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.098535, 16.572660, 13.805307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.739286, 16.620895, 13.974463>,  <6.523736, 16.649836, 14.075955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.739286, 16.620895, 13.974463>,  <7.098535, 16.572660, 13.805307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.739286, 16.620895, 13.974463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122394, -0.992215, 0.022993,
		0.422367, -0.031109, 0.905891,
		-0.898123, 0.120587, 0.422887,
		6.469849, 16.657072, 14.101329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.111964, 16.146881, 14.446216>,  <7.098535, 16.572660, 13.805307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.111964, 16.146881, 14.446216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.733846, 16.224411, 14.341259>,  <6.506976, 16.270929, 14.278285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.733846, 16.224411, 14.341259>,  <7.111964, 16.146881, 14.446216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.733846, 16.224411, 14.341259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224751, -0.969949, 0.093199,
		-0.236441, 0.147073, 0.960450,
		-0.945295, 0.193826, -0.262391,
		6.450258, 16.282558, 14.262542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.807569, 15.922447, 14.733135>,  <7.111964, 16.146881, 14.446216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.807569, 15.922447, 14.733135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.655743, 15.568241, 14.840312>,  <7.564648, 15.355718, 14.904618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.655743, 15.568241, 14.840312>,  <7.807569, 15.922447, 14.733135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.655743, 15.568241, 14.840312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854131, -0.446694, -0.266317,
		0.355516, 0.127773, 0.925895,
		-0.379564, -0.885516, 0.267942,
		7.541874, 15.302587, 14.920694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.257113, 15.594522, 15.317158>,  <7.807569, 15.922447, 14.733135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.257113, 15.594522, 15.317158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.071777, 15.366473, 15.045783>,  <7.960576, 15.229644, 14.882958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.071777, 15.366473, 15.045783>,  <8.257113, 15.594522, 15.317158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.071777, 15.366473, 15.045783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871670, -0.431187, -0.232958,
		-0.159718, -0.699311, 0.696745,
		-0.463338, -0.570124, -0.678437,
		7.932776, 15.195436, 14.842252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.542048, 14.832380, 15.360568>,  <8.257113, 15.594522, 15.317158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.542048, 14.832380, 15.360568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.444402, 14.971073, 14.998312>,  <8.385815, 15.054289, 14.780958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.444402, 14.971073, 14.998312>,  <8.542048, 14.832380, 15.360568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.444402, 14.971073, 14.998312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847571, -0.377496, -0.372988,
		-0.471203, -0.858646, -0.201729,
		-0.244113, 0.346733, -0.905641,
		8.371168, 15.075093, 14.726620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.596127, 14.310339, 14.845017>,  <8.542048, 14.832380, 15.360568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.596127, 14.310339, 14.845017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.661270, 14.677424, 14.700088>,  <8.700356, 14.897676, 14.613130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.661270, 14.677424, 14.700088>,  <8.596127, 14.310339, 14.845017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.661270, 14.677424, 14.700088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910505, -0.281253, -0.303115,
		-0.380077, -0.280533, -0.881387,
		0.162859, 0.917714, -0.362324,
		8.710128, 14.952739, 14.591391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.753184, 14.207806, 14.225346>,  <8.596127, 14.310339, 14.845017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.753184, 14.207806, 14.225346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.920181, 14.549618, 14.348944>,  <9.020380, 14.754704, 14.423102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.920181, 14.549618, 14.348944>,  <8.753184, 14.207806, 14.225346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.920181, 14.549618, 14.348944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904495, -0.358208, -0.231462,
		-0.087106, 0.376119, -0.922468,
		0.417493, 0.854530, 0.308996,
		9.045429, 14.805977, 14.441643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.166590, 14.539139, 13.597209>,  <8.753184, 14.207806, 14.225346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.166590, 14.539139, 13.597209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312909, 14.651886, 13.952003>,  <9.400701, 14.719535, 14.164879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312909, 14.651886, 13.952003>,  <9.166590, 14.539139, 13.597209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.312909, 14.651886, 13.952003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915882, -0.278373, -0.289254,
		0.165381, 0.918182, -0.359987,
		0.365799, 0.281868, 0.886984,
		9.422648, 14.736446, 14.218098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.893059, 14.836271, 13.482629>,  <9.166590, 14.539139, 13.597209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.893059, 14.836271, 13.482629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915486, 14.707852, 13.860789>,  <9.928943, 14.630801, 14.087686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.915486, 14.707852, 13.860789>,  <9.893059, 14.836271, 13.482629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.915486, 14.707852, 13.860789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861743, -0.462650, -0.208218,
		0.504238, 0.826368, 0.250720,
		0.056069, -0.321047, 0.945402,
		9.932307, 14.611538, 14.144410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.577183, 14.947916, 13.729120>,  <9.893059, 14.836271, 13.482629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.577183, 14.947916, 13.729120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.431080, 14.675115, 13.982563>,  <10.343418, 14.511434, 14.134628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.431080, 14.675115, 13.982563>,  <10.577183, 14.947916, 13.729120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.431080, 14.675115, 13.982563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825612, -0.551768, -0.117971,
		0.430061, 0.480024, 0.764608,
		-0.365257, -0.682004, 0.633607,
		10.321503, 14.470513, 14.172646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872978, 15.416656, 14.156428>,  <10.577183, 14.947916, 13.729120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872978, 15.416656, 14.156428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.207562, 15.204640, 14.212133>,  <11.408313, 15.077432, 14.245556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.207562, 15.204640, 14.212133>,  <10.872978, 15.416656, 14.156428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.207562, 15.204640, 14.212133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150471, 0.022222, 0.988365,
		-0.526965, -0.847683, -0.061168,
		0.836461, -0.530038, 0.139262,
		11.458501, 15.045630, 14.253912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.668723, 14.906957, 14.623703>,  <10.872978, 15.416656, 14.156428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.668723, 14.906957, 14.623703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067363, 14.913882, 14.655924>,  <11.306547, 14.918037, 14.675256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067363, 14.913882, 14.655924>,  <10.668723, 14.906957, 14.623703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067363, 14.913882, 14.655924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071421, -0.305891, 0.949384,
		0.041078, -0.951909, -0.303614,
		0.996600, 0.017314, 0.080552,
		11.366343, 14.919076, 14.680089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.849279, 14.297621, 14.843545>,  <10.668723, 14.906957, 14.623703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.849279, 14.297621, 14.843545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.158709, 14.529503, 14.945939>,  <11.344366, 14.668632, 15.007376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.158709, 14.529503, 14.945939>,  <10.849279, 14.297621, 14.843545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.158709, 14.529503, 14.945939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053415, -0.342863, 0.937866,
		0.631453, -0.739181, -0.234264,
		0.773573, 0.579704, 0.255984,
		11.390780, 14.703414, 15.022735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.318942, 13.812070, 15.196716>,  <10.849279, 14.297621, 14.843545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.318942, 13.812070, 15.196716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.416370, 14.186384, 15.298681>,  <11.474827, 14.410973, 15.359860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.416370, 14.186384, 15.298681>,  <11.318942, 13.812070, 15.196716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.416370, 14.186384, 15.298681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030977, -0.270199, 0.962306,
		0.969388, -0.226492, -0.094800,
		0.243570, 0.935785, 0.254912,
		11.489441, 14.467120, 15.375154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750213, 13.734417, 15.734297>,  <11.318942, 13.812070, 15.196716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.750213, 13.734417, 15.734297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630718, 14.114390, 15.770924>,  <11.559022, 14.342374, 15.792899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630718, 14.114390, 15.770924>,  <11.750213, 13.734417, 15.734297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630718, 14.114390, 15.770924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073602, -0.072729, 0.994632,
		0.951493, 0.303872, -0.048190,
		-0.298736, 0.949933, 0.091566,
		11.541098, 14.399370, 15.798393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135539, 13.975130, 16.279629>,  <11.750213, 13.734417, 15.734297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135539, 13.975130, 16.279629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863346, 14.264556, 16.233328>,  <11.700030, 14.438211, 16.205547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863346, 14.264556, 16.233328>,  <12.135539, 13.975130, 16.279629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.863346, 14.264556, 16.233328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068115, 0.219745, 0.973176,
		0.729591, 0.654345, -0.198818,
		-0.680483, 0.723564, -0.115753,
		11.659202, 14.481626, 16.198603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.396477, 14.521836, 16.677910>,  <12.135539, 13.975130, 16.279629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.396477, 14.521836, 16.677910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006155, 14.603973, 16.647869>,  <11.771962, 14.653255, 16.629845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006155, 14.603973, 16.647869>,  <12.396477, 14.521836, 16.677910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006155, 14.603973, 16.647869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062351, 0.067889, 0.995743,
		0.209566, 0.976333, -0.053443,
		-0.975804, 0.205342, -0.075102,
		11.713413, 14.665576, 16.625338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350321, 15.015419, 17.115118>,  <12.396477, 14.521836, 16.677910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350321, 15.015419, 17.115118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978849, 14.874629, 17.068354>,  <11.755966, 14.790154, 17.040295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978849, 14.874629, 17.068354>,  <12.350321, 15.015419, 17.115118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978849, 14.874629, 17.068354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152599, 0.075312, 0.985415,
		-0.338037, 0.932974, -0.123651,
		-0.928679, -0.351976, -0.116913,
		11.700246, 14.769036, 17.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.976594, 15.401464, 17.568230>,  <12.350321, 15.015419, 17.115118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.976594, 15.401464, 17.568230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719926, 15.103186, 17.496458>,  <11.565925, 14.924218, 17.453394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719926, 15.103186, 17.496458>,  <11.976594, 15.401464, 17.568230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719926, 15.103186, 17.496458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224844, -0.040778, 0.973541,
		-0.733282, 0.665037, -0.141499,
		-0.641671, -0.745696, -0.179431,
		11.527425, 14.879477, 17.442629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.312936, 15.471526, 17.957249>,  <11.976594, 15.401464, 17.568230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.312936, 15.471526, 17.957249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307232, 15.080501, 17.873184>,  <11.303809, 14.845885, 17.822746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.307232, 15.080501, 17.873184>,  <11.312936, 15.471526, 17.957249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307232, 15.080501, 17.873184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313019, -0.195253, 0.929460,
		-0.949640, 0.079039, -0.303211,
		-0.014261, -0.977563, -0.210160,
		11.302954, 14.787231, 17.810137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664495, 15.238212, 18.141598>,  <11.312936, 15.471526, 17.957249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664495, 15.238212, 18.141598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896489, 14.912702, 18.126698>,  <11.035686, 14.717396, 18.117758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896489, 14.912702, 18.126698>,  <10.664495, 15.238212, 18.141598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.896489, 14.912702, 18.126698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291449, -0.249986, 0.923344,
		-0.760707, -0.524669, -0.382162,
		0.579985, -0.813775, -0.037252,
		11.070485, 14.668570, 18.115522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.208947, 14.646658, 18.186068>,  <10.664495, 15.238212, 18.141598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.208947, 14.646658, 18.186068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.577531, 14.525594, 18.283482>,  <10.798681, 14.452955, 18.341930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.577531, 14.525594, 18.283482>,  <10.208947, 14.646658, 18.186068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.577531, 14.525594, 18.283482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374246, -0.523509, 0.765427,
		-0.104173, -0.796452, -0.595662,
		0.921460, -0.302661, 0.243534,
		10.853969, 14.434795, 18.356543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.063807, 13.932261, 18.376141>,  <10.208947, 14.646658, 18.186068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.063807, 13.932261, 18.376141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.409926, 14.042157, 18.543842>,  <10.617598, 14.108095, 18.644464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.409926, 14.042157, 18.543842>,  <10.063807, 13.932261, 18.376141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.409926, 14.042157, 18.543842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185791, -0.601043, 0.777321,
		0.465554, -0.750509, -0.469037,
		0.865298, 0.274742, 0.419256,
		10.669516, 14.124579, 18.669619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461631, 13.347529, 18.512430>,  <10.063807, 13.932261, 18.376141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461631, 13.347529, 18.512430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580699, 13.651214, 18.743944>,  <10.652140, 13.833424, 18.882853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580699, 13.651214, 18.743944>,  <10.461631, 13.347529, 18.512430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.580699, 13.651214, 18.743944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389358, -0.457007, 0.799716,
		0.871661, -0.463406, 0.159567,
		0.297670, 0.759210, 0.578786,
		10.670000, 13.878977, 18.917580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.818216, 13.055041, 19.064152>,  <10.461631, 13.347529, 18.512430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.818216, 13.055041, 19.064152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724694, 13.422942, 19.190256>,  <10.668581, 13.643682, 19.265919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724694, 13.422942, 19.190256>,  <10.818216, 13.055041, 19.064152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724694, 13.422942, 19.190256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329258, -0.379990, 0.864406,
		0.914835, 0.098301, 0.391680,
		-0.233806, 0.919753, 0.315262,
		10.654552, 13.698868, 19.284834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.090818, 13.019408, 19.710178>,  <10.818216, 13.055041, 19.064152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.090818, 13.019408, 19.710178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832060, 13.321545, 19.668253>,  <10.676805, 13.502827, 19.643097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832060, 13.321545, 19.668253>,  <11.090818, 13.019408, 19.710178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832060, 13.321545, 19.668253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406028, -0.224820, 0.885775,
		0.645497, 0.615562, 0.452124,
		-0.646896, 0.755341, -0.104815,
		10.637991, 13.548147, 19.636808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988984, 13.191751, 20.358719>,  <11.090818, 13.019408, 19.710178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988984, 13.191751, 20.358719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.662817, 13.376778, 20.219503>,  <10.467117, 13.487793, 20.135975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.662817, 13.376778, 20.219503>,  <10.988984, 13.191751, 20.358719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.662817, 13.376778, 20.219503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447704, -0.122805, 0.885709,
		0.366957, 0.878039, 0.307229,
		-0.815417, 0.462564, -0.348037,
		10.418192, 13.515547, 20.115091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.825967, 13.537983, 20.924280>,  <10.988984, 13.191751, 20.358719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.825967, 13.537983, 20.924280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.511134, 13.547050, 20.677708>,  <10.322234, 13.552489, 20.529764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.511134, 13.547050, 20.677708>,  <10.825967, 13.537983, 20.924280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.511134, 13.547050, 20.677708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616813, -0.039777, 0.786104,
		-0.006702, 0.998952, 0.045289,
		-0.787082, 0.022666, -0.616433,
		10.275010, 13.553849, 20.492779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.407106, 14.069895, 21.190081>,  <10.825967, 13.537983, 20.924280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.407106, 14.069895, 21.190081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.194905, 13.819048, 20.961943>,  <10.067585, 13.668540, 20.825060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.194905, 13.819048, 20.961943>,  <10.407106, 14.069895, 21.190081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.194905, 13.819048, 20.961943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574712, -0.228498, 0.785809,
		-0.623115, 0.744657, -0.239192,
		-0.530503, -0.627116, -0.570343,
		10.035754, 13.630913, 20.790840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.695931, 14.252312, 21.318403>,  <10.407106, 14.069895, 21.190081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.695931, 14.252312, 21.318403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.743601, 13.880630, 21.178473>,  <9.772202, 13.657621, 21.094515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.743601, 13.880630, 21.178473>,  <9.695931, 14.252312, 21.318403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.743601, 13.880630, 21.178473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615635, -0.345584, 0.708213,
		-0.778968, 0.130965, -0.613235,
		0.119173, -0.929204, -0.349826,
		9.779353, 13.601870, 21.073524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965444, 14.117321, 21.341164>,  <9.695931, 14.252312, 21.318403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965444, 14.117321, 21.341164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.188208, 13.787020, 21.305424>,  <9.321866, 13.588839, 21.283979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.188208, 13.787020, 21.305424>,  <8.965444, 14.117321, 21.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.188208, 13.787020, 21.305424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409401, -0.366516, 0.835498,
		-0.722664, -0.428716, -0.542181,
		0.556909, -0.825754, -0.089351,
		9.355280, 13.539293, 21.278618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.495828, 13.640327, 21.458364>,  <8.965444, 14.117321, 21.341164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.495828, 13.640327, 21.458364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.840735, 13.449449, 21.526213>,  <9.047680, 13.334921, 21.566921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.840735, 13.449449, 21.526213>,  <8.495828, 13.640327, 21.458364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.840735, 13.449449, 21.526213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451869, -0.573666, 0.683170,
		-0.228701, -0.665724, -0.710287,
		0.862270, -0.477199, 0.169622,
		9.099417, 13.306289, 21.577099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.356358, 12.933249, 21.637949>,  <8.495828, 13.640327, 21.458364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.356358, 12.933249, 21.637949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730159, 12.972642, 21.774773>,  <8.954440, 12.996277, 21.856867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730159, 12.972642, 21.774773>,  <8.356358, 12.933249, 21.637949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.730159, 12.972642, 21.774773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228089, -0.572083, 0.787843,
		0.273273, -0.814262, -0.512151,
		0.934504, 0.098480, 0.342059,
		9.010509, 13.002186, 21.877390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.627756, 12.291319, 21.717613>,  <8.356358, 12.933249, 21.637949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.627756, 12.291319, 21.717613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846499, 12.537334, 21.944830>,  <8.977746, 12.684944, 22.081160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846499, 12.537334, 21.944830>,  <8.627756, 12.291319, 21.717613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.846499, 12.537334, 21.944830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033134, -0.693849, 0.719358,
		0.836569, -0.374566, -0.399816,
		0.546859, 0.615040, 0.568041,
		9.010557, 12.721847, 22.115242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.080842, 11.859382, 22.045053>,  <8.627756, 12.291319, 21.717613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.080842, 11.859382, 22.045053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.115332, 12.183878, 22.276382>,  <9.136025, 12.378575, 22.415180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.115332, 12.183878, 22.276382>,  <9.080842, 11.859382, 22.045053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.115332, 12.183878, 22.276382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079193, -0.573065, 0.815675,
		0.993123, -0.116130, 0.014833,
		0.086224, 0.811240, 0.578321,
		9.141199, 12.427250, 22.449879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.558096, 11.754690, 22.588667>,  <9.080842, 11.859382, 22.045053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.558096, 11.754690, 22.588667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.365299, 12.065521, 22.750572>,  <9.249621, 12.252020, 22.847715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.365299, 12.065521, 22.750572>,  <9.558096, 11.754690, 22.588667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.365299, 12.065521, 22.750572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279740, -0.574270, 0.769389,
		0.830319, 0.257611, 0.494173,
		-0.481992, 0.777078, 0.404764,
		9.220701, 12.298645, 22.872002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.684606, 11.717988, 23.334913>,  <9.558096, 11.754690, 22.588667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.684606, 11.717988, 23.334913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.370909, 11.966074, 23.328022>,  <9.182691, 12.114925, 23.323887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.370909, 11.966074, 23.328022>,  <9.684606, 11.717988, 23.334913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.370909, 11.966074, 23.328022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316082, -0.375472, 0.871271,
		0.533905, 0.688734, 0.490500,
		-0.784243, 0.620214, -0.017230,
		9.135635, 12.152139, 23.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.768207, 12.144870, 24.010357>,  <9.684606, 11.717988, 23.334913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.768207, 12.144870, 24.010357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383613, 12.146931, 23.900431>,  <9.152857, 12.148168, 23.834475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383613, 12.146931, 23.900431>,  <9.768207, 12.144870, 24.010357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.383613, 12.146931, 23.900431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265842, -0.271457, 0.925008,
		-0.069834, 0.962437, 0.262371,
		-0.961484, 0.005153, -0.274813,
		9.095167, 12.148477, 23.817987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.494183, 12.216160, 24.624352>,  <9.768207, 12.144870, 24.010357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.494183, 12.216160, 24.624352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.155977, 12.160431, 24.418169>,  <8.953054, 12.126993, 24.294458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.155977, 12.160431, 24.418169>,  <9.494183, 12.216160, 24.624352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.155977, 12.160431, 24.418169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490837, -0.177235, 0.853034,
		-0.210204, 0.974257, 0.081470,
		-0.845514, -0.139322, -0.515457,
		8.902323, 12.118634, 24.263533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.880840, 12.534543, 24.940981>,  <9.494183, 12.216160, 24.624352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.880840, 12.534543, 24.940981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756214, 12.221138, 24.725933>,  <8.681438, 12.033094, 24.596905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756214, 12.221138, 24.725933>,  <8.880840, 12.534543, 24.940981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756214, 12.221138, 24.725933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585601, -0.287247, 0.757998,
		-0.748331, 0.550995, -0.369330,
		-0.311565, -0.783513, -0.537619,
		8.662745, 11.986084, 24.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.106574, 12.523965, 24.989286>,  <8.880840, 12.534543, 24.940981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.106574, 12.523965, 24.989286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.289185, 12.180003, 24.897942>,  <8.398750, 11.973626, 24.843134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.289185, 12.180003, 24.897942>,  <8.106574, 12.523965, 24.989286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.289185, 12.180003, 24.897942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375794, -0.419017, 0.826561,
		-0.806451, -0.291529, -0.514439,
		0.456525, -0.859904, -0.228362,
		8.426143, 11.922032, 24.829433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.647240, 12.020479, 25.097515>,  <8.106574, 12.523965, 24.989286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.647240, 12.020479, 25.097515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.994822, 11.822632, 25.090937>,  <8.203371, 11.703923, 25.086988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.994822, 11.822632, 25.090937>,  <7.647240, 12.020479, 25.097515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.994822, 11.822632, 25.090937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280449, -0.519536, 0.807112,
		-0.407757, -0.696732, -0.590169,
		0.868955, -0.494618, -0.016447,
		8.255508, 11.674246, 25.086002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.470146, 11.495821, 25.611685>,  <7.647240, 12.020479, 25.097515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.470146, 11.495821, 25.611685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864567, 11.480795, 25.546829>,  <8.101219, 11.471780, 25.507915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864567, 11.480795, 25.546829>,  <7.470146, 11.495821, 25.611685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.864567, 11.480795, 25.546829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108648, -0.592702, 0.798060,
		-0.126079, -0.804545, -0.580354,
		0.986052, -0.037564, -0.162140,
		8.160382, 11.469525, 25.498188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.561375, 10.819277, 25.774534>,  <7.470146, 11.495821, 25.611685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.561375, 10.819277, 25.774534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.917345, 10.992851, 25.830723>,  <8.130927, 11.096996, 25.864435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.917345, 10.992851, 25.830723>,  <7.561375, 10.819277, 25.774534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.917345, 10.992851, 25.830723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240263, -0.707782, 0.664318,
		0.387693, -0.557444, -0.734132,
		0.889926, 0.433936, 0.140469,
		8.184322, 11.123033, 25.872864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.084783, 10.288170, 25.645407>,  <7.561375, 10.819277, 25.774534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.084783, 10.288170, 25.645407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.283634, 10.580802, 25.832020>,  <8.402946, 10.756381, 25.943987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.283634, 10.580802, 25.832020>,  <8.084783, 10.288170, 25.645407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.283634, 10.580802, 25.832020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521665, -0.681655, 0.513042,
		0.693345, -0.011674, -0.720511,
		0.497129, 0.731581, 0.466532,
		8.432773, 10.800276, 25.971979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.859580, 10.093504, 25.753929>,  <8.084783, 10.288170, 25.645407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.859580, 10.093504, 25.753929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.770696, 10.377510, 26.021212>,  <8.717365, 10.547914, 26.181581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.770696, 10.377510, 26.021212>,  <8.859580, 10.093504, 25.753929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.770696, 10.377510, 26.021212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449595, -0.533509, 0.716403,
		0.865151, 0.459615, -0.200668,
		-0.222211, 0.710016, 0.668206,
		8.704032, 10.590515, 26.221674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.462916, 10.229554, 26.135479>,  <8.859580, 10.093504, 25.753929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.462916, 10.229554, 26.135479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.150472, 10.322879, 26.367144>,  <8.963005, 10.378874, 26.506144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.150472, 10.322879, 26.367144>,  <9.462916, 10.229554, 26.135479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.150472, 10.322879, 26.367144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388158, -0.545105, 0.743097,
		0.489079, 0.805249, 0.335226,
		-0.781112, 0.233312, 0.579163,
		8.916139, 10.392873, 26.540894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.768705, 10.212962, 26.861818>,  <9.462916, 10.229554, 26.135479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.768705, 10.212962, 26.861818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.374310, 10.210695, 26.928503>,  <9.137672, 10.209335, 26.968513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.374310, 10.210695, 26.928503>,  <9.768705, 10.212962, 26.861818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.374310, 10.210695, 26.928503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134603, -0.617321, 0.775111,
		0.098521, 0.786691, 0.609435,
		-0.985990, -0.005667, 0.166711,
		9.078512, 10.208995, 26.978516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.705500, 10.138381, 27.560532>,  <9.768705, 10.212962, 26.861818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.705500, 10.138381, 27.560532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.340746, 10.025924, 27.440914>,  <9.121894, 9.958449, 27.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.340746, 10.025924, 27.440914>,  <9.705500, 10.138381, 27.560532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.340746, 10.025924, 27.440914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035634, -0.671597, 0.740059,
		-0.408899, 0.685504, 0.602400,
		-0.911884, -0.281143, -0.299042,
		9.067181, 9.941581, 27.351202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.320739, 10.116170, 28.187244>,  <9.705500, 10.138381, 27.560532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.320739, 10.116170, 28.187244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.145332, 9.863929, 27.931107>,  <9.040089, 9.712584, 27.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.145332, 9.863929, 27.931107>,  <9.320739, 10.116170, 28.187244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.145332, 9.863929, 27.931107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236884, -0.606210, 0.759207,
		-0.866943, 0.484611, 0.116453,
		-0.438515, -0.630603, -0.640346,
		9.013778, 9.674747, 27.739002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.825025, 9.918048, 28.726500>,  <9.320739, 10.116170, 28.187244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.825025, 9.918048, 28.726500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.859918, 9.651276, 28.430500>,  <8.880854, 9.491213, 28.252901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.859918, 9.651276, 28.430500>,  <8.825025, 9.918048, 28.726500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.859918, 9.651276, 28.430500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132338, -0.744003, 0.654940,
		-0.987359, 0.040799, -0.153161,
		0.087231, -0.666930, -0.739997,
		8.886087, 9.451197, 28.208502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.221231, 9.450978, 28.705866>,  <8.825025, 9.918048, 28.726500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.221231, 9.450978, 28.705866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.573591, 9.306583, 28.583424>,  <8.785007, 9.219947, 28.509958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.573591, 9.306583, 28.583424>,  <8.221231, 9.450978, 28.705866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.573591, 9.306583, 28.583424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042909, -0.704997, 0.707911,
		-0.471351, -0.610465, -0.636522,
		0.880901, -0.360987, -0.306107,
		8.837862, 9.198287, 28.491592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.237259, 8.749549, 28.372395>,  <8.221231, 9.450978, 28.705866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.237259, 8.749549, 28.372395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.566452, 8.832730, 28.583849>,  <8.763968, 8.882639, 28.710722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.566452, 8.832730, 28.583849>,  <8.237259, 8.749549, 28.372395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.566452, 8.832730, 28.583849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185963, -0.780685, 0.596615,
		0.536765, -0.589310, -0.603818,
		0.822983, 0.207954, 0.528634,
		8.813347, 8.895117, 28.742439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.407899, 8.111523, 28.444515>,  <8.237259, 8.749549, 28.372395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.407899, 8.111523, 28.444515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.569662, 8.341396, 28.729103>,  <8.666720, 8.479321, 28.899857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.569662, 8.341396, 28.729103>,  <8.407899, 8.111523, 28.444515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.569662, 8.341396, 28.729103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120688, -0.737588, 0.664379,
		0.906581, -0.354547, -0.228929,
		0.404409, 0.574684, 0.711472,
		8.690985, 8.513802, 28.942545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.843990, 7.820630, 28.075392>,  <8.407899, 8.111523, 28.444515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.843990, 7.820630, 28.075392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.616736, 7.573635, 27.857794>,  <7.480383, 7.425438, 27.727234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.616736, 7.573635, 27.857794>,  <7.843990, 7.820630, 28.075392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.616736, 7.573635, 27.857794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669174, -0.731406, 0.131347,
		-0.478988, -0.289406, 0.828743,
		-0.568135, -0.617487, -0.543997,
		7.446296, 7.388389, 27.694595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.430763, 7.216661, 28.455795>,  <7.843990, 7.820630, 28.075392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.430763, 7.216661, 28.455795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.575960, 7.157371, 28.087824>,  <7.663078, 7.121797, 27.867041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.575960, 7.157371, 28.087824>,  <7.430763, 7.216661, 28.455795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.575960, 7.157371, 28.087824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597226, -0.720804, 0.351799,
		-0.715234, -0.677104, -0.173119,
		0.362989, -0.148228, -0.919928,
		7.684858, 7.112904, 27.811846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.197035, 6.600249, 28.200844>,  <7.430763, 7.216661, 28.455795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.197035, 6.600249, 28.200844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.528298, 6.679914, 27.991276>,  <7.727056, 6.727713, 27.865536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.528298, 6.679914, 27.991276>,  <7.197035, 6.600249, 28.200844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.528298, 6.679914, 27.991276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476450, -0.742475, 0.470878,
		-0.295217, -0.639582, -0.709776,
		0.828156, 0.199162, -0.523920,
		7.776745, 6.739663, 27.834101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.469685, 5.937749, 27.929249>,  <7.197035, 6.600249, 28.200844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.469685, 5.937749, 27.929249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.766028, 6.203725, 27.967161>,  <7.943834, 6.363310, 27.989908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.766028, 6.203725, 27.967161>,  <7.469685, 5.937749, 27.929249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.766028, 6.203725, 27.967161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390404, -0.541145, 0.744813,
		0.546547, -0.514797, -0.660508,
		0.740858, 0.664940, 0.094782,
		7.988286, 6.403207, 27.995596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.110319, 5.524515, 27.880657>,  <7.469685, 5.937749, 27.929249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.110319, 5.524515, 27.880657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.100632, 5.846842, 28.117325>,  <8.094819, 6.040238, 28.259325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.100632, 5.846842, 28.117325>,  <8.110319, 5.524515, 27.880657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.100632, 5.846842, 28.117325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570718, -0.474775, 0.669977,
		0.820789, 0.353901, -0.448397,
		-0.024218, 0.805818, 0.591668,
		8.093367, 6.088587, 28.294825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.827494, 5.708821, 28.138420>,  <8.110319, 5.524515, 27.880657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.827494, 5.708821, 28.138420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.543339, 5.823547, 28.395508>,  <8.372846, 5.892382, 28.549761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.543339, 5.823547, 28.395508>,  <8.827494, 5.708821, 28.138420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.543339, 5.823547, 28.395508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394822, -0.593576, 0.701273,
		0.582637, 0.751935, 0.308428,
		-0.710387, 0.286814, 0.642720,
		8.330223, 5.909591, 28.588324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.083677, 6.013453, 28.803072>,  <8.827494, 5.708821, 28.138420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.083677, 6.013453, 28.803072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720715, 5.867735, 28.886883>,  <8.502937, 5.780304, 28.937170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720715, 5.867735, 28.886883>,  <9.083677, 6.013453, 28.803072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.720715, 5.867735, 28.886883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385835, -0.524551, 0.758932,
		-0.166567, 0.769503, 0.616539,
		-0.907407, -0.364295, 0.209529,
		8.448493, 5.758446, 28.949741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.578972, 6.672772, 28.595171>,  <9.083677, 6.013453, 28.803072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.578972, 6.672772, 28.595171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397059, 6.920273, 28.338947>,  <9.287911, 7.068774, 28.185213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397059, 6.920273, 28.338947>,  <9.578972, 6.672772, 28.595171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.397059, 6.920273, 28.338947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868331, 0.148220, -0.473320,
		-0.197925, -0.771475, -0.604691,
		-0.454782, 0.618754, -0.640559,
		9.260625, 7.105899, 28.146780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.020447, 6.440621, 28.043026>,  <9.578972, 6.672772, 28.595171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.020447, 6.440621, 28.043026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.846256, 6.793690, 27.972317>,  <9.741742, 7.005531, 27.929892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.846256, 6.793690, 27.972317>,  <10.020447, 6.440621, 28.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.846256, 6.793690, 27.972317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658227, 0.178263, -0.731409,
		-0.614082, -0.434870, -0.658629,
		-0.435477, 0.882672, -0.176775,
		9.715613, 7.058491, 27.919285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.965817, 6.485850, 27.388174>,  <10.020447, 6.440621, 28.043026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.965817, 6.485850, 27.388174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.951236, 6.877101, 27.470087>,  <9.942487, 7.111852, 27.519236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.951236, 6.877101, 27.470087>,  <9.965817, 6.485850, 27.388174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.951236, 6.877101, 27.470087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593465, 0.186061, -0.783058,
		-0.804034, 0.092988, -0.587268,
		-0.036453, 0.978128, 0.204784,
		9.940300, 7.170539, 27.531523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957506, 6.736897, 26.777353>,  <9.965817, 6.485850, 27.388174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957506, 6.736897, 26.777353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.059114, 7.049608, 27.005142>,  <10.120079, 7.237235, 27.141815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.059114, 7.049608, 27.005142>,  <9.957506, 6.736897, 26.777353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.059114, 7.049608, 27.005142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688067, 0.267722, -0.674455,
		-0.679734, 0.563159, -0.469908,
		0.254020, 0.781778, 0.569471,
		10.135321, 7.284142, 27.175983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.028522, 7.305012, 26.297350>,  <9.957506, 6.736897, 26.777353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.028522, 7.305012, 26.297350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239203, 7.399088, 26.624096>,  <10.365612, 7.455534, 26.820143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.239203, 7.399088, 26.624096>,  <10.028522, 7.305012, 26.297350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.239203, 7.399088, 26.624096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752606, 0.317720, -0.576748,
		-0.395180, 0.918553, -0.009661,
		0.526704, 0.235190, 0.816865,
		10.397215, 7.469645, 26.869156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081321, 8.027601, 26.331118>,  <10.028522, 7.305012, 26.297350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081321, 8.027601, 26.331118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390679, 7.860152, 26.521534>,  <10.576294, 7.759682, 26.635784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390679, 7.860152, 26.521534>,  <10.081321, 8.027601, 26.331118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390679, 7.860152, 26.521534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632744, 0.463988, -0.619960,
		0.038653, 0.780685, 0.623728,
		0.773395, -0.418624, 0.476040,
		10.622698, 7.734565, 26.664347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.598813, 8.580709, 26.406950>,  <10.081321, 8.027601, 26.331118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.598813, 8.580709, 26.406950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791769, 8.236687, 26.473410>,  <10.907542, 8.030273, 26.513285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791769, 8.236687, 26.473410>,  <10.598813, 8.580709, 26.406950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.791769, 8.236687, 26.473410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772448, 0.328221, -0.543686,
		0.413066, 0.390611, 0.822678,
		0.482390, -0.860055, 0.166149,
		10.936486, 7.978670, 26.523254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.123848, 8.781970, 26.042036>,  <10.598813, 8.580709, 26.406950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.123848, 8.781970, 26.042036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.245701, 8.420461, 26.162298>,  <11.318812, 8.203555, 26.234455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.245701, 8.420461, 26.162298>,  <11.123848, 8.781970, 26.042036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.245701, 8.420461, 26.162298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679586, -0.014926, -0.733444,
		0.667354, 0.427754, 0.609644,
		0.304633, -0.903772, 0.300656,
		11.337090, 8.149329, 26.252495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.813692, 8.795447, 26.313486>,  <11.123848, 8.781970, 26.042036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.813692, 8.795447, 26.313486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760775, 8.430284, 26.159035>,  <11.729024, 8.211185, 26.066364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760775, 8.430284, 26.159035>,  <11.813692, 8.795447, 26.313486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.760775, 8.430284, 26.159035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661012, 0.209029, -0.720673,
		0.738621, -0.350576, 0.575790,
		-0.132294, -0.912909, -0.386129,
		11.721087, 8.156411, 26.043196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.473779, 8.434933, 26.255909>,  <11.813692, 8.795447, 26.313486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.473779, 8.434933, 26.255909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243201, 8.253797, 25.983835>,  <12.104855, 8.145115, 25.820591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243201, 8.253797, 25.983835>,  <12.473779, 8.434933, 26.255909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243201, 8.253797, 25.983835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678533, 0.198546, -0.707229,
		0.455309, -0.869204, 0.192816,
		-0.576443, -0.452840, -0.680184,
		12.070269, 8.117945, 25.779779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.871303, 8.080474, 25.785185>,  <12.473779, 8.434933, 26.255909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.871303, 8.080474, 25.785185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537921, 8.091945, 25.564447>,  <12.337892, 8.098827, 25.432005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537921, 8.091945, 25.564447>,  <12.871303, 8.080474, 25.785185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.537921, 8.091945, 25.564447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551475, 0.106537, -0.827360,
		0.035064, -0.993895, -0.104610,
		-0.833454, 0.028679, -0.551844,
		12.287885, 8.100548, 25.398893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.928868, 7.613300, 25.213625>,  <12.871303, 8.080474, 25.785185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.928868, 7.613300, 25.213625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.650554, 7.882280, 25.112677>,  <12.483564, 8.043668, 25.052107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.650554, 7.882280, 25.112677>,  <12.928868, 7.613300, 25.213625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.650554, 7.882280, 25.112677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519629, 0.228710, -0.823212,
		-0.495849, -0.703920, -0.508558,
		-0.695787, 0.672450, -0.252372,
		12.441817, 8.084015, 25.036964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732418, 7.503912, 24.485558>,  <12.928868, 7.613300, 25.213625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732418, 7.503912, 24.485558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618177, 7.880015, 24.559690>,  <12.549633, 8.105678, 24.604170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618177, 7.880015, 24.559690>,  <12.732418, 7.503912, 24.485558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618177, 7.880015, 24.559690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411715, 0.295011, -0.862241,
		-0.865403, -0.169954, -0.471373,
		-0.285602, 0.940258, 0.185331,
		12.532496, 8.162092, 24.615290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.495539, 7.854757, 23.900515>,  <12.732418, 7.503912, 24.485558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.495539, 7.854757, 23.900515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636636, 8.147085, 24.134258>,  <12.721293, 8.322482, 24.274504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636636, 8.147085, 24.134258>,  <12.495539, 7.854757, 23.900515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636636, 8.147085, 24.134258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297631, 0.504438, -0.810530,
		-0.887124, 0.459831, -0.039578,
		0.352742, 0.730820, 0.584359,
		12.742458, 8.366331, 24.309566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171889, 8.587202, 23.714247>,  <12.495539, 7.854757, 23.900515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171889, 8.587202, 23.714247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546113, 8.577180, 23.855160>,  <12.770647, 8.571166, 23.939707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546113, 8.577180, 23.855160>,  <12.171889, 8.587202, 23.714247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546113, 8.577180, 23.855160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323712, 0.459661, -0.826996,
		-0.141208, 0.887741, 0.438151,
		0.935559, -0.025056, 0.352280,
		12.826780, 8.569663, 23.960844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468061, 9.286748, 23.750608>,  <12.171889, 8.587202, 23.714247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468061, 9.286748, 23.750608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.718936, 8.979643, 23.698183>,  <12.869461, 8.795380, 23.666727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.718936, 8.979643, 23.698183>,  <12.468061, 9.286748, 23.750608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.718936, 8.979643, 23.698183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369459, 0.441404, -0.817718,
		0.685666, 0.464439, 0.560499,
		0.627187, -0.767763, -0.131064,
		12.907092, 8.749314, 23.658863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.177649, 9.556917, 23.413609>,  <12.468061, 9.286748, 23.750608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.177649, 9.556917, 23.413609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237368, 9.168303, 23.340033>,  <13.273198, 8.935136, 23.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237368, 9.168303, 23.340033>,  <13.177649, 9.556917, 23.413609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237368, 9.168303, 23.340033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466708, 0.233235, -0.853103,
		0.871719, 0.041519, 0.488244,
		0.149295, -0.971534, -0.183939,
		13.282156, 8.876843, 23.284851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943512, 9.414800, 23.141026>,  <13.177649, 9.556917, 23.413609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943512, 9.414800, 23.141026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.682547, 9.129465, 23.038647>,  <13.525968, 8.958264, 22.977219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.682547, 9.129465, 23.038647>,  <13.943512, 9.414800, 23.141026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682547, 9.129465, 23.038647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173074, 0.188560, -0.966691,
		0.737837, -0.674979, 0.000441,
		-0.652412, -0.713336, -0.255947,
		13.486823, 8.915464, 22.961863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.281814, 8.899430, 22.616987>,  <13.943512, 9.414800, 23.141026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.281814, 8.899430, 22.616987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884150, 8.889696, 22.574934>,  <13.645551, 8.883856, 22.549702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884150, 8.889696, 22.574934>,  <14.281814, 8.899430, 22.616987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884150, 8.889696, 22.574934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102891, 0.079926, -0.991476,
		0.032530, -0.996504, -0.076956,
		-0.994160, -0.024335, -0.105132,
		13.585901, 8.882396, 22.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206658, 8.552724, 21.989101>,  <14.281814, 8.899430, 22.616987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206658, 8.552724, 21.989101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.852255, 8.730904, 22.040583>,  <13.639613, 8.837811, 22.071472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.852255, 8.730904, 22.040583>,  <14.206658, 8.552724, 21.989101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.852255, 8.730904, 22.040583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061598, 0.162034, -0.984861,
		-0.459560, -0.880522, -0.116124,
		-0.886008, 0.445450, 0.128703,
		13.586452, 8.864538, 22.079193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773935, 8.269648, 21.548895>,  <14.206658, 8.552724, 21.989101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773935, 8.269648, 21.548895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.591228, 8.615982, 21.630569>,  <13.481603, 8.823783, 21.679575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.591228, 8.615982, 21.630569>,  <13.773935, 8.269648, 21.548895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.591228, 8.615982, 21.630569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082866, 0.187120, -0.978836,
		-0.885718, -0.464021, -0.013722,
		-0.456769, 0.865835, 0.204187,
		13.454197, 8.875732, 21.691826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095283, 8.283301, 21.142448>,  <13.773935, 8.269648, 21.548895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095283, 8.283301, 21.142448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187999, 8.662413, 21.230074>,  <13.243629, 8.889879, 21.282648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187999, 8.662413, 21.230074>,  <13.095283, 8.283301, 21.142448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187999, 8.662413, 21.230074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238067, 0.273616, -0.931911,
		-0.943185, 0.163857, 0.289056,
		0.231791, 0.947779, 0.219062,
		13.257536, 8.946747, 21.295792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.537526, 8.671128, 20.884565>,  <13.095283, 8.283301, 21.142448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.537526, 8.671128, 20.884565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.826312, 8.944889, 20.925276>,  <12.999584, 9.109146, 20.949701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.826312, 8.944889, 20.925276>,  <12.537526, 8.671128, 20.884565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.826312, 8.944889, 20.925276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030845, 0.178776, -0.983406,
		-0.691241, 0.706846, 0.150181,
		0.721966, 0.684403, 0.101774,
		13.042902, 9.150210, 20.955809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231042, 9.259742, 20.493063>,  <12.537526, 8.671128, 20.884565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231042, 9.259742, 20.493063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610159, 9.376406, 20.544636>,  <12.837629, 9.446404, 20.575581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610159, 9.376406, 20.544636>,  <12.231042, 9.259742, 20.493063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.610159, 9.376406, 20.544636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054684, 0.249681, -0.966783,
		-0.314164, 0.923360, 0.220697,
		0.947793, 0.291660, 0.128933,
		12.894497, 9.463903, 20.583315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317653, 10.041375, 20.522947>,  <12.231042, 9.259742, 20.493063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317653, 10.041375, 20.522947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672560, 9.895617, 20.409832>,  <12.885504, 9.808162, 20.341963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672560, 9.895617, 20.409832>,  <12.317653, 10.041375, 20.522947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672560, 9.895617, 20.409832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045755, 0.679600, -0.732155,
		0.458978, 0.636679, 0.619661,
		0.887269, -0.364396, -0.282790,
		12.938741, 9.786298, 20.324995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687727, 10.592055, 20.408117>,  <12.317653, 10.041375, 20.522947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687727, 10.592055, 20.408117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.892696, 10.314107, 20.206295>,  <13.015678, 10.147338, 20.085201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.892696, 10.314107, 20.206295>,  <12.687727, 10.592055, 20.408117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892696, 10.314107, 20.206295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216014, 0.672969, -0.707426,
		0.831119, 0.253511, 0.494947,
		0.512424, -0.694871, -0.504555,
		13.046424, 10.105646, 20.054928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237713, 10.930392, 20.157579>,  <12.687727, 10.592055, 20.408117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237713, 10.930392, 20.157579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242287, 10.589888, 19.947733>,  <13.245031, 10.385585, 19.821825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242287, 10.589888, 19.947733>,  <13.237713, 10.930392, 20.157579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242287, 10.589888, 19.947733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266933, 0.508211, -0.818821,
		0.963647, -0.130674, 0.233042,
		0.011435, -0.851261, -0.524618,
		13.245717, 10.334509, 19.790348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853547, 10.909569, 19.745131>,  <13.237713, 10.930392, 20.157579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853547, 10.909569, 19.745131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.591656, 10.680938, 19.547291>,  <13.434521, 10.543759, 19.428587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.591656, 10.680938, 19.547291>,  <13.853547, 10.909569, 19.745131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.591656, 10.680938, 19.547291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246207, 0.457396, -0.854500,
		0.714643, -0.681239, -0.158743,
		-0.654727, -0.571579, -0.494601,
		13.395238, 10.509464, 19.398911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141850, 10.880869, 19.063202>,  <13.853547, 10.909569, 19.745131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.141850, 10.880869, 19.063202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763900, 10.770492, 18.992699>,  <13.537129, 10.704266, 18.950396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763900, 10.770492, 18.992699>,  <14.141850, 10.880869, 19.063202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763900, 10.770492, 18.992699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083822, 0.316521, -0.944875,
		0.316521, -0.907563, -0.275942,
		0.944875, 0.275942, 0.176259,
		13.480437, 10.687709, 18.939821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092237, 10.599664, 18.444324>,  <14.141850, 10.880869, 19.063202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092237, 10.599664, 18.444324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704892, 10.693281, 18.478956>,  <13.472485, 10.749452, 18.499735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704892, 10.693281, 18.478956>,  <14.092237, 10.599664, 18.444324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704892, 10.693281, 18.478956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032518, 0.462340, -0.886106,
		-0.247416, -0.855258, -0.455324,
		-0.968363, 0.234043, 0.086579,
		13.414383, 10.763494, 18.504930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.661578, 10.467345, 17.758698>,  <14.092237, 10.599664, 18.444324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.661578, 10.467345, 17.758698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438204, 10.715230, 17.979280>,  <13.304179, 10.863961, 18.111629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438204, 10.715230, 17.979280>,  <13.661578, 10.467345, 17.758698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438204, 10.715230, 17.979280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308803, 0.461696, -0.831551,
		-0.769929, -0.634660, -0.066458,
		-0.558436, 0.619713, 0.551457,
		13.270673, 10.901144, 18.144718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199735, 10.614504, 17.286674>,  <13.661578, 10.467345, 17.758698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199735, 10.614504, 17.286674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176541, 10.904525, 17.561174>,  <13.162625, 11.078537, 17.725874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176541, 10.904525, 17.561174>,  <13.199735, 10.614504, 17.286674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.176541, 10.904525, 17.561174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071492, 0.682625, -0.727264,
		-0.995754, -0.091231, 0.012254,
		-0.057984, 0.725052, 0.686249,
		13.159146, 11.122041, 17.767050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.594247, 10.943177, 17.077322>,  <13.199735, 10.614504, 17.286674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.594247, 10.943177, 17.077322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.828243, 11.177352, 17.301840>,  <12.968641, 11.317857, 17.436550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.828243, 11.177352, 17.301840>,  <12.594247, 10.943177, 17.077322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.828243, 11.177352, 17.301840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203065, 0.775748, -0.597478,
		-0.785207, 0.235540, 0.572687,
		0.584991, 0.585437, 0.561293,
		13.003740, 11.352983, 17.470228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.474262, 11.709550, 16.976683>,  <12.594247, 10.943177, 17.077322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.474262, 11.709550, 16.976683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.821457, 11.754500, 17.170166>,  <13.029774, 11.781471, 17.286255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.821457, 11.754500, 17.170166>,  <12.474262, 11.709550, 16.976683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.821457, 11.754500, 17.170166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182188, 0.834072, -0.520703,
		-0.461961, 0.540089, 0.703489,
		0.867986, 0.112377, 0.483706,
		13.081853, 11.788214, 17.315277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.460805, 12.397317, 17.175856>,  <12.474262, 11.709550, 16.976683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.460805, 12.397317, 17.175856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839907, 12.269864, 17.169754>,  <13.067368, 12.193392, 17.166094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839907, 12.269864, 17.169754>,  <12.460805, 12.397317, 17.175856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.839907, 12.269864, 17.169754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263722, 0.809536, -0.524502,
		0.179472, 0.493076, 0.851273,
		0.947755, -0.318633, -0.015254,
		13.124233, 12.174274, 17.165178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.861148, 12.955119, 17.356016>,  <12.460805, 12.397317, 17.175856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.861148, 12.955119, 17.356016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.156332, 12.739393, 17.193756>,  <13.333443, 12.609958, 17.096399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.156332, 12.739393, 17.193756>,  <12.861148, 12.955119, 17.356016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.156332, 12.739393, 17.193756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381085, 0.829125, -0.409055,
		0.556944, 0.147279, 0.817387,
		0.737961, -0.539315, -0.405650,
		13.377721, 12.577599, 17.072062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536405, 13.250688, 17.539101>,  <12.861148, 12.955119, 17.356016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536405, 13.250688, 17.539101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613154, 13.049660, 17.201910>,  <13.659204, 12.929043, 16.999596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613154, 13.049660, 17.201910>,  <13.536405, 13.250688, 17.539101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613154, 13.049660, 17.201910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386596, 0.828191, -0.405761,
		0.902069, -0.248036, 0.353200,
		0.191874, -0.502570, -0.842975,
		13.670716, 12.898889, 16.949017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199835, 13.365873, 17.406475>,  <13.536405, 13.250688, 17.539101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199835, 13.365873, 17.406475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048908, 13.270432, 17.048548>,  <13.958352, 13.213168, 16.833792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048908, 13.270432, 17.048548>,  <14.199835, 13.365873, 17.406475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.048908, 13.270432, 17.048548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520821, 0.744284, -0.418075,
		0.765754, -0.623787, -0.156561,
		-0.377316, -0.238603, -0.894819,
		13.935713, 13.198852, 16.780102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805330, 13.491693, 16.896946>,  <14.199835, 13.365873, 17.406475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805330, 13.491693, 16.896946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.454972, 13.479567, 16.704327>,  <14.244758, 13.472291, 16.588755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.454972, 13.479567, 16.704327>,  <14.805330, 13.491693, 16.896946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454972, 13.479567, 16.704327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294217, 0.757454, -0.582837,
		0.382420, -0.652184, -0.654531,
		-0.875894, -0.030314, -0.481550,
		14.192204, 13.470472, 16.559862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201805, 12.905178, 16.935265>,  <14.805330, 13.491693, 16.896946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201805, 12.905178, 16.935265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.535848, 12.709287, 16.835054>,  <15.736273, 12.591752, 16.774929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.535848, 12.709287, 16.835054>,  <15.201805, 12.905178, 16.935265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535848, 12.709287, 16.835054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014058, -0.436279, 0.899702,
		-0.549910, -0.754868, -0.357454,
		0.835105, -0.489729, -0.250526,
		15.786380, 12.562368, 16.759897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195293, 12.159685, 17.082417>,  <15.201805, 12.905178, 16.935265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195293, 12.159685, 17.082417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572534, 12.292230, 17.093454>,  <15.798878, 12.371757, 17.100077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572534, 12.292230, 17.093454>,  <15.195293, 12.159685, 17.082417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572534, 12.292230, 17.093454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146452, -0.488456, 0.860210,
		0.298518, -0.807224, -0.509192,
		0.943101, 0.331360, 0.027594,
		15.855464, 12.391638, 17.101732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630418, 11.586768, 17.157667>,  <15.195293, 12.159685, 17.082417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.630418, 11.586768, 17.157667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863466, 11.892835, 17.267263>,  <16.003296, 12.076475, 17.333021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863466, 11.892835, 17.267263>,  <15.630418, 11.586768, 17.157667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863466, 11.892835, 17.267263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303595, -0.517611, 0.799943,
		0.753911, -0.382882, -0.533873,
		0.582622, 0.765167, 0.273992,
		16.038254, 12.122385, 17.349461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410524, 11.338962, 17.235565>,  <15.630418, 11.586768, 17.157667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.410524, 11.338962, 17.235565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.332569, 11.661190, 17.459377>,  <16.285795, 11.854527, 17.593664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.332569, 11.661190, 17.459377>,  <16.410524, 11.338962, 17.235565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332569, 11.661190, 17.459377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393745, -0.458226, 0.796865,
		0.898323, 0.375611, -0.227886,
		-0.194888, 0.805571, 0.559530,
		16.274103, 11.902862, 17.627235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039547, 11.387495, 17.791906>,  <16.410524, 11.338962, 17.235565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039547, 11.387495, 17.791906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753279, 11.628371, 17.933432>,  <16.581518, 11.772897, 18.018347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753279, 11.628371, 17.933432>,  <17.039547, 11.387495, 17.791906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753279, 11.628371, 17.933432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264868, -0.234733, 0.935278,
		0.646266, 0.763065, 0.008491,
		-0.715671, 0.602190, 0.353812,
		16.538578, 11.809028, 18.039576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331285, 11.791397, 18.330235>,  <17.039547, 11.387495, 17.791906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.331285, 11.791397, 18.330235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936716, 11.784431, 18.395548>,  <16.699974, 11.780252, 18.434736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936716, 11.784431, 18.395548>,  <17.331285, 11.791397, 18.330235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936716, 11.784431, 18.395548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161861, -0.270706, 0.948957,
		0.027676, 0.962505, 0.269850,
		-0.986425, -0.017415, 0.163284,
		16.640789, 11.779207, 18.444532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256453, 12.349336, 18.850084>,  <17.331285, 11.791397, 18.330235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256453, 12.349336, 18.850084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948391, 12.094201, 18.848087>,  <16.763554, 11.941120, 18.846889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948391, 12.094201, 18.848087>,  <17.256453, 12.349336, 18.850084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948391, 12.094201, 18.848087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129108, -0.163544, 0.978051,
		-0.624652, 0.752608, 0.208304,
		-0.770156, -0.637836, -0.004991,
		16.717344, 11.902850, 18.846590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984407, 12.598028, 19.371948>,  <17.256453, 12.349336, 18.850084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984407, 12.598028, 19.371948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.838131, 12.229205, 19.321224>,  <16.750366, 12.007912, 19.290791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.838131, 12.229205, 19.321224>,  <16.984407, 12.598028, 19.371948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838131, 12.229205, 19.321224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077567, -0.105578, 0.991381,
		-0.927499, 0.372374, -0.032912,
		-0.365690, -0.922058, -0.126808,
		16.728424, 11.952588, 19.283182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450724, 12.586411, 19.831875>,  <16.984407, 12.598028, 19.371948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450724, 12.586411, 19.831875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513338, 12.205884, 19.725674>,  <16.550907, 11.977568, 19.661953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513338, 12.205884, 19.725674>,  <16.450724, 12.586411, 19.831875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513338, 12.205884, 19.725674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196104, -0.293401, 0.935660,
		-0.968008, -0.094399, -0.232485,
		0.156537, -0.951317, -0.265502,
		16.560299, 11.920488, 19.646023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849401, 12.274135, 20.068838>,  <16.450724, 12.586411, 19.831875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849401, 12.274135, 20.068838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130934, 11.990957, 20.045385>,  <16.299852, 11.821051, 20.031313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130934, 11.990957, 20.045385>,  <15.849401, 12.274135, 20.068838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130934, 11.990957, 20.045385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114630, -0.194645, 0.974153,
		-0.701058, -0.678917, -0.218148,
		0.703830, -0.707944, -0.058633,
		16.342083, 11.778574, 20.027796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532434, 11.578571, 20.232821>,  <15.849401, 12.274135, 20.068838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532434, 11.578571, 20.232821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.926071, 11.572602, 20.303635>,  <16.162252, 11.569021, 20.346123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.926071, 11.572602, 20.303635>,  <15.532434, 11.578571, 20.232821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.926071, 11.572602, 20.303635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172885, -0.309920, 0.934912,
		0.040916, -0.950646, -0.307569,
		0.984092, -0.014921, 0.177033,
		16.221298, 11.568126, 20.356745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605647, 10.963881, 20.586922>,  <15.532434, 11.578571, 20.232821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.605647, 10.963881, 20.586922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.952665, 11.146200, 20.666533>,  <16.160877, 11.255591, 20.714298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.952665, 11.146200, 20.666533>,  <15.605647, 10.963881, 20.586922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.952665, 11.146200, 20.666533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003038, -0.405019, 0.914303,
		0.497347, -0.792595, -0.352758,
		0.867546, 0.455798, 0.199027,
		16.212929, 11.282940, 20.726240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043980, 10.397989, 20.836954>,  <15.605647, 10.963881, 20.586922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043980, 10.397989, 20.836954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.234447, 10.722758, 20.972036>,  <16.348728, 10.917620, 21.053085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.234447, 10.722758, 20.972036>,  <16.043980, 10.397989, 20.836954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234447, 10.722758, 20.972036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045593, -0.406318, 0.912594,
		0.878170, -0.419153, -0.230495,
		0.476170, 0.811922, 0.337706,
		16.377298, 10.966334, 21.073349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595049, 10.154965, 21.264826>,  <16.043980, 10.397989, 20.836954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.595049, 10.154965, 21.264826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531340, 10.536017, 21.368464>,  <16.493114, 10.764648, 21.430647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531340, 10.536017, 21.368464>,  <16.595049, 10.154965, 21.264826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531340, 10.536017, 21.368464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066855, -0.272249, 0.959901,
		0.984968, 0.135567, 0.107051,
		-0.159275, 0.952629, 0.259094,
		16.483557, 10.821806, 21.446192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973257, 10.192279, 21.832153>,  <16.595049, 10.154965, 21.264826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973257, 10.192279, 21.832153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723774, 10.498334, 21.896091>,  <16.574083, 10.681967, 21.934454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723774, 10.498334, 21.896091>,  <16.973257, 10.192279, 21.832153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723774, 10.498334, 21.896091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050893, -0.243811, 0.968486,
		0.779998, 0.595919, 0.191007,
		-0.623709, 0.765139, 0.159844,
		16.536661, 10.727876, 21.944044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210014, 10.633248, 22.475845>,  <16.973257, 10.192279, 21.832153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210014, 10.633248, 22.475845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818699, 10.691833, 22.417196>,  <16.583910, 10.726984, 22.382006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818699, 10.691833, 22.417196>,  <17.210014, 10.633248, 22.475845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818699, 10.691833, 22.417196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177612, -0.227959, 0.957334,
		0.106789, 0.962592, 0.249024,
		-0.978289, 0.146462, -0.146624,
		16.525211, 10.735772, 22.373209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916912, 11.007396, 23.057318>,  <17.210014, 10.633248, 22.475845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916912, 11.007396, 23.057318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578600, 10.880422, 22.885788>,  <16.375612, 10.804237, 22.782871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578600, 10.880422, 22.885788>,  <16.916912, 11.007396, 23.057318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578600, 10.880422, 22.885788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382321, -0.200013, 0.902123,
		-0.372137, 0.926946, 0.047805,
		-0.845780, -0.317436, -0.428824,
		16.324865, 10.785191, 22.757141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357542, 11.286811, 23.494606>,  <16.916912, 11.007396, 23.057318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357542, 11.286811, 23.494606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199080, 10.983934, 23.286867>,  <16.104002, 10.802209, 23.162224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199080, 10.983934, 23.286867>,  <16.357542, 11.286811, 23.494606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199080, 10.983934, 23.286867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509804, -0.289036, 0.810283,
		-0.763649, 0.585764, -0.271515,
		-0.396157, -0.757191, -0.519347,
		16.080233, 10.756777, 23.131063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704939, 11.319723, 23.765209>,  <16.357542, 11.286811, 23.494606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704939, 11.319723, 23.765209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721908, 10.950211, 23.612986>,  <15.732089, 10.728503, 23.521650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721908, 10.950211, 23.612986>,  <15.704939, 11.319723, 23.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721908, 10.950211, 23.612986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613810, -0.324639, 0.719615,
		-0.788313, 0.203066, -0.580799,
		0.042421, -0.923782, -0.380561,
		15.734633, 10.673076, 23.498817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019567, 11.027546, 23.688143>,  <15.704939, 11.319723, 23.765209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019567, 11.027546, 23.688143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254915, 10.704150, 23.683006>,  <15.396124, 10.510113, 23.679924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254915, 10.704150, 23.683006>,  <15.019567, 11.027546, 23.688143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254915, 10.704150, 23.683006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517164, -0.388472, 0.762648,
		-0.621581, -0.442078, -0.646687,
		0.588370, -0.808491, -0.012840,
		15.431426, 10.461603, 23.679155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547651, 10.503962, 23.850365>,  <15.019567, 11.027546, 23.688143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547651, 10.503962, 23.850365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904129, 10.330626, 23.904015>,  <15.118015, 10.226624, 23.936205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904129, 10.330626, 23.904015>,  <14.547651, 10.503962, 23.850365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904129, 10.330626, 23.904015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324993, -0.403660, 0.855242,
		-0.316470, -0.805776, -0.500572,
		0.891194, -0.433341, 0.134126,
		15.171487, 10.200624, 23.944252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387705, 9.812152, 23.944340>,  <14.547651, 10.503962, 23.850365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387705, 9.812152, 23.944340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740198, 9.923171, 24.097385>,  <14.951694, 9.989782, 24.189213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740198, 9.923171, 24.097385>,  <14.387705, 9.812152, 23.944340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.740198, 9.923171, 24.097385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384295, -0.050624, 0.921821,
		0.275220, -0.959377, 0.062049,
		0.881233, 0.277549, 0.382616,
		15.004568, 10.006435, 24.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634513, 9.226028, 24.351650>,  <14.387705, 9.812152, 23.944340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634513, 9.226028, 24.351650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787494, 9.575152, 24.472933>,  <14.879282, 9.784627, 24.545702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787494, 9.575152, 24.472933>,  <14.634513, 9.226028, 24.351650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787494, 9.575152, 24.472933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483567, -0.090552, 0.870611,
		0.787334, -0.479588, 0.387430,
		0.382452, 0.872809, 0.303207,
		14.902229, 9.836995, 24.563894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718559, 9.256042, 25.147629>,  <14.634513, 9.226028, 24.351650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718559, 9.256042, 25.147629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707894, 9.640635, 25.038200>,  <14.701495, 9.871390, 24.972544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707894, 9.640635, 25.038200>,  <14.718559, 9.256042, 25.147629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707894, 9.640635, 25.038200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514898, 0.221362, 0.828178,
		0.856837, 0.162940, 0.489164,
		-0.026662, 0.961483, -0.273569,
		14.699896, 9.929079, 24.956129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676158, 9.488866, 25.709652>,  <14.718559, 9.256042, 25.147629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.676158, 9.488866, 25.709652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579467, 9.809250, 25.490551>,  <14.521452, 10.001480, 25.359091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579467, 9.809250, 25.490551>,  <14.676158, 9.488866, 25.709652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579467, 9.809250, 25.490551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601073, 0.319551, 0.732528,
		0.761760, 0.506312, 0.404191,
		-0.241728, 0.800959, -0.547752,
		14.506948, 10.049538, 25.326225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774063, 9.992608, 26.214539>,  <14.676158, 9.488866, 25.709652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774063, 9.992608, 26.214539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524304, 10.144739, 25.941633>,  <14.374450, 10.236017, 25.777891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524304, 10.144739, 25.941633>,  <14.774063, 9.992608, 26.214539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524304, 10.144739, 25.941633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592366, 0.338781, 0.730979,
		0.509148, 0.860569, 0.013759,
		-0.624396, 0.380327, -0.682262,
		14.336986, 10.258837, 25.736956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.470297, 10.494820, 26.613361>,  <14.774063, 9.992608, 26.214539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.470297, 10.494820, 26.613361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237054, 10.472117, 26.289198>,  <14.097108, 10.458496, 26.094700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237054, 10.472117, 26.289198>,  <14.470297, 10.494820, 26.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.237054, 10.472117, 26.289198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811570, 0.085653, 0.577942,
		0.036613, 0.994707, -0.096006,
		-0.583107, -0.056755, -0.810411,
		14.062122, 10.455091, 26.046074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054583, 10.977017, 26.754095>,  <14.470297, 10.494820, 26.613361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054583, 10.977017, 26.754095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867427, 10.727069, 26.504099>,  <13.755134, 10.577100, 26.354101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867427, 10.727069, 26.504099>,  <14.054583, 10.977017, 26.754095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867427, 10.727069, 26.504099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802135, 0.003371, 0.597133,
		-0.371024, 0.780720, -0.502809,
		-0.467889, -0.624872, -0.624993,
		13.727060, 10.539607, 26.316601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544858, 11.359368, 26.604811>,  <14.054583, 10.977017, 26.754095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544858, 11.359368, 26.604811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449477, 10.977312, 26.534554>,  <13.392249, 10.748078, 26.492399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449477, 10.977312, 26.534554>,  <13.544858, 11.359368, 26.604811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449477, 10.977312, 26.534554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797367, 0.089308, 0.596850,
		-0.554389, 0.282370, -0.782892,
		-0.238451, -0.955140, -0.175641,
		13.377942, 10.690770, 26.481861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825379, 11.357306, 26.565035>,  <13.544858, 11.359368, 26.604811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825379, 11.357306, 26.565035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901602, 10.974411, 26.652109>,  <12.947335, 10.744674, 26.704353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.901602, 10.974411, 26.652109>,  <12.825379, 11.357306, 26.565035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.901602, 10.974411, 26.652109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764078, -0.005402, 0.645101,
		-0.616339, -0.289255, -0.732433,
		0.190555, -0.957237, 0.217684,
		12.958769, 10.687240, 26.717415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.191526, 11.137623, 26.615841>,  <12.825379, 11.357306, 26.565035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.191526, 11.137623, 26.615841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.397677, 10.843400, 26.791723>,  <12.521368, 10.666866, 26.897253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.397677, 10.843400, 26.791723>,  <12.191526, 11.137623, 26.615841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.397677, 10.843400, 26.791723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705110, -0.072372, 0.705395,
		-0.487037, -0.673585, -0.555948,
		0.515379, -0.735558, 0.439703,
		12.552291, 10.622732, 26.923634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702314, 10.656068, 26.671850>,  <12.191526, 11.137623, 26.615841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702314, 10.656068, 26.671850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.967600, 10.583363, 26.962259>,  <12.126771, 10.539740, 27.136505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.967600, 10.583363, 26.962259>,  <11.702314, 10.656068, 26.671850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.967600, 10.583363, 26.962259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741368, -0.026599, 0.670571,
		-0.102577, -0.982982, -0.152398,
		0.663213, -0.181768, 0.726023,
		12.166564, 10.528833, 27.180067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.388335, 10.056754, 27.112371>,  <11.702314, 10.656068, 26.671850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.388335, 10.056754, 27.112371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663185, 10.259945, 27.320148>,  <11.828095, 10.381860, 27.444815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663185, 10.259945, 27.320148>,  <11.388335, 10.056754, 27.112371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.663185, 10.259945, 27.320148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559501, -0.086125, 0.824343,
		0.463484, -0.857054, 0.225035,
		0.687126, 0.507977, 0.519441,
		11.869323, 10.412338, 27.475981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.524720, 9.617387, 27.798315>,  <11.388335, 10.056754, 27.112371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.524720, 9.617387, 27.798315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642802, 9.993439, 27.866442>,  <11.713652, 10.219070, 27.907318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642802, 9.993439, 27.866442>,  <11.524720, 9.617387, 27.798315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642802, 9.993439, 27.866442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519192, 0.008204, 0.854618,
		0.802055, -0.340715, 0.490531,
		0.295206, 0.940131, 0.170317,
		11.731364, 10.275478, 27.917536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.944413, 9.574491, 28.407286>,  <11.524720, 9.617387, 27.798315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.944413, 9.574491, 28.407286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837254, 9.959767, 28.398409>,  <11.772958, 10.190933, 28.393084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837254, 9.959767, 28.398409>,  <11.944413, 9.574491, 28.407286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837254, 9.959767, 28.398409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499495, -0.119159, 0.858082,
		0.823854, 0.240963, 0.513032,
		-0.267898, 0.963192, -0.022191,
		11.756884, 10.248725, 28.391752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957249, 9.793690, 29.053516>,  <11.944413, 9.574491, 28.407286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957249, 9.793690, 29.053516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.733745, 10.100311, 28.926910>,  <11.599642, 10.284284, 28.850946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.733745, 10.100311, 28.926910>,  <11.957249, 9.793690, 29.053516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.733745, 10.100311, 28.926910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381205, 0.101550, 0.918896,
		0.736524, 0.634102, 0.235472,
		-0.558761, 0.766553, -0.316517,
		11.566116, 10.330277, 28.831955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.060524, 10.360158, 29.595629>,  <11.957249, 9.793690, 29.053516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.060524, 10.360158, 29.595629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727729, 10.430840, 29.385269>,  <11.528051, 10.473248, 29.259052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727729, 10.430840, 29.385269>,  <12.060524, 10.360158, 29.595629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.727729, 10.430840, 29.385269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473853, 0.266682, 0.839252,
		0.288547, 0.947447, -0.138144,
		-0.831988, 0.176703, -0.525901,
		11.478132, 10.483850, 29.227499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.773588, 10.960710, 29.941704>,  <12.060524, 10.360158, 29.595629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.773588, 10.960710, 29.941704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.477984, 10.788254, 29.734636>,  <11.300622, 10.684780, 29.610395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.477984, 10.788254, 29.734636>,  <11.773588, 10.960710, 29.941704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.477984, 10.788254, 29.734636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672876, 0.434488, 0.598713,
		-0.033208, 0.790783, -0.611195,
		-0.739009, -0.431140, -0.517671,
		11.256282, 10.658912, 29.579334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887519, 11.736475, 29.943546>,  <11.773588, 10.960710, 29.941704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887519, 11.736475, 29.943546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.734183, 12.060252, 30.121469>,  <11.642182, 12.254519, 30.228224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.734183, 12.060252, 30.121469>,  <11.887519, 11.736475, 29.943546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.734183, 12.060252, 30.121469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139371, 0.526780, -0.838498,
		-0.913032, -0.259435, -0.314747,
		-0.383338, 0.809442, 0.444809,
		11.619182, 12.303085, 30.254911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.533073, 12.164840, 29.465504>,  <11.887519, 11.736475, 29.943546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.533073, 12.164840, 29.465504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654126, 12.423544, 29.745537>,  <11.726758, 12.578767, 29.913557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654126, 12.423544, 29.745537>,  <11.533073, 12.164840, 29.465504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654126, 12.423544, 29.745537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294492, 0.635131, -0.714060,
		-0.906470, 0.422267, 0.001745,
		0.302633, 0.646760, 0.700082,
		11.744916, 12.617572, 29.955561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232181, 12.849926, 29.338476>,  <11.533073, 12.164840, 29.465504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232181, 12.849926, 29.338476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.553514, 12.900908, 29.571167>,  <11.746315, 12.931498, 29.710781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.553514, 12.900908, 29.571167>,  <11.232181, 12.849926, 29.338476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.553514, 12.900908, 29.571167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366810, 0.663637, -0.651948,
		-0.469151, 0.737117, 0.486370,
		0.803335, 0.127456, 0.581728,
		11.794515, 12.939145, 29.745686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.328420, 13.572778, 29.428225>,  <11.232181, 12.849926, 29.338476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.328420, 13.572778, 29.428225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.691141, 13.417955, 29.495033>,  <11.908773, 13.325062, 29.535118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.691141, 13.417955, 29.495033>,  <11.328420, 13.572778, 29.428225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.691141, 13.417955, 29.495033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395380, 0.643457, -0.655468,
		0.146230, 0.660418, 0.736522,
		0.906803, -0.387055, 0.167023,
		11.963182, 13.301839, 29.545139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786156, 14.137132, 29.335190>,  <11.328420, 13.572778, 29.428225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786156, 14.137132, 29.335190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013529, 13.809679, 29.302383>,  <12.149953, 13.613208, 29.282700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013529, 13.809679, 29.302383>,  <11.786156, 14.137132, 29.335190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013529, 13.809679, 29.302383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469621, 0.404704, -0.784647,
		0.675529, 0.407503, 0.614493,
		0.568434, -0.818631, -0.082018,
		12.184059, 13.564090, 29.277779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.425220, 14.345084, 29.178282>,  <11.786156, 14.137132, 29.335190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.425220, 14.345084, 29.178282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.436751, 13.964567, 29.055506>,  <12.443669, 13.736257, 28.981840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.436751, 13.964567, 29.055506>,  <12.425220, 14.345084, 29.178282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.436751, 13.964567, 29.055506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693784, 0.240099, -0.678982,
		0.719606, -0.193377, 0.666913,
		0.028826, -0.951293, -0.306938,
		12.445399, 13.679179, 28.963425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.064483, 14.193985, 29.007330>,  <12.425220, 14.345084, 29.178282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.064483, 14.193985, 29.007330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.888655, 13.898293, 28.803244>,  <12.783158, 13.720879, 28.680792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.888655, 13.898293, 28.803244>,  <13.064483, 14.193985, 29.007330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.888655, 13.898293, 28.803244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670926, 0.107444, -0.733699,
		0.597191, -0.664829, 0.448738,
		-0.439570, -0.739229, -0.510215,
		12.756783, 13.676525, 28.650179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581024, 13.717082, 28.790487>,  <13.064483, 14.193985, 29.007330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581024, 13.717082, 28.790487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.267887, 13.646327, 28.551868>,  <13.080005, 13.603874, 28.408697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.267887, 13.646327, 28.551868>,  <13.581024, 13.717082, 28.790487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267887, 13.646327, 28.551868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590412, 0.091434, -0.801906,
		0.196394, -0.979974, 0.032861,
		-0.782843, -0.176891, -0.596546,
		13.033034, 13.593261, 28.372904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877937, 13.334978, 28.316675>,  <13.581024, 13.717082, 28.790487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877937, 13.334978, 28.316675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528909, 13.412666, 28.137388>,  <13.319491, 13.459279, 28.029816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528909, 13.412666, 28.137388>,  <13.877937, 13.334978, 28.316675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528909, 13.412666, 28.137388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475313, 0.125900, -0.870762,
		-0.112690, -0.972845, -0.202173,
		-0.872571, 0.194222, -0.448218,
		13.267138, 13.470932, 28.002922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938918, 12.971435, 27.719336>,  <13.877937, 13.334978, 28.316675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.938918, 12.971435, 27.719336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.657914, 13.238519, 27.620832>,  <13.489311, 13.398769, 27.561729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.657914, 13.238519, 27.620832>,  <13.938918, 12.971435, 27.719336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657914, 13.238519, 27.620832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527340, 0.256028, -0.810162,
		-0.477903, -0.699009, -0.531973,
		-0.702510, 0.667710, -0.246259,
		13.447161, 13.438831, 27.546955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.700499, 12.787388, 26.984936>,  <13.938918, 12.971435, 27.719336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.700499, 12.787388, 26.984936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.625797, 13.170297, 27.073256>,  <13.580976, 13.400043, 27.126247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.625797, 13.170297, 27.073256>,  <13.700499, 12.787388, 26.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.625797, 13.170297, 27.073256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477209, 0.284852, -0.831343,
		-0.858717, -0.049888, -0.510016,
		-0.186753, 0.957272, 0.220800,
		13.569771, 13.457479, 27.139496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346517, 13.077428, 26.417828>,  <13.700499, 12.787388, 26.984936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346517, 13.077428, 26.417828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523079, 13.388755, 26.596437>,  <13.629016, 13.575551, 26.703604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523079, 13.388755, 26.596437>,  <13.346517, 13.077428, 26.417828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523079, 13.388755, 26.596437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430856, 0.252665, -0.866328,
		-0.787099, 0.574789, -0.223814,
		0.441406, 0.778317, 0.446524,
		13.655500, 13.622250, 26.730394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368999, 13.541368, 25.822372>,  <13.346517, 13.077428, 26.417828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368999, 13.541368, 25.822372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598084, 13.699925, 26.109390>,  <13.735537, 13.795059, 26.281601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598084, 13.699925, 26.109390>,  <13.368999, 13.541368, 25.822372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598084, 13.699925, 26.109390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682871, 0.253570, -0.685120,
		-0.453524, 0.882369, -0.125462,
		0.572716, 0.396393, 0.717544,
		13.769899, 13.818843, 26.324654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550285, 14.041828, 25.488205>,  <13.368999, 13.541368, 25.822372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550285, 14.041828, 25.488205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806630, 14.019457, 25.794451>,  <13.960437, 14.006034, 25.978199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806630, 14.019457, 25.794451>,  <13.550285, 14.041828, 25.488205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806630, 14.019457, 25.794451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752671, 0.241877, -0.612358,
		-0.150937, 0.968694, 0.197105,
		0.640862, -0.055928, 0.765616,
		13.998889, 14.002679, 26.024136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.903304, 14.739273, 25.487684>,  <13.550285, 14.041828, 25.488205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.903304, 14.739273, 25.487684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138347, 14.475981, 25.675919>,  <14.279372, 14.318006, 25.788858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138347, 14.475981, 25.675919>,  <13.903304, 14.739273, 25.487684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.138347, 14.475981, 25.675919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763654, 0.258874, -0.591453,
		0.267490, 0.706906, 0.654777,
		0.587606, -0.658231, 0.470586,
		14.314629, 14.278511, 25.817095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524424, 15.064843, 25.569534>,  <13.903304, 14.739273, 25.487684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524424, 15.064843, 25.569534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594391, 14.671067, 25.562809>,  <14.636372, 14.434802, 25.558773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594391, 14.671067, 25.562809>,  <14.524424, 15.064843, 25.569534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594391, 14.671067, 25.562809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716890, 0.139048, -0.683179,
		0.674887, 0.107446, 0.730057,
		0.174919, -0.984439, -0.016815,
		14.646867, 14.375735, 25.557764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279490, 15.014437, 25.475389>,  <14.524424, 15.064843, 25.569534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279490, 15.014437, 25.475389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203232, 14.624073, 25.432957>,  <15.157476, 14.389854, 25.407497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203232, 14.624073, 25.432957>,  <15.279490, 15.014437, 25.475389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203232, 14.624073, 25.432957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579313, -0.024611, -0.814734,
		0.792496, -0.216780, 0.570049,
		-0.190647, -0.975910, -0.106080,
		15.146037, 14.331300, 25.401133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929982, 14.677536, 25.404589>,  <15.279490, 15.014437, 25.475389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929982, 14.677536, 25.404589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661448, 14.432624, 25.237532>,  <15.500328, 14.285677, 25.137299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661448, 14.432624, 25.237532>,  <15.929982, 14.677536, 25.404589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661448, 14.432624, 25.237532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641070, -0.196920, -0.741790,
		0.371942, -0.765725, 0.524713,
		-0.671333, -0.612281, -0.417641,
		15.460049, 14.248940, 25.112240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319012, 14.009089, 25.280924>,  <15.929982, 14.677536, 25.404589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319012, 14.009089, 25.280924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993079, 14.030506, 25.050035>,  <15.797520, 14.043356, 24.911503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993079, 14.030506, 25.050035>,  <16.319012, 14.009089, 25.280924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993079, 14.030506, 25.050035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516714, -0.384299, -0.765063,
		-0.262788, -0.921655, 0.285473,
		-0.814831, 0.053541, -0.577221,
		15.748630, 14.046569, 24.876869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446707, 13.546331, 24.906126>,  <16.319012, 14.009089, 25.280924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446707, 13.546331, 24.906126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166502, 13.743835, 24.700026>,  <15.998379, 13.862338, 24.576366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166502, 13.743835, 24.700026>,  <16.446707, 13.546331, 24.906126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166502, 13.743835, 24.700026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253731, -0.502501, -0.826507,
		-0.667009, -0.709714, 0.226726,
		-0.700513, 0.493760, -0.515249,
		15.956347, 13.891964, 24.545450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223051, 13.046432, 24.527140>,  <16.446707, 13.546331, 24.906126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223051, 13.046432, 24.527140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094294, 13.383335, 24.354174>,  <16.017038, 13.585477, 24.250393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094294, 13.383335, 24.354174>,  <16.223051, 13.046432, 24.527140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094294, 13.383335, 24.354174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195720, -0.387663, -0.900783,
		-0.926325, -0.374590, -0.040061,
		-0.321895, 0.842259, -0.432417,
		15.997725, 13.636013, 24.224449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729865, 12.954802, 24.009167>,  <16.223051, 13.046432, 24.527140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729865, 12.954802, 24.009167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899240, 13.302944, 23.908625>,  <16.000864, 13.511829, 23.848299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899240, 13.302944, 23.908625>,  <15.729865, 12.954802, 24.009167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899240, 13.302944, 23.908625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181495, -0.353334, -0.917722,
		-0.887559, 0.342978, -0.307580,
		0.423437, 0.870357, -0.251356,
		16.026270, 13.564052, 23.833218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586388, 12.931160, 23.340574>,  <15.729865, 12.954802, 24.009167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586388, 12.931160, 23.340574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850665, 13.229318, 23.376059>,  <16.009232, 13.408213, 23.397348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850665, 13.229318, 23.376059>,  <15.586388, 12.931160, 23.340574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850665, 13.229318, 23.376059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372676, -0.223130, -0.900736,
		-0.651610, 0.628172, -0.425212,
		0.660694, 0.745395, 0.088711,
		16.048874, 13.452936, 23.402672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657059, 13.380408, 22.641714>,  <15.586388, 12.931160, 23.340574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657059, 13.380408, 22.641714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993411, 13.481226, 22.833294>,  <16.195223, 13.541717, 22.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993411, 13.481226, 22.833294>,  <15.657059, 13.380408, 22.641714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993411, 13.481226, 22.833294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528327, -0.190259, -0.827449,
		-0.117429, 0.948829, -0.293146,
		0.840881, 0.252043, 0.478950,
		16.245676, 13.556839, 22.976978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979693, 13.935672, 22.128727>,  <15.657059, 13.380408, 22.641714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.979693, 13.935672, 22.128727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255356, 13.770025, 22.366573>,  <16.420753, 13.670637, 22.509281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255356, 13.770025, 22.366573>,  <15.979693, 13.935672, 22.128727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255356, 13.770025, 22.366573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656868, 0.010584, -0.753932,
		0.305922, 0.910163, 0.279314,
		0.689157, -0.414116, 0.594618,
		16.462103, 13.645790, 22.544958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634407, 14.340533, 22.047874>,  <15.979693, 13.935672, 22.128727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634407, 14.340533, 22.047874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722578, 13.971867, 22.175587>,  <16.775480, 13.750667, 22.252214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722578, 13.971867, 22.175587>,  <16.634407, 14.340533, 22.047874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722578, 13.971867, 22.175587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601721, -0.129136, -0.788198,
		0.767687, 0.365861, 0.526121,
		0.220430, -0.921667, 0.319282,
		16.788708, 13.695367, 22.271372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336655, 14.258906, 21.928246>,  <16.634407, 14.340533, 22.047874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336655, 14.258906, 21.928246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213524, 13.879583, 21.959116>,  <17.139647, 13.651990, 21.977638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.213524, 13.879583, 21.959116>,  <17.336655, 14.258906, 21.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213524, 13.879583, 21.959116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458724, -0.218987, -0.861172,
		0.833556, -0.229689, 0.502422,
		-0.307826, -0.948308, 0.077175,
		17.121176, 13.595091, 21.982267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860405, 13.888944, 21.922108>,  <17.336655, 14.258906, 21.928246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860405, 13.888944, 21.922108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590433, 13.614049, 21.814648>,  <17.428450, 13.449112, 21.750172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590433, 13.614049, 21.814648>,  <17.860405, 13.888944, 21.922108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590433, 13.614049, 21.814648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658692, -0.397061, -0.639115,
		0.332554, -0.608315, 0.720667,
		-0.674931, -0.687238, -0.268648,
		17.387953, 13.407878, 21.734053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224146, 13.352377, 21.833803>,  <17.860405, 13.888944, 21.922108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224146, 13.352377, 21.833803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885588, 13.288047, 21.630728>,  <17.682453, 13.249449, 21.508883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885588, 13.288047, 21.630728>,  <18.224146, 13.352377, 21.833803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885588, 13.288047, 21.630728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532554, -0.254838, -0.807121,
		0.000428, -0.953516, 0.301343,
		-0.846396, -0.160827, -0.507689,
		17.631668, 13.239799, 21.478420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319633, 12.817643, 21.435495>,  <18.224146, 13.352377, 21.833803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319633, 12.817643, 21.435495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008177, 12.967077, 21.233841>,  <17.821302, 13.056738, 21.112848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.008177, 12.967077, 21.233841>,  <18.319633, 12.817643, 21.435495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008177, 12.967077, 21.233841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515708, -0.076673, -0.853327,
		-0.357444, -0.924422, -0.132960,
		-0.778639, 0.373585, -0.504138,
		17.774586, 13.079152, 21.082600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287323, 12.440733, 20.725994>,  <18.319633, 12.817643, 21.435495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287323, 12.440733, 20.725994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065720, 12.773344, 20.709805>,  <17.932758, 12.972911, 20.700090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065720, 12.773344, 20.709805>,  <18.287323, 12.440733, 20.725994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065720, 12.773344, 20.709805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343267, 0.183871, -0.921064,
		-0.758448, -0.524169, -0.387302,
		-0.554007, 0.831527, -0.040474,
		17.899517, 13.022802, 20.697662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.881962, 12.366844, 20.216722>,  <18.287323, 12.440733, 20.725994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.881962, 12.366844, 20.216722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.891922, 12.765772, 20.244246>,  <17.897898, 13.005129, 20.260759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.891922, 12.765772, 20.244246>,  <17.881962, 12.366844, 20.216722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891922, 12.765772, 20.244246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505929, 0.046793, -0.861305,
		-0.862216, 0.056258, -0.503407,
		0.024899, 0.997319, 0.068808,
		17.899391, 13.064968, 20.264889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.050154, 12.557168, 19.558794>,  <17.881962, 12.366844, 20.216722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.050154, 12.557168, 19.558794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101913, 12.909690, 19.740589>,  <18.132969, 13.121203, 19.849667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101913, 12.909690, 19.740589>,  <18.050154, 12.557168, 19.558794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101913, 12.909690, 19.740589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341906, 0.390578, -0.854722,
		-0.930783, 0.265991, -0.250783,
		0.129398, 0.881305, 0.454487,
		18.140732, 13.174082, 19.876936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835875, 13.166876, 19.159536>,  <18.050154, 12.557168, 19.558794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835875, 13.166876, 19.159536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118599, 13.303277, 19.407452>,  <18.288233, 13.385118, 19.556200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118599, 13.303277, 19.407452>,  <17.835875, 13.166876, 19.159536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118599, 13.303277, 19.407452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548541, 0.289028, -0.784579,
		-0.446681, 0.894527, 0.017233,
		0.706809, 0.341003, 0.619789,
		18.330641, 13.405578, 19.593388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983227, 13.720588, 18.822451>,  <17.835875, 13.166876, 19.159536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983227, 13.720588, 18.822451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280201, 13.686161, 19.088198>,  <18.458385, 13.665505, 19.247646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280201, 13.686161, 19.088198>,  <17.983227, 13.720588, 18.822451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.280201, 13.686161, 19.088198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609808, 0.497406, -0.617027,
		-0.277356, 0.863238, 0.421775,
		0.742434, -0.086066, 0.664367,
		18.502932, 13.660341, 19.287508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204422, 14.379594, 18.986071>,  <17.983227, 13.720588, 18.822451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204422, 14.379594, 18.986071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516464, 14.145043, 19.073338>,  <18.703690, 14.004313, 19.125698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516464, 14.145043, 19.073338>,  <18.204422, 14.379594, 18.986071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516464, 14.145043, 19.073338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568398, 0.518518, -0.638798,
		0.261452, 0.622336, 0.737795,
		0.780107, -0.586376, 0.218167,
		18.750496, 13.969131, 19.138788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776236, 14.853013, 19.086563>,  <18.204422, 14.379594, 18.986071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776236, 14.853013, 19.086563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.934587, 14.496450, 18.998314>,  <19.029598, 14.282513, 18.945364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.934587, 14.496450, 18.998314>,  <18.776236, 14.853013, 19.086563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934587, 14.496450, 18.998314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597201, 0.432417, -0.675549,
		0.697590, 0.135679, 0.703533,
		0.395878, -0.891407, -0.220622,
		19.053350, 14.229029, 18.932127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500177, 14.912518, 19.273102>,  <18.776236, 14.853013, 19.086563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500177, 14.912518, 19.273102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469376, 14.599409, 19.026091>,  <19.450895, 14.411544, 18.877884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469376, 14.599409, 19.026091>,  <19.500177, 14.912518, 19.273102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469376, 14.599409, 19.026091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674277, 0.415365, -0.610592,
		0.734453, -0.463401, 0.495821,
		-0.077002, -0.782772, -0.617526,
		19.446276, 14.364577, 18.840832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187365, 14.717239, 19.078407>,  <19.500177, 14.912518, 19.273102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187365, 14.717239, 19.078407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.979393, 14.535701, 18.788939>,  <19.854610, 14.426778, 18.615257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.979393, 14.535701, 18.788939>,  <20.187365, 14.717239, 19.078407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979393, 14.535701, 18.788939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574158, 0.441590, -0.689449,
		0.632470, -0.773965, 0.030985,
		-0.519927, -0.453846, -0.723671,
		19.823416, 14.399547, 18.571836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708685, 14.504223, 18.588186>,  <20.187365, 14.717239, 19.078407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708685, 14.504223, 18.588186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375681, 14.485108, 18.367409>,  <20.175879, 14.473639, 18.234941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.375681, 14.485108, 18.367409>,  <20.708685, 14.504223, 18.588186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375681, 14.485108, 18.367409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439668, 0.549168, -0.710708,
		0.337070, -0.834345, -0.436179,
		-0.832511, -0.047785, -0.551943,
		20.125927, 14.470773, 18.201826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876127, 14.220918, 17.912027>,  <20.708685, 14.504223, 18.588186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876127, 14.220918, 17.912027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.548065, 14.447487, 17.879751>,  <20.351229, 14.583428, 17.860386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.548065, 14.447487, 17.879751>,  <20.876127, 14.220918, 17.912027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.548065, 14.447487, 17.879751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510798, 0.661364, -0.549257,
		-0.257745, -0.491693, -0.831749,
		-0.820154, 0.566423, -0.080692,
		20.302019, 14.617414, 17.855543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.920261, 14.579342, 17.279839>,  <20.876127, 14.220918, 17.912027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.920261, 14.579342, 17.279839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635456, 14.764337, 17.491175>,  <20.464573, 14.875334, 17.617977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635456, 14.764337, 17.491175>,  <20.920261, 14.579342, 17.279839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635456, 14.764337, 17.491175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211050, 0.858610, -0.467170,
		-0.669700, -0.221123, -0.708948,
		-0.712011, 0.462486, 0.528343,
		20.421852, 14.903083, 17.649677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.511993, 15.082300, 16.852245>,  <20.920261, 14.579342, 17.279839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.511993, 15.082300, 16.852245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437391, 15.209457, 17.224087>,  <20.392630, 15.285751, 17.447191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437391, 15.209457, 17.224087>,  <20.511993, 15.082300, 16.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437391, 15.209457, 17.224087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055709, 0.941260, -0.333056,
		-0.980873, -0.113905, -0.157841,
		-0.186506, 0.317893, 0.929602,
		20.381439, 15.304825, 17.502968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038363, 15.508849, 16.670660>,  <20.511993, 15.082300, 16.852245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038363, 15.508849, 16.670660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197897, 15.605699, 17.024452>,  <20.293617, 15.663809, 17.236727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197897, 15.605699, 17.024452>,  <20.038363, 15.508849, 16.670660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197897, 15.605699, 17.024452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045641, 0.968559, -0.244560,
		-0.915886, 0.057171, 0.397347,
		0.398835, 0.242124, 0.884481,
		20.317547, 15.678336, 17.289797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599154, 16.041843, 17.033503>,  <20.038363, 15.508849, 16.670660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.599154, 16.041843, 17.033503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.983265, 16.071726, 17.141043>,  <20.213732, 16.089655, 17.205566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.983265, 16.071726, 17.141043>,  <19.599154, 16.041843, 17.033503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.983265, 16.071726, 17.141043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056528, 0.995599, -0.074748,
		-0.273253, 0.056581, 0.960277,
		0.960280, 0.074707, 0.268852,
		20.271349, 16.094137, 17.221699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.585476, 16.660767, 17.134462>,  <19.599154, 16.041843, 17.033503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.585476, 16.660767, 17.134462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958879, 16.567566, 17.243475>,  <20.182922, 16.511646, 17.308882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.958879, 16.567566, 17.243475>,  <19.585476, 16.660767, 17.134462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958879, 16.567566, 17.243475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294490, 0.931830, -0.212059,
		-0.204542, 0.278217, 0.938487,
		0.933508, -0.233000, 0.272531,
		20.238932, 16.497665, 17.325233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.783749, 16.986027, 17.764610>,  <19.585476, 16.660767, 17.134462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.783749, 16.986027, 17.764610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.109430, 16.951942, 17.534895>,  <20.304840, 16.931492, 17.397066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.109430, 16.951942, 17.534895>,  <19.783749, 16.986027, 17.764610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.109430, 16.951942, 17.534895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081966, 0.996134, -0.031593,
		0.574762, -0.021349, 0.818042,
		0.814205, -0.085210, -0.574290,
		20.353691, 16.926380, 17.362608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040424, 17.627874, 17.798218>,  <19.783749, 16.986027, 17.764610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040424, 17.627874, 17.798218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231634, 17.454277, 17.492762>,  <20.346359, 17.350119, 17.309488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231634, 17.454277, 17.492762>,  <20.040424, 17.627874, 17.798218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.231634, 17.454277, 17.492762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315214, 0.896254, -0.312042,
		0.819838, -0.091547, 0.565230,
		0.478022, -0.433992, -0.763640,
		20.375040, 17.324080, 17.263670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.780174, 17.837341, 17.826199>,  <20.040424, 17.627874, 17.798218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.780174, 17.837341, 17.826199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627346, 17.762709, 17.464157>,  <20.535650, 17.717928, 17.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627346, 17.762709, 17.464157>,  <20.780174, 17.837341, 17.826199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627346, 17.762709, 17.464157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163403, 0.950334, -0.264886,
		0.909572, -0.249102, -0.332606,
		-0.382071, -0.186583, -0.905101,
		20.512726, 17.706734, 17.192627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318802, 17.973274, 17.289497>,  <20.780174, 17.837341, 17.826199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318802, 17.973274, 17.289497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961103, 18.006342, 17.113546>,  <20.746485, 18.026182, 17.007975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961103, 18.006342, 17.113546>,  <21.318802, 17.973274, 17.289497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961103, 18.006342, 17.113546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258835, 0.897307, -0.357555,
		0.365147, -0.433597, -0.823809,
		-0.894244, 0.082670, -0.439879,
		20.692831, 18.031143, 16.981583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482006, 18.351946, 16.714430>,  <21.318802, 17.973274, 17.289497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482006, 18.351946, 16.714430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.085188, 18.391432, 16.683195>,  <20.847097, 18.415123, 16.664454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.085188, 18.391432, 16.683195>,  <21.482006, 18.351946, 16.714430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.085188, 18.391432, 16.683195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125322, 0.716979, -0.685737,
		-0.011706, -0.690070, -0.723648,
		-0.992047, 0.098716, -0.078088,
		20.787573, 18.421047, 16.659769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373411, 18.569170, 16.051413>,  <21.482006, 18.351946, 16.714430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373411, 18.569170, 16.051413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.025454, 18.674759, 16.218075>,  <20.816679, 18.738111, 16.318071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.025454, 18.674759, 16.218075>,  <21.373411, 18.569170, 16.051413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.025454, 18.674759, 16.218075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079617, 0.758511, -0.646779,
		-0.486769, -0.595802, -0.638808,
		-0.869895, 0.263971, 0.416655,
		20.764484, 18.753950, 16.343071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884424, 18.609034, 15.617828>,  <21.373411, 18.569170, 16.051413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884424, 18.609034, 15.617828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.727541, 18.844128, 15.900881>,  <20.633411, 18.985184, 16.070713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.727541, 18.844128, 15.900881>,  <20.884424, 18.609034, 15.617828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727541, 18.844128, 15.900881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014468, 0.773114, -0.634102,
		-0.919763, -0.238462, -0.311725,
		-0.392208, 0.587733, 0.707632,
		20.609879, 19.020447, 16.113171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552702, 19.006620, 15.233322>,  <20.884424, 18.609034, 15.617828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552702, 19.006620, 15.233322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.535213, 19.206369, 15.579435>,  <20.524721, 19.326220, 15.787103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.535213, 19.206369, 15.579435>,  <20.552702, 19.006620, 15.233322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.535213, 19.206369, 15.579435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024323, 0.866386, -0.498783,
		-0.998748, -0.000761, -0.050026,
		-0.043721, 0.499375, 0.865282,
		20.522097, 19.356182, 15.839020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944233, 19.478853, 15.194696>,  <20.552702, 19.006620, 15.233322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944233, 19.478853, 15.194696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.184488, 19.643812, 15.468678>,  <20.328642, 19.742786, 15.633066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.184488, 19.643812, 15.468678>,  <19.944233, 19.478853, 15.194696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184488, 19.643812, 15.468678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014456, 0.850965, -0.525023,
		-0.799389, 0.325252, 0.505162,
		0.600640, 0.412395, 0.684954,
		20.364681, 19.767530, 15.674164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.624054, 20.023022, 15.506760>,  <19.944233, 19.478853, 15.194696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.624054, 20.023022, 15.506760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013004, 20.077271, 15.582751>,  <20.246374, 20.109819, 15.628346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013004, 20.077271, 15.582751>,  <19.624054, 20.023022, 15.506760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013004, 20.077271, 15.582751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029275, 0.878320, -0.477175,
		-0.231577, 0.458432, 0.858028,
		0.972376, 0.135622, 0.189978,
		20.304718, 20.117956, 15.639745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694609, 20.727209, 15.901008>,  <19.624054, 20.023022, 15.506760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694609, 20.727209, 15.901008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.041706, 20.641834, 15.721467>,  <20.249964, 20.590611, 15.613743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.041706, 20.641834, 15.721467>,  <19.694609, 20.727209, 15.901008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041706, 20.641834, 15.721467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078535, 0.950634, -0.300213,
		0.490770, 0.225257, 0.841667,
		0.867743, -0.213436, -0.448852,
		20.302029, 20.577803, 15.586811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.114819, 21.240206, 16.147932>,  <19.694609, 20.727209, 15.901008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.114819, 21.240206, 16.147932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304411, 21.106052, 15.822268>,  <20.418167, 21.025560, 15.626869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304411, 21.106052, 15.822268>,  <20.114819, 21.240206, 16.147932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304411, 21.106052, 15.822268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263126, 0.936322, -0.232520,
		0.840300, -0.104017, 0.532049,
		0.473983, -0.335383, -0.814161,
		20.446606, 21.005438, 15.578019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583813, 21.753937, 16.016735>,  <20.114819, 21.240206, 16.147932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583813, 21.753937, 16.016735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.656878, 21.564663, 15.672008>,  <20.700718, 21.451099, 15.465171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.656878, 21.564663, 15.672008>,  <20.583813, 21.753937, 16.016735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656878, 21.564663, 15.672008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314406, 0.858651, -0.404805,
		0.931549, -0.197017, 0.305616,
		0.182664, -0.473183, -0.861819,
		20.711678, 21.422709, 15.413462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.369719, 21.964067, 15.725176>,  <20.583813, 21.753937, 16.016735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.369719, 21.964067, 15.725176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147917, 21.847342, 15.413441>,  <21.014835, 21.777306, 15.226399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.147917, 21.847342, 15.413441>,  <21.369719, 21.964067, 15.725176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.147917, 21.847342, 15.413441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214031, 0.854987, -0.472428,
		0.804185, -0.428766, -0.411638,
		-0.554506, -0.291816, -0.779337,
		20.981565, 21.759796, 15.179640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737831, 21.996593, 15.011516>,  <21.369719, 21.964067, 15.725176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.737831, 21.996593, 15.011516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.361313, 21.955450, 14.882904>,  <21.135401, 21.930763, 14.805737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.361313, 21.955450, 14.882904>,  <21.737831, 21.996593, 15.011516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.361313, 21.955450, 14.882904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217014, 0.545192, -0.809735,
		0.258582, -0.831977, -0.490866,
		-0.941297, -0.102858, -0.321528,
		21.078924, 21.924593, 14.786446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732491, 21.837931, 14.230531>,  <21.737831, 21.996593, 15.011516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732491, 21.837931, 14.230531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.380941, 22.009941, 14.313153>,  <21.170012, 22.113148, 14.362727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.380941, 22.009941, 14.313153>,  <21.732491, 21.837931, 14.230531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.380941, 22.009941, 14.313153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167092, 0.683029, -0.711022,
		-0.446841, -0.590382, -0.672148,
		-0.878871, 0.430024, 0.206558,
		21.117281, 22.138948, 14.375120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378979, 22.010567, 13.581110>,  <21.732491, 21.837931, 14.230531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378979, 22.010567, 13.581110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183369, 22.250031, 13.834870>,  <21.066004, 22.393709, 13.987126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183369, 22.250031, 13.834870>,  <21.378979, 22.010567, 13.581110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183369, 22.250031, 13.834870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112933, 0.677724, -0.726593,
		-0.864929, -0.426965, -0.263815,
		-0.489023, 0.598658, 0.634401,
		21.036661, 22.429628, 14.025190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.875456, 22.239504, 13.092100>,  <21.378979, 22.010567, 13.581110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.875456, 22.239504, 13.092100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.863874, 22.477936, 13.413061>,  <20.856926, 22.620995, 13.605638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.863874, 22.477936, 13.413061>,  <20.875456, 22.239504, 13.092100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.863874, 22.477936, 13.413061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212197, 0.780777, -0.587673,
		-0.976798, -0.187282, 0.103881,
		-0.028953, 0.596081, 0.802402,
		20.855188, 22.656759, 13.653782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233885, 22.573191, 13.050191>,  <20.875456, 22.239504, 13.092100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233885, 22.573191, 13.050191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478491, 22.813276, 13.256410>,  <20.625256, 22.957327, 13.380141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478491, 22.813276, 13.256410>,  <20.233885, 22.573191, 13.050191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478491, 22.813276, 13.256410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251963, 0.765378, -0.592208,
		-0.750041, 0.232247, 0.619274,
		0.611517, 0.600215, 0.515547,
		20.661945, 22.993341, 13.411074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836300, 23.192244, 13.193306>,  <20.233885, 22.573191, 13.050191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836300, 23.192244, 13.193306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220892, 23.290710, 13.242230>,  <20.451647, 23.349791, 13.271585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220892, 23.290710, 13.242230>,  <19.836300, 23.192244, 13.193306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220892, 23.290710, 13.242230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139852, 0.821147, -0.553316,
		-0.236645, 0.514896, 0.823943,
		0.961478, 0.246169, 0.122312,
		20.509335, 23.364561, 13.278924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843708, 23.860672, 13.288058>,  <19.836300, 23.192244, 13.193306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843708, 23.860672, 13.288058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238956, 23.825062, 13.237951>,  <20.476105, 23.803696, 13.207887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238956, 23.825062, 13.237951>,  <19.843708, 23.860672, 13.288058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238956, 23.825062, 13.237951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002057, 0.807384, -0.590023,
		0.153667, 0.583272, 0.797609,
		0.988121, -0.089026, -0.125269,
		20.535393, 23.798353, 13.200371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138161, 24.461332, 13.456674>,  <19.843708, 23.860672, 13.288058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138161, 24.461332, 13.456674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.410881, 24.276064, 13.230180>,  <20.574512, 24.164904, 13.094283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.410881, 24.276064, 13.230180>,  <20.138161, 24.461332, 13.456674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410881, 24.276064, 13.230180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064924, 0.809290, -0.583810,
		0.728652, 0.361279, 0.581845,
		0.681800, -0.463170, -0.566235,
		20.615421, 24.137114, 13.060309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765303, 24.950405, 13.398418>,  <20.138161, 24.461332, 13.456674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765303, 24.950405, 13.398418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794567, 24.684040, 13.101444>,  <20.812126, 24.524221, 12.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794567, 24.684040, 13.101444>,  <20.765303, 24.950405, 13.398418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794567, 24.684040, 13.101444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161487, 0.742517, -0.650070,
		0.984159, -0.072334, 0.161860,
		0.073162, -0.665910, -0.742436,
		20.816515, 24.484266, 12.878714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329960, 25.124578, 12.975125>,  <20.765303, 24.950405, 13.398418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329960, 25.124578, 12.975125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.113554, 24.898020, 12.726451>,  <20.983709, 24.762085, 12.577246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.113554, 24.898020, 12.726451>,  <21.329960, 25.124578, 12.975125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.113554, 24.898020, 12.726451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167031, 0.652123, -0.739484,
		0.824258, -0.503914, -0.258203,
		-0.541016, -0.566398, -0.621687,
		20.951250, 24.728100, 12.539945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695286, 24.946657, 12.406018>,  <21.329960, 25.124578, 12.975125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695286, 24.946657, 12.406018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.330601, 24.887035, 12.252885>,  <21.111790, 24.851263, 12.161005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.330601, 24.887035, 12.252885>,  <21.695286, 24.946657, 12.406018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330601, 24.887035, 12.252885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254159, 0.527493, -0.810651,
		0.322772, -0.836382, -0.443039,
		-0.911713, -0.149053, -0.382834,
		21.057087, 24.842319, 12.138035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.650824, 24.680407, 11.688287>,  <21.695286, 24.946657, 12.406018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.650824, 24.680407, 11.688287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355642, 24.934919, 11.778239>,  <21.178534, 25.087627, 11.832211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.355642, 24.934919, 11.778239>,  <21.650824, 24.680407, 11.688287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355642, 24.934919, 11.778239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429949, 0.700124, -0.570062,
		-0.520165, -0.323990, -0.790227,
		-0.737951, 0.636284, 0.224881,
		21.134256, 25.125805, 11.845703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.729132, 24.225264, 11.017902>,  <21.650824, 24.680407, 11.688287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.729132, 24.225264, 11.017902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.044756, 24.298773, 10.783428>,  <22.234131, 24.342878, 10.642744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.044756, 24.298773, 10.783428>,  <21.729132, 24.225264, 11.017902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.044756, 24.298773, 10.783428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500150, -0.746236, 0.439297,
		-0.356701, -0.639812, -0.680739,
		0.789060, 0.183774, -0.586185,
		22.281473, 24.353905, 10.607573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.908321, 23.586767, 10.664141>,  <21.729132, 24.225264, 11.017902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.908321, 23.586767, 10.664141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200684, 23.844851, 10.753122>,  <22.376101, 23.999701, 10.806511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.200684, 23.844851, 10.753122>,  <21.908321, 23.586767, 10.664141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200684, 23.844851, 10.753122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543244, -0.747318, 0.382625,
		0.413116, -0.158816, -0.896723,
		0.730905, 0.645208, 0.222454,
		22.419954, 24.038412, 10.819859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595972, 23.394472, 10.391986>,  <21.908321, 23.586767, 10.664141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595972, 23.394472, 10.391986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.645899, 23.604557, 10.728693>,  <22.675856, 23.730608, 10.930717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.645899, 23.604557, 10.728693>,  <22.595972, 23.394472, 10.391986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645899, 23.604557, 10.728693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500999, -0.765662, 0.403437,
		0.856399, 0.371369, -0.358699,
		0.124818, 0.525211, 0.841768,
		22.683344, 23.762121, 10.981223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.335571, 23.537346, 10.734028>,  <22.595972, 23.394472, 10.391986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.335571, 23.537346, 10.734028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.045437, 23.483953, 11.004159>,  <22.871355, 23.451918, 11.166238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.045437, 23.483953, 11.004159>,  <23.335571, 23.537346, 10.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.045437, 23.483953, 11.004159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551634, -0.699566, 0.454210,
		0.411808, 0.701989, 0.581055,
		-0.725338, -0.133482, 0.675328,
		22.827835, 23.443909, 11.206758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403412, 22.871227, 11.052464>,  <23.335571, 23.537346, 10.734028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403412, 22.871227, 11.052464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.185429, 23.069347, 11.323079>,  <23.054640, 23.188219, 11.485448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.185429, 23.069347, 11.323079>,  <23.403412, 22.871227, 11.052464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185429, 23.069347, 11.323079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228086, -0.688876, 0.688060,
		0.806845, 0.529272, 0.262437,
		-0.544957, 0.495300, 0.676535,
		23.021942, 23.217937, 11.526040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778109, 22.925034, 11.581153>,  <23.403412, 22.871227, 11.052464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778109, 22.925034, 11.581153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.407076, 22.939236, 11.729925>,  <23.184456, 22.947758, 11.819188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.407076, 22.939236, 11.729925>,  <23.778109, 22.925034, 11.581153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.407076, 22.939236, 11.729925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224206, -0.743416, 0.630131,
		0.298872, 0.667887, 0.681618,
		-0.927581, 0.035506, 0.371930,
		23.128801, 22.949888, 11.841504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.685247, 22.710337, 12.327060>,  <23.778109, 22.925034, 11.581153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.685247, 22.710337, 12.327060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.307594, 22.634775, 12.219040>,  <23.081001, 22.589437, 12.154228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.307594, 22.634775, 12.219040>,  <23.685247, 22.710337, 12.327060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.307594, 22.634775, 12.219040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077662, -0.923868, 0.374749,
		-0.320282, 0.332841, 0.886925,
		-0.944134, -0.188906, -0.270049,
		23.024355, 22.578104, 12.138025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281734, 22.512075, 12.899616>,  <23.685247, 22.710337, 12.327060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281734, 22.512075, 12.899616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094786, 22.353281, 12.583651>,  <22.982616, 22.258003, 12.394071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094786, 22.353281, 12.583651>,  <23.281734, 22.512075, 12.899616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.094786, 22.353281, 12.583651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105190, -0.862188, 0.495548,
		-0.877782, 0.314695, 0.361201,
		-0.467370, -0.396988, -0.789915,
		22.954575, 22.234184, 12.346676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631701, 22.178673, 13.151474>,  <23.281734, 22.512075, 12.899616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631701, 22.178673, 13.151474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732912, 22.011105, 12.802651>,  <22.793640, 21.910563, 12.593358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.732912, 22.011105, 12.802651>,  <22.631701, 22.178673, 13.151474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.732912, 22.011105, 12.802651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443686, -0.851255, 0.280192,
		-0.859720, 0.316021, -0.401262,
		0.253030, -0.418921, -0.872055,
		22.808821, 21.885427, 12.541035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.091988, 21.877867, 12.995581>,  <22.631701, 22.178673, 13.151474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.091988, 21.877867, 12.995581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389046, 21.679144, 12.815954>,  <22.567280, 21.559910, 12.708179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.389046, 21.679144, 12.815954>,  <22.091988, 21.877867, 12.995581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.389046, 21.679144, 12.815954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377066, -0.864371, 0.332691,
		-0.553445, -0.077743, -0.829250,
		0.742644, -0.496808, -0.449067,
		22.611839, 21.530102, 12.681234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701546, 21.525421, 12.577908>,  <22.091988, 21.877867, 12.995581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701546, 21.525421, 12.577908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.055935, 21.350491, 12.639615>,  <22.268568, 21.245531, 12.676640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.055935, 21.350491, 12.639615>,  <21.701546, 21.525421, 12.577908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.055935, 21.350491, 12.639615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462511, -0.809096, 0.362556,
		-0.033737, -0.392565, -0.919105,
		0.885971, -0.437328, 0.154269,
		22.321726, 21.219292, 12.685896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.829571, 20.894436, 12.197998>,  <21.701546, 21.525421, 12.577908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.829571, 20.894436, 12.197998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.094860, 20.856728, 12.494982>,  <22.254034, 20.834103, 12.673172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.094860, 20.856728, 12.494982>,  <21.829571, 20.894436, 12.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.094860, 20.856728, 12.494982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321509, -0.931722, 0.168896,
		0.675845, -0.350723, -0.648249,
		0.663224, -0.094270, 0.742460,
		22.293827, 20.828447, 12.717720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968649, 20.241035, 12.098047>,  <21.829571, 20.894436, 12.197998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968649, 20.241035, 12.098047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.159090, 20.306450, 12.443667>,  <22.273355, 20.345699, 12.651039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.159090, 20.306450, 12.443667>,  <21.968649, 20.241035, 12.098047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.159090, 20.306450, 12.443667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372644, -0.852458, 0.366675,
		0.796532, -0.496558, -0.344916,
		0.476103, 0.163538, 0.864050,
		22.301920, 20.355511, 12.702883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.470509, 19.693316, 12.289786>,  <21.968649, 20.241035, 12.098047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.470509, 19.693316, 12.289786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.367838, 19.880924, 12.627812>,  <22.306236, 19.993490, 12.830627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.367838, 19.880924, 12.627812>,  <22.470509, 19.693316, 12.289786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367838, 19.880924, 12.627812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057061, -0.880187, 0.471185,
		0.964812, 0.072722, 0.252686,
		-0.256676, 0.469024, 0.845065,
		22.290834, 20.021631, 12.881331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.006048, 19.472485, 12.808690>,  <22.470509, 19.693316, 12.289786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.006048, 19.472485, 12.808690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.685480, 19.597008, 13.012971>,  <22.493139, 19.671721, 13.135539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.685480, 19.597008, 13.012971>,  <23.006048, 19.472485, 12.808690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.685480, 19.597008, 13.012971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034730, -0.828206, 0.559347,
		0.597094, 0.466008, 0.652928,
		-0.801419, 0.311307, 0.510701,
		22.445055, 19.690399, 13.166182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.193096, 19.551325, 13.487565>,  <23.006048, 19.472485, 12.808690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.193096, 19.551325, 13.487565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.796734, 19.506680, 13.517620>,  <22.558916, 19.479893, 13.535653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.796734, 19.506680, 13.517620>,  <23.193096, 19.551325, 13.487565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.796734, 19.506680, 13.517620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132667, -0.717463, 0.683847,
		-0.022417, 0.687598, 0.725746,
		-0.990907, -0.111612, 0.075138,
		22.499462, 19.473196, 13.540161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189817, 19.360378, 14.187235>,  <23.193096, 19.551325, 13.487565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189817, 19.360378, 14.187235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.839031, 19.255072, 14.026425>,  <22.628559, 19.191887, 13.929940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.839031, 19.255072, 14.026425>,  <23.189817, 19.360378, 14.187235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.839031, 19.255072, 14.026425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046620, -0.786027, 0.616431,
		-0.478287, 0.559331, 0.677045,
		-0.876965, -0.263267, -0.402023,
		22.575941, 19.176092, 13.905819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679979, 19.445925, 14.658556>,  <23.189817, 19.360378, 14.187235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679979, 19.445925, 14.658556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.566036, 19.161613, 14.401294>,  <22.497669, 18.991026, 14.246936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.566036, 19.161613, 14.401294>,  <22.679979, 19.445925, 14.658556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.566036, 19.161613, 14.401294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137583, -0.633690, 0.761254,
		-0.948644, 0.305338, 0.082722,
		-0.284859, -0.710778, -0.643156,
		22.480579, 18.948380, 14.208347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365351, 19.070692, 15.132443>,  <22.679979, 19.445925, 14.658556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365351, 19.070692, 15.132443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356571, 18.836588, 14.808224>,  <22.351303, 18.696125, 14.613692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356571, 18.836588, 14.808224>,  <22.365351, 19.070692, 15.132443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.356571, 18.836588, 14.808224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230238, -0.785993, 0.573764,
		-0.972887, 0.199213, -0.117497,
		-0.021949, -0.585260, -0.810548,
		22.349987, 18.661011, 14.565060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.805683, 18.614637, 15.222058>,  <22.365351, 19.070692, 15.132443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.805683, 18.614637, 15.222058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.011240, 18.398546, 14.955503>,  <22.134575, 18.268892, 14.795570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.011240, 18.398546, 14.955503>,  <21.805683, 18.614637, 15.222058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.011240, 18.398546, 14.955503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099216, -0.809022, 0.579345,
		-0.852100, -0.231602, -0.469346,
		0.513889, -0.540227, -0.666388,
		22.165407, 18.236479, 14.755588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492979, 18.065271, 15.296638>,  <21.805683, 18.614637, 15.222058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492979, 18.065271, 15.296638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834497, 17.956251, 15.119213>,  <22.039408, 17.890839, 15.012758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.834497, 17.956251, 15.119213>,  <21.492979, 18.065271, 15.296638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.834497, 17.956251, 15.119213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126265, -0.934981, 0.331462,
		-0.505063, -0.226995, -0.832697,
		0.853796, -0.272550, -0.443563,
		22.090637, 17.874487, 14.986144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.369543, 17.408394, 14.988404>,  <21.492979, 18.065271, 15.296638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.369543, 17.408394, 14.988404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768084, 17.425249, 15.018080>,  <22.007208, 17.435362, 15.035885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768084, 17.425249, 15.018080>,  <21.369543, 17.408394, 14.988404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.768084, 17.425249, 15.018080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013907, -0.938110, 0.346057,
		0.084180, -0.343764, -0.935275,
		0.996354, 0.042138, 0.074189,
		22.066990, 17.437891, 15.040337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.625589, 16.783928, 14.781429>,  <21.369543, 17.408394, 14.988404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.625589, 16.783928, 14.781429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937658, 16.934393, 14.981361>,  <22.124899, 17.024673, 15.101321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937658, 16.934393, 14.981361>,  <21.625589, 16.783928, 14.781429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937658, 16.934393, 14.981361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234968, -0.916714, 0.323149,
		0.579759, -0.134667, -0.803582,
		0.780172, 0.376165, 0.499831,
		22.171711, 17.047243, 15.131310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094423, 16.176910, 14.638405>,  <21.625589, 16.783928, 14.781429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094423, 16.176910, 14.638405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.231211, 16.402794, 14.938848>,  <22.313284, 16.538324, 15.119113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.231211, 16.402794, 14.938848>,  <22.094423, 16.176910, 14.638405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.231211, 16.402794, 14.938848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275807, -0.824408, 0.494248,
		0.898325, 0.038143, -0.437672,
		0.341969, 0.564709, 0.751107,
		22.333801, 16.572206, 15.164180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.736191, 15.855698, 14.896092>,  <22.094423, 16.176910, 14.638405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.736191, 15.855698, 14.896092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630829, 16.074356, 15.214034>,  <22.567612, 16.205551, 15.404799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630829, 16.074356, 15.214034>,  <22.736191, 15.855698, 14.896092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630829, 16.074356, 15.214034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166710, -0.785761, 0.595640,
		0.950171, 0.289406, 0.115844,
		-0.263407, 0.546647, 0.794854,
		22.551807, 16.238350, 15.452491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.334768, 15.877258, 15.436160>,  <22.736191, 15.855698, 14.896092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.334768, 15.877258, 15.436160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.995180, 15.950777, 15.634338>,  <22.791428, 15.994888, 15.753245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.995180, 15.950777, 15.634338>,  <23.334768, 15.877258, 15.436160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995180, 15.950777, 15.634338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212960, -0.739062, 0.639089,
		0.483627, 0.648079, 0.588302,
		-0.848971, 0.183796, 0.495446,
		22.740488, 16.005917, 15.782972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.741217, 15.920320, 14.833147>,  <23.334768, 15.877258, 15.436160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.741217, 15.920320, 14.833147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.961946, 15.590485, 14.783274>,  <24.094385, 15.392584, 14.753350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.961946, 15.590485, 14.783274>,  <23.741217, 15.920320, 14.833147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961946, 15.590485, 14.783274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783924, 0.461880, 0.414886,
		-0.284521, -0.326686, 0.901290,
		0.551826, -0.824586, -0.124682,
		24.127495, 15.343109, 14.745869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999239, 15.521349, 15.415471>,  <23.741217, 15.920320, 14.833147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999239, 15.521349, 15.415471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271801, 15.464756, 15.128230>,  <24.435337, 15.430800, 14.955885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271801, 15.464756, 15.128230>,  <23.999239, 15.521349, 15.415471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.271801, 15.464756, 15.128230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707658, 0.377820, 0.597052,
		0.186841, -0.915005, 0.357570,
		0.681403, -0.141483, -0.718103,
		24.476221, 15.422311, 14.912799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480528, 15.011088, 15.695613>,  <23.999239, 15.521349, 15.415471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480528, 15.011088, 15.695613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623772, 15.247817, 15.406752>,  <24.709719, 15.389854, 15.233435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623772, 15.247817, 15.406752>,  <24.480528, 15.011088, 15.695613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623772, 15.247817, 15.406752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756410, 0.269530, 0.595985,
		0.547359, -0.759671, -0.351139,
		0.358110, 0.591822, -0.722152,
		24.731205, 15.425364, 15.190106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142511, 14.790693, 15.664754>,  <24.480528, 15.011088, 15.695613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142511, 14.790693, 15.664754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095461, 15.157612, 15.512580>,  <25.067230, 15.377763, 15.421275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095461, 15.157612, 15.512580>,  <25.142511, 14.790693, 15.664754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095461, 15.157612, 15.512580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867145, 0.281579, 0.410820,
		0.483966, -0.281568, -0.828551,
		-0.117629, 0.917297, -0.380435,
		25.060173, 15.432801, 15.398450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589535, 15.007094, 15.071348>,  <25.142511, 14.790693, 15.664754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589535, 15.007094, 15.071348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487467, 15.293022, 15.331785>,  <25.426226, 15.464579, 15.488048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487467, 15.293022, 15.331785>,  <25.589535, 15.007094, 15.071348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487467, 15.293022, 15.331785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936738, 0.015891, 0.349671,
		0.239606, 0.699128, -0.673654,
		-0.255170, 0.714820, 0.651092,
		25.410915, 15.507468, 15.527113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238451, 14.590575, 14.959246>,  <25.589535, 15.007094, 15.071348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238451, 14.590575, 14.959246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557669, 14.824621, 14.901602>,  <26.749199, 14.965049, 14.867015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557669, 14.824621, 14.901602>,  <26.238451, 14.590575, 14.959246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557669, 14.824621, 14.901602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187221, -0.468061, -0.863636,
		-0.572779, 0.662238, -0.483078,
		0.798043, 0.585115, -0.144111,
		26.797081, 15.000155, 14.858369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.188928, 15.449733, 23.668983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.845616, 15.401896, 23.469360>,  <10.639629, 15.373193, 23.349586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.845616, 15.401896, 23.469360>,  <11.188928, 15.449733, 23.668983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845616, 15.401896, 23.469360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500694, 0.018107, -0.865435,
		0.112540, -0.992658, 0.044341,
		-0.858277, -0.119597, -0.499056,
		10.588133, 15.366017, 23.319643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.258636, 14.858503, 23.305883>,  <11.188928, 15.449733, 23.668983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.258636, 14.858503, 23.305883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.996983, 15.097271, 23.120070>,  <10.839990, 15.240532, 23.008581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.996983, 15.097271, 23.120070>,  <11.258636, 14.858503, 23.305883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996983, 15.097271, 23.120070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520696, -0.090087, -0.848976,
		-0.548619, -0.797228, -0.251884,
		-0.654136, 0.596919, -0.464537,
		10.800742, 15.276346, 22.980709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.392713, 14.775693, 22.679152>,  <11.258636, 14.858503, 23.305883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.392713, 14.775693, 22.679152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.123398, 15.052355, 22.574615>,  <10.961809, 15.218352, 22.511894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.123398, 15.052355, 22.574615>,  <11.392713, 14.775693, 22.679152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.123398, 15.052355, 22.574615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441437, 0.092477, -0.892514,
		-0.593144, -0.716283, -0.367586,
		-0.673286, 0.691655, -0.261342,
		10.921412, 15.259851, 22.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239915, 14.591391, 21.990797>,  <11.392713, 14.775693, 22.679152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239915, 14.591391, 21.990797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.142741, 14.978549, 22.016592>,  <11.084436, 15.210844, 22.032068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.142741, 14.978549, 22.016592>,  <11.239915, 14.591391, 21.990797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.142741, 14.978549, 22.016592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452285, 0.171828, -0.875165,
		-0.858150, -0.183441, -0.479508,
		-0.242935, 0.967897, 0.064487,
		11.069860, 15.268918, 22.035938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.869682, 14.809334, 21.313639>,  <11.239915, 14.591391, 21.990797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.869682, 14.809334, 21.313639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.965842, 15.168676, 21.460697>,  <11.023538, 15.384282, 21.548931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.965842, 15.168676, 21.460697>,  <10.869682, 14.809334, 21.313639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.965842, 15.168676, 21.460697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373303, 0.264058, -0.889336,
		-0.896020, 0.351039, -0.271880,
		0.240399, 0.898357, 0.367645,
		11.037962, 15.438184, 21.570992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.610504, 15.321855, 20.834177>,  <10.869682, 14.809334, 21.313639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.610504, 15.321855, 20.834177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.909985, 15.496769, 21.033466>,  <11.089673, 15.601718, 21.153040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.909985, 15.496769, 21.033466>,  <10.610504, 15.321855, 20.834177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.909985, 15.496769, 21.033466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338476, 0.394047, -0.854495,
		-0.569982, 0.808398, 0.147013,
		0.748702, 0.437286, 0.498223,
		11.134595, 15.627954, 21.182934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625973, 16.075495, 20.677919>,  <10.610504, 15.321855, 20.834177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625973, 16.075495, 20.677919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.988276, 15.970169, 20.810743>,  <11.205659, 15.906973, 20.890438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.988276, 15.970169, 20.810743>,  <10.625973, 16.075495, 20.677919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.988276, 15.970169, 20.810743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395328, 0.242660, -0.885907,
		0.152695, 0.933692, 0.323888,
		0.905759, -0.263316, 0.332062,
		11.260004, 15.891174, 20.910362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.034002, 16.374456, 20.129173>,  <10.625973, 16.075495, 20.677919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.034002, 16.374456, 20.129173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.284443, 16.150923, 20.346685>,  <11.434708, 16.016802, 20.477194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.284443, 16.150923, 20.346685>,  <11.034002, 16.374456, 20.129173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.284443, 16.150923, 20.346685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592554, -0.112298, -0.797665,
		0.506829, 0.821640, 0.260830,
		0.626103, -0.558835, 0.543782,
		11.472274, 15.983273, 20.509821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733905, 16.680458, 20.124758>,  <11.034002, 16.374456, 20.129173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733905, 16.680458, 20.124758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.771482, 16.287809, 20.191206>,  <11.794027, 16.052221, 20.231075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.771482, 16.287809, 20.191206>,  <11.733905, 16.680458, 20.124758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771482, 16.287809, 20.191206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765447, -0.035481, -0.642520,
		0.636605, 0.187518, 0.748045,
		0.093942, -0.981620, 0.166123,
		11.799664, 15.993323, 20.241043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444848, 16.574308, 20.011852>,  <11.733905, 16.680458, 20.124758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.444848, 16.574308, 20.011852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.297949, 16.202799, 19.991806>,  <12.209809, 15.979894, 19.979778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.297949, 16.202799, 19.991806>,  <12.444848, 16.574308, 20.011852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.297949, 16.202799, 19.991806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721872, -0.250630, -0.645047,
		0.586541, -0.273070, 0.762498,
		-0.367248, -0.928772, -0.050117,
		12.187775, 15.924168, 19.976770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999654, 16.117529, 20.204376>,  <12.444848, 16.574308, 20.011852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999654, 16.117529, 20.204376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.749151, 15.886309, 19.995127>,  <12.598850, 15.747577, 19.869577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.749151, 15.886309, 19.995127>,  <12.999654, 16.117529, 20.204376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749151, 15.886309, 19.995127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779585, -0.458163, -0.427007,
		0.007155, -0.675237, 0.737567,
		-0.626256, -0.578051, -0.523126,
		12.561275, 15.712893, 19.838188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368443, 15.526383, 20.110310>,  <12.999654, 16.117529, 20.204376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368443, 15.526383, 20.110310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.079675, 15.520624, 19.833580>,  <12.906414, 15.517169, 19.667542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.079675, 15.520624, 19.833580>,  <13.368443, 15.526383, 20.110310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079675, 15.520624, 19.833580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577677, -0.562941, -0.591090,
		-0.380946, -0.826372, 0.414716,
		-0.721920, -0.014398, -0.691826,
		12.863098, 15.516305, 19.626032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.553521, 14.828351, 19.745249>,  <13.368443, 15.526383, 20.110310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.553521, 14.828351, 19.745249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.319435, 15.065928, 19.524429>,  <13.178984, 15.208473, 19.391937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.319435, 15.065928, 19.524429>,  <13.553521, 14.828351, 19.745249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319435, 15.065928, 19.524429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477450, -0.297881, -0.826625,
		-0.655412, -0.747328, -0.109254,
		-0.585215, 0.593943, -0.552047,
		13.143870, 15.244110, 19.358816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248564, 14.388487, 19.184120>,  <13.553521, 14.828351, 19.745249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.248564, 14.388487, 19.184120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.270550, 14.770682, 19.068176>,  <13.283741, 15.000000, 18.998610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.270550, 14.770682, 19.068176>,  <13.248564, 14.388487, 19.184120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.270550, 14.770682, 19.068176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638778, -0.256769, -0.725281,
		-0.767426, -0.145291, -0.624459,
		0.054965, 0.955490, -0.289859,
		13.287039, 15.057329, 18.981218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.298069, 14.345739, 18.468397>,  <13.248564, 14.388487, 19.184120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.298069, 14.345739, 18.468397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.408308, 14.720876, 18.552780>,  <13.474451, 14.945957, 18.603411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.408308, 14.720876, 18.552780>,  <13.298069, 14.345739, 18.468397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408308, 14.720876, 18.552780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715458, -0.053554, -0.696600,
		-0.642001, 0.342912, -0.685745,
		0.275597, 0.937840, 0.210957,
		13.490987, 15.002228, 18.616068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372233, 14.693312, 17.820068>,  <13.298069, 14.345739, 18.468397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372233, 14.693312, 17.820068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.585941, 14.921088, 18.069962>,  <13.714167, 15.057755, 18.219898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.585941, 14.921088, 18.069962>,  <13.372233, 14.693312, 17.820068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585941, 14.921088, 18.069962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651670, 0.193267, -0.733467,
		-0.538407, 0.798990, -0.267831,
		0.534270, 0.569441, 0.624734,
		13.746222, 15.091921, 18.257381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.569489, 15.288190, 17.384462>,  <13.372233, 14.693312, 17.820068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.569489, 15.288190, 17.384462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.832805, 15.323385, 17.683504>,  <13.990793, 15.344502, 17.862930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.832805, 15.323385, 17.683504>,  <13.569489, 15.288190, 17.384462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832805, 15.323385, 17.683504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708021, 0.264931, -0.654612,
		-0.255662, 0.960245, 0.112103,
		0.658288, 0.087988, 0.747607,
		14.030291, 15.349782, 17.907785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.885793, 15.980425, 17.341824>,  <13.569489, 15.288190, 17.384462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.885793, 15.980425, 17.341824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.147365, 15.752406, 17.540791>,  <14.304308, 15.615595, 17.660172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.147365, 15.752406, 17.540791>,  <13.885793, 15.980425, 17.341824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.147365, 15.752406, 17.540791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725866, 0.287370, -0.624930,
		0.213296, 0.769718, 0.601697,
		0.653929, -0.570046, 0.497417,
		14.343543, 15.581392, 17.690016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533523, 16.414438, 17.436392>,  <13.885793, 15.980425, 17.341824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.533523, 16.414438, 17.436392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.646705, 16.032660, 17.474264>,  <14.714614, 15.803592, 17.496988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.646705, 16.032660, 17.474264>,  <14.533523, 16.414438, 17.436392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646705, 16.032660, 17.474264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783335, 0.172999, -0.597040,
		0.553464, 0.243104, 0.796604,
		0.282955, -0.954448, 0.094683,
		14.731591, 15.746325, 17.502668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.235657, 16.400862, 17.549944>,  <14.533523, 16.414438, 17.436392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.235657, 16.400862, 17.549944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.172139, 16.024141, 17.431421>,  <15.134028, 15.798109, 17.360308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.172139, 16.024141, 17.431421>,  <15.235657, 16.400862, 17.549944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172139, 16.024141, 17.431421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778165, 0.065323, -0.624654,
		0.607655, -0.329766, 0.722503,
		-0.158793, -0.941800, -0.296306,
		15.124501, 15.741601, 17.342529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871761, 16.056147, 17.624491>,  <15.235657, 16.400862, 17.549944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871761, 16.056147, 17.624491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.642338, 15.868770, 17.355688>,  <15.504683, 15.756344, 17.194407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.642338, 15.868770, 17.355688>,  <15.871761, 16.056147, 17.624491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642338, 15.868770, 17.355688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640949, 0.254218, -0.724264,
		0.510112, -0.846130, 0.154439,
		-0.573560, -0.468443, -0.672005,
		15.470270, 15.728237, 17.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389143, 16.005352, 16.966446>,  <15.871761, 16.056147, 17.624491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389143, 16.005352, 16.966446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.022604, 15.916334, 16.833311>,  <15.802681, 15.862924, 16.753429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.022604, 15.916334, 16.833311>,  <16.389143, 16.005352, 16.966446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022604, 15.916334, 16.833311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253221, 0.321802, -0.912317,
		0.310130, -0.920283, -0.238533,
		-0.916350, -0.222536, -0.332836,
		15.747700, 15.849571, 16.733459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614305, 16.055136, 17.646051>,  <16.389143, 16.005352, 16.966446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614305, 16.055136, 17.646051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.937326, 16.026423, 17.880217>,  <17.131138, 16.009195, 18.020716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.937326, 16.026423, 17.880217>,  <16.614305, 16.055136, 17.646051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937326, 16.026423, 17.880217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582044, 0.063436, 0.810679,
		-0.095329, -0.995401, 0.009447,
		0.807550, -0.071783, 0.585414,
		17.179592, 16.004887, 18.055841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.291927, 15.686695, 18.222818>,  <16.614305, 16.055136, 17.646051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.291927, 15.686695, 18.222818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.643230, 15.831566, 18.347712>,  <16.854013, 15.918489, 18.422647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.643230, 15.831566, 18.347712>,  <16.291927, 15.686695, 18.222818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643230, 15.831566, 18.347712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377424, 0.124092, 0.917688,
		0.293621, -0.923812, 0.245679,
		0.878258, 0.362178, 0.312233,
		16.906708, 15.940219, 18.441381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417521, 15.323112, 18.866671>,  <16.291927, 15.686695, 18.222818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417521, 15.323112, 18.866671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.625179, 15.664748, 18.879395>,  <16.749775, 15.869730, 18.887030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.625179, 15.664748, 18.879395>,  <16.417521, 15.323112, 18.866671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625179, 15.664748, 18.879395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358693, 0.183940, 0.915153,
		0.775774, -0.486510, 0.401849,
		0.519147, 0.854093, 0.031812,
		16.780924, 15.920976, 18.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711515, 15.307043, 19.547386>,  <16.417521, 15.323112, 18.866671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711515, 15.307043, 19.547386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.724537, 15.679333, 19.401678>,  <16.732349, 15.902706, 19.314253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.724537, 15.679333, 19.401678>,  <16.711515, 15.307043, 19.547386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724537, 15.679333, 19.401678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374766, 0.349239, 0.858826,
		0.926548, 0.108560, 0.360172,
		0.032552, 0.930724, -0.364271,
		16.734303, 15.958549, 19.292397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912754, 15.769541, 20.129635>,  <16.711515, 15.307043, 19.547386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912754, 15.769541, 20.129635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.761925, 16.038002, 19.874332>,  <16.671427, 16.199080, 19.721151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.761925, 16.038002, 19.874332>,  <16.912754, 15.769541, 20.129635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761925, 16.038002, 19.874332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405193, 0.500138, 0.765298,
		0.832848, 0.547189, 0.083359,
		-0.377071, 0.671153, -0.638256,
		16.648804, 16.239347, 19.682856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078234, 16.536224, 20.405617>,  <16.912754, 15.769541, 20.129635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078234, 16.536224, 20.405617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.774111, 16.579430, 20.149408>,  <16.591637, 16.605352, 19.995684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.774111, 16.579430, 20.149408>,  <17.078234, 16.536224, 20.405617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774111, 16.579430, 20.149408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552977, 0.409738, 0.725487,
		0.340809, 0.905786, -0.251796,
		-0.760306, 0.108015, -0.640521,
		16.546019, 16.611834, 19.957253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895603, 17.252380, 20.419743>,  <17.078234, 16.536224, 20.405617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895603, 17.252380, 20.419743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.582567, 17.035839, 20.296783>,  <16.394745, 16.905914, 20.223009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.582567, 17.035839, 20.296783>,  <16.895603, 17.252380, 20.419743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582567, 17.035839, 20.296783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592059, 0.494603, 0.636265,
		-0.192404, 0.679931, -0.707584,
		-0.782590, -0.541351, -0.307396,
		16.347790, 16.873434, 20.204565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.309240, 17.758926, 20.241480>,  <16.895603, 17.252380, 20.419743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.309240, 17.758926, 20.241480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.136824, 17.398830, 20.266037>,  <16.033375, 17.182772, 20.280771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.136824, 17.398830, 20.266037>,  <16.309240, 17.758926, 20.241480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136824, 17.398830, 20.266037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734375, 0.389529, 0.555842,
		-0.524307, 0.194504, -0.829017,
		-0.431040, -0.900241, 0.061394,
		16.007511, 17.128757, 20.284454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540157, 17.776690, 20.195009>,  <16.309240, 17.758926, 20.241480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540157, 17.776690, 20.195009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587250, 17.430992, 20.390650>,  <15.615505, 17.223574, 20.508034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587250, 17.430992, 20.390650>,  <15.540157, 17.776690, 20.195009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587250, 17.430992, 20.390650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728844, 0.259328, 0.633669,
		-0.674482, -0.431082, -0.599368,
		0.117731, -0.864244, 0.489104,
		15.622569, 17.171719, 20.537380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887875, 17.538200, 20.442177>,  <15.540157, 17.776690, 20.195009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887875, 17.538200, 20.442177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.165551, 17.345085, 20.655724>,  <15.332157, 17.229216, 20.783852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.165551, 17.345085, 20.655724>,  <14.887875, 17.538200, 20.442177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165551, 17.345085, 20.655724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607316, 0.005249, 0.794443,
		-0.386350, -0.875722, -0.289561,
		0.694191, -0.482788, 0.533868,
		15.373809, 17.200249, 20.815884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.491677, 17.229393, 20.824858>,  <14.887875, 17.538200, 20.442177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.491677, 17.229393, 20.824858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.825162, 17.213367, 21.045155>,  <15.025253, 17.203753, 21.177334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.825162, 17.213367, 21.045155>,  <14.491677, 17.229393, 20.824858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825162, 17.213367, 21.045155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552198, -0.060817, 0.831492,
		0.000191, -0.997345, -0.072821,
		0.833713, -0.040053, 0.550744,
		15.075275, 17.201349, 21.210377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480150, 16.668484, 21.329649>,  <14.491677, 17.229393, 20.824858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480150, 16.668484, 21.329649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.730708, 16.932467, 21.495583>,  <14.881042, 17.090857, 21.595142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.730708, 16.932467, 21.495583>,  <14.480150, 16.668484, 21.329649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730708, 16.932467, 21.495583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504630, -0.062290, 0.861085,
		0.594120, -0.748716, 0.294017,
		0.626394, 0.659958, 0.414832,
		14.918627, 17.130453, 21.620033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990012, 16.378469, 21.840849>,  <14.480150, 16.668484, 21.329649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990012, 16.378469, 21.840849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.825141, 16.740347, 21.883993>,  <14.726218, 16.957474, 21.909880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.825141, 16.740347, 21.883993>,  <14.990012, 16.378469, 21.840849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825141, 16.740347, 21.883993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487094, -0.318857, 0.813062,
		0.769967, 0.282588, 0.572097,
		-0.412179, 0.904696, 0.107862,
		14.701488, 17.011755, 21.916351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925958, 16.504295, 22.634848>,  <14.990012, 16.378469, 21.840849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925958, 16.504295, 22.634848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.656741, 16.719406, 22.431747>,  <14.495211, 16.848473, 22.309887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.656741, 16.719406, 22.431747>,  <14.925958, 16.504295, 22.634848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656741, 16.719406, 22.431747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590348, 0.022936, 0.806823,
		0.445537, 0.842774, 0.302040,
		-0.673042, 0.537779, -0.507749,
		14.454828, 16.880739, 22.279423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761129, 17.104311, 22.991058>,  <14.925958, 16.504295, 22.634848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761129, 17.104311, 22.991058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.442356, 17.038652, 22.758524>,  <14.251092, 16.999258, 22.619003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.442356, 17.038652, 22.758524>,  <14.761129, 17.104311, 22.991058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442356, 17.038652, 22.758524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595418, 0.051190, 0.801784,
		-0.101851, 0.985107, -0.138530,
		-0.796934, -0.164145, -0.581337,
		14.203276, 16.989408, 22.584124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256351, 17.637774, 23.156981>,  <14.761129, 17.104311, 22.991058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256351, 17.637774, 23.156981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.030511, 17.351955, 22.991741>,  <13.895006, 17.180466, 22.892597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.030511, 17.351955, 22.991741>,  <14.256351, 17.637774, 23.156981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030511, 17.351955, 22.991741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647520, 0.073110, 0.758533,
		-0.511804, 0.695760, -0.503959,
		-0.564601, -0.714544, -0.413100,
		13.861131, 17.137592, 22.867811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597937, 17.778757, 23.351435>,  <14.256351, 17.637774, 23.156981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597937, 17.778757, 23.351435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.526670, 17.405499, 23.226536>,  <13.483911, 17.181543, 23.151596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.526670, 17.405499, 23.226536>,  <13.597937, 17.778757, 23.351435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526670, 17.405499, 23.226536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785846, -0.056042, 0.615878,
		-0.592202, 0.355104, -0.723324,
		-0.178164, -0.933145, -0.312245,
		13.473221, 17.125555, 23.132862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814510, 17.695745, 23.303312>,  <13.597937, 17.778757, 23.351435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814510, 17.695745, 23.303312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.929361, 17.313778, 23.333469>,  <12.998272, 17.084597, 23.351564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.929361, 17.313778, 23.333469>,  <12.814510, 17.695745, 23.303312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929361, 17.313778, 23.333469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801056, -0.196215, 0.565516,
		-0.525230, -0.222770, -0.821284,
		0.287128, -0.954921, 0.075394,
		13.015500, 17.027302, 23.356087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.170850, 17.361931, 23.407143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.445558, 17.090080, 23.510262>,  <12.610382, 16.926970, 23.572132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.445558, 17.090080, 23.510262>,  <12.170850, 17.361931, 23.407143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445558, 17.090080, 23.510262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610143, -0.346240, 0.712631,
		-0.395064, -0.646704, -0.652456,
		0.686767, -0.679627, 0.257795,
		12.651588, 16.886192, 23.587601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896132, 16.637295, 23.327497>,  <12.170850, 17.361931, 23.407143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.896132, 16.637295, 23.327497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.180512, 16.609533, 23.607420>,  <12.351141, 16.592876, 23.775373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.180512, 16.609533, 23.607420>,  <11.896132, 16.637295, 23.327497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180512, 16.609533, 23.607420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660627, -0.407052, 0.630778,
		0.241081, -0.910765, -0.335242,
		0.710951, -0.069401, 0.699808,
		12.393798, 16.588713, 23.817362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.893950, 15.941828, 23.538879>,  <11.896132, 16.637295, 23.327497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.893950, 15.941828, 23.538879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.069638, 16.150755, 23.831255>,  <12.175051, 16.276112, 24.006680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.069638, 16.150755, 23.831255>,  <11.893950, 15.941828, 23.538879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.069638, 16.150755, 23.831255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625459, -0.406262, 0.666147,
		0.644893, -0.749757, 0.148250,
		0.439220, 0.522318, 0.730938,
		12.201405, 16.307449, 24.050537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891033, 15.505287, 24.031319>,  <11.893950, 15.941828, 23.538879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891033, 15.505287, 24.031319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.970250, 15.842482, 24.231380>,  <12.017780, 16.044798, 24.351418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.970250, 15.842482, 24.231380>,  <11.891033, 15.505287, 24.031319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970250, 15.842482, 24.231380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583336, -0.308700, 0.751281,
		0.787717, -0.440543, 0.430609,
		0.198042, 0.842986, 0.500153,
		12.029663, 16.095377, 24.381426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.152349, 15.338535, 24.748940>,  <11.891033, 15.505287, 24.031319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.152349, 15.338535, 24.748940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.006536, 15.711007, 24.747009>,  <11.919049, 15.934490, 24.745852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.006536, 15.711007, 24.747009>,  <12.152349, 15.338535, 24.748940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006536, 15.711007, 24.747009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563676, -0.216532, 0.797109,
		0.741207, 0.293290, 0.603816,
		-0.364529, 0.931179, -0.004826,
		11.897178, 15.990361, 24.745562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122976, 15.442887, 25.448271>,  <12.152349, 15.338535, 24.748940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122976, 15.442887, 25.448271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.885461, 15.736566, 25.316589>,  <11.742951, 15.912772, 25.237581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.885461, 15.736566, 25.316589>,  <12.122976, 15.442887, 25.448271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.885461, 15.736566, 25.316589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437632, 0.048637, 0.897838,
		0.675199, 0.677194, 0.292428,
		-0.593788, 0.734195, -0.329201,
		11.707325, 15.956824, 25.217829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172499, 16.111965, 25.891685>,  <12.122976, 15.442887, 25.448271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172499, 16.111965, 25.891685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.819438, 16.077175, 25.706921>,  <11.607601, 16.056301, 25.596062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.819438, 16.077175, 25.706921>,  <12.172499, 16.111965, 25.891685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819438, 16.077175, 25.706921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469404, 0.112493, 0.875788,
		-0.024211, 0.989839, -0.140119,
		-0.882652, -0.086976, -0.461911,
		11.554643, 16.051083, 25.568348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774151, 16.605242, 26.169821>,  <12.172499, 16.111965, 25.891685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774151, 16.605242, 26.169821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.509013, 16.385078, 25.966770>,  <11.349931, 16.252979, 25.844940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.509013, 16.385078, 25.966770>,  <11.774151, 16.605242, 26.169821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509013, 16.385078, 25.966770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614644, 0.012804, 0.788701,
		-0.427609, 0.834796, -0.346793,
		-0.662844, -0.550410, -0.507628,
		11.310160, 16.219955, 25.814482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.184568, 16.792250, 26.415916>,  <11.774151, 16.605242, 26.169821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.184568, 16.792250, 26.415916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.117995, 16.431259, 26.257002>,  <11.078052, 16.214664, 26.161654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.117995, 16.431259, 26.257002>,  <11.184568, 16.792250, 26.415916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117995, 16.431259, 26.257002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524091, -0.260320, 0.810902,
		-0.835242, 0.343174, -0.429654,
		-0.166433, -0.902477, -0.397285,
		11.068066, 16.160517, 26.137815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.678349, 16.680477, 26.886171>,  <11.184568, 16.792250, 26.415916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.678349, 16.680477, 26.886171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.703652, 16.320480, 26.713655>,  <10.718834, 16.104483, 26.610146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.703652, 16.320480, 26.713655>,  <10.678349, 16.680477, 26.886171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.703652, 16.320480, 26.713655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320767, -0.427561, 0.845163,
		-0.945043, 0.084881, -0.315734,
		0.063257, -0.899992, -0.431291,
		10.722630, 16.050482, 26.584269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.039676, 16.354639, 26.983200>,  <10.678349, 16.680477, 26.886171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.039676, 16.354639, 26.983200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.352944, 16.107244, 26.957539>,  <10.540906, 15.958808, 26.942142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.352944, 16.107244, 26.957539>,  <10.039676, 16.354639, 26.983200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.352944, 16.107244, 26.957539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164878, -0.306036, 0.937634,
		-0.599548, -0.723751, -0.341654,
		0.783172, -0.618487, -0.064152,
		10.587896, 15.921699, 26.938293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.923055, 15.900789, 27.562666>,  <10.039676, 16.354639, 26.983200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.923055, 15.900789, 27.562666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.277905, 15.753762, 27.451023>,  <10.490816, 15.665545, 27.384037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.277905, 15.753762, 27.451023>,  <9.923055, 15.900789, 27.562666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.277905, 15.753762, 27.451023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039009, -0.542866, 0.838913,
		-0.459875, -0.755109, -0.467252,
		0.887126, -0.367568, -0.279107,
		10.544044, 15.643492, 27.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.912251, 15.152131, 27.642078>,  <9.923055, 15.900789, 27.562666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.912251, 15.152131, 27.642078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.284311, 15.293808, 27.680786>,  <10.507547, 15.378815, 27.704010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.284311, 15.293808, 27.680786>,  <9.912251, 15.152131, 27.642078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.284311, 15.293808, 27.680786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083424, -0.460524, 0.883718,
		0.357572, -0.813919, -0.457906,
		0.930152, 0.354193, 0.096770,
		10.563357, 15.400066, 27.709818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.284392, 14.667198, 28.017574>,  <9.912251, 15.152131, 27.642078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.284392, 14.667198, 28.017574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.529324, 14.980275, 28.062202>,  <10.676282, 15.168121, 28.088980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.529324, 14.980275, 28.062202>,  <10.284392, 14.667198, 28.017574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.529324, 14.980275, 28.062202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181482, -0.276504, 0.943721,
		0.769493, -0.557619, -0.311355,
		0.612327, 0.782692, 0.111570,
		10.713022, 15.215083, 28.095673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.779384, 14.448009, 28.364374>,  <10.284392, 14.667198, 28.017574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.779384, 14.448009, 28.364374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.846359, 14.840477, 28.402895>,  <10.886544, 15.075957, 28.426008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.846359, 14.840477, 28.402895>,  <10.779384, 14.448009, 28.364374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.846359, 14.840477, 28.402895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247092, -0.136330, 0.959354,
		0.954416, -0.136836, -0.265266,
		0.167438, 0.981168, 0.096304,
		10.896590, 15.134828, 28.431786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.499389, 14.584217, 28.663925>,  <10.779384, 14.448009, 28.364374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.499389, 14.584217, 28.663925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.278043, 14.906057, 28.750093>,  <11.145235, 15.099161, 28.801794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.278043, 14.906057, 28.750093>,  <11.499389, 14.584217, 28.663925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278043, 14.906057, 28.750093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240635, -0.093173, 0.966133,
		0.797423, 0.586461, -0.142057,
		-0.553364, 0.804600, 0.215421,
		11.112034, 15.147437, 28.814720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.796622, 14.896408, 29.188004>,  <11.499389, 14.584217, 28.663925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.796622, 14.896408, 29.188004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.434099, 15.063950, 29.210514>,  <11.216585, 15.164474, 29.224020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.434099, 15.063950, 29.210514>,  <11.796622, 14.896408, 29.188004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.434099, 15.063950, 29.210514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050586, -0.024688, 0.998415,
		0.419580, 0.907718, 0.001187,
		-0.906308, 0.418854, 0.056276,
		11.162207, 15.189606, 29.227398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819571, 15.180921, 29.809626>,  <11.796622, 14.896408, 29.188004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819571, 15.180921, 29.809626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.430558, 15.169080, 29.717276>,  <11.197150, 15.161975, 29.661865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.430558, 15.169080, 29.717276>,  <11.819571, 15.180921, 29.809626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.430558, 15.169080, 29.717276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226528, -0.107745, 0.968027,
		-0.053532, 0.993738, 0.098080,
		-0.972533, -0.029602, -0.230877,
		11.138799, 15.160199, 29.648012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574648, 15.550108, 30.348850>,  <11.819571, 15.180921, 29.809626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574648, 15.550108, 30.348850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.286548, 15.322291, 30.190428>,  <11.113688, 15.185601, 30.095375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.286548, 15.322291, 30.190428>,  <11.574648, 15.550108, 30.348850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286548, 15.322291, 30.190428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261509, -0.305891, 0.915447,
		-0.642535, 0.762925, 0.071379,
		-0.720251, -0.569541, -0.396057,
		11.070473, 15.151429, 30.071611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.019287, 15.678048, 30.834589>,  <11.574648, 15.550108, 30.348850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.019287, 15.678048, 30.834589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.981261, 15.329161, 30.642673>,  <10.958446, 15.119828, 30.527523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.981261, 15.329161, 30.642673>,  <11.019287, 15.678048, 30.834589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.981261, 15.329161, 30.642673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194118, -0.456478, 0.868301,
		-0.976361, 0.175681, -0.125919,
		-0.095065, -0.872218, -0.479790,
		10.952742, 15.067495, 30.498737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.259201, 15.467879, 30.935112>,  <11.019287, 15.678048, 30.834589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.259201, 15.467879, 30.935112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.407762, 15.124835, 30.792809>,  <10.496898, 14.919008, 30.707426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.407762, 15.124835, 30.792809>,  <10.259201, 15.467879, 30.935112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.407762, 15.124835, 30.792809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542712, -0.511414, 0.666273,
		-0.753343, -0.054380, -0.655376,
		0.371400, -0.857612, -0.355758,
		10.519182, 14.867552, 30.686081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.714195, 14.995803, 30.905148>,  <10.259201, 15.467879, 30.935112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.714195, 14.995803, 30.905148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.055577, 14.790022, 30.938505>,  <10.260406, 14.666553, 30.958521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.055577, 14.790022, 30.938505>,  <9.714195, 14.995803, 30.905148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.055577, 14.790022, 30.938505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379899, -0.504554, 0.775308,
		-0.356780, -0.693372, -0.626053,
		0.853455, -0.514452, 0.083396,
		10.311613, 14.635686, 30.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.514304, 14.249421, 31.106552>,  <9.714195, 14.995803, 30.905148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.514304, 14.249421, 31.106552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.892819, 14.342365, 31.196482>,  <10.119928, 14.398132, 31.250439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.892819, 14.342365, 31.196482>,  <9.514304, 14.249421, 31.106552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.892819, 14.342365, 31.196482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101827, -0.445791, 0.889327,
		0.306870, -0.864453, -0.398186,
		0.946289, 0.232361, 0.224824,
		10.176706, 14.412073, 31.263929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.136412, 14.066293, 30.423286>,  <9.514304, 14.249421, 31.106552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.136412, 14.066293, 30.423286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.097036, 13.686918, 30.543802>,  <9.073411, 13.459293, 30.616112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.097036, 13.686918, 30.543802>,  <9.136412, 14.066293, 30.423286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.097036, 13.686918, 30.543802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029816, -0.299815, -0.953531,
		0.994696, -0.102847, 0.001235,
		-0.098438, -0.948437, 0.301291,
		9.067505, 13.402387, 30.634190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.657622, 13.662977, 30.171396>,  <9.136412, 14.066293, 30.423286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.657622, 13.662977, 30.171396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.335355, 13.427199, 30.194897>,  <9.141994, 13.285732, 30.208998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.335355, 13.427199, 30.194897>,  <9.657622, 13.662977, 30.171396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335355, 13.427199, 30.194897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044797, -0.159527, -0.986177,
		0.590670, -0.791900, 0.154931,
		-0.805669, -0.589446, 0.058753,
		9.093654, 13.250366, 30.212523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.786878, 13.095180, 29.779579>,  <9.657622, 13.662977, 30.171396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.786878, 13.095180, 29.779579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.388565, 13.068734, 29.805029>,  <9.149577, 13.052867, 29.820299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.388565, 13.068734, 29.805029>,  <9.786878, 13.095180, 29.779579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.388565, 13.068734, 29.805029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043691, -0.268097, -0.962401,
		0.080686, -0.961121, 0.264078,
		-0.995781, -0.066114, 0.063624,
		9.089830, 13.048900, 29.824116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.569319, 12.572741, 29.388336>,  <9.786878, 13.095180, 29.779579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.569319, 12.572741, 29.388336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.223122, 12.769610, 29.425617>,  <9.015404, 12.887733, 29.447987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.223122, 12.769610, 29.425617>,  <9.569319, 12.572741, 29.388336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.223122, 12.769610, 29.425617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212224, -0.191740, -0.958226,
		-0.453743, -0.849118, 0.270401,
		-0.865493, 0.492174, 0.093203,
		8.963473, 12.917263, 29.453579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.129779, 12.044846, 29.236172>,  <9.569319, 12.572741, 29.388336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.129779, 12.044846, 29.236172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.942602, 12.395113, 29.188450>,  <8.830296, 12.605273, 29.159817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.942602, 12.395113, 29.188450>,  <9.129779, 12.044846, 29.236172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.942602, 12.395113, 29.188450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130822, -0.202146, -0.970578,
		-0.874022, -0.438567, 0.209150,
		-0.467943, 0.875669, -0.119306,
		8.802219, 12.657814, 29.152658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.548146, 11.883185, 28.766794>,  <9.129779, 12.044846, 29.236172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.548146, 11.883185, 28.766794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.623924, 12.274161, 28.729437>,  <8.669391, 12.508747, 28.707024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.623924, 12.274161, 28.729437>,  <8.548146, 11.883185, 28.766794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.623924, 12.274161, 28.729437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019554, -0.091340, -0.995628,
		-0.981697, 0.190443, 0.001809,
		0.189445, 0.977440, -0.093392,
		8.680758, 12.567393, 28.701420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.047469, 12.201764, 28.245592>,  <8.548146, 11.883185, 28.766794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.047469, 12.201764, 28.245592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.361359, 12.449351, 28.258772>,  <8.549692, 12.597903, 28.266680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.361359, 12.449351, 28.258772>,  <8.047469, 12.201764, 28.245592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.361359, 12.449351, 28.258772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049488, -0.009573, -0.998729,
		-0.617866, 0.785358, -0.038144,
		0.784725, 0.618968, 0.032951,
		8.596776, 12.635042, 28.268658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.893837, 12.627639, 27.745661>,  <8.047469, 12.201764, 28.245592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.893837, 12.627639, 27.745661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.275315, 12.725449, 27.815716>,  <8.504202, 12.784135, 27.857748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.275315, 12.725449, 27.815716>,  <7.893837, 12.627639, 27.745661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.275315, 12.725449, 27.815716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109390, 0.260425, -0.959277,
		-0.280177, 0.934016, 0.221617,
		0.953695, 0.244525, 0.175138,
		8.561424, 12.798806, 27.868258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.010375, 13.316058, 27.575930>,  <7.893837, 12.627639, 27.745661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.010375, 13.316058, 27.575930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.375308, 13.153569, 27.555405>,  <8.594268, 13.056076, 27.543091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.375308, 13.153569, 27.555405>,  <8.010375, 13.316058, 27.575930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.375308, 13.153569, 27.555405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155491, 0.459660, -0.874377,
		0.378777, 0.789744, 0.482526,
		0.912332, -0.406223, -0.051311,
		8.649008, 13.031702, 27.540012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.386392, 13.865684, 27.274994>,  <8.010375, 13.316058, 27.575930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.386392, 13.865684, 27.274994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.604868, 13.540266, 27.195171>,  <8.735953, 13.345016, 27.147278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.604868, 13.540266, 27.195171>,  <8.386392, 13.865684, 27.274994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.604868, 13.540266, 27.195171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348052, 0.437101, -0.829339,
		0.761929, 0.383522, 0.521896,
		0.546191, -0.813544, -0.199554,
		8.768725, 13.296203, 27.135305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.031510, 14.052587, 27.354525>,  <8.386392, 13.865684, 27.274994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.031510, 14.052587, 27.354525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.050484, 13.743391, 27.101467>,  <9.061868, 13.557874, 26.949633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.050484, 13.743391, 27.101467>,  <9.031510, 14.052587, 27.354525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050484, 13.743391, 27.101467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326392, 0.610585, -0.721564,
		0.944044, -0.172264, 0.281260,
		0.047434, -0.772989, -0.632644,
		9.064713, 13.511495, 26.911674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.627926, 14.182629, 27.054777>,  <9.031510, 14.052587, 27.354525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.627926, 14.182629, 27.054777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.413892, 13.938426, 26.821207>,  <9.285472, 13.791904, 26.681065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.413892, 13.938426, 26.821207>,  <9.627926, 14.182629, 27.054777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.413892, 13.938426, 26.821207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379010, 0.444251, -0.811784,
		0.755008, -0.655685, -0.006324,
		-0.535084, -0.610507, -0.583924,
		9.253366, 13.755274, 26.646030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115156, 13.968302, 26.426479>,  <9.627926, 14.182629, 27.054777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115156, 13.968302, 26.426479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.741361, 13.919030, 26.292877>,  <9.517083, 13.889467, 26.212717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.741361, 13.919030, 26.292877>,  <10.115156, 13.968302, 26.426479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.741361, 13.919030, 26.292877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256727, 0.416799, -0.871992,
		0.246623, -0.900614, -0.357871,
		-0.934488, -0.123178, -0.334004,
		9.461014, 13.882076, 26.192677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.171922, 13.829737, 25.667919>,  <10.115156, 13.968302, 26.426479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.171922, 13.829737, 25.667919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.780552, 13.906246, 25.699162>,  <9.545731, 13.952152, 25.717907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.780552, 13.906246, 25.699162>,  <10.171922, 13.829737, 25.667919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780552, 13.906246, 25.699162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036550, 0.532322, -0.845753,
		-0.203349, -0.824650, -0.527827,
		-0.978424, 0.191275, 0.078106,
		9.487024, 13.963629, 25.722593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.938300, 13.670659, 25.060993>,  <10.171922, 13.829737, 25.667919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.938300, 13.670659, 25.060993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.658262, 13.910591, 25.215948>,  <9.490239, 14.054550, 25.308922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.658262, 13.910591, 25.215948>,  <9.938300, 13.670659, 25.060993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.658262, 13.910591, 25.215948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092527, 0.461743, -0.882175,
		-0.708029, -0.653450, -0.267764,
		-0.700095, 0.599830, 0.387389,
		9.448234, 14.090540, 25.332165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.286029, 13.698680, 24.538952>,  <9.938300, 13.670659, 25.060993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.286029, 13.698680, 24.538952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.275573, 14.025787, 24.768932>,  <9.269300, 14.222052, 24.906921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.275573, 14.025787, 24.768932>,  <9.286029, 13.698680, 24.538952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.275573, 14.025787, 24.768932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025985, 0.574399, -0.818163,
		-0.999321, -0.036327, 0.006235,
		-0.026140, 0.817769, 0.574953,
		9.267731, 14.271118, 24.941418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.741802, 14.137388, 24.285494>,  <9.286029, 13.698680, 24.538952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.741802, 14.137388, 24.285494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.002983, 14.359262, 24.491787>,  <9.159692, 14.492387, 24.615562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.002983, 14.359262, 24.491787>,  <8.741802, 14.137388, 24.285494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.002983, 14.359262, 24.491787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111378, 0.603202, -0.789774,
		-0.749165, 0.573126, 0.332082,
		0.652952, 0.554684, 0.515731,
		9.198869, 14.525668, 24.646507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655536, 14.797627, 24.000662>,  <8.741802, 14.137388, 24.285494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655536, 14.797627, 24.000662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.005075, 14.827855, 24.192778>,  <9.214799, 14.845991, 24.308046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.005075, 14.827855, 24.192778>,  <8.655536, 14.797627, 24.000662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.005075, 14.827855, 24.192778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355884, 0.573634, -0.737761,
		-0.331261, 0.815619, 0.474376,
		0.873850, 0.075568, 0.480288,
		9.267230, 14.850526, 24.336864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.782405, 15.577748, 24.081316>,  <8.655536, 14.797627, 24.000662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.782405, 15.577748, 24.081316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.118371, 15.366790, 24.132534>,  <9.319951, 15.240214, 24.163265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.118371, 15.366790, 24.132534>,  <8.782405, 15.577748, 24.081316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118371, 15.366790, 24.132534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458764, 0.563891, -0.686704,
		0.289961, 0.635516, 0.715571,
		0.839915, -0.527396, 0.128045,
		9.370346, 15.208571, 24.170948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.291020, 16.118887, 24.119036>,  <8.782405, 15.577748, 24.081316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.291020, 16.118887, 24.119036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.465928, 15.782053, 23.992739>,  <9.570872, 15.579953, 23.916962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.465928, 15.782053, 23.992739>,  <9.291020, 16.118887, 24.119036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.465928, 15.782053, 23.992739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469131, 0.513111, -0.718772,
		0.767276, 0.166173, 0.619415,
		0.437269, -0.842083, -0.315741,
		9.597109, 15.529428, 23.898016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.938417, 16.321653, 24.012213>,  <9.291020, 16.118887, 24.119036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.938417, 16.321653, 24.012213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.902643, 15.993114, 23.786863>,  <9.881179, 15.795990, 23.651653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.902643, 15.993114, 23.786863>,  <9.938417, 16.321653, 24.012213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.902643, 15.993114, 23.786863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506579, 0.449500, -0.735750,
		0.857543, -0.351194, 0.375877,
		-0.089435, -0.821348, -0.563373,
		9.875813, 15.746709, 23.617851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.355457, 24.232845, 10.837461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.558754, 24.466105, 11.090957>,  <23.680733, 24.606060, 11.243054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.558754, 24.466105, 11.090957>,  <23.355457, 24.232845, 10.837461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.558754, 24.466105, 11.090957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769834, -0.637502, -0.030778,
		0.386063, 0.503517, -0.772934,
		0.508244, 0.583148, 0.633740,
		23.711227, 24.641048, 11.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.295477, 24.380156, 11.586236>,  <23.355457, 24.232845, 10.837461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.295477, 24.380156, 11.586236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202662, 24.458622, 11.967324>,  <23.146973, 24.505701, 12.195977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202662, 24.458622, 11.967324>,  <23.295477, 24.380156, 11.586236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202662, 24.458622, 11.967324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057857, 0.980503, -0.187795,
		-0.970984, 0.011545, -0.238866,
		-0.232040, 0.196166, 0.952720,
		23.133049, 24.517471, 12.253140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.710070, 24.946926, 11.618855>,  <23.295477, 24.380156, 11.586236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.710070, 24.946926, 11.618855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.979977, 24.937132, 11.913905>,  <23.141920, 24.931255, 12.090936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.979977, 24.937132, 11.913905>,  <22.710070, 24.946926, 11.618855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.979977, 24.937132, 11.913905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222344, 0.959759, -0.171538,
		-0.703743, 0.279755, 0.653057,
		0.674766, -0.024485, 0.737626,
		23.182405, 24.929787, 12.135193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.343981, 25.601635, 11.437140>,  <22.710070, 24.946926, 11.618855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.343981, 25.601635, 11.437140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130880, 25.762510, 11.734978>,  <22.003019, 25.859035, 11.913680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.130880, 25.762510, 11.734978>,  <22.343981, 25.601635, 11.437140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130880, 25.762510, 11.734978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028624, 0.870786, -0.490828,
		-0.845787, -0.282804, -0.452401,
		-0.532753, 0.402187, 0.744594,
		21.971054, 25.883165, 11.958356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.625198, 25.757124, 11.403402>,  <22.343981, 25.601635, 11.437140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.625198, 25.757124, 11.403402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792385, 26.035391, 11.637103>,  <21.892698, 26.202351, 11.777324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792385, 26.035391, 11.637103>,  <21.625198, 25.757124, 11.403402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792385, 26.035391, 11.637103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095768, 0.673279, -0.733161,
		-0.903400, 0.250485, 0.348032,
		0.417968, 0.695667, 0.584251,
		21.917776, 26.244091, 11.812379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154732, 26.326267, 11.602259>,  <21.625198, 25.757124, 11.403402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154732, 26.326267, 11.602259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535789, 26.447868, 11.605010>,  <21.764425, 26.520830, 11.606661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535789, 26.447868, 11.605010>,  <21.154732, 26.326267, 11.602259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535789, 26.447868, 11.605010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240408, 0.766823, -0.595135,
		-0.186198, 0.565300, 0.803596,
		0.952646, 0.304004, 0.006878,
		21.821583, 26.539070, 11.607074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533249, 25.968966, 11.986591>,  <21.154732, 26.326267, 11.602259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533249, 25.968966, 11.986591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.640495, 25.698420, 11.712178>,  <20.704844, 25.536091, 11.547530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.640495, 25.698420, 11.712178>,  <20.533249, 25.968966, 11.986591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640495, 25.698420, 11.712178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182121, -0.734851, 0.653319,
		-0.946016, -0.050224, -0.320206,
		0.268116, -0.676367, -0.686033,
		20.720930, 25.495510, 11.506369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035105, 25.430712, 12.035500>,  <20.533249, 25.968966, 11.986591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035105, 25.430712, 12.035500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.361752, 25.274714, 11.865305>,  <20.557739, 25.181114, 11.763188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.361752, 25.274714, 11.865305>,  <20.035105, 25.430712, 12.035500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.361752, 25.274714, 11.865305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078650, -0.805496, 0.587359,
		-0.571794, -0.446184, -0.688456,
		0.816618, -0.389995, -0.425485,
		20.606737, 25.157715, 11.737659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911661, 24.714275, 12.014075>,  <20.035105, 25.430712, 12.035500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911661, 24.714275, 12.014075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.307323, 24.731886, 11.958022>,  <20.544720, 24.742453, 11.924391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.307323, 24.731886, 11.958022>,  <19.911661, 24.714275, 12.014075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307323, 24.731886, 11.958022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117909, -0.806934, 0.578753,
		-0.087596, -0.588999, -0.803373,
		0.989153, 0.044028, -0.140132,
		20.604069, 24.745094, 11.915982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.153580, 24.003019, 11.837005>,  <19.911661, 24.714275, 12.014075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.153580, 24.003019, 11.837005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417339, 24.233305, 12.030396>,  <20.575594, 24.371475, 12.146430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417339, 24.233305, 12.030396>,  <20.153580, 24.003019, 11.837005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.417339, 24.233305, 12.030396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205505, -0.756636, 0.620701,
		0.723161, -0.309932, -0.617236,
		0.659398, 0.575712, 0.483477,
		20.615158, 24.406019, 12.175439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827740, 23.575264, 11.944718>,  <20.153580, 24.003019, 11.837005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827740, 23.575264, 11.944718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.822994, 23.870264, 12.214815>,  <20.820147, 24.047264, 12.376873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.822994, 23.870264, 12.214815>,  <20.827740, 23.575264, 11.944718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822994, 23.870264, 12.214815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403306, -0.614396, 0.678131,
		0.914988, 0.280373, -0.290150,
		-0.011862, 0.737501, 0.675242,
		20.819435, 24.091515, 12.417388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392012, 23.472006, 12.294347>,  <20.827740, 23.575264, 11.944718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392012, 23.472006, 12.294347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.192522, 23.726589, 12.529699>,  <21.072828, 23.879339, 12.670911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.192522, 23.726589, 12.529699>,  <21.392012, 23.472006, 12.294347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192522, 23.726589, 12.529699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274144, -0.528153, 0.803679,
		0.822265, 0.562115, 0.088921,
		-0.498723, 0.636460, 0.588382,
		21.042906, 23.917528, 12.706214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779745, 23.652594, 12.921256>,  <21.392012, 23.472006, 12.294347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779745, 23.652594, 12.921256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.391376, 23.697880, 13.005626>,  <21.158356, 23.725052, 13.056248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.391376, 23.697880, 13.005626>,  <21.779745, 23.652594, 12.921256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391376, 23.697880, 13.005626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115829, -0.548910, 0.827817,
		0.209501, 0.828179, 0.519836,
		-0.970924, 0.113216, 0.210924,
		21.100100, 23.731844, 13.068903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750002, 23.747210, 13.613657>,  <21.779745, 23.652594, 12.921256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750002, 23.747210, 13.613657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.388121, 23.627558, 13.492310>,  <21.170992, 23.555767, 13.419501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.388121, 23.627558, 13.492310>,  <21.750002, 23.747210, 13.613657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.388121, 23.627558, 13.492310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102429, -0.538465, 0.836399,
		-0.413546, 0.787767, 0.456512,
		-0.904703, -0.299129, -0.303370,
		21.116709, 23.537819, 13.401299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476479, 23.601864, 14.129780>,  <21.750002, 23.747210, 13.613657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476479, 23.601864, 14.129780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.179041, 23.434525, 13.921144>,  <21.000578, 23.334122, 13.795963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.179041, 23.434525, 13.921144>,  <21.476479, 23.601864, 14.129780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.179041, 23.434525, 13.921144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203416, -0.601564, 0.772491,
		-0.636937, 0.680519, 0.362222,
		-0.743595, -0.418347, -0.521587,
		20.955963, 23.309021, 13.764668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.920893, 23.535543, 14.645164>,  <21.476479, 23.601864, 14.129780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.920893, 23.535543, 14.645164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.868902, 23.271080, 14.349604>,  <20.837708, 23.112402, 14.172268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.868902, 23.271080, 14.349604>,  <20.920893, 23.535543, 14.645164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.868902, 23.271080, 14.349604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203273, -0.711624, 0.672511,
		-0.970456, 0.237610, -0.041900,
		-0.129978, -0.661160, -0.738900,
		20.829908, 23.072731, 14.127934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276888, 23.152971, 14.754071>,  <20.920893, 23.535543, 14.645164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276888, 23.152971, 14.754071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.515944, 22.921879, 14.531701>,  <20.659378, 22.783224, 14.398279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.515944, 22.921879, 14.531701>,  <20.276888, 23.152971, 14.754071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515944, 22.921879, 14.531701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272175, -0.798394, 0.537111,
		-0.754152, -0.169691, -0.634397,
		0.597642, -0.577731, -0.555924,
		20.695236, 22.748560, 14.364923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912313, 22.536989, 14.597932>,  <20.276888, 23.152971, 14.754071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912313, 22.536989, 14.597932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.291569, 22.430574, 14.528355>,  <20.519123, 22.366726, 14.486609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.291569, 22.430574, 14.528355>,  <19.912313, 22.536989, 14.597932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291569, 22.430574, 14.528355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094351, -0.758139, 0.645231,
		-0.303527, -0.595358, -0.743922,
		0.948140, -0.266035, -0.173943,
		20.576010, 22.350763, 14.476171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.818443, 21.836193, 14.467191>,  <19.912313, 22.536989, 14.597932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.818443, 21.836193, 14.467191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.201921, 21.886299, 14.569333>,  <20.432009, 21.916363, 14.630619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.201921, 21.886299, 14.569333>,  <19.818443, 21.836193, 14.467191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201921, 21.886299, 14.569333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014128, -0.875711, 0.482628,
		0.284076, -0.466302, -0.837773,
		0.958698, 0.125267, 0.255357,
		20.489531, 21.923880, 14.645940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218607, 21.340445, 14.181841>,  <19.818443, 21.836193, 14.467191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218607, 21.340445, 14.181841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.441128, 21.467148, 14.489137>,  <20.574640, 21.543169, 14.673514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.441128, 21.467148, 14.489137>,  <20.218607, 21.340445, 14.181841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.441128, 21.467148, 14.489137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079665, -0.940570, 0.330123,
		0.827151, -0.122447, -0.548477,
		0.556304, 0.316756, 0.768239,
		20.608019, 21.562174, 14.719608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.770802, 20.821095, 14.264626>,  <20.218607, 21.340445, 14.181841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.770802, 20.821095, 14.264626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.744764, 20.998632, 14.622120>,  <20.729141, 21.105156, 14.836617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.744764, 20.998632, 14.622120>,  <20.770802, 20.821095, 14.264626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744764, 20.998632, 14.622120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186237, -0.874496, 0.447854,
		0.980346, 0.195599, -0.025737,
		-0.065092, 0.443845, 0.893736,
		20.725237, 21.131786, 14.890241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231363, 20.412468, 14.653701>,  <20.770802, 20.821095, 14.264626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231363, 20.412468, 14.653701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.017393, 20.600651, 14.934422>,  <20.889011, 20.713560, 15.102854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.017393, 20.600651, 14.934422>,  <21.231363, 20.412468, 14.653701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.017393, 20.600651, 14.934422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057447, -0.848963, 0.525321,
		0.842943, 0.240692, 0.481159,
		-0.534927, 0.470456, 0.701801,
		20.856915, 20.741787, 15.144961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573961, 20.340738, 15.262132>,  <21.231363, 20.412468, 14.653701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573961, 20.340738, 15.262132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.198536, 20.419012, 15.375839>,  <20.973280, 20.465977, 15.444063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.198536, 20.419012, 15.375839>,  <21.573961, 20.340738, 15.262132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198536, 20.419012, 15.375839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021343, -0.789216, 0.613744,
		0.344448, 0.582104, 0.736553,
		-0.938562, 0.195683, 0.284268,
		20.916967, 20.477716, 15.461120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561695, 20.295492, 16.000284>,  <21.573961, 20.340738, 15.262132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561695, 20.295492, 16.000284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.176048, 20.270128, 15.897167>,  <20.944660, 20.254910, 15.835297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.176048, 20.270128, 15.897167>,  <21.561695, 20.295492, 16.000284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.176048, 20.270128, 15.897167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139098, -0.706432, 0.693978,
		-0.226118, 0.704935, 0.672263,
		-0.964117, -0.063410, -0.257792,
		20.886812, 20.251104, 15.819830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.153324, 20.257658, 16.578695>,  <21.561695, 20.295492, 16.000284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.153324, 20.257658, 16.578695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.902454, 20.110270, 16.304211>,  <20.751932, 20.021837, 16.139521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.902454, 20.110270, 16.304211>,  <21.153324, 20.257658, 16.578695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902454, 20.110270, 16.304211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157953, -0.802544, 0.575303,
		-0.762696, 0.469204, 0.445133,
		-0.627173, -0.368471, -0.686209,
		20.714302, 19.999729, 16.098349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634584, 20.005552, 16.979145>,  <21.153324, 20.257658, 16.578695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634584, 20.005552, 16.979145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.593311, 19.809301, 16.633049>,  <20.568548, 19.691551, 16.425392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.593311, 19.809301, 16.633049>,  <20.634584, 20.005552, 16.979145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593311, 19.809301, 16.633049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271375, -0.822994, 0.499035,
		-0.956927, 0.286296, -0.048226,
		-0.103182, -0.490627, -0.865239,
		20.562357, 19.662113, 16.373478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117970, 19.639536, 17.099337>,  <20.634584, 20.005552, 16.979145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117970, 19.639536, 17.099337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.268890, 19.467398, 16.771326>,  <20.359444, 19.364115, 16.574520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.268890, 19.467398, 16.771326>,  <20.117970, 19.639536, 17.099337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.268890, 19.467398, 16.771326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184705, -0.902651, 0.388723,
		-0.907487, 0.004801, -0.420053,
		0.377295, -0.430347, -0.820031,
		20.382082, 19.338293, 16.525318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789904, 19.143784, 17.152477>,  <20.117970, 19.639536, 17.099337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789904, 19.143784, 17.152477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.061829, 19.016972, 16.887947>,  <20.224983, 18.940886, 16.729229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.061829, 19.016972, 16.887947>,  <19.789904, 19.143784, 17.152477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061829, 19.016972, 16.887947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168923, -0.945181, 0.279460,
		-0.713668, -0.078267, -0.696097,
		0.679811, -0.317028, -0.661325,
		20.265772, 18.921864, 16.689550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498072, 18.514648, 16.728518>,  <19.789904, 19.143784, 17.152477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.498072, 18.514648, 16.728518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.895576, 18.483728, 16.696356>,  <20.134079, 18.465176, 16.677059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.895576, 18.483728, 16.696356>,  <19.498072, 18.514648, 16.728518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895576, 18.483728, 16.696356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065527, -0.987984, 0.139974,
		-0.090257, -0.133832, -0.986885,
		0.993760, -0.077301, -0.080403,
		20.193705, 18.460539, 16.672235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626040, 17.997444, 16.229105>,  <19.498072, 18.514648, 16.728518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626040, 17.997444, 16.229105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.947338, 18.029757, 16.465162>,  <20.140118, 18.049145, 16.606796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.947338, 18.029757, 16.465162>,  <19.626040, 17.997444, 16.229105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947338, 18.029757, 16.465162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047410, -0.978947, 0.198533,
		0.593755, -0.187450, -0.782507,
		0.803248, 0.080782, 0.590141,
		20.188313, 18.053991, 16.642204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058445, 17.440365, 15.980392>,  <19.626040, 17.997444, 16.229105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058445, 17.440365, 15.980392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.168732, 17.519449, 16.356667>,  <20.234903, 17.566900, 16.582432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.168732, 17.519449, 16.356667>,  <20.058445, 17.440365, 15.980392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.168732, 17.519449, 16.356667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165353, -0.954275, 0.249033,
		0.946910, -0.224208, -0.230418,
		0.275718, 0.197711, 0.940686,
		20.251448, 17.578762, 16.638872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463322, 16.868799, 16.167585>,  <20.058445, 17.440365, 15.980392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463322, 16.868799, 16.167585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369455, 17.044668, 16.514370>,  <20.313135, 17.150190, 16.722441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369455, 17.044668, 16.514370>,  <20.463322, 16.868799, 16.167585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369455, 17.044668, 16.514370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086267, -0.897765, 0.431945,
		0.968241, 0.026572, 0.248602,
		-0.234664, 0.439673, 0.866961,
		20.299057, 17.176571, 16.774458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946518, 16.622478, 16.696976>,  <20.463322, 16.868799, 16.167585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946518, 16.622478, 16.696976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.578093, 16.736006, 16.803625>,  <20.357037, 16.804123, 16.867615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.578093, 16.736006, 16.803625>,  <20.946518, 16.622478, 16.696976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.578093, 16.736006, 16.803625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182149, -0.919171, 0.349209,
		0.344184, 0.273079, 0.898313,
		-0.921064, 0.283819, 0.266622,
		20.301773, 16.821152, 16.883612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.611023, 16.359673, 16.396553>,  <20.946518, 16.622478, 16.696976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.611023, 16.359673, 16.396553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958618, 16.267263, 16.221516>,  <22.167175, 16.211817, 16.116493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958618, 16.267263, 16.221516>,  <21.611023, 16.359673, 16.396553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958618, 16.267263, 16.221516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026256, 0.861552, -0.506989,
		0.494138, 0.452057, 0.742612,
		0.868987, -0.231025, -0.437595,
		22.219315, 16.197956, 16.090237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163057, 16.863071, 16.480930>,  <21.611023, 16.359673, 16.396553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163057, 16.863071, 16.480930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.281281, 16.667439, 16.152676>,  <22.352215, 16.550058, 15.955723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.281281, 16.667439, 16.152676>,  <22.163057, 16.863071, 16.480930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.281281, 16.667439, 16.152676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206418, 0.871415, -0.445002,
		0.932757, -0.037870, 0.358510,
		0.295559, -0.489082, -0.820636,
		22.369947, 16.520714, 15.906485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.761564, 17.231178, 16.222734>,  <22.163057, 16.863071, 16.480930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.761564, 17.231178, 16.222734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636349, 17.030132, 15.900397>,  <22.561220, 16.909504, 15.706995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636349, 17.030132, 15.900397>,  <22.761564, 17.231178, 16.222734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636349, 17.030132, 15.900397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291974, 0.756469, -0.585239,
		0.903747, -0.418487, -0.090053,
		-0.313038, -0.502615, -0.805844,
		22.542437, 16.879349, 15.658644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.253359, 17.411186, 15.751610>,  <22.761564, 17.231178, 16.222734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.253359, 17.411186, 15.751610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.921978, 17.310324, 15.551575>,  <22.723150, 17.249805, 15.431554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.921978, 17.310324, 15.551575>,  <23.253359, 17.411186, 15.751610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.921978, 17.310324, 15.551575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072824, 0.836833, -0.542592,
		0.555307, -0.485930, -0.674913,
		-0.828451, -0.252155, -0.500087,
		22.673443, 17.234676, 15.401548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.361116, 17.600571, 15.116890>,  <23.253359, 17.411186, 15.751610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.361116, 17.600571, 15.116890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.964291, 17.554546, 15.096621>,  <22.726194, 17.526932, 15.084458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.964291, 17.554546, 15.096621>,  <23.361116, 17.600571, 15.116890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.964291, 17.554546, 15.096621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052468, 0.745169, -0.664809,
		0.114255, -0.656875, -0.745293,
		-0.992065, -0.115061, -0.050674,
		22.666672, 17.520027, 15.081418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.205660, 17.640474, 14.413641>,  <23.361116, 17.600571, 15.116890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.205660, 17.640474, 14.413641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.847746, 17.690495, 14.585093>,  <22.632998, 17.720507, 14.687964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.847746, 17.690495, 14.585093>,  <23.205660, 17.640474, 14.413641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.847746, 17.690495, 14.585093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181178, 0.775710, -0.604523,
		-0.408088, -0.618576, -0.671437,
		-0.894784, 0.125049, 0.428630,
		22.579311, 17.728008, 14.713682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807453, 17.624651, 13.783447>,  <23.205660, 17.640474, 14.413641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807453, 17.624651, 13.783447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.620636, 17.809265, 14.085136>,  <22.508545, 17.920034, 14.266150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.620636, 17.809265, 14.085136>,  <22.807453, 17.624651, 13.783447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.620636, 17.809265, 14.085136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341781, 0.692446, -0.635377,
		-0.815510, -0.554528, -0.165658,
		-0.467044, 0.461538, 0.754223,
		22.480522, 17.947727, 14.311403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.485285, 17.983141, 13.385775>,  <22.807453, 17.624651, 13.783447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.485285, 17.983141, 13.385775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.451662, 18.165308, 13.740294>,  <22.431488, 18.274609, 13.953007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.451662, 18.165308, 13.740294>,  <22.485285, 17.983141, 13.385775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451662, 18.165308, 13.740294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258852, 0.848934, -0.460768,
		-0.962253, -0.268151, 0.046528,
		-0.084056, 0.455419, 0.886300,
		22.426445, 18.301933, 14.006185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.785397, 18.211418, 13.419234>,  <22.485285, 17.983141, 13.385775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.785397, 18.211418, 13.419234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.010302, 18.440105, 13.658232>,  <22.145245, 18.577318, 13.801630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.010302, 18.440105, 13.658232>,  <21.785397, 18.211418, 13.419234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010302, 18.440105, 13.658232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348620, 0.819050, -0.455654,
		-0.749884, 0.047898, 0.659833,
		0.562262, 0.571719, 0.597494,
		22.178980, 18.611622, 13.837480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.399868, 18.868378, 13.293810>,  <21.785397, 18.211418, 13.419234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.399868, 18.868378, 13.293810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.740751, 18.954807, 13.484409>,  <21.945282, 19.006664, 13.598769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.740751, 18.954807, 13.484409>,  <21.399868, 18.868378, 13.293810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740751, 18.954807, 13.484409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066961, 0.948292, -0.310254,
		-0.518897, 0.232495, 0.822613,
		0.852210, 0.216073, 0.476498,
		21.996414, 19.019629, 13.627358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244257, 19.413094, 13.682438>,  <21.399868, 18.868378, 13.293810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244257, 19.413094, 13.682438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640169, 19.422333, 13.626151>,  <21.877716, 19.427876, 13.592379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640169, 19.422333, 13.626151>,  <21.244257, 19.413094, 13.682438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640169, 19.422333, 13.626151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065114, 0.951118, -0.301886,
		0.126867, 0.307964, 0.942901,
		0.989780, 0.023097, -0.140718,
		21.937103, 19.429262, 13.583936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.485996, 20.148737, 13.829006>,  <21.244257, 19.413094, 13.682438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.485996, 20.148737, 13.829006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.774643, 19.993444, 13.599731>,  <21.947832, 19.900269, 13.462167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.774643, 19.993444, 13.599731>,  <21.485996, 20.148737, 13.829006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.774643, 19.993444, 13.599731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356933, 0.918071, -0.172465,
		0.593182, -0.080135, 0.801070,
		0.721619, -0.388231, -0.573187,
		21.991129, 19.876976, 13.427775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101587, 20.557213, 13.992800>,  <21.485996, 20.148737, 13.829006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101587, 20.557213, 13.992800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.185228, 20.399502, 13.634845>,  <22.235413, 20.304876, 13.420072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.185228, 20.399502, 13.634845>,  <22.101587, 20.557213, 13.992800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.185228, 20.399502, 13.634845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538729, 0.810171, -0.231071,
		0.816118, -0.433784, 0.381816,
		0.209102, -0.394276, -0.894887,
		22.247959, 20.281219, 13.366379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784252, 20.706999, 13.866426>,  <22.101587, 20.557213, 13.992800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784252, 20.706999, 13.866426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.657394, 20.583082, 13.507884>,  <22.581280, 20.508732, 13.292759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.657394, 20.583082, 13.507884>,  <22.784252, 20.706999, 13.866426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.657394, 20.583082, 13.507884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595723, 0.670336, -0.442451,
		0.737926, -0.674299, -0.028044,
		-0.317143, -0.309790, -0.896354,
		22.562252, 20.490145, 13.238977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.328331, 20.705694, 13.458372>,  <22.784252, 20.706999, 13.866426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.328331, 20.705694, 13.458372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.025417, 20.713200, 13.197247>,  <22.843668, 20.717703, 13.040571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.025417, 20.713200, 13.197247>,  <23.328331, 20.705694, 13.458372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.025417, 20.713200, 13.197247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445247, 0.746107, -0.495055,
		0.477781, -0.665562, -0.573370,
		-0.757285, 0.018764, -0.652815,
		22.798231, 20.718828, 13.001402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593721, 20.636641, 12.697168>,  <23.328331, 20.705694, 13.458372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593721, 20.636641, 12.697168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232426, 20.808146, 12.704398>,  <23.015648, 20.911049, 12.708736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232426, 20.808146, 12.704398>,  <23.593721, 20.636641, 12.697168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232426, 20.808146, 12.704398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365482, 0.790642, -0.491231,
		-0.224912, -0.437092, -0.870842,
		-0.903238, 0.428760, 0.018076,
		22.961454, 20.936773, 12.709821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.562729, 20.981279, 12.048965>,  <23.593721, 20.636641, 12.697168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.562729, 20.981279, 12.048965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.244812, 21.133848, 12.237782>,  <23.054062, 21.225389, 12.351072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.244812, 21.133848, 12.237782>,  <23.562729, 20.981279, 12.048965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.244812, 21.133848, 12.237782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083633, 0.839230, -0.537308,
		-0.601093, -0.387569, -0.698911,
		-0.794791, 0.381424, 0.472042,
		23.006374, 21.248276, 12.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.266390, 21.267166, 11.500416>,  <23.562729, 20.981279, 12.048965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.266390, 21.267166, 11.500416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.136208, 21.465368, 11.822547>,  <23.058098, 21.584290, 12.015825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.136208, 21.465368, 11.822547>,  <23.266390, 21.267166, 11.500416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136208, 21.465368, 11.822547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090934, 0.864151, -0.494949,
		-0.941174, -0.087853, -0.326303,
		-0.325457, 0.495505, 0.805327,
		23.038570, 21.614019, 12.064145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.009056, 21.856384, 11.201879>,  <23.266390, 21.267166, 11.500416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.009056, 21.856384, 11.201879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047153, 21.975014, 11.581978>,  <23.070011, 22.046190, 11.810038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047153, 21.975014, 11.581978>,  <23.009056, 21.856384, 11.201879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047153, 21.975014, 11.581978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244830, 0.918288, -0.311136,
		-0.964877, 0.262283, 0.014852,
		0.095244, 0.296572, 0.950249,
		23.075727, 22.063986, 11.867053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.870945, 17.610788, 22.256407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581387, 17.442303, 22.037846>,  <15.407652, 17.341211, 21.906710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581387, 17.442303, 22.037846>,  <15.870945, 17.610788, 22.256407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581387, 17.442303, 22.037846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640836, -0.117163, -0.758684,
		0.255549, -0.899362, 0.354742,
		-0.723895, -0.421212, -0.546403,
		15.364218, 17.315939, 21.873924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226166, 17.047691, 21.798119>,  <15.870945, 17.610788, 22.256407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226166, 17.047691, 21.798119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868688, 17.095646, 21.625174>,  <15.654202, 17.124418, 21.521406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868688, 17.095646, 21.625174>,  <16.226166, 17.047691, 21.798119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868688, 17.095646, 21.625174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392434, -0.258273, -0.882774,
		-0.217494, -0.958605, 0.183772,
		-0.893696, 0.119879, -0.432362,
		15.600579, 17.131613, 21.495464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133898, 16.374128, 21.484177>,  <16.226166, 17.047691, 21.798119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133898, 16.374128, 21.484177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.897285, 16.639738, 21.301239>,  <15.755317, 16.799103, 21.191477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.897285, 16.639738, 21.301239>,  <16.133898, 16.374128, 21.484177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897285, 16.639738, 21.301239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364231, -0.285977, -0.886314,
		-0.719322, -0.690863, -0.072692,
		-0.591533, 0.664022, -0.457343,
		15.719825, 16.838945, 21.164036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.778072, 16.013432, 20.978481>,  <16.133898, 16.374128, 21.484177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.778072, 16.013432, 20.978481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737536, 16.393408, 20.860268>,  <15.713215, 16.621393, 20.789339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737536, 16.393408, 20.860268>,  <15.778072, 16.013432, 20.978481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737536, 16.393408, 20.860268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291051, -0.255759, -0.921887,
		-0.951325, -0.179441, -0.250562,
		-0.101341, 0.949941, -0.295536,
		15.707134, 16.678391, 20.771606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518774, 15.899425, 20.383539>,  <15.778072, 16.013432, 20.978481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518774, 15.899425, 20.383539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670633, 16.268694, 20.359474>,  <15.761748, 16.490255, 20.345036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670633, 16.268694, 20.359474>,  <15.518774, 15.899425, 20.383539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670633, 16.268694, 20.359474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425557, -0.232012, -0.874684,
		-0.821443, 0.306468, -0.480946,
		0.379647, 0.923173, -0.060165,
		15.784528, 16.545647, 20.341425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330585, 16.206034, 19.710598>,  <15.518774, 15.899425, 20.383539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330585, 16.206034, 19.710598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642873, 16.402212, 19.865486>,  <15.830246, 16.519918, 19.958420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642873, 16.402212, 19.865486>,  <15.330585, 16.206034, 19.710598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642873, 16.402212, 19.865486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543211, -0.226385, -0.808499,
		-0.308864, 0.841554, -0.443159,
		0.780720, 0.490445, 0.387220,
		15.877089, 16.549345, 19.981651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564475, 16.593182, 19.159725>,  <15.330585, 16.206034, 19.710598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.564475, 16.593182, 19.159725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883784, 16.622332, 19.398874>,  <16.075369, 16.639822, 19.542364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883784, 16.622332, 19.398874>,  <15.564475, 16.593182, 19.159725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.883784, 16.622332, 19.398874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600808, -0.166095, -0.781948,
		0.042319, 0.983413, -0.176373,
		0.798272, 0.072875, 0.597872,
		16.123266, 16.644194, 19.578236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049885, 16.984964, 18.802744>,  <15.564475, 16.593182, 19.159725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.049885, 16.984964, 18.802744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243422, 16.764441, 19.074614>,  <16.359543, 16.632126, 19.237736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243422, 16.764441, 19.074614>,  <16.049885, 16.984964, 18.802744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243422, 16.764441, 19.074614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750072, -0.138881, -0.646610,
		0.450876, 0.822660, 0.346326,
		0.483842, -0.551310, 0.679672,
		16.388575, 16.599047, 19.278515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733753, 17.263197, 18.903458>,  <16.049885, 16.984964, 18.802744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733753, 17.263197, 18.903458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745430, 16.876881, 19.006523>,  <16.752436, 16.645090, 19.068363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745430, 16.876881, 19.006523>,  <16.733753, 17.263197, 18.903458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745430, 16.876881, 19.006523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767392, -0.143527, -0.624908,
		0.640513, 0.215972, 0.736952,
		0.029190, -0.965793, 0.257666,
		16.754187, 16.587143, 19.083822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424513, 17.078709, 18.831091>,  <16.733753, 17.263197, 18.903458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424513, 17.078709, 18.831091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247114, 16.722160, 18.868559>,  <17.140675, 16.508232, 18.891041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247114, 16.722160, 18.868559>,  <17.424513, 17.078709, 18.831091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247114, 16.722160, 18.868559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675045, -0.400946, -0.619320,
		0.589599, -0.211433, 0.779531,
		-0.443495, -0.891369, 0.093671,
		17.114065, 16.454750, 18.896660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945044, 16.674389, 18.809158>,  <17.424513, 17.078709, 18.831091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945044, 16.674389, 18.809158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638138, 16.436394, 18.713417>,  <17.453995, 16.293596, 18.655972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638138, 16.436394, 18.713417>,  <17.945044, 16.674389, 18.809158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638138, 16.436394, 18.713417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524174, -0.366754, -0.768591,
		0.369520, -0.715177, 0.593276,
		-0.767266, -0.594990, -0.239355,
		17.407959, 16.257896, 18.641611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251389, 16.045465, 18.773527>,  <17.945044, 16.674389, 18.809158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.251389, 16.045465, 18.773527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921185, 16.042616, 18.547789>,  <17.723063, 16.040905, 18.412346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921185, 16.042616, 18.547789>,  <18.251389, 16.045465, 18.773527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921185, 16.042616, 18.547789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538902, -0.307049, -0.784414,
		-0.167692, -0.951667, 0.257312,
		-0.825508, -0.007126, -0.564345,
		17.673532, 16.040478, 18.378485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131678, 15.437692, 18.479012>,  <18.251389, 16.045465, 18.773527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131678, 15.437692, 18.479012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985960, 15.730306, 18.248484>,  <17.898529, 15.905874, 18.110167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985960, 15.730306, 18.248484>,  <18.131678, 15.437692, 18.479012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985960, 15.730306, 18.248484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653263, -0.240325, -0.717977,
		-0.663730, -0.638044, -0.390336,
		-0.364293, 0.731535, -0.576322,
		17.876673, 15.949766, 18.075586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292475, 15.145830, 17.866442>,  <18.131678, 15.437692, 18.479012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292475, 15.145830, 17.866442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225784, 15.534910, 17.801874>,  <18.185770, 15.768358, 17.763134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225784, 15.534910, 17.801874>,  <18.292475, 15.145830, 17.866442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225784, 15.534910, 17.801874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583155, -0.034732, -0.811618,
		-0.795068, -0.229448, -0.561445,
		-0.166725, 0.972701, -0.161418,
		18.175766, 15.826720, 17.753448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.127123, 15.138667, 17.835865>,  <18.292475, 15.145830, 17.866442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.127123, 15.138667, 17.835865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472786, 14.942551, 17.790524>,  <19.680183, 14.824881, 17.763319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472786, 14.942551, 17.790524>,  <19.127123, 15.138667, 17.835865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472786, 14.942551, 17.790524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297990, -0.680084, 0.669841,
		-0.405508, -0.545069, -0.733801,
		0.864156, -0.490291, -0.113354,
		19.732033, 14.795464, 17.756517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955532, 14.488953, 17.604771>,  <19.127123, 15.138667, 17.835865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955532, 14.488953, 17.604771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314970, 14.485402, 17.780247>,  <19.530632, 14.483272, 17.885532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314970, 14.485402, 17.780247>,  <18.955532, 14.488953, 17.604771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314970, 14.485402, 17.780247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327618, -0.678645, 0.657349,
		0.291880, -0.734413, -0.612735,
		0.898595, -0.008876, 0.438690,
		19.584549, 14.482739, 17.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148691, 13.746712, 17.624935>,  <18.955532, 14.488953, 17.604771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148691, 13.746712, 17.624935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345531, 13.950449, 17.907328>,  <19.463636, 14.072691, 18.076763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345531, 13.950449, 17.907328>,  <19.148691, 13.746712, 17.624935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345531, 13.950449, 17.907328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349789, -0.626934, 0.696133,
		0.797173, -0.589511, -0.130352,
		0.492100, 0.509343, 0.705980,
		19.493162, 14.103251, 18.119122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437498, 13.298909, 18.145159>,  <19.148691, 13.746712, 17.624935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437498, 13.298909, 18.145159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426252, 13.640963, 18.352217>,  <19.419504, 13.846195, 18.476452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426252, 13.640963, 18.352217>,  <19.437498, 13.298909, 18.145159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.426252, 13.640963, 18.352217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399420, -0.484322, 0.778393,
		0.916337, -0.184872, 0.355175,
		-0.028116, 0.855134, 0.517643,
		19.417818, 13.897503, 18.507509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736300, 13.181014, 18.816721>,  <19.437498, 13.298909, 18.145159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736300, 13.181014, 18.816721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495918, 13.500028, 18.837873>,  <19.351690, 13.691436, 18.850565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495918, 13.500028, 18.837873>,  <19.736300, 13.181014, 18.816721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495918, 13.500028, 18.837873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358463, -0.328059, 0.874003,
		0.714394, 0.506279, 0.483034,
		-0.600953, 0.797533, 0.052881,
		19.315632, 13.739287, 18.853737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833506, 13.296886, 19.463961>,  <19.736300, 13.181014, 18.816721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833506, 13.296886, 19.463961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500498, 13.492468, 19.359779>,  <19.300694, 13.609817, 19.297270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500498, 13.492468, 19.359779>,  <19.833506, 13.296886, 19.463961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500498, 13.492468, 19.359779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453770, -0.332135, 0.826910,
		0.317815, 0.806604, 0.498381,
		-0.832518, 0.488955, -0.260454,
		19.250742, 13.639154, 19.281643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586508, 13.594419, 19.990011>,  <19.833506, 13.296886, 19.463961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586508, 13.594419, 19.990011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240751, 13.588870, 19.788960>,  <19.033297, 13.585541, 19.668329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240751, 13.588870, 19.788960>,  <19.586508, 13.594419, 19.990011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240751, 13.588870, 19.788960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496537, -0.133961, 0.857616,
		-0.079231, 0.990890, 0.108906,
		-0.864392, -0.013874, -0.502627,
		18.981434, 13.584708, 19.638172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173887, 13.808732, 20.492590>,  <19.586508, 13.594419, 19.990011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173887, 13.808732, 20.492590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918240, 13.679453, 20.213428>,  <18.764851, 13.601886, 20.045931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918240, 13.679453, 20.213428>,  <19.173887, 13.808732, 20.492590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918240, 13.679453, 20.213428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686652, -0.168993, 0.707072,
		-0.346465, 0.931120, -0.113918,
		-0.639118, -0.323198, -0.697905,
		18.726503, 13.582494, 20.004057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552992, 14.191582, 20.491732>,  <19.173887, 13.808732, 20.492590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552992, 14.191582, 20.491732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435997, 13.844207, 20.331596>,  <18.365801, 13.635782, 20.235516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435997, 13.844207, 20.331596>,  <18.552992, 14.191582, 20.491732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435997, 13.844207, 20.331596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742277, -0.057758, 0.667600,
		-0.602891, 0.492424, -0.627727,
		-0.292486, -0.868437, -0.400337,
		18.348251, 13.583675, 20.211496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804722, 14.348484, 20.505152>,  <18.552992, 14.191582, 20.491732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804722, 14.348484, 20.505152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.852722, 13.956636, 20.440720>,  <17.881523, 13.721528, 20.402060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.852722, 13.956636, 20.440720>,  <17.804722, 14.348484, 20.505152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852722, 13.956636, 20.440720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748819, -0.195844, 0.633179,
		-0.651820, 0.044638, -0.757059,
		0.120002, -0.979619, -0.161081,
		17.888723, 13.662751, 20.392395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184689, 14.164818, 20.409470>,  <17.804722, 14.348484, 20.505152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184689, 14.164818, 20.409470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402761, 13.854087, 20.535528>,  <17.533606, 13.667648, 20.611162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402761, 13.854087, 20.535528>,  <17.184689, 14.164818, 20.409470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402761, 13.854087, 20.535528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712009, -0.230639, 0.663211,
		-0.442516, -0.585956, -0.678849,
		0.545181, -0.776828, 0.315144,
		17.566317, 13.621038, 20.630072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741390, 13.690541, 20.658945>,  <17.184689, 14.164818, 20.409470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741390, 13.690541, 20.658945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071955, 13.513179, 20.797762>,  <17.270292, 13.406761, 20.881052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071955, 13.513179, 20.797762>,  <16.741390, 13.690541, 20.658945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071955, 13.513179, 20.797762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485174, -0.247969, 0.838521,
		-0.285757, -0.861334, -0.420056,
		0.826407, -0.443413, 0.347038,
		17.319878, 13.380157, 20.901875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495813, 13.001233, 20.825783>,  <16.741390, 13.690541, 20.658945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495813, 13.001233, 20.825783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828106, 13.096511, 21.027039>,  <17.027481, 13.153677, 21.147793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828106, 13.096511, 21.027039>,  <16.495813, 13.001233, 20.825783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828106, 13.096511, 21.027039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522659, 0.022629, 0.852242,
		0.191614, -0.970954, 0.143294,
		0.830730, 0.238195, 0.503141,
		17.077326, 13.167969, 21.177980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.394255, 12.616759, 21.415970>,  <16.495813, 13.001233, 20.825783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.394255, 12.616759, 21.415970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710135, 12.841969, 21.513439>,  <16.899662, 12.977096, 21.571920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710135, 12.841969, 21.513439>,  <16.394255, 12.616759, 21.415970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710135, 12.841969, 21.513439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341120, 0.072844, 0.937193,
		0.509914, -0.823223, 0.249584,
		0.789699, 0.563026, 0.243674,
		16.947044, 13.010877, 21.586542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874136, 12.043043, 21.573080>,  <16.394255, 12.616759, 21.415970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874136, 12.043043, 21.573080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708145, 11.718346, 21.408709>,  <16.608551, 11.523527, 21.310085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708145, 11.718346, 21.408709>,  <16.874136, 12.043043, 21.573080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708145, 11.718346, 21.408709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257320, 0.328504, -0.908775,
		0.872686, -0.482862, 0.072557,
		-0.414977, -0.811745, -0.410931,
		16.583652, 11.474822, 21.285429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340744, 11.869474, 20.973433>,  <16.874136, 12.043043, 21.573080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340744, 11.869474, 20.973433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003647, 11.664988, 20.905972>,  <16.801390, 11.542295, 20.865496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003647, 11.664988, 20.905972>,  <17.340744, 11.869474, 20.973433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003647, 11.664988, 20.905972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137693, 0.098167, -0.985598,
		0.520412, -0.853826, -0.012338,
		-0.842740, -0.511218, -0.168653,
		16.750824, 11.511622, 20.855375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541872, 11.442043, 20.399471>,  <17.340744, 11.869474, 20.973433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.541872, 11.442043, 20.399471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142731, 11.466256, 20.389460>,  <16.903246, 11.480783, 20.383453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142731, 11.466256, 20.389460>,  <17.541872, 11.442043, 20.399471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142731, 11.466256, 20.389460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020851, -0.068692, -0.997420,
		-0.062053, -0.995802, 0.067284,
		-0.997855, 0.060490, -0.025026,
		16.843374, 11.484416, 20.381950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299442, 10.887289, 19.993124>,  <17.541872, 11.442043, 20.399471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299442, 10.887289, 19.993124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008173, 11.161437, 19.990776>,  <16.833412, 11.325926, 19.989368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008173, 11.161437, 19.990776>,  <17.299442, 10.887289, 19.993124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008173, 11.161437, 19.990776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049752, -0.061394, -0.996873,
		-0.683587, -0.725602, 0.078804,
		-0.728171, 0.685370, -0.005868,
		16.789722, 11.367048, 19.989016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829197, 10.623094, 19.435301>,  <17.299442, 10.887289, 19.993124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.829197, 10.623094, 19.435301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766251, 11.013107, 19.497967>,  <16.728483, 11.247115, 19.535566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766251, 11.013107, 19.497967>,  <16.829197, 10.623094, 19.435301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766251, 11.013107, 19.497967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393654, 0.083558, -0.915453,
		-0.905689, -0.205734, 0.370677,
		-0.157367, 0.975034, 0.156666,
		16.719040, 11.305617, 19.544966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115549, 10.867820, 19.252676>,  <16.829197, 10.623094, 19.435301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115549, 10.867820, 19.252676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334146, 11.202304, 19.234362>,  <16.465305, 11.402994, 19.223373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334146, 11.202304, 19.234362>,  <16.115549, 10.867820, 19.252676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334146, 11.202304, 19.234362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389945, 0.205700, -0.897569,
		-0.741139, 0.508370, 0.438490,
		0.546495, 0.836210, -0.045784,
		16.498095, 11.453167, 19.220627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590540, 11.279475, 18.920822>,  <16.115549, 10.867820, 19.252676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590540, 11.279475, 18.920822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951571, 11.449288, 18.892189>,  <16.168190, 11.551176, 18.875010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951571, 11.449288, 18.892189>,  <15.590540, 11.279475, 18.920822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951571, 11.449288, 18.892189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268900, 0.426046, -0.863816,
		-0.336222, 0.798910, 0.498696,
		0.902578, 0.424533, -0.071580,
		16.222345, 11.576649, 18.870714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400140, 11.875493, 18.621544>,  <15.590540, 11.279475, 18.920822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400140, 11.875493, 18.621544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798817, 11.869137, 18.589659>,  <16.038023, 11.865323, 18.570528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798817, 11.869137, 18.589659>,  <15.400140, 11.875493, 18.621544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.798817, 11.869137, 18.589659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058688, 0.537829, -0.841008,
		0.056237, 0.842904, 0.535117,
		0.996691, -0.015891, -0.079715,
		16.097824, 11.864369, 18.565744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529207, 12.476234, 18.397438>,  <15.400140, 11.875493, 18.621544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529207, 12.476234, 18.397438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863418, 12.276774, 18.305138>,  <16.063944, 12.157099, 18.249758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863418, 12.276774, 18.305138>,  <15.529207, 12.476234, 18.397438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863418, 12.276774, 18.305138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138262, 0.597261, -0.790040,
		0.531772, 0.628194, 0.567971,
		0.835525, -0.498650, -0.230751,
		16.114075, 12.127179, 18.235912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965326, 13.005634, 18.228680>,  <15.529207, 12.476234, 18.397438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965326, 13.005634, 18.228680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107447, 12.673308, 18.057329>,  <16.192719, 12.473913, 17.954519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107447, 12.673308, 18.057329>,  <15.965326, 13.005634, 18.228680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107447, 12.673308, 18.057329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047841, 0.473842, -0.879309,
		0.933527, 0.291926, 0.208104,
		0.355301, -0.830815, -0.428378,
		16.214037, 12.424064, 17.928816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727022, 13.089489, 17.890545>,  <15.965326, 13.005634, 18.228680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727022, 13.089489, 17.890545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510223, 12.803261, 17.714272>,  <16.380144, 12.631524, 17.608507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510223, 12.803261, 17.714272>,  <16.727022, 13.089489, 17.890545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.510223, 12.803261, 17.714272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012277, 0.517584, -0.855544,
		0.840292, -0.469111, -0.271743,
		-0.541995, -0.715571, -0.440681,
		16.347624, 12.588590, 17.582067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.937691, 13.032335, 17.213612>,  <16.727022, 13.089489, 17.890545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.937691, 13.032335, 17.213612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574232, 12.865551, 17.204626>,  <16.356157, 12.765480, 17.199234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574232, 12.865551, 17.204626>,  <16.937691, 13.032335, 17.213612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574232, 12.865551, 17.204626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139153, 0.353088, -0.925184,
		0.393697, -0.837540, -0.378853,
		-0.908647, -0.416961, -0.022463,
		16.301638, 12.740463, 17.197887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.259323, 10.312288, 25.074297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.503700, 10.387314, 25.381950>,  <13.650327, 10.432329, 25.566544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.503700, 10.387314, 25.381950>,  <13.259323, 10.312288, 25.074297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503700, 10.387314, 25.381950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789459, -0.071705, -0.609600,
		-0.059187, 0.979632, -0.191881,
		0.610942, 0.187563, 0.769136,
		13.686983, 10.443583, 25.612692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548553, 10.860465, 24.882723>,  <13.259323, 10.312288, 25.074297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548553, 10.860465, 24.882723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.789743, 10.667966, 25.137224>,  <13.934458, 10.552466, 25.289925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.789743, 10.667966, 25.137224>,  <13.548553, 10.860465, 24.882723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789743, 10.667966, 25.137224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669035, -0.129358, -0.731887,
		0.434524, 0.866987, 0.243972,
		0.602977, -0.481248, 0.636254,
		13.970636, 10.523591, 25.328100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135070, 10.889299, 24.419327>,  <13.548553, 10.860465, 24.882723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135070, 10.889299, 24.419327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.255625, 10.685707, 24.741842>,  <14.327957, 10.563552, 24.935352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.255625, 10.685707, 24.741842>,  <14.135070, 10.889299, 24.419327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255625, 10.685707, 24.741842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843776, -0.251465, -0.474139,
		0.444081, 0.823228, 0.353678,
		0.301387, -0.508981, 0.806291,
		14.346041, 10.533012, 24.983730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889559, 11.174289, 24.636776>,  <14.135070, 10.889299, 24.419327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889559, 11.174289, 24.636776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.804594, 10.793192, 24.723646>,  <14.753615, 10.564534, 24.775768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.804594, 10.793192, 24.723646>,  <14.889559, 11.174289, 24.636776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804594, 10.793192, 24.723646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785168, -0.298709, -0.542479,
		0.581714, 0.055290, 0.811512,
		-0.212413, -0.952741, 0.217175,
		14.740870, 10.507370, 24.788799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537320, 10.938622, 24.905672>,  <14.889559, 11.174289, 24.636776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.537320, 10.938622, 24.905672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.338695, 10.615000, 24.779909>,  <15.219520, 10.420826, 24.704451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.338695, 10.615000, 24.779909>,  <15.537320, 10.938622, 24.905672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338695, 10.615000, 24.779909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843844, -0.365103, -0.393226,
		0.203351, -0.460573, 0.864015,
		-0.496563, -0.809057, -0.314408,
		15.189726, 10.372283, 24.685587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117708, 10.353696, 24.720184>,  <15.537320, 10.938622, 24.905672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.117708, 10.353696, 24.720184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.779193, 10.213546, 24.559668>,  <15.576084, 10.129456, 24.463358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.779193, 10.213546, 24.559668>,  <16.117708, 10.353696, 24.720184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779193, 10.213546, 24.559668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504616, -0.285782, -0.814673,
		0.170758, -0.891945, 0.418659,
		-0.846289, -0.350374, -0.401290,
		15.525307, 10.108434, 24.439280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306250, 9.759333, 24.308464>,  <16.117708, 10.353696, 24.720184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306250, 9.759333, 24.308464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.951957, 9.874889, 24.163126>,  <15.739381, 9.944223, 24.075922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.951957, 9.874889, 24.163126>,  <16.306250, 9.759333, 24.308464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951957, 9.874889, 24.163126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360281, -0.065738, -0.930525,
		-0.292706, -0.955102, -0.045856,
		-0.885732, 0.288892, -0.363347,
		15.686237, 9.961556, 24.054123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298031, 9.516108, 23.624319>,  <16.306250, 9.759333, 24.308464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298031, 9.516108, 23.624319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.995939, 9.778284, 23.622215>,  <15.814685, 9.935590, 23.620953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.995939, 9.778284, 23.622215>,  <16.298031, 9.516108, 23.624319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995939, 9.778284, 23.622215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250653, 0.281382, -0.926281,
		-0.605643, -0.700872, -0.376796,
		-0.755229, 0.655441, -0.005259,
		15.769371, 9.974916, 23.620638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960499, 9.494006, 22.985899>,  <16.298031, 9.516108, 23.624319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960499, 9.494006, 22.985899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.904757, 9.856441, 23.145693>,  <15.871313, 10.073902, 23.241570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.904757, 9.856441, 23.145693>,  <15.960499, 9.494006, 22.985899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904757, 9.856441, 23.145693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176592, 0.419692, -0.890322,
		-0.974370, -0.053523, -0.218493,
		-0.139353, 0.906087, 0.399483,
		15.862951, 10.128267, 23.265537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702114, 9.755654, 22.437553>,  <15.960499, 9.494006, 22.985899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702114, 9.755654, 22.437553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.808056, 10.067749, 22.664209>,  <15.871621, 10.255006, 22.800203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.808056, 10.067749, 22.664209>,  <15.702114, 9.755654, 22.437553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808056, 10.067749, 22.664209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143543, 0.549179, -0.823285,
		-0.953545, 0.299388, 0.033455,
		0.264854, 0.780237, 0.566642,
		15.887512, 10.301820, 22.834202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286274, 10.301992, 22.206177>,  <15.702114, 9.755654, 22.437553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286274, 10.301992, 22.206177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.616681, 10.436772, 22.386911>,  <15.814925, 10.517640, 22.495352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.616681, 10.436772, 22.386911>,  <15.286274, 10.301992, 22.206177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616681, 10.436772, 22.386911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141275, 0.652282, -0.744694,
		-0.545650, 0.678965, 0.491195,
		0.826019, 0.336949, 0.451839,
		15.864487, 10.537857, 22.522463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257336, 10.999993, 22.121382>,  <15.286274, 10.301992, 22.206177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.257336, 10.999993, 22.121382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.643345, 10.922909, 22.192480>,  <15.874950, 10.876658, 22.235140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.643345, 10.922909, 22.192480>,  <15.257336, 10.999993, 22.121382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643345, 10.922909, 22.192480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256390, 0.552176, -0.793326,
		0.054735, 0.811150, 0.582272,
		0.965022, -0.192712, 0.177748,
		15.932852, 10.865095, 22.245804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595904, 11.592471, 22.053358>,  <15.257336, 10.999993, 22.121382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595904, 11.592471, 22.053358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.893252, 11.326969, 22.020302>,  <16.071661, 11.167667, 22.000467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.893252, 11.326969, 22.020302>,  <15.595904, 11.592471, 22.053358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893252, 11.326969, 22.020302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267886, 0.408646, -0.872494,
		0.612894, 0.626448, 0.481586,
		0.743370, -0.663756, -0.082640,
		16.116262, 11.127842, 21.995510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180849, 11.977509, 21.940479>,  <15.595904, 11.592471, 22.053358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180849, 11.977509, 21.940479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.236956, 11.624077, 21.761770>,  <16.270620, 11.412017, 21.654545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.236956, 11.624077, 21.761770>,  <16.180849, 11.977509, 21.940479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236956, 11.624077, 21.761770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132564, 0.463932, -0.875896,
		0.981199, 0.063635, 0.182206,
		0.140268, -0.883582, -0.446774,
		16.279036, 11.359002, 21.627739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714611, 12.414583, 22.148085>,  <16.180849, 11.977509, 21.940479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714611, 12.414583, 22.148085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.863749, 12.782954, 22.102688>,  <16.953232, 13.003977, 22.075449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.863749, 12.782954, 22.102688>,  <16.714611, 12.414583, 22.148085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863749, 12.782954, 22.102688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316940, 0.241350, 0.917224,
		0.872088, -0.306010, 0.381864,
		0.372843, 0.920928, -0.113492,
		16.975601, 13.059233, 22.068640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111988, 12.538607, 22.725595>,  <16.714611, 12.414583, 22.148085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111988, 12.538607, 22.725595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.993271, 12.888974, 22.573448>,  <16.922041, 13.099195, 22.482161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.993271, 12.888974, 22.573448>,  <17.111988, 12.538607, 22.725595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993271, 12.888974, 22.573448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312940, 0.287106, 0.905339,
		0.902209, 0.387732, 0.188898,
		-0.296795, 0.875919, -0.380367,
		16.904232, 13.151750, 22.459337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391386, 13.096301, 23.317434>,  <17.111988, 12.538607, 22.725595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391386, 13.096301, 23.317434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.127106, 13.281828, 23.081350>,  <16.968538, 13.393145, 22.939699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.127106, 13.281828, 23.081350>,  <17.391386, 13.096301, 23.317434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.127106, 13.281828, 23.081350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373923, 0.478416, 0.794544,
		0.650890, 0.745648, -0.142657,
		-0.660700, 0.463818, -0.590211,
		16.928896, 13.420974, 22.904287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338614, 13.693708, 23.589722>,  <17.391386, 13.096301, 23.317434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338614, 13.693708, 23.589722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.990471, 13.666077, 23.394703>,  <16.781586, 13.649497, 23.277691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.990471, 13.666077, 23.394703>,  <17.338614, 13.693708, 23.589722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.990471, 13.666077, 23.394703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457980, 0.477328, 0.749941,
		0.180915, 0.876005, -0.447084,
		-0.870359, -0.069080, -0.487549,
		16.729362, 13.645352, 23.248438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038099, 14.327502, 23.730911>,  <17.338614, 13.693708, 23.589722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038099, 14.327502, 23.730911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.718838, 14.122067, 23.604939>,  <16.527281, 13.998807, 23.529354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.718838, 14.122067, 23.604939>,  <17.038099, 14.327502, 23.730911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.718838, 14.122067, 23.604939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508545, 0.294078, 0.809259,
		-0.323010, 0.806069, -0.495901,
		-0.798152, -0.513587, -0.314932,
		16.479393, 13.967992, 23.510460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423046, 14.776829, 23.733423>,  <17.038099, 14.327502, 23.730911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423046, 14.776829, 23.733423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.252087, 14.415205, 23.732243>,  <16.149511, 14.198231, 23.731535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.252087, 14.415205, 23.732243>,  <16.423046, 14.776829, 23.733423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252087, 14.415205, 23.732243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565581, 0.264832, 0.781014,
		-0.705301, 0.335472, -0.624507,
		-0.427398, -0.904059, -0.002950,
		16.123867, 14.143988, 23.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663657, 14.768821, 23.677429>,  <16.423046, 14.776829, 23.733423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663657, 14.768821, 23.677429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.748786, 14.417685, 23.849058>,  <15.799863, 14.207003, 23.952036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.748786, 14.417685, 23.849058>,  <15.663657, 14.768821, 23.677429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748786, 14.417685, 23.849058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569296, 0.245490, 0.784625,
		-0.794109, -0.411254, -0.447506,
		0.212822, -0.877841, 0.429071,
		15.812633, 14.154332, 23.977779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069111, 14.548628, 23.882202>,  <15.663657, 14.768821, 23.677429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069111, 14.548628, 23.882202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.344527, 14.355752, 24.098869>,  <15.509777, 14.240026, 24.228870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.344527, 14.355752, 24.098869>,  <15.069111, 14.548628, 23.882202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344527, 14.355752, 24.098869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432910, 0.325945, 0.840446,
		-0.581809, -0.813174, 0.015681,
		0.688540, -0.482191, 0.541669,
		15.551089, 14.211095, 24.261370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688810, 14.075481, 24.124163>,  <15.069111, 14.548628, 23.882202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688810, 14.075481, 24.124163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.015615, 14.095959, 24.353901>,  <15.211697, 14.108245, 24.491745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.015615, 14.095959, 24.353901>,  <14.688810, 14.075481, 24.124163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015615, 14.095959, 24.353901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566262, -0.116741, 0.815916,
		0.108819, -0.991842, -0.066390,
		0.817010, 0.051193, 0.574346,
		15.260717, 14.111317, 24.526205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479714, 13.608649, 24.580229>,  <14.688810, 14.075481, 24.124163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479714, 13.608649, 24.580229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.789840, 13.792066, 24.753956>,  <14.975915, 13.902115, 24.858192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.789840, 13.792066, 24.753956>,  <14.479714, 13.608649, 24.580229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789840, 13.792066, 24.753956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391947, -0.189906, 0.900174,
		0.495246, -0.868146, 0.032487,
		0.775313, 0.458540, 0.434316,
		15.022433, 13.929627, 24.884251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835279, 13.096778, 25.179150>,  <14.479714, 13.608649, 24.580229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.835279, 13.096778, 25.179150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.903045, 13.488126, 25.226629>,  <14.943704, 13.722935, 25.255117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.903045, 13.488126, 25.226629>,  <14.835279, 13.096778, 25.179150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903045, 13.488126, 25.226629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464398, -0.026983, 0.885216,
		0.869272, -0.205092, 0.449782,
		0.169414, 0.978371, 0.118700,
		14.953869, 13.781637, 25.262239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887543, 13.084583, 25.834133>,  <14.835279, 13.096778, 25.179150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887543, 13.084583, 25.834133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.815787, 13.462725, 25.725229>,  <14.772735, 13.689610, 25.659887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.815787, 13.462725, 25.725229>,  <14.887543, 13.084583, 25.834133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815787, 13.462725, 25.725229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606582, 0.111596, 0.787150,
		0.774518, 0.306354, 0.553416,
		-0.179388, 0.945354, -0.272262,
		14.761971, 13.746331, 25.643551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117489, 13.416893, 26.438648>,  <14.887543, 13.084583, 25.834133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117489, 13.416893, 26.438648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.877296, 13.675238, 26.250059>,  <14.733181, 13.830244, 26.136906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.877296, 13.675238, 26.250059>,  <15.117489, 13.416893, 26.438648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877296, 13.675238, 26.250059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624629, -0.010729, 0.780848,
		0.499262, 0.763379, 0.409866,
		-0.600480, 0.645862, -0.471472,
		14.697152, 13.868997, 26.108618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902905, 13.938800, 26.926783>,  <15.117489, 13.416893, 26.438648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902905, 13.938800, 26.926783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.622064, 13.980712, 26.645052>,  <14.453559, 14.005859, 26.476013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.622064, 13.980712, 26.645052>,  <14.902905, 13.938800, 26.926783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.622064, 13.980712, 26.645052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710574, -0.038878, 0.702548,
		0.046230, 0.993735, 0.101750,
		-0.702102, 0.104780, -0.704325,
		14.411433, 14.012146, 26.433754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.054893, 12.943995, 23.293283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.386352, 12.720981, 23.313271>,  <8.585227, 12.587172, 23.325262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.386352, 12.720981, 23.313271>,  <8.054893, 12.943995, 23.293283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.386352, 12.720981, 23.313271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442228, 0.597306, -0.669075,
		0.343188, 0.576523, 0.741514,
		0.828647, -0.557536, 0.049966,
		8.634946, 12.553720, 23.328260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.598589, 13.299962, 23.504005>,  <8.054893, 12.943995, 23.293283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.598589, 13.299962, 23.504005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.750052, 13.001407, 23.285089>,  <8.840930, 12.822273, 23.153740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.750052, 13.001407, 23.285089>,  <8.598589, 13.299962, 23.504005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.750052, 13.001407, 23.285089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267330, 0.654317, -0.707392,
		0.886088, 0.121553, 0.447294,
		0.378658, -0.746387, -0.547288,
		8.863650, 12.777491, 23.120903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.172794, 13.523056, 23.154428>,  <8.598589, 13.299962, 23.504005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.172794, 13.523056, 23.154428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.161777, 13.187716, 22.936655>,  <9.155166, 12.986511, 22.805990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.161777, 13.187716, 22.936655>,  <9.172794, 13.523056, 23.154428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.161777, 13.187716, 22.936655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359971, 0.499784, -0.787806,
		0.932557, -0.217680, 0.288016,
		-0.027543, -0.838351, -0.544435,
		9.153514, 12.936211, 22.773325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.853612, 13.516081, 22.779188>,  <9.172794, 13.523056, 23.154428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.853612, 13.516081, 22.779188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.594285, 13.275105, 22.592962>,  <9.438689, 13.130520, 22.481226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.594285, 13.275105, 22.592962>,  <9.853612, 13.516081, 22.779188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.594285, 13.275105, 22.592962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184699, 0.468777, -0.863791,
		0.738629, -0.645999, -0.192646,
		-0.648316, -0.602439, -0.465567,
		9.399790, 13.094374, 22.453293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.222557, 13.189644, 22.278969>,  <9.853612, 13.516081, 22.779188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.222557, 13.189644, 22.278969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.861316, 13.098971, 22.133083>,  <9.644570, 13.044568, 22.045551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.861316, 13.098971, 22.133083>,  <10.222557, 13.189644, 22.278969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.861316, 13.098971, 22.133083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269650, 0.361638, -0.892472,
		0.334191, -0.904344, -0.265477,
		-0.903109, -0.226670, -0.364712,
		9.590384, 13.030967, 22.023668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307990, 12.712532, 21.612780>,  <10.222557, 13.189644, 22.278969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307990, 12.712532, 21.612780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.945560, 12.881605, 21.620396>,  <9.728101, 12.983049, 21.624966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.945560, 12.881605, 21.620396>,  <10.307990, 12.712532, 21.612780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.945560, 12.881605, 21.620396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077346, 0.209713, -0.974699,
		-0.415983, -0.881679, -0.222709,
		-0.906077, 0.422684, 0.019042,
		9.673737, 13.008410, 21.626108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.068242, 12.470380, 21.082350>,  <10.307990, 12.712532, 21.612780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.068242, 12.470380, 21.082350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.848357, 12.798999, 21.142849>,  <9.716426, 12.996170, 21.179148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.848357, 12.798999, 21.142849>,  <10.068242, 12.470380, 21.082350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.848357, 12.798999, 21.142849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002157, 0.179659, -0.983727,
		-0.835351, -0.541093, -0.096989,
		-0.549713, 0.821548, 0.151246,
		9.683443, 13.045464, 21.188223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.559801, 12.429340, 20.602539>,  <10.068242, 12.470380, 21.082350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.559801, 12.429340, 20.602539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.638886, 12.801737, 20.725283>,  <9.686337, 13.025175, 20.798929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.638886, 12.801737, 20.725283>,  <9.559801, 12.429340, 20.602539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.638886, 12.801737, 20.725283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050572, 0.302936, -0.951668,
		-0.978955, 0.203675, 0.012812,
		0.197712, 0.930992, 0.306861,
		9.698200, 13.081035, 20.817341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.285283, 12.744057, 20.112242>,  <9.559801, 12.429340, 20.602539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.285283, 12.744057, 20.112242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.494590, 13.018945, 20.313803>,  <9.620174, 13.183878, 20.434740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.494590, 13.018945, 20.313803>,  <9.285283, 12.744057, 20.112242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.494590, 13.018945, 20.313803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278721, 0.420777, -0.863285,
		-0.805298, 0.592178, 0.028636,
		0.523268, 0.687220, 0.503904,
		9.651570, 13.225111, 20.464973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.348098, 13.323681, 19.691957>,  <9.285283, 12.744057, 20.112242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.348098, 13.323681, 19.691957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.630881, 13.411169, 19.960991>,  <9.800551, 13.463662, 20.122412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.630881, 13.411169, 19.960991>,  <9.348098, 13.323681, 19.691957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.630881, 13.411169, 19.960991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529342, 0.467053, -0.708279,
		-0.469048, 0.856751, 0.214410,
		0.706960, 0.218721, 0.672584,
		9.842969, 13.476786, 20.162766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.393171, 14.065140, 19.670567>,  <9.348098, 13.323681, 19.691957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.393171, 14.065140, 19.670567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.730772, 13.911498, 19.820299>,  <9.933332, 13.819313, 19.910139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.730772, 13.911498, 19.820299>,  <9.393171, 14.065140, 19.670567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730772, 13.911498, 19.820299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535616, 0.567369, -0.625467,
		0.027862, 0.728393, 0.684593,
		0.844002, -0.384105, 0.374330,
		9.983973, 13.796267, 19.932598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781221, 14.617666, 19.813820>,  <9.393171, 14.065140, 19.670567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781221, 14.617666, 19.813820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.019139, 14.298763, 19.772642>,  <10.161890, 14.107421, 19.747934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.019139, 14.298763, 19.772642>,  <9.781221, 14.617666, 19.813820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.019139, 14.298763, 19.772642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575730, 0.511855, -0.637604,
		0.561028, 0.319975, 0.763455,
		0.594796, -0.797258, -0.102946,
		10.197578, 14.059586, 19.741758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.440968, 14.856793, 19.831045>,  <9.781221, 14.617666, 19.813820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.440968, 14.856793, 19.831045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.505842, 14.503055, 19.655945>,  <10.544766, 14.290812, 19.550884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.505842, 14.503055, 19.655945>,  <10.440968, 14.856793, 19.831045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.505842, 14.503055, 19.655945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558163, 0.448051, -0.698358,
		0.813726, -0.131072, 0.566277,
		0.162186, -0.884347, -0.437751,
		10.554498, 14.237750, 19.524620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162844, 14.815704, 19.716434>,  <10.440968, 14.856793, 19.831045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162844, 14.815704, 19.716434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.999425, 14.526950, 19.493017>,  <10.901374, 14.353698, 19.358967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.999425, 14.526950, 19.493017>,  <11.162844, 14.815704, 19.716434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999425, 14.526950, 19.493017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394011, 0.412505, -0.821337,
		0.823314, -0.555626, 0.115903,
		-0.408546, -0.721885, -0.558544,
		10.876862, 14.310385, 19.325455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.793947, 14.703172, 19.873615>,  <11.162844, 14.815704, 19.716434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.793947, 14.703172, 19.873615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.918437, 15.083094, 19.886320>,  <11.993131, 15.311047, 19.893944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.918437, 15.083094, 19.886320>,  <11.793947, 14.703172, 19.873615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.918437, 15.083094, 19.886320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415732, 0.106015, 0.903287,
		0.854580, -0.294329, 0.427859,
		0.311223, 0.949806, 0.031764,
		12.011804, 15.368035, 19.895849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.943348, 14.709620, 20.476490>,  <11.793947, 14.703172, 19.873615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.943348, 14.709620, 20.476490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.917727, 15.103159, 20.409622>,  <11.902355, 15.339282, 20.369501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.917727, 15.103159, 20.409622>,  <11.943348, 14.709620, 20.476490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.917727, 15.103159, 20.409622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470904, 0.117895, 0.874271,
		0.879856, 0.134720, 0.455746,
		-0.064051, 0.983845, -0.167171,
		11.898512, 15.398313, 20.359470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.252251, 15.122604, 21.049555>,  <11.943348, 14.709620, 20.476490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.252251, 15.122604, 21.049555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.021061, 15.409162, 20.893234>,  <11.882347, 15.581096, 20.799442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.021061, 15.409162, 20.893234>,  <12.252251, 15.122604, 21.049555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.021061, 15.409162, 20.893234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255985, 0.295561, 0.920389,
		0.774866, 0.632001, 0.012559,
		-0.577974, 0.716393, -0.390803,
		11.847669, 15.624080, 20.775993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.428699, 15.845549, 21.402651>,  <12.252251, 15.122604, 21.049555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.428699, 15.845549, 21.402651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.056301, 15.814198, 21.260042>,  <11.832863, 15.795386, 21.174477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.056301, 15.814198, 21.260042>,  <12.428699, 15.845549, 21.402651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056301, 15.814198, 21.260042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364156, 0.131586, 0.921995,
		-0.025351, 0.988201, -0.151048,
		-0.930993, -0.078378, -0.356524,
		11.777003, 15.790684, 21.153086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997789, 16.248833, 21.872795>,  <12.428699, 15.845549, 21.402651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997789, 16.248833, 21.872795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718547, 16.054129, 21.662762>,  <11.551002, 15.937306, 21.536741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718547, 16.054129, 21.662762>,  <11.997789, 16.248833, 21.872795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718547, 16.054129, 21.662762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526353, -0.148267, 0.837239,
		-0.485386, 0.860862, -0.152700,
		-0.698107, -0.486758, -0.525084,
		11.509115, 15.908101, 21.505236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371131, 16.603300, 22.137030>,  <11.997789, 16.248833, 21.872795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.371131, 16.603300, 22.137030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.289396, 16.242853, 21.984066>,  <11.240355, 16.026585, 21.892288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.289396, 16.242853, 21.984066>,  <11.371131, 16.603300, 22.137030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289396, 16.242853, 21.984066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662922, -0.160053, 0.731380,
		-0.720264, 0.402954, -0.564666,
		-0.204336, -0.901117, -0.382408,
		11.228095, 15.972518, 21.869343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.693958, 16.512737, 22.257702>,  <11.371131, 16.603300, 22.137030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.693958, 16.512737, 22.257702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.789299, 16.133841, 22.171984>,  <10.846503, 15.906503, 22.120552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.789299, 16.133841, 22.171984>,  <10.693958, 16.512737, 22.257702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.789299, 16.133841, 22.171984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486145, -0.307391, 0.818031,
		-0.840745, -0.090800, -0.533763,
		0.238351, -0.947241, -0.214295,
		10.860805, 15.849669, 22.107695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.068471, 16.157627, 22.212566>,  <10.693958, 16.512737, 22.257702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.068471, 16.157627, 22.212566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.360725, 15.904388, 22.314827>,  <10.536078, 15.752445, 22.376184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.360725, 15.904388, 22.314827>,  <10.068471, 16.157627, 22.212566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.360725, 15.904388, 22.314827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547928, -0.320287, 0.772782,
		-0.407365, -0.704701, -0.580905,
		0.730636, -0.633098, 0.255652,
		10.579916, 15.714459, 22.391523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781343, 15.518071, 22.247168>,  <10.068471, 16.157627, 22.212566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781343, 15.518071, 22.247168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.092898, 15.495667, 22.497028>,  <10.279832, 15.482224, 22.646946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.092898, 15.495667, 22.497028>,  <9.781343, 15.518071, 22.247168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.092898, 15.495667, 22.497028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608447, -0.308977, 0.730976,
		0.152061, -0.949419, -0.274739,
		0.778890, -0.056011, 0.624654,
		10.326566, 15.478863, 22.684425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.418470, 15.311759, 22.777159>,  <9.781343, 15.518071, 22.247168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.418470, 15.311759, 22.777159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.782245, 15.343241, 22.940491>,  <10.000509, 15.362129, 23.038490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.782245, 15.343241, 22.940491>,  <9.418470, 15.311759, 22.777159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.782245, 15.343241, 22.940491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390716, -0.174447, 0.903830,
		0.142366, -0.981516, -0.127897,
		0.909435, 0.078704, 0.408329,
		10.055076, 15.366852, 23.062990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720157, 14.614948, 23.049141>,  <9.418470, 15.311759, 22.777159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720157, 14.614948, 23.049141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.836876, 14.944965, 23.242701>,  <9.906907, 15.142976, 23.358837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.836876, 14.944965, 23.242701>,  <9.720157, 14.614948, 23.049141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.836876, 14.944965, 23.242701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371596, -0.368390, 0.852177,
		0.881346, -0.428478, 0.199087,
		0.291797, 0.825043, 0.483900,
		9.924415, 15.192478, 23.387871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275949, 14.483361, 23.561153>,  <9.720157, 14.614948, 23.049141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275949, 14.483361, 23.561153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.068356, 14.807410, 23.670225>,  <9.943799, 15.001840, 23.735668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.068356, 14.807410, 23.670225>,  <10.275949, 14.483361, 23.561153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.068356, 14.807410, 23.670225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259648, -0.453342, 0.852680,
		0.814393, 0.371728, 0.445625,
		-0.518986, 0.810123, 0.272680,
		9.912660, 15.050447, 23.752029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.465762, 14.541910, 24.262228>,  <10.275949, 14.483361, 23.561153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.465762, 14.541910, 24.262228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.120740, 14.740561, 24.223532>,  <9.913727, 14.859753, 24.200314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.120740, 14.740561, 24.223532>,  <10.465762, 14.541910, 24.262228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.120740, 14.740561, 24.223532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317162, -0.381745, 0.868147,
		0.394217, 0.779507, 0.486787,
		-0.862555, 0.496629, -0.096740,
		9.861974, 14.889550, 24.194510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466229, 14.929049, 24.909805>,  <10.465762, 14.541910, 24.262228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466229, 14.929049, 24.909805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.104280, 14.909862, 24.740618>,  <9.887110, 14.898349, 24.639105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.104280, 14.909862, 24.740618>,  <10.466229, 14.929049, 24.909805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.104280, 14.909862, 24.740618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371847, -0.394579, 0.840260,
		-0.207201, 0.917609, 0.339207,
		-0.904874, -0.047970, -0.422968,
		9.832817, 14.895471, 24.613728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.379620, 15.668164, 25.086390>,  <10.466229, 14.929049, 24.909805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.379620, 15.668164, 25.086390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.648699, 15.848369, 25.321171>,  <10.810146, 15.956491, 25.462040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.648699, 15.848369, 25.321171>,  <10.379620, 15.668164, 25.086390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.648699, 15.848369, 25.321171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567126, 0.195565, -0.800076,
		-0.475232, 0.871087, -0.123941,
		0.672698, 0.450512, 0.586955,
		10.850508, 15.983522, 25.497257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.573708, 16.294550, 24.766611>,  <10.379620, 15.668164, 25.086390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.573708, 16.294550, 24.766611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.880706, 16.223152, 25.012892>,  <11.064904, 16.180313, 25.160660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.880706, 16.223152, 25.012892>,  <10.573708, 16.294550, 24.766611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.880706, 16.223152, 25.012892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636634, 0.324826, -0.699417,
		-0.075154, 0.928777, 0.362939,
		0.767495, -0.178496, 0.615703,
		11.110954, 16.169603, 25.197603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881414, 16.935944, 24.933998>,  <10.573708, 16.294550, 24.766611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881414, 16.935944, 24.933998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.150825, 16.651163, 25.013487>,  <11.312470, 16.480295, 25.061180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.150825, 16.651163, 25.013487>,  <10.881414, 16.935944, 24.933998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150825, 16.651163, 25.013487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600285, 0.369969, -0.709071,
		0.431304, 0.596865, 0.676557,
		0.673525, -0.711951, 0.198720,
		11.352882, 16.437578, 25.073103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.470454, 17.248959, 24.675457>,  <10.881414, 16.935944, 24.933998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.470454, 17.248959, 24.675457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.590954, 16.869274, 24.711786>,  <11.663254, 16.641464, 24.733583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.590954, 16.869274, 24.711786>,  <11.470454, 17.248959, 24.675457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.590954, 16.869274, 24.711786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795940, 0.197864, -0.572127,
		0.525098, 0.244644, 0.815121,
		0.301250, -0.949210, 0.090824,
		11.681329, 16.584511, 24.739033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180397, 17.279619, 24.944349>,  <11.470454, 17.248959, 24.675457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180397, 17.279619, 24.944349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.133886, 16.914499, 24.787746>,  <12.105980, 16.695427, 24.693785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.133886, 16.914499, 24.787746>,  <12.180397, 17.279619, 24.944349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.133886, 16.914499, 24.787746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833388, 0.124771, -0.538420,
		0.540318, -0.388883, 0.746208,
		-0.116277, -0.912799, -0.391506,
		12.099003, 16.640659, 24.670294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.829546, 17.036810, 24.907087>,  <12.180397, 17.279619, 24.944349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.829546, 17.036810, 24.907087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.633895, 16.805042, 24.646311>,  <12.516504, 16.665981, 24.489845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.633895, 16.805042, 24.646311>,  <12.829546, 17.036810, 24.907087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.633895, 16.805042, 24.646311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821965, -0.056179, -0.566761,
		0.291768, -0.813090, 0.503742,
		-0.489127, -0.579421, -0.651940,
		12.487157, 16.631216, 24.450729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349905, 16.410887, 24.692139>,  <12.829546, 17.036810, 24.907087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349905, 16.410887, 24.692139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.067389, 16.437395, 24.410213>,  <12.897880, 16.453300, 24.241058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.067389, 16.437395, 24.410213>,  <13.349905, 16.410887, 24.692139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.067389, 16.437395, 24.410213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701784, 0.196377, -0.684788,
		0.093028, -0.978287, -0.185206,
		-0.706289, 0.066270, -0.704814,
		12.855503, 16.457275, 24.198769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506721, 16.021797, 24.084518>,  <13.349905, 16.410887, 24.692139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506721, 16.021797, 24.084518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.247356, 16.274046, 23.913931>,  <13.091738, 16.425396, 23.811579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.247356, 16.274046, 23.913931>,  <13.506721, 16.021797, 24.084518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247356, 16.274046, 23.913931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678106, 0.223807, -0.700059,
		-0.346026, -0.743118, -0.572748,
		-0.648412, 0.630623, -0.426470,
		13.052833, 16.463232, 23.785990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388038, 15.797948, 23.373930>,  <13.506721, 16.021797, 24.084518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388038, 15.797948, 23.373930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.279073, 16.182737, 23.365957>,  <13.213694, 16.413610, 23.361174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.279073, 16.182737, 23.365957>,  <13.388038, 15.797948, 23.373930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279073, 16.182737, 23.365957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625561, 0.161330, -0.763313,
		-0.731071, -0.220405, -0.645721,
		-0.272412, 0.961974, -0.019933,
		13.197350, 16.471329, 23.359978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.246284, 15.884887, 22.688969>,  <13.388038, 15.797948, 23.373930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.246284, 15.884887, 22.688969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.315729, 16.259007, 22.812305>,  <13.357396, 16.483479, 22.886307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.315729, 16.259007, 22.812305>,  <13.246284, 15.884887, 22.688969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.315729, 16.259007, 22.812305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671578, 0.116563, -0.731707,
		-0.720307, 0.334107, -0.607890,
		0.173611, 0.935300, 0.308340,
		13.367812, 16.539597, 22.904808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.136427, 16.362576, 22.139015>,  <13.246284, 15.884887, 22.688969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.136427, 16.362576, 22.139015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.388243, 16.545546, 22.390234>,  <13.539332, 16.655327, 22.540966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.388243, 16.545546, 22.390234>,  <13.136427, 16.362576, 22.139015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388243, 16.545546, 22.390234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569983, 0.277436, -0.773400,
		-0.528016, 0.844862, -0.086068,
		0.629538, 0.457425, 0.628048,
		13.577105, 16.682774, 22.578648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182110, 16.854612, 21.803204>,  <13.136427, 16.362576, 22.139015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182110, 16.854612, 21.803204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.494413, 16.884350, 22.051361>,  <13.681795, 16.902193, 22.200256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.494413, 16.884350, 22.051361>,  <13.182110, 16.854612, 21.803204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494413, 16.884350, 22.051361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584009, 0.266177, -0.766866,
		-0.222146, 0.961053, 0.164402,
		0.780759, 0.074344, 0.620394,
		13.728642, 16.906652, 22.237478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.612103, 17.449329, 21.528986>,  <13.182110, 16.854612, 21.803204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.612103, 17.449329, 21.528986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.860323, 17.259521, 21.778706>,  <14.009255, 17.145636, 21.928537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.860323, 17.259521, 21.778706>,  <13.612103, 17.449329, 21.528986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860323, 17.259521, 21.778706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739851, 0.090446, -0.666663,
		0.259880, 0.875585, 0.407202,
		0.620550, -0.474521, 0.624297,
		14.046488, 17.117165, 21.965996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263906, 17.837982, 21.630608>,  <13.612103, 17.449329, 21.528986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.263906, 17.837982, 21.630608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.295838, 17.441311, 21.671000>,  <14.314998, 17.203308, 21.695234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.295838, 17.441311, 21.671000>,  <14.263906, 17.837982, 21.630608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295838, 17.441311, 21.671000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700160, -0.016322, -0.713799,
		0.709509, 0.127686, 0.693032,
		0.079831, -0.991680, 0.100981,
		14.319788, 17.143806, 21.701294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.349533, 21.719730, 11.443032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.292093, 21.510473, 11.107008>,  <10.257629, 21.384918, 10.905394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.292093, 21.510473, 11.107008>,  <10.349533, 21.719730, 11.443032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.292093, 21.510473, 11.107008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212041, -0.812879, 0.542463,
		-0.966653, 0.256025, 0.005801,
		-0.143600, -0.523143, -0.840060,
		10.249013, 21.353531, 10.854990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.558723, 21.495550, 11.257097>,  <10.349533, 21.719730, 11.443032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.558723, 21.495550, 11.257097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.868434, 21.252480, 11.186411>,  <10.054260, 21.106638, 11.143999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.868434, 21.252480, 11.186411>,  <9.558723, 21.495550, 11.257097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.868434, 21.252480, 11.186411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477631, -0.744316, 0.466757,
		-0.415168, -0.276994, -0.866550,
		0.774276, -0.607674, -0.176715,
		10.100717, 21.070177, 11.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.280438, 20.790529, 11.022885>,  <9.558723, 21.495550, 11.257097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.280438, 20.790529, 11.022885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.626887, 20.756155, 11.219842>,  <9.834757, 20.735531, 11.338016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.626887, 20.756155, 11.219842>,  <9.280438, 20.790529, 11.022885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.626887, 20.756155, 11.219842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380925, -0.751300, 0.538929,
		0.323619, -0.654342, -0.683452,
		0.866122, -0.085937, 0.492391,
		9.886724, 20.730373, 11.367559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.985188, 21.364954, 10.623052>,  <9.280438, 20.790529, 11.022885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.985188, 21.364954, 10.623052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.735352, 21.232929, 10.339942>,  <8.585449, 21.153715, 10.170076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.735352, 21.232929, 10.339942>,  <8.985188, 21.364954, 10.623052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.735352, 21.232929, 10.339942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682867, -0.208910, 0.700035,
		-0.378916, 0.920552, -0.094904,
		-0.624593, -0.330061, -0.707774,
		8.547974, 21.133911, 10.127610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.214689, 21.737246, 10.576262>,  <8.985188, 21.364954, 10.623052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.214689, 21.737246, 10.576262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.255445, 21.345400, 10.507011>,  <8.279899, 21.110292, 10.465461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.255445, 21.345400, 10.507011>,  <8.214689, 21.737246, 10.576262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.255445, 21.345400, 10.507011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673331, -0.196021, 0.712883,
		-0.732287, 0.043936, -0.679577,
		0.101890, -0.979615, -0.173127,
		8.286013, 21.051516, 10.455073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.091233, 22.081606, 11.260461>,  <8.214689, 21.737246, 10.576262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.091233, 22.081606, 11.260461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.062236, 22.462877, 11.377898>,  <8.044838, 22.691639, 11.448360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.062236, 22.462877, 11.377898>,  <8.091233, 22.081606, 11.260461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.062236, 22.462877, 11.377898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791725, 0.124028, -0.598154,
		-0.606561, -0.275808, 0.745663,
		-0.072492, 0.953177, 0.293594,
		8.040488, 22.748831, 11.465977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.440059, 22.181437, 11.499230>,  <8.091233, 22.081606, 11.260461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.440059, 22.181437, 11.499230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.525332, 22.558472, 11.396405>,  <7.576497, 22.784693, 11.334710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.525332, 22.558472, 11.396405>,  <7.440059, 22.181437, 11.499230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.525332, 22.558472, 11.396405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909345, 0.095214, -0.405001,
		-0.357273, 0.320100, 0.877435,
		0.213185, 0.942587, -0.257064,
		7.589288, 22.841248, 11.319286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.014958, 22.697531, 11.717326>,  <7.440059, 22.181437, 11.499230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.014958, 22.697531, 11.717326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.106397, 22.826574, 11.349921>,  <7.161260, 22.904001, 11.129478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.106397, 22.826574, 11.349921>,  <7.014958, 22.697531, 11.717326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.106397, 22.826574, 11.349921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964509, 0.203135, -0.168696,
		0.132159, 0.924477, 0.357597,
		0.228597, 0.322611, -0.918513,
		7.174976, 22.923357, 11.074368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.899779, 22.941481, 12.391127>,  <7.014958, 22.697531, 11.717326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.899779, 22.941481, 12.391127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.560468, 23.153301, 12.391509>,  <6.356881, 23.280394, 12.391739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.560468, 23.153301, 12.391509>,  <6.899779, 22.941481, 12.391127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.560468, 23.153301, 12.391509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458028, -0.734610, 0.500557,
		0.265774, 0.424173, 0.865703,
		-0.848277, 0.529551, 0.000957,
		6.305984, 23.312166, 12.391796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.418451, 22.611689, 12.810658>,  <6.899779, 22.941481, 12.391127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.418451, 22.611689, 12.810658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.141828, 22.888716, 12.728585>,  <5.975854, 23.054932, 12.679341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.141828, 22.888716, 12.728585>,  <6.418451, 22.611689, 12.810658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.141828, 22.888716, 12.728585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702815, -0.579597, 0.412455,
		0.166729, 0.429442, 0.887570,
		-0.691558, 0.692566, -0.205182,
		5.934361, 23.096485, 12.667030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.950786, 22.748919, 13.306450>,  <6.418451, 22.611689, 12.810658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.950786, 22.748919, 13.306450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.741430, 22.835569, 12.976811>,  <5.615817, 22.887560, 12.779028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.741430, 22.835569, 12.976811>,  <5.950786, 22.748919, 13.306450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.741430, 22.835569, 12.976811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706844, -0.650481, 0.277931,
		-0.475851, 0.727974, 0.493578,
		-0.523390, 0.216629, -0.824097,
		5.584414, 22.900558, 12.729583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.306212, 22.613317, 13.447959>,  <5.950786, 22.748919, 13.306450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.306212, 22.613317, 13.447959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.295189, 22.617466, 13.048132>,  <5.288576, 22.619955, 12.808236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.295189, 22.617466, 13.048132>,  <5.306212, 22.613317, 13.447959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.295189, 22.617466, 13.048132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779524, -0.626193, 0.014993,
		-0.625766, 0.779599, 0.025341,
		-0.027557, 0.010372, -0.999566,
		5.286922, 22.620577, 12.748262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.579782, 22.700056, 13.209414>,  <5.306212, 22.613317, 13.447959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.579782, 22.700056, 13.209414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.767612, 22.496372, 12.920913>,  <4.880309, 22.374163, 12.747812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.767612, 22.496372, 12.920913>,  <4.579782, 22.700056, 13.209414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.767612, 22.496372, 12.920913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740298, -0.672239, -0.007370,
		-0.481102, 0.537403, -0.692631,
		0.469574, -0.509208, -0.721254,
		4.908484, 22.343609, 12.704536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.988067, 22.199905, 12.915555>,  <4.579782, 22.700056, 13.209414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.988067, 22.199905, 12.915555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.321108, 22.059896, 12.743855>,  <4.520933, 21.975891, 12.640836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.321108, 22.059896, 12.743855>,  <3.988067, 22.199905, 12.915555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321108, 22.059896, 12.743855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490598, -0.825769, -0.278242,
		-0.257069, 0.442254, -0.859259,
		0.832604, -0.350023, -0.429249,
		4.570889, 21.954889, 12.615081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.778557, 21.914070, 12.218858>,  <3.988067, 22.199905, 12.915555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.778557, 21.914070, 12.218858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.115648, 21.738056, 12.342909>,  <4.317903, 21.632448, 12.417339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.115648, 21.738056, 12.342909>,  <3.778557, 21.914070, 12.218858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.115648, 21.738056, 12.342909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351019, -0.885926, -0.303184,
		0.408161, 0.146642, -0.901055,
		0.842728, -0.440036, 0.310127,
		4.368466, 21.606045, 12.435946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.862750, 21.309828, 11.719724>,  <3.778557, 21.914070, 12.218858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.862750, 21.309828, 11.719724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.084399, 21.232977, 12.043708>,  <4.217388, 21.186867, 12.238098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.084399, 21.232977, 12.043708>,  <3.862750, 21.309828, 11.719724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.084399, 21.232977, 12.043708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260163, -0.964231, -0.050737,
		0.790737, -0.182607, -0.584286,
		0.554121, -0.192129, 0.809960,
		4.250635, 21.175339, 12.286696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.302372, 20.790638, 11.575026>,  <3.862750, 21.309828, 11.719724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.302372, 20.790638, 11.575026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.311800, 20.767895, 11.974267>,  <4.317457, 20.754248, 12.213812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.311800, 20.767895, 11.974267>,  <4.302372, 20.790638, 11.575026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.311800, 20.767895, 11.974267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168639, -0.984301, -0.052090,
		0.985396, -0.167091, -0.032790,
		0.023571, -0.056859, 0.998104,
		4.318871, 20.750837, 12.273698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.504147, 20.139482, 11.651235>,  <4.302372, 20.790638, 11.575026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.504147, 20.139482, 11.651235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.351521, 20.254889, 12.002500>,  <4.259945, 20.324131, 12.213259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.351521, 20.254889, 12.002500>,  <4.504147, 20.139482, 11.651235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.351521, 20.254889, 12.002500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158953, -0.956368, 0.245142,
		0.910573, -0.046048, 0.410776,
		-0.381565, 0.288514, 0.878162,
		4.237051, 20.341442, 12.265948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.747767, 19.663952, 12.156858>,  <4.504147, 20.139482, 11.651235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.747767, 19.663952, 12.156858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.420710, 19.811346, 12.333800>,  <4.224476, 19.899782, 12.439965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.420710, 19.811346, 12.333800>,  <4.747767, 19.663952, 12.156858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.420710, 19.811346, 12.333800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325176, -0.929630, 0.173343,
		0.475101, -0.002111, 0.879929,
		-0.817642, 0.368488, 0.442355,
		4.175417, 19.921892, 12.466507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.708400, 19.325443, 12.724266>,  <4.747767, 19.663952, 12.156858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.708400, 19.325443, 12.724266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.339890, 19.472948, 12.674845>,  <4.118783, 19.561451, 12.645192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.339890, 19.472948, 12.674845>,  <4.708400, 19.325443, 12.724266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.339890, 19.472948, 12.674845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388724, -0.882970, 0.263167,
		-0.012048, 0.290477, 0.956806,
		-0.921275, 0.368763, -0.123553,
		4.063507, 19.583576, 12.637779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.392825, 19.350117, 13.426318>,  <4.708400, 19.325443, 12.724266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.392825, 19.350117, 13.426318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.118987, 19.338329, 13.134987>,  <3.954684, 19.331257, 12.960188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.118987, 19.338329, 13.134987>,  <4.392825, 19.350117, 13.426318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118987, 19.338329, 13.134987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357657, -0.857056, 0.370860,
		-0.635147, 0.514380, 0.576196,
		-0.684595, -0.029470, -0.728328,
		3.913609, 19.329489, 12.916489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.709577, 19.254932, 13.734080>,  <4.392825, 19.350117, 13.426318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.709577, 19.254932, 13.734080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.680695, 19.125660, 13.356649>,  <3.663365, 19.048096, 13.130191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.680695, 19.125660, 13.356649>,  <3.709577, 19.254932, 13.734080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.680695, 19.125660, 13.356649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521569, -0.794151, 0.311914,
		-0.850148, 0.514663, -0.111220,
		-0.072206, -0.323182, -0.943578,
		3.659033, 19.028706, 13.073576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.030972, 18.820673, 13.741416>,  <3.709577, 19.254932, 13.734080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.030972, 18.820673, 13.741416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.222687, 18.745012, 13.398602>,  <3.337716, 18.699615, 13.192915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.222687, 18.745012, 13.398602>,  <3.030972, 18.820673, 13.741416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.222687, 18.745012, 13.398602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317972, -0.947583, 0.031314,
		-0.818033, 0.257504, -0.514309,
		0.479287, -0.189152, -0.857033,
		3.366473, 18.688267, 13.141493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.701326, 18.301031, 13.496481>,  <3.030972, 18.820673, 13.741416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.701326, 18.301031, 13.496481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.045330, 18.289997, 13.292667>,  <3.251732, 18.283377, 13.170380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.045330, 18.289997, 13.292667>,  <2.701326, 18.301031, 13.496481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.045330, 18.289997, 13.292667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085690, -0.992165, -0.090916,
		-0.503033, 0.121851, -0.855634,
		0.860009, -0.027586, -0.509533,
		3.303332, 18.281721, 13.139808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.645255, 17.843914, 12.982717>,  <2.701326, 18.301031, 13.496481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.645255, 17.843914, 12.982717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.037851, 17.851809, 13.058914>,  <3.273408, 17.856544, 13.104633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.037851, 17.851809, 13.058914>,  <2.645255, 17.843914, 12.982717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.037851, 17.851809, 13.058914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012101, -0.986299, 0.164522,
		0.191132, -0.163782, -0.967804,
		0.981490, 0.019734, 0.190495,
		3.332298, 17.857729, 13.116063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.805533, 17.283634, 12.723197>,  <2.645255, 17.843914, 12.982717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.805533, 17.283634, 12.723197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.133449, 17.374449, 12.933491>,  <3.330199, 17.428938, 13.059668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.133449, 17.374449, 12.933491>,  <2.805533, 17.283634, 12.723197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.133449, 17.374449, 12.933491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140992, -0.969812, 0.198961,
		0.555036, -0.088982, -0.827053,
		0.819790, 0.227038, 0.525735,
		3.379386, 17.442560, 13.091211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.273715, 16.777832, 12.478786>,  <2.805533, 17.283634, 12.723197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.273715, 16.777832, 12.478786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.420292, 16.922033, 12.821892>,  <3.508238, 17.008554, 13.027755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.420292, 16.922033, 12.821892>,  <3.273715, 16.777832, 12.478786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420292, 16.922033, 12.821892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226186, -0.928749, 0.293709,
		0.902529, 0.086386, -0.421875,
		0.366443, 0.360504, 0.857763,
		3.530225, 17.030184, 13.079221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.904827, 16.408266, 12.561245>,  <3.273715, 16.777832, 12.478786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.904827, 16.408266, 12.561245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.806954, 16.547066, 12.923399>,  <3.748231, 16.630346, 13.140691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.806954, 16.547066, 12.923399>,  <3.904827, 16.408266, 12.561245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806954, 16.547066, 12.923399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210102, -0.892607, 0.398885,
		0.946566, 0.287823, 0.145499,
		-0.244682, 0.347001, 0.905384,
		3.733550, 16.651167, 13.195014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.441876, 16.184484, 13.083287>,  <3.904827, 16.408266, 12.561245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.441876, 16.184484, 13.083287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.144912, 16.274290, 13.335770>,  <3.966734, 16.328175, 13.487259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.144912, 16.274290, 13.335770>,  <4.441876, 16.184484, 13.083287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144912, 16.274290, 13.335770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147216, -0.864472, 0.480640,
		0.653570, 0.449756, 0.608741,
		-0.742410, 0.224515, 0.631205,
		3.922189, 16.341644, 13.525131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.692043, 16.002096, 13.718606>,  <4.441876, 16.184484, 13.083287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.692043, 16.002096, 13.718606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.293357, 15.996349, 13.750485>,  <4.054146, 15.992901, 13.769613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.293357, 15.996349, 13.750485>,  <4.692043, 16.002096, 13.718606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293357, 15.996349, 13.750485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063575, -0.748462, 0.660124,
		0.050167, 0.663022, 0.746917,
		-0.996715, -0.014369, 0.079700,
		3.994343, 15.992039, 13.774395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.627092, 16.087109, 14.391988>,  <4.692043, 16.002096, 13.718606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.627092, 16.087109, 14.391988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.288361, 15.930793, 14.247673>,  <4.085122, 15.837004, 14.161084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.288361, 15.930793, 14.247673>,  <4.627092, 16.087109, 14.391988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.288361, 15.930793, 14.247673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106608, -0.789290, 0.604696,
		-0.521073, 0.473611, 0.710053,
		-0.846828, -0.390788, -0.360787,
		4.034312, 15.813557, 14.139437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.294977, 16.475729, 14.201936>,  <4.627092, 16.087109, 14.391988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.294977, 16.475729, 14.201936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673013, 16.423576, 14.321804>,  <5.899835, 16.392284, 14.393725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673013, 16.423576, 14.321804>,  <5.294977, 16.475729, 14.201936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.673013, 16.423576, 14.321804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152472, 0.986968, -0.051449,
		-0.289058, 0.094316, 0.952654,
		0.945091, -0.130382, 0.299671,
		5.956541, 16.384462, 14.411705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.407712, 16.877178, 14.764658>,  <5.294977, 16.475729, 14.201936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.407712, 16.877178, 14.764658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.769954, 16.806475, 14.610446>,  <5.987299, 16.764051, 14.517919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.769954, 16.806475, 14.610446>,  <5.407712, 16.877178, 14.764658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.769954, 16.806475, 14.610446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221313, 0.972389, 0.074032,
		0.361800, -0.152367, 0.919720,
		0.905606, -0.176761, -0.385531,
		6.041636, 16.753447, 14.494786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.958128, 16.984552, 15.238142>,  <5.407712, 16.877178, 14.764658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.958128, 16.984552, 15.238142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.084902, 17.046944, 14.863929>,  <6.160967, 17.084377, 14.639400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.084902, 17.046944, 14.863929>,  <5.958128, 16.984552, 15.238142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.084902, 17.046944, 14.863929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215238, 0.948821, 0.231108,
		0.923702, -0.274609, 0.267143,
		0.316935, 0.155976, -0.935534,
		6.179983, 17.093737, 14.583269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.604471, 17.238169, 15.360546>,  <5.958128, 16.984552, 15.238142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.604471, 17.238169, 15.360546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.515969, 17.326807, 14.980664>,  <6.462867, 17.379990, 14.752735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.515969, 17.326807, 14.980664>,  <6.604471, 17.238169, 15.360546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.515969, 17.326807, 14.980664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233523, 0.957548, 0.169023,
		0.946844, -0.184380, -0.263611,
		-0.221256, 0.221598, -0.949705,
		6.449592, 17.393286, 14.695753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.126210, 17.624411, 15.164091>,  <6.604471, 17.238169, 15.360546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.126210, 17.624411, 15.164091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.848800, 17.711967, 14.889542>,  <6.682354, 17.764502, 14.724812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.848800, 17.711967, 14.889542>,  <7.126210, 17.624411, 15.164091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.848800, 17.711967, 14.889542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188844, 0.974646, 0.120015,
		0.695241, -0.046385, -0.717278,
		-0.693525, 0.218893, -0.686373,
		6.640743, 17.777636, 14.683630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.454676, 18.101440, 14.569692>,  <7.126210, 17.624411, 15.164091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.454676, 18.101440, 14.569692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.060410, 18.165483, 14.548412>,  <6.823850, 18.203909, 14.535645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.060410, 18.165483, 14.548412>,  <7.454676, 18.101440, 14.569692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.060410, 18.165483, 14.548412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163318, 0.984573, -0.062794,
		0.042323, -0.070582, -0.996608,
		-0.985665, 0.160106, -0.053197,
		6.764710, 18.213516, 14.532454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.371124, 18.530437, 13.974474>,  <7.454676, 18.101440, 14.569692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.371124, 18.530437, 13.974474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.026786, 18.571562, 14.173823>,  <6.820183, 18.596235, 14.293433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.026786, 18.571562, 14.173823>,  <7.371124, 18.530437, 13.974474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.026786, 18.571562, 14.173823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003438, 0.980531, -0.196335,
		-0.508856, -0.167300, -0.844438,
		-0.860845, 0.102809, 0.498374,
		6.768532, 18.602404, 14.323336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.783969, 18.781767, 13.525105>,  <7.371124, 18.530437, 13.974474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.783969, 18.781767, 13.525105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.702899, 18.886005, 13.902679>,  <6.654257, 18.948547, 14.129224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.702899, 18.886005, 13.902679>,  <6.783969, 18.781767, 13.525105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.702899, 18.886005, 13.902679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025459, 0.962212, -0.271108,
		-0.978915, -0.078978, -0.188382,
		-0.202675, 0.260595, 0.943935,
		6.642097, 18.964184, 14.185860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.383806, 19.353630, 13.412883>,  <6.783969, 18.781767, 13.525105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.383806, 19.353630, 13.412883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.499684, 19.379930, 13.794826>,  <6.569211, 19.395712, 14.023992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.499684, 19.379930, 13.794826>,  <6.383806, 19.353630, 13.412883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.499684, 19.379930, 13.794826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248006, 0.958407, -0.141240,
		-0.924429, 0.277727, 0.261340,
		0.289697, 0.065752, 0.954857,
		6.586593, 19.399656, 14.081283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.163064, 19.994156, 13.558749>,  <6.383806, 19.353630, 13.412883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.163064, 19.994156, 13.558749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.435134, 19.937710, 13.846485>,  <6.598375, 19.903843, 14.019127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.435134, 19.937710, 13.846485>,  <6.163064, 19.994156, 13.558749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.435134, 19.937710, 13.846485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322817, 0.938682, -0.121099,
		-0.658144, 0.314584, 0.684020,
		0.680173, -0.141113, 0.719341,
		6.639186, 19.895376, 14.062287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.089243, 20.555223, 14.055017>,  <6.163064, 19.994156, 13.558749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.089243, 20.555223, 14.055017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.463892, 20.423658, 14.103279>,  <6.688681, 20.344719, 14.132236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.463892, 20.423658, 14.103279>,  <6.089243, 20.555223, 14.055017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.463892, 20.423658, 14.103279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324085, 0.944234, 0.058225,
		-0.133077, -0.015432, 0.990986,
		0.936621, -0.328912, 0.120654,
		6.744878, 20.324986, 14.139476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.373334, 20.988401, 14.564473>,  <6.089243, 20.555223, 14.055017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.373334, 20.988401, 14.564473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.702718, 20.821724, 14.410445>,  <6.900348, 20.721718, 14.318028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.702718, 20.821724, 14.410445>,  <6.373334, 20.988401, 14.564473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.702718, 20.821724, 14.410445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385093, 0.908896, -0.160035,
		0.416675, -0.016506, 0.908906,
		0.823459, -0.416696, -0.385071,
		6.949756, 20.696714, 14.294924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.003145, 21.014019, 15.005413>,  <6.373334, 20.988401, 14.564473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.003145, 21.014019, 15.005413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158902, 20.963223, 14.640503>,  <7.252356, 20.932745, 14.421556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158902, 20.963223, 14.640503>,  <7.003145, 21.014019, 15.005413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.158902, 20.963223, 14.640503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572469, 0.809280, 0.131697,
		0.721563, -0.573532, 0.387825,
		0.389392, -0.126990, -0.912276,
		7.275719, 20.925125, 14.366820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.715975, 21.239496, 15.012603>,  <7.003145, 21.014019, 15.005413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.715975, 21.239496, 15.012603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.660231, 21.228811, 14.616651>,  <7.626784, 21.222401, 14.379079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.660231, 21.228811, 14.616651>,  <7.715975, 21.239496, 15.012603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.660231, 21.228811, 14.616651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522281, 0.847308, -0.096393,
		0.841309, -0.530430, -0.104132,
		-0.139362, -0.026710, -0.989881,
		7.618422, 21.220798, 14.319686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368113, 21.268333, 14.603823>,  <7.715975, 21.239496, 15.012603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368113, 21.268333, 14.603823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.090820, 21.385599, 14.340465>,  <7.924445, 21.455959, 14.182449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.090820, 21.385599, 14.340465>,  <8.368113, 21.268333, 14.603823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.090820, 21.385599, 14.340465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524395, 0.831854, -0.181737,
		0.494411, -0.471245, -0.730401,
		-0.693230, 0.293166, -0.658396,
		7.882851, 21.473549, 14.142946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.765654, 21.660084, 14.193411>,  <8.368113, 21.268333, 14.603823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.765654, 21.660084, 14.193411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.410440, 21.778099, 14.052358>,  <8.197312, 21.848907, 13.967726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.410440, 21.778099, 14.052358>,  <8.765654, 21.660084, 14.193411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.410440, 21.778099, 14.052358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390614, 0.888678, -0.240148,
		0.242525, -0.351003, -0.904421,
		-0.888033, 0.295038, -0.352634,
		8.144031, 21.866610, 13.946568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.873014, 22.082479, 13.583281>,  <8.765654, 21.660084, 14.193411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.873014, 22.082479, 13.583281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.512564, 22.198673, 13.712021>,  <8.296293, 22.268389, 13.789266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.512564, 22.198673, 13.712021>,  <8.873014, 22.082479, 13.583281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.512564, 22.198673, 13.712021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262905, 0.956412, -0.127113,
		-0.344747, -0.029928, -0.938218,
		-0.901127, 0.290484, 0.321851,
		8.242226, 22.285818, 13.808577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.549701, 22.400059, 12.997457>,  <8.873014, 22.082479, 13.583281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.549701, 22.400059, 12.997457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.392177, 22.525711, 13.342997>,  <8.297663, 22.601103, 13.550321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.392177, 22.525711, 13.342997>,  <8.549701, 22.400059, 12.997457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.392177, 22.525711, 13.342997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198946, 0.946645, -0.253542,
		-0.897404, 0.072013, -0.435293,
		-0.393809, 0.314130, 0.863850,
		8.274034, 22.619949, 13.602152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.254476, 23.058914, 12.771859>,  <8.549701, 22.400059, 12.997457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.254476, 23.058914, 12.771859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.271814, 23.069826, 13.171334>,  <8.282218, 23.076372, 13.411019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.271814, 23.069826, 13.171334>,  <8.254476, 23.058914, 12.771859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.271814, 23.069826, 13.171334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233558, 0.971651, -0.036678,
		-0.971376, 0.234842, 0.035748,
		0.043348, 0.027278, 0.998688,
		8.284819, 23.078011, 13.470941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.036160, 23.684444, 12.944264>,  <8.254476, 23.058914, 12.771859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.036160, 23.684444, 12.944264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.234391, 23.585581, 13.277327>,  <8.353330, 23.526262, 13.477164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.234391, 23.585581, 13.277327>,  <8.036160, 23.684444, 12.944264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.234391, 23.585581, 13.277327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182972, 0.966853, 0.178091,
		-0.849073, 0.064095, 0.524373,
		0.495577, -0.247157, 0.832657,
		8.383064, 23.511435, 13.527123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.722212, 24.208134, 13.462694>,  <8.036160, 23.684444, 12.944264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.722212, 24.208134, 13.462694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.062674, 24.046385, 13.596570>,  <8.266951, 23.949335, 13.676895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.062674, 24.046385, 13.596570>,  <7.722212, 24.208134, 13.462694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.062674, 24.046385, 13.596570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340307, 0.910554, 0.234698,
		-0.399659, -0.085867, 0.912633,
		0.851155, -0.404374, 0.334690,
		8.318020, 23.925072, 13.696977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.479697, 14.490876, 27.201040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.288909, 14.248858, 26.946035>,  <14.174436, 14.103648, 26.793032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.288909, 14.248858, 26.946035>,  <14.479697, 14.490876, 27.201040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.288909, 14.248858, 26.946035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688641, -0.193449, 0.698821,
		-0.546144, 0.772334, -0.324388,
		-0.476971, -0.605044, -0.637511,
		14.145818, 14.067346, 26.754782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913921, 14.829822, 27.114302>,  <14.479697, 14.490876, 27.201040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913921, 14.829822, 27.114302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.861548, 14.440815, 27.037287>,  <13.830125, 14.207411, 26.991077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.861548, 14.440815, 27.037287>,  <13.913921, 14.829822, 27.114302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861548, 14.440815, 27.037287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626895, -0.069234, 0.776022,
		-0.768023, 0.222305, -0.600600,
		-0.130931, -0.972516, -0.192535,
		13.822269, 14.149060, 26.979527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.252282, 14.732999, 27.406134>,  <13.913921, 14.829822, 27.114302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.252282, 14.732999, 27.406134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.369932, 14.358321, 27.330139>,  <13.440522, 14.133514, 27.284542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.369932, 14.358321, 27.330139>,  <13.252282, 14.732999, 27.406134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.369932, 14.358321, 27.330139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609901, -0.336991, 0.717258,
		-0.735874, -0.095091, -0.670408,
		0.294126, -0.936693, -0.189987,
		13.458170, 14.077313, 27.273144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.598055, 14.388557, 27.366732>,  <13.252282, 14.732999, 27.406134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.598055, 14.388557, 27.366732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.847746, 14.078274, 27.403858>,  <12.997561, 13.892103, 27.426134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.847746, 14.078274, 27.403858>,  <12.598055, 14.388557, 27.366732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847746, 14.078274, 27.403858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661428, -0.461526, 0.591191,
		-0.415752, -0.430433, -0.801173,
		0.624230, -0.775707, 0.092820,
		13.035014, 13.845561, 27.431704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153194, 13.859644, 27.333778>,  <12.598055, 14.388557, 27.366732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153194, 13.859644, 27.333778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.479514, 13.732254, 27.526878>,  <12.675305, 13.655820, 27.642738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.479514, 13.732254, 27.526878>,  <12.153194, 13.859644, 27.333778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.479514, 13.732254, 27.526878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569734, -0.299123, 0.765460,
		-0.099377, -0.899500, -0.425469,
		0.815799, -0.318473, 0.482750,
		12.724254, 13.636712, 27.671703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112933, 13.154448, 27.547838>,  <12.153194, 13.859644, 27.333778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.112933, 13.154448, 27.547838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.372815, 13.317152, 27.804720>,  <12.528745, 13.414775, 27.958849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.372815, 13.317152, 27.804720>,  <12.112933, 13.154448, 27.547838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.372815, 13.317152, 27.804720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525903, -0.369512, 0.766086,
		0.548917, -0.835468, -0.026156,
		0.649705, 0.406762, 0.642206,
		12.567726, 13.439180, 27.997381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032959, 12.730159, 28.181288>,  <12.112933, 13.154448, 27.547838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032959, 12.730159, 28.181288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.279665, 13.000898, 28.342024>,  <12.427689, 13.163342, 28.438465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.279665, 13.000898, 28.342024>,  <12.032959, 12.730159, 28.181288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.279665, 13.000898, 28.342024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301729, -0.268219, 0.914887,
		0.727022, -0.685518, 0.038796,
		0.616765, 0.676849, 0.401842,
		12.464695, 13.203953, 28.462576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392304, 12.420071, 28.752365>,  <12.032959, 12.730159, 28.181288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.392304, 12.420071, 28.752365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.430825, 12.815491, 28.798828>,  <12.453938, 13.052743, 28.826706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.430825, 12.815491, 28.798828>,  <12.392304, 12.420071, 28.752365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.430825, 12.815491, 28.798828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183256, -0.097096, 0.978258,
		0.978337, -0.115495, 0.171808,
		0.096302, 0.988551, 0.116158,
		12.459716, 13.112056, 28.833675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954566, 12.499615, 29.241798>,  <12.392304, 12.420071, 28.752365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954566, 12.499615, 29.241798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.704823, 12.812071, 29.241518>,  <12.554978, 12.999544, 29.241350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.704823, 12.812071, 29.241518>,  <12.954566, 12.499615, 29.241798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.704823, 12.812071, 29.241518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203638, -0.161899, 0.965568,
		0.754129, 0.603001, 0.260152,
		-0.624356, 0.781139, -0.000701,
		12.517517, 13.046412, 29.241308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157350, 12.921622, 29.749565>,  <12.954566, 12.499615, 29.241798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157350, 12.921622, 29.749565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.775187, 13.015088, 29.677347>,  <12.545889, 13.071167, 29.634016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.775187, 13.015088, 29.677347>,  <13.157350, 12.921622, 29.749565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.775187, 13.015088, 29.677347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234711, -0.229916, 0.944484,
		0.179181, 0.944743, 0.274507,
		-0.955408, 0.233663, -0.180545,
		12.488564, 13.085187, 29.623184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853586, 13.119145, 30.464785>,  <13.157350, 12.921622, 29.749565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853586, 13.119145, 30.464785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.546450, 13.018691, 30.229038>,  <12.362167, 12.958419, 30.087591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.546450, 13.018691, 30.229038>,  <12.853586, 13.119145, 30.464785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546450, 13.018691, 30.229038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452288, -0.439030, 0.776330,
		-0.453712, 0.862661, 0.223520,
		-0.767842, -0.251135, -0.589364,
		12.316097, 12.943351, 30.052229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236455, 13.358183, 30.880219>,  <12.853586, 13.119145, 30.464785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236455, 13.358183, 30.880219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.096208, 13.121300, 30.590017>,  <12.012059, 12.979170, 30.415897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.096208, 13.121300, 30.590017>,  <12.236455, 13.358183, 30.880219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096208, 13.121300, 30.590017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631403, -0.422658, 0.650146,
		-0.691662, 0.686039, -0.225731,
		-0.350619, -0.592209, -0.725503,
		11.991022, 12.943637, 30.372366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600886, 13.151620, 31.189037>,  <12.236455, 13.358183, 30.880219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600886, 13.151620, 31.189037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.721037, 12.895691, 30.906080>,  <11.793127, 12.742134, 30.736307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.721037, 12.895691, 30.906080>,  <11.600886, 13.151620, 31.189037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721037, 12.895691, 30.906080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508918, -0.734760, 0.448476,
		-0.806707, 0.225292, -0.546321,
		0.300377, -0.639822, -0.707391,
		11.811151, 12.703745, 30.693863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.102975, 13.600580, 31.693680>,  <11.600886, 13.151620, 31.189037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.102975, 13.600580, 31.693680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.019780, 13.335774, 31.981701>,  <10.969863, 13.176890, 32.154514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.019780, 13.335774, 31.981701>,  <11.102975, 13.600580, 31.693680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.019780, 13.335774, 31.981701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154845, -0.749154, -0.644043,
		0.965797, -0.022456, 0.258324,
		-0.207987, -0.662016, 0.720053,
		10.957384, 13.137170, 32.197716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.296365, 13.838573, 31.008526>,  <11.102975, 13.600580, 31.693680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.296365, 13.838573, 31.008526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.991757, 14.097767, 31.002800>,  <10.808992, 14.253284, 30.999365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.991757, 14.097767, 31.002800>,  <11.296365, 13.838573, 31.008526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.991757, 14.097767, 31.002800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415562, 0.471189, -0.778004,
		-0.497390, -0.598413, -0.628097,
		-0.761519, 0.647984, -0.014313,
		10.763302, 14.292162, 30.998507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.152358, 13.789705, 30.302647>,  <11.296365, 13.838573, 31.008526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.152358, 13.789705, 30.302647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.944348, 14.111231, 30.418203>,  <10.819542, 14.304146, 30.487537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.944348, 14.111231, 30.418203>,  <11.152358, 13.789705, 30.302647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.944348, 14.111231, 30.418203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194299, 0.440676, -0.876386,
		-0.831758, -0.399611, -0.385343,
		-0.520025, 0.803813, 0.288892,
		10.788341, 14.352375, 30.504871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601458, 13.948641, 29.813696>,  <11.152358, 13.789705, 30.302647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601458, 13.948641, 29.813696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.696299, 14.280212, 30.016342>,  <10.753203, 14.479156, 30.137930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.696299, 14.280212, 30.016342>,  <10.601458, 13.948641, 29.813696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.696299, 14.280212, 30.016342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102360, 0.539900, -0.835482,
		-0.966077, 0.146238, 0.212861,
		0.237103, 0.828929, 0.506616,
		10.767429, 14.528891, 30.168327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.064047, 14.396063, 29.591593>,  <10.601458, 13.948641, 29.813696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.064047, 14.396063, 29.591593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.393887, 14.581117, 29.721827>,  <10.591790, 14.692149, 29.799967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.393887, 14.581117, 29.721827>,  <10.064047, 14.396063, 29.591593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.393887, 14.581117, 29.721827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071497, 0.656136, -0.751248,
		-0.561180, 0.596201, 0.574127,
		0.824600, 0.462633, 0.325584,
		10.641267, 14.719907, 29.819502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.792637, 14.998245, 29.450739>,  <10.064047, 14.396063, 29.591593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.792637, 14.998245, 29.450739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.189273, 15.024991, 29.495064>,  <10.427255, 15.041039, 29.521658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.189273, 15.024991, 29.495064>,  <9.792637, 14.998245, 29.450739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.189273, 15.024991, 29.495064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049749, 0.593506, -0.803290,
		-0.119479, 0.802047, 0.585188,
		0.991590, 0.066864, 0.110813,
		10.486750, 15.045051, 29.528307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.936622, 15.692065, 29.338955>,  <9.792637, 14.998245, 29.450739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.936622, 15.692065, 29.338955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.298138, 15.528077, 29.289822>,  <10.515047, 15.429685, 29.260342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.298138, 15.528077, 29.289822>,  <9.936622, 15.692065, 29.338955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298138, 15.528077, 29.289822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224239, 0.698083, -0.679998,
		0.364527, 0.587032, 0.722851,
		0.903790, -0.409969, -0.122835,
		10.569275, 15.405087, 29.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.290767, 16.149714, 28.877777>,  <9.936622, 15.692065, 29.338955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.290767, 16.149714, 28.877777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.538089, 15.835343, 28.876017>,  <10.686482, 15.646721, 28.874960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.538089, 15.835343, 28.876017>,  <10.290767, 16.149714, 28.877777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.538089, 15.835343, 28.876017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350542, 0.280784, -0.893466,
		0.703433, 0.550892, 0.449110,
		0.618306, -0.785925, -0.004402,
		10.723580, 15.599566, 28.874697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.935871, 16.450874, 28.531410>,  <10.290767, 16.149714, 28.877777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.935871, 16.450874, 28.531410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.902202, 16.053444, 28.501165>,  <10.882000, 15.814985, 28.483019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.902202, 16.053444, 28.501165>,  <10.935871, 16.450874, 28.531410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.902202, 16.053444, 28.501165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021551, 0.077681, -0.996745,
		0.996218, -0.082269, -0.027951,
		-0.084173, -0.993578, -0.075614,
		10.876949, 15.755370, 28.478481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.420677, 16.294622, 28.132875>,  <10.935871, 16.450874, 28.531410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.420677, 16.294622, 28.132875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.232381, 15.941758, 28.138481>,  <11.119403, 15.730040, 28.141846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.232381, 15.941758, 28.138481>,  <11.420677, 16.294622, 28.132875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232381, 15.941758, 28.138481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087059, -0.062254, -0.994256,
		0.877966, -0.466816, 0.106106,
		-0.470740, -0.882160, 0.014016,
		11.091159, 15.677110, 28.142687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819424, 15.945750, 27.655117>,  <11.420677, 16.294622, 28.132875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819424, 15.945750, 27.655117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.461942, 15.767514, 27.676054>,  <11.247453, 15.660572, 27.688616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.461942, 15.767514, 27.676054>,  <11.819424, 15.945750, 27.655117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461942, 15.767514, 27.676054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016183, -0.084568, -0.996286,
		0.448362, -0.891233, 0.068368,
		-0.893705, -0.445591, 0.052340,
		11.193830, 15.633837, 27.691755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.817592, 15.395751, 27.188393>,  <11.819424, 15.945750, 27.655117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.817592, 15.395751, 27.188393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.425241, 15.458429, 27.234564>,  <11.189830, 15.496037, 27.262266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.425241, 15.458429, 27.234564>,  <11.817592, 15.395751, 27.188393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.425241, 15.458429, 27.234564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109571, 0.045542, -0.992935,
		-0.160847, -0.986596, -0.027502,
		-0.980878, 0.156697, 0.115428,
		11.130977, 15.505438, 27.269192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488015, 14.903436, 26.749390>,  <11.817592, 15.395751, 27.188393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488015, 14.903436, 26.749390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.240493, 15.212117, 26.808117>,  <11.091980, 15.397326, 26.843353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.240493, 15.212117, 26.808117>,  <11.488015, 14.903436, 26.749390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.240493, 15.212117, 26.808117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102935, 0.105629, -0.989064,
		-0.778771, -0.627150, 0.014072,
		-0.618805, 0.771703, 0.146816,
		11.054852, 15.443628, 26.852161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912071, 14.870026, 26.279024>,  <11.488015, 14.903436, 26.749390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912071, 14.870026, 26.279024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.922177, 15.258804, 26.372562>,  <10.928241, 15.492071, 26.428684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.922177, 15.258804, 26.372562>,  <10.912071, 14.870026, 26.279024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922177, 15.258804, 26.372562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064374, 0.235014, -0.969858,
		-0.997606, 0.009451, 0.068506,
		0.025266, 0.971946, 0.233843,
		10.929757, 15.550388, 26.442715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.604833, 15.012597, 25.631842>,  <10.912071, 14.870026, 26.279024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.604833, 15.012597, 25.631842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.763863, 15.344954, 25.787561>,  <10.859281, 15.544368, 25.880993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.763863, 15.344954, 25.787561>,  <10.604833, 15.012597, 25.631842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.763863, 15.344954, 25.787561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101539, 0.461508, -0.881306,
		-0.911934, 0.310855, 0.267852,
		0.397574, 0.830891, 0.389301,
		10.883135, 15.594221, 25.904352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.964859, 15.196874, 25.425779>,  <10.604833, 15.012597, 25.631842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.964859, 15.196874, 25.425779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.717704, 15.011787, 25.171501>,  <9.569410, 14.900736, 25.018934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.717704, 15.011787, 25.171501>,  <9.964859, 15.196874, 25.425779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717704, 15.011787, 25.171501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376643, -0.535513, 0.755887,
		-0.690183, 0.706484, 0.156609,
		-0.617889, -0.462715, -0.635695,
		9.532337, 14.872973, 24.980793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.327024, 15.171777, 25.863644>,  <9.964859, 15.196874, 25.425779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.327024, 15.171777, 25.863644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.319634, 14.904498, 25.566141>,  <9.315200, 14.744131, 25.387640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.319634, 14.904498, 25.566141>,  <9.327024, 15.171777, 25.863644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.319634, 14.904498, 25.566141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352536, -0.691752, 0.630235,
		-0.935616, 0.273845, -0.222783,
		-0.018476, -0.668197, -0.743755,
		9.314092, 14.704039, 25.343014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.693657, 14.972627, 25.895088>,  <9.327024, 15.171777, 25.863644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.693657, 14.972627, 25.895088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.917108, 14.699038, 25.707420>,  <9.051178, 14.534884, 25.594820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.917108, 14.699038, 25.707420>,  <8.693657, 14.972627, 25.895088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.917108, 14.699038, 25.707420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273662, -0.685976, 0.674201,
		-0.782974, -0.248232, -0.570380,
		0.558625, -0.683973, -0.469169,
		9.084696, 14.493846, 25.566669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.269398, 14.394634, 25.919971>,  <8.693657, 14.972627, 25.895088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.269398, 14.394634, 25.919971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.633961, 14.248241, 25.844717>,  <8.852698, 14.160406, 25.799564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.633961, 14.248241, 25.844717>,  <8.269398, 14.394634, 25.919971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.633961, 14.248241, 25.844717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174570, -0.757875, 0.628610,
		-0.372644, -0.540077, -0.754622,
		0.911407, -0.365982, -0.188137,
		8.907383, 14.138447, 25.788277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.251530, 13.683102, 25.747072>,  <8.269398, 14.394634, 25.919971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.251530, 13.683102, 25.747072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.617819, 13.746509, 25.894760>,  <8.837592, 13.784553, 25.983374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.617819, 13.746509, 25.894760>,  <8.251530, 13.683102, 25.747072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.617819, 13.746509, 25.894760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119003, -0.770673, 0.626020,
		0.383782, -0.617200, -0.686859,
		0.915723, 0.158517, 0.369219,
		8.892536, 13.794064, 26.005526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.506769, 12.987323, 25.890793>,  <8.251530, 13.683102, 25.747072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.506769, 12.987323, 25.890793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.753890, 13.215927, 26.106829>,  <8.902163, 13.353089, 26.236450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.753890, 13.215927, 26.106829>,  <8.506769, 12.987323, 25.890793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.753890, 13.215927, 26.106829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032031, -0.704567, 0.708915,
		0.785681, -0.420669, -0.453588,
		0.617801, 0.571510, 0.540091,
		8.939231, 13.387380, 26.268856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.037665, 12.484908, 26.135715>,  <8.506769, 12.987323, 25.890793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.037665, 12.484908, 26.135715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.037556, 12.798919, 26.383499>,  <9.037490, 12.987326, 26.532169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.037556, 12.798919, 26.383499>,  <9.037665, 12.484908, 26.135715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.037556, 12.798919, 26.383499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128979, -0.614315, 0.778448,
		0.991647, -0.079684, 0.101420,
		-0.000274, 0.785027, 0.619461,
		9.037474, 13.034427, 26.569338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.328472, 11.775117, 25.908566>,  <9.037665, 12.484908, 26.135715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.328472, 11.775117, 25.908566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.007924, 11.535976, 25.900780>,  <8.815595, 11.392492, 25.896109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.007924, 11.535976, 25.900780>,  <9.328472, 11.775117, 25.908566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.007924, 11.535976, 25.900780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040320, 0.086457, -0.995439,
		0.596807, -0.796931, -0.093390,
		-0.801371, -0.597851, -0.019466,
		8.767512, 11.356621, 25.894939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.446256, 11.280296, 25.373114>,  <9.328472, 11.775117, 25.908566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.446256, 11.280296, 25.373114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.047566, 11.299277, 25.399319>,  <8.808353, 11.310666, 25.415043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.047566, 11.299277, 25.399319>,  <9.446256, 11.280296, 25.373114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.047566, 11.299277, 25.399319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059588, 0.117042, -0.991338,
		-0.054711, -0.991993, -0.113831,
		-0.996723, 0.047454, 0.065514,
		8.748549, 11.313513, 25.418972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.190622, 10.846784, 24.850653>,  <9.446256, 11.280296, 25.373114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.190622, 10.846784, 24.850653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.905128, 11.112828, 24.938478>,  <8.733832, 11.272455, 24.991175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.905128, 11.112828, 24.938478>,  <9.190622, 10.846784, 24.850653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.905128, 11.112828, 24.938478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119880, 0.192848, -0.973878,
		-0.690080, -0.721412, -0.057909,
		-0.713735, 0.665112, 0.219564,
		8.691008, 11.312362, 25.004347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.654640, 10.646051, 24.415230>,  <9.190622, 10.846784, 24.850653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.654640, 10.646051, 24.415230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.624197, 11.026833, 24.533884>,  <8.605931, 11.255301, 24.605076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.624197, 11.026833, 24.533884>,  <8.654640, 10.646051, 24.415230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.624197, 11.026833, 24.533884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231270, 0.272530, -0.933939,
		-0.969908, -0.139683, 0.199417,
		-0.076109, 0.951954, 0.296634,
		8.601364, 11.312419, 24.622873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.154929, 10.964590, 23.892809>,  <8.654640, 10.646051, 24.415230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.154929, 10.964590, 23.892809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.298547, 11.281157, 24.090694>,  <8.384717, 11.471098, 24.209427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.298547, 11.281157, 24.090694>,  <8.154929, 10.964590, 23.892809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.298547, 11.281157, 24.090694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084386, 0.500362, -0.861694,
		-0.929498, 0.351132, 0.112867,
		0.359043, 0.791419, 0.494716,
		8.406260, 11.518583, 24.239109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.108636, 11.532857, 23.447796>,  <8.154929, 10.964590, 23.892809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.108636, 11.532857, 23.447796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.307183, 11.758359, 23.711857>,  <8.426311, 11.893660, 23.870293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.307183, 11.758359, 23.711857>,  <8.108636, 11.532857, 23.447796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.307183, 11.758359, 23.711857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303796, 0.599555, -0.740433,
		-0.813219, 0.568079, 0.126334,
		0.496369, 0.563754, 0.660150,
		8.456094, 11.927485, 23.909903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.901181, 12.255753, 23.476557>,  <8.108636, 11.532857, 23.447796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.901181, 12.255753, 23.476557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.288418, 12.229406, 23.573273>,  <8.520760, 12.213598, 23.631302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.288418, 12.229406, 23.573273>,  <7.901181, 12.255753, 23.476557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.288418, 12.229406, 23.573273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230312, 0.614137, -0.754845,
		-0.098773, 0.786446, 0.609710,
		0.968091, -0.065865, 0.241788,
		8.578845, 12.209647, 23.645809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<10.471310, 9.843581, 29.637472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.489603, 10.242116, 29.608562>,  <10.500579, 10.481236, 29.591217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.489603, 10.242116, 29.608562>,  <10.471310, 9.843581, 29.637472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489603, 10.242116, 29.608562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611141, -0.085136, -0.786930,
		-0.790200, -0.008180, -0.612795,
		0.045734, 0.996336, -0.072273,
		10.503324, 10.541017, 29.586880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.330379, 10.083138, 28.911261>,  <10.471310, 9.843581, 29.637472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.330379, 10.083138, 28.911261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.617167, 10.288820, 29.099535>,  <10.789241, 10.412230, 29.212500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.617167, 10.288820, 29.099535>,  <10.330379, 10.083138, 28.911261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.617167, 10.288820, 29.099535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543880, 0.009742, -0.839106,
		-0.436058, 0.857612, -0.272681,
		0.716971, 0.514205, 0.470686,
		10.832259, 10.443082, 29.240742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.387260, 10.737117, 28.531139>,  <10.330379, 10.083138, 28.911261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.387260, 10.737117, 28.531139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.706417, 10.624660, 28.744429>,  <10.897911, 10.557185, 28.872402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.706417, 10.624660, 28.744429>,  <10.387260, 10.737117, 28.531139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706417, 10.624660, 28.744429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592735, 0.204951, -0.778884,
		0.109694, 0.937525, 0.330173,
		0.797892, -0.281144, 0.533222,
		10.945785, 10.540317, 28.904396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.782753, 11.246238, 28.319468>,  <10.387260, 10.737117, 28.531139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.782753, 11.246238, 28.319468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.030792, 10.980501, 28.486383>,  <11.179616, 10.821059, 28.586533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.030792, 10.980501, 28.486383>,  <10.782753, 11.246238, 28.319468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.030792, 10.980501, 28.486383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665565, 0.163890, -0.728123,
		0.415333, 0.729241, 0.543790,
		0.620099, -0.664340, 0.417288,
		11.216822, 10.781199, 28.611570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.460008, 11.521141, 28.315260>,  <10.782753, 11.246238, 28.319468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.460008, 11.521141, 28.315260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.475722, 11.122034, 28.293665>,  <11.485151, 10.882569, 28.280708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.475722, 11.122034, 28.293665>,  <11.460008, 11.521141, 28.315260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.475722, 11.122034, 28.293665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669965, 0.066390, -0.739418,
		0.741352, -0.007121, 0.671078,
		0.039288, -0.997768, -0.053989,
		11.487509, 10.822703, 28.277468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.184249, 11.426819, 28.200947>,  <11.460008, 11.521141, 28.315260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.184249, 11.426819, 28.200947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.030186, 11.070978, 28.102755>,  <11.937748, 10.857473, 28.043839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.030186, 11.070978, 28.102755>,  <12.184249, 11.426819, 28.200947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.030186, 11.070978, 28.102755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749144, -0.146057, -0.646104,
		0.538921, -0.432754, 0.722695,
		-0.385159, -0.889602, -0.245482,
		11.914639, 10.804097, 28.029110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.708580, 10.960317, 28.311085>,  <12.184249, 11.426819, 28.200947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.708580, 10.960317, 28.311085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.468496, 10.779956, 28.046831>,  <12.324447, 10.671740, 27.888279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.468496, 10.779956, 28.046831>,  <12.708580, 10.960317, 28.311085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.468496, 10.779956, 28.046831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786336, -0.181490, -0.590540,
		0.146377, -0.873928, 0.463491,
		-0.600209, -0.450901, -0.660635,
		12.288434, 10.644686, 27.848640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.132884, 10.412374, 28.052536>,  <12.708580, 10.960317, 28.311085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.132884, 10.412374, 28.052536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.832160, 10.438253, 27.790056>,  <12.651726, 10.453781, 27.632568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.832160, 10.438253, 27.790056>,  <13.132884, 10.412374, 28.052536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832160, 10.438253, 27.790056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602657, -0.336391, -0.723634,
		-0.267554, -0.939498, 0.213913,
		-0.751811, 0.064695, -0.656198,
		12.606617, 10.457663, 27.593197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.104434, 9.740728, 27.694292>,  <13.132884, 10.412374, 28.052536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.104434, 9.740728, 27.694292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.956822, 10.014978, 27.443298>,  <12.868256, 10.179528, 27.292702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.956822, 10.014978, 27.443298>,  <13.104434, 9.740728, 27.694292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956822, 10.014978, 27.443298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527991, -0.400965, -0.748634,
		-0.764881, -0.607573, -0.214036,
		-0.369029, 0.685625, -0.627484,
		12.846114, 10.220666, 27.255053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.146199, 9.463701, 26.985809>,  <13.104434, 9.740728, 27.694292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.146199, 9.463701, 26.985809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.100019, 9.850847, 26.896448>,  <13.072311, 10.083135, 26.842831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.100019, 9.850847, 26.896448>,  <13.146199, 9.463701, 26.985809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100019, 9.850847, 26.896448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566146, -0.120685, -0.815422,
		-0.816180, -0.220618, -0.534020,
		-0.115449, 0.967865, -0.223403,
		13.065385, 10.141207, 26.829428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.080324, 9.436360, 26.265167>,  <13.146199, 9.463701, 26.985809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.080324, 9.436360, 26.265167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.166813, 9.820037, 26.338053>,  <13.218706, 10.050242, 26.381784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.166813, 9.820037, 26.338053>,  <13.080324, 9.436360, 26.265167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166813, 9.820037, 26.338053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434768, 0.072509, -0.897619,
		-0.874199, 0.273306, -0.401347,
		0.216223, 0.959190, 0.182212,
		13.231680, 10.107794, 26.392717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.029353, 9.751936, 25.618578>,  <13.080324, 9.436360, 26.265167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.029353, 9.751936, 25.618578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.248293, 10.015142, 25.825430>,  <13.379657, 10.173066, 25.949541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.248293, 10.015142, 25.825430>,  <13.029353, 9.751936, 25.618578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248293, 10.015142, 25.825430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641195, 0.067387, -0.764413,
		-0.537844, 0.749983, -0.385032,
		0.547351, 0.658016, 0.517129,
		13.412498, 10.212547, 25.980568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754138, 9.426948, 25.025780>,  <13.029353, 9.751936, 25.618578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754138, 9.426948, 25.025780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.742171, 9.121344, 24.767975>,  <12.734991, 8.937982, 24.613293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.742171, 9.121344, 24.767975>,  <12.754138, 9.426948, 25.025780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742171, 9.121344, 24.767975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586880, -0.508529, 0.630056,
		-0.809121, 0.397101, -0.433167,
		-0.029918, -0.764009, -0.644512,
		12.733196, 8.892141, 24.574621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.048480, 9.393289, 24.754330>,  <12.754138, 9.426948, 25.025780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.048480, 9.393289, 24.754330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.207374, 9.026683, 24.735535>,  <12.302710, 8.806720, 24.724258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.207374, 9.026683, 24.735535>,  <12.048480, 9.393289, 24.754330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207374, 9.026683, 24.735535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645825, -0.315555, 0.695223,
		-0.652008, -0.245820, -0.717257,
		0.397234, -0.916514, -0.046987,
		12.326544, 8.751729, 24.721439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491872, 8.884161, 24.601179>,  <12.048480, 9.393289, 24.754330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491872, 8.884161, 24.601179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.782928, 8.653639, 24.749994>,  <11.957561, 8.515326, 24.839283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.782928, 8.653639, 24.749994>,  <11.491872, 8.884161, 24.601179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.782928, 8.653639, 24.749994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615656, -0.309495, 0.724693,
		-0.302520, -0.756347, -0.580017,
		0.727633, -0.576326, 0.372021,
		12.001220, 8.480747, 24.861605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.210592, 8.209726, 24.693609>,  <11.491872, 8.884161, 24.601179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.210592, 8.209726, 24.693609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.542230, 8.200987, 24.917082>,  <11.741212, 8.195744, 25.051165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.542230, 8.200987, 24.917082>,  <11.210592, 8.209726, 24.693609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542230, 8.200987, 24.917082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514574, -0.420621, 0.747189,
		0.218668, -0.906973, -0.359977,
		0.829094, -0.021848, 0.558681,
		11.790958, 8.194432, 25.084686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112445, 7.589023, 25.200695>,  <11.210592, 8.209726, 24.693609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112445, 7.589023, 25.200695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.459424, 7.748565, 25.319658>,  <11.667611, 7.844290, 25.391035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.459424, 7.748565, 25.319658>,  <11.112445, 7.589023, 25.200695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.459424, 7.748565, 25.319658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165639, -0.332151, 0.928569,
		0.469148, -0.854746, -0.222058,
		0.867447, 0.398855, 0.297407,
		11.719658, 7.868221, 25.408880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.570679, 7.041736, 25.433502>,  <11.112445, 7.589023, 25.200695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.570679, 7.041736, 25.433502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.637712, 7.379358, 25.637260>,  <11.677931, 7.581932, 25.759516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.637712, 7.379358, 25.637260>,  <11.570679, 7.041736, 25.433502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.637712, 7.379358, 25.637260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446904, -0.395523, 0.802395,
		0.878745, -0.362119, 0.310930,
		0.167582, 0.844056, 0.509397,
		11.687986, 7.632575, 25.790079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750116, 6.865781, 26.180120>,  <11.570679, 7.041736, 25.433502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.750116, 6.865781, 26.180120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.629985, 7.243401, 26.234636>,  <11.557906, 7.469972, 26.267345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.629985, 7.243401, 26.234636>,  <11.750116, 6.865781, 26.180120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629985, 7.243401, 26.234636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433195, -0.262300, 0.862288,
		0.849791, 0.199930, 0.487733,
		-0.300330, 0.944048, 0.136292,
		11.539886, 7.526615, 26.275524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721877, 6.988609, 26.869953>,  <11.750116, 6.865781, 26.180120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.721877, 6.988609, 26.869953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.479455, 7.291300, 26.771923>,  <11.334002, 7.472914, 26.713104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.479455, 7.291300, 26.771923>,  <11.721877, 6.988609, 26.869953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.479455, 7.291300, 26.771923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529865, -0.154286, 0.833930,
		0.593245, 0.635264, 0.494469,
		-0.606055, 0.756727, -0.245075,
		11.297638, 7.518318, 26.698400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.508582, 7.259713, 27.500664>,  <11.721877, 6.988609, 26.869953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.508582, 7.259713, 27.500664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.251216, 7.425687, 27.243341>,  <11.096796, 7.525272, 27.088947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.251216, 7.425687, 27.243341>,  <11.508582, 7.259713, 27.500664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251216, 7.425687, 27.243341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745259, -0.147479, 0.650261,
		0.174943, 0.897818, 0.404126,
		-0.643416, 0.414937, -0.643307,
		11.058191, 7.550169, 27.050350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.083439, 7.694453, 27.895241>,  <11.508582, 7.259713, 27.500664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.083439, 7.694453, 27.895241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.875161, 7.650883, 27.556534>,  <10.750195, 7.624742, 27.353310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.875161, 7.650883, 27.556534>,  <11.083439, 7.694453, 27.895241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.875161, 7.650883, 27.556534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841542, -0.101602, 0.530550,
		-0.143823, 0.988844, -0.038760,
		-0.520693, -0.108923, -0.846767,
		10.718953, 7.618206, 27.302504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551219, 8.188855, 27.951660>,  <11.083439, 7.694453, 27.895241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551219, 8.188855, 27.951660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.416959, 7.909581, 27.698717>,  <10.336403, 7.742017, 27.546951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.416959, 7.909581, 27.698717>,  <10.551219, 8.188855, 27.951660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.416959, 7.909581, 27.698717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876475, -0.014493, 0.481229,
		-0.345152, 0.715770, -0.607077,
		-0.335651, -0.698185, -0.632357,
		10.316263, 7.700126, 27.509010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.827632, 8.352583, 27.895674>,  <10.551219, 8.188855, 27.951660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.827632, 8.352583, 27.895674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.837335, 7.980085, 27.750240>,  <9.843156, 7.756587, 27.662979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.837335, 7.980085, 27.750240>,  <9.827632, 8.352583, 27.895674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.837335, 7.980085, 27.750240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865410, -0.201633, 0.458705,
		-0.500477, 0.303524, -0.810799,
		0.024256, -0.931245, -0.363586,
		9.844611, 7.700712, 27.641165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.208076, 8.256742, 27.627995>,  <9.827632, 8.352583, 27.895674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.208076, 8.256742, 27.627995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.351780, 7.899179, 27.735222>,  <9.438003, 7.684641, 27.799559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.351780, 7.899179, 27.735222>,  <9.208076, 8.256742, 27.627995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.351780, 7.899179, 27.735222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839946, -0.184534, 0.510331,
		-0.406722, -0.408502, -0.817131,
		0.359260, -0.893909, 0.268066,
		9.459558, 7.631007, 27.815641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.750902, 7.813320, 27.399576>,  <9.208076, 8.256742, 27.627995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.750902, 7.813320, 27.399576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.951381, 7.663231, 27.711477>,  <9.071668, 7.573178, 27.898617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.951381, 7.663231, 27.711477>,  <8.750902, 7.813320, 27.399576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.951381, 7.663231, 27.711477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865219, -0.232007, 0.444488,
		0.014126, -0.897431, -0.440929,
		0.501196, -0.375221, 0.779751,
		9.101740, 7.550665, 27.945402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.743644, 8.587613, 27.094940>,  <8.750902, 7.813320, 27.399576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.743644, 8.587613, 27.094940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.744929, 8.831211, 27.412207>,  <8.745701, 8.977370, 27.602568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.744929, 8.831211, 27.412207>,  <8.743644, 8.587613, 27.094940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.744929, 8.831211, 27.412207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021464, 0.792947, -0.608913,
		-0.999765, 0.018982, -0.010523,
		0.003214, 0.608996, 0.793167,
		8.745893, 9.013909, 27.650156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.236209, 8.962591, 26.961561>,  <8.743644, 8.587613, 27.094940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.236209, 8.962591, 26.961561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.487616, 9.191465, 27.172302>,  <8.638459, 9.328790, 27.298746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.487616, 9.191465, 27.172302>,  <8.236209, 8.962591, 26.961561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.487616, 9.191465, 27.172302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309280, 0.805364, -0.505701,
		-0.713661, 0.154898, 0.683150,
		0.628517, 0.572184, 0.526851,
		8.676170, 9.363121, 27.330357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.886780, 9.574709, 27.210419>,  <8.236209, 8.962591, 26.961561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.886780, 9.574709, 27.210419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.264945, 9.703864, 27.228035>,  <8.491844, 9.781357, 27.238604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.264945, 9.703864, 27.228035>,  <7.886780, 9.574709, 27.210419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.264945, 9.703864, 27.228035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269067, 0.849678, -0.453488,
		-0.183844, 0.416883, 0.890174,
		0.945412, 0.322888, 0.044039,
		8.548569, 9.800731, 27.241247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.830178, 10.272670, 27.296959>,  <7.886780, 9.574709, 27.210419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.830178, 10.272670, 27.296959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.211685, 10.233054, 27.183455>,  <8.440589, 10.209285, 27.115353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.211685, 10.233054, 27.183455>,  <7.830178, 10.272670, 27.296959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.211685, 10.233054, 27.183455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074921, 0.835991, -0.543605,
		0.291059, 0.539732, 0.789920,
		0.953767, -0.099039, -0.283760,
		8.497815, 10.203342, 27.098326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.037647, 10.946030, 27.249794>,  <7.830178, 10.272670, 27.296959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.037647, 10.946030, 27.249794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.297298, 10.749379, 27.017609>,  <8.453089, 10.631389, 26.878298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.297298, 10.749379, 27.017609>,  <8.037647, 10.946030, 27.249794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.297298, 10.749379, 27.017609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062027, 0.726333, -0.684538,
		0.758147, 0.480358, 0.440988,
		0.649128, -0.491627, -0.580462,
		8.492037, 10.601892, 26.843470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.510294, 11.448613, 27.146633>,  <8.037647, 10.946030, 27.249794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.510294, 11.448613, 27.146633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.536093, 11.178086, 26.853121>,  <8.551572, 11.015770, 26.677013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.536093, 11.178086, 26.853121>,  <8.510294, 11.448613, 27.146633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.536093, 11.178086, 26.853121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009754, 0.734850, -0.678160,
		0.997870, 0.050897, 0.040799,
		0.064497, -0.676318, -0.733781,
		8.555442, 10.975191, 26.632986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.119841, 11.567411, 26.798485>,  <8.510294, 11.448613, 27.146633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.119841, 11.567411, 26.798485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.869020, 11.367664, 26.559340>,  <8.718527, 11.247816, 26.415854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.869020, 11.367664, 26.559340>,  <9.119841, 11.567411, 26.798485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.869020, 11.367664, 26.559340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093086, 0.713961, -0.693971,
		0.773398, -0.490806, -0.401204,
		-0.627049, -0.499370, -0.597863,
		8.680903, 11.217854, 26.379982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.454382, 12.279219, 26.810732>,  <9.119841, 11.567411, 26.798485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.454382, 12.279219, 26.810732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.248806, 12.599118, 26.934841>,  <9.125461, 12.791058, 27.009306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.248806, 12.599118, 26.934841>,  <9.454382, 12.279219, 26.810732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.248806, 12.599118, 26.934841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015570, -0.352939, 0.935517,
		0.857685, 0.485630, 0.168938,
		-0.513939, 0.799748, 0.310272,
		9.094625, 12.839043, 27.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.864088, 12.595803, 27.411974>,  <9.454382, 12.279219, 26.810732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.864088, 12.595803, 27.411974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.490856, 12.733085, 27.455004>,  <9.266917, 12.815454, 27.480822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.490856, 12.733085, 27.455004>,  <9.864088, 12.595803, 27.411974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.490856, 12.733085, 27.455004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029612, -0.224777, 0.973960,
		0.358446, 0.911969, 0.199572,
		-0.933081, 0.343203, 0.107575,
		9.210932, 12.836045, 27.487276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.825190, 12.962191, 28.118927>,  <9.864088, 12.595803, 27.411974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.825190, 12.962191, 28.118927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.440125, 12.890723, 28.037580>,  <9.209085, 12.847843, 27.988771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.440125, 12.890723, 28.037580>,  <9.825190, 12.962191, 28.118927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.440125, 12.890723, 28.037580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208672, 0.011209, 0.977921,
		-0.172444, 0.983846, -0.048073,
		-0.962663, -0.178668, -0.203368,
		9.151325, 12.837123, 27.976570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.421507, 13.641351, 28.221771>,  <9.825190, 12.962191, 28.118927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.421507, 13.641351, 28.221771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.157296, 13.342745, 28.253824>,  <8.998770, 13.163582, 28.273056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.157296, 13.342745, 28.253824>,  <9.421507, 13.641351, 28.221771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.157296, 13.342745, 28.253824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247110, 0.316941, 0.915688,
		-0.708972, 0.585035, -0.393819,
		-0.660527, -0.746514, 0.080134,
		8.959138, 13.118791, 28.277864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.888471, 13.877949, 28.662992>,  <9.421507, 13.641351, 28.221771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.888471, 13.877949, 28.662992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.814932, 13.484879, 28.653595>,  <8.770808, 13.249038, 28.647957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.814932, 13.484879, 28.653595>,  <8.888471, 13.877949, 28.662992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.814932, 13.484879, 28.653595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373287, 0.047685, 0.926490,
		-0.909317, 0.179103, -0.375586,
		-0.183847, -0.982674, -0.023496,
		8.759778, 13.190077, 28.646545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.195861, 13.841370, 28.989813>,  <8.888471, 13.877949, 28.662992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.195861, 13.841370, 28.989813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.360447, 13.478395, 29.023888>,  <8.459198, 13.260611, 29.044333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.360447, 13.478395, 29.023888>,  <8.195861, 13.841370, 28.989813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.360447, 13.478395, 29.023888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031127, 0.079421, 0.996355,
		-0.910894, -0.412616, 0.004433,
		0.411464, -0.907436, 0.085188,
		8.483886, 13.206164, 29.049444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.840824, 13.506831, 29.572218>,  <8.195861, 13.841370, 28.989813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.840824, 13.506831, 29.572218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.181932, 13.303160, 29.525707>,  <8.386598, 13.180957, 29.497801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.181932, 13.303160, 29.525707>,  <7.840824, 13.506831, 29.572218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.181932, 13.303160, 29.525707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061392, -0.123360, 0.990461,
		-0.518665, -0.851774, -0.073938,
		0.852770, -0.509179, -0.116275,
		8.437763, 13.150406, 29.490826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.804615, 12.946568, 30.057255>,  <7.840824, 13.506831, 29.572218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.804615, 12.946568, 30.057255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.197073, 12.966879, 29.982664>,  <8.432548, 12.979065, 29.937910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.197073, 12.966879, 29.982664>,  <7.804615, 12.946568, 30.057255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.197073, 12.966879, 29.982664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189409, -0.060773, 0.980016,
		0.038431, -0.996859, -0.069245,
		0.981146, 0.050779, -0.186478,
		8.491417, 12.982112, 29.926720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.151175, 12.344754, 30.370277>,  <7.804615, 12.946568, 30.057255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.151175, 12.344754, 30.370277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.411808, 12.645306, 30.328575>,  <8.568189, 12.825636, 30.303555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.411808, 12.645306, 30.328575>,  <8.151175, 12.344754, 30.370277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.411808, 12.645306, 30.328575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175332, -0.015461, 0.984388,
		0.738036, -0.659691, -0.141815,
		0.651584, 0.751378, -0.104254,
		8.607284, 12.870719, 30.297298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.599129, 15.551440, 16.328526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.975683, 15.626987, 16.440327>,  <15.201615, 15.672316, 16.507408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.975683, 15.626987, 16.440327>,  <14.599129, 15.551440, 16.328526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975683, 15.626987, 16.440327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163664, -0.468801, 0.868009,
		0.294971, -0.862876, -0.410412,
		0.941385, 0.188868, 0.279505,
		15.258099, 15.683647, 16.524178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898320, 14.923795, 16.349495>,  <14.599129, 15.551440, 16.328526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898320, 14.923795, 16.349495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091080, 15.162671, 16.605974>,  <15.206736, 15.305997, 16.759863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091080, 15.162671, 16.605974>,  <14.898320, 14.923795, 16.349495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091080, 15.162671, 16.605974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294190, -0.579024, 0.760384,
		0.825364, -0.555062, -0.103343,
		0.481898, 0.597191, 0.641200,
		15.235649, 15.341828, 16.798334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893526, 14.526846, 16.981674>,  <14.898320, 14.923795, 16.349495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893526, 14.526846, 16.981674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969351, 14.896811, 17.113495>,  <15.014846, 15.118790, 17.192587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969351, 14.896811, 17.113495>,  <14.893526, 14.526846, 16.981674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969351, 14.896811, 17.113495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621317, -0.146896, 0.769667,
		0.760284, -0.350654, 0.546818,
		0.189562, 0.924913, 0.329550,
		15.026219, 15.174284, 17.212360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.044404, 14.507977, 17.678274>,  <14.893526, 14.526846, 16.981674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.044404, 14.507977, 17.678274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969126, 14.897294, 17.625692>,  <14.923959, 15.130885, 17.594143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.969126, 14.897294, 17.625692>,  <15.044404, 14.507977, 17.678274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969126, 14.897294, 17.625692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553340, 0.005506, 0.832938,
		0.811417, 0.229495, 0.537526,
		-0.188195, 0.973294, -0.131456,
		14.912667, 15.189282, 17.586256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201521, 14.823767, 18.221498>,  <15.044404, 14.507977, 17.678274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201521, 14.823767, 18.221498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908194, 15.047634, 18.067089>,  <14.732197, 15.181954, 17.974443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.908194, 15.047634, 18.067089>,  <15.201521, 14.823767, 18.221498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908194, 15.047634, 18.067089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514421, -0.085506, 0.853264,
		0.444538, 0.824293, 0.350609,
		-0.733319, 0.559669, -0.386023,
		14.688198, 15.215535, 17.951283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956656, 15.368540, 18.765068>,  <15.201521, 14.823767, 18.221498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956656, 15.368540, 18.765068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653731, 15.348740, 18.504597>,  <14.471977, 15.336860, 18.348314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653731, 15.348740, 18.504597>,  <14.956656, 15.368540, 18.765068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653731, 15.348740, 18.504597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653055, 0.059112, 0.755000,
		0.001119, 0.997024, -0.077093,
		-0.757310, -0.049501, -0.651177,
		14.426538, 15.333889, 18.309244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467062, 15.741069, 19.135801>,  <14.956656, 15.368540, 18.765068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467062, 15.741069, 19.135801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247880, 15.559055, 18.855034>,  <14.116371, 15.449847, 18.686573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247880, 15.559055, 18.855034>,  <14.467062, 15.741069, 19.135801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247880, 15.559055, 18.855034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822590, 0.140678, 0.550959,
		-0.151960, 0.879292, -0.451392,
		-0.547955, -0.455034, -0.701918,
		14.083493, 15.422545, 18.644459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965405, 16.184849, 18.995890>,  <14.467062, 15.741069, 19.135801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965405, 16.184849, 18.995890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823259, 15.841099, 18.848816>,  <13.737971, 15.634849, 18.760572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823259, 15.841099, 18.848816>,  <13.965405, 16.184849, 18.995890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823259, 15.841099, 18.848816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872435, 0.163749, 0.460482,
		-0.335519, 0.484420, -0.807938,
		-0.355366, -0.859374, -0.367684,
		13.716650, 15.583286, 18.738510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251212, 16.339888, 18.716499>,  <13.965405, 16.184849, 18.995890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251212, 16.339888, 18.716499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260272, 15.942799, 18.763815>,  <13.265708, 15.704546, 18.792204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260272, 15.942799, 18.763815>,  <13.251212, 16.339888, 18.716499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260272, 15.942799, 18.763815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936144, 0.020467, 0.351020,
		-0.350886, -0.118687, -0.928866,
		0.022651, -0.992721, 0.118289,
		13.267067, 15.644982, 18.799301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.552258, 15.954978, 18.423218>,  <13.251212, 16.339888, 18.716499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.552258, 15.954978, 18.423218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726542, 15.731698, 18.705656>,  <12.831113, 15.597731, 18.875118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726542, 15.731698, 18.705656>,  <12.552258, 15.954978, 18.423218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.726542, 15.731698, 18.705656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789438, 0.139838, 0.597689,
		-0.432368, -0.817838, -0.379735,
		0.435712, -0.558199, 0.706094,
		12.857256, 15.564239, 18.917484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.015848, 15.396997, 18.657688>,  <12.552258, 15.954978, 18.423218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.015848, 15.396997, 18.657688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.274999, 15.467844, 18.954037>,  <12.430489, 15.510352, 19.131845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.274999, 15.467844, 18.954037>,  <12.015848, 15.396997, 18.657688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274999, 15.467844, 18.954037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754185, 0.012443, 0.656545,
		0.107069, -0.984110, 0.141644,
		0.647875, 0.177121, 0.740869,
		12.469361, 15.520979, 19.176298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702974, 15.095977, 19.149586>,  <12.015848, 15.396997, 18.657688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702974, 15.095977, 19.149586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.975734, 15.278497, 19.378254>,  <12.139389, 15.388009, 19.515455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.975734, 15.278497, 19.378254>,  <11.702974, 15.095977, 19.149586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.975734, 15.278497, 19.378254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641161, -0.003270, 0.767399,
		0.352035, -0.889819, 0.290332,
		0.681898, 0.456301, 0.571669,
		12.180303, 15.415387, 19.549755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.787257, 14.340237, 19.270292>,  <11.702974, 15.095977, 19.149586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.787257, 14.340237, 19.270292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.444225, 14.258225, 19.081604>,  <11.238406, 14.209019, 18.968391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.444225, 14.258225, 19.081604>,  <11.787257, 14.340237, 19.270292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.444225, 14.258225, 19.081604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459685, 0.105942, -0.881740,
		0.230759, -0.973005, 0.003395,
		-0.857578, -0.205030, -0.471723,
		11.186952, 14.196717, 18.940086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.044058, 13.957529, 18.687996>,  <11.787257, 14.340237, 19.270292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.044058, 13.957529, 18.687996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.683654, 14.104984, 18.596529>,  <11.467412, 14.193458, 18.541649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.683654, 14.104984, 18.596529>,  <12.044058, 13.957529, 18.687996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.683654, 14.104984, 18.596529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267198, 0.056349, -0.961993,
		-0.341742, -0.927864, -0.149270,
		-0.901009, 0.368638, -0.228666,
		11.413351, 14.215575, 18.527929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.900587, 13.686494, 18.033226>,  <12.044058, 13.957529, 18.687996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.900587, 13.686494, 18.033226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637042, 13.986094, 18.061228>,  <11.478915, 14.165854, 18.078030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637042, 13.986094, 18.061228>,  <11.900587, 13.686494, 18.033226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.637042, 13.986094, 18.061228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207938, 0.270764, -0.939920,
		-0.722954, -0.604720, -0.334141,
		-0.658862, 0.749000, 0.070006,
		11.439384, 14.210793, 18.082230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446912, 13.580249, 17.516901>,  <11.900587, 13.686494, 18.033226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446912, 13.580249, 17.516901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393946, 13.968518, 17.597158>,  <11.362166, 14.201480, 17.645313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.393946, 13.968518, 17.597158>,  <11.446912, 13.580249, 17.516901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393946, 13.968518, 17.597158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002848, 0.202798, -0.979216,
		-0.991190, -0.129091, -0.029618,
		-0.132415, 0.970674, 0.200644,
		11.354221, 14.259721, 17.657352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.756152, 13.862375, 17.300846>,  <11.446912, 13.580249, 17.516901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.756152, 13.862375, 17.300846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.020368, 14.162218, 17.317713>,  <11.178897, 14.342124, 17.327833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.020368, 14.162218, 17.317713>,  <10.756152, 13.862375, 17.300846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.020368, 14.162218, 17.317713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125481, 0.165598, -0.978178,
		-0.740232, 0.640833, 0.203446,
		0.660539, 0.749607, 0.042169,
		11.218530, 14.387100, 17.330364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.449495, 14.401845, 16.902651>,  <10.756152, 13.862375, 17.300846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.449495, 14.401845, 16.902651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832871, 14.509016, 16.941854>,  <11.062898, 14.573318, 16.965376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.832871, 14.509016, 16.941854>,  <10.449495, 14.401845, 16.902651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832871, 14.509016, 16.941854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031030, 0.243600, -0.969379,
		-0.283599, 0.932134, 0.225162,
		0.958441, 0.267928, 0.098009,
		11.120403, 14.589395, 16.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504459, 15.057908, 16.559145>,  <10.449495, 14.401845, 16.902651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504459, 15.057908, 16.559145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.871632, 14.903750, 16.596830>,  <11.091935, 14.811256, 16.619442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.871632, 14.903750, 16.596830>,  <10.504459, 15.057908, 16.559145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.871632, 14.903750, 16.596830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173457, 0.176273, -0.968938,
		0.356815, 0.905759, 0.228655,
		0.917930, -0.385393, 0.094213,
		11.147011, 14.788133, 16.625093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.653864, 15.221674, 15.966112>,  <10.504459, 15.057908, 16.559145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.653864, 15.221674, 15.966112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983789, 15.030697, 16.087261>,  <11.181745, 14.916111, 16.159950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983789, 15.030697, 16.087261>,  <10.653864, 15.221674, 15.966112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.983789, 15.030697, 16.087261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453300, 0.238229, -0.858933,
		0.337939, 0.845751, 0.412919,
		0.824813, -0.477443, 0.302873,
		11.231234, 14.887464, 16.178123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.183012, 15.641142, 15.871091>,  <10.653864, 15.221674, 15.966112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.183012, 15.641142, 15.871091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340525, 15.273750, 15.856498>,  <11.435032, 15.053315, 15.847742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340525, 15.273750, 15.856498>,  <11.183012, 15.641142, 15.871091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340525, 15.273750, 15.856498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412213, 0.211926, -0.886097,
		0.821594, 0.333890, 0.462062,
		0.393782, -0.918480, -0.036483,
		11.458659, 14.998206, 15.845552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931630, 15.686337, 15.751251>,  <11.183012, 15.641142, 15.871091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931630, 15.686337, 15.751251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809798, 15.321070, 15.642914>,  <11.736699, 15.101910, 15.577911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809798, 15.321070, 15.642914>,  <11.931630, 15.686337, 15.751251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.809798, 15.321070, 15.642914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524134, 0.076744, -0.848170,
		0.795307, -0.400295, 0.455248,
		-0.304580, -0.913167, -0.270843,
		11.718424, 15.047119, 15.561661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456098, 15.400449, 15.341965>,  <11.931630, 15.686337, 15.751251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456098, 15.400449, 15.341965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128343, 15.181027, 15.275397>,  <11.931690, 15.049375, 15.235456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128343, 15.181027, 15.275397>,  <12.456098, 15.400449, 15.341965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128343, 15.181027, 15.275397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241921, -0.067715, -0.967930,
		0.519693, -0.833369, 0.188191,
		-0.819386, -0.548554, -0.166418,
		11.882526, 15.016461, 15.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.684945, 14.738238, 14.905190>,  <12.456098, 15.400449, 15.341965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.684945, 14.738238, 14.905190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299233, 14.824374, 14.843488>,  <12.067806, 14.876056, 14.806466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299233, 14.824374, 14.843488>,  <12.684945, 14.738238, 14.905190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.299233, 14.824374, 14.843488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178560, 0.098274, -0.979009,
		-0.195661, -0.971581, -0.133215,
		-0.964279, 0.215341, -0.154257,
		12.009950, 14.888976, 14.797211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.528446, 14.318924, 14.284142>,  <12.684945, 14.738238, 14.905190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.528446, 14.318924, 14.284142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223124, 14.577048, 14.296384>,  <12.039930, 14.731923, 14.303728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.223124, 14.577048, 14.296384>,  <12.528446, 14.318924, 14.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223124, 14.577048, 14.296384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018923, 0.025017, -0.999508,
		-0.645760, -0.763509, -0.006884,
		-0.763306, 0.645312, 0.030603,
		11.994132, 14.770642, 14.305565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016740, 14.113596, 13.878395>,  <12.528446, 14.318924, 14.284142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016740, 14.113596, 13.878395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.944569, 14.507026, 13.876350>,  <11.901266, 14.743084, 13.875124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.944569, 14.507026, 13.876350>,  <12.016740, 14.113596, 13.878395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.944569, 14.507026, 13.876350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045615, -0.013558, -0.998867,
		-0.982530, -0.179991, 0.047312,
		-0.180429, 0.983575, -0.005111,
		11.890440, 14.802098, 13.874817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516548, 13.672231, 13.724918>,  <12.016740, 14.113596, 13.878395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516548, 13.672231, 13.724918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593927, 13.605428, 14.111635>,  <12.640355, 13.565346, 14.343665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593927, 13.605428, 14.111635>,  <12.516548, 13.672231, 13.724918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593927, 13.605428, 14.111635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401684, -0.912514, -0.077256,
		0.895113, -0.373399, -0.243609,
		0.193449, -0.167007, 0.966792,
		12.651962, 13.555326, 14.401672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.869430, 12.980856, 13.872095>,  <12.516548, 13.672231, 13.724918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.869430, 12.980856, 13.872095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640865, 13.099525, 14.178161>,  <12.503727, 13.170727, 14.361800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640865, 13.099525, 14.178161>,  <12.869430, 12.980856, 13.872095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640865, 13.099525, 14.178161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531251, -0.844372, -0.069343,
		0.625510, -0.446117, 0.640091,
		-0.571410, 0.296674, 0.765163,
		12.469442, 13.188528, 14.407710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.145229, 12.757903, 14.461003>,  <12.869430, 12.980856, 13.872095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.145229, 12.757903, 14.461003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.788584, 12.705047, 14.634237>,  <12.574596, 12.673333, 14.738177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.788584, 12.705047, 14.634237>,  <13.145229, 12.757903, 14.461003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788584, 12.705047, 14.634237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149889, -0.988679, 0.006924,
		0.427267, 0.071088, 0.901327,
		-0.891614, -0.132140, 0.433085,
		12.521099, 12.665404, 14.764163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191468, 12.365218, 15.112193>,  <13.145229, 12.757903, 14.461003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191468, 12.365218, 15.112193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876546, 12.320014, 14.869746>,  <12.687593, 12.292892, 14.724278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876546, 12.320014, 14.869746>,  <13.191468, 12.365218, 15.112193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.876546, 12.320014, 14.869746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102927, -0.993354, 0.051516,
		-0.607911, -0.021827, 0.793706,
		-0.787306, -0.113010, -0.606117,
		12.640354, 12.286111, 14.687911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513261, 12.770364, 15.672875>,  <13.191468, 12.365218, 15.112193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513261, 12.770364, 15.672875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683791, 12.893891, 16.012964>,  <13.786109, 12.968008, 16.217018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683791, 12.893891, 16.012964>,  <13.513261, 12.770364, 15.672875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683791, 12.893891, 16.012964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141976, -0.905425, 0.400060,
		0.893358, -0.291267, -0.342161,
		0.426326, 0.308818, 0.850223,
		13.811688, 12.986537, 16.268030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797507, 12.218950, 15.891899>,  <13.513261, 12.770364, 15.672875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797507, 12.218950, 15.891899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773172, 12.427694, 16.232243>,  <13.758572, 12.552940, 16.436449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773172, 12.427694, 16.232243>,  <13.797507, 12.218950, 15.891899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773172, 12.427694, 16.232243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293014, -0.824218, 0.484570,
		0.954171, -0.219834, 0.203055,
		-0.060837, 0.521860, 0.850859,
		13.754921, 12.584252, 16.487501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215196, 11.858772, 16.387762>,  <13.797507, 12.218950, 15.891899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215196, 11.858772, 16.387762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.967531, 12.078274, 16.612444>,  <13.818933, 12.209975, 16.747253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.967531, 12.078274, 16.612444>,  <14.215196, 11.858772, 16.387762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.967531, 12.078274, 16.612444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155727, -0.786902, 0.597105,
		0.769669, 0.282231, 0.572674,
		-0.619160, 0.548754, 0.561702,
		13.781783, 12.242900, 16.780954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399269, 11.896412, 17.151728>,  <14.215196, 11.858772, 16.387762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399269, 11.896412, 17.151728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005369, 11.953362, 17.111734>,  <13.769029, 11.987532, 17.087738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005369, 11.953362, 17.111734>,  <14.399269, 11.896412, 17.151728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005369, 11.953362, 17.111734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162660, -0.549605, 0.819437,
		0.061715, 0.823204, 0.564382,
		-0.984750, 0.142374, -0.099983,
		13.709944, 11.996074, 17.081739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.217216, 11.906268, 17.831871>,  <14.399269, 11.896412, 17.151728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.217216, 11.906268, 17.831871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853391, 11.890665, 17.666380>,  <13.635096, 11.881303, 17.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853391, 11.890665, 17.666380>,  <14.217216, 11.906268, 17.831871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853391, 11.890665, 17.666380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359253, -0.426605, 0.830027,
		-0.208876, 0.903597, 0.374011,
		-0.909565, -0.039008, -0.413728,
		13.580522, 11.878963, 17.542261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766629, 12.134285, 18.271008>,  <14.217216, 11.906268, 17.831871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766629, 12.134285, 18.271008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.538024, 11.904243, 18.036869>,  <13.400861, 11.766219, 17.896385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.538024, 11.904243, 18.036869>,  <13.766629, 12.134285, 18.271008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.538024, 11.904243, 18.036869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441302, -0.385986, 0.810104,
		-0.691828, 0.721298, -0.033199,
		-0.571512, -0.575103, -0.585346,
		13.366570, 11.731712, 17.861265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120813, 12.100029, 18.602467>,  <13.766629, 12.134285, 18.271008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120813, 12.100029, 18.602467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166734, 11.785836, 18.359209>,  <13.194285, 11.597321, 18.213255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166734, 11.785836, 18.359209>,  <13.120813, 12.100029, 18.602467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166734, 11.785836, 18.359209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235236, -0.616275, 0.751577,
		-0.965135, 0.056777, -0.255522,
		0.114800, -0.785481, -0.608145,
		13.201174, 11.550192, 18.176765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470852, 11.669658, 18.727167>,  <13.120813, 12.100029, 18.602467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470852, 11.669658, 18.727167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743788, 11.429727, 18.560017>,  <12.907549, 11.285768, 18.459726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743788, 11.429727, 18.560017>,  <12.470852, 11.669658, 18.727167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743788, 11.429727, 18.560017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128501, -0.661135, 0.739181,
		-0.719654, -0.450674, -0.528196,
		0.682338, -0.599828, -0.417876,
		12.948489, 11.249779, 18.434654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165525, 11.061895, 18.801802>,  <12.470852, 11.669658, 18.727167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165525, 11.061895, 18.801802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547239, 10.973670, 18.721111>,  <12.776268, 10.920735, 18.672697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.547239, 10.973670, 18.721111>,  <12.165525, 11.061895, 18.801802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547239, 10.973670, 18.721111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011513, -0.647273, 0.762171,
		-0.298679, -0.729650, -0.615144,
		0.954284, -0.220562, -0.201727,
		12.833525, 10.907501, 18.660593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170835, 10.349325, 18.839598>,  <12.165525, 11.061895, 18.801802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170835, 10.349325, 18.839598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.557868, 10.446835, 18.865999>,  <12.790088, 10.505341, 18.881840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.557868, 10.446835, 18.865999>,  <12.170835, 10.349325, 18.839598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.557868, 10.446835, 18.865999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121524, -0.678504, 0.724476,
		0.221391, -0.692970, -0.686133,
		0.967584, 0.243774, 0.066002,
		12.848144, 10.519967, 18.885799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.483204, 9.771310, 18.828241>,  <12.170835, 10.349325, 18.839598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.483204, 9.771310, 18.828241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.769728, 9.992485, 18.998491>,  <12.941642, 10.125191, 19.100641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.769728, 9.992485, 18.998491>,  <12.483204, 9.771310, 18.828241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769728, 9.992485, 18.998491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055618, -0.653274, 0.755076,
		0.695561, -0.517196, -0.498700,
		0.716311, 0.552939, 0.425627,
		12.984621, 10.158366, 19.126179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137622, 9.281043, 19.027473>,  <12.483204, 9.771310, 18.828241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137622, 9.281043, 19.027473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.154797, 9.616841, 19.244141>,  <13.165101, 9.818320, 19.374142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.154797, 9.616841, 19.244141>,  <13.137622, 9.281043, 19.027473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154797, 9.616841, 19.244141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134108, -0.542105, 0.829540,
		0.990036, 0.037025, -0.135860,
		0.042937, 0.839495, 0.541669,
		13.167678, 9.868690, 19.406641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.763129, 9.247180, 19.389154>,  <13.137622, 9.281043, 19.027473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.763129, 9.247180, 19.389154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497787, 9.473779, 19.584723>,  <13.338582, 9.609738, 19.702063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497787, 9.473779, 19.584723>,  <13.763129, 9.247180, 19.389154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497787, 9.473779, 19.584723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170501, -0.521758, 0.835882,
		0.728621, 0.637847, 0.249523,
		-0.663355, 0.566497, 0.488918,
		13.298780, 9.643728, 19.731398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123391, 9.244744, 20.054544>,  <13.763129, 9.247180, 19.389154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123391, 9.244744, 20.054544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776670, 9.426664, 20.136330>,  <13.568636, 9.535816, 20.185402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776670, 9.426664, 20.136330>,  <14.123391, 9.244744, 20.054544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776670, 9.426664, 20.136330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018248, -0.380831, 0.924464,
		0.498313, 0.805062, 0.321807,
		-0.866805, 0.454800, 0.204464,
		13.516628, 9.563105, 20.197668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191434, 9.733344, 20.700134>,  <14.123391, 9.244744, 20.054544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191434, 9.733344, 20.700134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806296, 9.632369, 20.661751>,  <13.575214, 9.571784, 20.638720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806296, 9.632369, 20.661751>,  <14.191434, 9.733344, 20.700134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806296, 9.632369, 20.661751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065610, -0.126031, 0.989854,
		-0.261970, 0.959371, 0.104786,
		-0.962843, -0.252437, -0.095961,
		13.517444, 9.556638, 20.632963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893692, 10.054024, 21.255497>,  <14.191434, 9.733344, 20.700134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893692, 10.054024, 21.255497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.620152, 9.777964, 21.160805>,  <13.456027, 9.612328, 21.103989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.620152, 9.777964, 21.160805>,  <13.893692, 10.054024, 21.255497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.620152, 9.777964, 21.160805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227368, -0.106726, 0.967943,
		-0.693291, 0.715754, -0.083933,
		-0.683851, -0.690149, -0.236732,
		13.414996, 9.570919, 21.089785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114835, 10.228978, 21.585384>,  <13.893692, 10.054024, 21.255497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114835, 10.228978, 21.585384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199717, 9.847423, 21.500471>,  <13.250646, 9.618489, 21.449522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199717, 9.847423, 21.500471>,  <13.114835, 10.228978, 21.585384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199717, 9.847423, 21.500471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168240, -0.249649, 0.953609,
		-0.962634, -0.166645, -0.213459,
		0.212204, -0.953889, -0.212284,
		13.263378, 9.561255, 21.436787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690655, 9.924124, 22.087185>,  <13.114835, 10.228978, 21.585384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690655, 9.924124, 22.087185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911470, 9.612915, 21.967228>,  <13.043960, 9.426189, 21.895254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911470, 9.612915, 21.967228>,  <12.690655, 9.924124, 22.087185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911470, 9.612915, 21.967228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203483, -0.474489, 0.856420,
		-0.808609, -0.411755, -0.420250,
		0.552039, -0.778022, -0.299891,
		13.077082, 9.379508, 21.877260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341943, 9.241878, 22.274130>,  <12.690655, 9.924124, 22.087185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341943, 9.241878, 22.274130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.717600, 9.115177, 22.220943>,  <12.942994, 9.039157, 22.189032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.717600, 9.115177, 22.220943>,  <12.341943, 9.241878, 22.274130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.717600, 9.115177, 22.220943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083522, -0.585984, 0.806007,
		-0.333219, -0.745850, -0.576778,
		0.939143, -0.316750, -0.132966,
		12.999343, 9.020152, 22.181053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.288512, 8.663795, 22.488770>,  <12.341943, 9.241878, 22.274130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.288512, 8.663795, 22.488770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.677534, 8.756328, 22.498764>,  <12.910947, 8.811847, 22.504761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.677534, 8.756328, 22.498764>,  <12.288512, 8.663795, 22.488770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.677534, 8.756328, 22.498764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080826, -0.436583, 0.896026,
		0.218186, -0.869414, -0.443298,
		0.972554, 0.231330, 0.024985,
		12.969300, 8.825727, 22.506260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702475, 7.976106, 22.598108>,  <12.288512, 8.663795, 22.488770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702475, 7.976106, 22.598108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.961085, 8.252748, 22.726912>,  <13.116252, 8.418733, 22.804193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.961085, 8.252748, 22.726912>,  <12.702475, 7.976106, 22.598108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.961085, 8.252748, 22.726912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041285, -0.453186, 0.890459,
		0.761774, -0.562412, -0.321549,
		0.646526, 0.691604, 0.322006,
		13.155044, 8.460229, 22.823513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315063, 7.618359, 22.972137>,  <12.702475, 7.976106, 22.598108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315063, 7.618359, 22.972137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275194, 7.997353, 23.093687>,  <13.251273, 8.224749, 23.166616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275194, 7.997353, 23.093687>,  <13.315063, 7.618359, 22.972137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275194, 7.997353, 23.093687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116238, -0.314391, 0.942150,
		0.988207, 0.058585, 0.141470,
		-0.099673, 0.947484, 0.303874,
		13.245293, 8.281598, 23.184849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820784, 7.700804, 23.460489>,  <13.315063, 7.618359, 22.972137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820784, 7.700804, 23.460489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549099, 7.986698, 23.527214>,  <13.386088, 8.158235, 23.567249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549099, 7.986698, 23.527214>,  <13.820784, 7.700804, 23.460489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549099, 7.986698, 23.527214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085038, -0.302390, 0.949383,
		0.729000, 0.630646, 0.266166,
		-0.679210, 0.714735, 0.166813,
		13.345336, 8.201118, 23.577257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.960064, 7.956975, 24.117237>,  <13.820784, 7.700804, 23.460489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.960064, 7.956975, 24.117237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593098, 8.102165, 24.052002>,  <13.372918, 8.189280, 24.012861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593098, 8.102165, 24.052002>,  <13.960064, 7.956975, 24.117237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593098, 8.102165, 24.052002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245248, -0.192996, 0.950056,
		0.313374, 0.911592, 0.266077,
		-0.917415, 0.362977, -0.163087,
		13.317873, 8.211059, 24.003077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
