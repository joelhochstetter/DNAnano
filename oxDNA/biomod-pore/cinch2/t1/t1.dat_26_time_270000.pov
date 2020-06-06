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
	<43.049221, 31.593740, 22.234505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255100, 31.812172, 22.498894>,  <43.378628, 31.943232, 22.657526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255100, 31.812172, 22.498894>,  <43.049221, 31.593740, 22.234505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255100, 31.812172, 22.498894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125727, 0.810666, -0.571851,
		-0.848104, 0.211228, 0.485904,
		0.514696, 0.546081, 0.660972,
		43.409508, 31.975996, 22.697186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754436, 32.150181, 22.008329>,  <43.049221, 31.593740, 22.234505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754436, 32.150181, 22.008329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097034, 32.208755, 22.206310>,  <43.302593, 32.243900, 22.325098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097034, 32.208755, 22.206310>,  <42.754436, 32.150181, 22.008329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097034, 32.208755, 22.206310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231911, 0.747494, -0.622471,
		-0.461129, 0.647926, 0.606261,
		0.856491, 0.146441, 0.494952,
		43.353981, 32.252689, 22.354795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906422, 32.780701, 22.362980>,  <42.754436, 32.150181, 22.008329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906422, 32.780701, 22.362980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262737, 32.669914, 22.218876>,  <43.476528, 32.603443, 22.132414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262737, 32.669914, 22.218876>,  <42.906422, 32.780701, 22.362980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262737, 32.669914, 22.218876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015208, 0.810517, -0.585517,
		0.454165, 0.516093, 0.726211,
		0.890788, -0.276965, -0.360260,
		43.529972, 32.586826, 22.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312687, 33.313660, 22.352486>,  <42.906422, 32.780701, 22.362980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312687, 33.313660, 22.352486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401310, 33.071743, 22.046509>,  <43.454483, 32.926594, 21.862923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401310, 33.071743, 22.046509>,  <43.312687, 33.313660, 22.352486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401310, 33.071743, 22.046509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073517, 0.771847, -0.631544,
		0.972373, 0.196157, 0.126542,
		0.221553, -0.604793, -0.764944,
		43.467777, 32.890305, 21.817026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791290, 33.649124, 21.986809>,  <43.312687, 33.313660, 22.352486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791290, 33.649124, 21.986809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504509, 33.425632, 21.820053>,  <43.332439, 33.291538, 21.719999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504509, 33.425632, 21.820053>,  <43.791290, 33.649124, 21.986809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504509, 33.425632, 21.820053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466942, 0.828939, -0.307936,
		0.517628, -0.026114, -0.855207,
		-0.716956, -0.558729, -0.416889,
		43.289421, 33.258015, 21.694986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511875, 33.228214, 21.849174>,  <43.791290, 33.649124, 21.986809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511875, 33.228214, 21.849174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185131, 33.317223, 21.636299>,  <43.989086, 33.370628, 21.508574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185131, 33.317223, 21.636299>,  <44.511875, 33.228214, 21.849174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185131, 33.317223, 21.636299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555713, 0.056188, -0.829474,
		-0.154677, -0.973306, -0.169558,
		-0.816859, 0.222526, -0.532188,
		43.940075, 33.383980, 21.476643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426933, 32.763298, 21.350927>,  <44.511875, 33.228214, 21.849174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426933, 32.763298, 21.350927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260792, 33.112396, 21.248322>,  <44.161106, 33.321854, 21.186758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260792, 33.112396, 21.248322>,  <44.426933, 32.763298, 21.350927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260792, 33.112396, 21.248322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619420, 0.064840, -0.782377,
		-0.666181, -0.483856, -0.567526,
		-0.415357, 0.872742, -0.256515,
		44.136185, 33.374218, 21.171368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356823, 32.747322, 20.673243>,  <44.426933, 32.763298, 21.350927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356823, 32.747322, 20.673243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356194, 33.138901, 20.754890>,  <44.355816, 33.373848, 20.803879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356194, 33.138901, 20.754890>,  <44.356823, 32.747322, 20.673243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356194, 33.138901, 20.754890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523543, 0.174715, -0.833893,
		-0.851998, 0.105554, -0.512794,
		-0.001572, 0.978945, 0.204119,
		44.355721, 33.432583, 20.816126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259983, 33.045208, 20.029625>,  <44.356823, 32.747322, 20.673243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259983, 33.045208, 20.029625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395813, 33.339436, 20.264107>,  <44.477310, 33.515972, 20.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395813, 33.339436, 20.264107>,  <44.259983, 33.045208, 20.029625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395813, 33.339436, 20.264107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522418, 0.370769, -0.767860,
		-0.782158, 0.566987, -0.258371,
		0.339571, 0.735566, 0.586204,
		44.497684, 33.560104, 20.439968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244366, 33.531586, 19.596668>,  <44.259983, 33.045208, 20.029625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244366, 33.531586, 19.596668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471786, 33.702045, 19.878136>,  <44.608238, 33.804321, 20.047016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471786, 33.702045, 19.878136>,  <44.244366, 33.531586, 19.596668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471786, 33.702045, 19.878136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461109, 0.543280, -0.701587,
		-0.681272, 0.723353, 0.112378,
		0.568548, 0.426153, 0.703666,
		44.642349, 33.829891, 20.089235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288620, 34.370811, 19.642252>,  <44.244366, 33.531586, 19.596668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288620, 34.370811, 19.642252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613480, 34.198341, 19.799484>,  <44.808395, 34.094860, 19.893824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613480, 34.198341, 19.799484>,  <44.288620, 34.370811, 19.642252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613480, 34.198341, 19.799484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572295, 0.457555, -0.680531,
		0.113571, 0.777647, 0.618359,
		0.812145, -0.431172, 0.393079,
		44.857124, 34.068989, 19.917408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862221, 34.703453, 19.248411>,  <44.288620, 34.370811, 19.642252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862221, 34.703453, 19.248411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089615, 34.467575, 19.477871>,  <45.226051, 34.326046, 19.615547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089615, 34.467575, 19.477871>,  <44.862221, 34.703453, 19.248411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089615, 34.467575, 19.477871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768978, 0.133059, -0.625274,
		0.292395, 0.796586, 0.529108,
		0.568487, -0.589700, 0.573652,
		45.260162, 34.290665, 19.649967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379349, 35.113129, 19.339273>,  <44.862221, 34.703453, 19.248411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379349, 35.113129, 19.339273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474106, 34.727077, 19.383827>,  <45.530960, 34.495445, 19.410559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474106, 34.727077, 19.383827>,  <45.379349, 35.113129, 19.339273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474106, 34.727077, 19.383827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717487, 0.096495, -0.689856,
		0.655051, 0.243341, 0.715327,
		0.236896, -0.965129, 0.111385,
		45.545174, 34.437538, 19.417242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118374, 35.010452, 19.508972>,  <45.379349, 35.113129, 19.339273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118374, 35.010452, 19.508972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996330, 34.668762, 19.340588>,  <45.923103, 34.463749, 19.239557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996330, 34.668762, 19.340588>,  <46.118374, 35.010452, 19.508972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996330, 34.668762, 19.340588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800386, 0.009508, -0.599410,
		0.516032, -0.519820, 0.680807,
		-0.305113, -0.854223, -0.420963,
		45.904797, 34.412495, 19.214298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728027, 34.616539, 19.371685>,  <46.118374, 35.010452, 19.508972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728027, 34.616539, 19.371685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442047, 34.465485, 19.136318>,  <46.270458, 34.374851, 18.995098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442047, 34.465485, 19.136318>,  <46.728027, 34.616539, 19.371685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442047, 34.465485, 19.136318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678524, -0.171722, -0.714224,
		0.168673, -0.909891, 0.379008,
		-0.714950, -0.377637, -0.588419,
		46.227562, 34.352192, 18.959793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101002, 34.081886, 19.014694>,  <46.728027, 34.616539, 19.371685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101002, 34.081886, 19.014694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768635, 34.140553, 18.800011>,  <46.569214, 34.175751, 18.671200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768635, 34.140553, 18.800011>,  <47.101002, 34.081886, 19.014694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768635, 34.140553, 18.800011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502559, -0.216095, -0.837101,
		-0.238756, -0.965293, 0.105848,
		-0.830921, 0.146668, -0.536711,
		46.519360, 34.184551, 18.638998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038078, 33.508049, 18.655369>,  <47.101002, 34.081886, 19.014694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038078, 33.508049, 18.655369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828148, 33.797638, 18.476295>,  <46.702190, 33.971394, 18.368853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828148, 33.797638, 18.476295>,  <47.038078, 33.508049, 18.655369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828148, 33.797638, 18.476295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601763, -0.056408, -0.796680,
		-0.602030, -0.687516, -0.406057,
		-0.524825, 0.723975, -0.447681,
		46.670700, 34.014832, 18.341991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774837, 33.273590, 17.918039>,  <47.038078, 33.508049, 18.655369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774837, 33.273590, 17.918039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738556, 33.671700, 17.931866>,  <46.716785, 33.910564, 17.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738556, 33.671700, 17.931866>,  <46.774837, 33.273590, 17.918039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738556, 33.671700, 17.931866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301092, 0.060493, -0.951674,
		-0.949272, -0.075912, -0.305157,
		-0.090703, 0.995278, 0.034568,
		46.711346, 33.970284, 17.942236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468201, 33.410423, 17.264330>,  <46.774837, 33.273590, 17.918039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468201, 33.410423, 17.264330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643562, 33.749779, 17.383018>,  <46.748779, 33.953392, 17.454231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643562, 33.749779, 17.383018>,  <46.468201, 33.410423, 17.264330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643562, 33.749779, 17.383018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341404, 0.148202, -0.928159,
		-0.831411, 0.508213, -0.224670,
		0.438406, 0.848384, 0.296723,
		46.775085, 34.004295, 17.472034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263172, 33.886845, 16.753735>,  <46.468201, 33.410423, 17.264330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263172, 33.886845, 16.753735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569565, 34.076992, 16.926842>,  <46.753403, 34.191082, 17.030706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569565, 34.076992, 16.926842>,  <46.263172, 33.886845, 16.753735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569565, 34.076992, 16.926842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343635, 0.266166, -0.900595,
		-0.543305, 0.838557, 0.040525,
		0.765987, 0.475371, 0.432767,
		46.799362, 34.219604, 17.056671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312588, 34.607929, 16.490257>,  <46.263172, 33.886845, 16.753735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312588, 34.607929, 16.490257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676647, 34.560959, 16.649174>,  <46.895084, 34.532776, 16.744524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676647, 34.560959, 16.649174>,  <46.312588, 34.607929, 16.490257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676647, 34.560959, 16.649174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408512, 0.413874, -0.813527,
		-0.068902, 0.902729, 0.424656,
		0.910149, -0.117423, 0.397292,
		46.949692, 34.525730, 16.768362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633682, 35.229767, 16.307201>,  <46.312588, 34.607929, 16.490257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633682, 35.229767, 16.307201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943508, 34.984989, 16.371159>,  <47.129406, 34.838123, 16.409533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943508, 34.984989, 16.371159>,  <46.633682, 35.229767, 16.307201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943508, 34.984989, 16.371159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496085, 0.430968, -0.753768,
		0.392359, 0.663163, 0.637392,
		0.774567, -0.611949, 0.159891,
		47.175877, 34.801403, 16.419127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178783, 35.594635, 16.301273>,  <46.633682, 35.229767, 16.307201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178783, 35.594635, 16.301273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314342, 35.226597, 16.222717>,  <47.395679, 35.005775, 16.175585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314342, 35.226597, 16.222717>,  <47.178783, 35.594635, 16.301273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314342, 35.226597, 16.222717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443511, 0.340334, -0.829139,
		0.829726, 0.193895, 0.523412,
		0.338900, -0.920097, -0.196389,
		47.416012, 34.950569, 16.163801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.767220, 35.847610, 16.099985>,  <47.178783, 35.594635, 16.301273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.767220, 35.847610, 16.099985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735081, 35.465141, 15.987355>,  <47.715797, 35.235661, 15.919777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735081, 35.465141, 15.987355>,  <47.767220, 35.847610, 16.099985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735081, 35.465141, 15.987355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383371, 0.231115, -0.894210,
		0.920093, -0.179798, 0.347997,
		-0.080350, -0.956169, -0.281577,
		47.710976, 35.178291, 15.902883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.344959, 35.707756, 15.780504>,  <47.767220, 35.847610, 16.099985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.344959, 35.707756, 15.780504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.098064, 35.429665, 15.633170>,  <47.949928, 35.262810, 15.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.098064, 35.429665, 15.633170>,  <48.344959, 35.707756, 15.780504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.098064, 35.429665, 15.633170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331973, 0.194307, -0.923059,
		0.713309, -0.692026, 0.110864,
		-0.617239, -0.695230, -0.368335,
		47.912891, 35.221096, 15.522670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.729317, 35.109741, 15.328297>,  <48.344959, 35.707756, 15.780504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.729317, 35.109741, 15.328297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.350914, 35.115185, 15.198749>,  <48.123875, 35.118450, 15.121019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.350914, 35.115185, 15.198749>,  <48.729317, 35.109741, 15.328297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.350914, 35.115185, 15.198749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323863, 0.082139, -0.942532,
		0.013772, -0.996528, -0.082113,
		-0.946004, 0.013613, -0.323870,
		48.067112, 35.119267, 15.101587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.590038, 34.599888, 14.776318>,  <48.729317, 35.109741, 15.328297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.590038, 34.599888, 14.776318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.435230, 34.968712, 14.774533>,  <48.342346, 35.190006, 14.773462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.435230, 34.968712, 14.774533>,  <48.590038, 34.599888, 14.776318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.435230, 34.968712, 14.774533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380472, 0.155285, -0.911662,
		-0.839916, -0.354525, -0.410917,
		-0.387016, 0.922062, -0.004461,
		48.319126, 35.245331, 14.773195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.406689, 34.730213, 14.126020>,  <48.590038, 34.599888, 14.776318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.406689, 34.730213, 14.126020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.489952, 35.080677, 14.299922>,  <48.539909, 35.290955, 14.404263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.489952, 35.080677, 14.299922>,  <48.406689, 34.730213, 14.126020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.489952, 35.080677, 14.299922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439007, 0.313510, -0.842012,
		-0.874039, 0.366130, -0.319382,
		0.208157, 0.876162, 0.434754,
		48.552399, 35.343525, 14.430348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.184174, 35.232941, 13.646551>,  <48.406689, 34.730213, 14.126020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.184174, 35.232941, 13.646551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.492237, 35.372639, 13.860049>,  <48.677074, 35.456455, 13.988148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.492237, 35.372639, 13.860049>,  <48.184174, 35.232941, 13.646551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.492237, 35.372639, 13.860049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540473, 0.087074, -0.836843,
		-0.338737, 0.932978, -0.121695,
		0.770160, 0.349243, 0.533745,
		48.723286, 35.477413, 14.020173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.231716, 35.911591, 13.435266>,  <48.184174, 35.232941, 13.646551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.231716, 35.911591, 13.435266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.541927, 35.695919, 13.566625>,  <48.728054, 35.566517, 13.645440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.541927, 35.695919, 13.566625>,  <48.231716, 35.911591, 13.435266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.541927, 35.695919, 13.566625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471019, 0.147816, -0.869650,
		0.420352, 0.829120, 0.368598,
		0.775529, -0.539176, 0.328396,
		48.774586, 35.534168, 13.665144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.321117, 36.111652, 14.207301>,  <48.231716, 35.911591, 13.435266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.321117, 36.111652, 14.207301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.399788, 36.499111, 14.268020>,  <48.446991, 36.731586, 14.304451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.399788, 36.499111, 14.268020>,  <48.321117, 36.111652, 14.207301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.399788, 36.499111, 14.268020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546561, -0.020220, 0.837175,
		0.813997, -0.247615, 0.525448,
		0.196672, 0.968647, 0.151796,
		48.458790, 36.789707, 14.313559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.344624, 36.175983, 14.939278>,  <48.321117, 36.111652, 14.207301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.344624, 36.175983, 14.939278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.302376, 36.547421, 14.796977>,  <48.277027, 36.770283, 14.711596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.302376, 36.547421, 14.796977>,  <48.344624, 36.175983, 14.939278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.302376, 36.547421, 14.796977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597016, 0.226889, 0.769476,
		0.795247, 0.293659, 0.530422,
		-0.105616, 0.928594, -0.355752,
		48.270691, 36.826000, 14.690251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.567348, 36.838238, 15.430636>,  <48.344624, 36.175983, 14.939278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.567348, 36.838238, 15.430636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268467, 36.919762, 15.177608>,  <48.089138, 36.968674, 15.025790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268467, 36.919762, 15.177608>,  <48.567348, 36.838238, 15.430636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.268467, 36.919762, 15.177608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590236, 0.233974, 0.772579,
		0.305462, 0.950641, -0.054532,
		-0.747204, 0.203807, -0.632573,
		48.044304, 36.980904, 14.987836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.164822, 37.391167, 15.785334>,  <48.567348, 36.838238, 15.430636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.164822, 37.391167, 15.785334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.922779, 37.245186, 15.502305>,  <47.777554, 37.157597, 15.332488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.922779, 37.245186, 15.502305>,  <48.164822, 37.391167, 15.785334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.922779, 37.245186, 15.502305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796133, 0.272218, 0.540436,
		-0.004621, 0.890340, -0.455273,
		-0.605105, -0.364955, -0.707571,
		47.741249, 37.135700, 15.290033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730499, 37.916382, 15.645773>,  <48.164822, 37.391167, 15.785334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730499, 37.916382, 15.645773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566952, 37.557411, 15.579490>,  <47.468822, 37.342030, 15.539720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566952, 37.557411, 15.579490>,  <47.730499, 37.916382, 15.645773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566952, 37.557411, 15.579490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652597, 0.160594, 0.740491,
		-0.637922, 0.410903, -0.651317,
		-0.408867, -0.897423, -0.165707,
		47.444290, 37.288185, 15.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014095, 37.962490, 15.795303>,  <47.730499, 37.916382, 15.645773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014095, 37.962490, 15.795303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.063080, 37.566051, 15.816241>,  <47.092468, 37.328190, 15.828804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.063080, 37.566051, 15.816241>,  <47.014095, 37.962490, 15.795303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063080, 37.566051, 15.816241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769525, -0.061510, 0.635647,
		-0.626766, -0.118120, -0.770203,
		0.122458, -0.991092, 0.052344,
		47.099815, 37.268723, 15.831944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290241, 37.576019, 15.518856>,  <47.014095, 37.962490, 15.795303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290241, 37.576019, 15.518856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487175, 37.410416, 15.825112>,  <46.605335, 37.311054, 16.008867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487175, 37.410416, 15.825112>,  <46.290241, 37.576019, 15.518856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487175, 37.410416, 15.825112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853165, -0.055318, 0.518700,
		-0.172393, -0.908590, -0.380452,
		0.492332, -0.414009, 0.765641,
		46.634876, 37.286213, 16.054806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983727, 36.874477, 15.703177>,  <46.290241, 37.576019, 15.518856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983727, 36.874477, 15.703177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172482, 37.019176, 16.024788>,  <46.285736, 37.105995, 16.217754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172482, 37.019176, 16.024788>,  <45.983727, 36.874477, 15.703177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172482, 37.019176, 16.024788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796069, -0.217135, 0.564913,
		0.378939, -0.906637, 0.185513,
		0.471890, 0.361749, 0.804025,
		46.314049, 37.127701, 16.265995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806244, 36.413822, 16.214428>,  <45.983727, 36.874477, 15.703177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806244, 36.413822, 16.214428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920387, 36.733860, 16.425491>,  <45.988873, 36.925884, 16.552130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920387, 36.733860, 16.425491>,  <45.806244, 36.413822, 16.214428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920387, 36.733860, 16.425491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645634, -0.246413, 0.722799,
		0.708328, -0.546929, 0.446252,
		0.285357, 0.800094, 0.527656,
		46.005993, 36.973888, 16.583788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952244, 36.139843, 16.836170>,  <45.806244, 36.413822, 16.214428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952244, 36.139843, 16.836170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893269, 36.532391, 16.885448>,  <45.857883, 36.767918, 16.915016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893269, 36.532391, 16.885448>,  <45.952244, 36.139843, 16.836170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893269, 36.532391, 16.885448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625979, -0.189026, 0.756584,
		0.765775, 0.034432, 0.642186,
		-0.147441, 0.981368, 0.123197,
		45.849037, 36.826801, 16.922407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012527, 36.333447, 17.533106>,  <45.952244, 36.139843, 16.836170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012527, 36.333447, 17.533106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799793, 36.649094, 17.410179>,  <45.672153, 36.838482, 17.336424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799793, 36.649094, 17.410179>,  <46.012527, 36.333447, 17.533106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799793, 36.649094, 17.410179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681169, -0.183013, 0.708883,
		0.503150, 0.586343, 0.634856,
		-0.531836, 0.789118, -0.307316,
		45.640244, 36.885830, 17.317984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974728, 36.777008, 18.127964>,  <46.012527, 36.333447, 17.533106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974728, 36.777008, 18.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675991, 36.888771, 17.886581>,  <45.496750, 36.955830, 17.741753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675991, 36.888771, 17.886581>,  <45.974728, 36.777008, 18.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675991, 36.888771, 17.886581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646595, -0.093089, 0.757133,
		0.155372, 0.955650, 0.250185,
		-0.746843, 0.279405, -0.603455,
		45.451939, 36.972591, 17.705545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455460, 37.112904, 18.593868>,  <45.974728, 36.777008, 18.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455460, 37.112904, 18.593868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246902, 37.067024, 18.255638>,  <45.121769, 37.039497, 18.052700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246902, 37.067024, 18.255638>,  <45.455460, 37.112904, 18.593868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246902, 37.067024, 18.255638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817078, -0.218603, 0.533475,
		-0.246033, 0.969050, 0.020261,
		-0.521393, -0.114698, -0.845573,
		45.090485, 37.032616, 18.001966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824585, 37.412998, 18.759123>,  <45.455460, 37.112904, 18.593868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824585, 37.412998, 18.759123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779919, 37.144859, 18.465683>,  <44.753117, 36.983974, 18.289619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779919, 37.144859, 18.465683>,  <44.824585, 37.412998, 18.759123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779919, 37.144859, 18.465683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744820, -0.432237, 0.508345,
		-0.657855, 0.603164, -0.451020,
		-0.111668, -0.670346, -0.733598,
		44.746418, 36.943756, 18.245604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164349, 37.400612, 18.691801>,  <44.824585, 37.412998, 18.759123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164349, 37.400612, 18.691801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261883, 37.059120, 18.507763>,  <44.320404, 36.854225, 18.397341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261883, 37.059120, 18.507763>,  <44.164349, 37.400612, 18.691801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261883, 37.059120, 18.507763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696448, -0.484295, 0.529546,
		-0.674912, 0.191313, -0.712666,
		0.243832, -0.853731, -0.460096,
		44.335033, 36.803001, 18.369734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588470, 37.131676, 18.305101>,  <44.164349, 37.400612, 18.691801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588470, 37.131676, 18.305101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809155, 36.809620, 18.392166>,  <43.941563, 36.616386, 18.444405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809155, 36.809620, 18.392166>,  <43.588470, 37.131676, 18.305101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809155, 36.809620, 18.392166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827219, -0.494928, 0.265998,
		-0.106436, -0.326809, -0.939078,
		0.551706, -0.805135, 0.217664,
		43.974667, 36.568081, 18.457466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164574, 36.561752, 18.086817>,  <43.588470, 37.131676, 18.305101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164574, 36.561752, 18.086817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433136, 36.380318, 18.321243>,  <43.594273, 36.271458, 18.461899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433136, 36.380318, 18.321243>,  <43.164574, 36.561752, 18.086817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433136, 36.380318, 18.321243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727093, -0.556151, 0.402533,
		0.143356, -0.696386, -0.703204,
		0.671406, -0.453589, 0.586065,
		43.634556, 36.244240, 18.497063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032326, 35.818073, 17.998878>,  <43.164574, 36.561752, 18.086817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032326, 35.818073, 17.998878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226574, 35.863865, 18.345535>,  <43.343121, 35.891338, 18.553530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226574, 35.863865, 18.345535>,  <43.032326, 35.818073, 17.998878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226574, 35.863865, 18.345535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619025, -0.654970, 0.433385,
		0.617238, -0.746933, -0.247199,
		0.485618, 0.114479, 0.866643,
		43.372261, 35.898209, 18.605528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165901, 35.174660, 18.250000>,  <43.032326, 35.818073, 17.998878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165901, 35.174660, 18.250000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220646, 35.398190, 18.577168>,  <43.253494, 35.532307, 18.773468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220646, 35.398190, 18.577168>,  <43.165901, 35.174660, 18.250000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220646, 35.398190, 18.577168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608987, -0.603758, 0.514404,
		0.781284, -0.568502, 0.257685,
		0.136860, 0.558822, 0.817916,
		43.261703, 35.565838, 18.822542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257702, 34.687748, 18.773348>,  <43.165901, 35.174660, 18.250000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257702, 34.687748, 18.773348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171757, 35.021019, 18.977169>,  <43.120190, 35.220982, 19.099463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171757, 35.021019, 18.977169>,  <43.257702, 34.687748, 18.773348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171757, 35.021019, 18.977169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475335, -0.544988, 0.690684,
		0.853165, -0.093807, 0.513137,
		-0.214863, 0.833179, 0.509554,
		43.107296, 35.270973, 19.130035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462059, 34.675697, 19.512718>,  <43.257702, 34.687748, 18.773348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462059, 34.675697, 19.512718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159332, 34.935925, 19.487446>,  <42.977695, 35.092060, 19.472282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159332, 34.935925, 19.487446>,  <43.462059, 34.675697, 19.512718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159332, 34.935925, 19.487446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529328, -0.553312, 0.643162,
		0.383462, 0.520198, 0.763119,
		-0.756815, 0.650569, -0.063182,
		42.932289, 35.131096, 19.468491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181458, 34.728401, 20.198202>,  <43.462059, 34.675697, 19.512718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181458, 34.728401, 20.198202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884087, 34.900589, 19.993458>,  <42.705662, 35.003902, 19.870611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884087, 34.900589, 19.993458>,  <43.181458, 34.728401, 20.198202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884087, 34.900589, 19.993458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668365, -0.506133, 0.545085,
		-0.024425, 0.747343, 0.663989,
		-0.743432, 0.430474, -0.511861,
		42.661057, 35.029732, 19.839899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647293, 35.071220, 20.695202>,  <43.181458, 34.728401, 20.198202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647293, 35.071220, 20.695202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468906, 34.946522, 20.359600>,  <42.361874, 34.871700, 20.158239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468906, 34.946522, 20.359600>,  <42.647293, 35.071220, 20.695202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468906, 34.946522, 20.359600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682365, -0.488193, 0.544101,
		-0.579220, 0.815156, 0.004989,
		-0.445963, -0.311750, -0.839005,
		42.335117, 34.852997, 20.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909893, 35.071255, 20.927450>,  <42.647293, 35.071220, 20.695202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909893, 35.071255, 20.927450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906067, 34.890991, 20.570393>,  <41.903770, 34.782833, 20.356157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906067, 34.890991, 20.570393>,  <41.909893, 35.071255, 20.927450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906067, 34.890991, 20.570393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581074, -0.723990, 0.371741,
		-0.813794, 0.522249, -0.254939,
		-0.009568, -0.450659, -0.892645,
		41.903198, 34.755795, 20.302599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357952, 34.827389, 20.994871>,  <41.909893, 35.071255, 20.927450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357952, 34.827389, 20.994871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497509, 34.615841, 20.685402>,  <41.581242, 34.488911, 20.499720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497509, 34.615841, 20.685402>,  <41.357952, 34.827389, 20.994871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497509, 34.615841, 20.685402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523936, -0.794556, 0.306875,
		-0.777024, 0.298290, -0.554307,
		0.348890, -0.528871, -0.773674,
		41.602177, 34.457180, 20.453300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795807, 34.541336, 20.604195>,  <41.357952, 34.827389, 20.994871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795807, 34.541336, 20.604195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120823, 34.319790, 20.531521>,  <41.315834, 34.186863, 20.487917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120823, 34.319790, 20.531521>,  <40.795807, 34.541336, 20.604195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120823, 34.319790, 20.531521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458104, -0.799501, 0.388508,
		-0.360437, -0.232449, -0.903356,
		0.812543, -0.553864, -0.181684,
		41.364586, 34.153629, 20.477015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605392, 33.944958, 20.199438>,  <40.795807, 34.541336, 20.604195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605392, 33.944958, 20.199438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913147, 33.892452, 20.449497>,  <41.097801, 33.860950, 20.599533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913147, 33.892452, 20.449497>,  <40.605392, 33.944958, 20.199438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913147, 33.892452, 20.449497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567397, -0.589995, 0.574428,
		0.293433, -0.796665, -0.528414,
		0.769388, -0.131264, 0.625149,
		41.143963, 33.853073, 20.637043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588615, 33.198750, 20.280624>,  <40.605392, 33.944958, 20.199438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588615, 33.198750, 20.280624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719612, 33.435627, 20.575123>,  <40.798210, 33.577755, 20.751822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719612, 33.435627, 20.575123>,  <40.588615, 33.198750, 20.280624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719612, 33.435627, 20.575123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680419, -0.392840, 0.618633,
		0.655577, -0.703552, 0.274288,
		0.327489, 0.592192, 0.736247,
		40.817860, 33.613285, 20.795998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427227, 32.799339, 20.856543>,  <40.588615, 33.198750, 20.280624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427227, 32.799339, 20.856543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479057, 33.168541, 21.001472>,  <40.510155, 33.390060, 21.088430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479057, 33.168541, 21.001472>,  <40.427227, 32.799339, 20.856543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479057, 33.168541, 21.001472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555353, -0.235166, 0.797672,
		0.821459, -0.304573, 0.482121,
		0.129571, 0.923002, 0.362324,
		40.517929, 33.445442, 21.110170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735123, 32.869427, 21.509171>,  <40.427227, 32.799339, 20.856543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735123, 32.869427, 21.509171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450371, 33.149792, 21.491497>,  <40.279518, 33.318008, 21.480892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450371, 33.149792, 21.491497>,  <40.735123, 32.869427, 21.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450371, 33.149792, 21.491497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471516, -0.430372, 0.769709,
		0.520481, 0.568774, 0.636864,
		-0.711879, 0.700911, -0.044186,
		40.236809, 33.360065, 21.478241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611340, 33.045303, 22.256620>,  <40.735123, 32.869427, 21.509171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611340, 33.045303, 22.256620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284889, 33.105705, 22.033504>,  <40.089020, 33.141945, 21.899635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284889, 33.105705, 22.033504>,  <40.611340, 33.045303, 22.256620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284889, 33.105705, 22.033504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554226, -0.477816, 0.681561,
		-0.163603, 0.865384, 0.473650,
		-0.816130, 0.151003, -0.557790,
		40.040051, 33.151005, 21.866167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107811, 33.591465, 22.441080>,  <40.611340, 33.045303, 22.256620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107811, 33.591465, 22.441080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948719, 33.270966, 22.262276>,  <39.853264, 33.078667, 22.154993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948719, 33.270966, 22.262276>,  <40.107811, 33.591465, 22.441080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948719, 33.270966, 22.262276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388222, -0.294476, 0.873251,
		-0.831323, 0.520855, -0.193940,
		-0.397726, -0.801246, -0.447012,
		39.829403, 33.030590, 22.128172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465679, 33.581795, 22.795998>,  <40.107811, 33.591465, 22.441080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465679, 33.581795, 22.795998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566010, 33.202118, 22.719967>,  <39.626205, 32.974312, 22.674349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566010, 33.202118, 22.719967>,  <39.465679, 33.581795, 22.795998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566010, 33.202118, 22.719967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234832, -0.250148, 0.939297,
		-0.939118, -0.190962, -0.285643,
		0.250823, -0.949189, -0.190075,
		39.641258, 32.917362, 22.662945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914616, 33.030640, 22.757235>,  <39.465679, 33.581795, 22.795998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914616, 33.030640, 22.757235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284931, 32.943050, 22.880501>,  <39.507122, 32.890495, 22.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284931, 32.943050, 22.880501>,  <38.914616, 33.030640, 22.757235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284931, 32.943050, 22.880501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360701, -0.267573, 0.893476,
		-0.113190, -0.938326, -0.326700,
		0.925788, -0.218973, 0.308168,
		39.562668, 32.877357, 22.972952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155258, 33.288574, 23.055391>,  <38.914616, 33.030640, 22.757235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155258, 33.288574, 23.055391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187389, 33.510277, 23.386776>,  <38.206669, 33.643299, 23.585606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187389, 33.510277, 23.386776>,  <38.155258, 33.288574, 23.055391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187389, 33.510277, 23.386776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464120, -0.714752, 0.523184,
		0.882123, -0.426530, 0.199830,
		0.080325, 0.554258, 0.828460,
		38.211487, 33.676556, 23.635313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548386, 32.921108, 23.629532>,  <38.155258, 33.288574, 23.055391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548386, 32.921108, 23.629532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260269, 33.153667, 23.780880>,  <38.087399, 33.293201, 23.871689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260269, 33.153667, 23.780880>,  <38.548386, 32.921108, 23.629532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260269, 33.153667, 23.780880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337220, -0.770148, 0.541438,
		0.606188, 0.262399, 0.750788,
		-0.720290, 0.581394, 0.378368,
		38.044182, 33.328087, 23.894390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535831, 32.890373, 24.507023>,  <38.548386, 32.921108, 23.629532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535831, 32.890373, 24.507023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175243, 32.989811, 24.365288>,  <37.958889, 33.049473, 24.280247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175243, 32.989811, 24.365288>,  <38.535831, 32.890373, 24.507023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175243, 32.989811, 24.365288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428271, -0.630935, 0.646919,
		-0.062748, 0.734931, 0.675233,
		-0.901469, 0.248590, -0.354339,
		37.904804, 33.064388, 24.258986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114067, 32.741287, 25.055120>,  <38.535831, 32.890373, 24.507023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114067, 32.741287, 25.055120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868877, 32.753677, 24.739323>,  <37.721764, 32.761112, 24.549843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868877, 32.753677, 24.739323>,  <38.114067, 32.741287, 25.055120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868877, 32.753677, 24.739323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590210, -0.682259, 0.431479,
		-0.525277, 0.730454, 0.436487,
		-0.612973, 0.030973, -0.789497,
		37.684986, 32.762970, 24.502474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388699, 32.945869, 25.248329>,  <38.114067, 32.741287, 25.055120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388699, 32.945869, 25.248329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374512, 32.752697, 24.898354>,  <37.366001, 32.636795, 24.688368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374512, 32.752697, 24.898354>,  <37.388699, 32.945869, 25.248329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374512, 32.752697, 24.898354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612949, -0.680972, 0.400713,
		-0.789326, 0.550506, -0.271858,
		-0.035467, -0.482928, -0.874941,
		37.363873, 32.607819, 24.635872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752487, 32.738697, 25.231583>,  <37.388699, 32.945869, 25.248329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752487, 32.738697, 25.231583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903057, 32.491360, 24.955624>,  <36.993401, 32.342957, 24.790049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903057, 32.491360, 24.955624>,  <36.752487, 32.738697, 25.231583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903057, 32.491360, 24.955624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603294, -0.728743, 0.323990,
		-0.703092, 0.294250, -0.647362,
		0.376427, -0.618345, -0.689893,
		37.015984, 32.305855, 24.748655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199459, 32.358967, 25.012424>,  <36.752487, 32.738697, 25.231583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199459, 32.358967, 25.012424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507568, 32.139580, 24.882278>,  <36.692436, 32.007950, 24.804192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507568, 32.139580, 24.882278>,  <36.199459, 32.358967, 25.012424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507568, 32.139580, 24.882278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449387, -0.828841, 0.333277,
		-0.452466, -0.110501, -0.884909,
		0.770276, -0.548464, -0.325364,
		36.738651, 31.975040, 24.784670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795574, 31.748703, 24.810293>,  <36.199459, 32.358967, 25.012424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795574, 31.748703, 24.810293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179260, 31.637589, 24.831230>,  <36.409473, 31.570919, 24.843792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179260, 31.637589, 24.831230>,  <35.795574, 31.748703, 24.810293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179260, 31.637589, 24.831230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280074, -0.908871, 0.309050,
		-0.038276, -0.311106, -0.949604,
		0.959215, -0.277788, 0.052345,
		36.467026, 31.554253, 24.846933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901752, 31.169905, 24.401739>,  <35.795574, 31.748703, 24.810293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901752, 31.169905, 24.401739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184155, 31.181816, 24.684772>,  <36.353596, 31.188963, 24.854593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184155, 31.181816, 24.684772>,  <35.901752, 31.169905, 24.401739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184155, 31.181816, 24.684772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252171, -0.923063, 0.290456,
		0.661794, -0.383494, -0.644175,
		0.706002, 0.029780, 0.707584,
		36.395954, 31.190750, 24.897047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102833, 30.474232, 24.411873>,  <35.901752, 31.169905, 24.401739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102833, 30.474232, 24.411873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246227, 30.624165, 24.753864>,  <36.332264, 30.714125, 24.959059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246227, 30.624165, 24.753864>,  <36.102833, 30.474232, 24.411873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246227, 30.624165, 24.753864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152223, -0.880121, 0.449684,
		0.921039, -0.291354, -0.258456,
		0.358490, 0.374833, 0.854977,
		36.353775, 30.736614, 25.010357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521107, 29.903063, 24.758598>,  <36.102833, 30.474232, 24.411873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521107, 29.903063, 24.758598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424053, 30.171494, 25.038822>,  <36.365822, 30.332552, 25.206957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424053, 30.171494, 25.038822>,  <36.521107, 29.903063, 24.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424053, 30.171494, 25.038822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167506, -0.740274, 0.651104,
		0.955546, 0.040634, 0.292027,
		-0.242637, 0.671076, 0.700560,
		36.351261, 30.372816, 25.248991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977154, 29.794256, 25.330805>,  <36.521107, 29.903063, 24.758598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977154, 29.794256, 25.330805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654160, 29.967484, 25.491013>,  <36.460361, 30.071421, 25.587137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654160, 29.967484, 25.491013>,  <36.977154, 29.794256, 25.330805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654160, 29.967484, 25.491013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147861, -0.805899, 0.573292,
		0.571052, 0.403706, 0.714788,
		-0.807488, 0.433069, 0.400518,
		36.411915, 30.097404, 25.611168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082779, 29.838369, 26.124666>,  <36.977154, 29.794256, 25.330805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082779, 29.838369, 26.124666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691341, 29.884567, 26.056530>,  <36.456478, 29.912285, 26.015648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691341, 29.884567, 26.056530>,  <37.082779, 29.838369, 26.124666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691341, 29.884567, 26.056530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200591, -0.720354, 0.663969,
		-0.046022, 0.683924, 0.728100,
		-0.978594, 0.115493, -0.170341,
		36.397762, 29.919216, 26.005428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759861, 29.965967, 26.704372>,  <37.082779, 29.838369, 26.124666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759861, 29.965967, 26.704372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468048, 29.813572, 26.477169>,  <36.292961, 29.722136, 26.340847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468048, 29.813572, 26.477169>,  <36.759861, 29.965967, 26.704372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468048, 29.813572, 26.477169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220429, -0.655197, 0.722584,
		-0.647453, 0.652353, 0.394006,
		-0.729531, -0.380989, -0.568007,
		36.249187, 29.699276, 26.306767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269268, 30.163103, 27.192621>,  <36.759861, 29.965967, 26.704372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269268, 30.163103, 27.192621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102119, 29.895168, 26.947117>,  <36.001831, 29.734407, 26.799814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102119, 29.895168, 26.947117>,  <36.269268, 30.163103, 27.192621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102119, 29.895168, 26.947117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306861, -0.531807, 0.789315,
		-0.855114, 0.518171, 0.016680,
		-0.417870, -0.669836, -0.613762,
		35.976757, 29.694218, 26.762989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560829, 30.126959, 27.362499>,  <36.269268, 30.163103, 27.192621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560829, 30.126959, 27.362499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635406, 29.786674, 27.165916>,  <35.680153, 29.582504, 27.047966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635406, 29.786674, 27.165916>,  <35.560829, 30.126959, 27.362499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635406, 29.786674, 27.165916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387213, -0.523366, 0.759048,
		-0.902943, 0.048781, -0.426983,
		0.186441, -0.850711, -0.491459,
		35.691338, 29.531462, 27.018478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016079, 29.687666, 27.549564>,  <35.560829, 30.126959, 27.362499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016079, 29.687666, 27.549564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286602, 29.430954, 27.404942>,  <35.448917, 29.276928, 27.318169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286602, 29.430954, 27.404942>,  <35.016079, 29.687666, 27.549564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286602, 29.430954, 27.404942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305029, -0.690775, 0.655582,
		-0.670487, -0.333098, -0.662943,
		0.676317, -0.641776, -0.361551,
		35.489494, 29.238420, 27.296474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595467, 29.130251, 27.686863>,  <35.016079, 29.687666, 27.549564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595467, 29.130251, 27.686863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980015, 29.035557, 27.630680>,  <35.210743, 28.978741, 27.596970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980015, 29.035557, 27.630680>,  <34.595467, 29.130251, 27.686863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980015, 29.035557, 27.630680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056286, -0.668546, 0.741537,
		-0.269450, -0.704984, -0.656044,
		0.961368, -0.236734, -0.140459,
		35.268425, 28.964537, 27.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589981, 28.443947, 27.671734>,  <34.595467, 29.130251, 27.686863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589981, 28.443947, 27.671734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973076, 28.523518, 27.754841>,  <35.202934, 28.571260, 27.804705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973076, 28.523518, 27.754841>,  <34.589981, 28.443947, 27.671734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973076, 28.523518, 27.754841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041759, -0.618499, 0.784675,
		0.284596, -0.760189, -0.584052,
		0.957737, 0.198926, 0.207767,
		35.260399, 28.583195, 27.817171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922604, 27.831396, 27.876638>,  <34.589981, 28.443947, 27.671734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922604, 27.831396, 27.876638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165195, 28.121109, 28.007843>,  <35.310753, 28.294937, 28.086565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165195, 28.121109, 28.007843>,  <34.922604, 27.831396, 27.876638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165195, 28.121109, 28.007843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090981, -0.473050, 0.876325,
		0.789874, -0.501633, -0.352793,
		0.606482, 0.724284, 0.328011,
		35.347141, 28.338394, 28.106247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491455, 27.470667, 28.109549>,  <34.922604, 27.831396, 27.876638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491455, 27.470667, 28.109549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460503, 27.822208, 28.297859>,  <35.441933, 28.033133, 28.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460503, 27.822208, 28.297859>,  <35.491455, 27.470667, 28.109549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460503, 27.822208, 28.297859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075410, -0.465682, 0.881733,
		0.994146, 0.103727, -0.030242,
		-0.077377, 0.878852, 0.470778,
		35.437290, 28.085863, 28.439093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051094, 27.490248, 28.555378>,  <35.491455, 27.470667, 28.109549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051094, 27.490248, 28.555378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791607, 27.767090, 28.681969>,  <35.635914, 27.933195, 28.757923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791607, 27.767090, 28.681969>,  <36.051094, 27.490248, 28.555378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791607, 27.767090, 28.681969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018041, -0.429724, 0.902780,
		0.760819, 0.579936, 0.291254,
		-0.648713, 0.692107, 0.316479,
		35.596992, 27.974722, 28.776913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293907, 27.578716, 29.230526>,  <36.051094, 27.490248, 28.555378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293907, 27.578716, 29.230526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929237, 27.742508, 29.216827>,  <35.710434, 27.840782, 29.208609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929237, 27.742508, 29.216827>,  <36.293907, 27.578716, 29.230526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929237, 27.742508, 29.216827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216006, -0.406678, 0.887668,
		0.349553, 0.816664, 0.459209,
		-0.911677, 0.409479, -0.034249,
		35.655735, 27.865351, 29.206553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225430, 27.831549, 29.983303>,  <36.293907, 27.578716, 29.230526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225430, 27.831549, 29.983303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877155, 27.775867, 29.794609>,  <35.668190, 27.742458, 29.681393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877155, 27.775867, 29.794609>,  <36.225430, 27.831549, 29.983303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877155, 27.775867, 29.794609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336739, -0.530358, 0.778027,
		-0.358492, 0.836267, 0.414899,
		-0.870684, -0.139204, -0.471733,
		35.615952, 27.734106, 29.653090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699043, 27.963640, 30.505354>,  <36.225430, 27.831549, 29.983303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699043, 27.963640, 30.505354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483070, 27.756653, 30.239815>,  <35.353485, 27.632460, 30.080490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483070, 27.756653, 30.239815>,  <35.699043, 27.963640, 30.505354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483070, 27.756653, 30.239815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391573, -0.543726, 0.742316,
		-0.745078, 0.660747, 0.090949,
		-0.539934, -0.517470, -0.663849,
		35.321091, 27.601412, 30.040661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021610, 27.940536, 30.769676>,  <35.699043, 27.963640, 30.505354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021610, 27.940536, 30.769676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012314, 27.647949, 30.497086>,  <35.006737, 27.472397, 30.333530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012314, 27.647949, 30.497086>,  <35.021610, 27.940536, 30.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012314, 27.647949, 30.497086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353112, -0.631719, 0.690103,
		-0.935292, 0.256678, -0.243608,
		-0.023242, -0.731469, -0.681479,
		35.005341, 27.428509, 30.292643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355545, 27.641672, 30.751940>,  <35.021610, 27.940536, 30.769676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355545, 27.641672, 30.751940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584793, 27.348160, 30.606007>,  <34.722343, 27.172052, 30.518448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584793, 27.348160, 30.606007>,  <34.355545, 27.641672, 30.751940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584793, 27.348160, 30.606007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459019, -0.656263, 0.598850,
		-0.678852, -0.175744, -0.712934,
		0.573116, -0.733780, -0.364836,
		34.756729, 27.128027, 30.496557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834095, 27.106472, 30.480198>,  <34.355545, 27.641672, 30.751940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834095, 27.106472, 30.480198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188225, 26.939842, 30.562817>,  <34.400703, 26.839865, 30.612389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188225, 26.939842, 30.562817>,  <33.834095, 27.106472, 30.480198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188225, 26.939842, 30.562817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463754, -0.759058, 0.456905,
		-0.033553, -0.500298, -0.865203,
		0.885328, -0.416572, 0.206547,
		34.453823, 26.814871, 30.624781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701355, 26.418919, 30.338699>,  <33.834095, 27.106472, 30.480198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701355, 26.418919, 30.338699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015270, 26.436172, 30.586002>,  <34.203621, 26.446526, 30.734385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015270, 26.436172, 30.586002>,  <33.701355, 26.418919, 30.338699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015270, 26.436172, 30.586002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323331, -0.822564, 0.467810,
		0.528737, -0.567035, -0.631592,
		0.784789, 0.043135, 0.618260,
		34.250706, 26.449114, 30.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828156, 25.764524, 30.476782>,  <33.701355, 26.418919, 30.338699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828156, 25.764524, 30.476782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021664, 25.965939, 30.763115>,  <34.137768, 26.086788, 30.934916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021664, 25.965939, 30.763115>,  <33.828156, 25.764524, 30.476782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021664, 25.965939, 30.763115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292919, -0.677587, 0.674592,
		0.824721, -0.536029, -0.180301,
		0.483771, 0.503536, 0.715833,
		34.166794, 26.116999, 30.977865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203365, 25.343817, 30.823275>,  <33.828156, 25.764524, 30.476782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203365, 25.343817, 30.823275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199841, 25.626301, 31.106453>,  <34.197727, 25.795792, 31.276360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199841, 25.626301, 31.106453>,  <34.203365, 25.343817, 30.823275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199841, 25.626301, 31.106453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274932, -0.682401, 0.677305,
		0.961423, -0.188671, 0.200171,
		-0.008809, 0.706210, 0.707948,
		34.197197, 25.838163, 31.318838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453239, 24.993525, 31.385887>,  <34.203365, 25.343817, 30.823275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453239, 24.993525, 31.385887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276382, 25.320442, 31.533691>,  <34.170269, 25.516594, 31.622374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276382, 25.320442, 31.533691>,  <34.453239, 24.993525, 31.385887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276382, 25.320442, 31.533691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164128, -0.478730, 0.862485,
		0.881801, 0.320694, 0.345807,
		-0.442142, 0.817296, 0.369510,
		34.143742, 25.565632, 31.644545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752712, 25.119770, 32.150227>,  <34.453239, 24.993525, 31.385887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752712, 25.119770, 32.150227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402824, 25.312107, 32.126038>,  <34.192890, 25.427509, 32.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402824, 25.312107, 32.126038>,  <34.752712, 25.119770, 32.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402824, 25.312107, 32.126038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318126, -0.475574, 0.820137,
		0.365601, 0.736626, 0.568963,
		-0.874718, 0.480844, -0.060470,
		34.140408, 25.456360, 32.107895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665680, 25.388868, 32.847950>,  <34.752712, 25.119770, 32.150227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665680, 25.388868, 32.847950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318661, 25.396824, 32.649166>,  <34.110451, 25.401598, 32.529896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318661, 25.396824, 32.649166>,  <34.665680, 25.388868, 32.847950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318661, 25.396824, 32.649166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456048, -0.430526, 0.778888,
		-0.198463, 0.902359, 0.382571,
		-0.867544, 0.019891, -0.496963,
		34.058399, 25.402792, 32.500076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124420, 25.707464, 33.317600>,  <34.665680, 25.388868, 32.847950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124420, 25.707464, 33.317600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955093, 25.469234, 33.044514>,  <33.853497, 25.326298, 32.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955093, 25.469234, 33.044514>,  <34.124420, 25.707464, 33.317600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955093, 25.469234, 33.044514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501705, -0.473367, 0.724027,
		-0.754385, 0.649012, -0.098419,
		-0.423314, -0.595573, -0.682714,
		33.828098, 25.290562, 32.839699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496063, 25.681742, 33.561268>,  <34.124420, 25.707464, 33.317600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496063, 25.681742, 33.561268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493061, 25.364784, 33.317284>,  <33.491261, 25.174610, 33.170891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493061, 25.364784, 33.317284>,  <33.496063, 25.681742, 33.561268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493061, 25.364784, 33.317284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597439, -0.485595, 0.638173,
		-0.801879, 0.369204, -0.469763,
		-0.007502, -0.792393, -0.609965,
		33.490810, 25.127066, 33.134293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909008, 25.436543, 33.687107>,  <33.496063, 25.681742, 33.561268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909008, 25.436543, 33.687107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115662, 25.132748, 33.528988>,  <33.239655, 24.950470, 33.434116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115662, 25.132748, 33.528988>,  <32.909008, 25.436543, 33.687107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115662, 25.132748, 33.528988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324585, -0.600959, 0.730406,
		-0.792295, -0.249047, -0.556996,
		0.516637, -0.759489, -0.395300,
		33.270653, 24.904902, 33.410397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490162, 24.807331, 33.856407>,  <32.909008, 25.436543, 33.687107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490162, 24.807331, 33.856407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855968, 24.664841, 33.779716>,  <33.075455, 24.579348, 33.733704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855968, 24.664841, 33.779716>,  <32.490162, 24.807331, 33.856407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855968, 24.664841, 33.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078641, -0.621433, 0.779510,
		-0.396823, -0.697800, -0.596327,
		0.914520, -0.356224, -0.191724,
		33.130325, 24.557974, 33.722198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481274, 24.069143, 33.986591>,  <32.490162, 24.807331, 33.856407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481274, 24.069143, 33.986591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872646, 24.149254, 34.006813>,  <33.107471, 24.197321, 34.018948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872646, 24.149254, 34.006813>,  <32.481274, 24.069143, 33.986591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872646, 24.149254, 34.006813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103417, -0.686844, 0.719410,
		0.178805, -0.698666, -0.692744,
		0.978434, 0.200276, 0.050557,
		33.166176, 24.209337, 34.021980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761677, 23.418236, 34.012497>,  <32.481274, 24.069143, 33.986591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761677, 23.418236, 34.012497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051723, 23.648182, 34.164146>,  <33.225754, 23.786150, 34.255135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051723, 23.648182, 34.164146>,  <32.761677, 23.418236, 34.012497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051723, 23.648182, 34.164146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085736, -0.621635, 0.778601,
		0.683266, -0.532073, -0.500046,
		0.725119, 0.574864, 0.379124,
		33.269260, 23.820641, 34.277882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382591, 22.994171, 34.150383>,  <32.761677, 23.418236, 34.012497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382591, 22.994171, 34.150383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418259, 23.314735, 34.386955>,  <33.439659, 23.507074, 34.528900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418259, 23.314735, 34.386955>,  <33.382591, 22.994171, 34.150383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418259, 23.314735, 34.386955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032706, -0.595833, 0.802442,
		0.995479, -0.052213, -0.079343,
		0.089173, 0.801409, 0.591432,
		33.445011, 23.555159, 34.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863564, 22.767191, 34.628391>,  <33.382591, 22.994171, 34.150383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863564, 22.767191, 34.628391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677586, 23.077614, 34.798832>,  <33.565998, 23.263866, 34.901096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677586, 23.077614, 34.798832>,  <33.863564, 22.767191, 34.628391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677586, 23.077614, 34.798832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067873, -0.448626, 0.891139,
		0.882733, 0.443253, 0.155914,
		-0.464947, 0.776055, 0.426102,
		33.538101, 23.310431, 34.926662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244869, 22.944489, 35.149540>,  <33.863564, 22.767191, 34.628391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244869, 22.944489, 35.149540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873817, 23.061317, 35.242653>,  <33.651184, 23.131414, 35.298523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873817, 23.061317, 35.242653>,  <34.244869, 22.944489, 35.149540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873817, 23.061317, 35.242653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124474, -0.345880, 0.929986,
		0.352140, 0.891662, 0.284495,
		-0.927633, 0.292073, 0.232787,
		33.595528, 23.148939, 35.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385273, 23.193211, 35.818943>,  <34.244869, 22.944489, 35.149540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385273, 23.193211, 35.818943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988201, 23.147991, 35.801949>,  <33.749958, 23.120859, 35.791752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988201, 23.147991, 35.801949>,  <34.385273, 23.193211, 35.818943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988201, 23.147991, 35.801949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007003, -0.297292, 0.954761,
		-0.120565, 0.948070, 0.294324,
		-0.992681, -0.113050, -0.042482,
		33.690395, 23.114077, 35.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166748, 23.346731, 36.516575>,  <34.385273, 23.193211, 35.818943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166748, 23.346731, 36.516575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855350, 23.152981, 36.356915>,  <33.668510, 23.036732, 36.261116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855350, 23.152981, 36.356915>,  <34.166748, 23.346731, 36.516575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855350, 23.152981, 36.356915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292501, -0.282689, 0.913526,
		-0.555326, 0.827930, 0.078392,
		-0.778496, -0.484375, -0.399155,
		33.621803, 23.007668, 36.237167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532581, 23.552805, 36.670998>,  <34.166748, 23.346731, 36.516575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532581, 23.552805, 36.670998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499603, 23.161060, 36.597179>,  <33.479816, 22.926014, 36.552891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499603, 23.161060, 36.597179>,  <33.532581, 23.552805, 36.670998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499603, 23.161060, 36.597179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315865, -0.149948, 0.936880,
		-0.945216, 0.135528, -0.296984,
		-0.082442, -0.979361, -0.184542,
		33.474873, 22.867252, 36.541817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872849, 23.324938, 36.920582>,  <33.532581, 23.552805, 36.670998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872849, 23.324938, 36.920582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139713, 23.027172, 36.909660>,  <33.299831, 22.848513, 36.903107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139713, 23.027172, 36.909660>,  <32.872849, 23.324938, 36.920582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139713, 23.027172, 36.909660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479818, -0.457486, 0.748653,
		-0.569800, -0.486369, -0.662399,
		0.667160, -0.744414, -0.027307,
		33.339863, 22.803848, 36.901470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684143, 23.697107, 36.292522>,  <32.872849, 23.324938, 36.920582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684143, 23.697107, 36.292522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964821, 23.954197, 36.415508>,  <33.133228, 24.108452, 36.489300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964821, 23.954197, 36.415508>,  <32.684143, 23.697107, 36.292522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964821, 23.954197, 36.415508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686839, -0.724942, -0.052069,
		0.189428, 0.247716, -0.950134,
		0.701690, 0.642725, 0.307465,
		33.175327, 24.147015, 36.507748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025368, 23.760235, 36.557442>,  <32.684143, 23.697107, 36.292522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025368, 23.760235, 36.557442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943483, 23.825104, 36.943558>,  <31.894352, 23.864025, 37.175228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943483, 23.825104, 36.943558>,  <32.025368, 23.760235, 36.557442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943483, 23.825104, 36.943558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515346, 0.820570, -0.247149,
		-0.832173, -0.548055, -0.084405,
		-0.204712, 0.162173, 0.965294,
		31.882071, 23.873756, 37.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272818, 23.839598, 36.696850>,  <32.025368, 23.760235, 36.557442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272818, 23.839598, 36.696850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495432, 24.046764, 36.956703>,  <31.629000, 24.171064, 37.112617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495432, 24.046764, 36.956703>,  <31.272818, 23.839598, 36.696850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495432, 24.046764, 36.956703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369360, 0.854636, -0.364926,
		-0.744205, -0.036856, 0.666934,
		0.556536, 0.517918, 0.649637,
		31.662394, 24.202141, 37.151596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793074, 24.308020, 36.996384>,  <31.272818, 23.839598, 36.696850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793074, 24.308020, 36.996384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166019, 24.452606, 36.998871>,  <31.389788, 24.539358, 37.000362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166019, 24.452606, 36.998871>,  <30.793074, 24.308020, 36.996384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166019, 24.452606, 36.998871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335556, 0.871677, -0.357185,
		-0.134532, 0.330940, 0.934013,
		0.932364, 0.361466, 0.006220,
		31.445728, 24.561047, 37.000736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790298, 24.996813, 37.126812>,  <30.793074, 24.308020, 36.996384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790298, 24.996813, 37.126812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166157, 24.967293, 36.993176>,  <31.391672, 24.949581, 36.912994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166157, 24.967293, 36.993176>,  <30.790298, 24.996813, 37.126812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166157, 24.967293, 36.993176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072549, 0.911279, -0.405348,
		0.334363, 0.405122, 0.850927,
		0.939648, -0.073800, -0.334090,
		31.448051, 24.945152, 36.892948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235067, 25.679184, 37.235039>,  <30.790298, 24.996813, 37.126812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235067, 25.679184, 37.235039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368792, 25.460094, 36.928253>,  <31.449026, 25.328642, 36.744183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368792, 25.460094, 36.928253>,  <31.235067, 25.679184, 37.235039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368792, 25.460094, 36.928253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095878, 0.789802, -0.605822,
		0.937574, 0.276067, 0.211523,
		0.334308, -0.547723, -0.766966,
		31.469084, 25.295778, 36.698162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765182, 26.137348, 36.870739>,  <31.235067, 25.679184, 37.235039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765182, 26.137348, 36.870739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725492, 25.838795, 36.607506>,  <31.701679, 25.659662, 36.449566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725492, 25.838795, 36.607506>,  <31.765182, 26.137348, 36.870739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725492, 25.838795, 36.607506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046766, 0.657114, -0.752339,
		0.993966, -0.105426, -0.030296,
		-0.099224, -0.746382, -0.658079,
		31.695724, 25.614880, 36.410084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360260, 26.132284, 36.381271>,  <31.765182, 26.137348, 36.870739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360260, 26.132284, 36.381271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 25.938484, 36.174252>,  <31.908892, 25.822205, 36.050037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 25.938484, 36.174252>,  <32.360260, 26.132284, 36.381271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078156, 25.938484, 36.174252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068234, 0.680254, -0.729794,
		0.705657, -0.550009, -0.446696,
		-0.705260, -0.484504, -0.517556,
		31.866577, 25.793135, 36.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586460, 26.174252, 35.796379>,  <32.360260, 26.132284, 36.381271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586460, 26.174252, 35.796379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200195, 26.100155, 35.723511>,  <31.968437, 26.055696, 35.679790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200195, 26.100155, 35.723511>,  <32.586460, 26.174252, 35.796379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200195, 26.100155, 35.723511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024751, 0.763577, -0.645242,
		0.258626, -0.618576, -0.741941,
		-0.965661, -0.185240, -0.182171,
		31.910498, 26.044582, 35.668858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615074, 25.993818, 35.097858>,  <32.586460, 26.174252, 35.796379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615074, 25.993818, 35.097858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242352, 26.088078, 35.208279>,  <32.018719, 26.144632, 35.274532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242352, 26.088078, 35.208279>,  <32.615074, 25.993818, 35.097858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242352, 26.088078, 35.208279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044710, 0.680260, -0.731606,
		-0.360189, -0.694058, -0.623336,
		-0.931808, 0.235647, 0.276053,
		31.962809, 26.158772, 35.291096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389679, 26.138819, 34.506252>,  <32.615074, 25.993818, 35.097858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389679, 26.138819, 34.506252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138165, 26.319012, 34.759769>,  <31.987257, 26.427128, 34.911880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138165, 26.319012, 34.759769>,  <32.389679, 26.138819, 34.506252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138165, 26.319012, 34.759769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087240, 0.769071, -0.633182,
		-0.772672, -0.453426, -0.444278,
		-0.628782, 0.450483, 0.633797,
		31.949530, 26.454157, 34.949909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756897, 26.285997, 34.166058>,  <32.389679, 26.138819, 34.506252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756897, 26.285997, 34.166058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778379, 26.533520, 34.479542>,  <31.791269, 26.682034, 34.667633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778379, 26.533520, 34.479542>,  <31.756897, 26.285997, 34.166058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778379, 26.533520, 34.479542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039504, 0.785542, -0.617546,
		-0.997775, 0.002206, 0.066633,
		0.053705, 0.618805, 0.783707,
		31.794491, 26.719162, 34.714653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205399, 26.734709, 34.172535>,  <31.756897, 26.285997, 34.166058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205399, 26.734709, 34.172535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497328, 26.905197, 34.386337>,  <31.672485, 27.007490, 34.514618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497328, 26.905197, 34.386337>,  <31.205399, 26.734709, 34.172535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497328, 26.905197, 34.386337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053225, 0.814906, -0.577145,
		-0.681563, 0.392763, 0.617421,
		0.729821, 0.426223, 0.534505,
		31.716274, 27.033064, 34.546688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921001, 27.337160, 34.240345>,  <31.205399, 26.734709, 34.172535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921001, 27.337160, 34.240345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309698, 27.392708, 34.316692>,  <31.542917, 27.426037, 34.362503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309698, 27.392708, 34.316692>,  <30.921001, 27.337160, 34.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309698, 27.392708, 34.316692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027843, 0.870422, -0.491519,
		-0.234395, 0.472315, 0.849692,
		0.971742, 0.138868, 0.190872,
		31.601221, 27.434368, 34.373955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946539, 28.049633, 34.363491>,  <30.921001, 27.337160, 34.240345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946539, 28.049633, 34.363491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330677, 27.941780, 34.335121>,  <31.561161, 27.877068, 34.318100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330677, 27.941780, 34.335121>,  <30.946539, 28.049633, 34.363491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330677, 27.941780, 34.335121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199836, 0.843083, -0.499277,
		0.194417, 0.465306, 0.863535,
		0.960348, -0.269634, -0.070924,
		31.618782, 27.860889, 34.313843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400110, 28.591608, 34.557747>,  <30.946539, 28.049633, 34.363491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400110, 28.591608, 34.557747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566339, 28.354671, 34.281651>,  <31.666077, 28.212509, 34.115993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566339, 28.354671, 34.281651>,  <31.400110, 28.591608, 34.557747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566339, 28.354671, 34.281651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230059, 0.802651, -0.550295,
		0.879984, 0.069891, 0.469833,
		0.415572, -0.592341, -0.690241,
		31.691011, 28.176970, 34.074577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991619, 28.964174, 34.408234>,  <31.400110, 28.591608, 34.557747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991619, 28.964174, 34.408234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966402, 28.709450, 34.100857>,  <31.951271, 28.556616, 33.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966402, 28.709450, 34.100857>,  <31.991619, 28.964174, 34.408234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966402, 28.709450, 34.100857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358341, 0.704183, -0.612959,
		0.931460, -0.314007, 0.183800,
		-0.063044, -0.636810, -0.768439,
		31.947489, 28.518406, 33.870323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598873, 29.105297, 34.040051>,  <31.991619, 28.964174, 34.408234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598873, 29.105297, 34.040051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353874, 28.919502, 33.784206>,  <32.206875, 28.808025, 33.630699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353874, 28.919502, 33.784206>,  <32.598873, 29.105297, 34.040051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353874, 28.919502, 33.784206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202366, 0.690046, -0.694899,
		0.764133, -0.555057, -0.328653,
		-0.612494, -0.464487, -0.639612,
		32.170124, 28.780157, 33.592323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062035, 28.898281, 33.450573>,  <32.598873, 29.105297, 34.040051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062035, 28.898281, 33.450573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698357, 28.902798, 33.284088>,  <32.480148, 28.905508, 33.184196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698357, 28.902798, 33.284088>,  <33.062035, 28.898281, 33.450573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698357, 28.902798, 33.284088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360045, 0.523369, -0.772303,
		0.209110, -0.852031, -0.479912,
		-0.909198, 0.011293, -0.416211,
		32.425598, 28.906185, 33.159225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226574, 28.676117, 32.850590>,  <33.062035, 28.898281, 33.450573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226574, 28.676117, 32.850590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857445, 28.821110, 32.798435>,  <32.635967, 28.908106, 32.767143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857445, 28.821110, 32.798435>,  <33.226574, 28.676117, 32.850590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857445, 28.821110, 32.798435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298305, 0.458293, -0.837246,
		-0.243732, -0.811527, -0.531055,
		-0.922826, 0.362480, -0.130382,
		32.580597, 28.929853, 32.759319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019516, 28.516806, 32.097080>,  <33.226574, 28.676117, 32.850590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019516, 28.516806, 32.097080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796520, 28.821293, 32.229595>,  <32.662724, 29.003984, 32.309105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796520, 28.821293, 32.229595>,  <33.019516, 28.516806, 32.097080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796520, 28.821293, 32.229595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350407, 0.577526, -0.737346,
		-0.752606, -0.294980, -0.588702,
		-0.557493, 0.761216, 0.331286,
		32.629272, 29.049658, 32.328979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474838, 28.751043, 31.580347>,  <33.019516, 28.516806, 32.097080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474838, 28.751043, 31.580347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545181, 29.057781, 31.827255>,  <32.587387, 29.241825, 31.975399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545181, 29.057781, 31.827255>,  <32.474838, 28.751043, 31.580347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545181, 29.057781, 31.827255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276037, 0.563471, -0.778655,
		-0.944921, 0.307324, -0.112586,
		0.175861, 0.766846, 0.617269,
		32.597939, 29.287834, 32.012436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422173, 29.300932, 31.160301>,  <32.474838, 28.751043, 31.580347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422173, 29.300932, 31.160301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589043, 29.491318, 31.469990>,  <32.689167, 29.605549, 31.655804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589043, 29.491318, 31.469990>,  <32.422173, 29.300932, 31.160301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589043, 29.491318, 31.469990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300690, 0.731630, -0.611804,
		-0.857641, 0.488032, 0.162103,
		0.417179, 0.475965, 0.774222,
		32.714195, 29.634108, 31.702257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147724, 30.051016, 31.142874>,  <32.422173, 29.300932, 31.160301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147724, 30.051016, 31.142874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511539, 30.040066, 31.308762>,  <32.729828, 30.033495, 31.408295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511539, 30.040066, 31.308762>,  <32.147724, 30.051016, 31.142874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511539, 30.040066, 31.308762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308042, 0.714275, -0.628428,
		-0.279018, 0.699330, 0.658093,
		0.909538, -0.027378, 0.414718,
		32.784401, 30.031853, 31.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393009, 30.665367, 30.874371>,  <32.147724, 30.051016, 31.142874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393009, 30.665367, 30.874371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713299, 30.477089, 31.022579>,  <32.905472, 30.364122, 31.111504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713299, 30.477089, 31.022579>,  <32.393009, 30.665367, 30.874371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713299, 30.477089, 31.022579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587567, 0.496711, -0.638782,
		0.116629, 0.729195, 0.674294,
		0.800726, -0.470694, 0.370520,
		32.953518, 30.335880, 31.133736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968296, 31.109745, 31.321259>,  <32.393009, 30.665367, 30.874371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968296, 31.109745, 31.321259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159477, 30.795292, 31.164516>,  <33.274185, 30.606619, 31.070471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159477, 30.795292, 31.164516>,  <32.968296, 31.109745, 31.321259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159477, 30.795292, 31.164516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665815, 0.615220, -0.422132,
		0.572930, -0.059143, 0.817468,
		0.477956, -0.786134, -0.391856,
		33.302864, 30.559452, 31.046959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586086, 31.357450, 31.339619>,  <32.968296, 31.109745, 31.321259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586086, 31.357450, 31.339619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641052, 31.025684, 31.123032>,  <33.674034, 30.826626, 30.993078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641052, 31.025684, 31.123032>,  <33.586086, 31.357450, 31.339619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641052, 31.025684, 31.123032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660312, 0.484176, -0.574075,
		0.738312, -0.278649, 0.614206,
		0.137419, -0.829414, -0.541468,
		33.682278, 30.776859, 30.960590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245419, 31.384058, 31.179861>,  <33.586086, 31.357450, 31.339619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245419, 31.384058, 31.179861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108986, 31.131367, 30.901413>,  <34.027126, 30.979752, 30.734344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108986, 31.131367, 30.901413>,  <34.245419, 31.384058, 31.179861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108986, 31.131367, 30.901413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531736, 0.481013, -0.697054,
		0.775192, -0.607901, 0.171851,
		-0.341078, -0.631730, -0.696120,
		34.006664, 30.941847, 30.692577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882301, 31.226957, 30.799236>,  <34.245419, 31.384058, 31.179861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882301, 31.226957, 30.799236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571907, 31.147617, 30.559738>,  <34.385670, 31.100014, 30.416039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571907, 31.147617, 30.559738>,  <34.882301, 31.226957, 30.799236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571907, 31.147617, 30.559738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476694, 0.437202, -0.762638,
		0.413043, -0.877218, -0.244712,
		-0.775988, -0.198350, -0.598748,
		34.339111, 31.088114, 30.380114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166084, 30.997488, 30.223598>,  <34.882301, 31.226957, 30.799236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166084, 30.997488, 30.223598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796780, 31.106224, 30.115021>,  <34.575195, 31.171465, 30.049873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796780, 31.106224, 30.115021>,  <35.166084, 30.997488, 30.223598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796780, 31.106224, 30.115021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348030, 0.292709, -0.890616,
		-0.162648, -0.916747, -0.364857,
		-0.923266, 0.271838, -0.271447,
		34.519798, 31.187775, 30.033587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083290, 30.768894, 29.533587>,  <35.166084, 30.997488, 30.223598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083290, 30.768894, 29.533587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823978, 31.070644, 29.574871>,  <34.668392, 31.251694, 29.599642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823978, 31.070644, 29.574871>,  <35.083290, 30.768894, 29.533587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823978, 31.070644, 29.574871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396399, 0.450125, -0.800160,
		-0.650077, -0.477816, -0.590840,
		-0.648281, 0.754374, 0.103211,
		34.629494, 31.296957, 29.605835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795700, 30.892227, 28.810572>,  <35.083290, 30.768894, 29.533587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795700, 30.892227, 28.810572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756157, 31.208771, 29.051895>,  <34.732433, 31.398697, 29.196690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756157, 31.208771, 29.051895>,  <34.795700, 30.892227, 28.810572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756157, 31.208771, 29.051895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411036, 0.584613, -0.699483,
		-0.906243, 0.178835, -0.383069,
		-0.098855, 0.791357, 0.603309,
		34.726501, 31.446178, 29.232887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593414, 31.356258, 28.388405>,  <34.795700, 30.892227, 28.810572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593414, 31.356258, 28.388405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702656, 31.584328, 28.698326>,  <34.768200, 31.721169, 28.884279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702656, 31.584328, 28.698326>,  <34.593414, 31.356258, 28.388405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702656, 31.584328, 28.698326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323412, 0.704121, -0.632153,
		-0.905991, 0.423223, 0.007896,
		0.273102, 0.570171, 0.774803,
		34.784588, 31.755379, 28.930767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369526, 32.090137, 28.194214>,  <34.593414, 31.356258, 28.388405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369526, 32.090137, 28.194214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656303, 32.113892, 28.472054>,  <34.828369, 32.128143, 28.638758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656303, 32.113892, 28.472054>,  <34.369526, 32.090137, 28.194214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656303, 32.113892, 28.472054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438448, 0.736226, -0.515495,
		-0.541993, 0.674125, 0.501795,
		0.716943, 0.059384, 0.694598,
		34.871387, 32.131706, 28.680433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434193, 32.736000, 28.371836>,  <34.369526, 32.090137, 28.194214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434193, 32.736000, 28.371836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781494, 32.593433, 28.509880>,  <34.989876, 32.507893, 28.592707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781494, 32.593433, 28.509880>,  <34.434193, 32.736000, 28.371836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781494, 32.593433, 28.509880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495666, 0.652842, -0.572811,
		-0.021144, 0.668405, 0.743497,
		0.868256, -0.356414, 0.345109,
		35.041969, 32.486507, 28.613413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848156, 33.269485, 28.677109>,  <34.434193, 32.736000, 28.371836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848156, 33.269485, 28.677109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094841, 32.976696, 28.561260>,  <35.242851, 32.801022, 28.491751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094841, 32.976696, 28.561260>,  <34.848156, 33.269485, 28.677109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094841, 32.976696, 28.561260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503345, 0.649552, -0.569847,
		0.605239, 0.205650, 0.769021,
		0.616709, -0.731976, -0.289622,
		35.279854, 32.757103, 28.474373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478619, 33.526577, 28.833433>,  <34.848156, 33.269485, 28.677109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478619, 33.526577, 28.833433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520958, 33.257351, 28.540646>,  <35.546360, 33.095814, 28.364973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520958, 33.257351, 28.540646>,  <35.478619, 33.526577, 28.833433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520958, 33.257351, 28.540646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467407, 0.683392, -0.560808,
		0.877682, -0.282767, 0.386932,
		0.105849, -0.673066, -0.731969,
		35.552711, 33.055431, 28.321054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999516, 33.785187, 28.469000>,  <35.478619, 33.526577, 28.833433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999516, 33.785187, 28.469000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924473, 33.473129, 28.230274>,  <35.879448, 33.285896, 28.087038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924473, 33.473129, 28.230274>,  <35.999516, 33.785187, 28.469000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924473, 33.473129, 28.230274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247891, 0.550330, -0.797299,
		0.950450, -0.297520, 0.090147,
		-0.187602, -0.780140, -0.596814,
		35.868191, 33.239086, 28.051229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650284, 33.627895, 28.137533>,  <35.999516, 33.785187, 28.469000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650284, 33.627895, 28.137533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359264, 33.482513, 27.904785>,  <36.184650, 33.395287, 27.765137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359264, 33.482513, 27.904785>,  <36.650284, 33.627895, 28.137533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359264, 33.482513, 27.904785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304168, 0.589341, -0.748438,
		0.614941, -0.721513, -0.318225,
		-0.727551, -0.363452, -0.581871,
		36.140999, 33.373478, 27.730225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944027, 33.420506, 27.521746>,  <36.650284, 33.627895, 28.137533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944027, 33.420506, 27.521746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559319, 33.490971, 27.437881>,  <36.328491, 33.533249, 27.387562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559319, 33.490971, 27.437881>,  <36.944027, 33.420506, 27.521746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559319, 33.490971, 27.437881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273126, 0.561530, -0.781080,
		-0.019869, -0.808486, -0.588180,
		-0.961773, 0.176166, -0.209662,
		36.270786, 33.543819, 27.374983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989872, 33.258423, 26.885849>,  <36.944027, 33.420506, 27.521746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989872, 33.258423, 26.885849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656040, 33.472778, 26.936924>,  <36.455742, 33.601391, 26.967569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656040, 33.472778, 26.936924>,  <36.989872, 33.258423, 26.885849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656040, 33.472778, 26.936924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194564, 0.503571, -0.841761,
		-0.515391, -0.677670, -0.524534,
		-0.834576, 0.535891, 0.127685,
		36.405666, 33.633545, 26.975229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716049, 33.442860, 26.196299>,  <36.989872, 33.258423, 26.885849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716049, 33.442860, 26.196299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529427, 33.719440, 26.416920>,  <36.417454, 33.885391, 26.549294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529427, 33.719440, 26.416920>,  <36.716049, 33.442860, 26.196299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529427, 33.719440, 26.416920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151055, 0.676713, -0.720584,
		-0.871496, -0.252879, -0.420174,
		-0.466558, 0.691456, 0.551554,
		36.389458, 33.926876, 26.582386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198227, 33.771420, 25.822771>,  <36.716049, 33.442860, 26.196299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198227, 33.771420, 25.822771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303165, 34.033890, 26.105785>,  <36.366127, 34.191372, 26.275595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303165, 34.033890, 26.105785>,  <36.198227, 33.771420, 25.822771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303165, 34.033890, 26.105785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088083, 0.713874, -0.694712,
		-0.960945, 0.244578, 0.129485,
		0.262348, 0.656175, 0.707537,
		36.381870, 34.230743, 26.318047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800606, 34.314438, 25.579813>,  <36.198227, 33.771420, 25.822771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800606, 34.314438, 25.579813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050102, 34.481682, 25.843975>,  <36.199799, 34.582027, 26.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050102, 34.481682, 25.843975>,  <35.800606, 34.314438, 25.579813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050102, 34.481682, 25.843975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163791, 0.756231, -0.633473,
		-0.764279, 0.503290, 0.403208,
		0.623739, 0.418108, 0.660405,
		36.237225, 34.607113, 26.042097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582424, 34.982559, 25.392164>,  <35.800606, 34.314438, 25.579813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582424, 34.982559, 25.392164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936977, 34.959816, 25.575947>,  <36.149708, 34.946171, 25.686216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936977, 34.959816, 25.575947>,  <35.582424, 34.982559, 25.392164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936977, 34.959816, 25.575947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419974, 0.516370, -0.746313,
		-0.194819, 0.854476, 0.481576,
		0.886379, -0.056854, 0.459457,
		36.202892, 34.942760, 25.713783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886951, 34.587883, 25.342083>,  <35.582424, 34.982559, 25.392164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886951, 34.587883, 25.342083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567074, 34.809601, 25.249783>,  <34.375149, 34.942631, 25.194403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567074, 34.809601, 25.249783>,  <34.886951, 34.587883, 25.342083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567074, 34.809601, 25.249783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389765, -0.186928, 0.901744,
		0.456698, 0.811058, 0.365530,
		-0.799694, 0.554295, -0.230752,
		34.327164, 34.975891, 25.180557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641136, 34.953449, 25.958340>,  <34.886951, 34.587883, 25.342083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641136, 34.953449, 25.958340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302719, 34.956051, 25.745110>,  <34.099670, 34.957611, 25.617172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302719, 34.956051, 25.745110>,  <34.641136, 34.953449, 25.958340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302719, 34.956051, 25.745110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472031, -0.473897, 0.743376,
		-0.247784, 0.880556, 0.404010,
		-0.846044, 0.006509, -0.533074,
		34.048904, 34.958004, 25.585188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114994, 35.289486, 26.402752>,  <34.641136, 34.953449, 25.958340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114994, 35.289486, 26.402752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932533, 35.057899, 26.132427>,  <33.823055, 34.918949, 25.970232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932533, 35.057899, 26.132427>,  <34.114994, 35.289486, 26.402752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932533, 35.057899, 26.132427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541378, -0.422184, 0.727097,
		-0.706282, 0.697538, -0.120860,
		-0.456153, -0.578966, -0.675813,
		33.795689, 34.884209, 25.929684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381432, 35.361355, 26.476849>,  <34.114994, 35.289486, 26.402752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381432, 35.361355, 26.476849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440067, 35.020473, 26.275948>,  <33.475250, 34.815945, 26.155407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440067, 35.020473, 26.275948>,  <33.381432, 35.361355, 26.476849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440067, 35.020473, 26.275948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451529, -0.509403, 0.732550,
		-0.880132, 0.119398, -0.459469,
		0.146589, -0.852205, -0.502254,
		33.484043, 34.764812, 26.125271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755367, 34.947113, 26.640451>,  <33.381432, 35.361355, 26.476849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755367, 34.947113, 26.640451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024673, 34.707172, 26.467525>,  <33.186256, 34.563210, 26.363770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024673, 34.707172, 26.467525>,  <32.755367, 34.947113, 26.640451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024673, 34.707172, 26.467525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329681, -0.766880, 0.550642,
		-0.661835, -0.228201, -0.714071,
		0.673264, -0.599850, -0.432315,
		33.226654, 34.527218, 26.337831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349327, 34.435020, 26.341686>,  <32.755367, 34.947113, 26.640451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349327, 34.435020, 26.341686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713017, 34.273006, 26.380165>,  <32.931232, 34.175797, 26.403252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713017, 34.273006, 26.380165>,  <32.349327, 34.435020, 26.341686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713017, 34.273006, 26.380165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363308, -0.659183, 0.658396,
		-0.203263, -0.633580, -0.746499,
		0.909226, -0.405036, 0.096197,
		32.985783, 34.151497, 26.409023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248501, 33.720852, 26.182407>,  <32.349327, 34.435020, 26.341686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248501, 33.720852, 26.182407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585667, 33.734020, 26.397224>,  <32.787964, 33.741920, 26.526115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585667, 33.734020, 26.397224>,  <32.248501, 33.720852, 26.182407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585667, 33.734020, 26.397224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236737, -0.873631, 0.425117,
		0.483173, -0.485474, -0.728601,
		0.842911, 0.032918, 0.537045,
		32.838539, 33.743896, 26.558338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502129, 33.022594, 26.215914>,  <32.248501, 33.720852, 26.182407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502129, 33.022594, 26.215914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672310, 33.207870, 26.526897>,  <32.774418, 33.319038, 26.713488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672310, 33.207870, 26.526897>,  <32.502129, 33.022594, 26.215914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672310, 33.207870, 26.526897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128402, -0.819501, 0.558508,
		0.895824, -0.337447, -0.289185,
		0.425454, 0.463193, 0.777458,
		32.799946, 33.346828, 26.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993931, 32.529579, 26.537323>,  <32.502129, 33.022594, 26.215914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993931, 32.529579, 26.537323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909794, 32.784798, 26.833607>,  <32.859310, 32.937931, 27.011377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909794, 32.784798, 26.833607>,  <32.993931, 32.529579, 26.537323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909794, 32.784798, 26.833607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162910, -0.769941, 0.616970,
		0.963959, 0.009105, 0.265895,
		-0.210341, 0.638051, 0.740708,
		32.846691, 32.976212, 27.055819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073887, 32.152344, 27.090572>,  <32.993931, 32.529579, 26.537323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073887, 32.152344, 27.090572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901958, 32.473186, 27.256409>,  <32.798801, 32.665691, 27.355911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901958, 32.473186, 27.256409>,  <33.073887, 32.152344, 27.090572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901958, 32.473186, 27.256409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319864, -0.564656, 0.760822,
		0.844360, 0.194402, 0.499263,
		-0.429818, 0.802104, 0.414591,
		32.773014, 32.713818, 27.380787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325344, 32.174191, 27.861401>,  <33.073887, 32.152344, 27.090572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325344, 32.174191, 27.861401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999401, 32.399216, 27.805500>,  <32.803837, 32.534229, 27.771959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999401, 32.399216, 27.805500>,  <33.325344, 32.174191, 27.861401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999401, 32.399216, 27.805500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474899, -0.509648, 0.717447,
		0.332385, 0.650984, 0.682451,
		-0.814856, 0.562564, -0.139753,
		32.754944, 32.567986, 27.763575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031525, 32.199150, 28.541531>,  <33.325344, 32.174191, 27.861401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031525, 32.199150, 28.541531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727238, 32.343971, 28.326042>,  <32.544666, 32.430866, 28.196749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727238, 32.343971, 28.326042>,  <33.031525, 32.199150, 28.541531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727238, 32.343971, 28.326042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648821, -0.400686, 0.646901,
		0.018355, 0.841645, 0.539719,
		-0.760719, 0.362055, -0.538723,
		32.499023, 32.452587, 28.164425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602913, 32.821938, 28.832485>,  <33.031525, 32.199150, 28.541531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602913, 32.821938, 28.832485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365639, 32.583466, 28.616077>,  <32.223274, 32.440384, 28.486233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365639, 32.583466, 28.616077>,  <32.602913, 32.821938, 28.832485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365639, 32.583466, 28.616077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546846, -0.194812, 0.814253,
		-0.590836, 0.778858, -0.210457,
		-0.593188, -0.596178, -0.541017,
		32.187683, 32.404613, 28.453772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961769, 33.011860, 28.965805>,  <32.602913, 32.821938, 28.832485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961769, 33.011860, 28.965805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948782, 32.627888, 28.854462>,  <31.940990, 32.397503, 28.787657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948782, 32.627888, 28.854462>,  <31.961769, 33.011860, 28.965805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948782, 32.627888, 28.854462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682431, -0.182188, 0.707881,
		-0.730229, 0.212941, -0.649170,
		-0.032466, -0.959929, -0.278357,
		31.939043, 32.339909, 28.770954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292065, 32.860298, 29.148165>,  <31.961769, 33.011860, 28.965805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292065, 32.860298, 29.148165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447584, 32.494549, 29.102978>,  <31.540895, 32.275101, 29.075865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447584, 32.494549, 29.102978>,  <31.292065, 32.860298, 29.148165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447584, 32.494549, 29.102978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604447, -0.345691, 0.717734,
		-0.695327, -0.210769, -0.687092,
		0.388798, -0.914371, -0.112969,
		31.564224, 32.220238, 29.069086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781956, 32.465004, 29.272938>,  <31.292065, 32.860298, 29.148165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781956, 32.465004, 29.272938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074907, 32.194881, 29.307781>,  <31.250679, 32.032810, 29.328688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074907, 32.194881, 29.307781>,  <30.781956, 32.465004, 29.272938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074907, 32.194881, 29.307781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554132, -0.516790, 0.652584,
		-0.395675, -0.526208, -0.752693,
		0.732380, -0.675302, 0.087108,
		31.294621, 31.992290, 29.333914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433786, 31.838133, 29.141609>,  <30.781956, 32.465004, 29.272938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433786, 31.838133, 29.141609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770990, 31.793671, 29.352123>,  <30.973312, 31.766994, 29.478432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770990, 31.793671, 29.352123>,  <30.433786, 31.838133, 29.141609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770990, 31.793671, 29.352123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507273, -0.489709, 0.709126,
		0.178906, -0.864771, -0.469216,
		0.843011, -0.111154, 0.526287,
		31.023893, 31.760324, 29.510010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371912, 31.141869, 29.317049>,  <30.433786, 31.838133, 29.141609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371912, 31.141869, 29.317049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625675, 31.313881, 29.573986>,  <30.777933, 31.417088, 29.728148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625675, 31.313881, 29.573986>,  <30.371912, 31.141869, 29.317049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625675, 31.313881, 29.573986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378613, -0.551608, 0.743224,
		0.673927, -0.714706, -0.187131,
		0.634409, 0.430029, 0.642340,
		30.815998, 31.442890, 29.766687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550697, 30.652697, 29.756561>,  <30.371912, 31.141869, 29.317049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550697, 30.652697, 29.756561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653809, 30.984356, 29.954979>,  <30.715675, 31.183352, 30.074030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653809, 30.984356, 29.954979>,  <30.550697, 30.652697, 29.756561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653809, 30.984356, 29.954979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302097, -0.418488, 0.856507,
		0.917762, -0.370643, 0.142606,
		0.257780, 0.829151, 0.496043,
		30.731142, 31.233101, 30.103792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804331, 30.383812, 30.299990>,  <30.550697, 30.652697, 29.756561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804331, 30.383812, 30.299990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762003, 30.756939, 30.437775>,  <30.736607, 30.980816, 30.520445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762003, 30.756939, 30.437775>,  <30.804331, 30.383812, 30.299990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762003, 30.756939, 30.437775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202101, -0.359350, 0.911056,
		0.973631, 0.026791, 0.226549,
		-0.105819, 0.932818, 0.344460,
		30.730257, 31.036785, 30.541113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285875, 30.448656, 30.846279>,  <30.804331, 30.383812, 30.299990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285875, 30.448656, 30.846279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030518, 30.750759, 30.905659>,  <30.877302, 30.932020, 30.941286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030518, 30.750759, 30.905659>,  <31.285875, 30.448656, 30.846279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030518, 30.750759, 30.905659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137594, -0.301736, 0.943411,
		0.757311, 0.581843, 0.296546,
		-0.638395, 0.755257, 0.148450,
		30.838999, 30.977337, 30.950193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491392, 30.698908, 31.473803>,  <31.285875, 30.448656, 30.846279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491392, 30.698908, 31.473803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104481, 30.771759, 31.403141>,  <30.872334, 30.815470, 31.360744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104481, 30.771759, 31.403141>,  <31.491392, 30.698908, 31.473803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104481, 30.771759, 31.403141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226917, -0.309471, 0.923437,
		0.113513, 0.933305, 0.340672,
		-0.967276, 0.182126, -0.176654,
		30.814299, 30.826397, 31.350145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184196, 31.002213, 32.070118>,  <31.491392, 30.698908, 31.473803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184196, 31.002213, 32.070118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874271, 30.845638, 31.871544>,  <30.688316, 30.751694, 31.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874271, 30.845638, 31.871544>,  <31.184196, 31.002213, 32.070118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874271, 30.845638, 31.871544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348301, -0.391024, 0.851931,
		-0.527592, 0.832995, 0.166633,
		-0.774812, -0.391434, -0.496433,
		30.641829, 30.728209, 31.722614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547586, 31.187723, 32.454674>,  <31.184196, 31.002213, 32.070118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547586, 31.187723, 32.454674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426489, 30.886944, 32.220436>,  <30.353830, 30.706476, 32.079895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426489, 30.886944, 32.220436>,  <30.547586, 31.187723, 32.454674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426489, 30.886944, 32.220436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496026, -0.400340, 0.770510,
		-0.813821, 0.523736, -0.251786,
		-0.302744, -0.751950, -0.585591,
		30.335665, 30.661358, 32.044758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902020, 30.942839, 32.737782>,  <30.547586, 31.187723, 32.454674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902020, 30.942839, 32.737782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998354, 30.626694, 32.512455>,  <30.056154, 30.437006, 32.377258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998354, 30.626694, 32.512455>,  <29.902020, 30.942839, 32.737782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998354, 30.626694, 32.512455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522524, -0.594693, 0.610990,
		-0.817903, 0.147196, -0.556208,
		0.240838, -0.790363, -0.563315,
		30.070606, 30.389585, 32.343460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220797, 30.579203, 32.627422>,  <29.902020, 30.942839, 32.737782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220797, 30.579203, 32.627422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508017, 30.317719, 32.531864>,  <29.680349, 30.160828, 32.474529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508017, 30.317719, 32.531864>,  <29.220797, 30.579203, 32.627422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508017, 30.317719, 32.531864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482501, -0.714921, 0.506044,
		-0.501593, -0.248100, -0.828764,
		0.718051, -0.653708, -0.238891,
		29.723433, 30.121607, 32.460197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889812, 29.962978, 32.391582>,  <29.220797, 30.579203, 32.627422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889812, 29.962978, 32.391582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250298, 29.859497, 32.530659>,  <29.466589, 29.797407, 32.614105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250298, 29.859497, 32.530659>,  <28.889812, 29.962978, 32.391582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250298, 29.859497, 32.530659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411635, -0.761926, 0.500025,
		0.135558, -0.593751, -0.793148,
		0.901211, -0.258705, 0.347694,
		29.520660, 29.781885, 32.634968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925169, 29.255993, 32.285862>,  <28.889812, 29.962978, 32.391582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925169, 29.255993, 32.285862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212538, 29.291569, 32.561821>,  <29.384960, 29.312914, 32.727398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212538, 29.291569, 32.561821>,  <28.925169, 29.255993, 32.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212538, 29.291569, 32.561821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426655, -0.726984, 0.538016,
		0.549394, -0.680871, -0.484337,
		0.718424, 0.088938, 0.689897,
		29.428064, 29.318251, 32.768791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150120, 28.563141, 32.488392>,  <28.925169, 29.255993, 32.285862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150120, 28.563141, 32.488392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288187, 28.772018, 32.800331>,  <29.371027, 28.897345, 32.987495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288187, 28.772018, 32.800331>,  <29.150120, 28.563141, 32.488392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288187, 28.772018, 32.800331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157307, -0.786977, 0.596591,
		0.925263, -0.328602, -0.189496,
		0.345170, 0.522195, 0.779853,
		29.391739, 28.928677, 33.034286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599422, 28.060619, 32.870876>,  <29.150120, 28.563141, 32.488392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599422, 28.060619, 32.870876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524982, 28.363480, 33.121346>,  <29.480318, 28.545195, 33.271626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524982, 28.363480, 33.121346>,  <29.599422, 28.060619, 32.870876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524982, 28.363480, 33.121346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052433, -0.644051, 0.763183,
		0.981131, 0.109196, 0.159557,
		-0.186100, 0.757149, 0.626173,
		29.469152, 28.590624, 33.309196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916361, 27.882803, 33.460896>,  <29.599422, 28.060619, 32.870876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916361, 27.882803, 33.460896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664991, 28.166092, 33.589588>,  <29.514170, 28.336065, 33.666801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664991, 28.166092, 33.589588>,  <29.916361, 27.882803, 33.460896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664991, 28.166092, 33.589588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190887, -0.541357, 0.818838,
		0.754087, 0.453162, 0.475391,
		-0.628422, 0.708221, 0.321727,
		29.476465, 28.378559, 33.686108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119621, 27.949837, 34.120186>,  <29.916361, 27.882803, 33.460896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119621, 27.949837, 34.120186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740671, 28.054329, 34.046169>,  <29.513302, 28.117023, 34.001759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740671, 28.054329, 34.046169>,  <30.119621, 27.949837, 34.120186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740671, 28.054329, 34.046169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306275, -0.571422, 0.761362,
		0.093154, 0.777969, 0.621359,
		-0.947374, 0.261231, -0.185042,
		29.456459, 28.132698, 33.990658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790228, 28.055597, 34.777969>,  <30.119621, 27.949837, 34.120186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790228, 28.055597, 34.777969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475182, 28.005112, 34.536728>,  <29.286154, 27.974821, 34.391983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475182, 28.005112, 34.536728>,  <29.790228, 28.055597, 34.777969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475182, 28.005112, 34.536728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345284, -0.720271, 0.601655,
		-0.510335, 0.682114, 0.523716,
		-0.787615, -0.126215, -0.603102,
		29.238897, 27.967247, 34.355797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124031, 28.061241, 35.244358>,  <29.790228, 28.055597, 34.777969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124031, 28.061241, 35.244358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061903, 27.870216, 34.898453>,  <29.024626, 27.755602, 34.690910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061903, 27.870216, 34.898453>,  <29.124031, 28.061241, 35.244358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061903, 27.870216, 34.898453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384523, -0.777119, 0.498225,
		-0.909955, 0.409904, -0.062933,
		-0.155318, -0.477562, -0.864761,
		29.015308, 27.726948, 34.639023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563148, 27.651567, 35.415524>,  <29.124031, 28.061241, 35.244358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563148, 27.651567, 35.415524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727829, 27.478977, 35.094444>,  <28.826637, 27.375423, 34.901794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727829, 27.478977, 35.094444>,  <28.563148, 27.651567, 35.415524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727829, 27.478977, 35.094444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323641, -0.892622, 0.313818,
		-0.851914, 0.130587, -0.507139,
		0.411703, -0.431478, -0.802701,
		28.851339, 27.349533, 34.853634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026842, 27.218763, 35.061607>,  <28.563148, 27.651567, 35.415524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026842, 27.218763, 35.061607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384100, 27.079636, 34.947540>,  <28.598454, 26.996159, 34.879101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384100, 27.079636, 34.947540>,  <28.026842, 27.218763, 35.061607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384100, 27.079636, 34.947540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305036, -0.934346, 0.184257,
		-0.330529, -0.077583, -0.940602,
		0.893143, -0.347819, -0.285163,
		28.652042, 26.975290, 34.861992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855612, 26.563114, 34.830093>,  <28.026842, 27.218763, 35.061607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855612, 26.563114, 34.830093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255074, 26.544807, 34.820343>,  <28.494751, 26.533823, 34.814491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255074, 26.544807, 34.820343>,  <27.855612, 26.563114, 34.830093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255074, 26.544807, 34.820343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045943, -0.998921, -0.006750,
		-0.024045, 0.007861, -0.999680,
		0.998655, -0.045766, -0.024380,
		28.554670, 26.531078, 34.813030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086166, 26.092451, 34.227261>,  <27.855612, 26.563114, 34.830093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086166, 26.092451, 34.227261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350714, 26.101128, 34.527161>,  <28.509443, 26.106333, 34.707100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350714, 26.101128, 34.527161>,  <28.086166, 26.092451, 34.227261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350714, 26.101128, 34.527161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089177, -0.990218, 0.107311,
		0.744740, -0.137833, -0.652966,
		0.661370, 0.021689, 0.749746,
		28.549124, 26.107634, 34.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997597, 25.362549, 34.057384>,  <28.086166, 26.092451, 34.227261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997597, 25.362549, 34.057384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091881, 25.012486, 33.888367>,  <28.148451, 24.802448, 33.786957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091881, 25.012486, 33.888367>,  <27.997597, 25.362549, 34.057384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091881, 25.012486, 33.888367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599017, 0.473212, -0.645948,
		0.765257, -0.100851, 0.635776,
		0.235712, -0.875157, -0.422540,
		28.162594, 24.749939, 33.761604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739357, 25.406185, 33.887749>,  <27.997597, 25.362549, 34.057384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739357, 25.406185, 33.887749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541767, 25.146801, 33.656063>,  <28.423214, 24.991171, 33.517052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541767, 25.146801, 33.656063>,  <28.739357, 25.406185, 33.887749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541767, 25.146801, 33.656063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432993, 0.394225, -0.810619,
		0.753995, -0.651221, 0.086042,
		-0.493972, -0.648459, -0.579218,
		28.393576, 24.952263, 33.482296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190285, 25.103725, 33.420593>,  <28.739357, 25.406185, 33.887749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190285, 25.103725, 33.420593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826210, 25.072983, 33.257790>,  <28.607765, 25.054537, 33.160107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826210, 25.072983, 33.257790>,  <29.190285, 25.103725, 33.420593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826210, 25.072983, 33.257790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350224, 0.381825, -0.855309,
		0.221138, -0.921034, -0.320616,
		-0.910187, -0.076854, -0.407004,
		28.553154, 25.049927, 33.135689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350016, 25.057827, 32.715450>,  <29.190285, 25.103725, 33.420593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350016, 25.057827, 32.715450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956100, 25.125996, 32.701904>,  <28.719751, 25.166897, 32.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956100, 25.125996, 32.701904>,  <29.350016, 25.057827, 32.715450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956100, 25.125996, 32.701904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104725, 0.426642, -0.898337,
		-0.138646, -0.888220, -0.437999,
		-0.984790, 0.170420, -0.033867,
		28.660664, 25.177122, 32.691746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123869, 24.848907, 32.104351>,  <29.350016, 25.057827, 32.715450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123869, 24.848907, 32.104351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837160, 25.108978, 32.205151>,  <28.665134, 25.265020, 32.265629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837160, 25.108978, 32.205151>,  <29.123869, 24.848907, 32.104351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837160, 25.108978, 32.205151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068896, 0.425655, -0.902259,
		-0.693894, -0.629354, -0.349892,
		-0.716773, 0.650179, 0.251999,
		28.622128, 25.304031, 32.280750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615442, 24.829445, 31.539240>,  <29.123869, 24.848907, 32.104351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615442, 24.829445, 31.539240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568434, 25.170853, 31.742294>,  <28.540228, 25.375698, 31.864126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568434, 25.170853, 31.742294>,  <28.615442, 24.829445, 31.539240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568434, 25.170853, 31.742294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034217, 0.507393, -0.861035,
		-0.992480, -0.118561, -0.030425,
		-0.117523, 0.853520, 0.507634,
		28.533176, 25.426908, 31.894585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065348, 25.289762, 31.122545>,  <28.615442, 24.829445, 31.539240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065348, 25.289762, 31.122545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267052, 25.517193, 31.382526>,  <28.388075, 25.653650, 31.538515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267052, 25.517193, 31.382526>,  <28.065348, 25.289762, 31.122545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267052, 25.517193, 31.382526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006569, 0.750106, -0.661285,
		-0.863526, 0.337730, 0.374515,
		0.504262, 0.568576, 0.649955,
		28.418331, 25.687765, 31.577513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889593, 25.852043, 30.887102>,  <28.065348, 25.289762, 31.122545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889593, 25.852043, 30.887102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200726, 25.969872, 31.109169>,  <28.387405, 26.040569, 31.242409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200726, 25.969872, 31.109169>,  <27.889593, 25.852043, 30.887102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200726, 25.969872, 31.109169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201245, 0.720101, -0.664044,
		-0.595384, 0.628237, 0.500835,
		0.777829, 0.294571, 0.555167,
		28.434074, 26.058243, 31.275719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863714, 26.616301, 30.876373>,  <27.889593, 25.852043, 30.887102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863714, 26.616301, 30.876373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232508, 26.514103, 30.992767>,  <28.453783, 26.452785, 31.062603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232508, 26.514103, 30.992767>,  <27.863714, 26.616301, 30.876373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232508, 26.514103, 30.992767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382534, 0.717637, -0.581949,
		-0.060138, 0.647858, 0.759383,
		0.921982, -0.255493, 0.290985,
		28.509102, 26.437454, 31.080063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177286, 27.246305, 31.061758>,  <27.863714, 26.616301, 30.876373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177286, 27.246305, 31.061758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496450, 27.010498, 31.011467>,  <28.687948, 26.869013, 30.981293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496450, 27.010498, 31.011467>,  <28.177286, 27.246305, 31.061758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496450, 27.010498, 31.011467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442861, 0.714829, -0.541196,
		0.408920, 0.376146, 0.831444,
		0.797909, -0.589520, -0.125728,
		28.735823, 26.833643, 30.973749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961945, 27.598709, 31.267731>,  <28.177286, 27.246305, 31.061758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961945, 27.598709, 31.267731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960335, 27.323383, 30.977570>,  <28.959370, 27.158188, 30.803473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960335, 27.323383, 30.977570>,  <28.961945, 27.598709, 31.267731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960335, 27.323383, 30.977570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528038, 0.614567, -0.586075,
		0.849212, -0.385396, 0.360984,
		-0.004022, -0.688315, -0.725401,
		28.959127, 27.116888, 30.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522085, 27.772156, 30.991386>,  <28.961945, 27.598709, 31.267731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522085, 27.772156, 30.991386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380260, 27.525211, 30.710487>,  <29.295166, 27.377045, 30.541948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380260, 27.525211, 30.710487>,  <29.522085, 27.772156, 30.991386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380260, 27.525211, 30.710487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470898, 0.530944, -0.704523,
		0.807799, -0.580485, 0.102462,
		-0.354564, -0.617363, -0.702245,
		29.273891, 27.340002, 30.499813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117674, 27.614143, 30.534874>,  <29.522085, 27.772156, 30.991386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117674, 27.614143, 30.534874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817410, 27.501461, 30.295826>,  <29.637251, 27.433851, 30.152397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817410, 27.501461, 30.295826>,  <30.117674, 27.614143, 30.534874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817410, 27.501461, 30.295826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520121, 0.305804, -0.797469,
		0.407408, -0.909463, -0.083033,
		-0.750661, -0.281708, -0.597619,
		29.592211, 27.416948, 30.116541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355646, 27.189241, 29.968182>,  <30.117674, 27.614143, 30.534874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355646, 27.189241, 29.968182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003202, 27.342857, 29.857796>,  <29.791737, 27.435028, 29.791565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003202, 27.342857, 29.857796>,  <30.355646, 27.189241, 29.968182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003202, 27.342857, 29.857796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395988, 0.280142, -0.874479,
		-0.258528, -0.879791, -0.398912,
		-0.881111, 0.384042, -0.275963,
		29.738869, 27.458071, 29.775007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327639, 27.091713, 29.290487>,  <30.355646, 27.189241, 29.968182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327639, 27.091713, 29.290487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053701, 27.381439, 29.322380>,  <29.889339, 27.555275, 29.341516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053701, 27.381439, 29.322380>,  <30.327639, 27.091713, 29.290487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053701, 27.381439, 29.322380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356261, 0.428266, -0.830462,
		-0.635664, -0.540329, -0.551340,
		-0.684843, 0.724315, 0.079734,
		29.848249, 27.598734, 29.346300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017862, 27.159546, 28.639271>,  <30.327639, 27.091713, 29.290487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017862, 27.159546, 28.639271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943922, 27.512314, 28.812729>,  <29.899557, 27.723974, 28.916803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943922, 27.512314, 28.812729>,  <30.017862, 27.159546, 28.639271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943922, 27.512314, 28.812729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191426, 0.465109, -0.864309,
		-0.963943, -0.076758, -0.254798,
		-0.184851, 0.881919, 0.433646,
		29.888466, 27.776890, 28.942823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746923, 27.564781, 28.127697>,  <30.017862, 27.159546, 28.639271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746923, 27.564781, 28.127697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886194, 27.809765, 28.411575>,  <29.969757, 27.956755, 28.581902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886194, 27.809765, 28.411575>,  <29.746923, 27.564781, 28.127697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886194, 27.809765, 28.411575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391887, 0.592644, -0.703703,
		-0.851586, 0.523133, -0.033670,
		0.348176, 0.612458, 0.709696,
		29.990646, 27.993502, 28.624485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620712, 28.222960, 27.880455>,  <29.746923, 27.564781, 28.127697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620712, 28.222960, 27.880455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898880, 28.309216, 28.154648>,  <30.065781, 28.360970, 28.319164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898880, 28.309216, 28.154648>,  <29.620712, 28.222960, 27.880455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898880, 28.309216, 28.154648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412967, 0.660734, -0.626809,
		-0.588088, 0.718978, 0.370436,
		0.695421, 0.215641, 0.685484,
		30.107506, 28.373907, 28.360292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610836, 29.031919, 27.962641>,  <29.620712, 28.222960, 27.880455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610836, 29.031919, 27.962641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965885, 28.913601, 28.103855>,  <30.178915, 28.842609, 28.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965885, 28.913601, 28.103855>,  <29.610836, 29.031919, 27.962641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965885, 28.913601, 28.103855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440822, 0.767687, -0.465116,
		-0.133439, 0.568471, 0.811809,
		0.887621, -0.295799, 0.353034,
		30.232172, 28.824862, 28.209764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000223, 29.670200, 28.260233>,  <29.610836, 29.031919, 27.962641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000223, 29.670200, 28.260233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278624, 29.389942, 28.197388>,  <30.445663, 29.221788, 28.159681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278624, 29.389942, 28.197388>,  <30.000223, 29.670200, 28.260233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278624, 29.389942, 28.197388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557185, 0.665006, -0.497305,
		0.452913, 0.258584, 0.853232,
		0.695999, -0.700643, -0.157111,
		30.487423, 29.179749, 28.150255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679344, 29.858883, 28.610878>,  <30.000223, 29.670200, 28.260233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679344, 29.858883, 28.610878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748310, 29.598770, 28.314930>,  <30.789690, 29.442703, 28.137362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748310, 29.598770, 28.314930>,  <30.679344, 29.858883, 28.610878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748310, 29.598770, 28.314930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568019, 0.679291, -0.464669,
		0.804754, -0.340146, 0.486490,
		0.172413, -0.650280, -0.739872,
		30.800034, 29.403687, 28.092968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380926, 30.001196, 28.530001>,  <30.679344, 29.858883, 28.610878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380926, 30.001196, 28.530001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285233, 29.773399, 28.215435>,  <31.227818, 29.636721, 28.026695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285233, 29.773399, 28.215435>,  <31.380926, 30.001196, 28.530001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285233, 29.773399, 28.215435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601827, 0.548614, -0.580368,
		0.761953, -0.612127, 0.211490,
		-0.239233, -0.569493, -0.786413,
		31.213463, 29.602551, 27.979511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919405, 30.126226, 28.097635>,  <31.380926, 30.001196, 28.530001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919405, 30.126226, 28.097635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646484, 29.970051, 27.850403>,  <31.482733, 29.876347, 27.702063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646484, 29.970051, 27.850403>,  <31.919405, 30.126226, 28.097635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646484, 29.970051, 27.850403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396128, 0.513137, -0.761428,
		0.614451, -0.764362, -0.195450,
		-0.682299, -0.390437, -0.618083,
		31.441795, 29.852921, 27.664978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330395, 29.966646, 27.507582>,  <31.919405, 30.126226, 28.097635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330395, 29.966646, 27.507582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944109, 29.992832, 27.407089>,  <31.712339, 30.008545, 27.346794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944109, 29.992832, 27.407089>,  <32.330395, 29.966646, 27.507582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944109, 29.992832, 27.407089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246339, 0.536610, -0.807073,
		0.081978, -0.841287, -0.534337,
		-0.965711, 0.065466, -0.251232,
		31.654396, 30.012472, 27.331720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291046, 29.909866, 26.761757>,  <32.330395, 29.966646, 27.507582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291046, 29.909866, 26.761757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956091, 30.091137, 26.884010>,  <31.755117, 30.199900, 26.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956091, 30.091137, 26.884010>,  <32.291046, 29.909866, 26.761757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956091, 30.091137, 26.884010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047067, 0.616850, -0.785673,
		-0.544577, -0.643528, -0.537873,
		-0.837389, 0.453176, 0.305633,
		31.704874, 30.227089, 26.975700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993998, 30.077923, 26.181505>,  <32.291046, 29.909866, 26.761757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993998, 30.077923, 26.181505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770075, 30.309006, 26.419117>,  <31.635721, 30.447657, 26.561684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770075, 30.309006, 26.419117>,  <31.993998, 30.077923, 26.181505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770075, 30.309006, 26.419117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233663, 0.577735, -0.782064,
		-0.794996, -0.576606, -0.188431,
		-0.559806, 0.577709, 0.594029,
		31.602133, 30.482319, 26.597326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305370, 30.030449, 26.088518>,  <31.993998, 30.077923, 26.181505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305370, 30.030449, 26.088518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299028, 30.392838, 26.257736>,  <31.295223, 30.610270, 26.359266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299028, 30.392838, 26.257736>,  <31.305370, 30.030449, 26.088518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299028, 30.392838, 26.257736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465005, 0.367878, -0.805255,
		-0.885166, -0.209486, 0.415447,
		-0.015856, 0.905970, 0.423045,
		31.294271, 30.664629, 26.384649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646498, 30.269682, 26.040342>,  <31.305370, 30.030449, 26.088518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646498, 30.269682, 26.040342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843416, 30.615200, 26.083248>,  <30.961567, 30.822510, 26.108992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843416, 30.615200, 26.083248>,  <30.646498, 30.269682, 26.040342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843416, 30.615200, 26.083248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488593, 0.376220, -0.787233,
		-0.720362, 0.335141, 0.607255,
		0.492296, 0.863793, 0.107267,
		30.991104, 30.874338, 26.115429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209417, 30.739889, 25.954796>,  <30.646498, 30.269682, 26.040342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209417, 30.739889, 25.954796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542046, 30.959240, 25.919529>,  <30.741623, 31.090851, 25.898369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542046, 30.959240, 25.919529>,  <30.209417, 30.739889, 25.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542046, 30.959240, 25.919529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436515, 0.547101, -0.714237,
		-0.343436, 0.632424, 0.694328,
		0.831569, 0.548379, -0.088169,
		30.791515, 31.123755, 25.893078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015654, 31.443680, 25.943939>,  <30.209417, 30.739889, 25.954796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015654, 31.443680, 25.943939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369608, 31.441788, 25.757626>,  <30.581980, 31.440653, 25.645838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369608, 31.441788, 25.757626>,  <30.015654, 31.443680, 25.943939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369608, 31.441788, 25.757626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410534, 0.464549, -0.784638,
		0.220092, 0.885535, 0.409130,
		0.884885, -0.004731, -0.465785,
		30.635073, 31.440369, 25.617889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018503, 32.128197, 25.598764>,  <30.015654, 31.443680, 25.943939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018503, 32.128197, 25.598764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306646, 31.917645, 25.418095>,  <30.479532, 31.791315, 25.309692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306646, 31.917645, 25.418095>,  <30.018503, 32.128197, 25.598764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306646, 31.917645, 25.418095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254179, 0.405562, -0.878016,
		0.645350, 0.747293, 0.158357,
		0.720359, -0.526376, -0.451676,
		30.522755, 31.759731, 25.282593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340910, 32.580032, 25.157824>,  <30.018503, 32.128197, 25.598764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340910, 32.580032, 25.157824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447447, 32.226517, 25.003952>,  <30.511370, 32.014408, 24.911629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447447, 32.226517, 25.003952>,  <30.340910, 32.580032, 25.157824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447447, 32.226517, 25.003952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057232, 0.383890, -0.921604,
		0.962178, 0.267478, 0.051666,
		0.266343, -0.883790, -0.384679,
		30.527349, 31.961380, 24.888548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961298, 32.752312, 24.725189>,  <30.340910, 32.580032, 25.157824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961298, 32.752312, 24.725189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798576, 32.401058, 24.624477>,  <30.700943, 32.190308, 24.564051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798576, 32.401058, 24.624477>,  <30.961298, 32.752312, 24.725189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798576, 32.401058, 24.624477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016907, 0.282805, -0.959029,
		0.913358, -0.385881, -0.129893,
		-0.406806, -0.878133, -0.251778,
		30.676535, 32.137619, 24.548944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291235, 32.582245, 24.091904>,  <30.961298, 32.752312, 24.725189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291235, 32.582245, 24.091904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975353, 32.338135, 24.066837>,  <30.785824, 32.191669, 24.051798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975353, 32.338135, 24.066837>,  <31.291235, 32.582245, 24.091904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975353, 32.338135, 24.066837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179075, 0.327009, -0.927899,
		0.586770, -0.721543, -0.367526,
		-0.789704, -0.610279, -0.062669,
		30.738441, 32.155052, 24.048037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277842, 32.071411, 23.456497>,  <31.291235, 32.582245, 24.091904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277842, 32.071411, 23.456497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891943, 32.122471, 23.548561>,  <30.660404, 32.153107, 23.603800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891943, 32.122471, 23.548561>,  <31.277842, 32.071411, 23.456497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891943, 32.122471, 23.548561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159977, 0.409996, -0.897948,
		-0.208988, -0.903111, -0.375120,
		-0.964744, 0.127649, 0.230161,
		30.602520, 32.160767, 23.617609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859034, 31.852491, 22.909185>,  <31.277842, 32.071411, 23.456497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859034, 31.852491, 22.909185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574442, 32.048183, 23.110958>,  <30.403687, 32.165600, 23.232021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574442, 32.048183, 23.110958>,  <30.859034, 31.852491, 22.909185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574442, 32.048183, 23.110958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271567, 0.470640, -0.839494,
		-0.648111, -0.734269, -0.201992,
		-0.711480, 0.489231, 0.504430,
		30.360998, 32.194954, 23.262287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298059, 31.768387, 22.554188>,  <30.859034, 31.852491, 22.909185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298059, 31.768387, 22.554188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246773, 32.096458, 22.777210>,  <30.216000, 32.293301, 22.911024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246773, 32.096458, 22.777210>,  <30.298059, 31.768387, 22.554188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246773, 32.096458, 22.777210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343574, 0.490645, -0.800765,
		-0.930331, -0.294234, 0.218883,
		-0.128219, 0.820179, 0.557554,
		30.208307, 32.342510, 22.944477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562962, 31.901525, 22.591064>,  <30.298059, 31.768387, 22.554188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562962, 31.901525, 22.591064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777094, 32.235210, 22.644001>,  <29.905573, 32.435421, 22.675764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777094, 32.235210, 22.644001>,  <29.562962, 31.901525, 22.591064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777094, 32.235210, 22.644001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428152, 0.403071, -0.808838,
		-0.728086, 0.376331, 0.572945,
		0.535329, 0.834211, 0.132343,
		29.937693, 32.485474, 22.683704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185310, 32.442299, 22.311970>,  <29.562962, 31.901525, 22.591064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185310, 32.442299, 22.311970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519339, 32.645367, 22.396755>,  <29.719755, 32.767208, 22.447626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519339, 32.645367, 22.396755>,  <29.185310, 32.442299, 22.311970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519339, 32.645367, 22.396755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216258, 0.657192, -0.722032,
		-0.505854, 0.557109, 0.658590,
		0.835071, 0.507668, 0.211964,
		29.769859, 32.797668, 22.460344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010857, 33.225025, 22.214991>,  <29.185310, 32.442299, 22.311970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010857, 33.225025, 22.214991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405813, 33.177174, 22.173515>,  <29.642786, 33.148460, 22.148630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405813, 33.177174, 22.173515>,  <29.010857, 33.225025, 22.214991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405813, 33.177174, 22.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026518, 0.770682, -0.636668,
		0.156074, 0.625889, 0.764136,
		0.987389, -0.119631, -0.103686,
		29.702030, 33.141285, 22.142410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253460, 33.364277, 22.080742>,  <29.010857, 33.225025, 22.214991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253460, 33.364277, 22.080742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318848, 33.721973, 21.914074>,  <28.358080, 33.936592, 21.814074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318848, 33.721973, 21.914074>,  <28.253460, 33.364277, 22.080742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318848, 33.721973, 21.914074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981642, -0.189508, -0.021599,
		-0.098277, -0.405492, -0.908800,
		0.163467, 0.894239, -0.416672,
		28.367887, 33.990246, 21.789072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457277, 33.376747, 21.999041>,  <28.253460, 33.364277, 22.080742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457277, 33.376747, 21.999041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100798, 33.555603, 22.029575>,  <26.886909, 33.662918, 22.047897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100798, 33.555603, 22.029575>,  <27.457277, 33.376747, 21.999041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100798, 33.555603, 22.029575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296802, -0.702067, 0.647310,
		0.343035, 0.554224, 0.758395,
		-0.891199, 0.447143, 0.076339,
		26.833439, 33.689747, 22.052477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261478, 33.573494, 22.721087>,  <27.457277, 33.376747, 21.999041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261478, 33.573494, 22.721087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953272, 33.496532, 22.478012>,  <26.768349, 33.450356, 22.332167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953272, 33.496532, 22.478012>,  <27.261478, 33.573494, 22.721087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953272, 33.496532, 22.478012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375382, -0.633532, 0.676555,
		-0.515164, 0.749411, 0.415920,
		-0.770516, -0.192408, -0.607688,
		26.722116, 33.438808, 22.295706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655252, 33.730003, 23.053747>,  <27.261478, 33.573494, 22.721087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655252, 33.730003, 23.053747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580832, 33.431068, 22.798599>,  <26.536179, 33.251709, 22.645512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580832, 33.431068, 22.798599>,  <26.655252, 33.730003, 23.053747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580832, 33.431068, 22.798599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494593, -0.489719, 0.718021,
		-0.848978, 0.449074, -0.278513,
		-0.186052, -0.747334, -0.637869,
		26.525017, 33.206867, 22.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913517, 33.356941, 23.116415>,  <26.655252, 33.730003, 23.053747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913517, 33.356941, 23.116415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133064, 33.074093, 22.938103>,  <26.264793, 32.904385, 22.831116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133064, 33.074093, 22.938103>,  <25.913517, 33.356941, 23.116415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133064, 33.074093, 22.938103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200532, -0.629101, 0.751012,
		-0.811498, -0.322814, -0.487095,
		0.548869, -0.707123, -0.445780,
		26.297726, 32.861958, 22.804369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667088, 34.119404, 23.123476>,  <25.913517, 33.356941, 23.116415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667088, 34.119404, 23.123476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559412, 34.461582, 23.300453>,  <25.494806, 34.666889, 23.406639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559412, 34.461582, 23.300453>,  <25.667088, 34.119404, 23.123476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559412, 34.461582, 23.300453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774447, 0.080825, -0.627454,
		-0.572511, -0.511553, 0.640737,
		-0.269189, 0.855442, 0.442444,
		25.478655, 34.718216, 23.433186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979422, 34.086327, 23.301214>,  <25.667088, 34.119404, 23.123476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979422, 34.086327, 23.301214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092466, 34.459106, 23.210354>,  <25.160294, 34.682774, 23.155838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092466, 34.459106, 23.210354>,  <24.979422, 34.086327, 23.301214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092466, 34.459106, 23.210354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720205, 0.049742, -0.691975,
		-0.633588, 0.359156, 0.685254,
		0.282613, 0.931951, -0.227150,
		25.177250, 34.738693, 23.142208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.141195, 34.215729, 23.312307>,  <24.979422, 34.086327, 23.301214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.141195, 34.215729, 23.312307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.797747, 34.413727, 23.365601>,  <23.591677, 34.532524, 23.397577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.797747, 34.413727, 23.365601>,  <24.141195, 34.215729, 23.312307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.797747, 34.413727, 23.365601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171440, -0.032347, -0.984663,
		-0.483093, -0.868294, 0.112636,
		-0.858621, 0.494994, 0.133234,
		23.540161, 34.562225, 23.405571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.541527, 33.774891, 23.001171>,  <24.141195, 34.215729, 23.312307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.541527, 33.774891, 23.001171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454046, 34.165077, 23.011284>,  <23.401558, 34.399189, 23.017351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454046, 34.165077, 23.011284>,  <23.541527, 33.774891, 23.001171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.454046, 34.165077, 23.011284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353347, -0.055019, -0.933873,
		-0.909569, -0.213172, 0.356710,
		-0.218702, 0.975464, 0.025281,
		23.388435, 34.457718, 23.018867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.968023, 33.848667, 22.630085>,  <23.541527, 33.774891, 23.001171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.968023, 33.848667, 22.630085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072912, 34.234669, 22.630394>,  <23.135845, 34.466270, 22.630579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.072912, 34.234669, 22.630394>,  <22.968023, 33.848667, 22.630085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.072912, 34.234669, 22.630394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431081, 0.117853, -0.894584,
		-0.863370, 0.234248, 0.446900,
		0.262223, 0.965007, 0.000771,
		23.151579, 34.524170, 22.630625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289726, 34.273682, 22.546024>,  <22.968023, 33.848667, 22.630085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289726, 34.273682, 22.546024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612534, 34.479927, 22.430878>,  <22.806217, 34.603672, 22.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612534, 34.479927, 22.430878>,  <22.289726, 34.273682, 22.546024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612534, 34.479927, 22.430878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462125, 0.247938, -0.851450,
		-0.367643, 0.820166, 0.438367,
		0.807019, 0.515610, -0.287867,
		22.854639, 34.634609, 22.344517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000399, 34.949471, 22.305243>,  <22.289726, 34.273682, 22.546024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000399, 34.949471, 22.305243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.370405, 34.910915, 22.158245>,  <22.592409, 34.887783, 22.070047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.370405, 34.910915, 22.158245>,  <22.000399, 34.949471, 22.305243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.370405, 34.910915, 22.158245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318756, 0.329434, -0.888745,
		0.206726, 0.939246, 0.274010,
		0.925018, -0.096385, -0.367493,
		22.647911, 34.882000, 22.047997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015995, 35.526978, 21.943443>,  <22.000399, 34.949471, 22.305243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015995, 35.526978, 21.943443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320353, 35.311878, 21.798187>,  <22.502968, 35.182819, 21.711035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320353, 35.311878, 21.798187>,  <22.015995, 35.526978, 21.943443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320353, 35.311878, 21.798187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286747, 0.223372, -0.931601,
		0.582080, 0.812979, 0.015765,
		0.760893, -0.537746, -0.363139,
		22.548620, 35.150555, 21.689245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.378355, 35.937641, 21.415140>,  <22.015995, 35.526978, 21.943443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.378355, 35.937641, 21.415140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.499414, 35.566433, 21.328251>,  <22.572050, 35.343708, 21.276117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.499414, 35.566433, 21.328251>,  <22.378355, 35.937641, 21.415140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.499414, 35.566433, 21.328251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189803, 0.164660, -0.967916,
		0.934011, 0.334170, -0.126306,
		0.302650, -0.928018, -0.217221,
		22.590210, 35.288029, 21.263084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.677950, 36.005997, 20.810190>,  <22.378355, 35.937641, 21.415140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.677950, 36.005997, 20.810190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612110, 35.611572, 20.819916>,  <22.572607, 35.374916, 20.825752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.612110, 35.611572, 20.819916>,  <22.677950, 36.005997, 20.810190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612110, 35.611572, 20.819916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188549, 0.007257, -0.982037,
		0.968172, -0.166225, -0.187116,
		-0.164597, -0.986061, 0.024315,
		22.562731, 35.315754, 20.827209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.017971, 35.715229, 20.167690>,  <22.677950, 36.005997, 20.810190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.017971, 35.715229, 20.167690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745380, 35.445683, 20.281879>,  <22.581827, 35.283955, 20.350393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745380, 35.445683, 20.281879>,  <23.017971, 35.715229, 20.167690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.745380, 35.445683, 20.281879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254597, -0.147414, -0.955745,
		0.686128, -0.723997, -0.071106,
		-0.681475, -0.673867, 0.285472,
		22.540937, 35.243523, 20.367521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.052753, 35.248486, 19.672537>,  <23.017971, 35.715229, 20.167690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.052753, 35.248486, 19.672537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.709156, 35.147179, 19.850521>,  <22.502998, 35.086395, 19.957312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.709156, 35.147179, 19.850521>,  <23.052753, 35.248486, 19.672537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.709156, 35.147179, 19.850521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375881, -0.278127, -0.883945,
		0.347625, -0.926555, 0.143713,
		-0.858994, -0.253263, 0.444959,
		22.451458, 35.071201, 19.984009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.651865, 34.659191, 19.307468>,  <23.052753, 35.248486, 19.672537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.651865, 34.659191, 19.307468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.340195, 34.769882, 19.532433>,  <22.153193, 34.836296, 19.667412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.340195, 34.769882, 19.532433>,  <22.651865, 34.659191, 19.307468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340195, 34.769882, 19.532433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626253, -0.306007, -0.717055,
		-0.026331, -0.910922, 0.411737,
		-0.779175, 0.276732, 0.562410,
		22.106441, 34.852901, 19.701155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.191208, 34.066280, 19.306276>,  <22.651865, 34.659191, 19.307468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.191208, 34.066280, 19.306276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983593, 34.401928, 19.371361>,  <21.859024, 34.603317, 19.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983593, 34.401928, 19.371361>,  <22.191208, 34.066280, 19.306276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.983593, 34.401928, 19.371361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730813, -0.336936, -0.593622,
		-0.443299, -0.427021, 0.788123,
		-0.519036, 0.839123, 0.162709,
		21.827883, 34.653664, 19.420174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.424084, 33.885696, 19.499050>,  <22.191208, 34.066280, 19.306276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.424084, 33.885696, 19.499050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.440819, 34.258793, 19.355804>,  <21.450859, 34.482651, 19.269857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.440819, 34.258793, 19.355804>,  <21.424084, 33.885696, 19.499050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440819, 34.258793, 19.355804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794760, -0.186143, -0.577674,
		-0.605480, 0.308784, 0.733517,
		0.041837, 0.932740, -0.358115,
		21.453369, 34.538616, 19.248369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.773230, 34.261345, 19.697338>,  <21.424084, 33.885696, 19.499050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.773230, 34.261345, 19.697338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.921610, 34.456944, 19.381546>,  <21.010637, 34.574303, 19.192070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.921610, 34.456944, 19.381546>,  <20.773230, 34.261345, 19.697338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.921610, 34.456944, 19.381546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766022, -0.319472, -0.557805,
		-0.524982, 0.811677, 0.256075,
		0.370949, 0.488997, -0.789480,
		21.032894, 34.603642, 19.144703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.186852, 34.488811, 19.393457>,  <20.773230, 34.261345, 19.697338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.186852, 34.488811, 19.393457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459209, 34.521217, 19.102303>,  <20.622625, 34.540661, 18.927610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459209, 34.521217, 19.102303>,  <20.186852, 34.488811, 19.393457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.459209, 34.521217, 19.102303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674978, -0.316290, -0.666607,
		-0.284228, 0.945197, -0.160677,
		0.680896, 0.081015, -0.727886,
		20.663479, 34.545521, 18.883936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947580, 34.855587, 18.901278>,  <20.186852, 34.488811, 19.393457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947580, 34.855587, 18.901278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251341, 34.702297, 18.690964>,  <20.433598, 34.610325, 18.564775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.251341, 34.702297, 18.690964>,  <19.947580, 34.855587, 18.901278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251341, 34.702297, 18.690964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587297, -0.055991, -0.807432,
		0.279989, 0.921956, -0.267587,
		0.759400, -0.383226, -0.525785,
		20.479160, 34.587330, 18.533228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040606, 35.321632, 18.216835>,  <19.947580, 34.855587, 18.901278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040606, 35.321632, 18.216835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.169701, 34.946857, 18.163189>,  <20.247158, 34.721992, 18.131002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.169701, 34.946857, 18.163189>,  <20.040606, 35.321632, 18.216835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.169701, 34.946857, 18.163189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610707, -0.097886, -0.785783,
		0.723103, 0.335504, -0.603786,
		0.322736, -0.936939, -0.134113,
		20.266521, 34.665775, 18.122955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123648, 35.269459, 17.510351>,  <20.040606, 35.321632, 18.216835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123648, 35.269459, 17.510351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142651, 34.881168, 17.604530>,  <20.154053, 34.648193, 17.661037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142651, 34.881168, 17.604530>,  <20.123648, 35.269459, 17.510351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142651, 34.881168, 17.604530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445869, -0.231538, -0.864634,
		0.893837, -0.063903, -0.443816,
		0.047508, -0.970725, 0.235449,
		20.156902, 34.589951, 17.675165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450325, 34.910343, 16.926897>,  <20.123648, 35.269459, 17.510351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450325, 34.910343, 16.926897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229137, 34.646587, 17.130634>,  <20.096424, 34.488335, 17.252876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229137, 34.646587, 17.130634>,  <20.450325, 34.910343, 16.926897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229137, 34.646587, 17.130634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485932, -0.241357, -0.840010,
		0.676826, -0.712007, -0.186954,
		-0.552970, -0.659388, 0.509344,
		20.063246, 34.448772, 17.283438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.268547, 34.394047, 16.421526>,  <20.450325, 34.910343, 16.926897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.268547, 34.394047, 16.421526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.010551, 34.334934, 16.721432>,  <19.855755, 34.299465, 16.901375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.010551, 34.334934, 16.721432>,  <20.268547, 34.394047, 16.421526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010551, 34.334934, 16.721432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685788, -0.320950, -0.653212,
		0.337170, -0.935496, 0.105663,
		-0.644990, -0.147781, 0.749766,
		19.817055, 34.290600, 16.946362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997431, 33.769016, 16.247520>,  <20.268547, 34.394047, 16.421526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997431, 33.769016, 16.247520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752075, 33.951942, 16.505085>,  <19.604862, 34.061699, 16.659624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752075, 33.951942, 16.505085>,  <19.997431, 33.769016, 16.247520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752075, 33.951942, 16.505085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764441, -0.138910, -0.629551,
		-0.198458, -0.878388, 0.434796,
		-0.613388, 0.457316, 0.643908,
		19.568058, 34.089138, 16.698257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426823, 33.310764, 16.422276>,  <19.997431, 33.769016, 16.247520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426823, 33.310764, 16.422276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.364529, 33.705395, 16.402630>,  <19.327152, 33.942173, 16.390842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.364529, 33.705395, 16.402630>,  <19.426823, 33.310764, 16.422276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.364529, 33.705395, 16.402630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650975, -0.139899, -0.746096,
		-0.742953, -0.084221, 0.664024,
		-0.155733, 0.986578, -0.049112,
		19.317808, 34.001369, 16.387896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711710, 33.388840, 16.386837>,  <19.426823, 33.310764, 16.422276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711710, 33.388840, 16.386837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948856, 33.649887, 16.198116>,  <19.091145, 33.806515, 16.084885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948856, 33.649887, 16.198116>,  <18.711710, 33.388840, 16.386837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948856, 33.649887, 16.198116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548466, -0.101756, -0.829958,
		-0.589656, 0.750822, 0.297612,
		0.592867, 0.652620, -0.471801,
		19.126717, 33.845673, 16.056576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308729, 33.604645, 15.864412>,  <18.711710, 33.388840, 16.386837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308729, 33.604645, 15.864412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.685581, 33.696739, 15.766942>,  <18.911694, 33.751995, 15.708460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.685581, 33.696739, 15.766942>,  <18.308729, 33.604645, 15.864412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.685581, 33.696739, 15.766942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232339, -0.075560, -0.969695,
		-0.241675, 0.970196, -0.017694,
		0.942131, 0.230240, -0.243676,
		18.968220, 33.765812, 15.693839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930792, 33.033897, 15.640961>,  <18.308729, 33.604645, 15.864412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930792, 33.033897, 15.640961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.651995, 32.763798, 15.737493>,  <17.484716, 32.601738, 15.795412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.651995, 32.763798, 15.737493>,  <17.930792, 33.033897, 15.640961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651995, 32.763798, 15.737493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473004, -0.179992, 0.862479,
		-0.538948, 0.715294, 0.444848,
		-0.696995, -0.675246, 0.241331,
		17.442896, 32.561222, 15.809892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529177, 33.326508, 16.163837>,  <17.930792, 33.033897, 15.640961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529177, 33.326508, 16.163837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.541956, 33.555344, 16.491665>,  <17.549623, 33.692646, 16.688360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.541956, 33.555344, 16.491665>,  <17.529177, 33.326508, 16.163837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541956, 33.555344, 16.491665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472885, -0.713751, 0.516662,
		0.880545, -0.404067, 0.247731,
		0.031948, 0.572092, 0.819567,
		17.551540, 33.726971, 16.737535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917751, 33.727280, 16.290522>,  <17.529177, 33.326508, 16.163837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917751, 33.727280, 16.290522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.835884, 33.956718, 16.607784>,  <16.786764, 34.094379, 16.798141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.835884, 33.956718, 16.607784>,  <16.917751, 33.727280, 16.290522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.835884, 33.956718, 16.607784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927146, -0.146228, 0.344990,
		0.313866, 0.805981, -0.501878,
		-0.204667, 0.573595, 0.793158,
		16.774485, 34.128796, 16.845732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.320560, 34.374310, 16.537804>,  <16.917751, 33.727280, 16.290522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.320560, 34.374310, 16.537804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201464, 34.146137, 16.843994>,  <17.130005, 34.009232, 17.027708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201464, 34.146137, 16.843994>,  <17.320560, 34.374310, 16.537804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201464, 34.146137, 16.843994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949928, -0.256659, 0.178223,
		0.094802, 0.780211, 0.618290,
		-0.297741, -0.570435, 0.765476,
		17.112141, 33.975006, 17.073637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721979, 34.769970, 16.693813>,  <17.320560, 34.374310, 16.537804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721979, 34.769970, 16.693813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323572, 34.746769, 16.720890>,  <16.084528, 34.732849, 16.737137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323572, 34.746769, 16.720890>,  <16.721979, 34.769970, 16.693813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323572, 34.746769, 16.720890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076786, -0.172469, 0.982018,
		-0.045282, 0.983306, 0.176235,
		-0.996019, -0.058000, 0.067694,
		16.024767, 34.729370, 16.741198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229940, 35.337292, 17.034597>,  <16.721979, 34.769970, 16.693813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229940, 35.337292, 17.034597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.121977, 34.958931, 17.106628>,  <16.057199, 34.731915, 17.149847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.121977, 34.958931, 17.106628>,  <16.229940, 35.337292, 17.034597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121977, 34.958931, 17.106628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224123, 0.120164, 0.967125,
		-0.936439, 0.301394, 0.179564,
		-0.269908, -0.945898, 0.180075,
		16.041004, 34.675163, 17.160650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728402, 35.355259, 17.561096>,  <16.229940, 35.337292, 17.034597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728402, 35.355259, 17.561096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944159, 35.018482, 17.555603>,  <16.073612, 34.816418, 17.552307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944159, 35.018482, 17.555603>,  <15.728402, 35.355259, 17.561096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944159, 35.018482, 17.555603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408865, 0.247613, 0.878360,
		-0.736129, -0.479395, 0.477802,
		0.539391, -0.841943, -0.013733,
		16.105976, 34.765900, 17.551483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727796, 35.033382, 18.164186>,  <15.728402, 35.355259, 17.561096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.727796, 35.033382, 18.164186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066658, 34.887993, 18.009155>,  <16.269976, 34.800758, 17.916138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.066658, 34.887993, 18.009155>,  <15.727796, 35.033382, 18.164186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066658, 34.887993, 18.009155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460633, 0.138802, 0.876671,
		-0.264850, -0.921206, 0.285014,
		0.847155, -0.363473, -0.387576,
		16.320805, 34.778950, 17.892883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886486, 34.348587, 18.557030>,  <15.727796, 35.033382, 18.164186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886486, 34.348587, 18.557030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211628, 34.508877, 18.387943>,  <16.406713, 34.605049, 18.286491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211628, 34.508877, 18.387943>,  <15.886486, 34.348587, 18.557030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211628, 34.508877, 18.387943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451487, 0.025050, 0.891926,
		0.368004, -0.915857, -0.160560,
		0.812854, 0.400723, -0.422716,
		16.455484, 34.629093, 18.261129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472933, 34.017982, 18.786287>,  <15.886486, 34.348587, 18.557030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472933, 34.017982, 18.786287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634857, 34.361538, 18.660782>,  <16.732012, 34.567669, 18.585478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634857, 34.361538, 18.660782>,  <16.472933, 34.017982, 18.786287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634857, 34.361538, 18.660782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465387, 0.101849, 0.879228,
		0.787111, -0.501941, -0.358484,
		0.404809, 0.858884, -0.313763,
		16.756300, 34.619202, 18.566652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071999, 34.011692, 19.104412>,  <16.472933, 34.017982, 18.786287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071999, 34.011692, 19.104412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081600, 34.387074, 18.966587>,  <17.087360, 34.612305, 18.883892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081600, 34.387074, 18.966587>,  <17.071999, 34.011692, 19.104412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081600, 34.387074, 18.966587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520856, 0.282448, 0.805563,
		0.853307, -0.198804, -0.482020,
		0.024003, 0.938456, -0.344563,
		17.088800, 34.668610, 18.863218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754950, 34.159557, 19.217970>,  <17.071999, 34.011692, 19.104412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754950, 34.159557, 19.217970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.578257, 34.516857, 19.184563>,  <17.472240, 34.731239, 19.164518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.578257, 34.516857, 19.184563>,  <17.754950, 34.159557, 19.217970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578257, 34.516857, 19.184563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531409, 0.335519, 0.777837,
		0.722825, 0.299215, -0.622892,
		-0.441732, 0.893251, -0.083516,
		17.445738, 34.784832, 19.159508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272879, 34.696526, 19.325449>,  <17.754950, 34.159557, 19.217970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272879, 34.696526, 19.325449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938009, 34.912323, 19.361416>,  <17.737087, 35.041801, 19.382996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938009, 34.912323, 19.361416>,  <18.272879, 34.696526, 19.325449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.938009, 34.912323, 19.361416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388547, 0.470937, 0.791991,
		0.384932, 0.697969, -0.603876,
		-0.837173, 0.539497, 0.089915,
		17.686857, 35.074173, 19.388390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406498, 35.380783, 19.274076>,  <18.272879, 34.696526, 19.325449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406498, 35.380783, 19.274076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.068295, 35.366867, 19.487209>,  <17.865374, 35.358517, 19.615089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.068295, 35.366867, 19.487209>,  <18.406498, 35.380783, 19.274076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068295, 35.366867, 19.487209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369546, 0.682166, 0.630940,
		-0.385427, 0.730370, -0.563920,
		-0.845507, -0.034787, 0.532830,
		17.814642, 35.356430, 19.647058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219849, 36.102875, 19.468079>,  <18.406498, 35.380783, 19.274076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219849, 36.102875, 19.468079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032507, 35.865204, 19.729641>,  <17.920101, 35.722599, 19.886578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032507, 35.865204, 19.729641>,  <18.219849, 36.102875, 19.468079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032507, 35.865204, 19.729641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330814, 0.568332, 0.753367,
		-0.819271, 0.569164, -0.069618,
		-0.468355, -0.594181, 0.653905,
		17.892000, 35.686951, 19.925812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030485, 36.524590, 20.007713>,  <18.219849, 36.102875, 19.468079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030485, 36.524590, 20.007713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018373, 36.167072, 20.186695>,  <18.011106, 35.952560, 20.294085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018373, 36.167072, 20.186695>,  <18.030485, 36.524590, 20.007713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018373, 36.167072, 20.186695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499631, 0.374184, 0.781252,
		-0.865709, 0.247219, 0.435237,
		-0.030281, -0.893795, 0.447453,
		18.009289, 35.898933, 20.320930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875460, 36.728855, 20.692162>,  <18.030485, 36.524590, 20.007713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875460, 36.728855, 20.692162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018253, 36.356400, 20.721924>,  <18.103930, 36.132927, 20.739780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.018253, 36.356400, 20.721924>,  <17.875460, 36.728855, 20.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018253, 36.356400, 20.721924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411523, 0.228276, 0.882348,
		-0.838577, -0.284365, 0.464678,
		0.356984, -0.931142, 0.074405,
		18.125349, 36.077057, 20.744246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718805, 36.636425, 21.352514>,  <17.875460, 36.728855, 20.692162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718805, 36.636425, 21.352514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004810, 36.381889, 21.236706>,  <18.176414, 36.229168, 21.167221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004810, 36.381889, 21.236706>,  <17.718805, 36.636425, 21.352514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004810, 36.381889, 21.236706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505063, 0.183830, 0.843278,
		-0.483390, -0.749183, 0.452834,
		0.715014, -0.636342, -0.289523,
		18.219315, 36.190987, 21.149849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874960, 36.089607, 21.921253>,  <17.718805, 36.636425, 21.352514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874960, 36.089607, 21.921253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195663, 36.103516, 21.682598>,  <18.388084, 36.111858, 21.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195663, 36.103516, 21.682598>,  <17.874960, 36.089607, 21.921253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195663, 36.103516, 21.682598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594921, 0.048868, 0.802297,
		0.057065, -0.998199, 0.018486,
		0.801756, 0.034785, -0.596638,
		18.436190, 36.113945, 21.503607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270121, 35.763424, 22.321489>,  <17.874960, 36.089607, 21.921253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270121, 35.763424, 22.321489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527430, 35.901722, 22.048241>,  <18.681816, 35.984699, 21.884291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527430, 35.901722, 22.048241>,  <18.270121, 35.763424, 22.321489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527430, 35.901722, 22.048241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687332, 0.132295, 0.714194,
		0.337304, -0.928955, -0.152541,
		0.643274, 0.345746, -0.683124,
		18.720411, 36.005447, 21.843304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.854984, 35.330078, 22.374954>,  <18.270121, 35.763424, 22.321489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.854984, 35.330078, 22.374954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979364, 35.684746, 22.238060>,  <19.053991, 35.897549, 22.155924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.979364, 35.684746, 22.238060>,  <18.854984, 35.330078, 22.374954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979364, 35.684746, 22.238060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754139, -0.011028, 0.656621,
		0.578433, -0.462269, -0.672103,
		0.310948, 0.886671, -0.342237,
		19.072649, 35.950748, 22.135389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509895, 35.154446, 22.133602>,  <18.854984, 35.330078, 22.374954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509895, 35.154446, 22.133602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518942, 35.552078, 22.176105>,  <19.524370, 35.790657, 22.201609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518942, 35.552078, 22.176105>,  <19.509895, 35.154446, 22.133602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518942, 35.552078, 22.176105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864563, -0.072817, 0.497221,
		0.502016, 0.080624, -0.861092,
		0.022615, 0.994081, 0.106260,
		19.525726, 35.850304, 22.207983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204939, 35.292889, 22.104015>,  <19.509895, 35.154446, 22.133602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204939, 35.292889, 22.104015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.054947, 35.622429, 22.274036>,  <19.964952, 35.820152, 22.376049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.054947, 35.622429, 22.274036>,  <20.204939, 35.292889, 22.104015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054947, 35.622429, 22.274036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862211, 0.141497, 0.486386,
		0.340564, 0.548867, -0.763388,
		-0.374978, 0.823847, 0.425051,
		19.942453, 35.869583, 22.401552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725409, 35.725990, 22.073782>,  <20.204939, 35.292889, 22.104015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725409, 35.725990, 22.073782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506859, 35.876801, 22.372936>,  <20.375729, 35.967285, 22.552429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506859, 35.876801, 22.372936>,  <20.725409, 35.725990, 22.073782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506859, 35.876801, 22.372936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834377, 0.322576, 0.446945,
		-0.072741, 0.868216, -0.490826,
		-0.546373, 0.377023, 0.747884,
		20.342947, 35.989906, 22.597301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145332, 36.315720, 22.280519>,  <20.725409, 35.725990, 22.073782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145332, 36.315720, 22.280519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856249, 36.317795, 22.556973>,  <20.682798, 36.319038, 22.722843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.856249, 36.317795, 22.556973>,  <21.145332, 36.315720, 22.280519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.856249, 36.317795, 22.556973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629864, 0.416613, 0.655519,
		-0.284535, 0.909069, -0.304357,
		-0.722711, 0.005186, 0.691131,
		20.639435, 36.319351, 22.764313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915781, 37.035610, 22.532286>,  <21.145332, 36.315720, 22.280519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915781, 37.035610, 22.532286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.833397, 36.791965, 22.838634>,  <20.783966, 36.645779, 23.022444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.833397, 36.791965, 22.838634>,  <20.915781, 37.035610, 22.532286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833397, 36.791965, 22.838634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769335, 0.382875, 0.511401,
		-0.604734, 0.694541, 0.389755,
		-0.205961, -0.609114, 0.765872,
		20.771608, 36.609230, 23.068396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096966, 37.455753, 23.165047>,  <20.915781, 37.035610, 22.532286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096966, 37.455753, 23.165047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.117779, 37.068161, 23.261684>,  <21.130266, 36.835606, 23.319666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.117779, 37.068161, 23.261684>,  <21.096966, 37.455753, 23.165047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.117779, 37.068161, 23.261684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824740, 0.178106, 0.536732,
		-0.563113, 0.171324, 0.808425,
		0.052031, -0.968982, 0.241592,
		21.133389, 36.777466, 23.334162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058226, 37.437138, 23.828764>,  <21.096966, 37.455753, 23.165047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058226, 37.437138, 23.828764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.238356, 37.101482, 23.706745>,  <21.346434, 36.900089, 23.633533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.238356, 37.101482, 23.706745>,  <21.058226, 37.437138, 23.828764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238356, 37.101482, 23.706745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769832, 0.191843, 0.608733,
		-0.452291, -0.508961, 0.732387,
		0.450325, -0.839139, -0.305046,
		21.373453, 36.849739, 23.615231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480783, 37.033562, 24.088667>,  <21.058226, 37.437138, 23.828764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480783, 37.033562, 24.088667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337778, 37.341167, 23.876705>,  <20.251974, 37.525730, 23.749529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337778, 37.341167, 23.876705>,  <20.480783, 37.033562, 24.088667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337778, 37.341167, 23.876705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906283, -0.422666, -0.001941,
		-0.225464, 0.479548, 0.848056,
		-0.357514, 0.769017, -0.529902,
		20.230524, 37.571873, 23.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782482, 37.283081, 24.339281>,  <20.480783, 37.033562, 24.088667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782482, 37.283081, 24.339281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786762, 37.334858, 23.942669>,  <19.789330, 37.365925, 23.704702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786762, 37.334858, 23.942669>,  <19.782482, 37.283081, 24.339281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786762, 37.334858, 23.942669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984835, -0.170352, -0.032865,
		-0.173163, 0.976844, 0.125657,
		0.010698, 0.129442, -0.991530,
		19.789972, 37.373692, 23.645210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234062, 37.753365, 24.119883>,  <19.782482, 37.283081, 24.339281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234062, 37.753365, 24.119883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316807, 37.515743, 23.808933>,  <19.366453, 37.373173, 23.622364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316807, 37.515743, 23.808933>,  <19.234062, 37.753365, 24.119883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316807, 37.515743, 23.808933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962003, -0.268231, -0.051014,
		-0.178212, 0.758390, -0.626966,
		0.206860, -0.594052, -0.777375,
		19.378864, 37.337528, 23.575720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851557, 37.899849, 23.483225>,  <19.234062, 37.753365, 24.119883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851557, 37.899849, 23.483225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941517, 37.510769, 23.460304>,  <18.995493, 37.277321, 23.446552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941517, 37.510769, 23.460304>,  <18.851557, 37.899849, 23.483225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941517, 37.510769, 23.460304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964894, -0.214138, -0.152068,
		0.135646, 0.089490, -0.986708,
		0.224900, -0.972695, -0.057301,
		19.008987, 37.218960, 23.443113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514328, 37.633423, 22.880049>,  <18.851557, 37.899849, 23.483225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514328, 37.633423, 22.880049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.542181, 37.355194, 23.166077>,  <18.558893, 37.188255, 23.337694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.542181, 37.355194, 23.166077>,  <18.514328, 37.633423, 22.880049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542181, 37.355194, 23.166077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935956, -0.293574, -0.194426,
		0.345164, -0.655737, -0.671469,
		0.069634, -0.695575, 0.715072,
		18.563070, 37.146523, 23.380598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.382145, 25.475269, 26.742708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.698959, 25.556473, 26.973000>,  <32.889050, 25.605196, 27.111176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.698959, 25.556473, 26.973000>,  <32.382145, 25.475269, 26.742708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698959, 25.556473, 26.973000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320867, 0.663876, -0.675510,
		-0.519349, 0.719761, 0.460674,
		0.792036, 0.203010, 0.575731,
		32.936569, 25.617376, 27.145720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430576, 26.231037, 26.950920>,  <32.382145, 25.475269, 26.742708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430576, 26.231037, 26.950920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.796471, 26.070129, 26.935745>,  <33.016006, 25.973585, 26.926640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.796471, 26.070129, 26.935745>,  <32.430576, 26.231037, 26.950920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796471, 26.070129, 26.935745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342619, 0.821995, -0.454903,
		0.214178, 0.403117, 0.889733,
		0.914735, -0.402269, -0.037938,
		33.070892, 25.949450, 26.924364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836170, 26.716177, 27.129862>,  <32.430576, 26.231037, 26.950920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836170, 26.716177, 27.129862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130608, 26.492744, 26.976940>,  <33.307270, 26.358685, 26.885187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130608, 26.492744, 26.976940>,  <32.836170, 26.716177, 27.129862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130608, 26.492744, 26.976940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315797, 0.782966, -0.535945,
		0.598697, 0.273776, 0.752734,
		0.736094, -0.558580, -0.382302,
		33.351437, 26.325171, 26.862249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395966, 27.149590, 27.201405>,  <32.836170, 26.716177, 27.129862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395966, 27.149590, 27.201405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.479446, 26.879509, 26.918407>,  <33.529533, 26.717461, 26.748610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.479446, 26.879509, 26.918407>,  <33.395966, 27.149590, 27.201405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479446, 26.879509, 26.918407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542808, 0.681739, -0.490501,
		0.813512, -0.281665, 0.508786,
		0.208702, -0.675201, -0.707493,
		33.542057, 26.676949, 26.706160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146160, 27.087799, 27.185862>,  <33.395966, 27.149590, 27.201405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146160, 27.087799, 27.185862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.020744, 26.969208, 26.825020>,  <33.945496, 26.898054, 26.608515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.020744, 26.969208, 26.825020>,  <34.146160, 27.087799, 27.185862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020744, 26.969208, 26.825020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664653, 0.609971, -0.431476,
		0.678181, -0.734873, 0.005804,
		-0.313540, -0.296476, -0.902106,
		33.926682, 26.880264, 26.554388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692017, 27.177830, 26.789286>,  <34.146160, 27.087799, 27.185862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692017, 27.177830, 26.789286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404667, 27.112537, 26.518791>,  <34.232258, 27.073362, 26.356495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404667, 27.112537, 26.518791>,  <34.692017, 27.177830, 26.789286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404667, 27.112537, 26.518791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494423, 0.564028, -0.661376,
		0.489371, -0.809462, -0.324479,
		-0.718374, -0.163229, -0.676236,
		34.189156, 27.063568, 26.315920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089996, 27.071152, 26.189939>,  <34.692017, 27.177830, 26.789286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089996, 27.071152, 26.189939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.719555, 27.170086, 26.075985>,  <34.497292, 27.229446, 26.007612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.719555, 27.170086, 26.075985>,  <35.089996, 27.071152, 26.189939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719555, 27.170086, 26.075985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377259, 0.613765, -0.693519,
		0.003318, -0.749744, -0.661719,
		-0.926102, 0.247338, -0.284884,
		34.441723, 27.244287, 25.990520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081528, 27.034452, 25.551464>,  <35.089996, 27.071152, 26.189939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081528, 27.034452, 25.551464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765697, 27.271000, 25.617008>,  <34.576199, 27.412928, 25.656334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765697, 27.271000, 25.617008>,  <35.081528, 27.034452, 25.551464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765697, 27.271000, 25.617008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261628, 0.565950, -0.781826,
		-0.555083, -0.574443, -0.601580,
		-0.789578, 0.591369, 0.163859,
		34.528824, 27.448410, 25.666166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857647, 27.021082, 24.888390>,  <35.081528, 27.034452, 25.551464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857647, 27.021082, 24.888390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702892, 27.335052, 25.081970>,  <34.610039, 27.523436, 25.198118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702892, 27.335052, 25.081970>,  <34.857647, 27.021082, 24.888390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702892, 27.335052, 25.081970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075892, 0.550142, -0.831615,
		-0.919000, -0.285011, -0.272411,
		-0.386884, 0.784928, 0.483951,
		34.586826, 27.570532, 25.227156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435318, 27.299139, 24.400360>,  <34.857647, 27.021082, 24.888390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435318, 27.299139, 24.400360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.424286, 27.603504, 24.659668>,  <34.417667, 27.786123, 24.815252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.424286, 27.603504, 24.659668>,  <34.435318, 27.299139, 24.400360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424286, 27.603504, 24.659668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168065, 0.642813, -0.747359,
		-0.985390, 0.088337, -0.145613,
		-0.027582, 0.760912, 0.648268,
		34.416012, 27.831778, 24.854149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898304, 27.746758, 24.184761>,  <34.435318, 27.299139, 24.400360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898304, 27.746758, 24.184761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186718, 27.926270, 24.395931>,  <34.359768, 28.033978, 24.522633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186718, 27.926270, 24.395931>,  <33.898304, 27.746758, 24.184761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186718, 27.926270, 24.395931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001815, 0.763128, -0.646245,
		-0.692896, 0.465007, 0.551056,
		0.721035, 0.448781, 0.527924,
		34.403027, 28.060904, 24.554308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651684, 28.324923, 24.468124>,  <33.898304, 27.746758, 24.184761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651684, 28.324923, 24.468124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042648, 28.404552, 24.439751>,  <34.277229, 28.452330, 24.422726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042648, 28.404552, 24.439751>,  <33.651684, 28.324923, 24.468124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042648, 28.404552, 24.439751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196294, 0.730816, -0.653740,
		-0.078302, 0.652899, 0.753387,
		0.977414, 0.199074, -0.070936,
		34.335873, 28.464275, 24.418470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628590, 28.952209, 24.263058>,  <33.651684, 28.324923, 24.468124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628590, 28.952209, 24.263058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.022823, 28.910591, 24.209682>,  <34.259361, 28.885620, 24.177656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.022823, 28.910591, 24.209682>,  <33.628590, 28.952209, 24.263058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022823, 28.910591, 24.209682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026916, 0.874971, -0.483427,
		0.167054, 0.472865, 0.865154,
		0.985580, -0.104045, -0.133440,
		34.318497, 28.879377, 24.169651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971348, 29.607113, 24.459894>,  <33.628590, 28.952209, 24.263058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971348, 29.607113, 24.459894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200592, 29.403297, 24.203171>,  <34.338139, 29.281008, 24.049137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200592, 29.403297, 24.203171>,  <33.971348, 29.607113, 24.459894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200592, 29.403297, 24.203171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045006, 0.801578, -0.596194,
		0.818243, 0.312798, 0.482323,
		0.573108, -0.509539, -0.641808,
		34.372524, 29.250435, 24.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588314, 30.094299, 24.211437>,  <33.971348, 29.607113, 24.459894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588314, 30.094299, 24.211437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545551, 29.816269, 23.927059>,  <34.519894, 29.649450, 23.756433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545551, 29.816269, 23.927059>,  <34.588314, 30.094299, 24.211437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545551, 29.816269, 23.927059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032536, 0.712214, -0.701209,
		0.993737, -0.098094, -0.053525,
		-0.106906, -0.695075, -0.710944,
		34.513481, 29.607746, 23.713776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126823, 30.327766, 23.659723>,  <34.588314, 30.094299, 24.211437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126823, 30.327766, 23.659723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893764, 30.055355, 23.482311>,  <34.753929, 29.891909, 23.375864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893764, 30.055355, 23.482311>,  <35.126823, 30.327766, 23.659723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893764, 30.055355, 23.482311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085763, 0.594209, -0.799725,
		0.808187, -0.427920, -0.404621,
		-0.582648, -0.681029, -0.443533,
		34.718971, 29.851046, 23.349251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454285, 30.240555, 22.912781>,  <35.126823, 30.327766, 23.659723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454285, 30.240555, 22.912781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077023, 30.108948, 22.894028>,  <34.850666, 30.029984, 22.882776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077023, 30.108948, 22.894028>,  <35.454285, 30.240555, 22.912781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077023, 30.108948, 22.894028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140844, 0.523484, -0.840314,
		0.301020, -0.785947, -0.540069,
		-0.943160, -0.329017, -0.046884,
		34.794075, 30.010242, 22.879963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360577, 29.949497, 22.177624>,  <35.454285, 30.240555, 22.912781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360577, 29.949497, 22.177624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007946, 30.043541, 22.341354>,  <34.796368, 30.099968, 22.439592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007946, 30.043541, 22.341354>,  <35.360577, 29.949497, 22.177624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007946, 30.043541, 22.341354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269256, 0.461783, -0.845138,
		-0.387722, -0.855265, -0.343792,
		-0.881574, 0.235111, 0.409328,
		34.743473, 30.114075, 22.464153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888680, 29.836525, 21.572010>,  <35.360577, 29.949497, 22.177624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888680, 29.836525, 21.572010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682468, 30.056953, 21.834476>,  <34.558743, 30.189211, 21.991957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682468, 30.056953, 21.834476>,  <34.888680, 29.836525, 21.572010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682468, 30.056953, 21.834476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253162, 0.633627, -0.731045,
		-0.818622, -0.542988, -0.187140,
		-0.515526, 0.551072, 0.656165,
		34.527809, 30.222275, 22.031326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154404, 29.974180, 21.297577>,  <34.888680, 29.836525, 21.572010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154404, 29.974180, 21.297577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.255116, 30.251652, 21.567516>,  <34.315544, 30.418135, 21.729481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.255116, 30.251652, 21.567516>,  <34.154404, 29.974180, 21.297577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255116, 30.251652, 21.567516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471065, 0.696974, -0.540671,
		-0.845402, -0.181768, 0.502250,
		0.251779, 0.693677, 0.674848,
		34.330650, 30.459755, 21.769970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590324, 30.438435, 21.266857>,  <34.154404, 29.974180, 21.297577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590324, 30.438435, 21.266857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.919693, 30.625118, 21.395954>,  <34.117313, 30.737127, 21.473413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.919693, 30.625118, 21.395954>,  <33.590324, 30.438435, 21.266857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919693, 30.625118, 21.395954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156591, 0.733591, -0.661305,
		-0.545397, 0.493993, 0.677135,
		0.823420, 0.466707, 0.322744,
		34.166718, 30.765131, 21.492777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405075, 31.156900, 21.285683>,  <33.590324, 30.438435, 21.266857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405075, 31.156900, 21.285683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802834, 31.157200, 21.243385>,  <34.041489, 31.157379, 21.218008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802834, 31.157200, 21.243385>,  <33.405075, 31.156900, 21.285683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802834, 31.157200, 21.243385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052935, 0.869193, -0.491631,
		0.091541, 0.494472, 0.864360,
		0.994393, 0.000751, -0.105741,
		34.101151, 31.157425, 21.211662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664719, 31.203791, 21.730761>,  <33.405075, 31.156900, 21.285683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664719, 31.203791, 21.730761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.274223, 31.290329, 21.735779>,  <32.039928, 31.342253, 21.738789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.274223, 31.290329, 21.735779>,  <32.664719, 31.203791, 21.730761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274223, 31.290329, 21.735779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129260, -0.627776, 0.767587,
		0.173938, 0.747725, 0.640822,
		-0.976236, 0.216346, 0.012543,
		31.981352, 31.355232, 21.739542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534309, 31.340918, 22.503603>,  <32.664719, 31.203791, 21.730761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534309, 31.340918, 22.503603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.196930, 31.245358, 22.311134>,  <31.994503, 31.188021, 22.195654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.196930, 31.245358, 22.311134>,  <32.534309, 31.340918, 22.503603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196930, 31.245358, 22.311134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302366, -0.529225, 0.792777,
		-0.444043, 0.814154, 0.374137,
		-0.843446, -0.238901, -0.481171,
		31.943895, 31.173687, 22.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953785, 31.440847, 22.948202>,  <32.534309, 31.340918, 22.503603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953785, 31.440847, 22.948202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834200, 31.190491, 22.660069>,  <31.762449, 31.040276, 22.487188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834200, 31.190491, 22.660069>,  <31.953785, 31.440847, 22.948202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834200, 31.190491, 22.660069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408148, -0.598459, 0.689392,
		-0.862576, 0.500104, -0.076541,
		-0.298961, -0.625893, -0.720334,
		31.744511, 31.002724, 22.443968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383886, 31.163622, 23.176308>,  <31.953785, 31.440847, 22.948202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383886, 31.163622, 23.176308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.467182, 30.895081, 22.891796>,  <31.517159, 30.733955, 22.721088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.467182, 30.895081, 22.891796>,  <31.383886, 31.163622, 23.176308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467182, 30.895081, 22.891796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378132, -0.725937, 0.574484,
		-0.902027, 0.149329, -0.405028,
		0.208237, -0.671354, -0.711281,
		31.529654, 30.693674, 22.678411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737324, 30.723057, 23.127560>,  <31.383886, 31.163622, 23.176308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737324, 30.723057, 23.127560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.025049, 30.517349, 22.940750>,  <31.197685, 30.393925, 22.828665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.025049, 30.517349, 22.940750>,  <30.737324, 30.723057, 23.127560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025049, 30.517349, 22.940750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216137, -0.804594, 0.553095,
		-0.660204, -0.296909, -0.689910,
		0.719316, -0.514270, -0.467024,
		31.240845, 30.363068, 22.800642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374771, 30.247618, 22.751156>,  <30.737324, 30.723057, 23.127560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374771, 30.247618, 22.751156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.743677, 30.111675, 22.824833>,  <30.965021, 30.030109, 22.869040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.743677, 30.111675, 22.824833>,  <30.374771, 30.247618, 22.751156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743677, 30.111675, 22.824833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386542, -0.806041, 0.448199,
		-0.003857, -0.484556, -0.874752,
		0.922264, -0.339857, 0.184192,
		31.020357, 30.009718, 22.880091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319874, 29.575203, 22.570438>,  <30.374771, 30.247618, 22.751156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319874, 29.575203, 22.570438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.647585, 29.597961, 22.798664>,  <30.844212, 29.611616, 22.935600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.647585, 29.597961, 22.798664>,  <30.319874, 29.575203, 22.570438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647585, 29.597961, 22.798664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258704, -0.851349, 0.456374,
		0.511717, -0.521506, -0.682772,
		0.819279, 0.056898, 0.570566,
		30.893368, 29.615030, 22.969833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592442, 28.961714, 22.590637>,  <30.319874, 29.575203, 22.570438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592442, 28.961714, 22.590637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.765160, 29.101158, 22.923389>,  <30.868792, 29.184824, 23.123041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.765160, 29.101158, 22.923389>,  <30.592442, 28.961714, 22.590637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765160, 29.101158, 22.923389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124374, -0.890468, 0.437720,
		0.893355, -0.292470, -0.341143,
		0.431797, 0.348610, 0.831879,
		30.894699, 29.205742, 23.172953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003937, 28.407396, 22.859236>,  <30.592442, 28.961714, 22.590637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003937, 28.407396, 22.859236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.953476, 28.659405, 23.165741>,  <30.923201, 28.810610, 23.349644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.953476, 28.659405, 23.165741>,  <31.003937, 28.407396, 22.859236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953476, 28.659405, 23.165741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222048, -0.770769, 0.597169,
		0.966841, -0.094814, 0.237127,
		-0.126150, 0.630021, 0.766264,
		30.915630, 28.848412, 23.395620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480124, 28.196667, 23.282299>,  <31.003937, 28.407396, 22.859236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480124, 28.196667, 23.282299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.191395, 28.384079, 23.486046>,  <31.018158, 28.496527, 23.608294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.191395, 28.384079, 23.486046>,  <31.480124, 28.196667, 23.282299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191395, 28.384079, 23.486046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013747, -0.745553, 0.666305,
		0.691945, 0.473949, 0.544596,
		-0.721820, 0.468533, 0.509366,
		30.974850, 28.524639, 23.638855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686697, 28.067879, 23.864281>,  <31.480124, 28.196667, 23.282299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686697, 28.067879, 23.864281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.316204, 28.194603, 23.945992>,  <31.093908, 28.270638, 23.995018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.316204, 28.194603, 23.945992>,  <31.686697, 28.067879, 23.864281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316204, 28.194603, 23.945992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075166, -0.686251, 0.723471,
		0.369388, 0.654746, 0.659440,
		-0.926230, 0.316809, 0.204278,
		31.038336, 28.289646, 24.007275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718256, 28.113970, 24.596384>,  <31.686697, 28.067879, 23.864281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718256, 28.113970, 24.596384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.336058, 28.075409, 24.484859>,  <31.106739, 28.052273, 24.417946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.336058, 28.075409, 24.484859>,  <31.718256, 28.113970, 24.596384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336058, 28.075409, 24.484859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156161, -0.636547, 0.755263,
		-0.250285, 0.765189, 0.593164,
		-0.955495, -0.096402, -0.278810,
		31.049410, 28.046488, 24.401217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364069, 28.153015, 25.256113>,  <31.718256, 28.113970, 24.596384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364069, 28.153015, 25.256113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.135235, 27.985950, 24.973759>,  <30.997934, 27.885712, 24.804346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.135235, 27.985950, 24.973759>,  <31.364069, 28.153015, 25.256113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135235, 27.985950, 24.973759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218638, -0.751837, 0.622045,
		-0.790515, 0.510197, 0.338799,
		-0.572087, -0.417661, -0.705887,
		30.963610, 27.860653, 24.761993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735641, 28.081036, 25.526712>,  <31.364069, 28.153015, 25.256113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735641, 28.081036, 25.526712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730509, 27.827282, 25.217548>,  <30.727428, 27.675030, 25.032049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730509, 27.827282, 25.217548>,  <30.735641, 28.081036, 25.526712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730509, 27.827282, 25.217548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317058, -0.730505, 0.604845,
		-0.948319, 0.252818, -0.191764,
		-0.012831, -0.634387, -0.772910,
		30.726660, 27.636967, 24.985676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061813, 27.777813, 25.496262>,  <30.735641, 28.081036, 25.526712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061813, 27.777813, 25.496262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.302546, 27.516663, 25.312283>,  <30.446985, 27.359972, 25.201895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.302546, 27.516663, 25.312283>,  <30.061813, 27.777813, 25.496262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302546, 27.516663, 25.312283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307983, -0.721112, 0.620600,
		-0.736853, -0.231836, -0.635059,
		0.601825, -0.652878, -0.459952,
		30.483095, 27.320799, 25.174297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630489, 27.170576, 25.521671>,  <30.061813, 27.777813, 25.496262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630489, 27.170576, 25.521671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.998106, 27.055763, 25.413612>,  <30.218676, 26.986876, 25.348778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.998106, 27.055763, 25.413612>,  <29.630489, 27.170576, 25.521671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998106, 27.055763, 25.413612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075412, -0.800745, 0.594239,
		-0.386883, -0.525757, -0.757562,
		0.919040, -0.287030, -0.270147,
		30.273817, 26.969654, 25.332569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533726, 26.519812, 25.486998>,  <29.630489, 27.170576, 25.521671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533726, 26.519812, 25.486998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.929312, 26.569344, 25.519524>,  <30.166664, 26.599064, 25.539040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.929312, 26.569344, 25.519524>,  <29.533726, 26.519812, 25.486998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929312, 26.569344, 25.519524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049616, -0.794054, 0.605819,
		0.139587, -0.595100, -0.791436,
		0.988966, 0.123832, 0.081313,
		30.226002, 26.606493, 25.543917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884438, 25.828470, 25.399553>,  <29.533726, 26.519812, 25.486998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884438, 25.828470, 25.399553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.127464, 26.067280, 25.609097>,  <30.273281, 26.210566, 25.734821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.127464, 26.067280, 25.609097>,  <29.884438, 25.828470, 25.399553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127464, 26.067280, 25.609097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111197, -0.716986, 0.688161,
		0.786447, -0.359852, -0.502004,
		0.607566, 0.597024, 0.523857,
		30.309734, 26.246387, 25.766254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.591295, 25.421829, 25.602604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545912, 25.725899, 25.858498>,  <30.518682, 25.908340, 26.012033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545912, 25.725899, 25.858498>,  <30.591295, 25.421829, 25.602604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545912, 25.725899, 25.858498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089162, -0.633506, 0.768584,
		0.989534, 0.144242, 0.004098,
		-0.113458, 0.760174, 0.639736,
		30.511875, 25.953951, 26.050419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182207, 25.367561, 26.122189>,  <30.591295, 25.421829, 25.602604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182207, 25.367561, 26.122189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915152, 25.606194, 26.300335>,  <30.754919, 25.749372, 26.407223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915152, 25.606194, 26.300335>,  <31.182207, 25.367561, 26.122189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915152, 25.606194, 26.300335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142481, -0.484771, 0.862958,
		0.730724, 0.639600, 0.238651,
		-0.667639, 0.596581, 0.445365,
		30.714861, 25.785168, 26.433945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430645, 25.418987, 26.726402>,  <31.182207, 25.367561, 26.122189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430645, 25.418987, 26.726402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065273, 25.558102, 26.810963>,  <30.846050, 25.641571, 26.861698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065273, 25.558102, 26.810963>,  <31.430645, 25.418987, 26.726402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065273, 25.558102, 26.810963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054303, -0.410627, 0.910185,
		0.403356, 0.842870, 0.356193,
		-0.913430, 0.347787, 0.211399,
		30.791245, 25.662437, 26.874382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435333, 25.696468, 27.397295>,  <31.430645, 25.418987, 26.726402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435333, 25.696468, 27.397295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.040104, 25.681030, 27.337673>,  <30.802965, 25.671768, 27.301899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.040104, 25.681030, 27.337673>,  <31.435333, 25.696468, 27.397295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040104, 25.681030, 27.337673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132909, -0.274949, 0.952228,
		-0.077733, 0.960684, 0.266540,
		-0.988075, -0.038594, -0.149056,
		30.743681, 25.669453, 27.292957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125988, 26.015217, 27.939548>,  <31.435333, 25.696468, 27.397295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125988, 26.015217, 27.939548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823402, 25.794636, 27.798885>,  <30.641851, 25.662287, 27.714487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.823402, 25.794636, 27.798885>,  <31.125988, 26.015217, 27.939548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823402, 25.794636, 27.798885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223477, -0.287379, 0.931381,
		-0.614674, 0.783142, 0.094154,
		-0.756462, -0.551454, -0.351659,
		30.596464, 25.629200, 27.693388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522900, 26.180338, 28.339462>,  <31.125988, 26.015217, 27.939548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522900, 26.180338, 28.339462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440943, 25.825047, 28.174992>,  <30.391769, 25.611872, 28.076309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440943, 25.825047, 28.174992>,  <30.522900, 26.180338, 28.339462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440943, 25.825047, 28.174992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222234, -0.366903, 0.903324,
		-0.953222, 0.276460, -0.122220,
		-0.204890, -0.888230, -0.411179,
		30.379477, 25.558578, 28.051638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884787, 25.876425, 28.648710>,  <30.522900, 26.180338, 28.339462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884787, 25.876425, 28.648710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083212, 25.573566, 28.478695>,  <30.202267, 25.391851, 28.376686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083212, 25.573566, 28.478695>,  <29.884787, 25.876425, 28.648710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083212, 25.573566, 28.478695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304733, -0.610186, 0.731307,
		-0.813056, -0.233250, -0.533417,
		0.496061, -0.757144, -0.425037,
		30.232031, 25.346424, 28.351185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414145, 25.263781, 28.681835>,  <29.884787, 25.876425, 28.648710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414145, 25.263781, 28.681835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781233, 25.108330, 28.648949>,  <30.001486, 25.015059, 28.629217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781233, 25.108330, 28.648949>,  <29.414145, 25.263781, 28.681835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781233, 25.108330, 28.648949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209186, -0.648769, 0.731669,
		-0.337684, -0.654270, -0.676684,
		0.917720, -0.388626, -0.082215,
		30.056549, 24.991741, 28.624285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327824, 24.591618, 28.860098>,  <29.414145, 25.263781, 28.681835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327824, 24.591618, 28.860098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727785, 24.594059, 28.865097>,  <29.967762, 24.595524, 28.868095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727785, 24.594059, 28.865097>,  <29.327824, 24.591618, 28.860098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727785, 24.594059, 28.865097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004601, -0.702663, 0.711508,
		0.013125, -0.711497, -0.702567,
		0.999904, 0.006106, 0.012496,
		30.027756, 24.595890, 28.868845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601311, 23.896202, 28.640676>,  <29.327824, 24.591618, 28.860098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601311, 23.896202, 28.640676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.873827, 24.071239, 28.875404>,  <30.037336, 24.176262, 29.016241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.873827, 24.071239, 28.875404>,  <29.601311, 23.896202, 28.640676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873827, 24.071239, 28.875404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042491, -0.776656, 0.628490,
		0.730780, -0.453118, -0.510533,
		0.681289, 0.437595, 0.586819,
		30.078213, 24.202518, 29.051451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055885, 23.280876, 28.781734>,  <29.601311, 23.896202, 28.640676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055885, 23.280876, 28.781734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109465, 23.552803, 29.070152>,  <30.141613, 23.715960, 29.243202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109465, 23.552803, 29.070152>,  <30.055885, 23.280876, 28.781734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109465, 23.552803, 29.070152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126725, -0.709878, 0.692831,
		0.982852, -0.184178, -0.008936,
		0.133948, 0.679818, 0.721045,
		30.149649, 23.756748, 29.286467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475767, 22.932915, 29.331575>,  <30.055885, 23.280876, 28.781734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475767, 22.932915, 29.331575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349012, 23.246559, 29.545025>,  <30.272959, 23.434746, 29.673094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349012, 23.246559, 29.545025>,  <30.475767, 22.932915, 29.331575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349012, 23.246559, 29.545025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161044, -0.598932, 0.784440,
		0.934691, 0.162643, 0.316071,
		-0.316888, 0.784110, 0.533624,
		30.253946, 23.481792, 29.705112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729612, 22.806849, 30.082470>,  <30.475767, 22.932915, 29.331575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729612, 22.806849, 30.082470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394262, 23.024818, 30.087948>,  <30.193052, 23.155600, 30.091234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394262, 23.024818, 30.087948>,  <30.729612, 22.806849, 30.082470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394262, 23.024818, 30.087948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363902, -0.578223, 0.730229,
		0.405838, 0.607220, 0.683066,
		-0.838374, 0.544924, 0.013696,
		30.142750, 23.188295, 30.092056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802479, 22.955629, 30.775118>,  <30.729612, 22.806849, 30.082470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802479, 22.955629, 30.775118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.430683, 23.023991, 30.644371>,  <30.207605, 23.065006, 30.565924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.430683, 23.023991, 30.644371>,  <30.802479, 22.955629, 30.775118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430683, 23.023991, 30.644371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368332, -0.383177, 0.847058,
		0.019515, 0.907727, 0.419107,
		-0.929490, 0.170901, -0.326867,
		30.151836, 23.075260, 30.546310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358385, 23.240389, 31.336926>,  <30.802479, 22.955629, 30.775118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358385, 23.240389, 31.336926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103388, 23.096310, 31.064495>,  <29.950390, 23.009863, 30.901037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103388, 23.096310, 31.064495>,  <30.358385, 23.240389, 31.336926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103388, 23.096310, 31.064495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626719, -0.271739, 0.730329,
		-0.448137, 0.892422, -0.052511,
		-0.637492, -0.360197, -0.681074,
		29.912140, 22.988251, 30.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737070, 23.401594, 31.643787>,  <30.358385, 23.240389, 31.336926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737070, 23.401594, 31.643787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661123, 23.117298, 31.372849>,  <29.615555, 22.946720, 31.210285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661123, 23.117298, 31.372849>,  <29.737070, 23.401594, 31.643787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661123, 23.117298, 31.372849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546990, -0.496334, 0.674132,
		-0.815323, 0.498499, -0.294530,
		-0.189869, -0.710740, -0.677346,
		29.604162, 22.904076, 31.169645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006384, 23.300304, 31.700712>,  <29.737070, 23.401594, 31.643787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006384, 23.300304, 31.700712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168354, 22.973652, 31.536201>,  <29.265535, 22.777660, 31.437494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168354, 22.973652, 31.536201>,  <29.006384, 23.300304, 31.700712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168354, 22.973652, 31.536201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473555, -0.572081, 0.669678,
		-0.782165, -0.076406, -0.618369,
		0.404925, -0.816630, -0.411279,
		29.289831, 22.728662, 31.412817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591314, 22.810362, 31.923248>,  <29.006384, 23.300304, 31.700712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591314, 22.810362, 31.923248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902067, 22.579411, 31.822777>,  <29.088518, 22.440840, 31.762493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902067, 22.579411, 31.822777>,  <28.591314, 22.810362, 31.923248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902067, 22.579411, 31.822777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177885, -0.583929, 0.792076,
		-0.604001, -0.570665, -0.556349,
		0.776878, -0.577380, -0.251181,
		29.135132, 22.406197, 31.747423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358965, 22.145567, 32.050785>,  <28.591314, 22.810362, 31.923248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358965, 22.145567, 32.050785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754049, 22.098145, 32.010040>,  <28.991100, 22.069691, 31.985594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754049, 22.098145, 32.010040>,  <28.358965, 22.145567, 32.050785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754049, 22.098145, 32.010040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003946, -0.632551, 0.774508,
		-0.156255, -0.765391, -0.624309,
		0.987709, -0.118558, -0.101860,
		29.050362, 22.062576, 31.979483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555357, 21.387470, 32.190651>,  <28.358965, 22.145567, 32.050785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555357, 21.387470, 32.190651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889145, 21.600239, 32.248230>,  <29.089417, 21.727900, 32.282776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889145, 21.600239, 32.248230>,  <28.555357, 21.387470, 32.190651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889145, 21.600239, 32.248230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237437, -0.582794, 0.777158,
		0.497279, -0.614336, -0.612621,
		0.834468, 0.531923, 0.143945,
		29.139486, 21.759815, 32.291412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171343, 20.873045, 32.338394>,  <28.555357, 21.387470, 32.190651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171343, 20.873045, 32.338394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221483, 21.239391, 32.490959>,  <29.251568, 21.459200, 32.582500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221483, 21.239391, 32.490959>,  <29.171343, 20.873045, 32.338394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221483, 21.239391, 32.490959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007255, -0.383591, 0.923475,
		0.992086, -0.118524, -0.041439,
		0.125350, 0.915866, 0.381415,
		29.259089, 21.514151, 32.605385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614872, 20.806244, 32.896297>,  <29.171343, 20.873045, 32.338394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614872, 20.806244, 32.896297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.444359, 21.164425, 32.947598>,  <29.342051, 21.379333, 32.978378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.444359, 21.164425, 32.947598>,  <29.614872, 20.806244, 32.896297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444359, 21.164425, 32.947598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035535, -0.158243, 0.986761,
		0.903893, 0.416080, 0.099276,
		-0.426281, 0.895453, 0.128249,
		29.316475, 21.433062, 32.986073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092747, 21.271191, 33.233280>,  <29.614872, 20.806244, 32.896297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092747, 21.271191, 33.233280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716736, 21.359695, 33.337120>,  <29.491129, 21.412798, 33.399426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716736, 21.359695, 33.337120>,  <30.092747, 21.271191, 33.233280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716736, 21.359695, 33.337120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245869, -0.088003, 0.965300,
		0.236428, 0.971236, 0.028324,
		-0.940027, 0.221260, 0.259603,
		29.434729, 21.426073, 33.415001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057619, 21.785362, 33.817341>,  <30.092747, 21.271191, 33.233280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057619, 21.785362, 33.817341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.736977, 21.547039, 33.797581>,  <29.544590, 21.404045, 33.785725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.736977, 21.547039, 33.797581>,  <30.057619, 21.785362, 33.817341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736977, 21.547039, 33.797581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076591, -0.184289, 0.979883,
		-0.592925, 0.781698, 0.193360,
		-0.801607, -0.595807, -0.049398,
		29.496494, 21.368298, 33.782761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715347, 21.533182, 33.728977>,  <30.057619, 21.785362, 33.817341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715347, 21.533182, 33.728977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092369, 21.509193, 33.860428>,  <31.318583, 21.494801, 33.939297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092369, 21.509193, 33.860428>,  <30.715347, 21.533182, 33.728977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092369, 21.509193, 33.860428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256997, 0.758649, -0.598669,
		-0.213406, 0.648734, 0.730481,
		0.942555, -0.059972, 0.328623,
		31.375135, 21.491201, 33.959015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862286, 22.213217, 33.979084>,  <30.715347, 21.533182, 33.728977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862286, 22.213217, 33.979084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212616, 22.034298, 33.906586>,  <31.422815, 21.926947, 33.863087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212616, 22.034298, 33.906586>,  <30.862286, 22.213217, 33.979084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212616, 22.034298, 33.906586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214307, 0.696933, -0.684366,
		0.432435, 0.560543, 0.706252,
		0.875827, -0.447299, -0.181250,
		31.475365, 21.900108, 33.852211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408236, 22.695910, 33.942719>,  <30.862286, 22.213217, 33.979084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408236, 22.695910, 33.942719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563435, 22.384018, 33.746155>,  <31.656553, 22.196882, 33.628216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563435, 22.384018, 33.746155>,  <31.408236, 22.695910, 33.942719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563435, 22.384018, 33.746155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389061, 0.621903, -0.679609,
		0.835518, 0.072499, 0.544659,
		0.387996, -0.779731, -0.491405,
		31.679832, 22.150099, 33.598732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151619, 22.896126, 33.826031>,  <31.408236, 22.695910, 33.942719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151619, 22.896126, 33.826031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.034718, 22.607235, 33.575279>,  <31.964577, 22.433901, 33.424828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.034718, 22.607235, 33.575279>,  <32.151619, 22.896126, 33.826031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034718, 22.607235, 33.575279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360180, 0.524108, -0.771739,
		0.885922, -0.451333, 0.106959,
		-0.292254, -0.722225, -0.626880,
		31.947041, 22.390568, 33.387215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755028, 22.822268, 33.513920>,  <32.151619, 22.896126, 33.826031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755028, 22.822268, 33.513920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472549, 22.673763, 33.272770>,  <32.303062, 22.584660, 33.128082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472549, 22.673763, 33.272770>,  <32.755028, 22.822268, 33.513920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472549, 22.673763, 33.272770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467317, 0.395254, -0.790816,
		0.531887, -0.840202, -0.105629,
		-0.706195, -0.371263, -0.602870,
		32.260689, 22.562386, 33.091908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161263, 22.597967, 32.979733>,  <32.755028, 22.822268, 33.513920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161263, 22.597967, 32.979733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790432, 22.620083, 32.831429>,  <32.567932, 22.633352, 32.742447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790432, 22.620083, 32.831429>,  <33.161263, 22.597967, 32.979733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790432, 22.620083, 32.831429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366017, 0.347126, -0.863444,
		0.080960, -0.936187, -0.342051,
		-0.927080, 0.055292, -0.370764,
		32.512306, 22.636671, 32.720200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268265, 22.332998, 32.204048>,  <33.161263, 22.597967, 32.979733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268265, 22.332998, 32.204048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913715, 22.517170, 32.223404>,  <32.700985, 22.627674, 32.235016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913715, 22.517170, 32.223404>,  <33.268265, 22.332998, 32.204048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913715, 22.517170, 32.223404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216721, 0.505017, -0.835458,
		-0.409108, -0.730042, -0.547420,
		-0.886376, 0.460430, 0.048391,
		32.647804, 22.655298, 32.237923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831921, 22.178875, 31.533985>,  <33.268265, 22.332998, 32.204048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831921, 22.178875, 31.533985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708427, 22.531883, 31.675884>,  <32.634331, 22.743689, 31.761024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708427, 22.531883, 31.675884>,  <32.831921, 22.178875, 31.533985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708427, 22.531883, 31.675884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040446, 0.384812, -0.922108,
		-0.950289, -0.270334, -0.154497,
		-0.308729, 0.882519, 0.354749,
		32.615810, 22.796638, 31.782309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381172, 22.382656, 30.959969>,  <32.831921, 22.178875, 31.533985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381172, 22.382656, 30.959969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.424515, 22.699535, 31.200195>,  <32.450520, 22.889664, 31.344332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.424515, 22.699535, 31.200195>,  <32.381172, 22.382656, 30.959969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424515, 22.699535, 31.200195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017645, 0.605560, -0.795604,
		-0.993955, 0.075614, 0.079597,
		0.108360, 0.792199, 0.600566,
		32.457024, 22.937195, 31.380365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857172, 22.845770, 30.865875>,  <32.381172, 22.382656, 30.959969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857172, 22.845770, 30.865875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.163391, 23.061596, 31.006050>,  <32.347122, 23.191092, 31.090155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.163391, 23.061596, 31.006050>,  <31.857172, 22.845770, 30.865875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163391, 23.061596, 31.006050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104287, 0.641545, -0.759964,
		-0.634871, 0.545242, 0.547402,
		0.765547, 0.539566, 0.350436,
		32.393055, 23.223465, 31.111181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700043, 23.519264, 30.715876>,  <31.857172, 22.845770, 30.865875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700043, 23.519264, 30.715876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.092083, 23.521870, 30.795235>,  <32.327309, 23.523432, 30.842850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.092083, 23.521870, 30.795235>,  <31.700043, 23.519264, 30.715876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092083, 23.521870, 30.795235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124042, 0.760209, -0.637727,
		-0.154976, 0.649646, 0.744273,
		0.980100, 0.006512, 0.198397,
		32.386112, 23.523823, 30.854753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797386, 24.240934, 30.592703>,  <31.700043, 23.519264, 30.715876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797386, 24.240934, 30.592703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151234, 24.055450, 30.573017>,  <32.363541, 23.944160, 30.561205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151234, 24.055450, 30.573017>,  <31.797386, 24.240934, 30.592703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151234, 24.055450, 30.573017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246042, 0.553802, -0.795467,
		0.396120, 0.691577, 0.603996,
		0.884620, -0.463708, -0.049215,
		32.416618, 23.916338, 30.558252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192753, 24.756639, 30.494520>,  <31.797386, 24.240934, 30.592703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192753, 24.756639, 30.494520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419979, 24.455112, 30.362427>,  <32.556316, 24.274197, 30.283171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419979, 24.455112, 30.362427>,  <32.192753, 24.756639, 30.494520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419979, 24.455112, 30.362427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262853, 0.546439, -0.795181,
		0.779875, 0.364915, 0.508558,
		0.568070, -0.753818, -0.330235,
		32.590401, 24.228968, 30.263355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784119, 25.021738, 30.114868>,  <32.192753, 24.756639, 30.494520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784119, 25.021738, 30.114868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.782608, 24.654072, 29.957329>,  <32.781704, 24.433472, 29.862804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.782608, 24.654072, 29.957329>,  <32.784119, 25.021738, 30.114868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782608, 24.654072, 29.957329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172654, 0.387339, -0.905627,
		0.984975, -0.071418, 0.157235,
		-0.003775, -0.919167, -0.393850,
		32.781475, 24.378323, 29.839174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391991, 24.947128, 29.681454>,  <32.784119, 25.021738, 30.114868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391991, 24.947128, 29.681454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110638, 24.689518, 29.561127>,  <32.941826, 24.534952, 29.488932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110638, 24.689518, 29.561127>,  <33.391991, 24.947128, 29.681454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110638, 24.689518, 29.561127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265499, 0.154535, -0.951645,
		0.659371, -0.749233, 0.062291,
		-0.703378, -0.644025, -0.300817,
		32.899624, 24.496311, 29.470882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750900, 24.615198, 29.148746>,  <33.391991, 24.947128, 29.681454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750900, 24.615198, 29.148746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357231, 24.568741, 29.095200>,  <33.121029, 24.540867, 29.063072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357231, 24.568741, 29.095200>,  <33.750900, 24.615198, 29.148746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357231, 24.568741, 29.095200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125778, 0.074411, -0.989264,
		0.124858, -0.990441, -0.058625,
		-0.984170, -0.116144, -0.133866,
		33.061981, 24.533899, 29.055040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678604, 24.082621, 28.616179>,  <33.750900, 24.615198, 29.148746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678604, 24.082621, 28.616179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333145, 24.284042, 28.606800>,  <33.125870, 24.404896, 28.601173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333145, 24.284042, 28.606800>,  <33.678604, 24.082621, 28.616179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333145, 24.284042, 28.606800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128814, 0.175481, -0.976019,
		-0.487362, -0.845956, -0.216418,
		-0.863646, 0.503553, -0.023448,
		33.074051, 24.435108, 28.599766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421101, 24.076416, 27.935184>,  <33.678604, 24.082621, 28.616179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421101, 24.076416, 27.935184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180157, 24.372795, 28.053947>,  <33.035591, 24.550623, 28.125206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180157, 24.372795, 28.053947>,  <33.421101, 24.076416, 27.935184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180157, 24.372795, 28.053947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156269, 0.474228, -0.866422,
		-0.782778, -0.475501, -0.401444,
		-0.602361, 0.740950, 0.296909,
		32.999447, 24.595079, 28.143021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017483, 24.274014, 27.261843>,  <33.421101, 24.076416, 27.935184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017483, 24.274014, 27.261843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019272, 24.577244, 27.522705>,  <33.020344, 24.759182, 27.679222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019272, 24.577244, 27.522705>,  <33.017483, 24.274014, 27.261843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019272, 24.577244, 27.522705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075083, 0.650065, -0.756160,
		-0.997167, 0.052345, -0.054013,
		0.004469, 0.758074, 0.652154,
		33.020611, 24.804667, 27.718351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561039, 24.746115, 26.939920>,  <33.017483, 24.274014, 27.261843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561039, 24.746115, 26.939920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771664, 24.971561, 27.194500>,  <32.898037, 25.106831, 27.347248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771664, 24.971561, 27.194500>,  <32.561039, 24.746115, 26.939920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771664, 24.971561, 27.194500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267730, 0.600610, -0.753384,
		-0.806880, 0.567099, 0.165360,
		0.526561, 0.563618, 0.636450,
		32.929630, 25.140646, 27.385435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.802814, 34.583454, 17.586971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.021322, 34.388657, 17.314377>,  <19.152428, 34.271778, 17.150820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.021322, 34.388657, 17.314377>,  <18.802814, 34.583454, 17.586971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021322, 34.388657, 17.314377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742176, -0.095737, 0.663332,
		-0.388284, -0.868142, 0.309138,
		0.546270, -0.486996, -0.681486,
		19.185204, 34.242558, 17.109930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.970491, 34.003063, 17.888424>,  <18.802814, 34.583454, 17.586971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.970491, 34.003063, 17.888424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.242245, 34.073029, 17.603371>,  <19.405296, 34.115009, 17.432339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.242245, 34.073029, 17.603371>,  <18.970491, 34.003063, 17.888424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242245, 34.073029, 17.603371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716047, 0.054203, 0.695944,
		0.160360, -0.983090, -0.088424,
		0.679383, 0.174917, -0.712631,
		19.446060, 34.125504, 17.389582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.487471, 33.554516, 18.105484>,  <18.970491, 34.003063, 17.888424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.487471, 33.554516, 18.105484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.650112, 33.819828, 17.854176>,  <19.747698, 33.979015, 17.703390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.650112, 33.819828, 17.854176>,  <19.487471, 33.554516, 18.105484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650112, 33.819828, 17.854176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791091, 0.088376, 0.605281,
		0.456997, -0.743131, -0.488784,
		0.406606, 0.663284, -0.628272,
		19.772095, 34.018814, 17.665693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205070, 33.342457, 17.968603>,  <19.487471, 33.554516, 18.105484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205070, 33.342457, 17.968603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.189896, 33.732452, 17.881012>,  <20.180790, 33.966450, 17.828457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.189896, 33.732452, 17.881012>,  <20.205070, 33.342457, 17.968603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189896, 33.732452, 17.881012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760231, 0.170383, 0.626912,
		0.648545, -0.142691, -0.747683,
		-0.037937, 0.974992, -0.218979,
		20.178514, 34.024948, 17.815319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894028, 33.575211, 17.908022>,  <20.205070, 33.342457, 17.968603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894028, 33.575211, 17.908022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.712959, 33.921947, 17.991623>,  <20.604319, 34.129990, 18.041784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.712959, 33.921947, 17.991623>,  <20.894028, 33.575211, 17.908022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712959, 33.921947, 17.991623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719902, 0.216976, 0.659289,
		0.526148, 0.448902, -0.722257,
		-0.452669, 0.866838, 0.209004,
		20.577158, 34.181999, 18.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382624, 34.019180, 17.856844>,  <20.894028, 33.575211, 17.908022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382624, 34.019180, 17.856844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103209, 34.195744, 18.082127>,  <20.935560, 34.301682, 18.217297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103209, 34.195744, 18.082127>,  <21.382624, 34.019180, 17.856844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103209, 34.195744, 18.082127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711517, 0.344780, 0.612267,
		0.076079, 0.828422, -0.554913,
		-0.698538, 0.441411, 0.563206,
		20.893646, 34.328167, 18.251089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647009, 34.714424, 17.975887>,  <21.382624, 34.019180, 17.856844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647009, 34.714424, 17.975887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.368458, 34.651012, 18.255867>,  <21.201328, 34.612965, 18.423855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.368458, 34.651012, 18.255867>,  <21.647009, 34.714424, 17.975887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.368458, 34.651012, 18.255867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541085, 0.524742, 0.657171,
		-0.471474, 0.836370, -0.279639,
		-0.696376, -0.158531, 0.699949,
		21.159546, 34.603455, 18.465851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557827, 35.416557, 18.280790>,  <21.647009, 34.714424, 17.975887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557827, 35.416557, 18.280790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.393139, 35.152069, 18.531635>,  <21.294327, 34.993374, 18.682142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.393139, 35.152069, 18.531635>,  <21.557827, 35.416557, 18.280790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393139, 35.152069, 18.531635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577040, 0.343459, 0.740986,
		-0.705346, 0.666947, 0.240145,
		-0.411718, -0.661225, 0.627112,
		21.269623, 34.953701, 18.719769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441078, 35.827114, 18.933466>,  <21.557827, 35.416557, 18.280790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441078, 35.827114, 18.933466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.399786, 35.442368, 19.034790>,  <21.375011, 35.211521, 19.095585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.399786, 35.442368, 19.034790>,  <21.441078, 35.827114, 18.933466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399786, 35.442368, 19.034790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508322, 0.167884, 0.844644,
		-0.854958, 0.215954, 0.471605,
		-0.103229, -0.961862, 0.253308,
		21.368816, 35.153809, 19.110783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138947, 35.750809, 19.610231>,  <21.441078, 35.827114, 18.933466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138947, 35.750809, 19.610231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.332457, 35.405430, 19.553078>,  <21.448563, 35.198200, 19.518785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.332457, 35.405430, 19.553078>,  <21.138947, 35.750809, 19.610231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332457, 35.405430, 19.553078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469896, 0.118522, 0.874729,
		-0.738351, -0.490311, 0.463070,
		0.483773, -0.863451, -0.142884,
		21.477589, 35.146393, 19.510212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.100386, 35.363445, 20.221880>,  <21.138947, 35.750809, 19.610231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.100386, 35.363445, 20.221880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426422, 35.209435, 20.048729>,  <21.622044, 35.117027, 19.944838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426422, 35.209435, 20.048729>,  <21.100386, 35.363445, 20.221880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426422, 35.209435, 20.048729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463269, -0.015481, 0.886082,
		-0.347864, -0.922777, 0.165751,
		0.815091, -0.385023, -0.432879,
		21.670950, 35.093929, 19.918865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293816, 34.748573, 20.562481>,  <21.100386, 35.363445, 20.221880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293816, 34.748573, 20.562481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.650896, 34.831375, 20.402363>,  <21.865145, 34.881058, 20.306292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.650896, 34.831375, 20.402363>,  <21.293816, 34.748573, 20.562481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650896, 34.831375, 20.402363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428288, -0.113359, 0.896504,
		0.140206, -0.971750, -0.189854,
		0.892699, 0.207007, -0.400295,
		21.918705, 34.893478, 20.282274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779543, 34.322250, 20.899870>,  <21.293816, 34.748573, 20.562481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779543, 34.322250, 20.899870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.018038, 34.594154, 20.729027>,  <22.161135, 34.757298, 20.626520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.018038, 34.594154, 20.729027>,  <21.779543, 34.322250, 20.899870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018038, 34.594154, 20.729027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648256, -0.093833, 0.755618,
		0.473564, -0.727405, -0.496607,
		0.596239, 0.679762, -0.427109,
		22.196909, 34.798084, 20.600895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413216, 34.010746, 20.890638>,  <21.779543, 34.322250, 20.899870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413216, 34.010746, 20.890638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.454729, 34.408424, 20.879269>,  <22.479637, 34.647030, 20.872446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.454729, 34.408424, 20.879269>,  <22.413216, 34.010746, 20.890638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.454729, 34.408424, 20.879269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555679, -0.034255, 0.830691,
		0.824894, -0.102006, -0.556007,
		0.103782, 0.994194, -0.028426,
		22.485863, 34.706684, 20.870741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.007887, 34.087807, 21.086313>,  <22.413216, 34.010746, 20.890638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.007887, 34.087807, 21.086313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.889471, 34.468536, 21.118298>,  <22.818420, 34.696976, 21.137487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.889471, 34.468536, 21.118298>,  <23.007887, 34.087807, 21.086313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.889471, 34.468536, 21.118298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552656, 0.102409, 0.827094,
		0.779058, 0.289043, -0.556347,
		-0.296040, 0.951823, 0.079959,
		22.800659, 34.754082, 21.142284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.608746, 34.463474, 21.307114>,  <23.007887, 34.087807, 21.086313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.608746, 34.463474, 21.307114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278046, 34.664921, 21.407402>,  <23.079626, 34.785789, 21.467575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278046, 34.664921, 21.407402>,  <23.608746, 34.463474, 21.307114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.278046, 34.664921, 21.407402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291675, 0.002633, 0.956514,
		0.481052, 0.863926, -0.149069,
		-0.826749, 0.503613, 0.250719,
		23.030022, 34.816006, 21.482618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.896441, 34.955048, 21.712748>,  <23.608746, 34.463474, 21.307114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.896441, 34.955048, 21.712748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.510454, 34.926296, 21.813683>,  <23.278862, 34.909046, 21.874243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.510454, 34.926296, 21.813683>,  <23.896441, 34.955048, 21.712748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.510454, 34.926296, 21.813683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255423, -0.037468, 0.966103,
		-0.059989, 0.996709, 0.054516,
		-0.964966, -0.071880, 0.252335,
		23.220964, 34.904732, 21.889383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.843939, 35.434982, 22.208513>,  <23.896441, 34.955048, 21.712748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.843939, 35.434982, 22.208513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.514193, 35.214119, 22.258381>,  <23.316345, 35.081600, 22.288301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.514193, 35.214119, 22.258381>,  <23.843939, 35.434982, 22.208513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.514193, 35.214119, 22.258381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117079, 0.049158, 0.991905,
		-0.553818, 0.832289, 0.024122,
		-0.824366, -0.552159, 0.124668,
		23.266884, 35.048470, 22.295782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.484100, 35.819405, 22.696760>,  <23.843939, 35.434982, 22.208513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.484100, 35.819405, 22.696760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.391428, 35.430447, 22.685699>,  <23.335825, 35.197071, 22.679064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.391428, 35.430447, 22.685699>,  <23.484100, 35.819405, 22.696760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.391428, 35.430447, 22.685699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062388, -0.013515, 0.997960,
		-0.970789, 0.232932, -0.057535,
		-0.231679, -0.972399, -0.027652,
		23.321924, 35.138725, 22.677404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.917953, 35.713169, 23.190138>,  <23.484100, 35.819405, 22.696760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.917953, 35.713169, 23.190138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047113, 35.338299, 23.137306>,  <23.124609, 35.113377, 23.105608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047113, 35.338299, 23.137306>,  <22.917953, 35.713169, 23.190138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047113, 35.338299, 23.137306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107041, -0.174821, 0.978765,
		-0.940361, -0.301904, -0.156765,
		0.322899, -0.937172, -0.132079,
		23.143984, 35.057148, 23.097683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529030, 35.377411, 23.628935>,  <22.917953, 35.713169, 23.190138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529030, 35.377411, 23.628935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.815351, 35.107101, 23.558552>,  <22.987144, 34.944916, 23.516323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.815351, 35.107101, 23.558552>,  <22.529030, 35.377411, 23.628935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.815351, 35.107101, 23.558552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137630, -0.383561, 0.913202,
		-0.684605, -0.629457, -0.367561,
		0.715803, -0.675770, -0.175956,
		23.030092, 34.904369, 23.505766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038603, 35.842480, 23.199713>,  <22.529030, 35.377411, 23.628935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038603, 35.842480, 23.199713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816301, 36.136074, 23.355865>,  <21.682920, 36.312229, 23.449558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816301, 36.136074, 23.355865>,  <22.038603, 35.842480, 23.199713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816301, 36.136074, 23.355865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830620, -0.509867, -0.223845,
		0.034744, -0.448663, 0.893025,
		-0.555755, 0.733987, 0.390383,
		21.649574, 36.356270, 23.472980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.408125, 35.500233, 23.491203>,  <22.038603, 35.842480, 23.199713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.408125, 35.500233, 23.491203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.314396, 35.886364, 23.445179>,  <21.258158, 36.118042, 23.417564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.314396, 35.886364, 23.445179>,  <21.408125, 35.500233, 23.491203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.314396, 35.886364, 23.445179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915623, -0.258918, -0.307564,
		-0.326692, 0.033286, 0.944545,
		-0.234322, 0.965326, -0.115064,
		21.244099, 36.175961, 23.410660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701414, 35.517223, 23.712835>,  <21.408125, 35.500233, 23.491203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701414, 35.517223, 23.712835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.734470, 35.863132, 23.514709>,  <20.754305, 36.070679, 23.395834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.734470, 35.863132, 23.514709>,  <20.701414, 35.517223, 23.712835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.734470, 35.863132, 23.514709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959880, -0.064564, -0.272874,
		-0.267954, 0.497996, 0.824743,
		0.082641, 0.864773, -0.495317,
		20.759262, 36.122566, 23.366114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980846, 35.902897, 23.771460>,  <20.701414, 35.517223, 23.712835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980846, 35.902897, 23.771460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.164721, 36.054420, 23.450165>,  <20.275045, 36.145336, 23.257387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.164721, 36.054420, 23.450165>,  <19.980846, 35.902897, 23.771460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.164721, 36.054420, 23.450165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849877, -0.074791, -0.521647,
		-0.257680, 0.922448, 0.287560,
		0.459685, 0.378809, -0.803239,
		20.302626, 36.168064, 23.209192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.527885, 36.445053, 23.488461>,  <19.980846, 35.902897, 23.771460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.527885, 36.445053, 23.488461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.779207, 36.322384, 23.202473>,  <19.930000, 36.248783, 23.030880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.779207, 36.322384, 23.202473>,  <19.527885, 36.445053, 23.488461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.779207, 36.322384, 23.202473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722924, 0.109384, -0.682214,
		0.287425, 0.945508, -0.152978,
		0.628305, -0.306677, -0.714970,
		19.967699, 36.230381, 22.987982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468174, 36.938263, 22.995667>,  <19.527885, 36.445053, 23.488461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468174, 36.938263, 22.995667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624453, 36.624557, 22.802883>,  <19.718220, 36.436333, 22.687214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.624453, 36.624557, 22.802883>,  <19.468174, 36.938263, 22.995667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624453, 36.624557, 22.802883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686266, 0.100794, -0.720333,
		0.613510, 0.612184, -0.498834,
		0.390697, -0.784265, -0.481959,
		19.741661, 36.389278, 22.658295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.629910, 37.183220, 22.294395>,  <19.468174, 36.938263, 22.995667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.629910, 37.183220, 22.294395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.591446, 36.785439, 22.277306>,  <19.568367, 36.546772, 22.267052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.591446, 36.785439, 22.277306>,  <19.629910, 37.183220, 22.294395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591446, 36.785439, 22.277306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604976, 0.092475, -0.790855,
		0.790416, -0.050201, -0.610510,
		-0.096159, -0.994449, -0.042724,
		19.562599, 36.487103, 22.264488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.664139, 36.993221, 21.547894>,  <19.629910, 37.183220, 22.294395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.664139, 36.993221, 21.547894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.480286, 36.672573, 21.700806>,  <19.369974, 36.480183, 21.792553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.480286, 36.672573, 21.700806>,  <19.664139, 36.993221, 21.547894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480286, 36.672573, 21.700806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478816, -0.138849, -0.866866,
		0.747980, -0.581480, -0.320012,
		-0.459631, -0.801625, 0.382278,
		19.342396, 36.432087, 21.815489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.429613, 36.647987, 20.901516>,  <19.664139, 36.993221, 21.547894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.429613, 36.647987, 20.901516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.255451, 36.428429, 21.186932>,  <19.150955, 36.296692, 21.358181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.255451, 36.428429, 21.186932>,  <19.429613, 36.647987, 20.901516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255451, 36.428429, 21.186932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718865, -0.265125, -0.642605,
		0.541901, -0.792730, -0.279147,
		-0.435403, -0.548897, 0.713538,
		19.124830, 36.263760, 21.400993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443542, 36.034687, 20.704348>,  <19.429613, 36.647987, 20.901516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443542, 36.034687, 20.704348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.137274, 36.040462, 20.961575>,  <18.953512, 36.043926, 21.115911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.137274, 36.040462, 20.961575>,  <19.443542, 36.034687, 20.704348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137274, 36.040462, 20.961575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568885, -0.481778, -0.666528,
		0.300193, -0.876174, 0.377098,
		-0.765673, 0.014438, 0.643069,
		18.907572, 36.044796, 21.154495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.151382, 35.349220, 20.771725>,  <19.443542, 36.034687, 20.704348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.151382, 35.349220, 20.771725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.850122, 35.580143, 20.897892>,  <18.669367, 35.718697, 20.973593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.850122, 35.580143, 20.897892>,  <19.151382, 35.349220, 20.771725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.850122, 35.580143, 20.897892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643907, -0.548729, -0.533179,
		-0.134727, -0.604663, 0.785004,
		-0.753148, 0.577304, 0.315418,
		18.624178, 35.753334, 20.992517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583607, 34.908165, 21.016924>,  <19.151382, 35.349220, 20.771725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583607, 34.908165, 21.016924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.427427, 35.255753, 20.895306>,  <18.333719, 35.464306, 20.822334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.427427, 35.255753, 20.895306>,  <18.583607, 34.908165, 21.016924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.427427, 35.255753, 20.895306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597029, -0.490398, -0.634874,
		-0.700789, -0.066362, 0.710275,
		-0.390449, 0.868968, -0.304046,
		18.310293, 35.516441, 20.804092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837957, 34.831905, 20.983564>,  <18.583607, 34.908165, 21.016924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837957, 34.831905, 20.983564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.936083, 35.147045, 20.757603>,  <17.994957, 35.336128, 20.622026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.936083, 35.147045, 20.757603>,  <17.837957, 34.831905, 20.983564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936083, 35.147045, 20.757603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653324, -0.296159, -0.696748,
		-0.716233, 0.539986, 0.442069,
		0.245312, 0.787849, -0.564904,
		18.009676, 35.383400, 20.588131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139660, 35.064716, 20.823658>,  <17.837957, 34.831905, 20.983564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139660, 35.064716, 20.823658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.380943, 35.235310, 20.554066>,  <17.525713, 35.337666, 20.392309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.380943, 35.235310, 20.554066>,  <17.139660, 35.064716, 20.823658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380943, 35.235310, 20.554066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593427, -0.324617, -0.736524,
		-0.532900, 0.844237, 0.057274,
		0.603209, 0.426482, -0.673982,
		17.561907, 35.363255, 20.351871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727167, 35.387886, 20.290352>,  <17.139660, 35.064716, 20.823658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727167, 35.387886, 20.290352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.072897, 35.372005, 20.089806>,  <17.280334, 35.362476, 19.969477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.072897, 35.372005, 20.089806>,  <16.727167, 35.387886, 20.290352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072897, 35.372005, 20.089806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499741, -0.179998, -0.847266,
		-0.056607, 0.982865, -0.175417,
		0.864323, -0.039702, -0.501367,
		17.332193, 35.360096, 19.939396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591040, 35.740211, 19.721285>,  <16.727167, 35.387886, 20.290352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591040, 35.740211, 19.721285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.902706, 35.510735, 19.620270>,  <17.089706, 35.373047, 19.559662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.902706, 35.510735, 19.620270>,  <16.591040, 35.740211, 19.721285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902706, 35.510735, 19.620270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375928, -0.105309, -0.920646,
		0.501575, 0.812272, -0.297721,
		0.779167, -0.573694, -0.252536,
		17.136456, 35.338627, 19.544510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586720, 35.812714, 19.136478>,  <16.591040, 35.740211, 19.721285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586720, 35.812714, 19.136478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.855413, 35.516762, 19.151192>,  <17.016630, 35.339191, 19.160019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.855413, 35.516762, 19.151192>,  <16.586720, 35.812714, 19.136478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855413, 35.516762, 19.151192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246261, -0.269858, -0.930877,
		0.698660, 0.616246, -0.363476,
		0.671736, -0.739877, 0.036782,
		17.056934, 35.294800, 19.162226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101707, 35.932076, 18.552942>,  <16.586720, 35.812714, 19.136478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.101707, 35.932076, 18.552942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.100086, 35.543213, 18.646660>,  <17.099113, 35.309895, 18.702890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.100086, 35.543213, 18.646660>,  <17.101707, 35.932076, 18.552942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100086, 35.543213, 18.646660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153675, -0.230907, -0.960763,
		0.988113, -0.039897, -0.148461,
		-0.004051, -0.972157, 0.234294,
		17.098871, 35.251564, 18.716948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449995, 35.564697, 18.040648>,  <17.101707, 35.932076, 18.552942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449995, 35.564697, 18.040648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250240, 35.251259, 18.188480>,  <17.130388, 35.063194, 18.277180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.250240, 35.251259, 18.188480>,  <17.449995, 35.564697, 18.040648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250240, 35.251259, 18.188480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190832, -0.316619, -0.929159,
		0.845101, -0.534537, 0.008580,
		-0.499386, -0.783596, 0.369582,
		17.100424, 35.016182, 18.299355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596718, 35.079647, 17.639215>,  <17.449995, 35.564697, 18.040648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.596718, 35.079647, 17.639215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.268236, 34.936821, 17.817261>,  <17.071146, 34.851128, 17.924088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.268236, 34.936821, 17.817261>,  <17.596718, 35.079647, 17.639215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268236, 34.936821, 17.817261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357232, -0.286588, -0.888962,
		0.444981, -0.889029, 0.107793,
		-0.821205, -0.357064, 0.445116,
		17.021875, 34.829700, 17.950796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479969, 34.417309, 17.349733>,  <17.596718, 35.079647, 17.639215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479969, 34.417309, 17.349733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.127522, 34.534363, 17.498322>,  <16.916052, 34.604595, 17.587475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.127522, 34.534363, 17.498322>,  <17.479969, 34.417309, 17.349733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.127522, 34.534363, 17.498322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432858, -0.182785, -0.882737,
		-0.190419, -0.938592, 0.287724,
		-0.881121, 0.292633, 0.371471,
		16.863186, 34.622154, 17.609764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.821501, 28.080040, 24.030046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203106, 28.070148, 24.149544>,  <30.432070, 28.064215, 24.221243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203106, 28.070148, 24.149544>,  <29.821501, 28.080040, 24.030046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203106, 28.070148, 24.149544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159613, 0.885473, -0.436419,
		-0.253739, 0.464033, 0.848699,
		0.954013, -0.024727, 0.298744,
		30.489309, 28.062731, 24.239166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908730, 28.650126, 24.401794>,  <29.821501, 28.080040, 24.030046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908730, 28.650126, 24.401794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265600, 28.531601, 24.265430>,  <30.479723, 28.460487, 24.183613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265600, 28.531601, 24.265430>,  <29.908730, 28.650126, 24.401794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265600, 28.531601, 24.265430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118966, 0.882254, -0.455494,
		0.435735, 0.365826, 0.822379,
		0.892178, -0.296310, -0.340908,
		30.533255, 28.442709, 24.163158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157997, 29.297382, 24.321453>,  <29.908730, 28.650126, 24.401794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157997, 29.297382, 24.321453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423471, 29.064980, 24.133003>,  <30.582756, 28.925539, 24.019934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423471, 29.064980, 24.133003>,  <30.157997, 29.297382, 24.321453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423471, 29.064980, 24.133003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402222, 0.808223, -0.430108,
		0.630667, 0.095961, 0.770098,
		0.663684, -0.581005, -0.471122,
		30.622578, 28.890678, 23.991667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838615, 29.633507, 24.436836>,  <30.157997, 29.297382, 24.321453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838615, 29.633507, 24.436836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855122, 29.401501, 24.111412>,  <30.865025, 29.262297, 23.916157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855122, 29.401501, 24.111412>,  <30.838615, 29.633507, 24.436836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855122, 29.401501, 24.111412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525540, 0.705117, -0.476044,
		0.849768, -0.407914, 0.333917,
		0.041266, -0.580013, -0.813561,
		30.867502, 29.227497, 23.867344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521152, 29.613726, 24.238207>,  <30.838615, 29.633507, 24.436836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521152, 29.613726, 24.238207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313908, 29.515640, 23.910442>,  <31.189562, 29.456789, 23.713783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313908, 29.515640, 23.910442>,  <31.521152, 29.613726, 24.238207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313908, 29.515640, 23.910442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512432, 0.678061, -0.526922,
		0.684822, -0.692894, -0.225649,
		-0.518105, -0.245218, -0.819411,
		31.158474, 29.442078, 23.664619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995611, 29.657589, 23.713331>,  <31.521152, 29.613726, 24.238207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995611, 29.657589, 23.713331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659668, 29.637142, 23.497173>,  <31.458101, 29.624874, 23.367479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659668, 29.637142, 23.497173>,  <31.995611, 29.657589, 23.713331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659668, 29.637142, 23.497173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408423, 0.596231, -0.691158,
		0.357529, -0.801184, -0.479872,
		-0.839859, -0.051118, -0.540392,
		31.407711, 29.621807, 23.335056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276871, 29.562788, 22.996372>,  <31.995611, 29.657589, 23.713331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276871, 29.562788, 22.996372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897779, 29.690022, 22.986359>,  <31.670324, 29.766361, 22.980350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897779, 29.690022, 22.986359>,  <32.276871, 29.562788, 22.996372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897779, 29.690022, 22.986359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210487, 0.564315, -0.798276,
		-0.239793, -0.761820, -0.601772,
		-0.947731, 0.318086, -0.025034,
		31.613461, 29.785448, 22.978848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131931, 29.613216, 22.243813>,  <32.276871, 29.562788, 22.996372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131931, 29.613216, 22.243813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867956, 29.843544, 22.436859>,  <31.709572, 29.981741, 22.552687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867956, 29.843544, 22.436859>,  <32.131931, 29.613216, 22.243813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867956, 29.843544, 22.436859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250852, 0.774364, -0.580891,
		-0.708207, -0.262285, -0.655476,
		-0.659936, 0.575819, 0.482615,
		31.669975, 30.016289, 22.581644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770319, 29.852488, 21.738159>,  <32.131931, 29.613216, 22.243813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770319, 29.852488, 21.738159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681829, 30.114563, 22.027100>,  <31.628736, 30.271809, 22.200464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681829, 30.114563, 22.027100>,  <31.770319, 29.852488, 21.738159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681829, 30.114563, 22.027100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151787, 0.754808, -0.638142,
		-0.963338, -0.031529, -0.266431,
		-0.221224, 0.655188, 0.722350,
		31.615461, 30.311119, 22.243805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332630, 30.287203, 21.443848>,  <31.770319, 29.852488, 21.738159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332630, 30.287203, 21.443848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415747, 30.500923, 21.771591>,  <31.465616, 30.629156, 21.968237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415747, 30.500923, 21.771591>,  <31.332630, 30.287203, 21.443848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415747, 30.500923, 21.771591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032579, 0.840955, -0.540124,
		-0.977631, 0.085538, 0.192148,
		0.207789, 0.534302, 0.819357,
		31.478083, 30.661213, 22.017399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858871, 30.784113, 21.514208>,  <31.332630, 30.287203, 21.443848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858871, 30.784113, 21.514208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191378, 30.916992, 21.692486>,  <31.390881, 30.996719, 21.799454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191378, 30.916992, 21.692486>,  <30.858871, 30.784113, 21.514208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191378, 30.916992, 21.692486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042059, 0.837075, -0.545469,
		-0.554286, 0.434683, 0.709802,
		0.831263, 0.332199, 0.445696,
		31.440756, 31.016651, 21.826195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712250, 31.496986, 21.760756>,  <30.858871, 30.784113, 21.514208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712250, 31.496986, 21.760756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110016, 31.457378, 21.746140>,  <31.348675, 31.433613, 21.737370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110016, 31.457378, 21.746140>,  <30.712250, 31.496986, 21.760756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110016, 31.457378, 21.746140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073511, 0.898177, -0.433446,
		0.075738, 0.428339, 0.900439,
		0.994414, -0.099021, -0.036538,
		31.408340, 31.427671, 21.735178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996613, 32.128651, 22.022663>,  <30.712250, 31.496986, 21.760756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996613, 32.128651, 22.022663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253834, 31.953266, 21.771511>,  <31.408167, 31.848036, 21.620819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253834, 31.953266, 21.771511>,  <30.996613, 32.128651, 22.022663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253834, 31.953266, 21.771511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111258, 0.757696, -0.643054,
		0.757696, 0.483375, 0.438458,
		0.643054, -0.438458, -0.627882,
		31.446751, 31.821730, 21.583147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169310, 32.695965, 21.597223>,  <30.996613, 32.128651, 22.022663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169310, 32.695965, 21.597223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453819, 32.885803, 21.804626>,  <31.624525, 32.999706, 21.929068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453819, 32.885803, 21.804626>,  <31.169310, 32.695965, 21.597223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453819, 32.885803, 21.804626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701706, -0.522655, -0.484190,
		0.041205, 0.708230, -0.704778,
		0.711274, 0.474596, 0.518506,
		31.667202, 33.028183, 21.960178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986795, 33.081543, 22.203930>,  <31.169310, 32.695965, 21.597223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986795, 33.081543, 22.203930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593483, 33.154282, 22.200199>,  <30.357494, 33.197926, 22.197960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593483, 33.154282, 22.200199>,  <30.986795, 33.081543, 22.203930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593483, 33.154282, 22.200199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087037, -0.424392, 0.901286,
		0.159939, 0.887030, 0.433125,
		-0.983282, 0.181849, -0.009328,
		30.298498, 33.208836, 22.197401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889679, 33.413326, 22.666794>,  <30.986795, 33.081543, 22.203930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889679, 33.413326, 22.666794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537369, 33.233849, 22.606251>,  <30.325983, 33.126163, 22.569925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537369, 33.233849, 22.606251>,  <30.889679, 33.413326, 22.666794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537369, 33.233849, 22.606251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110185, -0.505054, 0.856026,
		-0.460535, 0.737289, 0.494278,
		-0.880776, -0.448692, -0.151357,
		30.273136, 33.099239, 22.560844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553659, 33.403454, 23.262978>,  <30.889679, 33.413326, 22.666794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553659, 33.403454, 23.262978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316500, 33.146160, 23.069187>,  <30.174204, 32.991783, 22.952913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316500, 33.146160, 23.069187>,  <30.553659, 33.403454, 23.262978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316500, 33.146160, 23.069187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129427, -0.517685, 0.845725,
		-0.794808, 0.564133, 0.223682,
		-0.592899, -0.643239, -0.484475,
		30.138630, 32.953190, 22.923845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999132, 33.379112, 23.737110>,  <30.553659, 33.403454, 23.262978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999132, 33.379112, 23.737110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037342, 33.063583, 23.494247>,  <30.060268, 32.874268, 23.348530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037342, 33.063583, 23.494247>,  <29.999132, 33.379112, 23.737110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037342, 33.063583, 23.494247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050806, -0.613015, 0.788436,
		-0.994130, -0.044468, -0.098635,
		0.095525, -0.788819, -0.607157,
		30.066000, 32.826939, 23.312101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571220, 32.834217, 24.002579>,  <29.999132, 33.379112, 23.737110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571220, 32.834217, 24.002579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804628, 32.622608, 23.756119>,  <29.944674, 32.495644, 23.608242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804628, 32.622608, 23.756119>,  <29.571220, 32.834217, 24.002579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804628, 32.622608, 23.756119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173503, -0.659982, 0.730972,
		-0.793348, -0.533440, -0.293325,
		0.583520, -0.529023, -0.616149,
		29.979685, 32.463902, 23.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349651, 32.142372, 24.045771>,  <29.571220, 32.834217, 24.002579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349651, 32.142372, 24.045771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731861, 32.167664, 23.930546>,  <29.961187, 32.182838, 23.861412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731861, 32.167664, 23.930546>,  <29.349651, 32.142372, 24.045771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731861, 32.167664, 23.930546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281968, -0.482111, 0.829495,
		-0.086429, -0.873825, -0.478497,
		0.955523, 0.063228, -0.288060,
		30.018518, 32.186630, 23.844128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628336, 31.499359, 24.103891>,  <29.349651, 32.142372, 24.045771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628336, 31.499359, 24.103891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969488, 31.707741, 24.117756>,  <30.174179, 31.832769, 24.126074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969488, 31.707741, 24.117756>,  <29.628336, 31.499359, 24.103891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969488, 31.707741, 24.117756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262596, -0.485394, 0.833928,
		0.451262, -0.702140, -0.550784,
		0.852881, 0.520954, 0.034660,
		30.225353, 31.864027, 24.128155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258404, 30.967302, 24.174885>,  <29.628336, 31.499359, 24.103891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258404, 30.967302, 24.174885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384546, 31.329800, 24.287506>,  <30.460232, 31.547298, 24.355080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384546, 31.329800, 24.287506>,  <30.258404, 30.967302, 24.174885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384546, 31.329800, 24.287506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534211, -0.414748, 0.736616,
		0.784327, -0.081888, -0.614919,
		0.315356, 0.906244, 0.281553,
		30.479153, 31.601673, 24.371971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963242, 30.859179, 24.401649>,  <30.258404, 30.967302, 24.174885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963242, 30.859179, 24.401649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841095, 31.207401, 24.555988>,  <30.767807, 31.416336, 24.648592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841095, 31.207401, 24.555988>,  <30.963242, 30.859179, 24.401649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841095, 31.207401, 24.555988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538738, -0.176170, 0.823848,
		0.785183, 0.459447, -0.415206,
		-0.305368, 0.870559, 0.385847,
		30.749485, 31.468569, 24.671743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493441, 31.013409, 24.826277>,  <30.963242, 30.859179, 24.401649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493441, 31.013409, 24.826277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210913, 31.270615, 24.944695>,  <31.041395, 31.424938, 25.015745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210913, 31.270615, 24.944695>,  <31.493441, 31.013409, 24.826277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210913, 31.270615, 24.944695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433497, 0.062274, 0.899000,
		0.559634, 0.763318, -0.322730,
		-0.706321, 0.643014, 0.296046,
		30.999016, 31.463518, 25.033508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813921, 31.606937, 25.126921>,  <31.493441, 31.013409, 24.826277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813921, 31.606937, 25.126921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446466, 31.549919, 25.274319>,  <31.225994, 31.515709, 25.362757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446466, 31.549919, 25.274319>,  <31.813921, 31.606937, 25.126921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446466, 31.549919, 25.274319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388618, -0.157695, 0.907804,
		-0.071294, 0.977145, 0.200261,
		-0.918637, -0.142546, 0.368493,
		31.170876, 31.507154, 25.384867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964331, 31.781485, 25.734850>,  <31.813921, 31.606937, 25.126921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964331, 31.781485, 25.734850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600204, 31.626087, 25.791973>,  <31.381729, 31.532848, 25.826248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600204, 31.626087, 25.791973>,  <31.964331, 31.781485, 25.734850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600204, 31.626087, 25.791973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277361, -0.316439, 0.907159,
		-0.307236, 0.865412, 0.395813,
		-0.910317, -0.388495, 0.142810,
		31.327110, 31.509539, 25.834816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768547, 31.954596, 26.426521>,  <31.964331, 31.781485, 25.734850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768547, 31.954596, 26.426521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534006, 31.648167, 26.321205>,  <31.393282, 31.464310, 26.258017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534006, 31.648167, 26.321205>,  <31.768547, 31.954596, 26.426521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534006, 31.648167, 26.321205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166147, -0.431851, 0.886510,
		-0.792833, 0.476064, 0.380498,
		-0.586354, -0.766073, -0.263289,
		31.358101, 31.418344, 26.242218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331205, 31.830904, 27.028854>,  <31.768547, 31.954596, 26.426521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331205, 31.830904, 27.028854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314739, 31.483292, 26.831638>,  <31.304859, 31.274725, 26.713308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314739, 31.483292, 26.831638>,  <31.331205, 31.830904, 27.028854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314739, 31.483292, 26.831638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078744, -0.494746, 0.865463,
		-0.996045, -0.003197, 0.088798,
		-0.041166, -0.869032, -0.493041,
		31.302389, 31.222582, 26.683725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501789, 32.657085, 27.384062>,  <31.331205, 31.830904, 27.028854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501789, 32.657085, 27.384062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808073, 32.589432, 27.632282>,  <31.991844, 32.548840, 27.781214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808073, 32.589432, 27.632282>,  <31.501789, 32.657085, 27.384062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808073, 32.589432, 27.632282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523847, 0.723800, -0.449108,
		-0.373193, 0.668959, 0.642822,
		0.765709, -0.169137, 0.620550,
		32.037785, 32.538692, 27.818447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660620, 33.303417, 27.752338>,  <31.501789, 32.657085, 27.384062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660620, 33.303417, 27.752338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986414, 33.072620, 27.776649>,  <32.181889, 32.934143, 27.791237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986414, 33.072620, 27.776649>,  <31.660620, 33.303417, 27.752338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986414, 33.072620, 27.776649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541077, 0.717592, -0.438517,
		0.209406, 0.390051, 0.896665,
		0.814484, -0.576993, 0.060780,
		32.230759, 32.899521, 27.794884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112232, 33.797703, 27.863226>,  <31.660620, 33.303417, 27.752338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112232, 33.797703, 27.863226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329853, 33.482597, 27.747684>,  <32.460426, 33.293533, 27.678360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329853, 33.482597, 27.747684>,  <32.112232, 33.797703, 27.863226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329853, 33.482597, 27.747684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557274, 0.596623, -0.577483,
		0.627255, 0.153212, 0.763595,
		0.544056, -0.787761, -0.288853,
		32.493069, 33.246269, 27.661028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744678, 33.823776, 28.042789>,  <32.112232, 33.797703, 27.863226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744678, 33.823776, 28.042789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770454, 33.591476, 27.718178>,  <32.785919, 33.452099, 27.523411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770454, 33.591476, 27.718178>,  <32.744678, 33.823776, 28.042789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770454, 33.591476, 27.718178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438376, 0.747028, -0.499776,
		0.896479, -0.323550, 0.302722,
		0.064439, -0.580745, -0.811531,
		32.789787, 33.417252, 27.474718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384628, 33.985672, 27.689409>,  <32.744678, 33.823776, 28.042789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384628, 33.985672, 27.689409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192497, 33.789391, 27.398617>,  <33.077221, 33.671623, 27.224142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192497, 33.789391, 27.398617>,  <33.384628, 33.985672, 27.689409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192497, 33.789391, 27.398617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363817, 0.642716, -0.674205,
		0.798077, -0.588324, -0.130185,
		-0.480323, -0.490704, -0.726979,
		33.048401, 33.642181, 27.180523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901409, 33.919800, 27.233841>,  <33.384628, 33.985672, 27.689409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901409, 33.919800, 27.233841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573517, 33.853527, 27.014534>,  <33.376781, 33.813763, 26.882950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573517, 33.853527, 27.014534>,  <33.901409, 33.919800, 27.233841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573517, 33.853527, 27.014534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331260, 0.643760, -0.689811,
		0.467237, -0.747077, -0.472827,
		-0.819730, -0.165677, -0.548265,
		33.327599, 33.803825, 26.850054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158844, 33.600029, 26.568533>,  <33.901409, 33.919800, 27.233841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158844, 33.600029, 26.568533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801960, 33.775372, 26.525085>,  <33.587830, 33.880577, 26.499016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801960, 33.775372, 26.525085>,  <34.158844, 33.600029, 26.568533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801960, 33.775372, 26.525085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382113, 0.604542, -0.698940,
		-0.240723, -0.665108, -0.706883,
		-0.892212, 0.438360, -0.108620,
		33.534298, 33.906879, 26.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088131, 33.595573, 25.843489>,  <34.158844, 33.600029, 26.568533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088131, 33.595573, 25.843489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827518, 33.865711, 25.981712>,  <33.671150, 34.027794, 26.064646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827518, 33.865711, 25.981712>,  <34.088131, 33.595573, 25.843489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827518, 33.865711, 25.981712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101192, 0.528807, -0.842688,
		-0.751840, -0.514072, -0.412876,
		-0.651534, 0.675347, 0.345558,
		33.632057, 34.068314, 26.085381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629433, 33.633274, 25.343615>,  <34.088131, 33.595573, 25.843489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629433, 33.633274, 25.343615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620205, 33.968208, 25.562096>,  <33.614666, 34.169170, 25.693184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620205, 33.968208, 25.562096>,  <33.629433, 33.633274, 25.343615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620205, 33.968208, 25.562096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048139, 0.546644, -0.835980,
		-0.998574, 0.007006, -0.052921,
		-0.023073, 0.837336, 0.546202,
		33.613281, 34.219410, 25.725956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054226, 34.188801, 25.103573>,  <33.629433, 33.633274, 25.343615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054226, 34.188801, 25.103573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307888, 34.392525, 25.336281>,  <33.460083, 34.514759, 25.475904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307888, 34.392525, 25.336281>,  <33.054226, 34.188801, 25.103573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307888, 34.392525, 25.336281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122734, 0.676564, -0.726084,
		-0.763406, 0.531849, 0.366534,
		0.634151, 0.509311, 0.581769,
		33.498135, 34.545319, 25.510811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032204, 34.861885, 24.885519>,  <33.054226, 34.188801, 25.103573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032204, 34.861885, 24.885519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347145, 34.893673, 25.130062>,  <33.536110, 34.912746, 25.276789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347145, 34.893673, 25.130062>,  <33.032204, 34.861885, 24.885519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347145, 34.893673, 25.130062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439372, 0.623298, -0.646878,
		-0.432467, 0.777936, 0.455838,
		0.787353, 0.079471, 0.611359,
		33.583351, 34.917515, 25.313469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153461, 35.601727, 24.994772>,  <33.032204, 34.861885, 24.885519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153461, 35.601727, 24.994772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517078, 35.444790, 25.050941>,  <33.735249, 35.350628, 25.084642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517078, 35.444790, 25.050941>,  <33.153461, 35.601727, 24.994772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517078, 35.444790, 25.050941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364802, 0.586384, -0.723238,
		0.201413, 0.708678, 0.676172,
		0.909039, -0.392338, 0.140422,
		33.789791, 35.327087, 25.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.877214, 31.875565, 31.098873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.167177, 31.601662, 31.068897>,  <30.341156, 31.437321, 31.050911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.167177, 31.601662, 31.068897>,  <29.877214, 31.875565, 31.098873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167177, 31.601662, 31.068897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388252, 0.496020, -0.776675,
		0.569006, 0.533922, 0.625428,
		0.724909, -0.684756, -0.074942,
		30.384649, 31.396235, 31.046415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513559, 32.251656, 30.998755>,  <29.877214, 31.875565, 31.098873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513559, 32.251656, 30.998755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.583931, 31.885201, 30.854675>,  <30.626154, 31.665327, 30.768227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.583931, 31.885201, 30.854675>,  <30.513559, 32.251656, 30.998755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583931, 31.885201, 30.854675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448013, 0.400330, -0.799387,
		0.876546, -0.020740, 0.480870,
		0.175928, -0.916136, -0.360200,
		30.636709, 31.610359, 30.746614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108625, 32.348526, 30.625263>,  <30.513559, 32.251656, 30.998755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108625, 32.348526, 30.625263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998003, 31.981888, 30.509766>,  <30.931629, 31.761906, 30.440466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998003, 31.981888, 30.509766>,  <31.108625, 32.348526, 30.625263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998003, 31.981888, 30.509766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611626, 0.063873, -0.788565,
		0.741236, -0.394686, 0.542948,
		-0.276556, -0.916593, -0.288745,
		30.915037, 31.706909, 30.423141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750814, 32.054367, 30.495094>,  <31.108625, 32.348526, 30.625263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750814, 32.054367, 30.495094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.479122, 31.841450, 30.292984>,  <31.316107, 31.713697, 30.171719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.479122, 31.841450, 30.292984>,  <31.750814, 32.054367, 30.495094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479122, 31.841450, 30.292984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602150, -0.010583, -0.798313,
		0.419593, -0.846491, 0.327711,
		-0.679233, -0.532298, -0.505274,
		31.275352, 31.681761, 30.141401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151455, 31.491285, 30.132757>,  <31.750814, 32.054367, 30.495094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151455, 31.491285, 30.132757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.800077, 31.569626, 29.958412>,  <31.589251, 31.616631, 29.853806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.800077, 31.569626, 29.958412>,  <32.151455, 31.491285, 30.132757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800077, 31.569626, 29.958412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467855, 0.166999, -0.867884,
		-0.097187, -0.966310, -0.238329,
		-0.878445, 0.195851, -0.435863,
		31.536543, 31.628382, 29.827654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217098, 31.118048, 29.589911>,  <32.151455, 31.491285, 30.132757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217098, 31.118048, 29.589911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.923594, 31.374657, 29.500427>,  <31.747492, 31.528622, 29.446737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.923594, 31.374657, 29.500427>,  <32.217098, 31.118048, 29.589911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923594, 31.374657, 29.500427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476157, 0.250697, -0.842868,
		-0.484637, -0.724981, -0.489418,
		-0.733758, 0.641525, -0.223707,
		31.703466, 31.567114, 29.433315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005955, 30.976553, 28.920158>,  <32.217098, 31.118048, 29.589911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005955, 30.976553, 28.920158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885881, 31.353561, 28.978863>,  <31.813837, 31.579767, 29.014086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885881, 31.353561, 28.978863>,  <32.005955, 30.976553, 28.920158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885881, 31.353561, 28.978863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456766, 0.277105, -0.845327,
		-0.837408, -0.186721, -0.513696,
		-0.300188, 0.942522, 0.146762,
		31.795826, 31.636318, 29.022892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988779, 31.132185, 28.347431>,  <32.005955, 30.976553, 28.920158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988779, 31.132185, 28.347431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.979090, 31.504295, 28.493855>,  <31.973276, 31.727562, 28.581709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.979090, 31.504295, 28.493855>,  <31.988779, 31.132185, 28.347431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979090, 31.504295, 28.493855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371304, 0.348346, -0.860690,
		-0.928195, 0.115070, -0.353854,
		-0.024224, 0.930276, 0.366059,
		31.971823, 31.783379, 28.603672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560833, 31.479485, 27.843708>,  <31.988779, 31.132185, 28.347431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560833, 31.479485, 27.843708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.792280, 31.735569, 28.045830>,  <31.931149, 31.889219, 28.167103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.792280, 31.735569, 28.045830>,  <31.560833, 31.479485, 27.843708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792280, 31.735569, 28.045830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333774, 0.379426, -0.862920,
		-0.744176, 0.667958, 0.005857,
		0.578617, 0.640209, 0.505306,
		31.965866, 31.927631, 28.197422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039194, 31.298798, 27.426517>,  <31.560833, 31.479485, 27.843708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039194, 31.298798, 27.426517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.196838, 31.037903, 27.167515>,  <31.291426, 30.881367, 27.012114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.196838, 31.037903, 27.167515>,  <31.039194, 31.298798, 27.426517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196838, 31.037903, 27.167515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183212, -0.746145, 0.640079,
		-0.900617, -0.133630, -0.413560,
		0.394110, -0.652235, -0.647508,
		31.315071, 30.842232, 26.973263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584600, 30.731590, 27.295179>,  <31.039194, 31.298798, 27.426517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584600, 30.731590, 27.295179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.939610, 30.571552, 27.203770>,  <31.152615, 30.475529, 27.148924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.939610, 30.571552, 27.203770>,  <30.584600, 30.731590, 27.295179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939610, 30.571552, 27.203770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201837, -0.783449, 0.587767,
		-0.414200, -0.475533, -0.776084,
		0.887525, -0.400095, -0.228524,
		31.205868, 30.451523, 27.135212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399912, 30.060387, 27.104906>,  <30.584600, 30.731590, 27.295179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399912, 30.060387, 27.104906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.796398, 30.055767, 27.157600>,  <31.034290, 30.052996, 27.189217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.796398, 30.055767, 27.157600>,  <30.399912, 30.060387, 27.104906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796398, 30.055767, 27.157600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080462, -0.843236, 0.531487,
		0.104945, -0.537419, -0.836760,
		0.991217, -0.011550, 0.131735,
		31.093763, 30.052301, 27.197121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573589, 29.454803, 26.787048>,  <30.399912, 30.060387, 27.104906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573589, 29.454803, 26.787048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.834780, 29.563591, 27.069794>,  <30.991493, 29.628864, 27.239441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.834780, 29.563591, 27.069794>,  <30.573589, 29.454803, 26.787048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834780, 29.563591, 27.069794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272413, -0.786506, 0.554256,
		0.706693, -0.554475, -0.439481,
		0.652975, 0.271969, 0.706864,
		31.030672, 29.645182, 27.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017944, 28.918266, 26.883482>,  <30.573589, 29.454803, 26.787048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017944, 28.918266, 26.883482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017290, 29.145565, 27.212624>,  <31.016897, 29.281944, 27.410109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017290, 29.145565, 27.212624>,  <31.017944, 28.918266, 26.883482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017290, 29.145565, 27.212624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326946, -0.777938, 0.536580,
		0.945041, -0.268152, 0.187060,
		-0.001636, 0.568249, 0.822855,
		31.016800, 29.316040, 27.459480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099890, 28.469980, 27.296438>,  <31.017944, 28.918266, 26.883482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099890, 28.469980, 27.296438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.015768, 28.772633, 27.544079>,  <30.965296, 28.954224, 27.692663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.015768, 28.772633, 27.544079>,  <31.099890, 28.469980, 27.296438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015768, 28.772633, 27.544079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334157, -0.650754, 0.681805,
		0.918756, -0.063491, 0.389688,
		-0.210303, 0.756629, 0.619100,
		30.952677, 28.999622, 27.729809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276258, 28.173637, 27.937019>,  <31.099890, 28.469980, 27.296438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276258, 28.173637, 27.937019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048744, 28.498081, 27.991547>,  <30.912235, 28.692747, 28.024263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048744, 28.498081, 27.991547>,  <31.276258, 28.173637, 27.937019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048744, 28.498081, 27.991547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355042, -0.391633, 0.848863,
		0.741908, 0.434424, 0.510734,
		-0.568787, 0.811110, 0.136317,
		30.878109, 28.741415, 28.032442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395960, 28.428482, 28.698957>,  <31.276258, 28.173637, 27.937019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395960, 28.428482, 28.698957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048164, 28.545319, 28.539623>,  <30.839487, 28.615421, 28.444023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048164, 28.545319, 28.539623>,  <31.395960, 28.428482, 28.698957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048164, 28.545319, 28.539623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484083, -0.343505, 0.804778,
		0.098240, 0.892573, 0.440070,
		-0.869490, 0.292092, -0.398334,
		30.787317, 28.632946, 28.420124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998598, 28.782673, 29.162985>,  <31.395960, 28.428482, 28.698957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998598, 28.782673, 29.162985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.711243, 28.643818, 28.921848>,  <30.538830, 28.560505, 28.777166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.711243, 28.643818, 28.921848>,  <30.998598, 28.782673, 29.162985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711243, 28.643818, 28.921848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524114, -0.299723, 0.797164,
		-0.457409, 0.888630, 0.033379,
		-0.718388, -0.347136, -0.602839,
		30.495726, 28.539677, 28.740997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427261, 28.774414, 29.628040>,  <30.998598, 28.782673, 29.162985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427261, 28.774414, 29.628040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.287531, 28.552929, 29.325684>,  <30.203693, 28.420038, 29.144270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.287531, 28.552929, 29.325684>,  <30.427261, 28.774414, 29.628040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287531, 28.552929, 29.325684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751120, -0.316802, 0.579184,
		-0.560170, 0.770091, -0.305238,
		-0.349324, -0.553712, -0.755894,
		30.182734, 28.386816, 29.098915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622368, 28.935701, 29.472591>,  <30.427261, 28.774414, 29.628040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622368, 28.935701, 29.472591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.708559, 28.567554, 29.342056>,  <29.760273, 28.346666, 29.263735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.708559, 28.567554, 29.342056>,  <29.622368, 28.935701, 29.472591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708559, 28.567554, 29.342056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778601, -0.363626, 0.511427,
		-0.589364, 0.143885, -0.794951,
		0.215478, -0.920366, -0.326337,
		29.773203, 28.291445, 29.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959967, 28.544054, 29.472090>,  <29.622368, 28.935701, 29.472591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959967, 28.544054, 29.472090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.209816, 28.234825, 29.427898>,  <29.359726, 28.049288, 29.401382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.209816, 28.234825, 29.427898>,  <28.959967, 28.544054, 29.472090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209816, 28.234825, 29.427898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454045, -0.474620, 0.754042,
		-0.635364, -0.420830, -0.647468,
		0.624625, -0.773070, -0.110481,
		29.397203, 28.002905, 29.394754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602968, 27.971586, 29.361097>,  <28.959967, 28.544054, 29.472090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602968, 27.971586, 29.361097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.956434, 27.834496, 29.488640>,  <29.168514, 27.752241, 29.565166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.956434, 27.834496, 29.488640>,  <28.602968, 27.971586, 29.361097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956434, 27.834496, 29.488640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467025, -0.598990, 0.650460,
		-0.031938, -0.723705, -0.689370,
		0.883667, -0.342727, 0.318857,
		29.221535, 27.731678, 29.584297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430046, 27.277878, 29.539413>,  <28.602968, 27.971586, 29.361097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430046, 27.277878, 29.539413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.793062, 27.319290, 29.702217>,  <29.010872, 27.344137, 29.799898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.793062, 27.319290, 29.702217>,  <28.430046, 27.277878, 29.539413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793062, 27.319290, 29.702217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177164, -0.784303, 0.594543,
		0.380770, -0.611678, -0.693443,
		0.907539, 0.103531, 0.407007,
		29.065325, 27.350349, 29.824320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.596264, 26.327482, 30.790686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238918, 26.506290, 30.772491>,  <35.024509, 26.613575, 30.761576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.238918, 26.506290, 30.772491>,  <35.596264, 26.327482, 30.790686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238918, 26.506290, 30.772491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298718, 0.515250, -0.803296,
		-0.335653, -0.731226, -0.593840,
		-0.893367, 0.447020, -0.045485,
		34.970909, 26.640396, 30.758846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495853, 26.168140, 30.044180>,  <35.596264, 26.327482, 30.790686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495853, 26.168140, 30.044180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264851, 26.466125, 30.177757>,  <35.126251, 26.644917, 30.257904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264851, 26.466125, 30.177757>,  <35.495853, 26.168140, 30.044180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264851, 26.466125, 30.177757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243018, 0.547376, -0.800826,
		-0.779379, -0.381326, -0.497151,
		-0.577504, 0.744963, 0.333944,
		35.091599, 26.689615, 30.277941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167820, 26.499481, 29.408270>,  <35.495853, 26.168140, 30.044180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167820, 26.499481, 29.408270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053619, 26.776836, 29.672905>,  <34.985100, 26.943251, 29.831686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053619, 26.776836, 29.672905>,  <35.167820, 26.499481, 29.408270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053619, 26.776836, 29.672905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079065, 0.705008, -0.704778,
		-0.955110, -0.148909, -0.256107,
		-0.285506, 0.693390, 0.661587,
		34.967968, 26.984854, 29.871382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675049, 26.915951, 29.175102>,  <35.167820, 26.499481, 29.408270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675049, 26.915951, 29.175102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.869232, 27.143185, 29.440918>,  <34.985741, 27.279524, 29.600409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.869232, 27.143185, 29.440918>,  <34.675049, 26.915951, 29.175102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869232, 27.143185, 29.440918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122805, 0.708271, -0.695177,
		-0.865594, 0.419085, 0.274070,
		0.485454, 0.568084, 0.664541,
		35.014870, 27.313610, 29.640280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381809, 27.600584, 29.178041>,  <34.675049, 26.915951, 29.175102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381809, 27.600584, 29.178041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.748394, 27.630863, 29.335201>,  <34.968346, 27.649031, 29.429497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.748394, 27.630863, 29.335201>,  <34.381809, 27.600584, 29.178041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748394, 27.630863, 29.335201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255577, 0.644785, -0.720370,
		-0.307867, 0.760607, 0.571573,
		0.916460, 0.075696, 0.392902,
		35.023331, 27.653572, 29.453072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456242, 28.396027, 29.249054>,  <34.381809, 27.600584, 29.178041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456242, 28.396027, 29.249054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810764, 28.212479, 29.224102>,  <35.023479, 28.102350, 29.209131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810764, 28.212479, 29.224102>,  <34.456242, 28.396027, 29.249054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810764, 28.212479, 29.224102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290607, 0.656000, -0.696571,
		0.360557, 0.599250, 0.714771,
		0.886310, -0.458872, -0.062379,
		35.076656, 28.074818, 29.205389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857670, 28.931183, 29.270571>,  <34.456242, 28.396027, 29.249054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857670, 28.931183, 29.270571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082546, 28.633240, 29.126831>,  <35.217472, 28.454473, 29.040586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082546, 28.633240, 29.126831>,  <34.857670, 28.931183, 29.270571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082546, 28.633240, 29.126831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317618, 0.595659, -0.737773,
		0.763585, 0.300632, 0.571453,
		0.562189, -0.744856, -0.359350,
		35.251202, 28.409782, 29.019026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466022, 29.303106, 29.053400>,  <34.857670, 28.931183, 29.270571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466022, 29.303106, 29.053400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465519, 28.947117, 28.870995>,  <35.465218, 28.733524, 28.761551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465519, 28.947117, 28.870995>,  <35.466022, 29.303106, 29.053400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465519, 28.947117, 28.870995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176915, 0.448624, -0.876036,
		0.984226, -0.081776, 0.156886,
		-0.001256, -0.889972, -0.456014,
		35.465141, 28.680126, 28.734190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988796, 29.344345, 28.607208>,  <35.466022, 29.303106, 29.053400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988796, 29.344345, 28.607208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786949, 29.032898, 28.458019>,  <35.665840, 28.846029, 28.368505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786949, 29.032898, 28.458019>,  <35.988796, 29.344345, 28.607208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786949, 29.032898, 28.458019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209753, 0.308497, -0.927811,
		0.837472, -0.546426, 0.007644,
		-0.504622, -0.778620, -0.372972,
		35.635563, 28.799313, 28.346128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445549, 29.011564, 28.141642>,  <35.988796, 29.344345, 28.607208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445549, 29.011564, 28.141642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102783, 28.846024, 28.018730>,  <35.897121, 28.746698, 27.944983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102783, 28.846024, 28.018730>,  <36.445549, 29.011564, 28.141642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102783, 28.846024, 28.018730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233054, 0.220651, -0.947100,
		0.459761, -0.883199, -0.092630,
		-0.856917, -0.413851, -0.307280,
		35.845707, 28.721869, 27.926546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543282, 28.562437, 27.524893>,  <36.445549, 29.011564, 28.141642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543282, 28.562437, 27.524893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161243, 28.680431, 27.536053>,  <35.932022, 28.751228, 27.542749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161243, 28.680431, 27.536053>,  <36.543282, 28.562437, 27.524893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161243, 28.680431, 27.536053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069154, 0.313483, -0.947073,
		-0.288119, -0.902614, -0.319805,
		-0.955094, 0.294985, 0.027901,
		35.874714, 28.768927, 27.544422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212006, 28.276333, 26.915295>,  <36.543282, 28.562437, 27.524893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212006, 28.276333, 26.915295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970016, 28.582371, 27.003510>,  <35.824821, 28.765993, 27.056438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970016, 28.582371, 27.003510>,  <36.212006, 28.276333, 26.915295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970016, 28.582371, 27.003510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176490, 0.398928, -0.899837,
		-0.776440, -0.505455, -0.376373,
		-0.604973, 0.765095, 0.220536,
		35.788525, 28.811899, 27.069670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968201, 28.463028, 26.275600>,  <36.212006, 28.276333, 26.915295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968201, 28.463028, 26.275600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863842, 28.770313, 26.509449>,  <35.801228, 28.954683, 26.649757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863842, 28.770313, 26.509449>,  <35.968201, 28.463028, 26.275600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863842, 28.770313, 26.509449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081768, 0.585834, -0.806295,
		-0.961896, -0.258166, -0.090030,
		-0.260901, 0.768211, 0.584622,
		35.785572, 29.000776, 26.684835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370895, 28.763098, 26.039749>,  <35.968201, 28.463028, 26.275600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370895, 28.763098, 26.039749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558544, 29.046852, 26.250156>,  <35.671135, 29.217106, 26.376400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558544, 29.046852, 26.250156>,  <35.370895, 28.763098, 26.039749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558544, 29.046852, 26.250156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022685, 0.605109, -0.795819,
		-0.882842, 0.361403, 0.299962,
		0.469121, 0.709387, 0.526018,
		35.699280, 29.259668, 26.407961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678421, 28.752165, 25.708830>,  <35.370895, 28.763098, 26.039749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678421, 28.752165, 25.708830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551659, 28.485722, 25.438755>,  <34.475601, 28.325855, 25.276711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551659, 28.485722, 25.438755>,  <34.678421, 28.752165, 25.708830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551659, 28.485722, 25.438755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290391, -0.609548, 0.737648,
		-0.902910, 0.429830, -0.000264,
		-0.316902, -0.666106, -0.675186,
		34.456589, 28.285891, 25.236198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011402, 28.515547, 25.904001>,  <34.678421, 28.752165, 25.708830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011402, 28.515547, 25.904001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152927, 28.229671, 25.662659>,  <34.237843, 28.058146, 25.517853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152927, 28.229671, 25.662659>,  <34.011402, 28.515547, 25.904001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152927, 28.229671, 25.662659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324083, -0.698796, 0.637694,
		-0.877375, -0.030086, -0.478861,
		0.353812, -0.714688, -0.603356,
		34.259071, 28.015265, 25.481651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446575, 28.124842, 25.835169>,  <34.011402, 28.515547, 25.904001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446575, 28.124842, 25.835169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780170, 27.910351, 25.783138>,  <33.980328, 27.781656, 25.751921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.780170, 27.910351, 25.783138>,  <33.446575, 28.124842, 25.835169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780170, 27.910351, 25.783138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379288, -0.728336, 0.570673,
		-0.400749, -0.426600, -0.810810,
		0.833991, -0.536227, -0.130076,
		34.030369, 27.749483, 25.744116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296589, 27.551331, 25.427639>,  <33.446575, 28.124842, 25.835169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296589, 27.551331, 25.427639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635593, 27.456493, 25.617592>,  <33.838997, 27.399591, 25.731564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635593, 27.456493, 25.617592>,  <33.296589, 27.551331, 25.427639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635593, 27.456493, 25.617592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493133, -0.682663, 0.539251,
		0.196333, -0.691201, -0.695481,
		0.847510, -0.237092, 0.474883,
		33.889847, 27.385366, 25.760057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154205, 26.847580, 25.550646>,  <33.296589, 27.551331, 25.427639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154205, 26.847580, 25.550646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481750, 26.933720, 25.763474>,  <33.678276, 26.985403, 25.891171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481750, 26.933720, 25.763474>,  <33.154205, 26.847580, 25.550646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481750, 26.933720, 25.763474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229055, -0.727354, 0.646908,
		0.526313, -0.651599, -0.546273,
		0.818858, 0.215349, 0.532067,
		33.727409, 26.998325, 25.923094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641872, 26.292295, 25.413153>,  <33.154205, 26.847580, 25.550646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641872, 26.292295, 25.413153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722466, 26.468708, 25.762985>,  <33.770821, 26.574556, 25.972885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722466, 26.468708, 25.762985>,  <33.641872, 26.292295, 25.413153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722466, 26.468708, 25.762985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326814, -0.811457, 0.484489,
		0.923362, -0.383441, -0.019357,
		0.201481, 0.441033, 0.874583,
		33.782909, 26.601017, 26.025360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984646, 25.825729, 25.819786>,  <33.641872, 26.292295, 25.413153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984646, 25.825729, 25.819786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831635, 26.090107, 26.078033>,  <33.739826, 26.248734, 26.232983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831635, 26.090107, 26.078033>,  <33.984646, 25.825729, 25.819786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831635, 26.090107, 26.078033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236215, -0.745502, 0.623241,
		0.893238, 0.085903, 0.441302,
		-0.382530, 0.660944, 0.645619,
		33.716877, 26.288391, 26.271719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294212, 25.544981, 26.416245>,  <33.984646, 25.825729, 25.819786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294212, 25.544981, 26.416245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.998516, 25.781036, 26.546021>,  <33.821098, 25.922670, 26.623886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.998516, 25.781036, 26.546021>,  <34.294212, 25.544981, 26.416245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998516, 25.781036, 26.546021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327928, -0.736228, 0.591972,
		0.588210, 0.331214, 0.737771,
		-0.739238, 0.590140, 0.324442,
		33.776745, 25.958078, 26.643353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312759, 25.504171, 27.014246>,  <34.294212, 25.544981, 26.416245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312759, 25.504171, 27.014246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942112, 25.652184, 26.987534>,  <33.719723, 25.740990, 26.971506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942112, 25.652184, 26.987534>,  <34.312759, 25.504171, 27.014246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942112, 25.652184, 26.987534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262518, -0.509504, 0.819445,
		0.269193, 0.776843, 0.569254,
		-0.926617, 0.370028, -0.066781,
		33.664127, 25.763191, 26.967499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077129, 25.624067, 27.757755>,  <34.312759, 25.504171, 27.014246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077129, 25.624067, 27.757755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736786, 25.619286, 27.547653>,  <33.532578, 25.616417, 27.421593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736786, 25.619286, 27.547653>,  <34.077129, 25.624067, 27.757755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736786, 25.619286, 27.547653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402220, -0.628372, 0.665858,
		-0.338014, 0.777821, 0.529850,
		-0.850861, -0.011953, -0.525254,
		33.481529, 25.615700, 27.390078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578640, 25.971619, 28.138573>,  <34.077129, 25.624067, 27.757755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578640, 25.971619, 28.138573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.380951, 25.701954, 27.919029>,  <33.262337, 25.540155, 27.787304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.380951, 25.701954, 27.919029>,  <33.578640, 25.971619, 28.138573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380951, 25.701954, 27.919029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458525, -0.334240, 0.823431,
		-0.738578, 0.658625, -0.143931,
		-0.494225, -0.674164, -0.548858,
		33.232685, 25.499704, 27.754372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948414, 25.945139, 28.410931>,  <33.578640, 25.971619, 28.138573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948414, 25.945139, 28.410931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.956596, 25.598461, 28.211563>,  <32.961506, 25.390455, 28.091942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.956596, 25.598461, 28.211563>,  <32.948414, 25.945139, 28.410931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956596, 25.598461, 28.211563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384374, -0.467026, 0.796331,
		-0.922951, 0.175290, -0.342689,
		0.020456, -0.866695, -0.498419,
		32.962734, 25.338453, 28.062037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313385, 25.602922, 28.454145>,  <32.948414, 25.945139, 28.410931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313385, 25.602922, 28.454145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555004, 25.291855, 28.384449>,  <32.699974, 25.105213, 28.342630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555004, 25.291855, 28.384449>,  <32.313385, 25.602922, 28.454145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555004, 25.291855, 28.384449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448976, -0.512704, 0.731816,
		-0.658446, -0.363819, -0.658851,
		0.604044, -0.777670, -0.174242,
		32.736217, 25.058554, 28.332176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935282, 25.014124, 28.559952>,  <32.313385, 25.602922, 28.454145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935282, 25.014124, 28.559952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.301647, 24.855606, 28.585411>,  <32.521465, 24.760496, 28.600687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.301647, 24.855606, 28.585411>,  <31.935282, 25.014124, 28.559952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301647, 24.855606, 28.585411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277567, -0.510838, 0.813635,
		-0.289923, -0.762887, -0.577882,
		0.915915, -0.396292, 0.063648,
		32.576424, 24.736717, 28.604506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271107, 24.591412, 28.375914>,  <31.935282, 25.014124, 28.559952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271107, 24.591412, 28.375914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.897331, 24.686951, 28.481571>,  <30.673065, 24.744274, 28.544966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.897331, 24.686951, 28.481571>,  <31.271107, 24.591412, 28.375914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897331, 24.686951, 28.481571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113753, 0.502683, -0.856954,
		-0.337462, -0.830820, -0.442558,
		-0.934441, 0.238847, 0.264145,
		30.616999, 24.758604, 28.560814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853508, 24.320810, 27.909388>,  <31.271107, 24.591412, 28.375914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853508, 24.320810, 27.909388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.653440, 24.642811, 28.037014>,  <30.533400, 24.836012, 28.113590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.653440, 24.642811, 28.037014>,  <30.853508, 24.320810, 27.909388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653440, 24.642811, 28.037014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082632, 0.322412, -0.942986,
		-0.861977, -0.498017, -0.094741,
		-0.500168, 0.805003, 0.319064,
		30.503389, 24.884312, 28.132732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347723, 24.462141, 27.429541>,  <30.853508, 24.320810, 27.909388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347723, 24.462141, 27.429541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.364513, 24.813728, 27.619553>,  <30.374588, 25.024681, 27.733559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.364513, 24.813728, 27.619553>,  <30.347723, 24.462141, 27.429541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364513, 24.813728, 27.619553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173854, 0.474620, -0.862850,
		-0.983876, -0.046367, 0.172735,
		0.041976, 0.878969, 0.475028,
		30.377106, 25.077419, 27.762062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681204, 24.858574, 27.237698>,  <30.347723, 24.462141, 27.429541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681204, 24.858574, 27.237698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.963640, 25.104866, 27.377590>,  <30.133102, 25.252642, 27.461525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.963640, 25.104866, 27.377590>,  <29.681204, 24.858574, 27.237698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963640, 25.104866, 27.377590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031566, 0.520761, -0.853118,
		-0.707418, 0.591339, 0.387141,
		0.706090, 0.615732, 0.349730,
		30.175467, 25.289585, 27.482510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481592, 25.472195, 27.113935>,  <29.681204, 24.858574, 27.237698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481592, 25.472195, 27.113935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870934, 25.549938, 27.162605>,  <30.104538, 25.596584, 27.191807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870934, 25.549938, 27.162605>,  <29.481592, 25.472195, 27.113935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870934, 25.549938, 27.162605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026745, 0.623236, -0.781577,
		-0.227741, 0.757497, 0.611827,
		0.973354, 0.194360, 0.121677,
		30.162939, 25.608246, 27.199108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578995, 26.140657, 26.974859>,  <29.481592, 25.472195, 27.113935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578995, 26.140657, 26.974859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.943117, 25.980202, 26.933998>,  <30.161591, 25.883928, 26.909481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.943117, 25.980202, 26.933998>,  <29.578995, 26.140657, 26.974859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943117, 25.980202, 26.933998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162821, 0.573876, -0.802593,
		0.380574, 0.713970, 0.587716,
		0.910304, -0.401138, -0.102153,
		30.216208, 25.859859, 26.903353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926075, 26.699432, 26.902039>,  <29.578995, 26.140657, 26.974859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926075, 26.699432, 26.902039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.163841, 26.408573, 26.764679>,  <30.306501, 26.234058, 26.682262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.163841, 26.408573, 26.764679>,  <29.926075, 26.699432, 26.902039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163841, 26.408573, 26.764679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308177, 0.600413, -0.737924,
		0.742763, 0.332805, 0.580986,
		0.594416, -0.727148, -0.343401,
		30.342167, 26.190428, 26.661659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440096, 27.046879, 26.682747>,  <29.926075, 26.699432, 26.902039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440096, 27.046879, 26.682747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.467186, 26.692749, 26.498741>,  <30.483440, 26.480270, 26.388338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.467186, 26.692749, 26.498741>,  <30.440096, 27.046879, 26.682747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467186, 26.692749, 26.498741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376718, 0.449632, -0.809885,
		0.923849, -0.118447, 0.363969,
		0.067724, -0.885325, -0.460014,
		30.487503, 26.427151, 26.360737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146931, 27.037003, 26.402378>,  <30.440096, 27.046879, 26.682747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146931, 27.037003, 26.402378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.918081, 26.782738, 26.195068>,  <30.780771, 26.630178, 26.070683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.918081, 26.782738, 26.195068>,  <31.146931, 27.037003, 26.402378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918081, 26.782738, 26.195068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277499, 0.444618, -0.851651,
		0.771796, -0.631070, -0.077981,
		-0.572123, -0.635661, -0.518276,
		30.746445, 26.592039, 26.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483942, 26.796043, 25.795389>,  <31.146931, 27.037003, 26.402378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483942, 26.796043, 25.795389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101957, 26.734154, 25.694111>,  <30.872766, 26.697020, 25.633343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101957, 26.734154, 25.694111>,  <31.483942, 26.796043, 25.795389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101957, 26.734154, 25.694111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144462, 0.502912, -0.852179,
		0.259190, -0.850376, -0.457910,
		-0.954962, -0.154726, -0.253197,
		30.815470, 26.687737, 25.618151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499716, 26.504879, 25.083109>,  <31.483942, 26.796043, 25.795389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499716, 26.504879, 25.083109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.132996, 26.644371, 25.160942>,  <30.912964, 26.728065, 25.207642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.132996, 26.644371, 25.160942>,  <31.499716, 26.504879, 25.083109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132996, 26.644371, 25.160942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047925, 0.579816, -0.813336,
		-0.396458, -0.736342, -0.548289,
		-0.916801, 0.348731, 0.194584,
		30.857956, 26.748991, 25.219316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153166, 26.505423, 24.451599>,  <31.499716, 26.504879, 25.083109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153166, 26.505423, 24.451599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951847, 26.758827, 24.686668>,  <30.831055, 26.910870, 24.827709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951847, 26.758827, 24.686668>,  <31.153166, 26.505423, 24.451599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951847, 26.758827, 24.686668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086721, 0.713683, -0.695080,
		-0.859750, -0.298869, -0.414134,
		-0.503298, 0.633509, 0.587671,
		30.800858, 26.948879, 24.862970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617832, 26.753475, 24.013050>,  <31.153166, 26.505423, 24.451599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617832, 26.753475, 24.013050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.696453, 27.012383, 24.307644>,  <30.743626, 27.167727, 24.484400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.696453, 27.012383, 24.307644>,  <30.617832, 26.753475, 24.013050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696453, 27.012383, 24.307644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159567, 0.720006, -0.675374,
		-0.967422, 0.250265, 0.038236,
		0.196553, 0.647271, 0.736483,
		30.755419, 27.206564, 24.528589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186321, 27.320787, 23.839302>,  <30.617832, 26.753475, 24.013050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186321, 27.320787, 23.839302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436333, 27.463524, 24.117008>,  <30.586340, 27.549166, 24.283632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436333, 27.463524, 24.117008>,  <30.186321, 27.320787, 23.839302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436333, 27.463524, 24.117008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057000, 0.907887, -0.415323,
		-0.778520, 0.220014, 0.587793,
		0.625026, 0.356841, 0.694267,
		30.623840, 27.570576, 24.325289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.856865, 34.901012, 14.696618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.218204, 34.998394, 14.837861>,  <47.435009, 35.056824, 14.922606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.218204, 34.998394, 14.837861>,  <46.856865, 34.901012, 14.696618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.218204, 34.998394, 14.837861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208658, -0.469834, 0.857740,
		0.374721, -0.848520, -0.373627,
		0.903353, 0.243453, 0.353107,
		47.489212, 35.071430, 14.943793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110920, 34.344433, 15.082162>,  <46.856865, 34.901012, 14.696618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110920, 34.344433, 15.082162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.373623, 34.609772, 15.225631>,  <47.531246, 34.768974, 15.311712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.373623, 34.609772, 15.225631>,  <47.110920, 34.344433, 15.082162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.373623, 34.609772, 15.225631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100087, -0.548096, 0.830406,
		0.747430, -0.509477, -0.426359,
		0.656758, 0.663343, 0.358671,
		47.570652, 34.808773, 15.333232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579903, 33.994656, 15.431985>,  <47.110920, 34.344433, 15.082162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579903, 33.994656, 15.431985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.632076, 34.361897, 15.581695>,  <47.663380, 34.582241, 15.671520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.632076, 34.361897, 15.581695>,  <47.579903, 33.994656, 15.431985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632076, 34.361897, 15.581695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014327, -0.375714, 0.926625,
		0.991353, -0.126230, -0.035853,
		0.130438, 0.918099, 0.374273,
		47.671207, 34.637325, 15.693976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.985020, 33.791008, 15.949427>,  <47.579903, 33.994656, 15.431985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.985020, 33.791008, 15.949427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.820850, 34.147289, 16.027615>,  <47.722347, 34.361057, 16.074528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.820850, 34.147289, 16.027615>,  <47.985020, 33.791008, 15.949427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820850, 34.147289, 16.027615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319124, -0.341092, 0.884204,
		0.854233, 0.300518, 0.424235,
		-0.410422, 0.890700, 0.195469,
		47.697723, 34.414497, 16.086256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.111469, 33.834225, 16.620785>,  <47.985020, 33.791008, 15.949427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.111469, 33.834225, 16.620785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.859226, 34.141167, 16.574322>,  <47.707878, 34.325333, 16.546444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.859226, 34.141167, 16.574322>,  <48.111469, 33.834225, 16.620785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.859226, 34.141167, 16.574322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364574, -0.160768, 0.917191,
		0.685140, 0.620738, 0.381140,
		-0.630610, 0.767358, -0.116156,
		47.670044, 34.371372, 16.539474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.095474, 34.131020, 17.177429>,  <48.111469, 33.834225, 16.620785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.095474, 34.131020, 17.177429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.750076, 34.267818, 17.029148>,  <47.542839, 34.349895, 16.940180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.750076, 34.267818, 17.029148>,  <48.095474, 34.131020, 17.177429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750076, 34.267818, 17.029148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432446, -0.123773, 0.893124,
		0.259561, 0.931515, 0.254772,
		-0.863492, 0.341995, -0.370703,
		47.491028, 34.370419, 16.917938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913578, 34.629604, 17.658623>,  <48.095474, 34.131020, 17.177429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913578, 34.629604, 17.658623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.579803, 34.492229, 17.486217>,  <47.379539, 34.409805, 17.382774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.579803, 34.492229, 17.486217>,  <47.913578, 34.629604, 17.658623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579803, 34.492229, 17.486217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472762, 0.044154, 0.880083,
		-0.283219, 0.938138, -0.199206,
		-0.834436, -0.343433, -0.431011,
		47.329472, 34.389198, 17.356915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454571, 35.061768, 17.937374>,  <47.913578, 34.629604, 17.658623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454571, 35.061768, 17.937374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.249870, 34.750679, 17.791355>,  <47.127052, 34.564026, 17.703743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.249870, 34.750679, 17.791355>,  <47.454571, 35.061768, 17.937374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.249870, 34.750679, 17.791355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660153, 0.084034, 0.746416,
		-0.549828, 0.622966, -0.556420,
		-0.511749, -0.777722, -0.365048,
		47.096344, 34.517361, 17.681841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755608, 35.252754, 17.823933>,  <47.454571, 35.061768, 17.937374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755608, 35.252754, 17.823933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.739773, 34.854393, 17.856461>,  <46.730270, 34.615376, 17.875977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.739773, 34.854393, 17.856461>,  <46.755608, 35.252754, 17.823933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739773, 34.854393, 17.856461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696182, 0.085871, 0.712711,
		-0.716773, -0.028398, -0.696728,
		-0.039590, -0.995901, 0.081320,
		46.727898, 34.555622, 17.880857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064632, 34.992107, 17.695063>,  <46.755608, 35.252754, 17.823933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064632, 34.992107, 17.695063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.232517, 34.687935, 17.893288>,  <46.333248, 34.505432, 18.012222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.232517, 34.687935, 17.893288>,  <46.064632, 34.992107, 17.695063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.232517, 34.687935, 17.893288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688787, 0.088730, 0.719513,
		-0.591113, -0.643327, -0.486535,
		0.419712, -0.760433, 0.495565,
		46.358429, 34.459805, 18.041958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538567, 34.426876, 17.845602>,  <46.064632, 34.992107, 17.695063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538567, 34.426876, 17.845602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.830563, 34.364136, 18.111691>,  <46.005760, 34.326492, 18.271343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.830563, 34.364136, 18.111691>,  <45.538567, 34.426876, 17.845602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830563, 34.364136, 18.111691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681126, -0.247327, 0.689128,
		0.056439, -0.956153, -0.287378,
		0.729988, -0.156846, 0.665219,
		46.049561, 34.317081, 18.311256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381855, 33.769497, 18.220594>,  <45.538567, 34.426876, 17.845602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381855, 33.769497, 18.220594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.649063, 33.957348, 18.451488>,  <45.809387, 34.070057, 18.590025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.649063, 33.957348, 18.451488>,  <45.381855, 33.769497, 18.220594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649063, 33.957348, 18.451488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518792, -0.262191, 0.813702,
		0.533482, -0.843034, 0.068490,
		0.668021, 0.469627, 0.577233,
		45.849468, 34.098236, 18.624659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464783, 33.289509, 18.826576>,  <45.381855, 33.769497, 18.220594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464783, 33.289509, 18.826576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.605568, 33.651901, 18.920662>,  <45.690041, 33.869335, 18.977114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.605568, 33.651901, 18.920662>,  <45.464783, 33.289509, 18.826576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605568, 33.651901, 18.920662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341572, -0.109646, 0.933438,
		0.871464, -0.408879, 0.270865,
		0.351964, 0.905978, 0.235214,
		45.711159, 33.923695, 18.991226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847645, 33.160378, 19.436970>,  <45.464783, 33.289509, 18.826576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847645, 33.160378, 19.436970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.728432, 33.541988, 19.424297>,  <45.656902, 33.770954, 19.416693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.728432, 33.541988, 19.424297>,  <45.847645, 33.160378, 19.436970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728432, 33.541988, 19.424297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369654, -0.084749, 0.925296,
		0.880075, 0.287480, 0.377919,
		-0.298032, 0.954030, -0.031683,
		45.639023, 33.828197, 19.414793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906559, 33.292381, 20.075647>,  <45.847645, 33.160378, 19.436970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906559, 33.292381, 20.075647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.689091, 33.604935, 19.953098>,  <45.558609, 33.792465, 19.879570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.689091, 33.604935, 19.953098>,  <45.906559, 33.292381, 20.075647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689091, 33.604935, 19.953098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362303, 0.110776, 0.925454,
		0.757071, 0.614144, 0.222871,
		-0.543673, 0.781381, -0.306371,
		45.525990, 33.839348, 19.861187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913731, 33.712433, 20.586399>,  <45.906559, 33.292381, 20.075647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913731, 33.712433, 20.586399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.590374, 33.821472, 20.377708>,  <45.396358, 33.886894, 20.252495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.590374, 33.821472, 20.377708>,  <45.913731, 33.712433, 20.586399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590374, 33.821472, 20.377708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554661, -0.055946, 0.830193,
		0.197118, 0.960501, 0.196425,
		-0.808391, 0.272596, -0.521724,
		45.347858, 33.903252, 20.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568241, 34.216763, 20.939091>,  <45.913731, 33.712433, 20.586399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568241, 34.216763, 20.939091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.277111, 34.103230, 20.689384>,  <45.102432, 34.035110, 20.539560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.277111, 34.103230, 20.689384>,  <45.568241, 34.216763, 20.939091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277111, 34.103230, 20.689384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655460, 0.020333, 0.754956,
		-0.201587, 0.958659, -0.200839,
		-0.727829, -0.283831, -0.624263,
		45.058762, 34.018082, 20.502106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041645, 34.509464, 21.211330>,  <45.568241, 34.216763, 20.939091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041645, 34.509464, 21.211330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.844902, 34.242950, 20.987137>,  <44.726856, 34.083042, 20.852621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.844902, 34.242950, 20.987137>,  <45.041645, 34.509464, 21.211330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844902, 34.242950, 20.987137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717363, -0.054698, 0.694549,
		-0.493423, 0.743691, -0.451063,
		-0.491858, -0.666282, -0.560486,
		44.697346, 34.043064, 20.818991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302891, 34.611969, 21.316202>,  <45.041645, 34.509464, 21.211330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302891, 34.611969, 21.316202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.311874, 34.251289, 21.143490>,  <44.317265, 34.034882, 21.039864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.311874, 34.251289, 21.143490>,  <44.302891, 34.611969, 21.316202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311874, 34.251289, 21.143490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757870, -0.297027, 0.580868,
		-0.652019, 0.314187, -0.690042,
		0.022460, -0.901699, -0.431780,
		44.318611, 33.980778, 21.013956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666882, 34.536373, 20.847719>,  <44.302891, 34.611969, 21.316202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666882, 34.536373, 20.847719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.810417, 34.183819, 20.970615>,  <43.896538, 33.972286, 21.044353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.810417, 34.183819, 20.970615>,  <43.666882, 34.536373, 20.847719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810417, 34.183819, 20.970615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861994, -0.186659, 0.471302,
		-0.358048, -0.433962, -0.826727,
		0.358843, -0.881382, 0.307240,
		43.918072, 33.919403, 21.062788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128494, 34.052322, 20.692085>,  <43.666882, 34.536373, 20.847719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128494, 34.052322, 20.692085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.347885, 33.857643, 20.964054>,  <43.479519, 33.740837, 21.127235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.347885, 33.857643, 20.964054>,  <43.128494, 34.052322, 20.692085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347885, 33.857643, 20.964054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835988, -0.302565, 0.457798,
		-0.017087, -0.819501, -0.572822,
		0.548482, -0.486695, 0.679923,
		43.512428, 33.711636, 21.168032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397373, 33.962143, 20.990229>,  <43.128494, 34.052322, 20.692085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397373, 33.962143, 20.990229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.047405, 33.826138, 20.852295>,  <41.837425, 33.744534, 20.769535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.047405, 33.826138, 20.852295>,  <42.397373, 33.962143, 20.990229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047405, 33.826138, 20.852295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198830, 0.397070, -0.895992,
		0.441570, -0.852483, -0.279799,
		-0.874918, -0.340011, -0.344833,
		41.784931, 33.724136, 20.748844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424026, 33.477730, 20.269125>,  <42.397373, 33.962143, 20.990229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424026, 33.477730, 20.269125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.094139, 33.697495, 20.322784>,  <41.896206, 33.829353, 20.354980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.094139, 33.697495, 20.322784>,  <42.424026, 33.477730, 20.269125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094139, 33.697495, 20.322784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184932, 0.486140, -0.854089,
		-0.534460, -0.679570, -0.502531,
		-0.824714, 0.549410, 0.134148,
		41.846725, 33.862316, 20.363029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171204, 33.662308, 19.608593>,  <42.424026, 33.477730, 20.269125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171204, 33.662308, 19.608593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.994408, 33.919773, 19.858505>,  <41.888329, 34.074253, 20.008451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.994408, 33.919773, 19.858505>,  <42.171204, 33.662308, 19.608593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994408, 33.919773, 19.858505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254013, 0.757804, -0.601007,
		-0.860304, -0.106937, -0.498440,
		-0.441990, 0.643659, 0.624778,
		41.861813, 34.112869, 20.045938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810810, 34.133472, 19.127090>,  <42.171204, 33.662308, 19.608593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810810, 34.133472, 19.127090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.863636, 34.332371, 19.470089>,  <41.895332, 34.451710, 19.675888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.863636, 34.332371, 19.470089>,  <41.810810, 34.133472, 19.127090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863636, 34.332371, 19.470089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397792, 0.765773, -0.505325,
		-0.907921, 0.407842, -0.096669,
		0.132066, 0.497250, 0.857497,
		41.903255, 34.481544, 19.727339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510838, 34.796753, 19.063663>,  <41.810810, 34.133472, 19.127090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510838, 34.796753, 19.063663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.766537, 34.832146, 19.369221>,  <41.919956, 34.853382, 19.552555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.766537, 34.832146, 19.369221>,  <41.510838, 34.796753, 19.063663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766537, 34.832146, 19.369221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446217, 0.766348, -0.462170,
		-0.626301, 0.636304, 0.450405,
		0.639248, 0.088479, 0.763894,
		41.958313, 34.858688, 19.598389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654491, 35.469666, 19.156017>,  <41.510838, 34.796753, 19.063663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654491, 35.469666, 19.156017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.970570, 35.330936, 19.358131>,  <42.160217, 35.247700, 19.479401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.970570, 35.330936, 19.358131>,  <41.654491, 35.469666, 19.156017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970570, 35.330936, 19.358131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574645, 0.705869, -0.414164,
		-0.213026, 0.617629, 0.757070,
		0.790192, -0.346819, 0.505286,
		42.207626, 35.226891, 19.509718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964039, 36.072556, 19.423679>,  <41.654491, 35.469666, 19.156017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964039, 36.072556, 19.423679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.228298, 35.773170, 19.400543>,  <42.386852, 35.593540, 19.386662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.228298, 35.773170, 19.400543>,  <41.964039, 36.072556, 19.423679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228298, 35.773170, 19.400543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679761, 0.629139, -0.376974,
		0.318542, 0.209728, 0.924416,
		0.660648, -0.748464, -0.057842,
		42.426491, 35.548630, 19.383190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600338, 36.349915, 19.731810>,  <41.964039, 36.072556, 19.423679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600338, 36.349915, 19.731810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.742004, 36.045593, 19.514282>,  <42.827003, 35.862999, 19.383766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.742004, 36.045593, 19.514282>,  <42.600338, 36.349915, 19.731810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742004, 36.045593, 19.514282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803812, 0.544862, -0.238770,
		0.477964, -0.352563, 0.804519,
		0.354171, -0.760805, -0.543819,
		42.848255, 35.817352, 19.351137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320808, 36.239773, 19.901239>,  <42.600338, 36.349915, 19.731810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320808, 36.239773, 19.901239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.311611, 36.038914, 19.555450>,  <43.306091, 35.918396, 19.347977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.311611, 36.038914, 19.555450>,  <43.320808, 36.239773, 19.901239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311611, 36.038914, 19.555450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831037, 0.471080, -0.295740,
		0.555742, -0.725209, 0.406475,
		-0.022992, -0.502151, -0.864474,
		43.304714, 35.888268, 19.296108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051163, 36.002754, 19.675505>,  <43.320808, 36.239773, 19.901239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051163, 36.002754, 19.675505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.843388, 35.960430, 19.336330>,  <43.718723, 35.935036, 19.132826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.843388, 35.960430, 19.336330>,  <44.051163, 36.002754, 19.675505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843388, 35.960430, 19.336330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789388, 0.320535, -0.523568,
		0.327194, -0.941308, -0.082968,
		-0.519433, -0.105814, -0.847934,
		43.687557, 35.928688, 19.081949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541409, 35.687943, 19.194601>,  <44.051163, 36.002754, 19.675505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541409, 35.687943, 19.194601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.250908, 35.845043, 18.968929>,  <44.076607, 35.939304, 18.833527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.250908, 35.845043, 18.968929>,  <44.541409, 35.687943, 19.194601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250908, 35.845043, 18.968929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687292, 0.431146, -0.584587,
		0.013644, -0.812315, -0.583059,
		-0.726253, 0.392756, -0.564180,
		44.033031, 35.962872, 18.799675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670429, 35.542347, 18.572897>,  <44.541409, 35.687943, 19.194601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670429, 35.542347, 18.572897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.453625, 35.878418, 18.565590>,  <44.323544, 36.080059, 18.561207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.453625, 35.878418, 18.565590>,  <44.670429, 35.542347, 18.572897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453625, 35.878418, 18.565590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721661, 0.454197, -0.522408,
		-0.430618, -0.296331, -0.852500,
		-0.542009, 0.840175, -0.018266,
		44.291023, 36.130470, 18.560110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645851, 35.631996, 17.841230>,  <44.670429, 35.542347, 18.572897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645851, 35.631996, 17.841230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.564030, 35.979881, 18.020901>,  <44.514938, 36.188614, 18.128702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.564030, 35.979881, 18.020901>,  <44.645851, 35.631996, 17.841230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564030, 35.979881, 18.020901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653670, 0.462931, -0.598673,
		-0.728612, 0.171155, -0.663198,
		-0.204549, 0.869713, 0.449176,
		44.502666, 36.240795, 18.155653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587822, 36.084057, 17.251659>,  <44.645851, 35.631996, 17.841230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587822, 36.084057, 17.251659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.596512, 36.356609, 17.544304>,  <44.601727, 36.520142, 17.719891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.596512, 36.356609, 17.544304>,  <44.587822, 36.084057, 17.251659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596512, 36.356609, 17.544304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572846, 0.591262, -0.567677,
		-0.819375, 0.431431, -0.377480,
		0.021724, 0.681378, 0.731609,
		44.603027, 36.561024, 17.763786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299179, 36.735542, 17.015093>,  <44.587822, 36.084057, 17.251659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299179, 36.735542, 17.015093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.547508, 36.827431, 17.314907>,  <44.696507, 36.882565, 17.494795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.547508, 36.827431, 17.314907>,  <44.299179, 36.735542, 17.015093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547508, 36.827431, 17.314907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607551, 0.463248, -0.645201,
		-0.495435, 0.855938, 0.148031,
		0.620827, 0.229719, 0.749535,
		44.733757, 36.896347, 17.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545666, 37.349506, 16.910692>,  <44.299179, 36.735542, 17.015093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545666, 37.349506, 16.910692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.831539, 37.220490, 17.158947>,  <45.003063, 37.143078, 17.307899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.831539, 37.220490, 17.158947>,  <44.545666, 37.349506, 16.910692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831539, 37.220490, 17.158947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699440, 0.326556, -0.635724,
		0.002376, 0.888442, 0.458984,
		0.714688, -0.322542, 0.620636,
		45.045944, 37.123726, 17.345139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981674, 37.970722, 17.050699>,  <44.545666, 37.349506, 16.910692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981674, 37.970722, 17.050699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.180786, 37.628010, 17.104584>,  <45.300255, 37.422382, 17.136915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.180786, 37.628010, 17.104584>,  <44.981674, 37.970722, 17.050699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180786, 37.628010, 17.104584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811547, 0.405336, -0.420826,
		0.305950, 0.318804, 0.897083,
		0.497782, -0.856777, 0.134712,
		45.330120, 37.370975, 17.144997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681015, 38.143646, 17.124325>,  <44.981674, 37.970722, 17.050699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681015, 38.143646, 17.124325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.722305, 37.754292, 17.042492>,  <45.747082, 37.520679, 16.993391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.722305, 37.754292, 17.042492>,  <45.681015, 38.143646, 17.124325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722305, 37.754292, 17.042492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906585, 0.176696, -0.383252,
		0.409203, -0.145910, 0.900701,
		0.103230, -0.973390, -0.204584,
		45.753273, 37.462273, 16.981117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349342, 38.040379, 17.220333>,  <45.681015, 38.143646, 17.124325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349342, 38.040379, 17.220333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.262749, 37.699070, 17.030567>,  <46.210793, 37.494286, 16.916708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.262749, 37.699070, 17.030567>,  <46.349342, 38.040379, 17.220333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.262749, 37.699070, 17.030567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939571, -0.050075, -0.338673,
		0.265222, -0.519063, 0.812546,
		-0.216481, -0.853268, -0.474416,
		46.197803, 37.443089, 16.888243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838955, 37.518074, 17.394770>,  <46.349342, 38.040379, 17.220333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838955, 37.518074, 17.394770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.682930, 37.433353, 17.036331>,  <46.589314, 37.382519, 16.821268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.682930, 37.433353, 17.036331>,  <46.838955, 37.518074, 17.394770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682930, 37.433353, 17.036331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907922, -0.250588, -0.335982,
		-0.153388, -0.944640, 0.290049,
		-0.390064, -0.211806, -0.896096,
		46.565910, 37.369812, 16.767502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145836, 36.823692, 17.138390>,  <46.838955, 37.518074, 17.394770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145836, 36.823692, 17.138390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.997818, 36.991245, 16.806702>,  <46.909008, 37.091778, 16.607689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.997818, 36.991245, 16.806702>,  <47.145836, 36.823692, 17.138390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997818, 36.991245, 16.806702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795837, -0.317552, -0.515562,
		-0.479282, -0.850703, -0.215857,
		-0.370044, 0.418886, -0.829218,
		46.886806, 37.116913, 16.557936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.733734, 26.575300, 29.685244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.946554, 26.799080, 29.939468>,  <29.074247, 26.933348, 30.092003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.946554, 26.799080, 29.939468>,  <28.733734, 26.575300, 29.685244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946554, 26.799080, 29.939468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218894, -0.634222, 0.741518,
		0.817929, -0.533645, -0.214978,
		0.532051, 0.559451, 0.635560,
		29.106169, 26.966915, 30.130136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118708, 26.098749, 29.965479>,  <28.733734, 26.575300, 29.685244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118708, 26.098749, 29.965479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.067959, 26.412750, 30.208023>,  <29.037510, 26.601151, 30.353550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.067959, 26.412750, 30.208023>,  <29.118708, 26.098749, 29.965479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067959, 26.412750, 30.208023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329823, -0.609905, 0.720578,
		0.935479, -0.108572, 0.336291,
		-0.126871, 0.785002, 0.606362,
		29.029898, 26.648251, 30.389933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513983, 25.856354, 30.534193>,  <29.118708, 26.098749, 29.965479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513983, 25.856354, 30.534193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.298218, 26.162014, 30.675674>,  <29.168758, 26.345409, 30.760563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.298218, 26.162014, 30.675674>,  <29.513983, 25.856354, 30.534193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298218, 26.162014, 30.675674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245387, -0.544479, 0.802077,
		0.805493, 0.345855, 0.481212,
		-0.539412, 0.764151, 0.353706,
		29.136395, 26.391260, 30.781786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690714, 25.959461, 31.238556>,  <29.513983, 25.856354, 30.534193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690714, 25.959461, 31.238556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.322683, 26.111187, 31.199398>,  <29.101866, 26.202223, 31.175903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.322683, 26.111187, 31.199398>,  <29.690714, 25.959461, 31.238556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322683, 26.111187, 31.199398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280367, -0.463062, 0.840814,
		0.273600, 0.801058, 0.532399,
		-0.920074, 0.379314, -0.097897,
		29.046661, 26.224981, 31.170029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561348, 26.234344, 31.890638>,  <29.690714, 25.959461, 31.238556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561348, 26.234344, 31.890638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205870, 26.190418, 31.712578>,  <28.992582, 26.164062, 31.605742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205870, 26.190418, 31.712578>,  <29.561348, 26.234344, 31.890638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205870, 26.190418, 31.712578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361617, -0.429000, 0.827764,
		-0.281870, 0.896605, 0.341540,
		-0.888697, -0.109816, -0.445149,
		28.939260, 26.157475, 31.579033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074392, 26.566999, 32.302822>,  <29.561348, 26.234344, 31.890638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074392, 26.566999, 32.302822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871468, 26.295258, 32.090740>,  <28.749712, 26.132214, 31.963491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871468, 26.295258, 32.090740>,  <29.074392, 26.566999, 32.302822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871468, 26.295258, 32.090740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455919, -0.310514, 0.834098,
		-0.731282, 0.664876, -0.152202,
		-0.507311, -0.679353, -0.530203,
		28.719275, 26.091452, 31.931679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263222, 26.600965, 32.449219>,  <29.074392, 26.566999, 32.302822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263222, 26.600965, 32.449219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.349625, 26.236523, 32.308804>,  <28.401466, 26.017857, 32.224556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.349625, 26.236523, 32.308804>,  <28.263222, 26.600965, 32.449219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349625, 26.236523, 32.308804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431992, -0.411599, 0.802477,
		-0.875628, -0.021696, -0.482499,
		0.216006, -0.911107, -0.351035,
		28.414427, 25.963190, 32.203491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691399, 26.065538, 32.730167>,  <28.263222, 26.600965, 32.449219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691399, 26.065538, 32.730167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.976526, 25.832401, 32.574123>,  <28.147602, 25.692518, 32.480499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.976526, 25.832401, 32.574123>,  <27.691399, 26.065538, 32.730167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976526, 25.832401, 32.574123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213475, -0.710139, 0.670918,
		-0.668069, -0.394966, -0.630623,
		0.712820, -0.582842, -0.390107,
		28.190372, 25.657549, 32.457092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396862, 25.382919, 32.619717>,  <27.691399, 26.065538, 32.730167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396862, 25.382919, 32.619717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.789932, 25.311306, 32.638863>,  <28.025774, 25.268337, 32.650352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.789932, 25.311306, 32.638863>,  <27.396862, 25.382919, 32.619717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789932, 25.311306, 32.638863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179400, -0.854216, 0.487986,
		-0.046476, -0.488121, -0.871538,
		0.982678, -0.179033, 0.047869,
		28.084736, 25.257595, 32.653225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481798, 24.714104, 32.460655>,  <27.396862, 25.382919, 32.619717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481798, 24.714104, 32.460655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.798891, 24.828983, 32.675724>,  <27.989147, 24.897911, 32.804764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.798891, 24.828983, 32.675724>,  <27.481798, 24.714104, 32.460655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798891, 24.828983, 32.675724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131765, -0.780461, 0.611162,
		0.595155, -0.555335, -0.580855,
		0.792734, 0.287200, 0.537669,
		28.036711, 24.915144, 32.837025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764496, 24.138929, 32.703671>,  <27.481798, 24.714104, 32.460655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764496, 24.138929, 32.703671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.972231, 24.384571, 32.941383>,  <28.096872, 24.531956, 33.084011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.972231, 24.384571, 32.941383>,  <27.764496, 24.138929, 32.703671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972231, 24.384571, 32.941383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204424, -0.585949, 0.784140,
		0.829760, -0.528717, -0.178766,
		0.519336, 0.614103, 0.594279,
		28.128031, 24.568802, 33.119667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376965, 23.714819, 33.002846>,  <27.764496, 24.138929, 32.703671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376965, 23.714819, 33.002846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.304119, 24.027622, 33.241272>,  <28.260412, 24.215303, 33.384327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.304119, 24.027622, 33.241272>,  <28.376965, 23.714819, 33.002846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304119, 24.027622, 33.241272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181384, -0.622519, 0.761295,
		0.966403, 0.030525, 0.255213,
		-0.182114, 0.782009, 0.596068,
		28.249485, 24.262224, 33.420094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399563, 23.537228, 33.766228>,  <28.376965, 23.714819, 33.002846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399563, 23.537228, 33.766228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.617590, 23.350784, 34.044983>,  <28.748405, 23.238918, 34.212234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.617590, 23.350784, 34.044983>,  <28.399563, 23.537228, 33.766228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617590, 23.350784, 34.044983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137715, -0.770147, -0.622822,
		0.827005, 0.435451, -0.355591,
		0.545066, -0.466107, 0.696884,
		28.781109, 23.210953, 34.254047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016397, 23.285297, 33.412281>,  <28.399563, 23.537228, 33.766228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016397, 23.285297, 33.412281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886099, 23.052700, 33.710476>,  <28.807919, 22.913141, 33.889393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.886099, 23.052700, 33.710476>,  <29.016397, 23.285297, 33.412281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886099, 23.052700, 33.710476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203690, -0.813144, -0.545258,
		0.923255, -0.025768, 0.383323,
		-0.325747, -0.581491, 0.745491,
		28.788374, 22.878252, 33.934124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838528, 22.579657, 33.208809>,  <29.016397, 23.285297, 33.412281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838528, 22.579657, 33.208809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021019, 22.231171, 33.136318>,  <29.130514, 22.022079, 33.092823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.021019, 22.231171, 33.136318>,  <28.838528, 22.579657, 33.208809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021019, 22.231171, 33.136318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204917, 0.301046, -0.931333,
		0.865948, 0.387762, 0.315872,
		0.456227, -0.871213, -0.181231,
		29.157887, 21.969807, 33.081947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525669, 22.726883, 32.889378>,  <28.838528, 22.579657, 33.208809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525669, 22.726883, 32.889378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455034, 22.341999, 32.806465>,  <29.412653, 22.111069, 32.756718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455034, 22.341999, 32.806465>,  <29.525669, 22.726883, 32.889378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455034, 22.341999, 32.806465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205629, 0.169884, -0.963772,
		0.962566, -0.212813, 0.167859,
		-0.176586, -0.962211, -0.207285,
		29.402058, 22.053335, 32.744278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213449, 22.498592, 32.524319>,  <29.525669, 22.726883, 32.889378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213449, 22.498592, 32.524319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894760, 22.269909, 32.445957>,  <29.703547, 22.132698, 32.398941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894760, 22.269909, 32.445957>,  <30.213449, 22.498592, 32.524319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894760, 22.269909, 32.445957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165219, 0.105755, -0.980570,
		0.581319, -0.813612, 0.010199,
		-0.796725, -0.571709, -0.195902,
		29.655743, 22.098396, 32.387188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395782, 22.044836, 32.032223>,  <30.213449, 22.498592, 32.524319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395782, 22.044836, 32.032223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.996695, 22.037022, 32.006397>,  <29.757242, 22.032333, 31.990902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.996695, 22.037022, 32.006397>,  <30.395782, 22.044836, 32.032223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996695, 22.037022, 32.006397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054108, 0.339845, -0.938924,
		0.040287, -0.940279, -0.338014,
		-0.997722, -0.019537, -0.064567,
		29.697378, 22.031160, 31.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062290, 21.552238, 31.446976>,  <30.395782, 22.044836, 32.032223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062290, 21.552238, 31.446976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772293, 21.819397, 31.514263>,  <29.598295, 21.979692, 31.554636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772293, 21.819397, 31.514263>,  <30.062290, 21.552238, 31.446976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772293, 21.819397, 31.514263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176984, 0.416687, -0.891655,
		-0.665627, -0.616674, -0.420303,
		-0.724995, 0.667896, 0.168217,
		29.554794, 22.019766, 31.564728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665445, 21.584299, 30.904293>,  <30.062290, 21.552238, 31.446976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665445, 21.584299, 30.904293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.578516, 21.940300, 31.064625>,  <29.526360, 22.153900, 31.160824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.578516, 21.940300, 31.064625>,  <29.665445, 21.584299, 30.904293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578516, 21.940300, 31.064625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249597, 0.447661, -0.858663,
		-0.943649, -0.086560, -0.319428,
		-0.217321, 0.890004, 0.400829,
		29.513319, 22.207302, 31.184874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451548, 21.958439, 30.336729>,  <29.665445, 21.584299, 30.904293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451548, 21.958439, 30.336729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.475767, 22.249149, 30.610409>,  <29.490299, 22.423576, 30.774616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.475767, 22.249149, 30.610409>,  <29.451548, 21.958439, 30.336729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475767, 22.249149, 30.610409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225893, 0.657696, -0.718615,
		-0.972269, 0.198068, -0.124351,
		0.060549, 0.726777, 0.684200,
		29.493933, 22.467182, 30.815668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178818, 22.547480, 29.922031>,  <29.451548, 21.958439, 30.336729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178818, 22.547480, 29.922031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.386585, 22.698528, 30.228653>,  <29.511246, 22.789158, 30.412626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.386585, 22.698528, 30.228653>,  <29.178818, 22.547480, 29.922031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386585, 22.698528, 30.228653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283788, 0.769915, -0.571572,
		-0.806021, 0.514424, 0.292742,
		0.519417, 0.377623, 0.766556,
		29.542410, 22.811815, 30.458620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973827, 23.269533, 30.078939>,  <29.178818, 22.547480, 29.922031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973827, 23.269533, 30.078939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345360, 23.189693, 30.203796>,  <29.568279, 23.141788, 30.278711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.345360, 23.189693, 30.203796>,  <28.973827, 23.269533, 30.078939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345360, 23.189693, 30.203796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338084, 0.801246, -0.493664,
		-0.151568, 0.564061, 0.811704,
		0.928831, -0.199600, 0.312143,
		29.624008, 23.129814, 30.297440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188009, 24.029169, 30.170683>,  <28.973827, 23.269533, 30.078939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188009, 24.029169, 30.170683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.503765, 23.783718, 30.163399>,  <29.693218, 23.636448, 30.159027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.503765, 23.783718, 30.163399>,  <29.188009, 24.029169, 30.170683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503765, 23.783718, 30.163399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498578, 0.658131, -0.564166,
		0.358173, 0.436265, 0.825460,
		0.789387, -0.613625, -0.018212,
		29.740582, 23.599630, 30.157934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754179, 24.483831, 30.291906>,  <29.188009, 24.029169, 30.170683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754179, 24.483831, 30.291906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943184, 24.174358, 30.123074>,  <30.056587, 23.988674, 30.021774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943184, 24.174358, 30.123074>,  <29.754179, 24.483831, 30.291906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943184, 24.174358, 30.123074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370783, 0.608980, -0.701187,
		0.799534, 0.174818, 0.574617,
		0.472510, -0.773681, -0.422080,
		30.084936, 23.942253, 29.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391706, 24.807949, 30.116550>,  <29.754179, 24.483831, 30.291906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391706, 24.807949, 30.116550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335848, 24.483437, 29.889458>,  <30.302334, 24.288729, 29.753202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335848, 24.483437, 29.889458>,  <30.391706, 24.807949, 30.116550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335848, 24.483437, 29.889458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292130, 0.514078, -0.806464,
		0.946128, -0.278471, 0.165212,
		-0.139645, -0.811282, -0.567734,
		30.293955, 24.240051, 29.719137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018814, 24.775467, 29.720776>,  <30.391706, 24.807949, 30.116550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018814, 24.775467, 29.720776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714659, 24.592957, 29.535900>,  <30.532166, 24.483450, 29.424974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714659, 24.592957, 29.535900>,  <31.018814, 24.775467, 29.720776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714659, 24.592957, 29.535900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203614, 0.508288, -0.836770,
		0.616725, -0.730379, -0.293592,
		-0.760389, -0.456277, -0.462190,
		30.486542, 24.456074, 29.397243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283066, 24.632317, 29.091213>,  <31.018814, 24.775467, 29.720776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283066, 24.632317, 29.091213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886383, 24.633965, 29.039837>,  <30.648373, 24.634953, 29.009012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886383, 24.633965, 29.039837>,  <31.283066, 24.632317, 29.091213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886383, 24.633965, 29.039837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110665, 0.535424, -0.837302,
		0.065321, -0.844573, -0.531441,
		-0.991709, 0.004119, -0.128439,
		30.588871, 24.635201, 29.001305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868017, 24.258007, 28.658989>,  <31.283066, 24.632317, 29.091213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868017, 24.258007, 28.658989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227455, 24.357891, 28.803307>,  <32.443119, 24.417822, 28.889896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227455, 24.357891, 28.803307>,  <31.868017, 24.258007, 28.658989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227455, 24.357891, 28.803307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182183, -0.535707, 0.824516,
		0.399172, -0.806636, -0.435890,
		0.898594, 0.249713, 0.360795,
		32.497032, 24.432804, 28.911545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983547, 23.686161, 29.092188>,  <31.868017, 24.258007, 28.658989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983547, 23.686161, 29.092188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295528, 23.916088, 29.191193>,  <32.482716, 24.054045, 29.250595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295528, 23.916088, 29.191193>,  <31.983547, 23.686161, 29.092188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295528, 23.916088, 29.191193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024152, -0.422837, 0.905884,
		0.625374, -0.700568, -0.343676,
		0.779952, 0.574816, 0.247511,
		32.529514, 24.088533, 29.265446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548843, 23.230524, 29.383902>,  <31.983547, 23.686161, 29.092188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548843, 23.230524, 29.383902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631420, 23.601345, 29.509090>,  <32.680965, 23.823837, 29.584204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631420, 23.601345, 29.509090>,  <32.548843, 23.230524, 29.383902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631420, 23.601345, 29.509090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178371, -0.350160, 0.919550,
		0.962062, -0.134012, -0.237649,
		0.206446, 0.927054, 0.312972,
		32.693356, 23.879461, 29.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187794, 23.219385, 29.736593>,  <32.548843, 23.230524, 29.383902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187794, 23.219385, 29.736593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010723, 23.524662, 29.924881>,  <32.904480, 23.707829, 30.037853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010723, 23.524662, 29.924881>,  <33.187794, 23.219385, 29.736593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010723, 23.524662, 29.924881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133419, -0.463050, 0.876233,
		0.886702, 0.450687, 0.103156,
		-0.442673, 0.763194, 0.470717,
		32.877922, 23.753620, 30.066095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553497, 23.374367, 30.307833>,  <33.187794, 23.219385, 29.736593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553497, 23.374367, 30.307833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205223, 23.548275, 30.399811>,  <32.996258, 23.652620, 30.454998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205223, 23.548275, 30.399811>,  <33.553497, 23.374367, 30.307833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205223, 23.548275, 30.399811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040051, -0.403294, 0.914194,
		0.490202, 0.805187, 0.333730,
		-0.870688, 0.434773, 0.229944,
		32.944016, 23.678707, 30.468794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643780, 23.723034, 30.913046>,  <33.553497, 23.374367, 30.307833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643780, 23.723034, 30.913046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251545, 23.644611, 30.911972>,  <33.016205, 23.597557, 30.911327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251545, 23.644611, 30.911972>,  <33.643780, 23.723034, 30.913046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251545, 23.644611, 30.911972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065215, -0.339030, 0.938513,
		-0.184911, 0.920120, 0.345234,
		-0.980589, -0.196056, -0.002685,
		32.957367, 23.585794, 30.911167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344418, 24.007391, 31.521786>,  <33.643780, 23.723034, 30.913046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344418, 24.007391, 31.521786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058132, 23.747948, 31.418201>,  <32.886360, 23.592281, 31.356050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058132, 23.747948, 31.418201>,  <33.344418, 24.007391, 31.521786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058132, 23.747948, 31.418201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118860, -0.252260, 0.960332,
		-0.688202, 0.718105, 0.103454,
		-0.715716, -0.648606, -0.258960,
		32.843418, 23.553366, 31.340513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099937, 24.623800, 31.934006>,  <33.344418, 24.007391, 31.521786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099937, 24.623800, 31.934006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302311, 24.839512, 32.203289>,  <33.423737, 24.968939, 32.364861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302311, 24.839512, 32.203289>,  <33.099937, 24.623800, 31.934006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302311, 24.839512, 32.203289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261520, 0.647831, -0.715488,
		-0.821973, 0.538046, 0.186726,
		0.505933, 0.539279, 0.673209,
		33.454090, 25.001295, 32.405251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902573, 25.343916, 31.850021>,  <33.099937, 24.623800, 31.934006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902573, 25.343916, 31.850021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222645, 25.405991, 32.081757>,  <33.414688, 25.443235, 32.220798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222645, 25.405991, 32.081757>,  <32.902573, 25.343916, 31.850021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222645, 25.405991, 32.081757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410017, 0.563436, -0.717235,
		-0.437725, 0.811454, 0.387220,
		0.800177, 0.155185, 0.579340,
		33.462696, 25.452547, 32.255558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045208, 26.101389, 31.992426>,  <32.902573, 25.343916, 31.850021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045208, 26.101389, 31.992426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400002, 25.921825, 32.035770>,  <33.612877, 25.814087, 32.061775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400002, 25.921825, 32.035770>,  <33.045208, 26.101389, 31.992426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400002, 25.921825, 32.035770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373459, 0.559248, -0.740115,
		0.271645, 0.696938, 0.663692,
		0.886983, -0.448910, 0.108361,
		33.666096, 25.787153, 32.068279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470596, 26.654358, 31.998610>,  <33.045208, 26.101389, 31.992426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470596, 26.654358, 31.998610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699482, 26.335472, 31.921646>,  <33.836811, 26.144140, 31.875467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699482, 26.335472, 31.921646>,  <33.470596, 26.654358, 31.998610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699482, 26.335472, 31.921646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553554, 0.548557, -0.626628,
		0.605106, 0.252055, 0.755192,
		0.572211, -0.797216, -0.192409,
		33.871143, 26.096308, 31.863924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086674, 26.854166, 32.115467>,  <33.470596, 26.654358, 31.998610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086674, 26.854166, 32.115467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105408, 26.539009, 31.869854>,  <34.116650, 26.349915, 31.722486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105408, 26.539009, 31.869854>,  <34.086674, 26.854166, 32.115467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105408, 26.539009, 31.869854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602580, 0.512549, -0.611711,
		0.796683, -0.341350, 0.498775,
		0.046839, -0.787892, -0.614030,
		34.119461, 26.302641, 31.685644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731728, 26.763763, 31.964756>,  <34.086674, 26.854166, 32.115467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731728, 26.763763, 31.964756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575684, 26.558998, 31.658615>,  <34.482059, 26.436140, 31.474932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575684, 26.558998, 31.658615>,  <34.731728, 26.763763, 31.964756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575684, 26.558998, 31.658615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616045, 0.472658, -0.630146,
		0.684328, -0.717315, 0.130973,
		-0.390108, -0.511912, -0.765351,
		34.458652, 26.405424, 31.429010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255108, 26.442024, 31.671965>,  <34.731728, 26.763763, 31.964756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255108, 26.442024, 31.671965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967293, 26.500851, 31.400482>,  <34.794605, 26.536146, 31.237593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967293, 26.500851, 31.400482>,  <35.255108, 26.442024, 31.671965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967293, 26.500851, 31.400482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619890, 0.576590, -0.532241,
		0.313060, -0.803689, -0.506041,
		-0.719534, 0.147066, -0.678706,
		34.751434, 26.544970, 31.196871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.601381, 26.213507, 35.494522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.269844, 26.186466, 35.272369>,  <29.070921, 26.170242, 35.139076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.269844, 26.186466, 35.272369>,  <29.601381, 26.213507, 35.494522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269844, 26.186466, 35.272369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120112, 0.948026, -0.294651,
		0.546434, -0.310928, -0.777646,
		-0.828844, -0.067602, -0.555380,
		29.021191, 26.166185, 35.105755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840584, 26.376089, 34.813915>,  <29.601381, 26.213507, 35.494522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840584, 26.376089, 34.813915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444544, 26.430695, 34.800877>,  <29.206919, 26.463459, 34.793053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444544, 26.430695, 34.800877>,  <29.840584, 26.376089, 34.813915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444544, 26.430695, 34.800877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137003, 0.889620, -0.435667,
		-0.030479, -0.435820, -0.899518,
		-0.990102, 0.136515, -0.032594,
		29.147512, 26.471649, 34.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694420, 26.585762, 34.198395>,  <29.840584, 26.376089, 34.813915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694420, 26.585762, 34.198395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376913, 26.697208, 34.414654>,  <29.186409, 26.764076, 34.544411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376913, 26.697208, 34.414654>,  <29.694420, 26.585762, 34.198395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376913, 26.697208, 34.414654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043401, 0.860696, -0.507266,
		-0.606670, -0.426116, -0.671101,
		-0.793768, 0.278617, 0.540652,
		29.138783, 26.780794, 34.576851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236528, 26.819206, 33.698566>,  <29.694420, 26.585762, 34.198395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236528, 26.819206, 33.698566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.119492, 26.972816, 34.048862>,  <29.049269, 27.064983, 34.259041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.119492, 26.972816, 34.048862>,  <29.236528, 26.819206, 33.698566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119492, 26.972816, 34.048862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071524, 0.904460, -0.420519,
		-0.953559, -0.185677, -0.237171,
		-0.292592, 0.384026, 0.875736,
		29.031713, 27.088024, 34.311584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691914, 27.209505, 33.498470>,  <29.236528, 26.819206, 33.698566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691914, 27.209505, 33.498470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.805643, 27.368198, 33.847588>,  <28.873880, 27.463413, 34.057056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.805643, 27.368198, 33.847588>,  <28.691914, 27.209505, 33.498470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805643, 27.368198, 33.847588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076087, 0.916830, -0.391962,
		-0.955705, 0.045035, 0.290861,
		0.284322, 0.396731, 0.872792,
		28.890940, 27.487217, 34.109425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193640, 27.743887, 33.659756>,  <28.691914, 27.209505, 33.498470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193640, 27.743887, 33.659756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.539072, 27.809967, 33.850307>,  <28.746332, 27.849615, 33.964638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.539072, 27.809967, 33.850307>,  <28.193640, 27.743887, 33.659756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539072, 27.809967, 33.850307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026630, 0.928540, -0.370277,
		-0.503504, 0.332451, 0.797471,
		0.863582, 0.165199, 0.476377,
		28.798147, 27.859528, 33.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164083, 28.460476, 33.852825>,  <28.193640, 27.743887, 33.659756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164083, 28.460476, 33.852825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.548170, 28.350174, 33.870480>,  <28.778622, 28.283993, 33.881073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.548170, 28.350174, 33.870480>,  <28.164083, 28.460476, 33.852825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548170, 28.350174, 33.870480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273933, 0.899320, -0.340858,
		0.054299, 0.339388, 0.939078,
		0.960215, -0.275753, 0.044137,
		28.836235, 28.267448, 33.883720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465420, 29.112356, 34.001492>,  <28.164083, 28.460476, 33.852825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465420, 29.112356, 34.001492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760717, 28.872410, 33.878101>,  <28.937897, 28.728443, 33.804066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760717, 28.872410, 33.878101>,  <28.465420, 29.112356, 34.001492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760717, 28.872410, 33.878101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358963, 0.736562, -0.573255,
		0.571085, 0.312472, 0.759093,
		0.738245, -0.599864, -0.308474,
		28.982191, 28.692451, 33.785561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025572, 29.548807, 34.086056>,  <28.465420, 29.112356, 34.001492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025572, 29.548807, 34.086056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172571, 29.262409, 33.848637>,  <29.260771, 29.090570, 33.706184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.172571, 29.262409, 33.848637>,  <29.025572, 29.548807, 34.086056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172571, 29.262409, 33.848637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527066, 0.686163, -0.501380,
		0.766254, -0.128581, 0.629541,
		0.367500, -0.715994, -0.593545,
		29.282822, 29.047611, 33.670574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768299, 29.594343, 34.046551>,  <29.025572, 29.548807, 34.086056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768299, 29.594343, 34.046551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.666353, 29.400013, 33.712120>,  <29.605186, 29.283415, 33.511463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.666353, 29.400013, 33.712120>,  <29.768299, 29.594343, 34.046551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666353, 29.400013, 33.712120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641560, 0.561960, -0.522112,
		0.723494, -0.669460, 0.168461,
		-0.254865, -0.485823, -0.836074,
		29.589893, 29.254267, 33.461296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392591, 29.497404, 33.641224>,  <29.768299, 29.594343, 34.046551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392591, 29.497404, 33.641224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101543, 29.453316, 33.370396>,  <29.926914, 29.426863, 33.207901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101543, 29.453316, 33.370396>,  <30.392591, 29.497404, 33.641224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101543, 29.453316, 33.370396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509381, 0.574262, -0.640901,
		0.459452, -0.811218, -0.361702,
		-0.727622, -0.110219, -0.677066,
		29.883257, 29.420250, 33.167274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696629, 29.365248, 32.987949>,  <30.392591, 29.497404, 33.641224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696629, 29.365248, 32.987949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.331335, 29.473732, 32.866329>,  <30.112158, 29.538822, 32.793358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.331335, 29.473732, 32.866329>,  <30.696629, 29.365248, 32.987949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331335, 29.473732, 32.866329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407411, 0.615542, -0.674629,
		0.004191, -0.739969, -0.672628,
		-0.913235, 0.271209, -0.304051,
		30.057365, 29.555094, 32.775112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224354, 28.799856, 32.749748>,  <30.696629, 29.365248, 32.987949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224354, 28.799856, 32.749748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607962, 28.804958, 32.862972>,  <31.838125, 28.808020, 32.930908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607962, 28.804958, 32.862972>,  <31.224354, 28.799856, 32.749748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607962, 28.804958, 32.862972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168298, -0.778038, 0.605254,
		0.227951, -0.628087, -0.744006,
		0.959017, 0.012754, 0.283060,
		31.895666, 28.808784, 32.947891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481119, 28.077927, 32.735195>,  <31.224354, 28.799856, 32.749748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481119, 28.077927, 32.735195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686434, 28.304825, 32.992805>,  <31.809622, 28.440964, 33.147373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686434, 28.304825, 32.992805>,  <31.481119, 28.077927, 32.735195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686434, 28.304825, 32.992805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118441, -0.696423, 0.707790,
		0.850005, -0.439578, -0.290279,
		0.513286, 0.567244, 0.644028,
		31.840420, 28.474998, 33.186012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998379, 27.594799, 32.977161>,  <31.481119, 28.077927, 32.735195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998379, 27.594799, 32.977161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.968962, 27.892056, 33.243195>,  <31.951311, 28.070410, 33.402813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.968962, 27.892056, 33.243195>,  <31.998379, 27.594799, 32.977161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968962, 27.892056, 33.243195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077045, -0.660659, 0.746722,
		0.994312, 0.106157, -0.008669,
		-0.073543, 0.743142, 0.665080,
		31.946899, 28.114998, 33.442719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614269, 27.593756, 33.443138>,  <31.998379, 27.594799, 32.977161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614269, 27.593756, 33.443138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311012, 27.771507, 33.634029>,  <32.129059, 27.878159, 33.748566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311012, 27.771507, 33.634029>,  <32.614269, 27.593756, 33.443138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311012, 27.771507, 33.634029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133302, -0.610775, 0.780503,
		0.638316, 0.655349, 0.403819,
		-0.758144, 0.444377, 0.477227,
		32.083569, 27.904821, 33.777199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869957, 27.594351, 34.117699>,  <32.614269, 27.593756, 33.443138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869957, 27.594351, 34.117699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.476643, 27.653336, 34.160412>,  <32.240654, 27.688726, 34.186039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.476643, 27.653336, 34.160412>,  <32.869957, 27.594351, 34.117699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476643, 27.653336, 34.160412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022043, -0.678627, 0.734153,
		0.180727, 0.719528, 0.670535,
		-0.983286, 0.147461, 0.106785,
		32.181656, 27.697575, 34.192448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779369, 27.727463, 34.805717>,  <32.869957, 27.594351, 34.117699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779369, 27.727463, 34.805717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.416641, 27.624969, 34.671837>,  <32.199005, 27.563475, 34.591511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.416641, 27.624969, 34.671837>,  <32.779369, 27.727463, 34.805717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416641, 27.624969, 34.671837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030333, -0.752302, 0.658120,
		-0.420424, 0.606949, 0.674430,
		-0.906820, -0.256232, -0.334697,
		32.144596, 27.548100, 34.571426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559418, 27.564445, 35.324062>,  <32.779369, 27.727463, 34.805717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559418, 27.564445, 35.324062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.270641, 27.426605, 35.084045>,  <32.097374, 27.343901, 34.940033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.270641, 27.426605, 35.084045>,  <32.559418, 27.564445, 35.324062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270641, 27.426605, 35.084045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251068, -0.677627, 0.691221,
		-0.644801, 0.649672, 0.402688,
		-0.721940, -0.344598, -0.600046,
		32.054058, 27.323225, 34.904030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835428, 27.539259, 35.697395>,  <32.559418, 27.564445, 35.324062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835428, 27.539259, 35.697395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.802610, 27.287842, 35.388020>,  <31.782919, 27.136992, 35.202396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.802610, 27.287842, 35.388020>,  <31.835428, 27.539259, 35.697395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802610, 27.287842, 35.388020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272477, -0.732340, 0.624047,
		-0.958658, 0.261945, -0.111177,
		-0.082047, -0.628541, -0.773437,
		31.777996, 27.099279, 35.155987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212954, 27.052380, 35.856762>,  <31.835428, 27.539259, 35.697395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212954, 27.052380, 35.856762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444071, 26.852974, 35.598263>,  <31.582741, 26.733330, 35.443161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.444071, 26.852974, 35.598263>,  <31.212954, 27.052380, 35.856762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444071, 26.852974, 35.598263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126368, -0.836887, 0.532590,
		-0.806338, -0.226064, -0.546547,
		0.577798, -0.498513, -0.646246,
		31.617409, 26.703419, 35.404388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797970, 26.427948, 35.743202>,  <31.212954, 27.052380, 35.856762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797970, 26.427948, 35.743202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.160196, 26.358616, 35.588333>,  <31.377533, 26.317017, 35.495411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.160196, 26.358616, 35.588333>,  <30.797970, 26.427948, 35.743202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160196, 26.358616, 35.588333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024114, -0.932270, 0.360957,
		-0.423518, -0.317535, -0.848413,
		0.905566, -0.173330, -0.387177,
		31.431866, 26.306616, 35.472179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657333, 25.768227, 35.565578>,  <30.797970, 26.427948, 35.743202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657333, 25.768227, 35.565578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.048416, 25.850185, 35.583958>,  <31.283066, 25.899361, 35.594986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.048416, 25.850185, 35.583958>,  <30.657333, 25.768227, 35.565578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048416, 25.850185, 35.583958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140533, -0.801060, 0.581853,
		0.156023, -0.562424, -0.811995,
		0.977705, 0.204895, 0.045945,
		31.341728, 25.911654, 35.597740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871208, 25.182095, 35.494381>,  <30.657333, 25.768227, 35.565578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871208, 25.182095, 35.494381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.187185, 25.371086, 35.650715>,  <31.376772, 25.484480, 35.744514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.187185, 25.371086, 35.650715>,  <30.871208, 25.182095, 35.494381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187185, 25.371086, 35.650715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196613, -0.798911, 0.568406,
		0.580803, -0.372165, -0.723989,
		0.789944, 0.472478, 0.390838,
		31.424168, 25.512829, 35.767967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459124, 24.687893, 35.491585>,  <30.871208, 25.182095, 35.494381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459124, 24.687893, 35.491585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514303, 24.968548, 35.771206>,  <31.547411, 25.136940, 35.938980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514303, 24.968548, 35.771206>,  <31.459124, 24.687893, 35.491585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514303, 24.968548, 35.771206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241139, -0.708355, 0.663389,
		0.960636, 0.077055, -0.266909,
		0.137949, 0.701637, 0.699053,
		31.555687, 25.179039, 35.980923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140068, 24.523813, 35.801632>,  <31.459124, 24.687893, 35.491585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140068, 24.523813, 35.801632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924875, 24.754066, 36.047955>,  <31.795759, 24.892220, 36.195747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924875, 24.754066, 36.047955>,  <32.140068, 24.523813, 35.801632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924875, 24.754066, 36.047955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177757, -0.636637, 0.750397,
		0.824001, 0.513165, 0.240176,
		-0.537983, 0.575635, 0.615808,
		31.763481, 24.926758, 36.232697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904537, 24.242407, 35.561272>,  <32.140068, 24.523813, 35.801632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904537, 24.242407, 35.561272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.138084, 23.984722, 35.363651>,  <33.278214, 23.830111, 35.245079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.138084, 23.984722, 35.363651>,  <32.904537, 24.242407, 35.561272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138084, 23.984722, 35.363651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211221, 0.708135, -0.673744,
		0.783891, 0.289023, 0.549528,
		0.583867, -0.644214, -0.494052,
		33.313244, 23.791458, 35.215435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576920, 24.567509, 35.333656>,  <32.904537, 24.242407, 35.561272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576920, 24.567509, 35.333656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.520069, 24.250660, 35.096222>,  <33.485958, 24.060551, 34.953762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.520069, 24.250660, 35.096222>,  <33.576920, 24.567509, 35.333656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520069, 24.250660, 35.096222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264108, 0.547584, -0.793976,
		0.953964, -0.269617, 0.131379,
		-0.142128, -0.792123, -0.593583,
		33.477432, 24.013023, 34.918148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114067, 24.664402, 34.763813>,  <33.576920, 24.567509, 35.333656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114067, 24.664402, 34.763813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872761, 24.389732, 34.601551>,  <33.727978, 24.224930, 34.504192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.872761, 24.389732, 34.601551>,  <34.114067, 24.664402, 34.763813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872761, 24.389732, 34.601551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064116, 0.465228, -0.882866,
		0.794963, -0.558607, -0.236627,
		-0.603261, -0.686674, -0.405655,
		33.691784, 24.183731, 34.479855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402431, 24.434147, 34.094990>,  <34.114067, 24.664402, 34.763813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402431, 24.434147, 34.094990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.011913, 24.347919, 34.087242>,  <33.777603, 24.296183, 34.082596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.011913, 24.347919, 34.087242>,  <34.402431, 24.434147, 34.094990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011913, 24.347919, 34.087242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083236, 0.456549, -0.885796,
		0.199793, -0.863187, -0.463670,
		-0.976296, -0.215570, -0.019367,
		33.719025, 24.283249, 34.081432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277611, 23.993292, 33.471165>,  <34.402431, 24.434147, 34.094990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277611, 23.993292, 33.471165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929012, 24.172142, 33.551731>,  <33.719852, 24.279451, 33.600071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929012, 24.172142, 33.551731>,  <34.277611, 23.993292, 33.471165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929012, 24.172142, 33.551731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024959, 0.369742, -0.928799,
		-0.489761, -0.814475, -0.311070,
		-0.871499, 0.447126, 0.201414,
		33.667564, 24.306280, 33.612156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856388, 23.867222, 32.870750>,  <34.277611, 23.993292, 33.471165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856388, 23.867222, 32.870750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.689106, 24.191746, 33.034157>,  <33.588737, 24.386459, 33.132198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.689106, 24.191746, 33.034157>,  <33.856388, 23.867222, 32.870750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689106, 24.191746, 33.034157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070688, 0.419298, -0.905093,
		-0.905599, -0.407390, -0.118001,
		-0.418203, 0.811310, 0.408513,
		33.563644, 24.435139, 33.156712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509323, 24.065315, 32.353565>,  <33.856388, 23.867222, 32.870750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509323, 24.065315, 32.353565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.501362, 24.388321, 32.589371>,  <33.496586, 24.582125, 32.730854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.501362, 24.388321, 32.589371>,  <33.509323, 24.065315, 32.353565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501362, 24.388321, 32.589371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091634, 0.588624, -0.803197,
		-0.995594, 0.038035, -0.085710,
		-0.019901, 0.807512, 0.589515,
		33.495392, 24.630575, 32.766224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708107, 23.959869, 32.117195>,  <33.509323, 24.065315, 32.353565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708107, 23.959869, 32.117195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664566, 23.632465, 31.891560>,  <32.638439, 23.436024, 31.756180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664566, 23.632465, 31.891560>,  <32.708107, 23.959869, 32.117195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664566, 23.632465, 31.891560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269759, -0.521840, 0.809267,
		-0.956755, 0.240259, -0.163996,
		-0.108855, -0.818510, -0.564085,
		32.631908, 23.386911, 31.722334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089523, 23.778419, 32.422905>,  <32.708107, 23.959869, 32.117195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089523, 23.778419, 32.422905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269096, 23.487091, 32.215828>,  <32.376839, 23.312294, 32.091583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269096, 23.487091, 32.215828>,  <32.089523, 23.778419, 32.422905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269096, 23.487091, 32.215828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343813, -0.675546, 0.652251,
		-0.824775, -0.114825, -0.553680,
		0.448931, -0.728322, -0.517694,
		32.403774, 23.268595, 32.060520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515598, 23.305593, 32.325195>,  <32.089523, 23.778419, 32.422905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515598, 23.305593, 32.325195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.869207, 23.121170, 32.294399>,  <32.081375, 23.010517, 32.275921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.869207, 23.121170, 32.294399>,  <31.515598, 23.305593, 32.325195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869207, 23.121170, 32.294399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258897, -0.620071, 0.740597,
		-0.389194, -0.634775, -0.667524,
		0.884025, -0.461056, -0.076987,
		32.134415, 22.982853, 32.271301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400326, 22.621696, 32.058449>,  <31.515598, 23.305593, 32.325195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400326, 22.621696, 32.058449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.728157, 22.639694, 32.286930>,  <31.924856, 22.650492, 32.424019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.728157, 22.639694, 32.286930>,  <31.400326, 22.621696, 32.058449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728157, 22.639694, 32.286930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432850, -0.604562, 0.668690,
		0.375411, -0.795286, -0.476011,
		0.819578, 0.044992, 0.571199,
		31.974030, 22.653193, 32.458290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371035, 22.044123, 32.307800>,  <31.400326, 22.621696, 32.058449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371035, 22.044123, 32.307800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.656971, 22.210457, 32.532688>,  <31.828533, 22.310257, 32.667622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.656971, 22.210457, 32.532688>,  <31.371035, 22.044123, 32.307800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656971, 22.210457, 32.532688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233791, -0.615604, 0.752578,
		0.659051, -0.669413, -0.342839,
		0.714839, 0.415835, 0.562217,
		31.871422, 22.335207, 32.701355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713940, 21.457260, 32.522659>,  <31.371035, 22.044123, 32.307800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713940, 21.457260, 32.522659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804560, 21.747017, 32.783100>,  <31.858931, 21.920872, 32.939365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.804560, 21.747017, 32.783100>,  <31.713940, 21.457260, 32.522659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804560, 21.747017, 32.783100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101292, -0.647333, 0.755446,
		0.968718, -0.237097, -0.073277,
		0.226549, 0.724393, 0.651100,
		31.872524, 21.964334, 32.978432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158974, 21.140919, 32.998219>,  <31.713940, 21.457260, 32.522659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158974, 21.140919, 32.998219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012531, 21.466461, 33.178707>,  <31.924665, 21.661787, 33.287003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.012531, 21.466461, 33.178707>,  <32.158974, 21.140919, 32.998219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012531, 21.466461, 33.178707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116743, -0.521229, 0.845394,
		0.923220, 0.256828, 0.285838,
		-0.366108, 0.813855, 0.451226,
		31.902699, 21.710617, 33.314075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551041, 21.217222, 33.602654>,  <32.158974, 21.140919, 32.998219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551041, 21.217222, 33.602654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.217541, 21.426586, 33.672966>,  <32.017441, 21.552204, 33.715153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.217541, 21.426586, 33.672966>,  <32.551041, 21.217222, 33.602654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217541, 21.426586, 33.672966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123796, -0.487467, 0.864321,
		0.538081, 0.698869, 0.471223,
		-0.833753, 0.523410, 0.175779,
		31.967415, 21.583609, 33.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625839, 21.433416, 34.331528>,  <32.551041, 21.217222, 33.602654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625839, 21.433416, 34.331528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.243202, 21.426861, 34.215137>,  <32.013622, 21.422928, 34.145302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.243202, 21.426861, 34.215137>,  <32.625839, 21.433416, 34.331528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243202, 21.426861, 34.215137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246009, -0.489896, 0.836350,
		-0.156257, 0.871627, 0.464597,
		-0.956589, -0.016391, -0.290978,
		31.956224, 21.421944, 34.127846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.292534, 31.357704, 21.561056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906944, 31.325344, 21.459698>,  <34.675591, 31.305927, 21.398882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906944, 31.325344, 21.459698>,  <35.292534, 31.357704, 21.561056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906944, 31.325344, 21.459698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128045, -0.693863, 0.708631,
		-0.233153, 0.715548, 0.658506,
		-0.963973, -0.080901, -0.253398,
		34.617752, 31.301073, 21.383678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055199, 31.382568, 22.174561>,  <35.292534, 31.357704, 21.561056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055199, 31.382568, 22.174561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782227, 31.204460, 21.942692>,  <34.618443, 31.097595, 21.803572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782227, 31.204460, 21.942692>,  <35.055199, 31.382568, 22.174561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782227, 31.204460, 21.942692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134382, -0.703095, 0.698283,
		-0.718488, 0.554429, 0.419980,
		-0.682434, -0.445270, -0.579671,
		34.577496, 31.070879, 21.768791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553211, 31.394236, 22.646444>,  <35.055199, 31.382568, 22.174561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553211, 31.394236, 22.646444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506840, 31.113110, 22.365700>,  <34.479015, 30.944433, 22.197252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506840, 31.113110, 22.365700>,  <34.553211, 31.394236, 22.646444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506840, 31.113110, 22.365700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087012, -0.696724, 0.712042,
		-0.989439, 0.143617, 0.019618,
		-0.115930, -0.702815, -0.701862,
		34.472061, 30.902266, 22.155142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973305, 31.037306, 22.900459>,  <34.553211, 31.394236, 22.646444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973305, 31.037306, 22.900459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144379, 30.792015, 22.634815>,  <34.247021, 30.644840, 22.475430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144379, 30.792015, 22.634815>,  <33.973305, 31.037306, 22.900459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144379, 30.792015, 22.634815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038464, -0.721681, 0.691157,
		-0.903112, -0.321138, -0.285061,
		0.427680, -0.613227, -0.664111,
		34.272682, 30.608047, 22.435581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590275, 30.450306, 22.840879>,  <33.973305, 31.037306, 22.900459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590275, 30.450306, 22.840879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962128, 30.351757, 22.731270>,  <34.185238, 30.292627, 22.665504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962128, 30.351757, 22.731270>,  <33.590275, 30.450306, 22.840879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962128, 30.351757, 22.731270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012222, -0.763835, 0.645296,
		-0.368292, -0.596537, -0.713095,
		0.929630, -0.246373, -0.274023,
		34.241016, 30.277845, 22.649063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527287, 29.686504, 22.693796>,  <33.590275, 30.450306, 22.840879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527287, 29.686504, 22.693796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912251, 29.764633, 22.769291>,  <34.143227, 29.811510, 22.814589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912251, 29.764633, 22.769291>,  <33.527287, 29.686504, 22.693796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912251, 29.764633, 22.769291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020137, -0.744283, 0.667560,
		0.270865, -0.638664, -0.720236,
		0.962407, 0.195322, 0.188739,
		34.200974, 29.823231, 22.825912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833134, 29.072655, 22.688213>,  <33.527287, 29.686504, 22.693796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833134, 29.072655, 22.688213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102383, 29.293747, 22.884743>,  <34.263931, 29.426403, 23.002661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102383, 29.293747, 22.884743>,  <33.833134, 29.072655, 22.688213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102383, 29.293747, 22.884743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025129, -0.681081, 0.731777,
		0.739106, -0.480228, -0.472338,
		0.673120, 0.552730, 0.491323,
		34.304317, 29.459566, 23.032139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416447, 28.604336, 22.921509>,  <33.833134, 29.072655, 22.688213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416447, 28.604336, 22.921509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474995, 28.924778, 23.153648>,  <34.510124, 29.117043, 23.292933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474995, 28.924778, 23.153648>,  <34.416447, 28.604336, 22.921509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474995, 28.924778, 23.153648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165175, -0.598225, 0.784120,
		0.975343, -0.018912, -0.219885,
		0.146370, 0.801105, 0.580351,
		34.518906, 29.165110, 23.327753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094894, 28.544748, 23.170471>,  <34.416447, 28.604336, 22.921509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094894, 28.544748, 23.170471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880730, 28.754601, 23.435226>,  <34.752232, 28.880512, 23.594080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880730, 28.754601, 23.435226>,  <35.094894, 28.544748, 23.170471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880730, 28.754601, 23.435226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292029, -0.620347, 0.727934,
		0.792497, 0.583036, 0.178934,
		-0.535414, 0.524631, 0.661887,
		34.720104, 28.911989, 23.633793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544369, 28.739927, 23.787203>,  <35.094894, 28.544748, 23.170471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544369, 28.739927, 23.787203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159767, 28.736427, 23.897064>,  <34.929005, 28.734327, 23.962982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159767, 28.736427, 23.897064>,  <35.544369, 28.739927, 23.787203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159767, 28.736427, 23.897064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235769, -0.539695, 0.808173,
		0.141157, 0.841816, 0.520981,
		-0.961503, -0.008752, 0.274656,
		34.871315, 28.733801, 23.979462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589775, 28.716373, 24.530439>,  <35.544369, 28.739927, 23.787203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589775, 28.716373, 24.530439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199409, 28.645435, 24.479630>,  <34.965191, 28.602873, 24.449144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199409, 28.645435, 24.479630>,  <35.589775, 28.716373, 24.530439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199409, 28.645435, 24.479630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007890, -0.553218, 0.832999,
		-0.218002, 0.813940, 0.538495,
		-0.975916, -0.177347, -0.127025,
		34.906635, 28.592232, 24.441523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191566, 28.839094, 25.239725>,  <35.589775, 28.716373, 24.530439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191566, 28.839094, 25.239725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978855, 28.585487, 25.015141>,  <34.851231, 28.433323, 24.880390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978855, 28.585487, 25.015141>,  <35.191566, 28.839094, 25.239725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978855, 28.585487, 25.015141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169612, -0.569808, 0.804084,
		-0.829728, 0.522822, 0.195472,
		-0.531774, -0.634016, -0.561462,
		34.819324, 28.395283, 24.846703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160351, 29.352991, 25.706926>,  <35.191566, 28.839094, 25.239725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160351, 29.352991, 25.706926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498806, 29.457966, 25.892475>,  <35.701878, 29.520950, 26.003803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498806, 29.457966, 25.892475>,  <35.160351, 29.352991, 25.706926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498806, 29.457966, 25.892475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032817, 0.843058, -0.536821,
		-0.531950, 0.469448, 0.704732,
		0.846140, 0.262434, 0.463871,
		35.752647, 29.536695, 26.031637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084827, 30.100121, 25.740860>,  <35.160351, 29.352991, 25.706926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084827, 30.100121, 25.740860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472900, 30.027855, 25.805500>,  <35.705742, 29.984495, 25.844284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472900, 30.027855, 25.805500>,  <35.084827, 30.100121, 25.740860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472900, 30.027855, 25.805500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241889, 0.764555, -0.597449,
		-0.015615, 0.618721, 0.785455,
		0.970178, -0.180664, 0.161600,
		35.763954, 29.973656, 25.853981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347286, 30.762207, 25.949923>,  <35.084827, 30.100121, 25.740860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347286, 30.762207, 25.949923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678551, 30.554440, 25.865677>,  <35.877308, 30.429779, 25.815130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678551, 30.554440, 25.865677>,  <35.347286, 30.762207, 25.949923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678551, 30.554440, 25.865677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386394, 0.801279, -0.456784,
		0.406023, 0.296910, 0.864286,
		0.828158, -0.519420, -0.210613,
		35.926998, 30.398613, 25.802492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957806, 31.161791, 26.189260>,  <35.347286, 30.762207, 25.949923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957806, 31.161791, 26.189260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085159, 30.925133, 25.892994>,  <36.161572, 30.783138, 25.715235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085159, 30.925133, 25.892994>,  <35.957806, 31.161791, 26.189260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085159, 30.925133, 25.892994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458786, 0.779895, -0.425768,
		0.829546, -0.204248, 0.519747,
		0.318386, -0.591647, -0.740665,
		36.180676, 30.747639, 25.670794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686310, 31.294184, 26.156994>,  <35.957806, 31.161791, 26.189260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686310, 31.294184, 26.156994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559483, 31.113850, 25.823235>,  <36.483387, 31.005650, 25.622980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559483, 31.113850, 25.823235>,  <36.686310, 31.294184, 26.156994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559483, 31.113850, 25.823235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368408, 0.752152, -0.546391,
		0.873924, -0.480641, -0.072392,
		-0.317068, -0.450834, -0.834396,
		36.464363, 30.978600, 25.572916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324959, 31.149616, 25.798853>,  <36.686310, 31.294184, 26.156994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324959, 31.149616, 25.798853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038265, 31.171207, 25.520752>,  <36.866249, 31.184162, 25.353891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038265, 31.171207, 25.520752>,  <37.324959, 31.149616, 25.798853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038265, 31.171207, 25.520752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480468, 0.760815, -0.436246,
		0.505411, -0.646720, -0.571239,
		-0.716736, 0.053978, -0.695252,
		36.823246, 31.187401, 25.312176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743519, 31.190140, 25.220900>,  <37.324959, 31.149616, 25.798853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743519, 31.190140, 25.220900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376011, 31.309063, 25.116997>,  <37.155506, 31.380417, 25.054655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376011, 31.309063, 25.116997>,  <37.743519, 31.190140, 25.220900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376011, 31.309063, 25.116997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390834, 0.777938, -0.491998,
		0.055801, -0.553554, -0.830942,
		-0.918768, 0.297307, -0.259758,
		37.100380, 31.398254, 25.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779446, 31.326900, 24.483679>,  <37.743519, 31.190140, 25.220900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779446, 31.326900, 24.483679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463234, 31.535828, 24.611588>,  <37.273506, 31.661184, 24.688332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463234, 31.535828, 24.611588>,  <37.779446, 31.326900, 24.483679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463234, 31.535828, 24.611588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356207, 0.816873, -0.453691,
		-0.498182, -0.244750, -0.831813,
		-0.790526, 0.522318, 0.319770,
		37.226078, 31.692524, 24.707518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574047, 31.569103, 23.842690>,  <37.779446, 31.326900, 24.483679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574047, 31.569103, 23.842690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387806, 31.796490, 24.114002>,  <37.276062, 31.932920, 24.276789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387806, 31.796490, 24.114002>,  <37.574047, 31.569103, 23.842690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387806, 31.796490, 24.114002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341816, 0.822461, -0.454665,
		-0.816319, 0.020154, -0.577249,
		-0.465602, 0.568464, 0.678280,
		37.248127, 31.967030, 24.317486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214710, 32.124638, 23.431696>,  <37.574047, 31.569103, 23.842690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214710, 32.124638, 23.431696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222717, 32.271946, 23.803497>,  <37.227520, 32.360332, 24.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222717, 32.271946, 23.803497>,  <37.214710, 32.124638, 23.431696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222717, 32.271946, 23.803497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287725, 0.888236, -0.358121,
		-0.957504, 0.274609, -0.088183,
		0.020016, 0.368275, 0.929502,
		37.228722, 32.382427, 24.082348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913692, 32.710186, 23.482487>,  <37.214710, 32.124638, 23.431696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913692, 32.710186, 23.482487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148113, 32.754025, 23.803619>,  <37.288765, 32.780327, 23.996298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148113, 32.754025, 23.803619>,  <36.913692, 32.710186, 23.482487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148113, 32.754025, 23.803619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305831, 0.887605, -0.344419,
		-0.750343, 0.447377, 0.486662,
		0.586049, 0.109596, 0.802830,
		37.323929, 32.786903, 24.044468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773159, 33.388275, 23.589739>,  <36.913692, 32.710186, 23.482487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773159, 33.388275, 23.589739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111153, 33.296684, 23.783054>,  <37.313950, 33.241730, 23.899044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111153, 33.296684, 23.783054>,  <36.773159, 33.388275, 23.589739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111153, 33.296684, 23.783054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414321, 0.851687, -0.320885,
		-0.338137, 0.471381, 0.814532,
		0.844986, -0.228975, 0.483290,
		37.364647, 33.227993, 23.928041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918118, 33.917568, 24.030565>,  <36.773159, 33.388275, 23.589739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918118, 33.917568, 24.030565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261757, 33.722660, 23.967922>,  <37.467941, 33.605717, 23.930336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261757, 33.722660, 23.967922>,  <36.918118, 33.917568, 24.030565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261757, 33.722660, 23.967922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419709, 0.845821, -0.329289,
		0.292914, 0.217161, 0.931151,
		0.859096, -0.487266, -0.156608,
		37.519485, 33.576481, 23.920940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369621, 34.390141, 24.270134>,  <36.918118, 33.917568, 24.030565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369621, 34.390141, 24.270134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541962, 34.131084, 24.018761>,  <37.645367, 33.975651, 23.867937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541962, 34.131084, 24.018761>,  <37.369621, 34.390141, 24.270134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541962, 34.131084, 24.018761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584382, 0.730885, -0.352569,
		0.687649, -0.215339, 0.693374,
		0.430855, -0.647639, -0.628433,
		37.671219, 33.936794, 23.830231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222183, 34.269913, 25.029535>,  <37.369621, 34.390141, 24.270134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222183, 34.269913, 25.029535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123196, 34.642014, 25.137897>,  <37.063805, 34.865273, 25.202915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123196, 34.642014, 25.137897>,  <37.222183, 34.269913, 25.029535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123196, 34.642014, 25.137897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276065, -0.335709, 0.900604,
		0.928734, 0.148084, 0.339888,
		-0.247469, 0.930253, 0.270904,
		37.048954, 34.921089, 25.219170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323357, 34.293316, 25.673491>,  <37.222183, 34.269913, 25.029535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323357, 34.293316, 25.673491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090073, 34.616257, 25.637608>,  <36.950104, 34.810020, 25.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090073, 34.616257, 25.637608>,  <37.323357, 34.293316, 25.673491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090073, 34.616257, 25.637608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352057, -0.151691, 0.923604,
		0.732068, 0.570237, 0.372702,
		-0.583209, 0.807354, -0.089708,
		36.915112, 34.858463, 25.610695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404896, 34.848248, 26.200287>,  <37.323357, 34.293316, 25.673491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404896, 34.848248, 26.200287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030430, 34.909817, 26.073856>,  <36.805752, 34.946758, 25.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030430, 34.909817, 26.073856>,  <37.404896, 34.848248, 26.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030430, 34.909817, 26.073856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348879, -0.295824, 0.889253,
		0.043374, 0.942760, 0.330641,
		-0.936163, 0.153925, -0.316078,
		36.749580, 34.955994, 25.979033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132519, 35.201248, 26.751261>,  <37.404896, 34.848248, 26.200287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132519, 35.201248, 26.751261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854530, 35.015190, 26.531933>,  <36.687737, 34.903557, 26.400337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854530, 35.015190, 26.531933>,  <37.132519, 35.201248, 26.751261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854530, 35.015190, 26.531933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294013, -0.512076, 0.807053,
		-0.656178, 0.722092, 0.219119,
		-0.694972, -0.465146, -0.548318,
		36.646038, 34.875645, 26.367437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577267, 35.118214, 27.226076>,  <37.132519, 35.201248, 26.751261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577267, 35.118214, 27.226076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512871, 34.845398, 26.940727>,  <36.474232, 34.681709, 26.769518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512871, 34.845398, 26.940727>,  <36.577267, 35.118214, 27.226076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512871, 34.845398, 26.940727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459308, -0.587986, 0.665815,
		-0.873566, 0.434850, -0.218604,
		-0.160994, -0.682039, -0.713374,
		36.464573, 34.640785, 26.726715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766876, 34.866100, 27.203157>,  <36.577267, 35.118214, 27.226076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766876, 34.866100, 27.203157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973530, 34.574970, 27.022774>,  <36.097523, 34.400291, 26.914543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973530, 34.574970, 27.022774>,  <35.766876, 34.866100, 27.203157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973530, 34.574970, 27.022774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456541, -0.679740, 0.574041,
		-0.724337, -0.090685, -0.683457,
		0.516630, -0.727825, -0.450959,
		36.128521, 34.356625, 26.887487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248188, 34.307182, 26.993073>,  <35.766876, 34.866100, 27.203157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248188, 34.307182, 26.993073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596024, 34.109718, 26.997295>,  <35.804726, 33.991238, 26.999828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596024, 34.109718, 26.997295>,  <35.248188, 34.307182, 26.993073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596024, 34.109718, 26.997295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398223, -0.688510, 0.606112,
		-0.291947, -0.531273, -0.795309,
		0.869589, -0.493663, 0.010557,
		35.856899, 33.961620, 27.000462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022366, 33.593388, 26.976933>,  <35.248188, 34.307182, 26.993073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022366, 33.593388, 26.976933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401875, 33.598747, 27.103207>,  <35.629578, 33.601963, 27.178970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401875, 33.598747, 27.103207>,  <35.022366, 33.593388, 26.976933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401875, 33.598747, 27.103207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214781, -0.705431, 0.675452,
		0.231744, -0.708652, -0.666414,
		0.948769, 0.013399, 0.315684,
		35.686504, 33.602768, 27.197912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141632, 32.892342, 27.033890>,  <35.022366, 33.593388, 26.976933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141632, 32.892342, 27.033890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435310, 33.071682, 27.237831>,  <35.611515, 33.179287, 27.360195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435310, 33.071682, 27.237831>,  <35.141632, 32.892342, 27.033890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435310, 33.071682, 27.237831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047812, -0.714943, 0.697546,
		0.677257, -0.536509, -0.503468,
		0.734191, 0.448347, 0.509852,
		35.655567, 33.206184, 27.390787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472454, 32.328369, 27.280382>,  <35.141632, 32.892342, 27.033890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472454, 32.328369, 27.280382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600838, 32.631256, 27.507931>,  <35.677868, 32.812988, 27.644461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600838, 32.631256, 27.507931>,  <35.472454, 32.328369, 27.280382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600838, 32.631256, 27.507931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010957, -0.603579, 0.797228,
		0.947031, -0.249642, -0.202019,
		0.320956, 0.757213, 0.568873,
		35.697124, 32.858421, 27.678593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013355, 32.149738, 27.523460>,  <35.472454, 32.328369, 27.280382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013355, 32.149738, 27.523460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883636, 32.430752, 27.776844>,  <35.805805, 32.599361, 27.928875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883636, 32.430752, 27.776844>,  <36.013355, 32.149738, 27.523460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883636, 32.430752, 27.776844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006993, -0.667853, 0.744261,
		0.945930, 0.245790, 0.211669,
		-0.324296, 0.702538, 0.633461,
		35.786346, 32.641514, 27.966883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151737, 31.842873, 28.203735>,  <36.013355, 32.149738, 27.523460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151737, 31.842873, 28.203735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889034, 32.133602, 28.284138>,  <35.731415, 32.308041, 28.332380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889034, 32.133602, 28.284138>,  <36.151737, 31.842873, 28.203735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889034, 32.133602, 28.284138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356590, -0.534188, 0.766477,
		0.664468, 0.431710, 0.610007,
		-0.656754, 0.726822, 0.201008,
		35.692009, 32.351650, 28.344440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134480, 31.936001, 28.913784>,  <36.151737, 31.842873, 28.203735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134480, 31.936001, 28.913784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788219, 32.097111, 28.794842>,  <35.580463, 32.193775, 28.723476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788219, 32.097111, 28.794842>,  <36.134480, 31.936001, 28.913784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788219, 32.097111, 28.794842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474380, -0.470039, 0.744330,
		0.160028, 0.785390, 0.597958,
		-0.865652, 0.402773, -0.297355,
		35.528522, 32.217941, 28.705635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787395, 32.240467, 29.566628>,  <36.134480, 31.936001, 28.913784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787395, 32.240467, 29.566628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507454, 32.192348, 29.284996>,  <35.339489, 32.163475, 29.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507454, 32.192348, 29.284996>,  <35.787395, 32.240467, 29.566628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507454, 32.192348, 29.284996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631606, -0.356111, 0.688665,
		-0.333576, 0.926668, 0.173245,
		-0.699858, -0.120300, -0.704079,
		35.297497, 32.156258, 29.073772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211433, 32.478344, 29.907190>,  <35.787395, 32.240467, 29.566628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211433, 32.478344, 29.907190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074642, 32.248173, 29.610020>,  <34.992569, 32.110069, 29.431717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074642, 32.248173, 29.610020>,  <35.211433, 32.478344, 29.907190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074642, 32.248173, 29.610020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674954, -0.399666, 0.620245,
		-0.653827, 0.713550, -0.251708,
		-0.341977, -0.575424, -0.742926,
		34.972050, 32.075546, 29.387142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431911, 32.523003, 29.951099>,  <35.211433, 32.478344, 29.907190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431911, 32.523003, 29.951099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520966, 32.194595, 29.740818>,  <34.574398, 31.997551, 29.614649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520966, 32.194595, 29.740818>,  <34.431911, 32.523003, 29.951099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520966, 32.194595, 29.740818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672616, -0.519695, 0.526787,
		-0.705707, 0.236316, -0.667931,
		0.222632, -0.821019, -0.525702,
		34.587757, 31.948290, 29.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764427, 32.202038, 29.807648>,  <34.431911, 32.523003, 29.951099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764427, 32.202038, 29.807648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041840, 31.918804, 29.754551>,  <34.208286, 31.748863, 29.722692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041840, 31.918804, 29.754551>,  <33.764427, 32.202038, 29.807648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041840, 31.918804, 29.754551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492886, -0.600750, 0.629415,
		-0.525425, -0.371095, -0.765648,
		0.693536, -0.708088, -0.132742,
		34.249901, 31.706377, 29.714729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313648, 31.568954, 29.898993>,  <33.764427, 32.202038, 29.807648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313648, 31.568954, 29.898993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687668, 31.427338, 29.906353>,  <33.912079, 31.342367, 29.910769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687668, 31.427338, 29.906353>,  <33.313648, 31.568954, 29.898993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687668, 31.427338, 29.906353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306816, -0.782137, 0.542334,
		-0.177618, -0.512754, -0.839961,
		0.935048, -0.354042, 0.018400,
		33.968182, 31.321125, 29.911873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279469, 30.965084, 29.648300>,  <33.313648, 31.568954, 29.898993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279469, 30.965084, 29.648300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624298, 30.962757, 29.850998>,  <33.831196, 30.961361, 29.972616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624298, 30.962757, 29.850998>,  <33.279469, 30.965084, 29.648300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624298, 30.962757, 29.850998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337682, -0.752203, 0.565828,
		0.377884, -0.658906, -0.650420,
		0.862075, -0.005818, 0.506746,
		33.882919, 30.961012, 30.003021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549217, 30.245949, 29.688498>,  <33.279469, 30.965084, 29.648300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549217, 30.245949, 29.688498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697208, 30.456097, 29.994987>,  <33.786003, 30.582186, 30.178881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697208, 30.456097, 29.994987>,  <33.549217, 30.245949, 29.688498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697208, 30.456097, 29.994987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258919, -0.733763, 0.628134,
		0.892230, -0.430789, -0.135451,
		0.369982, 0.525369, 0.766225,
		33.808205, 30.613707, 30.224855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667511, 29.771273, 30.181826>,  <33.549217, 30.245949, 29.688498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667511, 29.771273, 30.181826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682243, 30.090099, 30.422932>,  <33.691082, 30.281395, 30.567595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682243, 30.090099, 30.422932>,  <33.667511, 29.771273, 30.181826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682243, 30.090099, 30.422932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348225, -0.555132, 0.755359,
		0.936687, -0.237721, 0.257111,
		0.036834, 0.797067, 0.602766,
		33.693295, 30.329220, 30.603762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944031, 29.497683, 30.897888>,  <33.667511, 29.771273, 30.181826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944031, 29.497683, 30.897888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719994, 29.828892, 30.908230>,  <33.585571, 30.027617, 30.914434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719994, 29.828892, 30.908230>,  <33.944031, 29.497683, 30.897888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719994, 29.828892, 30.908230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452998, -0.332252, 0.827286,
		0.693602, 0.451649, 0.561187,
		-0.560098, 0.828023, 0.025855,
		33.551964, 30.077299, 30.915987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040340, 29.731796, 31.504759>,  <33.944031, 29.497683, 30.897888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040340, 29.731796, 31.504759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699429, 29.913387, 31.400818>,  <33.494881, 30.022343, 31.338453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699429, 29.913387, 31.400818>,  <34.040340, 29.731796, 31.504759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699429, 29.913387, 31.400818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461271, -0.418001, 0.782627,
		0.246676, 0.786879, 0.565660,
		-0.852279, 0.453978, -0.259854,
		33.443745, 30.049582, 31.322863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795158, 30.063244, 32.160690>,  <34.040340, 29.731796, 31.504759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795158, 30.063244, 32.160690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470894, 30.053852, 31.926674>,  <33.276337, 30.048218, 31.786263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470894, 30.053852, 31.926674>,  <33.795158, 30.063244, 32.160690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470894, 30.053852, 31.926674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536424, -0.370715, 0.758169,
		-0.234685, 0.928450, 0.287931,
		-0.810662, -0.023478, -0.585044,
		33.227695, 30.046808, 31.751162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238304, 30.453823, 32.541359>,  <33.795158, 30.063244, 32.160690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238304, 30.453823, 32.541359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073299, 30.190697, 32.289291>,  <32.974297, 30.032822, 32.138050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073299, 30.190697, 32.289291>,  <33.238304, 30.453823, 32.541359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073299, 30.190697, 32.289291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379477, -0.504804, 0.775352,
		-0.828152, 0.558974, -0.041390,
		-0.412508, -0.657815, -0.630172,
		32.949547, 29.993353, 32.100239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523758, 30.339388, 32.809647>,  <33.238304, 30.453823, 32.541359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523758, 30.339388, 32.809647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585503, 30.033924, 32.558887>,  <32.622551, 29.850645, 32.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585503, 30.033924, 32.558887>,  <32.523758, 30.339388, 32.809647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585503, 30.033924, 32.558887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389641, -0.630127, 0.671655,
		-0.907939, 0.140586, -0.394820,
		0.154361, -0.763659, -0.626895,
		32.631809, 29.804827, 32.370819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852682, 30.011879, 32.695160>,  <32.523758, 30.339388, 32.809647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852682, 30.011879, 32.695160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103420, 29.715153, 32.599850>,  <32.253864, 29.537117, 32.542664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103420, 29.715153, 32.599850>,  <31.852682, 30.011879, 32.695160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103420, 29.715153, 32.599850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491487, -0.613764, 0.617847,
		-0.604560, -0.270202, -0.749332,
		0.626857, -0.741812, -0.238256,
		32.291473, 29.492607, 32.528366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441971, 29.508499, 32.456554>,  <31.852682, 30.011879, 32.695160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441971, 29.508499, 32.456554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783472, 29.342976, 32.582962>,  <31.988373, 29.243662, 32.658806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783472, 29.342976, 32.582962>,  <31.441971, 29.508499, 32.456554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783472, 29.342976, 32.582962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520337, -0.656167, 0.546529,
		-0.018801, -0.631036, -0.775526,
		0.853754, -0.413810, 0.316015,
		32.039597, 29.218832, 32.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745102, 29.274374, 32.289452>,  <31.441971, 29.508499, 32.456554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745102, 29.274374, 32.289452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438837, 29.524036, 32.351662>,  <30.255077, 29.673834, 32.388988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438837, 29.524036, 32.351662>,  <30.745102, 29.274374, 32.289452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438837, 29.524036, 32.351662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325027, 0.584058, -0.743797,
		-0.555083, -0.518947, -0.650059,
		-0.765664, 0.624156, 0.155528,
		30.209139, 29.711283, 32.398319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413599, 29.341297, 31.698910>,  <30.745102, 29.274374, 32.289452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413599, 29.341297, 31.698910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290556, 29.675243, 31.881504>,  <30.216730, 29.875610, 31.991060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290556, 29.675243, 31.881504>,  <30.413599, 29.341297, 31.698910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290556, 29.675243, 31.881504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285835, 0.538665, -0.792552,
		-0.907565, -0.113317, -0.404332,
		-0.307609, 0.834865, 0.456484,
		30.198273, 29.925703, 32.018448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059629, 29.699228, 31.176596>,  <30.413599, 29.341297, 31.698910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059629, 29.699228, 31.176596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135124, 29.979286, 31.452038>,  <30.180420, 30.147322, 31.617304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135124, 29.979286, 31.452038>,  <30.059629, 29.699228, 31.176596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135124, 29.979286, 31.452038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198861, 0.659431, -0.724986,
		-0.961683, 0.273767, -0.014774,
		0.188735, 0.700145, 0.688605,
		30.191744, 30.189329, 31.658619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620678, 30.341131, 31.051537>,  <30.059629, 29.699228, 31.176596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620678, 30.341131, 31.051537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942375, 30.453812, 31.260853>,  <30.135393, 30.521420, 31.386442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942375, 30.453812, 31.260853>,  <29.620678, 30.341131, 31.051537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942375, 30.453812, 31.260853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242431, 0.648416, -0.721654,
		-0.542602, 0.707248, 0.453192,
		0.804245, 0.281703, 0.523290,
		30.183649, 30.538322, 31.417839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556736, 31.066034, 30.969133>,  <29.620678, 30.341131, 31.051537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556736, 31.066034, 30.969133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930750, 30.995708, 31.092293>,  <30.155159, 30.953514, 31.166187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930750, 30.995708, 31.092293>,  <29.556736, 31.066034, 30.969133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930750, 30.995708, 31.092293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348641, 0.613877, -0.708240,
		-0.064493, 0.769575, 0.635292,
		0.935035, -0.175812, 0.307897,
		30.211260, 30.942965, 31.184662>
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
