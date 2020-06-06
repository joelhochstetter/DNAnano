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
	<24.217911, 35.037945, 35.483757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444391, 34.827847, 35.229660>,  <24.580280, 34.701786, 35.077202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444391, 34.827847, 35.229660>,  <24.217911, 35.037945, 35.483757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444391, 34.827847, 35.229660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293582, -0.591624, 0.750860,
		-0.770211, -0.611633, -0.180774,
		0.566201, -0.525249, -0.635240,
		24.614252, 34.670273, 35.039089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.063391, 34.242092, 35.327641>,  <24.217911, 35.037945, 35.483757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.063391, 34.242092, 35.327641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455639, 34.312485, 35.293209>,  <24.690989, 34.354721, 35.272549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455639, 34.312485, 35.293209>,  <24.063391, 34.242092, 35.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.455639, 34.312485, 35.293209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171947, -0.562556, 0.808681,
		0.093890, -0.807812, -0.581915,
		0.980622, 0.175986, -0.086082,
		24.749825, 34.365280, 35.267384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333378, 33.705688, 35.735401>,  <24.063391, 34.242092, 35.327641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333378, 33.705688, 35.735401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604061, 33.999523, 35.715626>,  <24.766472, 34.175823, 35.703758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604061, 33.999523, 35.715626>,  <24.333378, 33.705688, 35.735401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604061, 33.999523, 35.715626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381159, -0.292090, 0.877155,
		0.629906, -0.612425, -0.477655,
		0.676710, 0.734587, -0.049442,
		24.807074, 34.219898, 35.700794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963711, 33.383625, 35.765915>,  <24.333378, 33.705688, 35.735401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963711, 33.383625, 35.765915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993641, 33.763187, 35.888542>,  <25.011599, 33.990925, 35.962120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993641, 33.763187, 35.888542>,  <24.963711, 33.383625, 35.765915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993641, 33.763187, 35.888542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494132, -0.302316, 0.815131,
		0.866161, 0.090494, -0.491504,
		0.074825, 0.948902, 0.306571,
		25.016088, 34.047859, 35.980515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578646, 33.407730, 36.102077>,  <24.963711, 33.383625, 35.765915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578646, 33.407730, 36.102077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424156, 33.745712, 36.250069>,  <25.331463, 33.948502, 36.338863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424156, 33.745712, 36.250069>,  <25.578646, 33.407730, 36.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424156, 33.745712, 36.250069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350679, -0.236477, 0.906147,
		0.853145, 0.479718, -0.204975,
		-0.386223, 0.844955, 0.369976,
		25.308289, 33.999199, 36.361061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056067, 33.789665, 36.587467>,  <25.578646, 33.407730, 36.102077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056067, 33.789665, 36.587467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677858, 33.878460, 36.682724>,  <25.450933, 33.931736, 36.739876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677858, 33.878460, 36.682724>,  <26.056067, 33.789665, 36.587467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677858, 33.878460, 36.682724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186085, -0.231700, 0.954823,
		0.267134, 0.947121, 0.177769,
		-0.945522, 0.221986, 0.238140,
		25.394201, 33.945057, 36.754166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060638, 34.071930, 37.232758>,  <26.056067, 33.789665, 36.587467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060638, 34.071930, 37.232758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671906, 33.980350, 37.210384>,  <25.438665, 33.925404, 37.196960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671906, 33.980350, 37.210384>,  <26.060638, 34.071930, 37.232758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671906, 33.980350, 37.210384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001533, -0.231167, 0.972913,
		-0.235671, 0.945593, 0.224304,
		-0.971832, -0.228944, -0.055929,
		25.380356, 33.911667, 37.193607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610847, 34.455204, 37.698574>,  <26.060638, 34.071930, 37.232758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610847, 34.455204, 37.698574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508867, 34.075630, 37.624260>,  <25.447680, 33.847885, 37.579670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508867, 34.075630, 37.624260>,  <25.610847, 34.455204, 37.698574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508867, 34.075630, 37.624260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134641, -0.225103, 0.964987,
		-0.957534, 0.221010, 0.185157,
		-0.254951, -0.948938, -0.185787,
		25.432383, 33.790947, 37.568523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206890, 34.221870, 38.275749>,  <25.610847, 34.455204, 37.698574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206890, 34.221870, 38.275749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389465, 33.912861, 38.099171>,  <25.499010, 33.727455, 37.993221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389465, 33.912861, 38.099171>,  <25.206890, 34.221870, 38.275749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389465, 33.912861, 38.099171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231894, -0.375715, 0.897254,
		-0.859005, -0.511910, 0.007652,
		0.456438, -0.772520, -0.441450,
		25.526398, 33.681107, 37.966736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839838, 33.589611, 38.719612>,  <25.206890, 34.221870, 38.275749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839838, 33.589611, 38.719612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156626, 33.458122, 38.513805>,  <25.346699, 33.379230, 38.390320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156626, 33.458122, 38.513805>,  <24.839838, 33.589611, 38.719612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156626, 33.458122, 38.513805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153807, -0.708104, 0.689153,
		-0.590869, -0.624925, -0.510238,
		0.791970, -0.328721, -0.514515,
		25.394217, 33.359505, 38.359451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779469, 32.868378, 38.657806>,  <24.839838, 33.589611, 38.719612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779469, 32.868378, 38.657806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170485, 32.949615, 38.635307>,  <25.405094, 32.998360, 38.621807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170485, 32.949615, 38.635307>,  <24.779469, 32.868378, 38.657806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170485, 32.949615, 38.635307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175613, -0.637501, 0.750168,
		0.116498, -0.743199, -0.658850,
		0.977542, 0.203096, -0.056248,
		25.463747, 33.010544, 38.618431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096342, 32.240559, 38.642483>,  <24.779469, 32.868378, 38.657806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096342, 32.240559, 38.642483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349321, 32.518772, 38.778858>,  <25.501108, 32.685699, 38.860683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349321, 32.518772, 38.778858>,  <25.096342, 32.240559, 38.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349321, 32.518772, 38.778858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127904, -0.527876, 0.839635,
		0.763970, -0.487418, -0.422816,
		0.632448, 0.695536, 0.340938,
		25.539057, 32.727432, 38.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703943, 31.882418, 38.801960>,  <25.096342, 32.240559, 38.642483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703943, 31.882418, 38.801960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618044, 32.197296, 39.033203>,  <25.566504, 32.386223, 39.171947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618044, 32.197296, 39.033203>,  <25.703943, 31.882418, 38.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618044, 32.197296, 39.033203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134542, -0.562427, 0.815827,
		0.967358, 0.252977, 0.014869,
		-0.214749, 0.787197, 0.578104,
		25.553619, 32.433456, 39.206635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202856, 32.065598, 39.175735>,  <25.703943, 31.882418, 38.801960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202856, 32.065598, 39.175735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889858, 32.165028, 39.404091>,  <25.702059, 32.224686, 39.541103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889858, 32.165028, 39.404091>,  <26.202856, 32.065598, 39.175735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889858, 32.165028, 39.404091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358963, -0.569066, 0.739804,
		0.508770, 0.783820, 0.356061,
		-0.782495, 0.248578, 0.570886,
		25.655109, 32.239601, 39.575356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494522, 32.689137, 39.625652>,  <26.202856, 32.065598, 39.175735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494522, 32.689137, 39.625652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724134, 32.690620, 39.298122>,  <26.861902, 32.691509, 39.101604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724134, 32.690620, 39.298122>,  <26.494522, 32.689137, 39.625652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724134, 32.690620, 39.298122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114400, -0.990545, 0.075717,
		-0.810803, -0.137137, -0.569027,
		0.574030, 0.003705, -0.818826,
		26.896343, 32.691730, 39.052475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594219, 33.244221, 39.118999>,  <26.494522, 32.689137, 39.625652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594219, 33.244221, 39.118999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306520, 33.022404, 38.951588>,  <26.133902, 32.889313, 38.851139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306520, 33.022404, 38.951588>,  <26.594219, 33.244221, 39.118999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306520, 33.022404, 38.951588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152298, 0.713609, -0.683790,
		0.677855, -0.428074, -0.597717,
		-0.719248, -0.554541, -0.418528,
		26.090746, 32.856041, 38.826027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738457, 33.193604, 38.384254>,  <26.594219, 33.244221, 39.118999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738457, 33.193604, 38.384254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349245, 33.129112, 38.450245>,  <26.115717, 33.090420, 38.489838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349245, 33.129112, 38.450245>,  <26.738457, 33.193604, 38.384254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349245, 33.129112, 38.450245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225822, 0.519848, -0.823870,
		0.047067, -0.838906, -0.542237,
		-0.973031, -0.161226, 0.164976,
		26.057335, 33.080746, 38.499737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498850, 32.900421, 37.745304>,  <26.738457, 33.193604, 38.384254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498850, 32.900421, 37.745304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171276, 33.026466, 37.937160>,  <25.974731, 33.102093, 38.052273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171276, 33.026466, 37.937160>,  <26.498850, 32.900421, 37.745304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171276, 33.026466, 37.937160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341285, 0.404510, -0.848467,
		-0.461377, -0.858532, -0.223726,
		-0.818935, 0.315109, 0.479636,
		25.925596, 33.120998, 38.081051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936888, 32.587429, 37.417786>,  <26.498850, 32.900421, 37.745304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936888, 32.587429, 37.417786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825666, 32.920368, 37.609570>,  <25.758934, 33.120132, 37.724640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825666, 32.920368, 37.609570>,  <25.936888, 32.587429, 37.417786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825666, 32.920368, 37.609570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310142, 0.394615, -0.864923,
		-0.909119, -0.389196, 0.148421,
		-0.278055, 0.832349, 0.479458,
		25.742250, 33.170074, 37.753407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259865, 32.558617, 37.383732>,  <25.936888, 32.587429, 37.417786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259865, 32.558617, 37.383732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365213, 32.942108, 37.426579>,  <25.428423, 33.172203, 37.452286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365213, 32.942108, 37.426579>,  <25.259865, 32.558617, 37.383732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365213, 32.942108, 37.426579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384295, 0.206116, -0.899908,
		-0.884846, 0.195846, 0.422720,
		0.263373, 0.958729, 0.107118,
		25.444225, 33.229725, 37.458714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658745, 33.008793, 37.286045>,  <25.259865, 32.558617, 37.383732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658745, 33.008793, 37.286045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975639, 33.238014, 37.202171>,  <25.165775, 33.375549, 37.151848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975639, 33.238014, 37.202171>,  <24.658745, 33.008793, 37.286045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975639, 33.238014, 37.202171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480438, 0.373915, -0.793326,
		-0.376218, 0.729242, 0.571547,
		0.792237, 0.573057, -0.209683,
		25.213310, 33.409931, 37.139267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131470, 33.556263, 37.078674>,  <24.658745, 33.008793, 37.286045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131470, 33.556263, 37.078674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512167, 33.670673, 37.123173>,  <24.740585, 33.739319, 37.149872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512167, 33.670673, 37.123173>,  <24.131470, 33.556263, 37.078674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.512167, 33.670673, 37.123173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017786, 0.413286, -0.910427,
		-0.306383, 0.864514, 0.398429,
		0.951742, 0.286026, 0.111248,
		24.797689, 33.756481, 37.156548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172745, 34.275372, 37.133762>,  <24.131470, 33.556263, 37.078674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172745, 34.275372, 37.133762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528164, 34.145462, 37.004143>,  <24.741415, 34.067516, 36.926373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528164, 34.145462, 37.004143>,  <24.172745, 34.275372, 37.133762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528164, 34.145462, 37.004143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174142, 0.414703, -0.893138,
		0.424449, 0.850026, 0.311927,
		0.888548, -0.324772, -0.324046,
		24.794729, 34.048031, 36.906929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.059277, 34.695274, 36.491959>,  <24.172745, 34.275372, 37.133762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.059277, 34.695274, 36.491959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190884, 35.061108, 36.397911>,  <24.269848, 35.280609, 36.341484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190884, 35.061108, 36.397911>,  <24.059277, 34.695274, 36.491959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190884, 35.061108, 36.397911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944242, -0.315343, 0.094688,
		0.012458, -0.253161, -0.967344,
		0.329016, 0.914586, -0.235117,
		24.289589, 35.335484, 36.327377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723337, 35.120132, 36.752430>,  <24.059277, 34.695274, 36.491959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723337, 35.120132, 36.752430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904444, 34.785641, 36.628677>,  <25.013107, 34.584946, 36.554424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904444, 34.785641, 36.628677>,  <24.723337, 35.120132, 36.752430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904444, 34.785641, 36.628677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048076, 0.323583, -0.944978,
		0.890332, 0.442727, 0.106305,
		0.452766, -0.836233, -0.309381,
		25.040274, 34.534771, 36.535862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206882, 35.291889, 36.274525>,  <24.723337, 35.120132, 36.752430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206882, 35.291889, 36.274525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178730, 34.900063, 36.199173>,  <25.161839, 34.664967, 36.153961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178730, 34.900063, 36.199173>,  <25.206882, 35.291889, 36.274525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178730, 34.900063, 36.199173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077969, 0.193675, -0.977963,
		0.994469, -0.054141, -0.090007,
		-0.070380, -0.979571, -0.188382,
		25.157616, 34.606190, 36.142658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712454, 35.130848, 35.763599>,  <25.206882, 35.291889, 36.274525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712454, 35.130848, 35.763599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440996, 34.838417, 35.735390>,  <25.278122, 34.662960, 35.718464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440996, 34.838417, 35.735390>,  <25.712454, 35.130848, 35.763599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440996, 34.838417, 35.735390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034459, 0.127605, -0.991226,
		0.733658, -0.670260, -0.111790,
		-0.678644, -0.731074, -0.070522,
		25.237402, 34.619095, 35.714233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027540, 34.690437, 35.314484>,  <25.712454, 35.130848, 35.763599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027540, 34.690437, 35.314484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629034, 34.671200, 35.343166>,  <25.389931, 34.659657, 35.360374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629034, 34.671200, 35.343166>,  <26.027540, 34.690437, 35.314484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629034, 34.671200, 35.343166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078650, 0.162940, -0.983496,
		0.035618, -0.985463, -0.166114,
		-0.996266, -0.048095, 0.071703,
		25.330154, 34.656769, 35.364677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010906, 34.250553, 34.792744>,  <26.027540, 34.690437, 35.314484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010906, 34.250553, 34.792744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150562, 33.919888, 34.616234>,  <26.234356, 33.721489, 34.510330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150562, 33.919888, 34.616234>,  <26.010906, 34.250553, 34.792744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150562, 33.919888, 34.616234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239339, 0.533955, -0.810931,
		0.905991, 0.177514, 0.384278,
		0.349139, -0.826669, -0.441272,
		26.255304, 33.671886, 34.483852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781990, 34.212013, 34.762268>,  <26.010906, 34.250553, 34.792744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781990, 34.212013, 34.762268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540255, 34.074131, 34.474949>,  <26.395212, 33.991402, 34.302559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540255, 34.074131, 34.474949>,  <26.781990, 34.212013, 34.762268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540255, 34.074131, 34.474949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187745, 0.814558, -0.548859,
		0.774288, -0.466555, -0.427556,
		-0.604342, -0.344704, -0.718296,
		26.358952, 33.970718, 34.259460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148273, 34.288193, 34.046429>,  <26.781990, 34.212013, 34.762268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148273, 34.288193, 34.046429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748732, 34.289333, 34.065552>,  <26.509007, 34.290020, 34.077026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748732, 34.289333, 34.065552>,  <27.148273, 34.288193, 34.046429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748732, 34.289333, 34.065552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019018, 0.892480, -0.450685,
		-0.043952, -0.451077, -0.891402,
		-0.998853, 0.002856, 0.047805,
		26.449076, 34.290192, 34.079895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887962, 34.234447, 34.150085>,  <27.148273, 34.288193, 34.046429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887962, 34.234447, 34.150085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189877, 34.452503, 34.296028>,  <28.371025, 34.583336, 34.383595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189877, 34.452503, 34.296028>,  <27.887962, 34.234447, 34.150085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189877, 34.452503, 34.296028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231939, -0.742068, 0.628919,
		0.613600, -0.390073, -0.686541,
		0.754784, 0.545140, 0.364860,
		28.416311, 34.616047, 34.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530298, 33.848366, 34.056366>,  <27.887962, 34.234447, 34.150085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530298, 33.848366, 34.056366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563089, 34.112125, 34.355289>,  <28.582764, 34.270382, 34.534645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563089, 34.112125, 34.355289>,  <28.530298, 33.848366, 34.056366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563089, 34.112125, 34.355289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002979, -0.749666, 0.661810,
		0.996630, -0.056478, -0.059490,
		0.081976, 0.659402, 0.747308,
		28.587683, 34.309948, 34.579483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013651, 33.558361, 34.384251>,  <28.530298, 33.848366, 34.056366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013651, 33.558361, 34.384251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881672, 33.807423, 34.668064>,  <28.802485, 33.956860, 34.838352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881672, 33.807423, 34.668064>,  <29.013651, 33.558361, 34.384251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881672, 33.807423, 34.668064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132689, -0.713570, 0.687904,
		0.934628, 0.321117, 0.152819,
		-0.329945, 0.622657, 0.709531,
		28.782688, 33.994221, 34.880924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467442, 33.476238, 34.893021>,  <29.013651, 33.558361, 34.384251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467442, 33.476238, 34.893021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135590, 33.624592, 35.059952>,  <28.936478, 33.713604, 35.160110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135590, 33.624592, 35.059952>,  <29.467442, 33.476238, 34.893021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135590, 33.624592, 35.059952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135855, -0.590909, 0.795217,
		0.541533, 0.716431, 0.439850,
		-0.829630, 0.370880, 0.417327,
		28.886702, 33.735855, 35.185150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714075, 34.058083, 34.773163>,  <29.467442, 33.476238, 34.893021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714075, 34.058083, 34.773163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474030, 34.274601, 35.008739>,  <29.330002, 34.404514, 35.150085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474030, 34.274601, 35.008739>,  <29.714075, 34.058083, 34.773163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474030, 34.274601, 35.008739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101467, -0.678801, 0.727278,
		0.793452, 0.496209, 0.352434,
		-0.600115, 0.541300, 0.588945,
		29.293995, 34.436993, 35.185425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114597, 34.108448, 35.322037>,  <29.714075, 34.058083, 34.773163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114597, 34.108448, 35.322037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734583, 34.140686, 35.442661>,  <29.506575, 34.160027, 35.515038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734583, 34.140686, 35.442661>,  <30.114597, 34.108448, 35.322037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734583, 34.140686, 35.442661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147907, -0.734527, 0.662264,
		0.274880, 0.673777, 0.685905,
		-0.950034, 0.080593, 0.301563,
		29.449574, 34.164864, 35.533131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021381, 33.981461, 36.003960>,  <30.114597, 34.108448, 35.322037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021381, 33.981461, 36.003960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640621, 33.909901, 35.904457>,  <29.412165, 33.866966, 35.844753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640621, 33.909901, 35.904457>,  <30.021381, 33.981461, 36.003960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640621, 33.909901, 35.904457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055680, -0.899333, 0.433704,
		-0.301306, 0.398992, 0.866037,
		-0.951900, -0.178899, -0.248759,
		29.355051, 33.856232, 35.829830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712736, 33.974091, 36.702713>,  <30.021381, 33.981461, 36.003960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712736, 33.974091, 36.702713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530430, 33.787090, 36.399734>,  <29.421045, 33.674889, 36.217949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530430, 33.787090, 36.399734>,  <29.712736, 33.974091, 36.702713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530430, 33.787090, 36.399734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100634, -0.872573, 0.478006,
		-0.884392, 0.141635, 0.444737,
		-0.455767, -0.467500, -0.757443,
		29.393700, 33.646839, 36.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289259, 33.533726, 36.994648>,  <29.712736, 33.974091, 36.702713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289259, 33.533726, 36.994648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381733, 33.412506, 36.624847>,  <29.437218, 33.339775, 36.402966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381733, 33.412506, 36.624847>,  <29.289259, 33.533726, 36.994648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381733, 33.412506, 36.624847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140199, -0.929954, 0.339898,
		-0.962755, -0.208195, -0.172505,
		0.231187, -0.303053, -0.924506,
		29.451090, 33.321590, 36.347496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116642, 32.820225, 37.177715>,  <29.289259, 33.533726, 36.994648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116642, 32.820225, 37.177715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987095, 32.589294, 36.877903>,  <28.909367, 32.450737, 36.698013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987095, 32.589294, 36.877903>,  <29.116642, 32.820225, 37.177715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987095, 32.589294, 36.877903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003004, 0.792857, -0.609401,
		0.946097, -0.195114, -0.258517,
		-0.323869, -0.577329, -0.749533,
		28.889935, 32.416096, 36.653042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429918, 32.683167, 36.478180>,  <29.116642, 32.820225, 37.177715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429918, 32.683167, 36.478180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034521, 32.690498, 36.418121>,  <28.797283, 32.694897, 36.382088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034521, 32.690498, 36.418121>,  <29.429918, 32.683167, 36.478180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034521, 32.690498, 36.418121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107354, 0.784301, -0.611022,
		0.106560, -0.620110, -0.777244,
		-0.988494, 0.018330, -0.150147,
		28.737972, 32.695999, 36.373077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246794, 32.675198, 35.719215>,  <29.429918, 32.683167, 36.478180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246794, 32.675198, 35.719215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978453, 32.888672, 35.925182>,  <28.817448, 33.016754, 36.048763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978453, 32.888672, 35.925182>,  <29.246794, 32.675198, 35.719215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978453, 32.888672, 35.925182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073482, 0.738760, -0.669951,
		-0.737941, -0.411601, -0.534816,
		-0.670853, 0.533683, 0.514916,
		28.777197, 33.048779, 36.079659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621666, 32.905518, 35.206966>,  <29.246794, 32.675198, 35.719215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621666, 32.905518, 35.206966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722797, 33.137669, 35.516609>,  <28.783476, 33.276958, 35.702393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722797, 33.137669, 35.516609>,  <28.621666, 32.905518, 35.206966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722797, 33.137669, 35.516609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015450, 0.797575, -0.603022,
		-0.967388, 0.164421, 0.192683,
		0.252829, 0.580379, 0.774104,
		28.798645, 33.311783, 35.748840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251478, 33.461739, 35.371174>,  <28.621666, 32.905518, 35.206966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251478, 33.461739, 35.371174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586580, 33.606171, 35.535019>,  <28.787642, 33.692829, 35.633327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586580, 33.606171, 35.535019>,  <28.251478, 33.461739, 35.371174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586580, 33.606171, 35.535019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162173, 0.880830, -0.444790,
		-0.521410, 0.306195, 0.796477,
		0.837754, 0.361085, 0.409617,
		28.837906, 33.714497, 35.657906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136717, 34.083984, 35.827343>,  <28.251478, 33.461739, 35.371174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136717, 34.083984, 35.827343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501957, 34.085693, 35.664257>,  <28.721100, 34.086720, 35.566406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501957, 34.085693, 35.664257>,  <28.136717, 34.083984, 35.827343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501957, 34.085693, 35.664257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248922, 0.797825, -0.549103,
		0.322938, 0.602874, 0.729557,
		0.913098, 0.004276, -0.407717,
		28.775887, 34.086975, 35.541943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355125, 34.856617, 35.748028>,  <28.136717, 34.083984, 35.827343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355125, 34.856617, 35.748028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508963, 34.598881, 35.483631>,  <28.601265, 34.444241, 35.324993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508963, 34.598881, 35.483631>,  <28.355125, 34.856617, 35.748028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508963, 34.598881, 35.483631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126329, 0.672591, -0.729152,
		0.914400, 0.363931, 0.177277,
		0.384595, -0.644342, -0.660992,
		28.624342, 34.405579, 35.285332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826126, 35.232292, 35.498455>,  <28.355125, 34.856617, 35.748028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826126, 35.232292, 35.498455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751930, 34.942421, 35.232994>,  <28.707413, 34.768497, 35.073719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751930, 34.942421, 35.232994>,  <28.826126, 35.232292, 35.498455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751930, 34.942421, 35.232994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054627, 0.681930, -0.729375,
		0.981127, -0.099037, -0.166077,
		-0.185488, -0.724682, -0.663649,
		28.696283, 34.725018, 35.033897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312956, 35.343597, 35.045902>,  <28.826126, 35.232292, 35.498455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312956, 35.343597, 35.045902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020311, 35.153454, 34.850441>,  <28.844725, 35.039368, 34.733166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020311, 35.153454, 34.850441>,  <29.312956, 35.343597, 35.045902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020311, 35.153454, 34.850441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052302, 0.675543, -0.735463,
		0.679763, -0.563598, -0.469339,
		-0.731564, -0.475393, -0.488686,
		28.800829, 35.010849, 34.703846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519949, 35.232594, 34.386578>,  <29.312956, 35.343597, 35.045902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519949, 35.232594, 34.386578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122536, 35.274765, 34.403446>,  <28.884089, 35.300068, 34.413567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122536, 35.274765, 34.403446>,  <29.519949, 35.232594, 34.386578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122536, 35.274765, 34.403446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046371, 0.715731, -0.696835,
		-0.103646, -0.690373, -0.715990,
		-0.993533, 0.105425, 0.042169,
		28.824476, 35.306393, 34.416096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003803, 35.405243, 33.824169>,  <29.519949, 35.232594, 34.386578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003803, 35.405243, 33.824169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262186, 35.380043, 33.519859>,  <29.417215, 35.364925, 33.337273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262186, 35.380043, 33.519859>,  <29.003803, 35.405243, 33.824169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262186, 35.380043, 33.519859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180035, 0.955905, -0.232019,
		0.741841, 0.286839, 0.606131,
		0.645956, -0.062997, -0.760771,
		29.455973, 35.361145, 33.291630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607702, 35.965538, 33.881088>,  <29.003803, 35.405243, 33.824169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607702, 35.965538, 33.881088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451906, 35.857872, 33.528759>,  <29.358429, 35.793274, 33.317360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451906, 35.857872, 33.528759>,  <29.607702, 35.965538, 33.881088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451906, 35.857872, 33.528759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356949, 0.925717, -0.125044,
		0.849049, 0.265706, -0.456636,
		-0.389491, -0.269164, -0.880822,
		29.335058, 35.777122, 33.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895569, 36.337124, 33.400322>,  <29.607702, 35.965538, 33.881088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895569, 36.337124, 33.400322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551188, 36.232296, 33.225929>,  <29.344559, 36.169399, 33.121292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551188, 36.232296, 33.225929>,  <29.895569, 36.337124, 33.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551188, 36.232296, 33.225929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181739, 0.958978, -0.217561,
		0.475113, -0.108074, -0.873263,
		-0.860952, -0.262072, -0.435982,
		29.292902, 36.153675, 33.095135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256380, 36.839958, 32.780617>,  <29.895569, 36.337124, 33.400322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256380, 36.839958, 32.780617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579779, 36.992905, 32.601673>,  <30.773817, 37.084671, 32.494305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579779, 36.992905, 32.601673>,  <30.256380, 36.839958, 32.780617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579779, 36.992905, 32.601673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489193, -0.859233, 0.149697,
		-0.327150, -0.339876, -0.881736,
		0.808495, 0.382366, -0.447363,
		30.822327, 37.107613, 32.467464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408752, 36.580692, 32.117764>,  <30.256380, 36.839958, 32.780617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408752, 36.580692, 32.117764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732437, 36.673573, 32.333637>,  <30.926647, 36.729301, 32.463161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732437, 36.673573, 32.333637>,  <30.408752, 36.580692, 32.117764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732437, 36.673573, 32.333637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272591, -0.962116, 0.005229,
		0.520454, 0.142882, -0.841850,
		0.809210, 0.232203, 0.539686,
		30.975201, 36.743233, 32.495544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925230, 36.001987, 31.956905>,  <30.408752, 36.580692, 32.117764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925230, 36.001987, 31.956905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040640, 36.170303, 32.300926>,  <31.109886, 36.271294, 32.507339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040640, 36.170303, 32.300926>,  <30.925230, 36.001987, 31.956905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040640, 36.170303, 32.300926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490872, -0.836233, 0.244458,
		0.822069, 0.351643, -0.447828,
		0.288527, 0.420788, 0.860052,
		31.127197, 36.296539, 32.558941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643333, 35.936291, 32.043087>,  <30.925230, 36.001987, 31.956905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643333, 35.936291, 32.043087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461905, 35.949825, 32.399319>,  <31.353046, 35.957947, 32.613056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461905, 35.949825, 32.399319>,  <31.643333, 35.936291, 32.043087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461905, 35.949825, 32.399319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576503, -0.750909, 0.322149,
		0.679643, 0.659538, 0.321084,
		-0.453574, 0.033841, 0.890576,
		31.325832, 35.959976, 32.666492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115883, 36.044544, 32.615002>,  <31.643333, 35.936291, 32.043087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115883, 36.044544, 32.615002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806149, 35.807598, 32.703999>,  <31.620308, 35.665432, 32.757397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806149, 35.807598, 32.703999>,  <32.115883, 36.044544, 32.615002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806149, 35.807598, 32.703999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630591, -0.693234, 0.348973,
		-0.052478, 0.410527, 0.910337,
		-0.774339, -0.592364, 0.222495,
		31.573847, 35.629890, 32.770748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171379, 35.726200, 33.312965>,  <32.115883, 36.044544, 32.615002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171379, 35.726200, 33.312965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983057, 35.508308, 33.035370>,  <31.870066, 35.377575, 32.868813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983057, 35.508308, 33.035370>,  <32.171379, 35.726200, 33.312965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983057, 35.508308, 33.035370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560699, -0.792069, 0.241336,
		-0.681148, -0.275496, 0.678335,
		-0.470801, -0.544728, -0.693987,
		31.841816, 35.344891, 32.827175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394543, 35.209995, 32.815960>,  <32.171379, 35.726200, 33.312965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394543, 35.209995, 32.815960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587566, 35.147373, 32.471256>,  <32.703381, 35.109798, 32.264435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587566, 35.147373, 32.471256>,  <32.394543, 35.209995, 32.815960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587566, 35.147373, 32.471256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091289, 0.969546, -0.227258,
		0.871094, 0.188334, 0.453569,
		0.482557, -0.156558, -0.861759,
		32.732334, 35.100407, 32.212730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012199, 35.689438, 32.654556>,  <32.394543, 35.209995, 32.815960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012199, 35.689438, 32.654556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844757, 35.567852, 32.312241>,  <32.744293, 35.494900, 32.106850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844757, 35.567852, 32.312241>,  <33.012199, 35.689438, 32.654556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844757, 35.567852, 32.312241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097680, 0.921787, -0.375190,
		0.902901, -0.240649, -0.356170,
		-0.418603, -0.303969, -0.855789,
		32.719177, 35.476662, 32.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764084, 35.625759, 32.656216>,  <33.012199, 35.689438, 32.654556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764084, 35.625759, 32.656216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572155, 35.933430, 32.487392>,  <33.456997, 36.118031, 32.386097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572155, 35.933430, 32.487392>,  <33.764084, 35.625759, 32.656216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572155, 35.933430, 32.487392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279768, 0.321806, 0.904528,
		0.831563, 0.552095, 0.060780,
		-0.479825, 0.769176, -0.422061,
		33.428207, 36.164185, 32.360775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827969, 36.210110, 33.107960>,  <33.764084, 35.625759, 32.656216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827969, 36.210110, 33.107960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488922, 36.245140, 32.898628>,  <33.285492, 36.266159, 32.773029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488922, 36.245140, 32.898628>,  <33.827969, 36.210110, 33.107960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488922, 36.245140, 32.898628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494578, 0.226823, 0.839014,
		0.192181, 0.969991, -0.148946,
		-0.847620, 0.087577, -0.523327,
		33.234634, 36.271412, 32.741631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355556, 36.578365, 32.668163>,  <33.827969, 36.210110, 33.107960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355556, 36.578365, 32.668163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433117, 36.692589, 32.292747>,  <34.479652, 36.761124, 32.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433117, 36.692589, 32.292747>,  <34.355556, 36.578365, 32.668163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433117, 36.692589, 32.292747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161263, -0.952961, -0.256631,
		-0.967675, -0.101590, -0.230832,
		0.193903, 0.285560, -0.938540,
		34.491287, 36.778255, 32.011185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269081, 36.023327, 32.155567>,  <34.355556, 36.578365, 32.668163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269081, 36.023327, 32.155567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509956, 36.280231, 31.965883>,  <34.654480, 36.434372, 31.852074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509956, 36.280231, 31.965883>,  <34.269081, 36.023327, 32.155567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509956, 36.280231, 31.965883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444795, -0.763159, -0.468771,
		-0.662968, 0.071363, -0.745238,
		0.602188, 0.642258, -0.474208,
		34.690613, 36.472908, 31.823622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053967, 36.101151, 31.433956>,  <34.269081, 36.023327, 32.155567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053967, 36.101151, 31.433956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428940, 36.125385, 31.571093>,  <34.653923, 36.139927, 31.653374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428940, 36.125385, 31.571093>,  <34.053967, 36.101151, 31.433956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428940, 36.125385, 31.571093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277425, -0.724945, -0.630468,
		0.210346, 0.686138, -0.696398,
		0.937438, 0.060582, 0.342841,
		34.710171, 36.143559, 31.673944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295563, 36.360798, 31.280617>,  <34.053967, 36.101151, 31.433956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295563, 36.360798, 31.280617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175823, 36.728069, 31.176825>,  <33.103981, 36.948433, 31.114550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175823, 36.728069, 31.176825>,  <33.295563, 36.360798, 31.280617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175823, 36.728069, 31.176825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037444, -0.260436, -0.964765,
		-0.953408, -0.298518, 0.043581,
		-0.299350, 0.918183, -0.259480,
		33.086018, 37.003525, 31.098980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624550, 36.386772, 30.917839>,  <33.295563, 36.360798, 31.280617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624550, 36.386772, 30.917839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884163, 36.668114, 30.801874>,  <33.039928, 36.836918, 30.732296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884163, 36.668114, 30.801874>,  <32.624550, 36.386772, 30.917839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884163, 36.668114, 30.801874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252643, -0.160177, -0.954209,
		-0.717586, 0.692555, 0.073739,
		0.649031, 0.703357, -0.289910,
		33.078873, 36.879120, 30.714901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284145, 36.767292, 30.339964>,  <32.624550, 36.386772, 30.917839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284145, 36.767292, 30.339964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676174, 36.841911, 30.312675>,  <32.911392, 36.886684, 30.296303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676174, 36.841911, 30.312675>,  <32.284145, 36.767292, 30.339964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676174, 36.841911, 30.312675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033355, -0.184020, -0.982356,
		-0.195814, 0.965057, -0.174131,
		0.980074, 0.186551, -0.068223,
		32.970196, 36.897877, 30.292208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308304, 37.144508, 29.743830>,  <32.284145, 36.767292, 30.339964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308304, 37.144508, 29.743830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681713, 37.015808, 29.807093>,  <32.905758, 36.938587, 29.845051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681713, 37.015808, 29.807093>,  <32.308304, 37.144508, 29.743830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681713, 37.015808, 29.807093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076702, -0.251685, -0.964765,
		0.350219, 0.912760, -0.210274,
		0.933522, -0.321751, 0.158155,
		32.961769, 36.919281, 29.854540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666817, 37.424721, 29.227543>,  <32.308304, 37.144508, 29.743830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666817, 37.424721, 29.227543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901447, 37.117184, 29.329380>,  <33.042225, 36.932663, 29.390482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901447, 37.117184, 29.329380>,  <32.666817, 37.424721, 29.227543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901447, 37.117184, 29.329380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184430, -0.179291, -0.966354,
		0.788616, 0.613794, 0.036629,
		0.586575, -0.768838, 0.254594,
		33.077419, 36.886532, 29.405758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266895, 37.565567, 28.925396>,  <32.666817, 37.424721, 29.227543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266895, 37.565567, 28.925396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271896, 37.170689, 28.989006>,  <33.274899, 36.933762, 29.027172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271896, 37.170689, 28.989006>,  <33.266895, 37.565567, 28.925396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271896, 37.170689, 28.989006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291768, -0.148515, -0.944889,
		0.956407, 0.058211, 0.286176,
		0.012502, -0.987195, 0.159025,
		33.275646, 36.874531, 29.036713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864216, 37.310425, 28.596457>,  <33.266895, 37.565567, 28.925396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864216, 37.310425, 28.596457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657547, 36.973629, 28.658556>,  <33.533546, 36.771553, 28.695816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657547, 36.973629, 28.658556>,  <33.864216, 37.310425, 28.596457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657547, 36.973629, 28.658556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420973, -0.407724, -0.810274,
		0.745539, -0.353294, 0.565115,
		-0.516676, -0.841989, 0.155247,
		33.502544, 36.721031, 28.705130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311832, 36.731861, 28.421181>,  <33.864216, 37.310425, 28.596457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311832, 36.731861, 28.421181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942585, 36.578053, 28.422178>,  <33.721039, 36.485767, 28.422777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942585, 36.578053, 28.422178>,  <34.311832, 36.731861, 28.421181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942585, 36.578053, 28.422178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231461, -0.560822, -0.794924,
		0.307060, -0.733229, 0.606704,
		-0.923115, -0.384517, 0.002492,
		33.665649, 36.462696, 28.422926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355602, 36.040352, 28.446707>,  <34.311832, 36.731861, 28.421181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355602, 36.040352, 28.446707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005756, 36.121651, 28.270641>,  <33.795849, 36.170429, 28.165003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005756, 36.121651, 28.270641>,  <34.355602, 36.040352, 28.446707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005756, 36.121651, 28.270641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287466, -0.513679, -0.808392,
		-0.390402, -0.833562, 0.390845,
		-0.874613, 0.203243, -0.440162,
		33.743374, 36.182625, 28.138592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185234, 35.399120, 28.065428>,  <34.355602, 36.040352, 28.446707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185234, 35.399120, 28.065428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940926, 35.673756, 27.907665>,  <33.794342, 35.838539, 27.813007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940926, 35.673756, 27.907665>,  <34.185234, 35.399120, 28.065428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940926, 35.673756, 27.907665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127985, -0.405952, -0.904888,
		-0.781397, -0.603156, 0.160069,
		-0.610769, 0.686591, -0.394404,
		33.757694, 35.879734, 27.789345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721031, 35.084969, 27.664877>,  <34.185234, 35.399120, 28.065428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721031, 35.084969, 27.664877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732365, 35.457989, 27.520906>,  <33.739166, 35.681801, 27.434525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732365, 35.457989, 27.520906>,  <33.721031, 35.084969, 27.664877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732365, 35.457989, 27.520906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141534, -0.360188, -0.922081,
		-0.989528, -0.024817, -0.142193,
		0.028332, 0.932550, -0.359928,
		33.740864, 35.737755, 27.412928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249722, 35.083191, 27.101271>,  <33.721031, 35.084969, 27.664877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249722, 35.083191, 27.101271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452961, 35.420086, 27.029194>,  <33.574905, 35.622223, 26.985949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452961, 35.420086, 27.029194>,  <33.249722, 35.083191, 27.101271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452961, 35.420086, 27.029194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015795, -0.218286, -0.975757,
		-0.861153, 0.492937, -0.124215,
		0.508101, 0.842238, -0.180192,
		33.605392, 35.672756, 26.975136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980339, 35.298985, 26.493929>,  <33.249722, 35.083191, 27.101271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980339, 35.298985, 26.493929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337540, 35.477905, 26.513802>,  <33.551861, 35.585258, 26.525724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337540, 35.477905, 26.513802>,  <32.980339, 35.298985, 26.493929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337540, 35.477905, 26.513802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071771, -0.032560, -0.996890,
		-0.444294, 0.893789, -0.061179,
		0.893001, 0.447303, 0.049682,
		33.605438, 35.612095, 26.528706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936920, 35.793339, 25.953995>,  <32.980339, 35.298985, 26.493929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936920, 35.793339, 25.953995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325199, 35.748466, 26.039003>,  <33.558167, 35.721542, 26.090008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325199, 35.748466, 26.039003>,  <32.936920, 35.793339, 25.953995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325199, 35.748466, 26.039003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209150, -0.041141, -0.977018,
		0.118342, 0.992836, -0.016473,
		0.970696, -0.112177, 0.212520,
		33.616409, 35.714813, 26.102760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298885, 36.192738, 25.495779>,  <32.936920, 35.793339, 25.953995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298885, 36.192738, 25.495779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625107, 35.995941, 25.617647>,  <33.820839, 35.877865, 25.690769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625107, 35.995941, 25.617647>,  <33.298885, 36.192738, 25.495779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625107, 35.995941, 25.617647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293482, -0.102114, -0.950495,
		0.498743, 0.864593, 0.061110,
		0.815551, -0.491988, 0.304671,
		33.869774, 35.848343, 25.709049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771671, 36.474083, 25.159113>,  <33.298885, 36.192738, 25.495779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771671, 36.474083, 25.159113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908360, 36.109669, 25.251415>,  <33.990372, 35.891022, 25.306797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908360, 36.109669, 25.251415>,  <33.771671, 36.474083, 25.159113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908360, 36.109669, 25.251415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377107, -0.091984, -0.921591,
		0.860826, 0.401943, 0.312124,
		0.341716, -0.911033, 0.230757,
		34.010876, 35.836357, 25.320642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459576, 36.397438, 24.954811>,  <33.771671, 36.474083, 25.159113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459576, 36.397438, 24.954811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368008, 36.009727, 24.990797>,  <34.313068, 35.777100, 25.012388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368008, 36.009727, 24.990797>,  <34.459576, 36.397438, 24.954811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368008, 36.009727, 24.990797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206793, -0.138732, -0.968499,
		0.951227, -0.203103, 0.232199,
		-0.228919, -0.969280, 0.089966,
		34.299332, 35.718945, 25.017786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055317, 36.037533, 24.726873>,  <34.459576, 36.397438, 24.954811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055317, 36.037533, 24.726873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772354, 35.755257, 24.711000>,  <34.602577, 35.585892, 24.701477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772354, 35.755257, 24.711000>,  <35.055317, 36.037533, 24.726873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772354, 35.755257, 24.711000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323025, -0.272851, -0.906205,
		0.628672, -0.653876, 0.420972,
		-0.707409, -0.705690, -0.039685,
		34.560131, 35.543549, 24.699095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408646, 35.459000, 24.462976>,  <35.055317, 36.037533, 24.726873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408646, 35.459000, 24.462976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025818, 35.368084, 24.391022>,  <34.796120, 35.313534, 24.347849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025818, 35.368084, 24.391022>,  <35.408646, 35.459000, 24.462976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025818, 35.368084, 24.391022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263826, -0.426022, -0.865391,
		0.120058, -0.875697, 0.467697,
		-0.957069, -0.227288, -0.179885,
		34.738697, 35.299896, 24.337057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286907, 34.666008, 24.391165>,  <35.408646, 35.459000, 24.462976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286907, 34.666008, 24.391165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006187, 34.865417, 24.187618>,  <34.837753, 34.985062, 24.065491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006187, 34.865417, 24.187618>,  <35.286907, 34.666008, 24.391165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006187, 34.865417, 24.187618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283053, -0.460376, -0.841389,
		-0.653723, -0.734526, 0.181985,
		-0.701803, 0.498524, -0.508868,
		34.795647, 35.014973, 24.034958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026897, 34.157707, 23.947092>,  <35.286907, 34.666008, 24.391165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026897, 34.157707, 23.947092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928684, 34.513569, 23.793093>,  <34.869755, 34.727085, 23.700693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928684, 34.513569, 23.793093>,  <35.026897, 34.157707, 23.947092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928684, 34.513569, 23.793093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109653, -0.369119, -0.922891,
		-0.963166, -0.268818, -0.006922,
		-0.245534, 0.889656, -0.385000,
		34.855022, 34.780464, 23.677593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566002, 33.968037, 23.470369>,  <35.026897, 34.157707, 23.947092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566002, 33.968037, 23.470369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648846, 34.348457, 23.378630>,  <34.698551, 34.576710, 23.323586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648846, 34.348457, 23.378630>,  <34.566002, 33.968037, 23.470369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648846, 34.348457, 23.378630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097562, -0.253340, -0.962445,
		-0.973441, 0.176955, -0.145256,
		0.207109, 0.951055, -0.229348,
		34.710979, 34.633774, 23.309826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115097, 34.067806, 22.896065>,  <34.566002, 33.968037, 23.470369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115097, 34.067806, 22.896065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415947, 34.330673, 22.876324>,  <34.596458, 34.488392, 22.864479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415947, 34.330673, 22.876324>,  <34.115097, 34.067806, 22.896065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415947, 34.330673, 22.876324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243956, -0.347207, -0.905501,
		-0.612201, 0.669013, -0.421464,
		0.752127, 0.657167, -0.049351,
		34.641586, 34.527824, 22.861519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084602, 34.376839, 22.207939>,  <34.115097, 34.067806, 22.896065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084602, 34.376839, 22.207939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454399, 34.466270, 22.331436>,  <34.676277, 34.519928, 22.405535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454399, 34.466270, 22.331436>,  <34.084602, 34.376839, 22.207939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454399, 34.466270, 22.331436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376055, -0.402358, -0.834680,
		-0.062390, 0.887762, -0.456055,
		0.924495, 0.223578, 0.308744,
		34.731747, 34.533344, 22.424059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369568, 35.110813, 21.806700>,  <34.084602, 34.376839, 22.207939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369568, 35.110813, 21.806700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635792, 34.849270, 21.950640>,  <34.795525, 34.692345, 22.037004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635792, 34.849270, 21.950640>,  <34.369568, 35.110813, 21.806700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635792, 34.849270, 21.950640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449280, -0.034001, -0.892744,
		0.595967, 0.755849, 0.271137,
		0.665560, -0.653863, 0.359851,
		34.835461, 34.653111, 22.058596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999840, 35.211834, 21.476166>,  <34.369568, 35.110813, 21.806700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999840, 35.211834, 21.476166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091949, 34.851017, 21.622200>,  <35.147217, 34.634525, 21.709820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091949, 34.851017, 21.622200>,  <34.999840, 35.211834, 21.476166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091949, 34.851017, 21.622200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306291, -0.288914, -0.907036,
		0.923666, 0.320690, 0.209759,
		0.230275, -0.902046, 0.365085,
		35.161034, 34.580402, 21.731726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723995, 35.092659, 21.237501>,  <34.999840, 35.211834, 21.476166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723995, 35.092659, 21.237501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569008, 34.736618, 21.333487>,  <35.476017, 34.522995, 21.391077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569008, 34.736618, 21.333487>,  <35.723995, 35.092659, 21.237501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569008, 34.736618, 21.333487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413525, -0.400455, -0.817700,
		0.823933, -0.217602, 0.523244,
		-0.387469, -0.890104, 0.239964,
		35.452766, 34.469585, 21.405476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228020, 34.668594, 21.183886>,  <35.723995, 35.092659, 21.237501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228020, 34.668594, 21.183886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911446, 34.426418, 21.150255>,  <35.721500, 34.281113, 21.130077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911446, 34.426418, 21.150255>,  <36.228020, 34.668594, 21.183886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911446, 34.426418, 21.150255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443818, -0.474606, -0.760115,
		0.420303, -0.638897, 0.644326,
		-0.791436, -0.605442, -0.084075,
		35.674015, 34.244785, 21.125032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544117, 33.916740, 21.076164>,  <36.228020, 34.668594, 21.183886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544117, 33.916740, 21.076164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167763, 33.927860, 20.941133>,  <35.941948, 33.934532, 20.860115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167763, 33.927860, 20.941133>,  <36.544117, 33.916740, 21.076164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167763, 33.927860, 20.941133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252371, -0.607195, -0.753408,
		-0.225919, -0.794067, 0.564287,
		-0.940888, 0.027799, -0.337576,
		35.885498, 33.936199, 20.839861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510895, 33.387440, 20.759903>,  <36.544117, 33.916740, 21.076164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510895, 33.387440, 20.759903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187931, 33.560623, 20.599583>,  <35.994152, 33.664532, 20.503389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187931, 33.560623, 20.599583>,  <36.510895, 33.387440, 20.759903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187931, 33.560623, 20.599583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201118, -0.436673, -0.876851,
		-0.554660, -0.788583, 0.265496,
		-0.807405, 0.432959, -0.400803,
		35.945709, 33.690510, 20.479342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135818, 32.874439, 20.428240>,  <36.510895, 33.387440, 20.759903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135818, 32.874439, 20.428240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065552, 33.221977, 20.243093>,  <36.023392, 33.430500, 20.132006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065552, 33.221977, 20.243093>,  <36.135818, 32.874439, 20.428240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065552, 33.221977, 20.243093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043377, -0.462889, -0.885354,
		-0.983493, -0.175605, 0.043627,
		-0.175667, 0.868848, -0.462866,
		36.012852, 33.482632, 20.104235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935650, 32.626736, 19.879940>,  <36.135818, 32.874439, 20.428240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935650, 32.626736, 19.879940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973240, 33.002502, 19.748083>,  <35.995792, 33.227962, 19.668968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973240, 33.002502, 19.748083>,  <35.935650, 32.626736, 19.879940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973240, 33.002502, 19.748083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323065, -0.341965, -0.882434,
		-0.941699, -0.023568, -0.335629,
		0.093976, 0.939417, -0.329642,
		36.001434, 33.284328, 19.649191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509209, 32.663525, 19.317577>,  <35.935650, 32.626736, 19.879940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509209, 32.663525, 19.317577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783249, 32.952515, 19.280354>,  <35.947674, 33.125908, 19.258020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783249, 32.952515, 19.280354>,  <35.509209, 32.663525, 19.317577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783249, 32.952515, 19.280354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154414, -0.268883, -0.950714,
		-0.711891, 0.636969, -0.295774,
		0.685104, 0.722477, -0.093058,
		35.988781, 33.169258, 19.252436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501698, 32.912712, 18.629990>,  <35.509209, 32.663525, 19.317577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501698, 32.912712, 18.629990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859421, 33.058617, 18.733652>,  <36.074055, 33.146160, 18.795849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859421, 33.058617, 18.733652>,  <35.501698, 32.912712, 18.629990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859421, 33.058617, 18.733652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334712, -0.160968, -0.928470,
		-0.296958, 0.917080, -0.266046,
		0.894306, 0.364766, 0.259157,
		36.127712, 33.168045, 18.811399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687130, 33.379616, 18.039841>,  <35.501698, 32.912712, 18.629990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687130, 33.379616, 18.039841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032959, 33.309639, 18.228270>,  <36.240456, 33.267651, 18.341326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032959, 33.309639, 18.228270>,  <35.687130, 33.379616, 18.039841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032959, 33.309639, 18.228270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427046, -0.238286, -0.872268,
		0.264847, 0.955309, -0.131307,
		0.864574, -0.174944, 0.471070,
		36.292332, 33.257156, 18.369591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197983, 33.711262, 17.560059>,  <35.687130, 33.379616, 18.039841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197983, 33.711262, 17.560059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408401, 33.458294, 17.787506>,  <36.534653, 33.306515, 17.923975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408401, 33.458294, 17.787506>,  <36.197983, 33.711262, 17.560059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408401, 33.458294, 17.787506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552461, -0.254207, -0.793830,
		0.646576, 0.731731, 0.215660,
		0.526048, -0.632415, 0.568617,
		36.566216, 33.268570, 17.958092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835770, 33.965519, 17.535902>,  <36.197983, 33.711262, 17.560059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835770, 33.965519, 17.535902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901951, 33.592865, 17.665323>,  <36.941658, 33.369274, 17.742975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901951, 33.592865, 17.665323>,  <36.835770, 33.965519, 17.535902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901951, 33.592865, 17.665323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508765, -0.200422, -0.837251,
		0.844858, 0.303135, 0.440823,
		0.165449, -0.931633, 0.323553,
		36.951584, 33.313374, 17.762388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582085, 33.835732, 17.453934>,  <36.835770, 33.965519, 17.535902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582085, 33.835732, 17.453934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413422, 33.473034, 17.452616>,  <37.312225, 33.255413, 17.451826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413422, 33.473034, 17.452616>,  <37.582085, 33.835732, 17.453934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413422, 33.473034, 17.452616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487676, -0.223716, -0.843874,
		0.764445, -0.357433, 0.536531,
		-0.421659, -0.906749, -0.003293,
		37.286922, 33.201008, 17.451628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137100, 33.417789, 17.450537>,  <37.582085, 33.835732, 17.453934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137100, 33.417789, 17.450537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824841, 33.231266, 17.284098>,  <37.637486, 33.119350, 17.184235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824841, 33.231266, 17.284098>,  <38.137100, 33.417789, 17.450537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824841, 33.231266, 17.284098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579760, -0.291726, -0.760772,
		0.233370, -0.835135, 0.498085,
		-0.780651, -0.466311, -0.416098,
		37.590645, 33.091373, 17.159267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424541, 32.807636, 17.114126>,  <38.137100, 33.417789, 17.450537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424541, 32.807636, 17.114126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058170, 32.827286, 16.954794>,  <37.838348, 32.839077, 16.859194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058170, 32.827286, 16.954794>,  <38.424541, 32.807636, 17.114126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058170, 32.827286, 16.954794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378232, -0.226324, -0.897618,
		-0.134247, -0.972813, 0.188716,
		-0.915925, 0.049124, -0.398332,
		37.783394, 32.842022, 16.835295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236698, 32.061344, 16.765783>,  <38.424541, 32.807636, 17.114126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236698, 32.061344, 16.765783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028217, 32.366142, 16.612053>,  <37.903130, 32.549023, 16.519814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028217, 32.366142, 16.612053>,  <38.236698, 32.061344, 16.765783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028217, 32.366142, 16.612053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432894, -0.152047, -0.888529,
		-0.735491, -0.629479, -0.250616,
		-0.521205, 0.761995, -0.384327,
		37.871857, 32.594742, 16.496756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040848, 31.771772, 16.167219>,  <38.236698, 32.061344, 16.765783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040848, 31.771772, 16.167219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979965, 32.165108, 16.127453>,  <37.943436, 32.401108, 16.103594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979965, 32.165108, 16.127453>,  <38.040848, 31.771772, 16.167219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979965, 32.165108, 16.127453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243941, -0.060099, -0.967926,
		-0.957771, -0.171576, -0.230729,
		-0.152206, 0.983336, -0.099415,
		37.934303, 32.460110, 16.097628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693073, 31.783806, 15.621664>,  <38.040848, 31.771772, 16.167219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693073, 31.783806, 15.621664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815201, 32.163658, 15.649914>,  <37.888477, 32.391567, 15.666863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815201, 32.163658, 15.649914>,  <37.693073, 31.783806, 15.621664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815201, 32.163658, 15.649914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262985, -0.012805, -0.964715,
		-0.915216, 0.313116, -0.253647,
		0.305316, 0.949628, 0.070625,
		37.906796, 32.448547, 15.671102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495411, 32.004879, 15.011338>,  <37.693073, 31.783806, 15.621664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495411, 32.004879, 15.011338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763279, 32.279099, 15.125577>,  <37.924000, 32.443630, 15.194120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763279, 32.279099, 15.125577>,  <37.495411, 32.004879, 15.011338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763279, 32.279099, 15.125577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416991, -0.028877, -0.908452,
		-0.614539, 0.727455, -0.305205,
		0.669671, 0.685547, 0.285596,
		37.964180, 32.484764, 15.211256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462307, 32.541523, 14.595945>,  <37.495411, 32.004879, 15.011338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462307, 32.541523, 14.595945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840492, 32.538788, 14.726210>,  <38.067402, 32.537148, 14.804368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840492, 32.538788, 14.726210>,  <37.462307, 32.541523, 14.595945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840492, 32.538788, 14.726210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323696, -0.091891, -0.941688,
		0.036363, 0.995746, -0.084667,
		0.945462, -0.006836, 0.325660,
		38.124130, 32.536736, 14.823908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788692, 32.815853, 14.038620>,  <37.462307, 32.541523, 14.595945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788692, 32.815853, 14.038620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115101, 32.722569, 14.250175>,  <38.310947, 32.666599, 14.377107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115101, 32.722569, 14.250175>,  <37.788692, 32.815853, 14.038620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115101, 32.722569, 14.250175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367430, -0.497054, -0.786087,
		0.446209, 0.835793, -0.319919,
		0.816023, -0.233211, 0.528885,
		38.359909, 32.652607, 14.408840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321495, 33.037609, 13.643305>,  <37.788692, 32.815853, 14.038620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321495, 33.037609, 13.643305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437115, 32.732334, 13.874476>,  <38.506485, 32.549171, 14.013180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437115, 32.732334, 13.874476>,  <38.321495, 33.037609, 13.643305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437115, 32.732334, 13.874476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343309, -0.480905, -0.806764,
		0.893638, 0.431602, 0.123003,
		0.289048, -0.763184, 0.577929,
		38.523830, 32.503380, 14.047855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609585, 33.722382, 13.646130>,  <38.321495, 33.037609, 13.643305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609585, 33.722382, 13.646130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880024, 33.518162, 13.858631>,  <39.042286, 33.395630, 13.986132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880024, 33.518162, 13.858631>,  <38.609585, 33.722382, 13.646130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880024, 33.518162, 13.858631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264026, 0.505264, 0.821583,
		-0.687882, -0.695736, 0.206810,
		0.676098, -0.510549, 0.531254,
		39.082855, 33.364998, 14.018007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957474, 33.716110, 13.023063>,  <38.609585, 33.722382, 13.646130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957474, 33.716110, 13.023063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882729, 34.072540, 12.857624>,  <38.837879, 34.286400, 12.758361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882729, 34.072540, 12.857624>,  <38.957474, 33.716110, 13.023063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882729, 34.072540, 12.857624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696654, 0.417040, 0.583739,
		0.692642, -0.179052, -0.698704,
		-0.186868, 0.891077, -0.413597,
		38.826668, 34.339863, 12.733545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519150, 33.956581, 12.601155>,  <38.957474, 33.716110, 13.023063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519150, 33.956581, 12.601155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316277, 34.254139, 12.775226>,  <39.194553, 34.432674, 12.879668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316277, 34.254139, 12.775226>,  <39.519150, 33.956581, 12.601155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316277, 34.254139, 12.775226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820763, 0.262891, 0.507186,
		0.262891, 0.614413, -0.743898,
		-0.507186, 0.743898, 0.435176,
		39.164120, 34.477310, 12.905778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874378, 34.607563, 12.452159>,  <39.519150, 33.956581, 12.601155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874378, 34.607563, 12.452159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661049, 34.584442, 12.789732>,  <39.533051, 34.570568, 12.992276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661049, 34.584442, 12.789732>,  <39.874378, 34.607563, 12.452159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661049, 34.584442, 12.789732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845897, -0.041972, 0.531693,
		0.004687, 0.997445, 0.071281,
		-0.533326, -0.057805, 0.843932,
		39.501053, 34.567101, 13.042912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016815, 35.186718, 12.978276>,  <39.874378, 34.607563, 12.452159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016815, 35.186718, 12.978276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881500, 34.866791, 13.176611>,  <39.800312, 34.674835, 13.295611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881500, 34.866791, 13.176611>,  <40.016815, 35.186718, 12.978276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881500, 34.866791, 13.176611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787633, 0.047687, 0.614297,
		-0.514970, 0.598348, 0.613829,
		-0.338291, -0.799816, 0.495836,
		39.780014, 34.626846, 13.325362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087627, 35.331821, 13.706224>,  <40.016815, 35.186718, 12.978276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087627, 35.331821, 13.706224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090015, 34.946629, 13.598421>,  <40.091450, 34.715515, 13.533739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090015, 34.946629, 13.598421>,  <40.087627, 35.331821, 13.706224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090015, 34.946629, 13.598421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759212, -0.171040, 0.627967,
		-0.650816, -0.208364, 0.730085,
		0.005972, -0.962980, -0.269508,
		40.091808, 34.657734, 13.517569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296379, 35.050331, 14.392647>,  <40.087627, 35.331821, 13.706224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296379, 35.050331, 14.392647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927689, 34.895203, 14.391695>,  <39.706474, 34.802124, 14.391124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927689, 34.895203, 14.391695>,  <40.296379, 35.050331, 14.392647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927689, 34.895203, 14.391695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244176, 0.575539, 0.780470,
		-0.301315, 0.719964, -0.625189,
		-0.921731, -0.387823, -0.002379,
		39.651169, 34.778854, 14.390982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734390, 35.657608, 14.419185>,  <40.296379, 35.050331, 14.392647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734390, 35.657608, 14.419185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622349, 35.305599, 14.572600>,  <39.555122, 35.094395, 14.664650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622349, 35.305599, 14.572600>,  <39.734390, 35.657608, 14.419185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622349, 35.305599, 14.572600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305645, 0.460497, 0.833381,
		-0.910012, 0.116208, -0.397962,
		-0.280106, -0.880021, 0.383540,
		39.538319, 35.041592, 14.687662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096767, 35.798622, 14.614752>,  <39.734390, 35.657608, 14.419185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096767, 35.798622, 14.614752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185600, 35.470974, 14.826305>,  <39.238899, 35.274384, 14.953238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185600, 35.470974, 14.826305>,  <39.096767, 35.798622, 14.614752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185600, 35.470974, 14.826305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198307, 0.493146, 0.847043,
		-0.954649, -0.292991, -0.052921,
		0.222078, -0.819123, 0.528884,
		39.252224, 35.225239, 14.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532364, 35.880909, 15.143397>,  <39.096767, 35.798622, 14.614752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532364, 35.880909, 15.143397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828331, 35.647930, 15.278024>,  <39.005913, 35.508144, 15.358800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828331, 35.647930, 15.278024>,  <38.532364, 35.880909, 15.143397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828331, 35.647930, 15.278024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172780, 0.318993, 0.931875,
		-0.650126, -0.747666, 0.135395,
		0.739921, -0.582443, 0.336567,
		39.050308, 35.473198, 15.378994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304348, 35.665680, 15.692347>,  <38.532364, 35.880909, 15.143397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304348, 35.665680, 15.692347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681004, 35.543007, 15.747863>,  <38.906998, 35.469402, 15.781173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681004, 35.543007, 15.747863>,  <38.304348, 35.665680, 15.692347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681004, 35.543007, 15.747863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082677, 0.188972, 0.978496,
		-0.326315, -0.932864, 0.152588,
		0.941639, -0.306683, 0.138790,
		38.963493, 35.451004, 15.789500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308468, 35.110992, 16.203794>,  <38.304348, 35.665680, 15.692347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308468, 35.110992, 16.203794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653687, 35.312519, 16.189228>,  <38.860817, 35.433434, 16.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653687, 35.312519, 16.189228>,  <38.308468, 35.110992, 16.203794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653687, 35.312519, 16.189228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089522, 0.223508, 0.970582,
		0.497134, -0.834395, 0.237999,
		0.863044, 0.503816, -0.036417,
		38.912601, 35.463665, 16.178303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564106, 35.017139, 16.855587>,  <38.308468, 35.110992, 16.203794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564106, 35.017139, 16.855587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776165, 35.327244, 16.718233>,  <38.903400, 35.513306, 16.635820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776165, 35.327244, 16.718233>,  <38.564106, 35.017139, 16.855587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776165, 35.327244, 16.718233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046920, 0.377534, 0.924806,
		0.846609, -0.506391, 0.163772,
		0.530143, 0.775265, -0.343383,
		38.935207, 35.559822, 16.615217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134727, 35.071056, 17.262733>,  <38.564106, 35.017139, 16.855587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134727, 35.071056, 17.262733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083572, 35.437580, 17.110931>,  <39.052879, 35.657494, 17.019850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083572, 35.437580, 17.110931>,  <39.134727, 35.071056, 17.262733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083572, 35.437580, 17.110931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072564, 0.390266, 0.917838,
		0.989131, 0.089842, -0.116401,
		-0.127888, 0.916308, -0.379504,
		39.045204, 35.712471, 16.997080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451820, 35.436195, 17.756342>,  <39.134727, 35.071056, 17.262733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451820, 35.436195, 17.756342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285778, 35.732204, 17.544659>,  <39.186153, 35.909809, 17.417648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285778, 35.732204, 17.544659>,  <39.451820, 35.436195, 17.756342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285778, 35.732204, 17.544659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077225, 0.550931, 0.830970,
		0.906490, 0.385808, -0.171547,
		-0.415106, 0.740018, -0.529207,
		39.161247, 35.954208, 17.385897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833862, 36.028793, 17.875530>,  <39.451820, 35.436195, 17.756342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833862, 36.028793, 17.875530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463062, 36.139263, 17.774029>,  <39.240582, 36.205544, 17.713127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463062, 36.139263, 17.774029>,  <39.833862, 36.028793, 17.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463062, 36.139263, 17.774029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105653, 0.456896, 0.883223,
		0.359862, 0.845561, -0.394366,
		-0.927004, 0.276173, -0.253756,
		39.184959, 36.222115, 17.697903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739067, 36.765003, 18.064188>,  <39.833862, 36.028793, 17.875530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739067, 36.765003, 18.064188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374615, 36.609642, 18.009071>,  <39.155945, 36.516426, 17.976002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374615, 36.609642, 18.009071>,  <39.739067, 36.765003, 18.064188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374615, 36.609642, 18.009071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298305, 0.390851, 0.870776,
		-0.284355, 0.834493, -0.471978,
		-0.911129, -0.388403, -0.137793,
		39.101276, 36.493122, 17.967733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314682, 37.281113, 18.162268>,  <39.739067, 36.765003, 18.064188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314682, 37.281113, 18.162268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113667, 36.945023, 18.243736>,  <38.993057, 36.743370, 18.292618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113667, 36.945023, 18.243736>,  <39.314682, 37.281113, 18.162268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113667, 36.945023, 18.243736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153022, 0.318304, 0.935557,
		-0.850905, 0.438988, -0.288532,
		-0.502539, -0.840221, 0.203672,
		38.962906, 36.692955, 18.304838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706432, 37.462181, 18.534439>,  <39.314682, 37.281113, 18.162268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706432, 37.462181, 18.534439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760803, 37.075142, 18.619549>,  <38.793427, 36.842918, 18.670614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760803, 37.075142, 18.619549>,  <38.706432, 37.462181, 18.534439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760803, 37.075142, 18.619549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404351, 0.141881, 0.903532,
		-0.904447, -0.208850, -0.371965,
		0.135928, -0.967601, 0.212772,
		38.801582, 36.784863, 18.683380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092335, 37.360035, 18.887302>,  <38.706432, 37.462181, 18.534439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092335, 37.360035, 18.887302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371037, 37.089905, 18.984024>,  <38.538258, 36.927826, 19.042057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371037, 37.089905, 18.984024>,  <38.092335, 37.360035, 18.887302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371037, 37.089905, 18.984024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413872, -0.103147, 0.904473,
		-0.585875, -0.730268, -0.351367,
		0.696750, -0.675329, 0.241806,
		38.580063, 36.887306, 19.056566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738647, 36.878601, 19.093605>,  <38.092335, 37.360035, 18.887302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738647, 36.878601, 19.093605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089069, 36.797867, 19.268780>,  <38.299324, 36.749428, 19.373884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089069, 36.797867, 19.268780>,  <37.738647, 36.878601, 19.093605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089069, 36.797867, 19.268780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448966, -0.010030, 0.893492,
		-0.175947, -0.979368, -0.099405,
		0.876055, -0.201836, 0.437938,
		38.351887, 36.737316, 19.400162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539684, 36.391632, 19.664454>,  <37.738647, 36.878601, 19.093605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539684, 36.391632, 19.664454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920204, 36.478859, 19.751610>,  <38.148518, 36.531197, 19.803904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920204, 36.478859, 19.751610>,  <37.539684, 36.391632, 19.664454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920204, 36.478859, 19.751610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215078, -0.036856, 0.975901,
		0.220847, -0.975237, 0.011842,
		0.951298, 0.218072, 0.217892,
		38.205593, 36.544281, 19.816977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729221, 35.899834, 20.195353>,  <37.539684, 36.391632, 19.664454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729221, 35.899834, 20.195353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974220, 36.213387, 20.236099>,  <38.121220, 36.401520, 20.260548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974220, 36.213387, 20.236099>,  <37.729221, 35.899834, 20.195353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974220, 36.213387, 20.236099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042108, -0.096329, 0.994458,
		0.789352, -0.613390, -0.025994,
		0.612495, 0.783883, 0.101866,
		38.157970, 36.448551, 20.266659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354000, 35.741207, 20.689386>,  <37.729221, 35.899834, 20.195353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354000, 35.741207, 20.689386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314060, 36.138847, 20.706367>,  <38.290096, 36.377430, 20.716557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314060, 36.138847, 20.706367>,  <38.354000, 35.741207, 20.689386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314060, 36.138847, 20.706367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160703, -0.058220, 0.985284,
		0.981939, 0.091557, 0.165567,
		-0.099849, 0.994096, 0.042455,
		38.284107, 36.437077, 20.719105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848591, 36.001320, 21.213993>,  <38.354000, 35.741207, 20.689386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848591, 36.001320, 21.213993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555202, 36.268272, 21.162422>,  <38.379169, 36.428444, 21.131479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555202, 36.268272, 21.162422>,  <38.848591, 36.001320, 21.213993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555202, 36.268272, 21.162422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019316, 0.169131, 0.985404,
		0.679450, 0.725252, -0.111161,
		-0.733468, 0.667386, -0.128925,
		38.335163, 36.468487, 21.123745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023823, 36.455910, 21.822563>,  <38.848591, 36.001320, 21.213993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023823, 36.455910, 21.822563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671837, 36.582653, 21.680992>,  <38.460648, 36.658699, 21.596048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671837, 36.582653, 21.680992>,  <39.023823, 36.455910, 21.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671837, 36.582653, 21.680992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264863, 0.291235, 0.919255,
		0.394354, 0.902652, -0.172351,
		-0.879962, 0.316862, -0.353929,
		38.407848, 36.677711, 21.574814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874039, 37.109474, 22.204969>,  <39.023823, 36.455910, 21.822563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874039, 37.109474, 22.204969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540943, 36.940296, 22.062052>,  <38.341084, 36.838791, 21.976301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540943, 36.940296, 22.062052>,  <38.874039, 37.109474, 22.204969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540943, 36.940296, 22.062052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504592, 0.314151, 0.804174,
		-0.227876, 0.849958, -0.475021,
		-0.832742, -0.422944, -0.357295,
		38.291122, 36.813412, 21.954863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356216, 37.592449, 22.078650>,  <38.874039, 37.109474, 22.204969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356216, 37.592449, 22.078650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121502, 37.270161, 22.110899>,  <37.980675, 37.076786, 22.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121502, 37.270161, 22.110899>,  <38.356216, 37.592449, 22.078650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121502, 37.270161, 22.110899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406545, 0.379246, 0.831200,
		-0.700292, 0.454957, -0.550096,
		-0.586782, -0.805721, 0.080623,
		37.945469, 37.028442, 22.135086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627258, 37.784298, 22.340389>,  <38.356216, 37.592449, 22.078650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627258, 37.784298, 22.340389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658894, 37.394478, 22.424288>,  <37.677876, 37.160587, 22.474627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658894, 37.394478, 22.424288>,  <37.627258, 37.784298, 22.340389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658894, 37.394478, 22.424288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398920, 0.161882, 0.902584,
		-0.913569, -0.155059, -0.375964,
		0.079092, -0.974552, 0.209747,
		37.682621, 37.102112, 22.487211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087029, 37.648403, 22.602146>,  <37.627258, 37.784298, 22.340389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087029, 37.648403, 22.602146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313499, 37.348907, 22.740034>,  <37.449383, 37.169209, 22.822767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313499, 37.348907, 22.740034>,  <37.087029, 37.648403, 22.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313499, 37.348907, 22.740034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480344, 0.040159, 0.876161,
		-0.669859, -0.661648, -0.336914,
		0.566180, -0.748739, 0.344720,
		37.483353, 37.124287, 22.843451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637997, 37.199623, 22.858232>,  <37.087029, 37.648403, 22.602146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637997, 37.199623, 22.858232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978970, 37.072613, 23.024380>,  <37.183556, 36.996407, 23.124067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978970, 37.072613, 23.024380>,  <36.637997, 37.199623, 22.858232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978970, 37.072613, 23.024380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456068, -0.063126, 0.887703,
		-0.255654, -0.946144, -0.198627,
		0.852433, -0.317532, 0.415368,
		37.234699, 36.977352, 23.148991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464439, 36.842003, 23.411198>,  <36.637997, 37.199623, 22.858232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464439, 36.842003, 23.411198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849415, 36.865753, 23.517172>,  <37.080399, 36.880005, 23.580757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849415, 36.865753, 23.517172>,  <36.464439, 36.842003, 23.411198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849415, 36.865753, 23.517172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266500, 0.020048, 0.963626,
		0.051911, -0.998034, 0.035120,
		0.962436, 0.059383, 0.264936,
		37.138145, 36.883568, 23.596653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703640, 36.254768, 23.921432>,  <36.464439, 36.842003, 23.411198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703640, 36.254768, 23.921432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948318, 36.567032, 23.972673>,  <37.095123, 36.754391, 24.003418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948318, 36.567032, 23.972673>,  <36.703640, 36.254768, 23.921432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948318, 36.567032, 23.972673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151855, -0.043054, 0.987465,
		0.776385, -0.623477, 0.092210,
		0.611692, 0.780655, 0.128104,
		37.131824, 36.801228, 24.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057739, 36.176971, 24.621660>,  <36.703640, 36.254768, 23.921432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057739, 36.176971, 24.621660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128853, 36.559834, 24.530233>,  <37.171520, 36.789551, 24.475378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128853, 36.559834, 24.530233>,  <37.057739, 36.176971, 24.621660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128853, 36.559834, 24.530233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162648, 0.257653, 0.952450,
		0.970535, -0.132156, 0.201487,
		0.177786, 0.957157, -0.228566,
		37.182190, 36.846981, 24.461664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450943, 36.386665, 25.120781>,  <37.057739, 36.176971, 24.621660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450943, 36.386665, 25.120781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271801, 36.713516, 24.975607>,  <37.164314, 36.909626, 24.888502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271801, 36.713516, 24.975607>,  <37.450943, 36.386665, 25.120781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271801, 36.713516, 24.975607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290098, 0.251162, 0.923451,
		0.845736, 0.518859, 0.124563,
		-0.447855, 0.817131, -0.362937,
		37.137444, 36.958656, 24.866726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393093, 36.851715, 25.731709>,  <37.450943, 36.386665, 25.120781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393093, 36.851715, 25.731709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130993, 37.029617, 25.487465>,  <36.973732, 37.136356, 25.340918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130993, 37.029617, 25.487465>,  <37.393093, 36.851715, 25.731709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130993, 37.029617, 25.487465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615294, 0.154716, 0.772966,
		0.438250, 0.882189, 0.172276,
		-0.655249, 0.444752, -0.610610,
		36.934418, 37.163044, 25.304281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402016, 37.556446, 26.051630>,  <37.393093, 36.851715, 25.731709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402016, 37.556446, 26.051630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073517, 37.552345, 25.823437>,  <36.876419, 37.549885, 25.686522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073517, 37.552345, 25.823437>,  <37.402016, 37.556446, 26.051630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073517, 37.552345, 25.823437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539439, 0.339719, 0.770452,
		0.185907, 0.940471, -0.284522,
		-0.821245, -0.010250, -0.570483,
		36.827145, 37.549271, 25.652292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027664, 38.177315, 26.217764>,  <37.402016, 37.556446, 26.051630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027664, 38.177315, 26.217764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737129, 37.945896, 26.069324>,  <36.562809, 37.807045, 25.980261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737129, 37.945896, 26.069324>,  <37.027664, 38.177315, 26.217764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737129, 37.945896, 26.069324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568069, 0.201344, 0.797971,
		-0.386947, 0.790407, -0.474899,
		-0.726340, -0.578548, -0.371097,
		36.519226, 37.772331, 25.957996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368843, 38.591530, 26.195049>,  <37.027664, 38.177315, 26.217764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368843, 38.591530, 26.195049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240387, 38.213474, 26.171143>,  <36.163311, 37.986641, 26.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240387, 38.213474, 26.171143>,  <36.368843, 38.591530, 26.195049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240387, 38.213474, 26.171143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596408, 0.152819, 0.787999,
		-0.735639, 0.288706, -0.612768,
		-0.321142, -0.945143, -0.059767,
		36.144043, 37.929932, 26.153212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659538, 38.644871, 26.292665>,  <36.368843, 38.591530, 26.195049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659538, 38.644871, 26.292665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730705, 38.260227, 26.376232>,  <35.773407, 38.029442, 26.426373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730705, 38.260227, 26.376232>,  <35.659538, 38.644871, 26.292665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730705, 38.260227, 26.376232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539695, 0.082172, 0.837841,
		-0.822845, -0.261818, -0.504358,
		0.177917, -0.961613, 0.208916,
		35.784081, 37.971745, 26.438908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933937, 38.331676, 26.558172>,  <35.659538, 38.644871, 26.292665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933937, 38.331676, 26.558172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220207, 38.073364, 26.664595>,  <35.391968, 37.918377, 26.728449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220207, 38.073364, 26.664595>,  <34.933937, 38.331676, 26.558172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220207, 38.073364, 26.664595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498326, -0.205217, 0.842352,
		-0.489372, -0.735431, -0.468675,
		0.715672, -0.645776, 0.266057,
		35.434910, 37.879631, 26.744411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716057, 37.613846, 26.708950>,  <34.933937, 38.331676, 26.558172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716057, 37.613846, 26.708950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048042, 37.654449, 26.928352>,  <35.247234, 37.678810, 27.059994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048042, 37.654449, 26.928352>,  <34.716057, 37.613846, 26.708950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048042, 37.654449, 26.928352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540731, -0.095116, 0.835801,
		0.137011, -0.990277, -0.024055,
		0.829962, 0.101507, 0.548506,
		35.297031, 37.684902, 27.092905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663044, 37.203667, 27.262190>,  <34.716057, 37.613846, 26.708950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663044, 37.203667, 27.262190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965034, 37.443203, 27.369068>,  <35.146229, 37.586926, 27.433195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965034, 37.443203, 27.369068>,  <34.663044, 37.203667, 27.262190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965034, 37.443203, 27.369068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348424, 0.021153, 0.937098,
		0.555522, -0.800588, 0.224621,
		0.754981, 0.598842, 0.267193,
		35.191528, 37.622856, 27.449226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721287, 37.086430, 27.965313>,  <34.663044, 37.203667, 27.262190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721287, 37.086430, 27.965313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975254, 37.394444, 27.940235>,  <35.127636, 37.579250, 27.925188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975254, 37.394444, 27.940235>,  <34.721287, 37.086430, 27.965313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975254, 37.394444, 27.940235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107779, 0.168636, 0.979768,
		0.765025, -0.615315, 0.190063,
		0.634918, 0.770032, -0.062693,
		35.165730, 37.625454, 27.921427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287685, 37.005047, 28.488729>,  <34.721287, 37.086430, 27.965313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287685, 37.005047, 28.488729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231548, 37.389603, 28.394041>,  <35.197865, 37.620335, 28.337229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231548, 37.389603, 28.394041>,  <35.287685, 37.005047, 28.488729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231548, 37.389603, 28.394041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012780, 0.237309, 0.971350,
		0.990020, 0.139351, -0.021019,
		-0.140347, 0.961387, -0.236722,
		35.189445, 37.678020, 28.323025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855576, 37.402546, 28.762741>,  <35.287685, 37.005047, 28.488729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855576, 37.402546, 28.762741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561550, 37.669933, 28.717421>,  <35.385136, 37.830364, 28.690228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561550, 37.669933, 28.717421>,  <35.855576, 37.402546, 28.762741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561550, 37.669933, 28.717421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007032, 0.174618, 0.984611,
		0.677965, 0.722952, -0.133055,
		-0.735060, 0.668468, -0.113301,
		35.341034, 37.870472, 28.683430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580662, 37.564388, 28.766747>,  <35.855576, 37.402546, 28.762741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580662, 37.564388, 28.766747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862488, 37.412006, 29.006233>,  <37.031582, 37.320576, 29.149925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862488, 37.412006, 29.006233>,  <36.580662, 37.564388, 28.766747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862488, 37.412006, 29.006233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610101, -0.105730, -0.785237,
		0.362446, 0.918527, 0.157930,
		0.704563, -0.380959, 0.598716,
		37.073856, 37.297718, 29.185848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201923, 37.696556, 28.338182>,  <36.580662, 37.564388, 28.766747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201923, 37.696556, 28.338182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339653, 37.435822, 28.608458>,  <37.422291, 37.279381, 28.770622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339653, 37.435822, 28.608458>,  <37.201923, 37.696556, 28.338182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339653, 37.435822, 28.608458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704259, -0.296602, -0.645017,
		0.620853, 0.697955, 0.356932,
		0.344326, -0.651833, 0.675687,
		37.442951, 37.240273, 28.811163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929203, 37.863407, 28.416170>,  <37.201923, 37.696556, 28.338182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929203, 37.863407, 28.416170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868504, 37.477810, 28.503527>,  <37.832085, 37.246452, 28.555941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868504, 37.477810, 28.503527>,  <37.929203, 37.863407, 28.416170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868504, 37.477810, 28.503527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731024, -0.258170, -0.631627,
		0.665264, 0.063801, 0.743877,
		-0.151749, -0.963990, 0.218391,
		37.822979, 37.188614, 28.569044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628002, 37.587898, 28.417833>,  <37.929203, 37.863407, 28.416170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628002, 37.587898, 28.417833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376694, 37.277237, 28.399574>,  <38.225910, 37.090839, 28.388618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376694, 37.277237, 28.399574>,  <38.628002, 37.587898, 28.417833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376694, 37.277237, 28.399574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619560, -0.463981, -0.633141,
		0.470552, -0.426065, 0.772690,
		-0.628272, -0.776654, -0.045646,
		38.188213, 37.044239, 28.385881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087334, 37.096619, 28.412479>,  <38.628002, 37.587898, 28.417833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087334, 37.096619, 28.412479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739090, 36.963257, 28.267769>,  <38.530144, 36.883240, 28.180943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739090, 36.963257, 28.267769>,  <39.087334, 37.096619, 28.412479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739090, 36.963257, 28.267769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489890, -0.519898, -0.699795,
		0.045228, -0.786478, 0.615960,
		-0.870610, -0.333403, -0.361774,
		38.477905, 36.863235, 28.159237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281052, 36.444164, 28.173542>,  <39.087334, 37.096619, 28.412479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281052, 36.444164, 28.173542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951462, 36.540401, 27.968334>,  <38.753708, 36.598145, 27.845209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951462, 36.540401, 27.968334>,  <39.281052, 36.444164, 28.173542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951462, 36.540401, 27.968334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354734, -0.486986, -0.798128,
		-0.441854, -0.839620, 0.315918,
		-0.823972, 0.240589, -0.513018,
		38.704269, 36.612579, 27.814428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216591, 35.929565, 27.789381>,  <39.281052, 36.444164, 28.173542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216591, 35.929565, 27.789381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980293, 36.196880, 27.608530>,  <38.838516, 36.357269, 27.500019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980293, 36.196880, 27.608530>,  <39.216591, 35.929565, 27.789381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980293, 36.196880, 27.608530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331198, -0.310134, -0.891137,
		-0.735755, -0.676174, -0.038127,
		-0.590739, 0.668286, -0.452130,
		38.803070, 36.397366, 27.472891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014896, 35.610443, 27.128082>,  <39.216591, 35.929565, 27.789381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014896, 35.610443, 27.128082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978920, 36.005314, 27.075317>,  <38.957333, 36.242237, 27.043659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978920, 36.005314, 27.075317>,  <39.014896, 35.610443, 27.128082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978920, 36.005314, 27.075317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505678, -0.068842, -0.859971,
		-0.858021, -0.144053, -0.492999,
		-0.089942, 0.987172, -0.131912,
		38.951939, 36.301464, 27.035744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660767, 35.724964, 26.652359>,  <39.014896, 35.610443, 27.128082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660767, 35.724964, 26.652359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842335, 36.081345, 26.657452>,  <38.951275, 36.295174, 26.660507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842335, 36.081345, 26.657452>,  <38.660767, 35.724964, 26.652359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842335, 36.081345, 26.657452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298545, -0.138610, -0.944277,
		-0.839541, 0.432425, -0.328907,
		0.453918, 0.890952, 0.012730,
		38.978512, 36.348629, 26.661270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647465, 35.861126, 25.970215>,  <38.660767, 35.724964, 26.652359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647465, 35.861126, 25.970215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895393, 36.151024, 26.090588>,  <39.044151, 36.324963, 26.162811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895393, 36.151024, 26.090588>,  <38.647465, 35.861126, 25.970215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895393, 36.151024, 26.090588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462878, -0.027986, -0.885980,
		-0.633688, 0.688448, -0.352815,
		0.619825, 0.724745, 0.300933,
		39.081341, 36.368446, 26.180868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710449, 36.439247, 25.419333>,  <38.647465, 35.861126, 25.970215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710449, 36.439247, 25.419333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038395, 36.452873, 25.647949>,  <39.235161, 36.461048, 25.785120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038395, 36.452873, 25.647949>,  <38.710449, 36.439247, 25.419333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038395, 36.452873, 25.647949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568352, 0.072356, -0.819598,
		-0.069273, 0.996797, 0.039962,
		0.819864, 0.034063, 0.571544,
		39.284355, 36.463093, 25.819412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975746, 36.898964, 25.089533>,  <38.710449, 36.439247, 25.419333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975746, 36.898964, 25.089533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242767, 36.683430, 25.295071>,  <39.402981, 36.554108, 25.418394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242767, 36.683430, 25.295071>,  <38.975746, 36.898964, 25.089533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242767, 36.683430, 25.295071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611076, 0.002190, -0.791569,
		0.425400, 0.842408, 0.330731,
		0.667548, -0.538836, 0.513844,
		39.443031, 36.521778, 25.449224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505058, 37.243725, 24.922598>,  <38.975746, 36.898964, 25.089533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505058, 37.243725, 24.922598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619041, 36.883026, 25.052618>,  <39.687431, 36.666607, 25.130630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619041, 36.883026, 25.052618>,  <39.505058, 37.243725, 24.922598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619041, 36.883026, 25.052618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485993, -0.156375, -0.859859,
		0.826201, 0.402999, 0.393679,
		0.284960, -0.901742, 0.325052,
		39.704529, 36.612503, 25.150133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135300, 37.248165, 24.676159>,  <39.505058, 37.243725, 24.922598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135300, 37.248165, 24.676159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035332, 36.866482, 24.741924>,  <39.975353, 36.637474, 24.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035332, 36.866482, 24.741924>,  <40.135300, 37.248165, 24.676159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035332, 36.866482, 24.741924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422546, -0.260257, -0.868171,
		0.871204, -0.147498, 0.468239,
		-0.249916, -0.954207, 0.164413,
		39.960358, 36.580219, 24.791248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828693, 36.771603, 24.541626>,  <40.135300, 37.248165, 24.676159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828693, 36.771603, 24.541626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512630, 36.528568, 24.509411>,  <40.322990, 36.382748, 24.490082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512630, 36.528568, 24.509411>,  <40.828693, 36.771603, 24.541626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512630, 36.528568, 24.509411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371827, -0.370748, -0.851053,
		0.487227, -0.702415, 0.518867,
		-0.790161, -0.607585, -0.080538,
		40.275581, 36.346294, 24.485249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119251, 36.147518, 24.332901>,  <40.828693, 36.771603, 24.541626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119251, 36.147518, 24.332901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733475, 36.181637, 24.232841>,  <40.502010, 36.202106, 24.172806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733475, 36.181637, 24.232841>,  <41.119251, 36.147518, 24.332901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733475, 36.181637, 24.232841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233166, -0.171027, -0.957279,
		-0.124434, -0.981567, 0.145057,
		-0.964443, 0.085296, -0.250150,
		40.444141, 36.207226, 24.157797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017067, 35.695026, 23.913855>,  <41.119251, 36.147518, 24.332901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017067, 35.695026, 23.913855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701836, 35.925743, 23.827835>,  <40.512699, 36.064175, 23.776222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701836, 35.925743, 23.827835>,  <41.017067, 35.695026, 23.913855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701836, 35.925743, 23.827835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141996, -0.169593, -0.975231,
		-0.598980, -0.799090, 0.051750,
		-0.788074, 0.576796, -0.215050,
		40.465412, 36.098782, 23.763319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533703, 35.249001, 23.494980>,  <41.017067, 35.695026, 23.913855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533703, 35.249001, 23.494980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432728, 35.626587, 23.409933>,  <40.372143, 35.853138, 23.358906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432728, 35.626587, 23.409933>,  <40.533703, 35.249001, 23.494980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432728, 35.626587, 23.409933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296718, -0.133630, -0.945569,
		-0.920996, -0.301784, -0.246358,
		-0.252437, 0.943965, -0.212617,
		40.356998, 35.909775, 23.346148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153988, 35.149376, 22.946091>,  <40.533703, 35.249001, 23.494980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153988, 35.149376, 22.946091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256084, 35.535423, 22.922792>,  <40.317341, 35.767052, 22.908813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256084, 35.535423, 22.922792>,  <40.153988, 35.149376, 22.946091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256084, 35.535423, 22.922792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131234, -0.094262, -0.986860,
		-0.957930, 0.244244, -0.150716,
		0.255241, 0.965122, -0.058243,
		40.332657, 35.824959, 22.905319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819412, 35.332344, 22.414288>,  <40.153988, 35.149376, 22.946091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819412, 35.332344, 22.414288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097755, 35.616180, 22.458586>,  <40.264763, 35.786480, 22.485165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097755, 35.616180, 22.458586>,  <39.819412, 35.332344, 22.414288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097755, 35.616180, 22.458586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122813, 0.034358, -0.991835,
		-0.707598, 0.703780, -0.063238,
		0.695861, 0.709587, 0.110745,
		40.306515, 35.829056, 22.491810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632820, 35.949440, 22.025606>,  <39.819412, 35.332344, 22.414288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632820, 35.949440, 22.025606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030254, 35.944260, 22.070541>,  <40.268715, 35.941151, 22.097502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030254, 35.944260, 22.070541>,  <39.632820, 35.949440, 22.025606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030254, 35.944260, 22.070541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108573, -0.168507, -0.979703,
		0.031616, 0.985615, -0.166020,
		0.993586, -0.012949, 0.112339,
		40.328331, 35.940376, 22.104242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968121, 36.476902, 21.575222>,  <39.632820, 35.949440, 22.025606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968121, 36.476902, 21.575222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221756, 36.181507, 21.666925>,  <40.373940, 36.004269, 21.721949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221756, 36.181507, 21.666925>,  <39.968121, 36.476902, 21.575222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221756, 36.181507, 21.666925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178689, -0.148520, -0.972631,
		0.752328, 0.657704, 0.037785,
		0.634092, -0.738490, 0.229260,
		40.411983, 35.959961, 21.735704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603649, 36.694382, 21.282190>,  <39.968121, 36.476902, 21.575222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603649, 36.694382, 21.282190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618530, 36.296562, 21.321163>,  <40.627460, 36.057873, 21.344547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618530, 36.296562, 21.321163>,  <40.603649, 36.694382, 21.282190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618530, 36.296562, 21.321163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165051, -0.090047, -0.982166,
		0.985583, 0.052622, 0.160801,
		0.037204, -0.994546, 0.097434,
		40.629692, 35.998199, 21.350393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055107, 36.526958, 20.885969>,  <40.603649, 36.694382, 21.282190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055107, 36.526958, 20.885969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852554, 36.183960, 20.922344>,  <40.731022, 35.978161, 20.944168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852554, 36.183960, 20.922344>,  <41.055107, 36.526958, 20.885969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852554, 36.183960, 20.922344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008582, -0.110462, -0.993843,
		0.862267, -0.502484, 0.063296,
		-0.506382, -0.857501, 0.090935,
		40.700638, 35.926708, 20.949625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444096, 36.103683, 20.446262>,  <41.055107, 36.526958, 20.885969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444096, 36.103683, 20.446262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085873, 35.934685, 20.502090>,  <40.870941, 35.833286, 20.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085873, 35.934685, 20.502090>,  <41.444096, 36.103683, 20.446262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085873, 35.934685, 20.502090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037948, -0.385056, -0.922113,
		0.443330, -0.820506, 0.360872,
		-0.895554, -0.422495, 0.139570,
		40.817207, 35.807938, 20.543961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582382, 35.416065, 20.365522>,  <41.444096, 36.103683, 20.446262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582382, 35.416065, 20.365522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190548, 35.451271, 20.293234>,  <40.955448, 35.472393, 20.249861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190548, 35.451271, 20.293234>,  <41.582382, 35.416065, 20.365522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190548, 35.451271, 20.293234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108973, -0.522945, -0.845372,
		-0.168909, -0.847810, 0.502680,
		-0.979589, 0.088012, -0.180719,
		40.896671, 35.477676, 20.239017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319633, 34.794357, 20.245201>,  <41.582382, 35.416065, 20.365522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319633, 34.794357, 20.245201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044266, 35.029457, 20.075201>,  <40.879044, 35.170517, 19.973202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044266, 35.029457, 20.075201>,  <41.319633, 34.794357, 20.245201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044266, 35.029457, 20.075201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148993, -0.458863, -0.875926,
		-0.709843, -0.666327, 0.228320,
		-0.688421, 0.587752, -0.424999,
		40.837738, 35.205784, 19.947702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857090, 34.330425, 19.917742>,  <41.319633, 34.794357, 20.245201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857090, 34.330425, 19.917742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800797, 34.674320, 19.721357>,  <40.767021, 34.880657, 19.603527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800797, 34.674320, 19.721357>,  <40.857090, 34.330425, 19.917742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800797, 34.674320, 19.721357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038673, -0.500291, -0.864993,
		-0.989291, -0.102749, 0.103657,
		-0.140736, 0.859739, -0.490960,
		40.758575, 34.932243, 19.574070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323902, 34.232452, 19.498621>,  <40.857090, 34.330425, 19.917742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323902, 34.232452, 19.498621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480026, 34.548897, 19.310238>,  <40.573700, 34.738762, 19.197208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480026, 34.548897, 19.310238>,  <40.323902, 34.232452, 19.498621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480026, 34.548897, 19.310238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178747, -0.436685, -0.881678,
		-0.903164, 0.428313, -0.029036,
		0.390313, 0.791110, -0.470958,
		40.597118, 34.786228, 19.168951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886848, 34.348602, 18.874760>,  <40.323902, 34.232452, 19.498621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886848, 34.348602, 18.874760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260616, 34.486153, 18.837650>,  <40.484879, 34.568684, 18.815384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260616, 34.486153, 18.837650>,  <39.886848, 34.348602, 18.874760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260616, 34.486153, 18.837650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043295, -0.368204, -0.928736,
		-0.353533, 0.863813, -0.358946,
		0.934420, 0.343879, -0.092773,
		40.540943, 34.589317, 18.809818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972404, 34.685585, 18.238714>,  <39.886848, 34.348602, 18.874760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972404, 34.685585, 18.238714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357693, 34.644054, 18.337852>,  <40.588867, 34.619137, 18.397335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357693, 34.644054, 18.337852>,  <39.972404, 34.685585, 18.238714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357693, 34.644054, 18.337852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203325, -0.321435, -0.924845,
		0.175691, 0.941223, -0.288501,
		0.963219, -0.103827, 0.247848,
		40.646660, 34.612907, 18.412207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376022, 35.045582, 17.739933>,  <39.972404, 34.685585, 18.238714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376022, 35.045582, 17.739933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609638, 34.764324, 17.902157>,  <40.749809, 34.595570, 17.999491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609638, 34.764324, 17.902157>,  <40.376022, 35.045582, 17.739933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609638, 34.764324, 17.902157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146878, -0.399838, -0.904741,
		0.798326, 0.587973, -0.130245,
		0.584040, -0.703148, 0.405561,
		40.784851, 34.553379, 18.023825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048031, 34.968784, 17.300287>,  <40.376022, 35.045582, 17.739933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048031, 34.968784, 17.300287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064606, 34.637962, 17.524523>,  <41.074551, 34.439468, 17.659065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064606, 34.637962, 17.524523>,  <41.048031, 34.968784, 17.300287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064606, 34.637962, 17.524523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223880, -0.539119, -0.811929,
		0.973735, 0.159151, 0.162820,
		0.041440, -0.827056, 0.560590,
		41.077038, 34.389847, 17.692699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624924, 34.580719, 17.101261>,  <41.048031, 34.968784, 17.300287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624924, 34.580719, 17.101261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439533, 34.291138, 17.305647>,  <41.328297, 34.117390, 17.428278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439533, 34.291138, 17.305647>,  <41.624924, 34.580719, 17.101261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439533, 34.291138, 17.305647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159852, -0.635489, -0.755381,
		0.871570, -0.268424, 0.410260,
		-0.463479, -0.723949, 0.510965,
		41.300491, 34.073952, 17.458937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053974, 34.025982, 17.103807>,  <41.624924, 34.580719, 17.101261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053974, 34.025982, 17.103807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698177, 33.862164, 17.184874>,  <41.484699, 33.763870, 17.233513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698177, 33.862164, 17.184874>,  <42.053974, 34.025982, 17.103807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698177, 33.862164, 17.184874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182385, -0.724857, -0.664318,
		0.418975, -0.553941, 0.719450,
		-0.889492, -0.409550, 0.202667,
		41.431332, 33.739300, 17.245674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162983, 33.286526, 17.017366>,  <42.053974, 34.025982, 17.103807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162983, 33.286526, 17.017366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765182, 33.322063, 16.995203>,  <41.526501, 33.343388, 16.981905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765182, 33.322063, 16.995203>,  <42.162983, 33.286526, 17.017366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765182, 33.322063, 16.995203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017851, -0.665305, -0.746358,
		-0.103175, -0.741267, 0.663234,
		-0.994503, 0.088845, -0.055410,
		41.466831, 33.348717, 16.978580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949043, 32.603497, 16.989532>,  <42.162983, 33.286526, 17.017366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949043, 32.603497, 16.989532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632446, 32.796253, 16.839165>,  <41.442486, 32.911907, 16.748945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632446, 32.796253, 16.839165>,  <41.949043, 32.603497, 16.989532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632446, 32.796253, 16.839165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139636, -0.741388, -0.656388,
		-0.595009, -0.467037, 0.654095,
		-0.791496, 0.481892, -0.375918,
		41.394997, 32.940823, 16.726389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438049, 32.098129, 17.019529>,  <41.949043, 32.603497, 16.989532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438049, 32.098129, 17.019529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343964, 32.376503, 16.748131>,  <41.287514, 32.543526, 16.585293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343964, 32.376503, 16.748131>,  <41.438049, 32.098129, 17.019529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343964, 32.376503, 16.748131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224804, -0.718104, -0.658628,
		-0.945590, -0.002387, 0.325353,
		-0.235209, 0.695932, -0.678495,
		41.273399, 32.585281, 16.544582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045986, 31.406656, 17.112581>,  <41.438049, 32.098129, 17.019529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045986, 31.406656, 17.112581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106102, 31.043232, 17.268496>,  <41.142170, 30.825178, 17.362043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106102, 31.043232, 17.268496>,  <41.045986, 31.406656, 17.112581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106102, 31.043232, 17.268496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141705, 0.409989, 0.901015,
		-0.978434, -0.080176, 0.190364,
		0.150287, -0.908560, 0.389786,
		41.151188, 30.770664, 17.385431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632816, 31.289396, 17.737732>,  <41.045986, 31.406656, 17.112581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632816, 31.289396, 17.737732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939831, 31.033138, 17.746338>,  <41.124039, 30.879383, 17.751501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939831, 31.033138, 17.746338>,  <40.632816, 31.289396, 17.737732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939831, 31.033138, 17.746338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093205, 0.144747, 0.985069,
		-0.634194, -0.754070, 0.170810,
		0.767536, -0.640645, 0.021514,
		41.170090, 30.840944, 17.752792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480461, 30.731890, 18.244936>,  <40.632816, 31.289396, 17.737732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480461, 30.731890, 18.244936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877880, 30.698967, 18.213730>,  <41.116333, 30.679213, 18.195005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877880, 30.698967, 18.213730>,  <40.480461, 30.731890, 18.244936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877880, 30.698967, 18.213730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085914, 0.097230, 0.991547,
		-0.074030, -0.991852, 0.103675,
		0.993549, -0.082311, -0.078016,
		41.175945, 30.674274, 18.190325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544014, 30.314449, 18.822464>,  <40.480461, 30.731890, 18.244936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544014, 30.314449, 18.822464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873535, 30.505985, 18.701099>,  <41.071247, 30.620907, 18.628281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873535, 30.505985, 18.701099>,  <40.544014, 30.314449, 18.822464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873535, 30.505985, 18.701099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227486, 0.211001, 0.950647,
		0.519229, -0.852168, 0.064894,
		0.823803, 0.478840, -0.303414,
		41.120678, 30.649637, 18.610075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086319, 29.974054, 19.175203>,  <40.544014, 30.314449, 18.822464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086319, 29.974054, 19.175203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214916, 30.336456, 19.065077>,  <41.292076, 30.553898, 18.999001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214916, 30.336456, 19.065077>,  <41.086319, 29.974054, 19.175203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214916, 30.336456, 19.065077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185982, 0.224672, 0.956521,
		0.928467, -0.358721, -0.096269,
		0.321495, 0.906003, -0.275317,
		41.311363, 30.608257, 18.982481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737701, 30.007559, 19.450851>,  <41.086319, 29.974054, 19.175203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737701, 30.007559, 19.450851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579575, 30.372700, 19.410004>,  <41.484699, 30.591784, 19.385494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579575, 30.372700, 19.410004>,  <41.737701, 30.007559, 19.450851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579575, 30.372700, 19.410004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161419, 0.178487, 0.970611,
		0.904250, 0.367216, -0.217910,
		-0.395318, 0.912850, -0.102121,
		41.460979, 30.646555, 19.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193176, 30.405401, 19.776592>,  <41.737701, 30.007559, 19.450851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193176, 30.405401, 19.776592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880245, 30.653219, 19.750870>,  <41.692486, 30.801910, 19.735435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880245, 30.653219, 19.750870>,  <42.193176, 30.405401, 19.776592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880245, 30.653219, 19.750870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152767, 0.290937, 0.944467,
		0.603848, 0.729055, -0.322253,
		-0.782324, 0.619544, -0.064306,
		41.645550, 30.839083, 19.731579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363403, 31.139782, 20.016138>,  <42.193176, 30.405401, 19.776592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363403, 31.139782, 20.016138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964237, 31.156914, 20.035414>,  <41.724735, 31.167192, 20.046978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964237, 31.156914, 20.035414>,  <42.363403, 31.139782, 20.016138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964237, 31.156914, 20.035414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061528, 0.409444, 0.910258,
		0.019256, 0.911329, -0.411228,
		-0.997919, 0.042830, 0.048188,
		41.664860, 31.169764, 20.049870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182022, 31.798950, 20.234884>,  <42.363403, 31.139782, 20.016138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182022, 31.798950, 20.234884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843769, 31.603882, 20.321672>,  <41.640816, 31.486841, 20.373745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843769, 31.603882, 20.321672>,  <42.182022, 31.798950, 20.234884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843769, 31.603882, 20.321672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021755, 0.437647, 0.898883,
		-0.533314, 0.755409, -0.380700,
		-0.845637, -0.487670, 0.216970,
		41.590076, 31.457581, 20.386763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743561, 32.348591, 20.438675>,  <42.182022, 31.798950, 20.234884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743561, 32.348591, 20.438675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597191, 32.015137, 20.604155>,  <41.509369, 31.815063, 20.703442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597191, 32.015137, 20.604155>,  <41.743561, 32.348591, 20.438675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597191, 32.015137, 20.604155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051419, 0.425739, 0.903384,
		-0.929221, 0.351846, -0.112926,
		-0.365929, -0.833637, 0.413697,
		41.487411, 31.765045, 20.728264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289989, 32.538731, 20.862606>,  <41.743561, 32.348591, 20.438675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289989, 32.538731, 20.862606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384399, 32.183392, 21.020151>,  <41.441048, 31.970188, 21.114679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384399, 32.183392, 21.020151>,  <41.289989, 32.538731, 20.862606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384399, 32.183392, 21.020151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137493, 0.370709, 0.918516,
		-0.961970, -0.270949, -0.034644,
		0.236029, -0.888348, 0.393864,
		41.455208, 31.916887, 21.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742054, 32.361580, 21.372490>,  <41.289989, 32.538731, 20.862606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742054, 32.361580, 21.372490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071945, 32.153248, 21.460640>,  <41.269878, 32.028248, 21.513531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071945, 32.153248, 21.460640>,  <40.742054, 32.361580, 21.372490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071945, 32.153248, 21.460640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222481, 0.059457, 0.973122,
		-0.519937, -0.851586, -0.066840,
		0.824723, -0.520832, 0.220375,
		41.319363, 31.996998, 21.526752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519131, 31.883766, 21.957354>,  <40.742054, 32.361580, 21.372490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519131, 31.883766, 21.957354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918629, 31.897449, 21.971970>,  <41.158329, 31.905661, 21.980740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918629, 31.897449, 21.971970>,  <40.519131, 31.883766, 21.957354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918629, 31.897449, 21.971970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043663, 0.238567, 0.970144,
		0.024471, -0.970523, 0.239761,
		0.998747, 0.034209, 0.036538,
		41.218254, 31.907713, 21.982931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715027, 31.461561, 22.510040>,  <40.519131, 31.883766, 21.957354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715027, 31.461561, 22.510040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040745, 31.683764, 22.442707>,  <41.236176, 31.817085, 22.402308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040745, 31.683764, 22.442707>,  <40.715027, 31.461561, 22.510040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040745, 31.683764, 22.442707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034956, 0.242546, 0.969510,
		0.579399, -0.795351, 0.178085,
		0.814294, 0.555508, -0.168333,
		41.285034, 31.850416, 22.392208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211487, 31.205072, 22.964993>,  <40.715027, 31.461561, 22.510040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211487, 31.205072, 22.964993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276134, 31.591745, 22.885588>,  <41.314922, 31.823750, 22.837944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276134, 31.591745, 22.885588>,  <41.211487, 31.205072, 22.964993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276134, 31.591745, 22.885588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266618, 0.236449, 0.934348,
		0.950155, -0.098080, 0.295949,
		0.161618, 0.966681, -0.198513,
		41.324619, 31.881750, 22.826035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676105, 31.478918, 23.510178>,  <41.211487, 31.205072, 22.964993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676105, 31.478918, 23.510178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555447, 31.819933, 23.339441>,  <41.483051, 32.024540, 23.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555447, 31.819933, 23.339441>,  <41.676105, 31.478918, 23.510178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555447, 31.819933, 23.339441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164939, 0.394281, 0.904067,
		0.939045, 0.343111, 0.021683,
		-0.301646, 0.852536, -0.426840,
		41.464954, 32.075695, 23.211390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047539, 32.027393, 23.835264>,  <41.676105, 31.478918, 23.510178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047539, 32.027393, 23.835264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719578, 32.207024, 23.693228>,  <41.522800, 32.314800, 23.608006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719578, 32.207024, 23.693228>,  <42.047539, 32.027393, 23.835264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719578, 32.207024, 23.693228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051035, 0.560444, 0.826618,
		0.570221, 0.695870, -0.436592,
		-0.819905, 0.449073, -0.355091,
		41.473606, 32.341747, 23.586700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170662, 32.685665, 23.852623>,  <42.047539, 32.027393, 23.835264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170662, 32.685665, 23.852623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772305, 32.703911, 23.821362>,  <41.533291, 32.714859, 23.802605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772305, 32.703911, 23.821362>,  <42.170662, 32.685665, 23.852623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772305, 32.703911, 23.821362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023165, 0.706365, 0.707468,
		0.087474, 0.706376, -0.702411,
		-0.995897, 0.045613, -0.078152,
		41.473534, 32.717594, 23.797916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992474, 33.343334, 23.670280>,  <42.170662, 32.685665, 23.852623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992474, 33.343334, 23.670280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668835, 33.183205, 23.842375>,  <41.474651, 33.087128, 23.945631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668835, 33.183205, 23.842375>,  <41.992474, 33.343334, 23.670280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668835, 33.183205, 23.842375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018888, 0.714005, 0.699886,
		-0.587372, 0.574402, -0.570138,
		-0.809097, -0.400325, 0.430235,
		41.426105, 33.063107, 23.971445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615139, 33.899136, 23.797604>,  <41.992474, 33.343334, 23.670280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615139, 33.899136, 23.797604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428925, 33.621292, 24.016983>,  <41.317196, 33.454586, 24.148611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428925, 33.621292, 24.016983>,  <41.615139, 33.899136, 23.797604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428925, 33.621292, 24.016983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138647, 0.669283, 0.729957,
		-0.874102, 0.263779, -0.407880,
		-0.465535, -0.694608, 0.548450,
		41.289265, 33.412910, 24.181519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031956, 34.247719, 24.129856>,  <41.615139, 33.899136, 23.797604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031956, 34.247719, 24.129856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096409, 33.925949, 24.358572>,  <41.135082, 33.732887, 24.495802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096409, 33.925949, 24.358572>,  <41.031956, 34.247719, 24.129856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096409, 33.925949, 24.358572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020191, 0.576553, 0.816810,
		-0.986726, -0.143163, 0.076661,
		0.161136, -0.804420, 0.571790,
		41.144749, 33.684624, 24.530109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502018, 34.270275, 24.661850>,  <41.031956, 34.247719, 24.129856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502018, 34.270275, 24.661850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762989, 34.011494, 24.819727>,  <40.919571, 33.856224, 24.914454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762989, 34.011494, 24.819727>,  <40.502018, 34.270275, 24.661850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762989, 34.011494, 24.819727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094864, 0.446994, 0.889493,
		-0.751887, -0.617775, 0.230260,
		0.652431, -0.646955, 0.394693,
		40.958717, 33.817406, 24.938135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141724, 34.080303, 25.202421>,  <40.502018, 34.270275, 24.661850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141724, 34.080303, 25.202421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523796, 33.990299, 25.279352>,  <40.753040, 33.936298, 25.325512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523796, 33.990299, 25.279352>,  <40.141724, 34.080303, 25.202421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523796, 33.990299, 25.279352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084954, 0.414025, 0.906292,
		-0.283555, -0.882016, 0.376355,
		0.955186, -0.225011, 0.192330,
		40.810352, 33.922794, 25.337051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185265, 33.727367, 25.734058>,  <40.141724, 34.080303, 25.202421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185265, 33.727367, 25.734058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562687, 33.859840, 25.736212>,  <40.789139, 33.939323, 25.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562687, 33.859840, 25.736212>,  <40.185265, 33.727367, 25.734058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562687, 33.859840, 25.736212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129794, 0.354742, 0.925911,
		0.304730, -0.874345, 0.377703,
		0.943553, 0.331177, 0.005384,
		40.845753, 33.959194, 25.737827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390648, 33.581036, 26.334198>,  <40.185265, 33.727367, 25.734058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390648, 33.581036, 26.334198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652126, 33.861259, 26.219725>,  <40.809013, 34.029392, 26.151041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652126, 33.861259, 26.219725>,  <40.390648, 33.581036, 26.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652126, 33.861259, 26.219725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049912, 0.417261, 0.907415,
		0.755111, -0.578887, 0.307728,
		0.653694, 0.700559, -0.286185,
		40.848236, 34.071426, 26.133869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077068, 33.529060, 26.777126>,  <40.390648, 33.581036, 26.334198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077068, 33.529060, 26.777126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035950, 33.900345, 26.634096>,  <41.011280, 34.123116, 26.548279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035950, 33.900345, 26.634096>,  <41.077068, 33.529060, 26.777126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035950, 33.900345, 26.634096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030663, 0.362263, 0.931571,
		0.994230, 0.084794, -0.065700,
		-0.102792, 0.928211, -0.357573,
		41.005112, 34.178806, 26.526825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503460, 33.940639, 27.255136>,  <41.077068, 33.529060, 26.777126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503460, 33.940639, 27.255136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273808, 34.215710, 27.077383>,  <41.136017, 34.380753, 26.970730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273808, 34.215710, 27.077383>,  <41.503460, 33.940639, 27.255136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273808, 34.215710, 27.077383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048417, 0.570318, 0.819996,
		0.817329, 0.449272, -0.360734,
		-0.574134, 0.687671, -0.444385,
		41.101566, 34.422012, 26.944067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878742, 34.599075, 27.340607>,  <41.503460, 33.940639, 27.255136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878742, 34.599075, 27.340607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487240, 34.660084, 27.285807>,  <41.252338, 34.696690, 27.252926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487240, 34.660084, 27.285807>,  <41.878742, 34.599075, 27.340607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487240, 34.660084, 27.285807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016950, 0.605765, 0.795463,
		0.204313, 0.780888, -0.590313,
		-0.978759, 0.152518, -0.137002,
		41.193611, 34.705841, 27.244705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789543, 35.302719, 27.421505>,  <41.878742, 34.599075, 27.340607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789543, 35.302719, 27.421505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445908, 35.117844, 27.509449>,  <41.239727, 35.006920, 27.562216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445908, 35.117844, 27.509449>,  <41.789543, 35.302719, 27.421505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445908, 35.117844, 27.509449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083352, 0.550176, 0.830878,
		-0.504987, 0.695476, -0.511177,
		-0.859093, -0.462190, 0.219862,
		41.188179, 34.979187, 27.575407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382225, 35.784176, 27.655977>,  <41.789543, 35.302719, 27.421505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382225, 35.784176, 27.655977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201374, 35.462616, 27.810553>,  <41.092865, 35.269680, 27.903297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201374, 35.462616, 27.810553>,  <41.382225, 35.784176, 27.655977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201374, 35.462616, 27.810553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041621, 0.451791, 0.891153,
		-0.890982, 0.386831, -0.237726,
		-0.452127, -0.803895, 0.386437,
		41.065735, 35.221447, 27.926483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760983, 36.025082, 28.019249>,  <41.382225, 35.784176, 27.655977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760983, 36.025082, 28.019249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861824, 35.687717, 28.209026>,  <40.922329, 35.485298, 28.322893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861824, 35.687717, 28.209026>,  <40.760983, 36.025082, 28.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861824, 35.687717, 28.209026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093755, 0.466685, 0.879440,
		-0.963147, -0.266195, 0.038581,
		0.252107, -0.843413, 0.474443,
		40.937458, 35.434692, 28.351360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471912, 36.202099, 28.557377>,  <40.760983, 36.025082, 28.019249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471912, 36.202099, 28.557377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635521, 35.852924, 28.663727>,  <40.733685, 35.643421, 28.727537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635521, 35.852924, 28.663727>,  <40.471912, 36.202099, 28.557377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635521, 35.852924, 28.663727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205979, 0.195520, 0.958825,
		-0.888974, -0.446945, -0.099834,
		0.409022, -0.872933, 0.265873,
		40.758228, 35.591045, 28.743488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110786, 35.893776, 29.153753>,  <40.471912, 36.202099, 28.557377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110786, 35.893776, 29.153753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471874, 35.721909, 29.162531>,  <40.688526, 35.618790, 29.167797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471874, 35.721909, 29.162531>,  <40.110786, 35.893776, 29.153753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471874, 35.721909, 29.162531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029363, -0.010644, 0.999512,
		-0.429226, -0.902924, -0.022225,
		0.902720, -0.429669, 0.021944,
		40.742691, 35.593010, 29.169113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987854, 35.532696, 29.657930>,  <40.110786, 35.893776, 29.153753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987854, 35.532696, 29.657930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387318, 35.513924, 29.649240>,  <40.626995, 35.502659, 29.644026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387318, 35.513924, 29.649240>,  <39.987854, 35.532696, 29.657930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387318, 35.513924, 29.649240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027538, 0.126975, 0.991524,
		-0.043778, -0.990795, 0.128097,
		0.998661, -0.046934, -0.021726,
		40.686916, 35.499844, 29.642723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175613, 35.170910, 30.173679>,  <39.987854, 35.532696, 29.657930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175613, 35.170910, 30.173679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525585, 35.360435, 30.133692>,  <40.735569, 35.474152, 30.109699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525585, 35.360435, 30.133692>,  <40.175613, 35.170910, 30.173679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525585, 35.360435, 30.133692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000104, 0.206262, 0.978497,
		0.484246, -0.856128, 0.180415,
		0.874932, 0.473815, -0.099970,
		40.788063, 35.502579, 30.103701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591812, 34.975986, 30.724377>,  <40.175613, 35.170910, 30.173679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591812, 34.975986, 30.724377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755424, 35.317406, 30.595285>,  <40.853592, 35.522259, 30.517832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755424, 35.317406, 30.595285>,  <40.591812, 34.975986, 30.724377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755424, 35.317406, 30.595285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288169, 0.214746, 0.933189,
		0.865826, -0.474700, -0.158129,
		0.409027, 0.853548, -0.322727,
		40.878132, 35.573471, 30.498466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234276, 34.995750, 31.028866>,  <40.591812, 34.975986, 30.724377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234276, 34.995750, 31.028866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170174, 35.379311, 30.935202>,  <41.131710, 35.609447, 30.879004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170174, 35.379311, 30.935202>,  <41.234276, 34.995750, 31.028866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170174, 35.379311, 30.935202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334386, 0.275938, 0.901135,
		0.928711, 0.066116, -0.364864,
		-0.160259, 0.958899, -0.234158,
		41.122097, 35.666981, 30.864954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710457, 35.371532, 31.382685>,  <41.234276, 34.995750, 31.028866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710457, 35.371532, 31.382685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434971, 35.645699, 31.288128>,  <41.269680, 35.810200, 31.231394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434971, 35.645699, 31.288128>,  <41.710457, 35.371532, 31.382685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434971, 35.645699, 31.288128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113359, 0.220237, 0.968837,
		0.716120, 0.694046, -0.073981,
		-0.688711, 0.685417, -0.236392,
		41.228359, 35.851322, 31.217211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774067, 35.838783, 31.868837>,  <41.710457, 35.371532, 31.382685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774067, 35.838783, 31.868837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410088, 35.944359, 31.740877>,  <41.191700, 36.007702, 31.664101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410088, 35.944359, 31.740877>,  <41.774067, 35.838783, 31.868837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410088, 35.944359, 31.740877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268654, 0.212508, 0.939503,
		0.315951, 0.940839, -0.122463,
		-0.909945, 0.263936, -0.319902,
		41.137104, 36.023540, 31.644907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519302, 36.540115, 32.203857>,  <41.774067, 35.838783, 31.868837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519302, 36.540115, 32.203857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187603, 36.354916, 32.078651>,  <40.988583, 36.243793, 32.003529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187603, 36.354916, 32.078651>,  <41.519302, 36.540115, 32.203857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187603, 36.354916, 32.078651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365154, 0.024846, 0.930615,
		-0.423100, 0.886009, -0.189670,
		-0.829246, -0.463002, -0.313018,
		40.938828, 36.216015, 31.984747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830147, 36.932747, 32.251907>,  <41.519302, 36.540115, 32.203857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830147, 36.932747, 32.251907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737659, 36.544502, 32.278580>,  <40.682167, 36.311554, 32.294582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737659, 36.544502, 32.278580>,  <40.830147, 36.932747, 32.251907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737659, 36.544502, 32.278580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456747, 0.168808, 0.873434,
		-0.859022, 0.171503, -0.482357,
		-0.231222, -0.970614, 0.066676,
		40.668293, 36.253319, 32.298584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045902, 36.826004, 32.269535>,  <40.830147, 36.932747, 32.251907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045902, 36.826004, 32.269535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217945, 36.508614, 32.441769>,  <40.321171, 36.318180, 32.545109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217945, 36.508614, 32.441769>,  <40.045902, 36.826004, 32.269535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217945, 36.508614, 32.441769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586755, 0.116776, 0.801300,
		-0.686098, -0.597288, -0.415352,
		0.430104, -0.793480, 0.430581,
		40.346977, 36.270569, 32.570942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535030, 36.362656, 32.445976>,  <40.045902, 36.826004, 32.269535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535030, 36.362656, 32.445976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836010, 36.246441, 32.682419>,  <40.016598, 36.176712, 32.824284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836010, 36.246441, 32.682419>,  <39.535030, 36.362656, 32.445976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836010, 36.246441, 32.682419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601136, 0.063828, 0.796594,
		-0.269171, -0.954732, -0.126626,
		0.752451, -0.290540, 0.591104,
		40.061745, 36.159279, 32.859749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423344, 35.678291, 32.868031>,  <39.535030, 36.362656, 32.445976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423344, 35.678291, 32.868031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669006, 35.933495, 33.053829>,  <39.816402, 36.086617, 33.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669006, 35.933495, 33.053829>,  <39.423344, 35.678291, 32.868031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669006, 35.933495, 33.053829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616368, 0.020208, 0.787199,
		0.492851, -0.769765, 0.405658,
		0.614156, 0.638007, 0.464499,
		39.853252, 36.124897, 33.193180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118389, 35.789768, 33.501896>,  <39.423344, 35.678291, 32.868031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118389, 35.789768, 33.501896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431648, 36.033859, 33.549740>,  <39.619602, 36.180313, 33.578445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431648, 36.033859, 33.549740>,  <39.118389, 35.789768, 33.501896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431648, 36.033859, 33.549740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294466, 0.194512, 0.935657,
		0.547697, -0.767977, 0.332023,
		0.783145, 0.610227, 0.119609,
		39.666592, 36.216927, 33.585621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492393, 35.536190, 34.106083>,  <39.118389, 35.789768, 33.501896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492393, 35.536190, 34.106083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549404, 35.924976, 34.031284>,  <39.583611, 36.158249, 33.986404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549404, 35.924976, 34.031284>,  <39.492393, 35.536190, 34.106083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549404, 35.924976, 34.031284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404331, 0.229614, 0.885321,
		0.903439, -0.050576, 0.425723,
		0.142528, 0.971967, -0.186993,
		39.592163, 36.216568, 33.975185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888031, 35.688118, 34.743675>,  <39.492393, 35.536190, 34.106083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888031, 35.688118, 34.743675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776684, 36.038269, 34.585571>,  <39.709877, 36.248360, 34.490707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776684, 36.038269, 34.585571>,  <39.888031, 35.688118, 34.743675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776684, 36.038269, 34.585571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184692, 0.355065, 0.916416,
		0.942550, 0.328103, 0.062836,
		-0.278367, 0.875373, -0.395264,
		39.693172, 36.300880, 34.466991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325714, 36.183319, 35.036777>,  <39.888031, 35.688118, 34.743675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325714, 36.183319, 35.036777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029015, 36.411861, 34.896286>,  <39.850994, 36.548985, 34.811989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029015, 36.411861, 34.896286>,  <40.325714, 36.183319, 35.036777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029015, 36.411861, 34.896286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206034, 0.304253, 0.930043,
		0.638247, 0.762224, -0.107961,
		-0.741748, 0.571354, -0.351232,
		39.806492, 36.583267, 34.790916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337475, 36.837875, 35.286434>,  <40.325714, 36.183319, 35.036777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337475, 36.837875, 35.286434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966103, 36.708549, 35.213234>,  <39.743279, 36.630955, 35.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966103, 36.708549, 35.213234>,  <40.337475, 36.837875, 35.286434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966103, 36.708549, 35.213234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243435, 0.157328, 0.957072,
		-0.280644, 0.933121, -0.224773,
		-0.928428, -0.323315, -0.183002,
		39.687572, 36.611557, 35.158333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418869, 37.026314, 35.994541>,  <40.337475, 36.837875, 35.286434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418869, 37.026314, 35.994541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387306, 36.698936, 36.222202>,  <40.368370, 36.502510, 36.358799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387306, 36.698936, 36.222202>,  <40.418869, 37.026314, 35.994541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387306, 36.698936, 36.222202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700851, 0.360471, 0.615523,
		-0.708930, 0.447458, 0.545160,
		-0.078906, -0.818439, 0.569150,
		40.363636, 36.453403, 36.392948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783058, 37.284786, 35.701008>,  <40.418869, 37.026314, 35.994541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783058, 37.284786, 35.701008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569382, 36.964848, 35.591545>,  <39.441174, 36.772884, 35.525867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569382, 36.964848, 35.591545>,  <39.783058, 37.284786, 35.701008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569382, 36.964848, 35.591545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408236, -0.039385, 0.912027,
		-0.740258, 0.598913, -0.305486,
		-0.534193, -0.799845, -0.273653,
		39.409122, 36.724895, 35.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064972, 37.353386, 35.739166>,  <39.783058, 37.284786, 35.701008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064972, 37.353386, 35.739166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118992, 36.958649, 35.774727>,  <39.151402, 36.721806, 35.796062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118992, 36.958649, 35.774727>,  <39.064972, 37.353386, 35.739166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118992, 36.958649, 35.774727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468525, 0.015456, 0.883315,
		-0.873067, -0.160941, -0.460273,
		0.135048, -0.986843, 0.088899,
		39.159508, 36.662598, 35.801395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468487, 37.123444, 36.016823>,  <39.064972, 37.353386, 35.739166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468487, 37.123444, 36.016823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678047, 36.790321, 36.088329>,  <38.803783, 36.590446, 36.131233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678047, 36.790321, 36.088329>,  <38.468487, 37.123444, 36.016823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678047, 36.790321, 36.088329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568130, -0.185286, 0.801808,
		-0.634627, -0.521636, -0.570215,
		0.523905, -0.832805, 0.178769,
		38.835220, 36.540478, 36.141960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974968, 36.564102, 36.080296>,  <38.468487, 37.123444, 36.016823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974968, 36.564102, 36.080296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312748, 36.499619, 36.284618>,  <38.515415, 36.460930, 36.407211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312748, 36.499619, 36.284618>,  <37.974968, 36.564102, 36.080296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312748, 36.499619, 36.284618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535450, -0.279335, 0.797036,
		0.014200, -0.946565, -0.322201,
		0.844448, -0.161204, 0.510804,
		38.566082, 36.451256, 36.437859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952808, 35.917561, 36.170223>,  <37.974968, 36.564102, 36.080296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952808, 35.917561, 36.170223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178871, 36.078514, 36.458302>,  <38.314510, 36.175087, 36.631149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178871, 36.078514, 36.458302>,  <37.952808, 35.917561, 36.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178871, 36.078514, 36.458302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655705, -0.310680, 0.688134,
		0.500648, -0.861140, 0.088265,
		0.565157, 0.402388, 0.720195,
		38.348419, 36.199230, 36.674358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003025, 35.461132, 36.697823>,  <37.952808, 35.917561, 36.170223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003025, 35.461132, 36.697823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102894, 35.807762, 36.870663>,  <38.162815, 36.015739, 36.974365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102894, 35.807762, 36.870663>,  <38.003025, 35.461132, 36.697823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102894, 35.807762, 36.870663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674913, -0.164252, 0.719384,
		0.694375, -0.471236, 0.543856,
		0.249670, 0.866578, 0.432095,
		38.177795, 36.067734, 37.000290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872040, 35.268494, 37.335175>,  <38.003025, 35.461132, 36.697823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872040, 35.268494, 37.335175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921055, 35.664848, 37.357544>,  <37.950462, 35.902660, 37.370964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921055, 35.664848, 37.357544>,  <37.872040, 35.268494, 37.335175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921055, 35.664848, 37.357544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763852, 0.058184, 0.642763,
		0.633652, -0.121479, 0.764021,
		0.122536, 0.990887, 0.055924,
		37.957817, 35.962116, 37.374321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812401, 35.376881, 37.960262>,  <37.872040, 35.268494, 37.335175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812401, 35.376881, 37.960262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754730, 35.744923, 37.814594>,  <37.720127, 35.965748, 37.727192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754730, 35.744923, 37.814594>,  <37.812401, 35.376881, 37.960262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754730, 35.744923, 37.814594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662403, 0.183664, 0.726285,
		0.735143, 0.345942, 0.583000,
		-0.144177, 0.920104, -0.364172,
		37.711475, 36.020954, 37.705341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784401, 35.846539, 38.518948>,  <37.812401, 35.376881, 37.960262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784401, 35.846539, 38.518948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643898, 36.087173, 38.231976>,  <37.559597, 36.231556, 38.059792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643898, 36.087173, 38.231976>,  <37.784401, 35.846539, 38.518948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643898, 36.087173, 38.231976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607436, 0.436679, 0.663576,
		0.712487, 0.668881, 0.212038,
		-0.351261, 0.601589, -0.717430,
		37.538521, 36.267651, 38.016747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934887, 36.654419, 38.651428>,  <37.784401, 35.846539, 38.518948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934887, 36.654419, 38.651428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610161, 36.516235, 38.463123>,  <37.415325, 36.433327, 38.350140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610161, 36.516235, 38.463123>,  <37.934887, 36.654419, 38.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610161, 36.516235, 38.463123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570113, 0.294687, 0.766897,
		-0.126206, 0.890964, -0.436183,
		-0.811815, -0.345460, -0.470759,
		37.366615, 36.412598, 38.321896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267216, 37.022686, 38.924664>,  <37.934887, 36.654419, 38.651428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267216, 37.022686, 38.924664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161865, 36.674572, 38.758175>,  <37.098656, 36.465706, 38.658279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161865, 36.674572, 38.758175>,  <37.267216, 37.022686, 38.924664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161865, 36.674572, 38.758175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763298, -0.075847, 0.641579,
		-0.589923, 0.486680, -0.644308,
		-0.263375, -0.870281, -0.416226,
		37.082851, 36.413486, 38.633308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642254, 37.075401, 38.627075>,  <37.267216, 37.022686, 38.924664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642254, 37.075401, 38.627075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684906, 36.698872, 38.755161>,  <36.710499, 36.472954, 38.832012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684906, 36.698872, 38.755161>,  <36.642254, 37.075401, 38.627075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684906, 36.698872, 38.755161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837552, 0.088527, 0.539137,
		-0.535851, -0.325690, -0.778967,
		0.106631, -0.941323, 0.320220,
		36.716896, 36.416473, 38.851227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134888, 36.744278, 38.267166>,  <36.642254, 37.075401, 38.627075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134888, 36.744278, 38.267166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215328, 36.612782, 38.636269>,  <36.263596, 36.533882, 38.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215328, 36.612782, 38.636269>,  <36.134888, 36.744278, 38.267166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215328, 36.612782, 38.636269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956530, 0.137201, 0.257345,
		-0.211204, -0.934400, -0.286862,
		0.201106, -0.328745, 0.922759,
		36.275661, 36.514160, 38.913097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707954, 36.140736, 38.408192>,  <36.134888, 36.744278, 38.267166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707954, 36.140736, 38.408192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793804, 36.375919, 38.720150>,  <35.845314, 36.517029, 38.907326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793804, 36.375919, 38.720150>,  <35.707954, 36.140736, 38.408192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793804, 36.375919, 38.720150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969744, 0.033176, 0.241861,
		0.116331, -0.808209, 0.577292,
		0.214626, 0.587961, 0.779896,
		35.858192, 36.552307, 38.954121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407341, 36.104786, 38.086460>,  <35.707954, 36.140736, 38.408192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407341, 36.104786, 38.086460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550190, 36.477154, 38.117050>,  <36.635899, 36.700573, 38.135406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550190, 36.477154, 38.117050>,  <36.407341, 36.104786, 38.086460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550190, 36.477154, 38.117050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777668, -0.250977, -0.576406,
		-0.517394, 0.265324, -0.813577,
		0.357123, 0.930921, 0.076480,
		36.657326, 36.756432, 38.139996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408501, 36.403481, 37.408226>,  <36.407341, 36.104786, 38.086460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408501, 36.403481, 37.408226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708759, 36.532166, 37.639061>,  <36.888916, 36.609375, 37.777561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708759, 36.532166, 37.639061>,  <36.408501, 36.403481, 37.408226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708759, 36.532166, 37.639061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660067, -0.326768, -0.676413,
		-0.029037, 0.888664, -0.457638,
		0.750646, 0.321712, 0.577089,
		36.933952, 36.628677, 37.812187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980022, 36.941998, 37.110447>,  <36.408501, 36.403481, 37.408226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980022, 36.941998, 37.110447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143864, 36.724369, 37.403351>,  <37.242168, 36.593792, 37.579094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143864, 36.724369, 37.403351>,  <36.980022, 36.941998, 37.110447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143864, 36.724369, 37.403351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833303, -0.103521, -0.543038,
		0.371257, 0.832627, 0.410974,
		0.409603, -0.544073, 0.732264,
		37.266747, 36.561146, 37.623032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594315, 37.262791, 37.206150>,  <36.980022, 36.941998, 37.110447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594315, 37.262791, 37.206150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628956, 36.899433, 37.369766>,  <37.649738, 36.681419, 37.467937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628956, 36.899433, 37.369766>,  <37.594315, 37.262791, 37.206150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628956, 36.899433, 37.369766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907782, -0.097189, -0.408027,
		0.410405, 0.406654, 0.816211,
		0.086599, -0.908398, 0.409040,
		37.654934, 36.626915, 37.492477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245781, 37.256569, 37.567638>,  <37.594315, 37.262791, 37.206150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245781, 37.256569, 37.567638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142567, 36.873142, 37.519352>,  <38.080639, 36.643085, 37.490379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142567, 36.873142, 37.519352>,  <38.245781, 37.256569, 37.567638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142567, 36.873142, 37.519352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872975, -0.177793, -0.454208,
		0.413926, -0.222583, 0.882679,
		-0.258033, -0.958565, -0.120716,
		38.065155, 36.585571, 37.483139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839165, 37.027897, 37.597179>,  <38.245781, 37.256569, 37.567638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839165, 37.027897, 37.597179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638569, 36.719440, 37.440285>,  <38.518211, 36.534367, 37.346149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638569, 36.719440, 37.440285>,  <38.839165, 37.027897, 37.597179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638569, 36.719440, 37.440285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772685, -0.195263, -0.604012,
		0.389190, -0.605980, 0.693772,
		-0.501487, -0.771142, -0.392237,
		38.488121, 36.488098, 37.322613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368732, 36.588955, 37.339027>,  <38.839165, 37.027897, 37.597179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368732, 36.588955, 37.339027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047573, 36.460304, 37.138268>,  <38.854877, 36.383114, 37.017811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047573, 36.460304, 37.138268>,  <39.368732, 36.588955, 37.339027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047573, 36.460304, 37.138268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585701, -0.268955, -0.764603,
		0.110928, -0.907865, 0.404322,
		-0.802901, -0.321627, -0.501903,
		38.806702, 36.363815, 36.987698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596066, 35.966579, 37.069046>,  <39.368732, 36.588955, 37.339027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596066, 35.966579, 37.069046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291168, 36.104298, 36.849796>,  <39.108231, 36.186928, 36.718246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291168, 36.104298, 36.849796>,  <39.596066, 35.966579, 37.069046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291168, 36.104298, 36.849796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577742, -0.019959, -0.815975,
		-0.291879, -0.938648, -0.183702,
		-0.762247, 0.344298, -0.548123,
		39.062492, 36.207588, 36.685360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749672, 35.212605, 36.967560>,  <39.596066, 35.966579, 37.069046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749672, 35.212605, 36.967560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702892, 34.871925, 37.171890>,  <39.674824, 34.667519, 37.294487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702892, 34.871925, 37.171890>,  <39.749672, 35.212605, 36.967560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702892, 34.871925, 37.171890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922996, -0.096659, -0.372471,
		0.366607, -0.515049, -0.774806,
		-0.116949, -0.851694, 0.510824,
		39.667809, 34.616417, 37.325138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463284, 35.467178, 36.365334>,  <39.749672, 35.212605, 36.967560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463284, 35.467178, 36.365334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251293, 35.794147, 36.275051>,  <39.124100, 35.990330, 36.220882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251293, 35.794147, 36.275051>,  <39.463284, 35.467178, 36.365334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251293, 35.794147, 36.275051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514395, 0.098275, -0.851904,
		-0.674187, -0.567587, -0.472563,
		-0.529971, 0.817427, -0.225708,
		39.092300, 36.039375, 36.207340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275181, 35.337688, 35.724884>,  <39.463284, 35.467178, 36.365334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275181, 35.337688, 35.724884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218483, 35.730545, 35.774387>,  <39.184464, 35.966259, 35.804089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218483, 35.730545, 35.774387>,  <39.275181, 35.337688, 35.724884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218483, 35.730545, 35.774387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282109, 0.159909, -0.945962,
		-0.948854, -0.099171, -0.299736,
		-0.141742, 0.982138, 0.123754,
		39.175961, 36.025185, 35.811512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907787, 35.596466, 35.134750>,  <39.275181, 35.337688, 35.724884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907787, 35.596466, 35.134750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068455, 35.939739, 35.262619>,  <39.164856, 36.145702, 35.339340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068455, 35.939739, 35.262619>,  <38.907787, 35.596466, 35.134750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068455, 35.939739, 35.262619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025076, 0.338626, -0.940587,
		-0.915442, 0.385821, 0.114495,
		0.401669, 0.858181, 0.319667,
		39.188957, 36.197193, 35.358521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559246, 36.059326, 34.762928>,  <38.907787, 35.596466, 35.134750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559246, 36.059326, 34.762928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886250, 36.245438, 34.898693>,  <39.082451, 36.357105, 34.980152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886250, 36.245438, 34.898693>,  <38.559246, 36.059326, 34.762928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886250, 36.245438, 34.898693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227431, 0.280627, -0.932482,
		-0.529110, 0.839503, 0.123596,
		0.817507, 0.465277, 0.339411,
		39.131500, 36.385021, 35.000515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499355, 36.846478, 34.987087>,  <38.559246, 36.059326, 34.762928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499355, 36.846478, 34.987087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896938, 36.839474, 35.030415>,  <39.135490, 36.835274, 35.056412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896938, 36.839474, 35.030415>,  <38.499355, 36.846478, 34.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896938, 36.839474, 35.030415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108411, 0.004499, -0.994096,
		0.016916, 0.999837, 0.006370,
		0.993962, -0.017507, 0.108318,
		39.195126, 36.834221, 35.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746445, 37.156406, 34.370674>,  <38.499355, 36.846478, 34.987087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746445, 37.156406, 34.370674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082626, 36.997162, 34.517723>,  <39.284336, 36.901615, 34.605953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082626, 36.997162, 34.517723>,  <38.746445, 37.156406, 34.370674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082626, 36.997162, 34.517723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329725, -0.162648, -0.929961,
		0.430022, 0.902802, -0.005430,
		0.840454, -0.398113, 0.367618,
		39.334763, 36.877728, 34.628010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287750, 37.448421, 34.034534>,  <38.746445, 37.156406, 34.370674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287750, 37.448421, 34.034534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418968, 37.094898, 34.167965>,  <39.497700, 36.882786, 34.248024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418968, 37.094898, 34.167965>,  <39.287750, 37.448421, 34.034534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418968, 37.094898, 34.167965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503951, -0.134945, -0.853126,
		0.799011, 0.447972, 0.401125,
		0.328047, -0.883805, 0.333578,
		39.517384, 36.829758, 34.268040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025394, 37.362926, 34.039703>,  <39.287750, 37.448421, 34.034534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025394, 37.362926, 34.039703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884281, 36.990570, 34.001785>,  <39.799614, 36.767155, 33.979034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884281, 36.990570, 34.001785>,  <40.025394, 37.362926, 34.039703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884281, 36.990570, 34.001785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669087, -0.180146, -0.721021,
		0.654114, -0.317791, 0.686399,
		-0.352786, -0.930890, -0.094794,
		39.778446, 36.711304, 33.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622471, 37.023838, 33.911877>,  <40.025394, 37.362926, 34.039703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622471, 37.023838, 33.911877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337704, 36.761261, 33.812077>,  <40.166843, 36.603714, 33.752197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337704, 36.761261, 33.812077>,  <40.622471, 37.023838, 33.911877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337704, 36.761261, 33.812077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566752, -0.327270, -0.756099,
		0.414682, -0.679688, 0.605031,
		-0.711920, -0.656444, -0.249502,
		40.124126, 36.564327, 33.737225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978184, 36.428867, 33.841167>,  <40.622471, 37.023838, 33.911877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978184, 36.428867, 33.841167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642059, 36.308987, 33.660477>,  <40.440384, 36.237057, 33.552063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642059, 36.308987, 33.660477>,  <40.978184, 36.428867, 33.841167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642059, 36.308987, 33.660477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540914, -0.408367, -0.735288,
		0.035901, -0.862214, 0.505270,
		-0.840311, -0.299705, -0.451723,
		40.389965, 36.219074, 33.524960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015995, 35.666340, 33.677010>,  <40.978184, 36.428867, 33.841167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015995, 35.666340, 33.677010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740421, 35.818977, 33.430511>,  <40.575077, 35.910561, 33.282612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740421, 35.818977, 33.430511>,  <41.015995, 35.666340, 33.677010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740421, 35.818977, 33.430511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472736, -0.407926, -0.781100,
		-0.549441, -0.829449, 0.100643,
		-0.688938, 0.381590, -0.616242,
		40.533741, 35.933453, 33.245640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982807, 35.202591, 33.019192>,  <41.015995, 35.666340, 33.677010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982807, 35.202591, 33.019192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793407, 35.532429, 32.895363>,  <40.679768, 35.730331, 32.821064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793407, 35.532429, 32.895363>,  <40.982807, 35.202591, 33.019192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793407, 35.532429, 32.895363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207253, -0.237299, -0.949071,
		-0.856063, -0.513546, -0.058539,
		-0.473500, 0.824597, -0.309577,
		40.651356, 35.779808, 32.802490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513962, 35.018661, 32.584045>,  <40.982807, 35.202591, 33.019192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513962, 35.018661, 32.584045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577980, 35.404945, 32.502274>,  <40.616390, 35.636715, 32.453213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577980, 35.404945, 32.502274>,  <40.513962, 35.018661, 32.584045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577980, 35.404945, 32.502274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107920, -0.222973, -0.968833,
		-0.981193, 0.132992, -0.139904,
		0.160042, 0.965710, -0.204427,
		40.625992, 35.694660, 32.440945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612206, 34.399330, 32.904335>,  <40.513962, 35.018661, 32.584045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612206, 34.399330, 32.904335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955700, 34.553005, 32.768707>,  <41.161797, 34.645210, 32.687332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955700, 34.553005, 32.768707>,  <40.612206, 34.399330, 32.904335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955700, 34.553005, 32.768707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493139, -0.439831, 0.750575,
		0.139232, -0.811754, -0.567160,
		0.858737, 0.384193, -0.339069,
		41.213322, 34.668262, 32.666988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125328, 33.884975, 32.988918>,  <40.612206, 34.399330, 32.904335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125328, 33.884975, 32.988918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312305, 34.238323, 33.002514>,  <41.424492, 34.450333, 33.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312305, 34.238323, 33.002514>,  <41.125328, 33.884975, 32.988918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312305, 34.238323, 33.002514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483359, -0.287588, 0.826836,
		0.740176, -0.370071, -0.561415,
		0.467444, 0.883369, 0.033989,
		41.452538, 34.503334, 33.012711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866409, 33.638729, 33.093456>,  <41.125328, 33.884975, 32.988918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866409, 33.638729, 33.093456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742741, 33.995731, 33.224819>,  <41.668541, 34.209934, 33.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742741, 33.995731, 33.224819>,  <41.866409, 33.638729, 33.093456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742741, 33.995731, 33.224819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351781, -0.213499, 0.911410,
		0.883551, 0.397308, -0.247959,
		-0.309171, 0.892505, 0.328403,
		41.649990, 34.263481, 33.323341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392719, 33.856171, 33.483372>,  <41.866409, 33.638729, 33.093456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392719, 33.856171, 33.483372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076618, 34.077637, 33.588406>,  <41.886955, 34.210518, 33.651424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076618, 34.077637, 33.588406>,  <42.392719, 33.856171, 33.483372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076618, 34.077637, 33.588406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317007, 0.002675, 0.948419,
		0.524405, 0.832735, -0.177630,
		-0.790257, 0.553666, 0.262580,
		41.839542, 34.243736, 33.667179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563908, 34.535892, 33.751614>,  <42.392719, 33.856171, 33.483372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563908, 34.535892, 33.751614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320484, 34.288605, 33.950596>,  <42.174431, 34.140232, 34.069984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320484, 34.288605, 33.950596>,  <42.563908, 34.535892, 33.751614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320484, 34.288605, 33.950596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688726, -0.100167, 0.718069,
		-0.394096, 0.779596, 0.486742,
		-0.608559, -0.618221, 0.497453,
		42.137917, 34.103138, 34.099831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436924, 34.802902, 34.458637>,  <42.563908, 34.535892, 33.751614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436924, 34.802902, 34.458637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424919, 34.403587, 34.438530>,  <42.417717, 34.163998, 34.426464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424919, 34.403587, 34.438530>,  <42.436924, 34.802902, 34.458637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424919, 34.403587, 34.438530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759487, -0.055473, 0.648153,
		-0.649830, -0.018723, 0.759849,
		-0.030016, -0.998285, -0.050268,
		42.415913, 34.104103, 34.423450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387852, 34.387173, 35.106213>,  <42.436924, 34.802902, 34.458637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387852, 34.387173, 35.106213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574398, 34.143551, 34.849602>,  <42.686325, 33.997379, 34.695637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574398, 34.143551, 34.849602>,  <42.387852, 34.387173, 35.106213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574398, 34.143551, 34.849602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606884, -0.307338, 0.732963,
		-0.643578, -0.731163, 0.226291,
		0.466368, -0.609051, -0.641528,
		42.714310, 33.960835, 34.657143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589890, 33.924236, 35.583855>,  <42.387852, 34.387173, 35.106213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589890, 33.924236, 35.583855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807941, 33.871193, 35.252735>,  <42.938774, 33.839367, 35.054066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807941, 33.871193, 35.252735>,  <42.589890, 33.924236, 35.583855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807941, 33.871193, 35.252735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642951, -0.567529, 0.514320,
		-0.537999, -0.812605, -0.224120,
		0.545134, -0.132605, -0.827795,
		42.971481, 33.831413, 35.004398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824795, 33.125210, 35.270138>,  <42.589890, 33.924236, 35.583855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824795, 33.125210, 35.270138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100193, 33.390182, 35.152046>,  <43.265430, 33.549168, 35.081192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100193, 33.390182, 35.152046>,  <42.824795, 33.125210, 35.270138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100193, 33.390182, 35.152046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696480, -0.490428, 0.523828,
		0.202212, -0.566273, -0.799028,
		0.688495, 0.662432, -0.295227,
		43.306740, 33.588913, 35.063477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355659, 32.755569, 35.109905>,  <42.824795, 33.125210, 35.270138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355659, 32.755569, 35.109905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520573, 33.119843, 35.120396>,  <43.619522, 33.338406, 35.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520573, 33.119843, 35.120396>,  <43.355659, 32.755569, 35.109905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520573, 33.119843, 35.120396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608742, -0.296777, 0.735769,
		0.677832, -0.287381, -0.676725,
		0.412282, 0.910679, 0.026224,
		43.644257, 33.393047, 35.128262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147194, 32.628426, 34.989628>,  <43.355659, 32.755569, 35.109905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147194, 32.628426, 34.989628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016376, 32.926033, 35.222687>,  <43.937885, 33.104599, 35.362522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016376, 32.926033, 35.222687>,  <44.147194, 32.628426, 34.989628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016376, 32.926033, 35.222687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454175, -0.416927, 0.787335,
		0.828713, 0.522118, -0.201561,
		-0.327045, 0.744019, 0.582646,
		43.918262, 33.149239, 35.397480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577248, 32.899696, 34.398945>,  <44.147194, 32.628426, 34.989628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577248, 32.899696, 34.398945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262356, 33.018387, 34.615177>,  <44.073421, 33.089600, 34.744915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262356, 33.018387, 34.615177>,  <44.577248, 32.899696, 34.398945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262356, 33.018387, 34.615177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429168, 0.365863, -0.825808,
		-0.442817, -0.882098, -0.160673,
		-0.787228, 0.296726, 0.540578,
		44.026188, 33.107407, 34.777351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567871, 33.224422, 35.000378>,  <44.577248, 32.899696, 34.398945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567871, 33.224422, 35.000378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938255, 33.187542, 35.146854>,  <45.160484, 33.165413, 35.234741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938255, 33.187542, 35.146854>,  <44.567871, 33.224422, 35.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938255, 33.187542, 35.146854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347705, 0.586450, -0.731558,
		-0.147299, 0.804720, 0.575090,
		0.925961, -0.092204, 0.366189,
		45.216045, 33.159882, 35.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903751, 33.926460, 34.983143>,  <44.567871, 33.224422, 35.000378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903751, 33.926460, 34.983143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117962, 33.591888, 34.936497>,  <45.246490, 33.391148, 34.908508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117962, 33.591888, 34.936497>,  <44.903751, 33.926460, 34.983143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117962, 33.591888, 34.936497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186077, 0.251562, -0.949785,
		0.823762, 0.486937, 0.290358,
		0.535529, -0.836426, -0.116620,
		45.278622, 33.340961, 34.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437389, 33.895454, 35.508305>,  <44.903751, 33.926460, 34.983143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437389, 33.895454, 35.508305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686054, 33.810299, 35.809822>,  <45.835255, 33.759205, 35.990734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686054, 33.810299, 35.809822>,  <45.437389, 33.895454, 35.508305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686054, 33.810299, 35.809822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775139, 0.028801, -0.631133,
		0.112648, 0.976653, 0.182920,
		0.621666, -0.212884, 0.753798,
		45.872555, 33.746433, 36.035961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982552, 34.410099, 35.595150>,  <45.437389, 33.895454, 35.508305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982552, 34.410099, 35.595150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091175, 34.043903, 35.713902>,  <46.156349, 33.824184, 35.785152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091175, 34.043903, 35.713902>,  <45.982552, 34.410099, 35.595150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091175, 34.043903, 35.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816325, 0.055718, -0.574899,
		0.509772, 0.398469, 0.762466,
		0.271563, -0.915488, 0.296876,
		46.172646, 33.769257, 35.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680309, 34.436687, 36.072697>,  <45.982552, 34.410099, 35.595150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680309, 34.436687, 36.072697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603130, 34.118248, 35.843262>,  <46.556824, 33.927185, 35.705601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603130, 34.118248, 35.843262>,  <46.680309, 34.436687, 36.072697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603130, 34.118248, 35.843262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793138, 0.217621, -0.568835,
		0.577672, -0.564688, 0.589425,
		-0.192943, -0.796096, -0.573589,
		46.545246, 33.879421, 35.671185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399529, 34.161407, 35.923092>,  <46.680309, 34.436687, 36.072697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399529, 34.161407, 35.923092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172874, 34.026039, 35.622585>,  <47.036880, 33.944820, 35.442284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172874, 34.026039, 35.622585>,  <47.399529, 34.161407, 35.923092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172874, 34.026039, 35.622585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748455, 0.169898, -0.641054,
		0.344582, -0.925531, 0.157020,
		-0.566638, -0.338418, -0.751262,
		47.002884, 33.924515, 35.397205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865070, 34.913952, 36.048458>,  <47.399529, 34.161407, 35.923092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865070, 34.913952, 36.048458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511028, 35.070110, 35.947132>,  <47.298603, 35.163807, 35.886337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511028, 35.070110, 35.947132>,  <47.865070, 34.913952, 36.048458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.511028, 35.070110, 35.947132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411731, 0.910625, -0.035209,
		0.216931, -0.135463, -0.966742,
		-0.885109, 0.390399, -0.253317,
		47.245495, 35.187229, 35.871136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.903446, 35.364208, 35.486862>,  <47.865070, 34.913952, 36.048458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.903446, 35.364208, 35.486862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583332, 35.476921, 35.698578>,  <47.391262, 35.544548, 35.825607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583332, 35.476921, 35.698578>,  <47.903446, 35.364208, 35.486862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583332, 35.476921, 35.698578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380728, 0.920726, 0.085494,
		-0.463237, 0.269934, -0.844125,
		-0.800286, 0.281778, 0.529286,
		47.343246, 35.561455, 35.857365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337555, 34.866920, 35.281364>,  <47.903446, 35.364208, 35.486862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337555, 34.866920, 35.281364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576435, 34.826767, 34.963051>,  <47.719765, 34.802673, 34.772064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576435, 34.826767, 34.963051>,  <47.337555, 34.866920, 35.281364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576435, 34.826767, 34.963051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097280, 0.975747, -0.196096,
		0.796167, 0.194523, 0.572956,
		0.597205, -0.100388, -0.795781,
		47.755596, 34.796650, 34.724316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.326416, 31.370642, 23.291382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943192, 31.421808, 23.188805>,  <35.713257, 31.452507, 23.127258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943192, 31.421808, 23.188805>,  <36.326416, 31.370642, 23.291382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943192, 31.421808, 23.188805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040086, 0.826240, 0.561890,
		0.283758, 0.548603, -0.786458,
		-0.958058, 0.127915, -0.256444,
		35.655773, 31.460182, 23.111872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119884, 32.060368, 23.414875>,  <36.326416, 31.370642, 23.291382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119884, 32.060368, 23.414875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741875, 31.934334, 23.379868>,  <35.515068, 31.858713, 23.358864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.741875, 31.934334, 23.379868>,  <36.119884, 32.060368, 23.414875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741875, 31.934334, 23.379868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295924, 0.710095, 0.638901,
		-0.139161, 0.629673, -0.764294,
		-0.945020, -0.315083, -0.087518,
		35.458370, 31.839809, 23.353613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683434, 32.694111, 23.244278>,  <36.119884, 32.060368, 23.414875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683434, 32.694111, 23.244278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.467709, 32.404362, 23.416058>,  <35.338272, 32.230511, 23.519125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.467709, 32.404362, 23.416058>,  <35.683434, 32.694111, 23.244278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467709, 32.404362, 23.416058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325146, 0.649545, 0.687293,
		-0.776804, 0.231031, -0.585834,
		-0.539311, -0.724374, 0.429450,
		35.305916, 32.187050, 23.544893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160988, 33.057671, 23.498346>,  <35.683434, 32.694111, 23.244278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160988, 33.057671, 23.498346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091038, 32.710590, 23.684467>,  <35.049068, 32.502342, 23.796141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091038, 32.710590, 23.684467>,  <35.160988, 33.057671, 23.498346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091038, 32.710590, 23.684467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429513, 0.492479, 0.756956,
		-0.885966, -0.067479, -0.458815,
		-0.174878, -0.867704, 0.465303,
		35.038574, 32.450279, 23.824059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581387, 33.098942, 23.912281>,  <35.160988, 33.057671, 23.498346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581387, 33.098942, 23.912281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754707, 32.777302, 24.075090>,  <34.858700, 32.584316, 24.172777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754707, 32.777302, 24.075090>,  <34.581387, 33.098942, 23.912281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754707, 32.777302, 24.075090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198184, 0.355556, 0.913402,
		-0.879189, -0.476445, -0.005297,
		0.433302, -0.804102, 0.407025,
		34.884697, 32.536072, 24.197197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101719, 32.937317, 24.439058>,  <34.581387, 33.098942, 23.912281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101719, 32.937317, 24.439058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447952, 32.760082, 24.532391>,  <34.655693, 32.653740, 24.588390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447952, 32.760082, 24.532391>,  <34.101719, 32.937317, 24.439058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447952, 32.760082, 24.532391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040440, 0.402575, 0.914493,
		-0.499134, -0.801004, 0.330543,
		0.865581, -0.443088, 0.233331,
		34.707626, 32.627155, 24.602390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998379, 32.476231, 25.107407>,  <34.101719, 32.937317, 24.439058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998379, 32.476231, 25.107407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.383015, 32.582703, 25.080616>,  <34.613796, 32.646587, 25.064543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.383015, 32.582703, 25.080616>,  <33.998379, 32.476231, 25.107407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383015, 32.582703, 25.080616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053199, 0.420119, 0.905909,
		0.269274, -0.867552, 0.418144,
		0.961593, 0.266182, -0.066974,
		34.671494, 32.662556, 25.060524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282604, 32.356266, 25.796162>,  <33.998379, 32.476231, 25.107407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282604, 32.356266, 25.796162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.562122, 32.607304, 25.658863>,  <34.729832, 32.757927, 25.576485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.562122, 32.607304, 25.658863>,  <34.282604, 32.356266, 25.796162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562122, 32.607304, 25.658863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079717, 0.408533, 0.909256,
		0.710871, -0.662741, 0.235449,
		0.698791, 0.627594, -0.343246,
		34.771759, 32.795582, 25.555889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664803, 32.495369, 26.342960>,  <34.282604, 32.356266, 25.796162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664803, 32.495369, 26.342960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835049, 32.768833, 26.105824>,  <34.937195, 32.932911, 25.963541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835049, 32.768833, 26.105824>,  <34.664803, 32.495369, 26.342960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835049, 32.768833, 26.105824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281871, 0.522385, 0.804775,
		0.859886, -0.509625, 0.029628,
		0.425611, 0.683664, -0.592840,
		34.962730, 32.973934, 25.927971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346745, 32.514957, 26.569555>,  <34.664803, 32.495369, 26.342960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346745, 32.514957, 26.569555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244892, 32.868336, 26.412233>,  <35.183781, 33.080360, 26.317841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244892, 32.868336, 26.412233>,  <35.346745, 32.514957, 26.569555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244892, 32.868336, 26.412233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435456, 0.467894, 0.769060,
		0.863447, 0.024560, -0.503842,
		-0.254632, 0.883443, -0.393307,
		35.168503, 33.133369, 26.294241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920021, 32.995945, 26.404772>,  <35.346745, 32.514957, 26.569555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920021, 32.995945, 26.404772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600712, 33.228050, 26.469343>,  <35.409126, 33.367313, 26.508085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600712, 33.228050, 26.469343>,  <35.920021, 32.995945, 26.404772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600712, 33.228050, 26.469343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509850, 0.508324, 0.694017,
		0.320656, 0.636317, -0.701627,
		-0.798269, 0.580265, 0.161429,
		35.361233, 33.402130, 26.517773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172016, 33.568161, 26.515644>,  <35.920021, 32.995945, 26.404772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172016, 33.568161, 26.515644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815502, 33.681705, 26.657080>,  <35.601593, 33.749832, 26.741941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815502, 33.681705, 26.657080>,  <36.172016, 33.568161, 26.515644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815502, 33.681705, 26.657080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452941, 0.593856, 0.664966,
		-0.021222, 0.752832, -0.657870,
		-0.891288, 0.283864, 0.353591,
		35.548115, 33.766865, 26.763157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353554, 34.175163, 26.759409>,  <36.172016, 33.568161, 26.515644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353554, 34.175163, 26.759409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.986538, 34.138710, 26.914236>,  <35.766331, 34.116840, 27.007133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.986538, 34.138710, 26.914236>,  <36.353554, 34.175163, 26.759409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986538, 34.138710, 26.914236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287180, 0.521432, 0.803515,
		-0.275056, 0.848412, -0.452262,
		-0.917536, -0.091131, 0.387070,
		35.711277, 34.111370, 27.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156761, 34.851295, 26.988304>,  <36.353554, 34.175163, 26.759409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156761, 34.851295, 26.988304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948017, 34.584648, 27.201202>,  <35.822773, 34.424660, 27.328941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948017, 34.584648, 27.201202>,  <36.156761, 34.851295, 26.988304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948017, 34.584648, 27.201202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145326, 0.545349, 0.825515,
		-0.840563, 0.508150, -0.187718,
		-0.521857, -0.666617, 0.532248,
		35.791462, 34.384663, 27.360876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926540, 35.252884, 27.420874>,  <36.156761, 34.851295, 26.988304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926540, 35.252884, 27.420874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859512, 34.900330, 27.597548>,  <35.819294, 34.688797, 27.703552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859512, 34.900330, 27.597548>,  <35.926540, 35.252884, 27.420874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859512, 34.900330, 27.597548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156671, 0.418518, 0.894593,
		-0.973332, 0.219106, 0.067955,
		-0.167571, -0.881382, 0.441685,
		35.809242, 34.635914, 27.730053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536674, 35.377193, 27.972498>,  <35.926540, 35.252884, 27.420874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536674, 35.377193, 27.972498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.662670, 35.018543, 28.096983>,  <35.738266, 34.803352, 28.171673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.662670, 35.018543, 28.096983>,  <35.536674, 35.377193, 27.972498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662670, 35.018543, 28.096983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113593, 0.361161, 0.925559,
		-0.942273, -0.256190, 0.215612,
		0.314989, -0.896621, 0.311211,
		35.757168, 34.749557, 28.190346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247883, 35.374401, 28.644886>,  <35.536674, 35.377193, 27.972498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247883, 35.374401, 28.644886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533508, 35.094376, 28.642790>,  <35.704884, 34.926361, 28.641531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533508, 35.094376, 28.642790>,  <35.247883, 35.374401, 28.644886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533508, 35.094376, 28.642790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294560, 0.293643, 0.909400,
		-0.635095, -0.650914, 0.415890,
		0.714065, -0.700060, -0.005242,
		35.747726, 34.884357, 28.641216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228703, 35.059536, 29.309784>,  <35.247883, 35.374401, 28.644886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228703, 35.059536, 29.309784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592049, 34.972420, 29.166986>,  <35.810055, 34.920151, 29.081308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592049, 34.972420, 29.166986>,  <35.228703, 35.059536, 29.309784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592049, 34.972420, 29.166986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409953, 0.295221, 0.863008,
		-0.082565, -0.930275, 0.357452,
		0.908362, -0.217793, -0.356994,
		35.864559, 34.907082, 29.059889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682541, 34.591396, 29.692640>,  <35.228703, 35.059536, 29.309784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682541, 34.591396, 29.692640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937229, 34.841698, 29.512413>,  <36.090042, 34.991879, 29.404278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937229, 34.841698, 29.512413>,  <35.682541, 34.591396, 29.692640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937229, 34.841698, 29.512413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253373, 0.382090, 0.888713,
		0.728276, -0.680025, 0.084735,
		0.636723, 0.625758, -0.450567,
		36.128246, 35.029427, 29.377243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028522, 34.875374, 30.242271>,  <35.682541, 34.591396, 29.692640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028522, 34.875374, 30.242271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212524, 35.071110, 29.945911>,  <36.322926, 35.188553, 29.768095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.212524, 35.071110, 29.945911>,  <36.028522, 34.875374, 30.242271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212524, 35.071110, 29.945911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511077, 0.536421, 0.671605,
		0.726080, -0.687602, -0.003333,
		0.460009, 0.489342, -0.740902,
		36.350529, 35.217911, 29.723640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714302, 34.867580, 30.371115>,  <36.028522, 34.875374, 30.242271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714302, 34.867580, 30.371115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649033, 35.185944, 30.137909>,  <36.609871, 35.376961, 29.997986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649033, 35.185944, 30.137909>,  <36.714302, 34.867580, 30.371115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649033, 35.185944, 30.137909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517553, 0.572153, 0.636223,
		0.839948, -0.197925, -0.505286,
		-0.163176, 0.795906, -0.583016,
		36.600079, 35.424717, 29.963005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383751, 35.259079, 30.309141>,  <36.714302, 34.867580, 30.371115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383751, 35.259079, 30.309141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045662, 35.472736, 30.302307>,  <36.842808, 35.600929, 30.298206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045662, 35.472736, 30.302307>,  <37.383751, 35.259079, 30.309141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045662, 35.472736, 30.302307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445769, 0.722291, 0.528759,
		0.294775, 0.439301, -0.848600,
		-0.845220, 0.534145, -0.017087,
		36.792095, 35.632980, 30.297182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936050, 35.200306, 30.731005>,  <37.383751, 35.259079, 30.309141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936050, 35.200306, 30.731005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187351, 34.922188, 30.870640>,  <38.338131, 34.755318, 30.954422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187351, 34.922188, 30.870640>,  <37.936050, 35.200306, 30.731005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187351, 34.922188, 30.870640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137922, -0.541121, -0.829558,
		0.765687, 0.473024, -0.435857,
		0.628252, -0.695296, 0.349089,
		38.375828, 34.713600, 30.975367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388538, 34.990803, 30.072346>,  <37.936050, 35.200306, 30.731005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388538, 34.990803, 30.072346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411564, 34.712742, 30.358965>,  <38.425377, 34.545906, 30.530937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411564, 34.712742, 30.358965>,  <38.388538, 34.990803, 30.072346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411564, 34.712742, 30.358965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018337, -0.716883, -0.696953,
		0.998173, 0.053257, -0.028518,
		0.057562, -0.695157, 0.716550,
		38.428833, 34.504196, 30.573931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994720, 34.546650, 29.883112>,  <38.388538, 34.990803, 30.072346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994720, 34.546650, 29.883112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733707, 34.362869, 30.124144>,  <38.577099, 34.252602, 30.268763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733707, 34.362869, 30.124144>,  <38.994720, 34.546650, 29.883112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733707, 34.362869, 30.124144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073691, -0.752968, -0.653918,
		0.754168, -0.471108, 0.457479,
		-0.652533, -0.459453, 0.602581,
		38.537949, 34.225033, 30.304918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293434, 34.004959, 29.989832>,  <38.994720, 34.546650, 29.883112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293434, 34.004959, 29.989832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915710, 33.907906, 30.078743>,  <38.689075, 33.849674, 30.132090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915710, 33.907906, 30.078743>,  <39.293434, 34.004959, 29.989832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915710, 33.907906, 30.078743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039797, -0.754756, -0.654797,
		0.326638, -0.609486, 0.722381,
		-0.944312, -0.242630, 0.222276,
		38.632416, 33.835117, 30.145426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271336, 33.254314, 30.035393>,  <39.293434, 34.004959, 29.989832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271336, 33.254314, 30.035393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882610, 33.337132, 29.990282>,  <38.649376, 33.386822, 29.963215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882610, 33.337132, 29.990282>,  <39.271336, 33.254314, 30.035393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882610, 33.337132, 29.990282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079886, -0.739215, -0.668715,
		-0.221819, -0.640854, 0.734916,
		-0.971810, 0.207044, -0.112777,
		38.591068, 33.399246, 29.956450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012966, 32.591599, 29.868935>,  <39.271336, 33.254314, 30.035393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012966, 32.591599, 29.868935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706371, 32.827999, 29.768360>,  <38.522415, 32.969841, 29.708015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706371, 32.827999, 29.768360>,  <39.012966, 32.591599, 29.868935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706371, 32.827999, 29.768360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104872, -0.501397, -0.858838,
		-0.633644, -0.631916, 0.446292,
		-0.766484, 0.591001, -0.251437,
		38.476425, 33.005299, 29.692928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428669, 32.166805, 29.586006>,  <39.012966, 32.591599, 29.868935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428669, 32.166805, 29.586006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384605, 32.531509, 29.427740>,  <38.358166, 32.750332, 29.332781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384605, 32.531509, 29.427740>,  <38.428669, 32.166805, 29.586006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384605, 32.531509, 29.427740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162437, -0.409252, -0.897845,
		-0.980550, -0.034635, 0.193187,
		-0.110159, 0.911763, -0.395667,
		38.351559, 32.805038, 29.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792698, 32.137753, 29.209118>,  <38.428669, 32.166805, 29.586006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792698, 32.137753, 29.209118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944340, 32.463837, 29.033979>,  <38.035324, 32.659489, 28.928896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944340, 32.463837, 29.033979>,  <37.792698, 32.137753, 29.209118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944340, 32.463837, 29.033979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129045, -0.421968, -0.897380,
		-0.916311, 0.396705, -0.054772,
		0.379107, 0.815211, -0.437846,
		38.058071, 32.708401, 28.902626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327694, 32.214314, 28.626194>,  <37.792698, 32.137753, 29.209118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327694, 32.214314, 28.626194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646053, 32.447269, 28.560026>,  <37.837070, 32.587044, 28.520325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646053, 32.447269, 28.560026>,  <37.327694, 32.214314, 28.626194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646053, 32.447269, 28.560026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042456, -0.218866, -0.974831,
		-0.603934, 0.782893, -0.149470,
		0.795903, 0.582388, -0.165419,
		37.884823, 32.621986, 28.510401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094513, 32.765423, 28.197472>,  <37.327694, 32.214314, 28.626194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094513, 32.765423, 28.197472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484104, 32.685608, 28.154474>,  <37.717857, 32.637718, 28.128675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484104, 32.685608, 28.154474>,  <37.094513, 32.765423, 28.197472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484104, 32.685608, 28.154474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147563, -0.198280, -0.968974,
		0.172034, 0.959620, -0.222564,
		0.973976, -0.199538, -0.107494,
		37.776299, 32.625748, 28.122227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217003, 33.075302, 27.527407>,  <37.094513, 32.765423, 28.197472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217003, 33.075302, 27.527407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525108, 32.835728, 27.615021>,  <37.709972, 32.691982, 27.667589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525108, 32.835728, 27.615021>,  <37.217003, 33.075302, 27.527407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525108, 32.835728, 27.615021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009702, -0.332415, -0.943083,
		0.637654, 0.728546, -0.250235,
		0.770261, -0.598934, 0.219034,
		37.756187, 32.656048, 27.680731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743996, 33.149265, 27.016361>,  <37.217003, 33.075302, 27.527407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743996, 33.149265, 27.016361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816410, 32.790615, 27.177999>,  <37.859859, 32.575424, 27.274982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816410, 32.790615, 27.177999>,  <37.743996, 33.149265, 27.016361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816410, 32.790615, 27.177999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196533, -0.369613, -0.908164,
		0.963639, 0.243831, 0.109301,
		0.181040, -0.896623, 0.404094,
		37.870724, 32.521629, 27.299227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414452, 32.944214, 26.743967>,  <37.743996, 33.149265, 27.016361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414452, 32.944214, 26.743967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191807, 32.624466, 26.834469>,  <38.058220, 32.432617, 26.888771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191807, 32.624466, 26.834469>,  <38.414452, 32.944214, 26.743967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191807, 32.624466, 26.834469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075318, -0.319777, -0.944494,
		0.827354, -0.508672, 0.238198,
		-0.556608, -0.799372, 0.226256,
		38.024826, 32.384655, 26.902346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691742, 32.434647, 26.328737>,  <38.414452, 32.944214, 26.743967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691742, 32.434647, 26.328737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380188, 32.212006, 26.444338>,  <38.193256, 32.078419, 26.513699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380188, 32.212006, 26.444338>,  <38.691742, 32.434647, 26.328737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380188, 32.212006, 26.444338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070168, -0.380580, -0.922082,
		0.623224, -0.738479, 0.257374,
		-0.778889, -0.556604, 0.289004,
		38.146523, 32.045025, 26.531038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841194, 31.869995, 26.159950>,  <38.691742, 32.434647, 26.328737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841194, 31.869995, 26.159950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441738, 31.857613, 26.176691>,  <38.202065, 31.850183, 26.186735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441738, 31.857613, 26.176691>,  <38.841194, 31.869995, 26.159950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441738, 31.857613, 26.176691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021921, -0.479116, -0.877478,
		0.047215, -0.877206, 0.477787,
		-0.998644, -0.030956, 0.041851,
		38.142143, 31.848326, 26.189247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610310, 31.224590, 25.891838>,  <38.841194, 31.869995, 26.159950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610310, 31.224590, 25.891838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267681, 31.426647, 25.849661>,  <38.062103, 31.547882, 25.824354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267681, 31.426647, 25.849661>,  <38.610310, 31.224590, 25.891838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267681, 31.426647, 25.849661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105135, -0.370883, -0.922709,
		-0.505208, -0.779279, 0.370795,
		-0.856570, 0.505144, -0.105443,
		38.010712, 31.578190, 25.818027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145935, 30.728531, 25.719917>,  <38.610310, 31.224590, 25.891838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145935, 30.728531, 25.719917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956604, 31.064060, 25.612335>,  <37.843006, 31.265377, 25.547787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956604, 31.064060, 25.612335>,  <38.145935, 30.728531, 25.719917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956604, 31.064060, 25.612335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110126, -0.359278, -0.926710,
		-0.873975, -0.409020, 0.262433,
		-0.473329, 0.838822, -0.268956,
		37.814606, 31.315706, 25.531649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477520, 30.523890, 25.564289>,  <38.145935, 30.728531, 25.719917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477520, 30.523890, 25.564289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578068, 30.867617, 25.386127>,  <37.638397, 31.073853, 25.279230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578068, 30.867617, 25.386127>,  <37.477520, 30.523890, 25.564289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578068, 30.867617, 25.386127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272751, -0.378641, -0.884442,
		-0.928667, 0.343804, 0.139203,
		0.251366, 0.859320, -0.445404,
		37.653477, 31.125412, 25.252506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.045769, 30.505554, 24.979645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278385, 30.813400, 24.874193>,  <37.417953, 30.998108, 24.810923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278385, 30.813400, 24.874193>,  <37.045769, 30.505554, 24.979645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278385, 30.813400, 24.874193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008603, -0.318226, -0.947976,
		-0.813473, 0.553553, -0.178440,
		0.581539, 0.769618, -0.263631,
		37.452847, 31.044285, 24.795103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706676, 30.965721, 24.412336>,  <37.045769, 30.505554, 24.979645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706676, 30.965721, 24.412336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102318, 31.015009, 24.380098>,  <37.339703, 31.044582, 24.360756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102318, 31.015009, 24.380098>,  <36.706676, 30.965721, 24.412336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102318, 31.015009, 24.380098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033362, -0.345567, -0.937801,
		-0.143407, 0.930269, -0.337690,
		0.989101, 0.123221, -0.080593,
		37.399048, 31.051975, 24.355921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762337, 31.230143, 23.839823>,  <36.706676, 30.965721, 24.412336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762337, 31.230143, 23.839823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119766, 31.064980, 23.910280>,  <37.334225, 30.965881, 23.952555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119766, 31.064980, 23.910280>,  <36.762337, 31.230143, 23.839823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119766, 31.064980, 23.910280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068955, -0.261478, -0.962743,
		0.443582, 0.872432, -0.205178,
		0.893577, -0.412907, 0.176146,
		37.387840, 30.941107, 23.963123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145191, 31.376444, 23.299866>,  <36.762337, 31.230143, 23.839823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145191, 31.376444, 23.299866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330631, 31.056696, 23.452749>,  <37.441895, 30.864847, 23.544479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330631, 31.056696, 23.452749>,  <37.145191, 31.376444, 23.299866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330631, 31.056696, 23.452749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032343, -0.415809, -0.908876,
		0.885453, 0.433720, -0.166916,
		0.463603, -0.799368, 0.382207,
		37.469711, 30.816885, 23.567411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720711, 31.307051, 22.899897>,  <37.145191, 31.376444, 23.299866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720711, 31.307051, 22.899897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651367, 30.947239, 23.060291>,  <37.609760, 30.731352, 23.156528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651367, 30.947239, 23.060291>,  <37.720711, 31.307051, 22.899897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651367, 30.947239, 23.060291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072472, -0.417702, -0.905689,
		0.982188, -0.127952, 0.137604,
		-0.173362, -0.899529, 0.400989,
		37.599358, 30.677380, 23.180588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000542, 30.969810, 22.388617>,  <37.720711, 31.307051, 22.899897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000542, 30.969810, 22.388617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859238, 30.663429, 22.603474>,  <37.774456, 30.479601, 22.732388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859238, 30.663429, 22.603474>,  <38.000542, 30.969810, 22.388617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859238, 30.663429, 22.603474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186317, -0.620261, -0.761946,
		0.916786, -0.169083, 0.361821,
		-0.353255, -0.765955, 0.537144,
		37.753262, 30.433643, 22.764616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564800, 30.461639, 22.522448>,  <38.000542, 30.969810, 22.388617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564800, 30.461639, 22.522448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.202991, 30.291723, 22.507473>,  <37.985909, 30.189774, 22.498487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.202991, 30.291723, 22.507473>,  <38.564800, 30.461639, 22.522448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202991, 30.291723, 22.507473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268761, -0.499711, -0.823442,
		0.331083, -0.754879, 0.566164,
		-0.904517, -0.424791, -0.037436,
		37.931637, 30.164286, 22.496243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674088, 29.856380, 22.146479>,  <38.564800, 30.461639, 22.522448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674088, 29.856380, 22.146479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276184, 29.815958, 22.152832>,  <38.037441, 29.791704, 22.156645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276184, 29.815958, 22.152832>,  <38.674088, 29.856380, 22.146479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276184, 29.815958, 22.152832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053941, -0.650122, -0.757913,
		0.086917, -0.753080, 0.652162,
		-0.994754, -0.101054, 0.015884,
		37.977757, 29.785643, 22.157597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392216, 29.166401, 22.283768>,  <38.674088, 29.856380, 22.146479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392216, 29.166401, 22.283768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109264, 29.355009, 22.073135>,  <37.939495, 29.468174, 21.946756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109264, 29.355009, 22.073135>,  <38.392216, 29.166401, 22.283768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109264, 29.355009, 22.073135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060786, -0.701642, -0.709932,
		-0.704184, -0.534221, 0.467690,
		-0.707411, 0.471494, -0.526558,
		37.897053, 29.496464, 21.915161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015411, 28.648100, 21.927290>,  <38.392216, 29.166401, 22.283768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015411, 28.648100, 21.927290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933281, 28.983566, 21.725508>,  <37.884003, 29.184847, 21.604439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933281, 28.983566, 21.725508>,  <38.015411, 28.648100, 21.927290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933281, 28.983566, 21.725508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048435, -0.506099, -0.861114,
		-0.977494, -0.201244, 0.063295,
		-0.205328, 0.838668, -0.504456,
		37.871681, 29.235167, 21.574171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556633, 28.425299, 21.386396>,  <38.015411, 28.648100, 21.927290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556633, 28.425299, 21.386396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686874, 28.788319, 21.280315>,  <37.765018, 29.006130, 21.216667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686874, 28.788319, 21.280315>,  <37.556633, 28.425299, 21.386396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686874, 28.788319, 21.280315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151516, -0.326944, -0.932819,
		-0.933287, 0.263547, -0.243963,
		0.325604, 0.907552, -0.265201,
		37.784557, 29.060585, 21.200756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260735, 28.530706, 20.744261>,  <37.556633, 28.425299, 21.386396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260735, 28.530706, 20.744261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551647, 28.805223, 20.747383>,  <37.726196, 28.969933, 20.749256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551647, 28.805223, 20.747383>,  <37.260735, 28.530706, 20.744261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551647, 28.805223, 20.747383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050161, -0.041810, -0.997866,
		-0.684499, 0.726125, -0.064833,
		0.727286, 0.686290, 0.007805,
		37.769833, 29.011110, 20.749725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136620, 29.050322, 20.252489>,  <37.260735, 28.530706, 20.744261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136620, 29.050322, 20.252489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530579, 29.039555, 20.320892>,  <37.766956, 29.033094, 20.361935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530579, 29.039555, 20.320892>,  <37.136620, 29.050322, 20.252489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530579, 29.039555, 20.320892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159923, -0.236769, -0.958314,
		0.066286, 0.971193, -0.228890,
		0.984901, -0.026918, 0.171010,
		37.826050, 29.031479, 20.372196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380737, 29.272936, 19.565706>,  <37.136620, 29.050322, 20.252489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380737, 29.272936, 19.565706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708988, 29.154747, 19.761364>,  <37.905941, 29.083834, 19.878759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.708988, 29.154747, 19.761364>,  <37.380737, 29.272936, 19.565706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708988, 29.154747, 19.761364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446242, -0.203369, -0.871498,
		0.356979, 0.933455, -0.035039,
		0.820630, -0.295470, 0.489145,
		37.955177, 29.066107, 19.908108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866241, 29.429424, 19.136717>,  <37.380737, 29.272936, 19.565706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866241, 29.429424, 19.136717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015926, 29.151199, 19.382044>,  <38.105736, 28.984264, 19.529240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015926, 29.151199, 19.382044>,  <37.866241, 29.429424, 19.136717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015926, 29.151199, 19.382044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577623, -0.342572, -0.740943,
		0.725476, 0.631538, 0.273576,
		0.374214, -0.695560, 0.613319,
		38.128189, 28.942532, 19.566040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558636, 29.594837, 19.169056>,  <37.866241, 29.429424, 19.136717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558636, 29.594837, 19.169056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524265, 29.210258, 19.273548>,  <38.503643, 28.979511, 19.336243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524265, 29.210258, 19.273548>,  <38.558636, 29.594837, 19.169056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524265, 29.210258, 19.273548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572512, -0.262232, -0.776830,
		0.815382, 0.082810, 0.572970,
		-0.085922, -0.961445, 0.261229,
		38.498489, 28.921825, 19.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172886, 29.356722, 19.108706>,  <38.558636, 29.594837, 19.169056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172886, 29.356722, 19.108706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970230, 29.012718, 19.084356>,  <38.848637, 28.806316, 19.069748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970230, 29.012718, 19.084356>,  <39.172886, 29.356722, 19.108706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970230, 29.012718, 19.084356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436463, -0.194954, -0.878347,
		0.743519, -0.471570, 0.474132,
		-0.506636, -0.860009, -0.060871,
		38.818241, 28.754715, 19.066095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620472, 28.849863, 18.798676>,  <39.172886, 29.356722, 19.108706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620472, 28.849863, 18.798676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.240646, 28.747742, 18.725859>,  <39.012749, 28.686468, 18.682169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.240646, 28.747742, 18.725859>,  <39.620472, 28.849863, 18.798676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240646, 28.747742, 18.725859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231150, -0.177656, -0.956561,
		0.211874, -0.950399, 0.227710,
		-0.949568, -0.255305, -0.182044,
		38.955776, 28.671150, 18.671246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703922, 28.219414, 18.511087>,  <39.620472, 28.849863, 18.798676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703922, 28.219414, 18.511087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343719, 28.353331, 18.400089>,  <39.127598, 28.433681, 18.333490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343719, 28.353331, 18.400089>,  <39.703922, 28.219414, 18.511087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343719, 28.353331, 18.400089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194449, -0.260760, -0.945618,
		-0.388947, -0.905492, 0.169715,
		-0.900505, 0.334795, -0.277493,
		39.073566, 28.453770, 18.316841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529938, 27.744932, 18.063219>,  <39.703922, 28.219414, 18.511087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529938, 27.744932, 18.063219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281796, 28.053722, 18.007769>,  <39.132912, 28.238997, 17.974499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281796, 28.053722, 18.007769>,  <39.529938, 27.744932, 18.063219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281796, 28.053722, 18.007769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050192, -0.137308, -0.989256,
		-0.782716, -0.620644, 0.046432,
		-0.620351, 0.771976, -0.138624,
		39.095692, 28.285315, 17.966181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077412, 27.537912, 17.530136>,  <39.529938, 27.744932, 18.063219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077412, 27.537912, 17.530136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.034470, 27.935314, 17.515045>,  <39.008705, 28.173756, 17.505991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.034470, 27.935314, 17.515045>,  <39.077412, 27.537912, 17.530136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034470, 27.935314, 17.515045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097899, -0.027197, -0.994825,
		-0.989389, -0.110491, -0.094343,
		-0.107353, 0.993505, -0.037725,
		39.002262, 28.233366, 17.503727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653786, 27.702871, 17.001623>,  <39.077412, 27.537912, 17.530136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653786, 27.702871, 17.001623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885685, 28.026100, 17.043417>,  <39.024822, 28.220037, 17.068493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885685, 28.026100, 17.043417>,  <38.653786, 27.702871, 17.001623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885685, 28.026100, 17.043417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307987, -0.098609, -0.946267,
		-0.754348, 0.580773, -0.306043,
		0.579745, 0.808071, 0.104485,
		39.059608, 28.268522, 17.074762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586475, 28.088526, 16.385571>,  <38.653786, 27.702871, 17.001623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586475, 28.088526, 16.385571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933643, 28.127220, 16.580450>,  <39.141945, 28.150436, 16.697378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933643, 28.127220, 16.580450>,  <38.586475, 28.088526, 16.385571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933643, 28.127220, 16.580450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496565, -0.145171, -0.855774,
		-0.012057, 0.984666, -0.174032,
		0.867916, 0.096736, 0.487200,
		39.194019, 28.156240, 16.726610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189644, 28.755674, 16.348721>,  <38.586475, 28.088526, 16.385571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189644, 28.755674, 16.348721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342033, 29.053612, 16.129608>,  <38.433468, 29.232374, 15.998140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342033, 29.053612, 16.129608>,  <38.189644, 28.755674, 16.348721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342033, 29.053612, 16.129608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045713, 0.576565, 0.815772,
		0.923454, -0.335830, 0.185608,
		0.380975, 0.744843, -0.547783,
		38.456326, 29.277065, 15.965273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598263, 29.152142, 16.788006>,  <38.189644, 28.755674, 16.348721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598263, 29.152142, 16.788006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530384, 29.395306, 16.477741>,  <38.489658, 29.541204, 16.291582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530384, 29.395306, 16.477741>,  <38.598263, 29.152142, 16.788006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530384, 29.395306, 16.477741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099550, 0.772476, 0.627192,
		0.980456, 0.183648, -0.070568,
		-0.169694, 0.607909, -0.775661,
		38.479477, 29.577679, 16.245043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061497, 29.758938, 16.883512>,  <38.598263, 29.152142, 16.788006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061497, 29.758938, 16.883512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739563, 29.841293, 16.660854>,  <38.546402, 29.890707, 16.527260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739563, 29.841293, 16.660854>,  <39.061497, 29.758938, 16.883512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739563, 29.841293, 16.660854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339783, 0.609140, 0.716587,
		0.486611, 0.765871, -0.420299,
		-0.804834, 0.205888, -0.556644,
		38.498112, 29.903059, 16.493862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060894, 30.407448, 16.898163>,  <39.061497, 29.758938, 16.883512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060894, 30.407448, 16.898163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687504, 30.299385, 16.803818>,  <38.463470, 30.234547, 16.747211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687504, 30.299385, 16.803818>,  <39.060894, 30.407448, 16.898163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687504, 30.299385, 16.803818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358578, 0.691920, 0.626632,
		-0.006091, 0.669524, -0.742766,
		-0.933480, -0.270156, -0.235862,
		38.407459, 30.218338, 16.733059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597713, 31.034424, 16.577887>,  <39.060894, 30.407448, 16.898163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597713, 31.034424, 16.577887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373528, 30.757372, 16.759499>,  <38.239017, 30.591141, 16.868465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373528, 30.757372, 16.759499>,  <38.597713, 31.034424, 16.577887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373528, 30.757372, 16.759499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300203, 0.680851, 0.668072,
		-0.771853, 0.238130, -0.589523,
		-0.560465, -0.692629, 0.454030,
		38.205387, 30.549583, 16.895708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125046, 31.363214, 17.014305>,  <38.597713, 31.034424, 16.577887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125046, 31.363214, 17.014305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994217, 31.002182, 17.126284>,  <37.915718, 30.785563, 17.193470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994217, 31.002182, 17.126284>,  <38.125046, 31.363214, 17.014305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994217, 31.002182, 17.126284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590037, 0.426448, 0.685564,
		-0.738160, 0.059051, -0.672036,
		-0.327072, -0.902583, 0.279944,
		37.896095, 30.731407, 17.210266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374825, 31.378265, 17.082159>,  <38.125046, 31.363214, 17.014305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374825, 31.378265, 17.082159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512905, 31.081869, 17.312555>,  <37.595753, 30.904032, 17.450794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512905, 31.081869, 17.312555>,  <37.374825, 31.378265, 17.082159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512905, 31.081869, 17.312555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613549, 0.286243, 0.735951,
		-0.710206, -0.607452, -0.355822,
		0.345204, -0.740990, 0.575993,
		37.616467, 30.859571, 17.485353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777340, 31.039001, 17.485897>,  <37.374825, 31.378265, 17.082159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777340, 31.039001, 17.485897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097126, 30.924776, 17.697294>,  <37.288998, 30.856241, 17.824133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097126, 30.924776, 17.697294>,  <36.777340, 31.039001, 17.485897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097126, 30.924776, 17.697294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544726, 0.026246, 0.838203,
		-0.253230, -0.958001, -0.134570,
		0.799467, -0.285562, 0.528495,
		37.336967, 30.839108, 17.855843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523109, 30.375267, 17.880066>,  <36.777340, 31.039001, 17.485897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523109, 30.375267, 17.880066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829166, 30.573412, 18.044590>,  <37.012798, 30.692299, 18.143305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829166, 30.573412, 18.044590>,  <36.523109, 30.375267, 17.880066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829166, 30.573412, 18.044590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487193, 0.027771, 0.872852,
		0.420955, -0.868242, 0.262586,
		0.765140, 0.495362, 0.411312,
		37.058708, 30.722021, 18.167984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500217, 30.075535, 18.535870>,  <36.523109, 30.375267, 17.880066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500217, 30.075535, 18.535870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728455, 30.399084, 18.592653>,  <36.865395, 30.593214, 18.626722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728455, 30.399084, 18.592653>,  <36.500217, 30.075535, 18.535870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728455, 30.399084, 18.592653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501837, 0.206594, 0.839927,
		0.650068, -0.550492, 0.523803,
		0.570588, 0.808874, 0.141958,
		36.899632, 30.641747, 18.635241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812805, 29.924326, 19.123487>,  <36.500217, 30.075535, 18.535870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812805, 29.924326, 19.123487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830475, 30.322124, 19.085495>,  <36.841076, 30.560804, 19.062700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.830475, 30.322124, 19.085495>,  <36.812805, 29.924326, 19.123487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830475, 30.322124, 19.085495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355626, 0.104499, 0.928768,
		0.933584, -0.007250, 0.358286,
		0.044174, 0.994499, -0.094980,
		36.843727, 30.620474, 19.057001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303726, 30.260052, 19.711395>,  <36.812805, 29.924326, 19.123487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303726, 30.260052, 19.711395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026138, 30.507278, 19.563665>,  <36.859585, 30.655615, 19.475027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026138, 30.507278, 19.563665>,  <37.303726, 30.260052, 19.711395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026138, 30.507278, 19.563665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451870, 0.025483, 0.891720,
		0.560554, 0.785713, 0.261601,
		-0.693969, 0.618066, -0.369325,
		36.817947, 30.692698, 19.452868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288494, 30.685144, 20.310955>,  <37.303726, 30.260052, 19.711395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288494, 30.685144, 20.310955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961567, 30.768272, 20.095991>,  <36.765411, 30.818150, 19.967012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961567, 30.768272, 20.095991>,  <37.288494, 30.685144, 20.310955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961567, 30.768272, 20.095991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503216, 0.196856, 0.841440,
		0.280660, 0.958154, -0.056316,
		-0.817315, 0.207819, -0.537408,
		36.716373, 30.830618, 19.934769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059937, 31.378820, 20.600660>,  <37.288494, 30.685144, 20.310955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059937, 31.378820, 20.600660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747128, 31.207825, 20.419250>,  <36.559441, 31.105227, 20.310404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747128, 31.207825, 20.419250>,  <37.059937, 31.378820, 20.600660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747128, 31.207825, 20.419250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543066, 0.110349, 0.832408,
		-0.305800, 0.897260, -0.318451,
		-0.782027, -0.427490, -0.453527,
		36.512520, 31.079578, 20.283192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429970, 31.813675, 20.776035>,  <37.059937, 31.378820, 20.600660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429970, 31.813675, 20.776035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259422, 31.476936, 20.643669>,  <36.157093, 31.274893, 20.564249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259422, 31.476936, 20.643669>,  <36.429970, 31.813675, 20.776035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259422, 31.476936, 20.643669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638362, 0.020851, 0.769454,
		-0.640861, 0.539317, -0.546292,
		-0.426370, -0.841845, -0.330917,
		36.131512, 31.224382, 20.544394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705666, 31.899786, 20.794355>,  <36.429970, 31.813675, 20.776035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705666, 31.899786, 20.794355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741718, 31.501423, 20.796959>,  <35.763351, 31.262405, 20.798521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741718, 31.501423, 20.796959>,  <35.705666, 31.899786, 20.794355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741718, 31.501423, 20.796959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457714, -0.035618, 0.888386,
		-0.884519, -0.083056, -0.459051,
		0.090136, -0.995908, 0.006511,
		35.768761, 31.202650, 20.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032768, 31.552980, 21.022961>,  <35.705666, 31.899786, 20.794355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032768, 31.552980, 21.022961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298183, 31.255573, 21.056168>,  <35.457432, 31.077129, 21.076092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298183, 31.255573, 21.056168>,  <35.032768, 31.552980, 21.022961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298183, 31.255573, 21.056168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435896, -0.294036, 0.850610,
		-0.608035, -0.600601, -0.519202,
		0.663542, -0.743520, 0.083016,
		35.497246, 31.032518, 21.081072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673183, 30.955948, 21.297703>,  <35.032768, 31.552980, 21.022961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673183, 30.955948, 21.297703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054596, 30.924280, 21.413984>,  <35.283443, 30.905279, 21.483753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054596, 30.924280, 21.413984>,  <34.673183, 30.955948, 21.297703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054596, 30.924280, 21.413984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298492, -0.117077, 0.947204,
		-0.040953, -0.989962, -0.135267,
		0.953533, -0.079168, 0.290702,
		35.340656, 30.900530, 21.501194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645607, 30.417685, 21.738276>,  <34.673183, 30.955948, 21.297703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645607, 30.417685, 21.738276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990990, 30.598572, 21.827667>,  <35.198219, 30.707104, 21.881302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990990, 30.598572, 21.827667>,  <34.645607, 30.417685, 21.738276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990990, 30.598572, 21.827667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181652, -0.134551, 0.974114,
		0.470583, -0.881699, -0.034032,
		0.863455, 0.452219, 0.223479,
		35.250027, 30.734238, 21.894711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764900, 30.172852, 22.392193>,  <34.645607, 30.417685, 21.738276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764900, 30.172852, 22.392193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028564, 30.473068, 22.373428>,  <35.186764, 30.653198, 22.362169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028564, 30.473068, 22.373428>,  <34.764900, 30.172852, 22.392193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028564, 30.473068, 22.373428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191416, 0.227780, 0.954713,
		0.727236, -0.620326, 0.293809,
		0.659157, 0.750541, -0.046909,
		35.226311, 30.698231, 22.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164169, 30.113815, 23.040298>,  <34.764900, 30.172852, 22.392193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164169, 30.113815, 23.040298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224785, 30.494680, 22.934151>,  <35.261154, 30.723200, 22.870462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224785, 30.494680, 22.934151>,  <35.164169, 30.113815, 23.040298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224785, 30.494680, 22.934151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245078, 0.296280, 0.923122,
		0.957586, -0.074855, 0.278253,
		0.151541, 0.952163, -0.265368,
		35.270248, 30.780329, 22.854540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.179020, 31.344734, 27.732990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070927, 31.708511, 27.606571>,  <38.006069, 31.926777, 27.530720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.070927, 31.708511, 27.606571>,  <38.179020, 31.344734, 27.732990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070927, 31.708511, 27.606571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204083, 0.374911, 0.904319,
		0.940916, 0.179878, -0.286915,
		-0.270235, 0.909442, -0.316050,
		37.989857, 31.981344, 27.511757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670010, 31.806400, 28.084530>,  <38.179020, 31.344734, 27.732990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670010, 31.806400, 28.084530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394333, 32.071274, 27.966869>,  <38.228928, 32.230198, 27.896273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394333, 32.071274, 27.966869>,  <38.670010, 31.806400, 28.084530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394333, 32.071274, 27.966869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092111, 0.482737, 0.870908,
		0.718700, 0.573129, -0.393693,
		-0.689192, 0.662185, -0.294152,
		38.187576, 32.269928, 27.878624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089466, 32.458302, 28.089132>,  <38.670010, 31.806400, 28.084530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089466, 32.458302, 28.089132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692520, 32.500393, 28.114840>,  <38.454353, 32.525650, 28.130264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692520, 32.500393, 28.114840>,  <39.089466, 32.458302, 28.089132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692520, 32.500393, 28.114840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109247, 0.508691, 0.853990,
		0.057176, 0.854494, -0.516305,
		-0.992369, 0.105232, 0.064266,
		38.394810, 32.531963, 28.134119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046082, 33.127895, 28.301170>,  <39.089466, 32.458302, 28.089132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046082, 33.127895, 28.301170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.675709, 32.989517, 28.361788>,  <38.453484, 32.906490, 28.398159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.675709, 32.989517, 28.361788>,  <39.046082, 33.127895, 28.301170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675709, 32.989517, 28.361788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064409, 0.540008, 0.839192,
		-0.372148, 0.767277, -0.522295,
		-0.925936, -0.345944, 0.151543,
		38.397926, 32.885735, 28.407251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572536, 33.754795, 28.417080>,  <39.046082, 33.127895, 28.301170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572536, 33.754795, 28.417080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.411083, 33.419350, 28.563400>,  <38.314209, 33.218082, 28.651192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.411083, 33.419350, 28.563400>,  <38.572536, 33.754795, 28.417080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411083, 33.419350, 28.563400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038771, 0.415134, 0.908934,
		-0.914098, 0.352696, -0.200077,
		-0.403636, -0.838611, 0.365799,
		38.289993, 33.167767, 28.673140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042046, 33.959862, 28.840950>,  <38.572536, 33.754795, 28.417080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042046, 33.959862, 28.840950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140995, 33.603863, 28.994165>,  <38.200363, 33.390263, 29.086094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140995, 33.603863, 28.994165>,  <38.042046, 33.959862, 28.840950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140995, 33.603863, 28.994165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081840, 0.413102, 0.907000,
		-0.965458, -0.193019, 0.175028,
		0.247373, -0.889994, 0.383036,
		38.215206, 33.336864, 29.109076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572140, 33.968479, 29.349274>,  <38.042046, 33.959862, 28.840950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572140, 33.968479, 29.349274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831848, 33.681393, 29.449934>,  <37.987675, 33.509140, 29.510330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831848, 33.681393, 29.449934>,  <37.572140, 33.968479, 29.349274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831848, 33.681393, 29.449934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192895, 0.475455, 0.858332,
		-0.735687, -0.508751, 0.447144,
		0.649274, -0.717716, 0.251650,
		38.026630, 33.466080, 29.525429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309093, 33.597454, 29.936207>,  <37.572140, 33.968479, 29.349274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309093, 33.597454, 29.936207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.706718, 33.553951, 29.935219>,  <37.945293, 33.527851, 29.934626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.706718, 33.553951, 29.935219>,  <37.309093, 33.597454, 29.936207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706718, 33.553951, 29.935219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060065, 0.529807, 0.845989,
		-0.090696, -0.841117, 0.533195,
		0.994066, -0.108754, -0.002470,
		38.004940, 33.521324, 29.934477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453873, 33.520435, 30.622906>,  <37.309093, 33.597454, 29.936207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453873, 33.520435, 30.622906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805206, 33.622356, 30.461117>,  <38.016006, 33.683510, 30.364044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805206, 33.622356, 30.461117>,  <37.453873, 33.520435, 30.622906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805206, 33.622356, 30.461117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227009, 0.522295, 0.821995,
		0.420700, -0.813808, 0.400909,
		0.878339, 0.254803, -0.404471,
		38.068707, 33.698799, 30.339775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901039, 33.465996, 31.245117>,  <37.453873, 33.520435, 30.622906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901039, 33.465996, 31.245117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075653, 33.678619, 30.954769>,  <38.180424, 33.806194, 30.780561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075653, 33.678619, 30.954769>,  <37.901039, 33.465996, 31.245117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075653, 33.678619, 30.954769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299687, 0.674813, 0.674400,
		0.848306, -0.511933, 0.135281,
		0.436537, 0.531555, -0.725868,
		38.206615, 33.838085, 30.737009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471119, 33.666874, 31.621271>,  <37.901039, 33.465996, 31.245117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471119, 33.666874, 31.621271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470688, 33.882412, 31.284309>,  <38.470428, 34.011734, 31.082132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470688, 33.882412, 31.284309>,  <38.471119, 33.666874, 31.621271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470688, 33.882412, 31.284309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367612, 0.783632, 0.500782,
		0.929979, -0.309137, -0.198933,
		-0.001080, 0.538847, -0.842403,
		38.470364, 34.044067, 31.031588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183567, 33.783596, 31.388924>,  <38.471119, 33.666874, 31.621271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183567, 33.783596, 31.388924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.933086, 34.071568, 31.269211>,  <38.782799, 34.244350, 31.197382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.933086, 34.071568, 31.269211>,  <39.183567, 33.783596, 31.388924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933086, 34.071568, 31.269211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518017, 0.671071, 0.530399,
		0.582690, 0.177104, -0.793162,
		-0.626203, 0.719930, -0.299284,
		38.745224, 34.287548, 31.179426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581085, 34.366356, 31.138536>,  <39.183567, 33.783596, 31.388924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581085, 34.366356, 31.138536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229267, 34.488594, 31.284414>,  <39.018177, 34.561939, 31.371941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229267, 34.488594, 31.284414>,  <39.581085, 34.366356, 31.138536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229267, 34.488594, 31.284414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474810, 0.613320, 0.631185,
		-0.030786, 0.728319, -0.684546,
		-0.879550, 0.305597, 0.364695,
		38.965401, 34.580273, 31.393824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605949, 35.074684, 31.119577>,  <39.581085, 34.366356, 31.138536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605949, 35.074684, 31.119577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331505, 34.966206, 31.389601>,  <39.166840, 34.901119, 31.551615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331505, 34.966206, 31.389601>,  <39.605949, 35.074684, 31.119577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331505, 34.966206, 31.389601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299501, 0.740342, 0.601825,
		-0.662987, 0.615099, -0.426733,
		-0.686110, -0.271195, 0.675060,
		39.125671, 34.884846, 31.592119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899643, 35.526890, 31.560846>,  <39.605949, 35.074684, 31.119577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899643, 35.526890, 31.560846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195820, 35.760975, 31.693071>,  <40.373528, 35.901424, 31.772406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195820, 35.760975, 31.693071>,  <39.899643, 35.526890, 31.560846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195820, 35.760975, 31.693071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339371, 0.098993, -0.935429,
		-0.580145, 0.804817, -0.125305,
		0.740445, 0.585209, 0.330562,
		40.417953, 35.936539, 31.792240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940865, 36.225788, 31.115740>,  <39.899643, 35.526890, 31.560846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940865, 36.225788, 31.115740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303989, 36.164497, 31.271894>,  <40.521866, 36.127724, 31.365587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303989, 36.164497, 31.271894>,  <39.940865, 36.225788, 31.115740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303989, 36.164497, 31.271894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414294, 0.183130, -0.891529,
		0.065118, 0.971074, 0.229730,
		0.907811, -0.153230, 0.390385,
		40.576332, 36.118526, 31.389009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306683, 36.744419, 30.875465>,  <39.940865, 36.225788, 31.115740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306683, 36.744419, 30.875465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583900, 36.477757, 30.985207>,  <40.750229, 36.317760, 31.051052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583900, 36.477757, 30.985207>,  <40.306683, 36.744419, 30.875465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583900, 36.477757, 30.985207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449963, 0.102690, -0.887123,
		0.563229, 0.738262, 0.371138,
		0.693041, -0.666652, 0.274352,
		40.791813, 36.277760, 31.067513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971790, 36.941700, 30.585941>,  <40.306683, 36.744419, 30.875465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971790, 36.941700, 30.585941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019466, 36.554100, 30.672504>,  <41.048073, 36.321541, 30.724443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019466, 36.554100, 30.672504>,  <40.971790, 36.941700, 30.585941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019466, 36.554100, 30.672504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242722, -0.182912, -0.952696,
		0.962746, 0.166077, 0.213396,
		0.119188, -0.969000, 0.216409,
		41.055222, 36.263401, 30.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463566, 36.661659, 30.229774>,  <40.971790, 36.941700, 30.585941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463566, 36.661659, 30.229774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304100, 36.301498, 30.299452>,  <41.208420, 36.085403, 30.341259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304100, 36.301498, 30.299452>,  <41.463566, 36.661659, 30.229774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304100, 36.301498, 30.299452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235513, -0.284087, -0.929424,
		0.886341, -0.329504, 0.325311,
		-0.398666, -0.900401, 0.174195,
		41.184502, 36.031380, 30.351711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841049, 36.199196, 29.849255>,  <41.463566, 36.661659, 30.229774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841049, 36.199196, 29.849255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.522408, 35.970768, 29.928555>,  <41.331223, 35.833710, 29.976135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.522408, 35.970768, 29.928555>,  <41.841049, 36.199196, 29.849255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522408, 35.970768, 29.928555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026377, -0.360481, -0.932394,
		0.603927, -0.737518, 0.302223,
		-0.796603, -0.571070, 0.198250,
		41.283428, 35.799446, 29.988029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972260, 35.662708, 29.572266>,  <41.841049, 36.199196, 29.849255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972260, 35.662708, 29.572266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.576263, 35.607079, 29.581951>,  <41.338665, 35.573700, 29.587763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.576263, 35.607079, 29.581951>,  <41.972260, 35.662708, 29.572266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576263, 35.607079, 29.581951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063669, -0.592998, -0.802683,
		0.125988, -0.793103, 0.595915,
		-0.989987, -0.139070, 0.024215,
		41.279266, 35.565357, 29.589216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854149, 35.021770, 29.328405>,  <41.972260, 35.662708, 29.572266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854149, 35.021770, 29.328405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503090, 35.205811, 29.274670>,  <41.292454, 35.316235, 29.242428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503090, 35.205811, 29.274670>,  <41.854149, 35.021770, 29.328405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503090, 35.205811, 29.274670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046384, -0.360483, -0.931612,
		-0.477061, -0.811394, 0.337717,
		-0.877645, 0.460100, -0.134337,
		41.239796, 35.343842, 29.234369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544628, 34.552517, 29.005117>,  <41.854149, 35.021770, 29.328405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544628, 34.552517, 29.005117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292618, 34.854668, 28.933027>,  <41.141411, 35.035957, 28.889772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292618, 34.854668, 28.933027>,  <41.544628, 34.552517, 29.005117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292618, 34.854668, 28.933027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161055, -0.354125, -0.921226,
		-0.759692, -0.551367, 0.344764,
		-0.630023, 0.755374, -0.180225,
		41.103611, 35.081280, 28.878960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901836, 34.230492, 28.787630>,  <41.544628, 34.552517, 29.005117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901836, 34.230492, 28.787630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913509, 34.604801, 28.647072>,  <40.920513, 34.829388, 28.562737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.913509, 34.604801, 28.647072>,  <40.901836, 34.230492, 28.787630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913509, 34.604801, 28.647072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178441, -0.341021, -0.922964,
		-0.983518, 0.089638, 0.157028,
		0.029183, 0.935772, -0.351396,
		40.922264, 34.885532, 28.541653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252544, 34.299919, 28.350096>,  <40.901836, 34.230492, 28.787630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252544, 34.299919, 28.350096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513817, 34.575413, 28.224237>,  <40.670582, 34.740707, 28.148722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513817, 34.575413, 28.224237>,  <40.252544, 34.299919, 28.350096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513817, 34.575413, 28.224237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189551, -0.253584, -0.948560,
		-0.733091, 0.679225, -0.035088,
		0.653183, 0.688729, -0.314648,
		40.709770, 34.782032, 28.129843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874474, 34.679123, 27.828321>,  <40.252544, 34.299919, 28.350096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874474, 34.679123, 27.828321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.261990, 34.754513, 27.763931>,  <40.494499, 34.799747, 27.725296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.261990, 34.754513, 27.763931>,  <39.874474, 34.679123, 27.828321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261990, 34.754513, 27.763931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153037, -0.056042, -0.986630,
		-0.194978, 0.980477, -0.025449,
		0.968795, 0.188477, -0.160976,
		40.552628, 34.811054, 27.715639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922504, 34.935936, 27.180275>,  <39.874474, 34.679123, 27.828321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922504, 34.935936, 27.180275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315113, 34.868366, 27.216251>,  <40.550678, 34.827824, 27.237837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315113, 34.868366, 27.216251>,  <39.922504, 34.935936, 27.180275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315113, 34.868366, 27.216251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070213, -0.119332, -0.990368,
		0.178027, 0.978379, -0.105266,
		0.981517, -0.168921, 0.089939,
		40.609570, 34.817692, 27.243233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323574, 35.346752, 26.528990>,  <39.922504, 34.935936, 27.180275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323574, 35.346752, 26.528990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553810, 35.040096, 26.642809>,  <40.691952, 34.856102, 26.711100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553810, 35.040096, 26.642809>,  <40.323574, 35.346752, 26.528990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553810, 35.040096, 26.642809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102477, -0.277601, -0.955215,
		0.811294, 0.578969, -0.081221,
		0.575588, -0.766637, 0.284546,
		40.726486, 34.810104, 26.728172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469387, 35.937477, 26.025591>,  <40.323574, 35.346752, 26.528990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469387, 35.937477, 26.025591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.131886, 36.089951, 25.874447>,  <39.929386, 36.181435, 25.783760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.131886, 36.089951, 25.874447>,  <40.469387, 35.937477, 26.025591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131886, 36.089951, 25.874447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278131, 0.291585, 0.915216,
		0.459048, 0.877310, -0.140005,
		-0.843752, 0.381188, -0.377859,
		39.878761, 36.204308, 25.761089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311512, 36.310780, 26.583982>,  <40.469387, 35.937477, 26.025591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311512, 36.310780, 26.583982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005264, 36.379662, 26.336058>,  <39.821514, 36.420990, 26.187304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.005264, 36.379662, 26.336058>,  <40.311512, 36.310780, 26.583982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005264, 36.379662, 26.336058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536881, 0.359722, 0.763125,
		0.354376, 0.917031, -0.182957,
		-0.765622, 0.172207, -0.619813,
		39.775578, 36.431324, 26.150114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145355, 37.061939, 26.655985>,  <40.311512, 36.310780, 26.583982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145355, 37.061939, 26.655985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831932, 36.864960, 26.504438>,  <39.643879, 36.746773, 26.413511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831932, 36.864960, 26.504438>,  <40.145355, 37.061939, 26.655985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831932, 36.864960, 26.504438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619207, 0.568611, 0.541539,
		-0.051252, 0.658921, -0.750464,
		-0.783554, -0.492448, -0.378866,
		39.596867, 36.717224, 26.390779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532745, 37.516041, 26.589874>,  <40.145355, 37.061939, 26.655985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532745, 37.516041, 26.589874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363384, 37.154434, 26.613483>,  <39.261768, 36.937469, 26.627649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363384, 37.154434, 26.613483>,  <39.532745, 37.516041, 26.589874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363384, 37.154434, 26.613483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657018, 0.351275, 0.667034,
		-0.623742, 0.243647, -0.742686,
		-0.423407, -0.904014, 0.059025,
		39.236362, 36.883228, 26.631191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842171, 37.564674, 26.936283>,  <39.532745, 37.516041, 26.589874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842171, 37.564674, 26.936283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878780, 37.167622, 26.968035>,  <38.900745, 36.929390, 26.987085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878780, 37.167622, 26.968035>,  <38.842171, 37.564674, 26.936283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878780, 37.167622, 26.968035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657632, -0.000391, 0.753340,
		-0.747760, -0.121148, -0.652824,
		0.091521, -0.992634, 0.079378,
		38.906239, 36.869831, 26.991848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161308, 37.346210, 26.920753>,  <38.842171, 37.564674, 26.936283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161308, 37.346210, 26.920753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.370300, 37.048668, 27.087461>,  <38.495697, 36.870144, 27.187487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.370300, 37.048668, 27.087461>,  <38.161308, 37.346210, 26.920753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370300, 37.048668, 27.087461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633123, -0.011063, 0.773972,
		-0.571110, -0.668253, -0.476730,
		0.522483, -0.743852, 0.416768,
		38.527046, 36.825512, 27.212492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674339, 36.881332, 27.079460>,  <38.161308, 37.346210, 26.920753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674339, 36.881332, 27.079460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980251, 36.808712, 27.326735>,  <38.163799, 36.765141, 27.475100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980251, 36.808712, 27.326735>,  <37.674339, 36.881332, 27.079460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980251, 36.808712, 27.326735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593537, 0.174753, 0.785605,
		-0.250661, -0.967729, 0.025887,
		0.764776, -0.181555, 0.618187,
		38.209682, 36.754246, 27.512190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368900, 36.446819, 27.635201>,  <37.674339, 36.881332, 27.079460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368900, 36.446819, 27.635201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710590, 36.580917, 27.794155>,  <37.915604, 36.661377, 27.889528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710590, 36.580917, 27.794155>,  <37.368900, 36.446819, 27.635201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710590, 36.580917, 27.794155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463564, 0.145043, 0.874112,
		0.235408, -0.930897, 0.279309,
		0.854220, 0.335250, 0.397386,
		37.966858, 36.681492, 27.913372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466824, 36.011868, 28.220581>,  <37.368900, 36.446819, 27.635201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466824, 36.011868, 28.220581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679516, 36.349205, 28.251635>,  <37.807133, 36.551609, 28.270267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679516, 36.349205, 28.251635>,  <37.466824, 36.011868, 28.220581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679516, 36.349205, 28.251635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483166, 0.226792, 0.845645,
		0.695564, -0.487170, 0.528069,
		0.531735, 0.843345, 0.077635,
		37.839035, 36.602207, 28.274925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649876, 35.973141, 28.973686>,  <37.466824, 36.011868, 28.220581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649876, 35.973141, 28.973686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702724, 36.352226, 28.857492>,  <37.734432, 36.579678, 28.787775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.702724, 36.352226, 28.857492>,  <37.649876, 35.973141, 28.973686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702724, 36.352226, 28.857492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320437, 0.318155, 0.892243,
		0.938011, -0.024802, 0.345718,
		0.132121, 0.947714, -0.290486,
		37.742359, 36.636539, 28.770348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849133, 36.264973, 29.540129>,  <37.649876, 35.973141, 28.973686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849133, 36.264973, 29.540129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724388, 36.560860, 29.301615>,  <37.649544, 36.738392, 29.158506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.724388, 36.560860, 29.301615>,  <37.849133, 36.264973, 29.540129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724388, 36.560860, 29.301615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433592, 0.447624, 0.782068,
		0.845425, 0.502439, 0.181143,
		-0.311857, 0.739722, -0.596286,
		37.630833, 36.782776, 29.122728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106880, 36.858063, 29.826370>,  <37.849133, 36.264973, 29.540129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106880, 36.858063, 29.826370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772049, 36.945744, 29.625868>,  <37.571152, 36.998352, 29.505566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772049, 36.945744, 29.625868>,  <38.106880, 36.858063, 29.826370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772049, 36.945744, 29.625868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385931, 0.412818, 0.825008,
		0.387769, 0.884044, -0.260963,
		-0.837073, 0.219199, -0.501258,
		37.520927, 37.011505, 29.475491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.577137, 35.957500, 22.492222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200047, 35.973938, 22.359812>,  <40.973793, 35.983803, 22.280365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200047, 35.973938, 22.359812>,  <41.577137, 35.957500, 22.492222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200047, 35.973938, 22.359812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277165, 0.455652, 0.845908,
		0.185598, 0.889208, -0.418164,
		-0.942726, 0.041098, -0.331026,
		40.917229, 35.986267, 22.260504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240532, 36.752369, 22.553503>,  <41.577137, 35.957500, 22.492222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240532, 36.752369, 22.553503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975399, 36.453434, 22.572029>,  <40.816319, 36.274075, 22.583145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975399, 36.453434, 22.572029>,  <41.240532, 36.752369, 22.553503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975399, 36.453434, 22.572029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279474, 0.304307, 0.910655,
		-0.694658, 0.590666, -0.410564,
		-0.662830, -0.747336, 0.046314,
		40.776550, 36.229233, 22.585922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739914, 37.044926, 23.072514>,  <41.240532, 36.752369, 22.553503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739914, 37.044926, 23.072514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613956, 36.672009, 23.001318>,  <40.538383, 36.448257, 22.958601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613956, 36.672009, 23.001318>,  <40.739914, 37.044926, 23.072514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613956, 36.672009, 23.001318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670679, 0.085870, 0.736760,
		-0.671590, 0.351371, -0.652307,
		-0.314890, -0.932290, -0.177988,
		40.519489, 36.392323, 22.947922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003120, 37.077503, 23.055462>,  <40.739914, 37.044926, 23.072514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003120, 37.077503, 23.055462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108299, 36.704136, 23.153112>,  <40.171406, 36.480118, 23.211702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108299, 36.704136, 23.153112>,  <40.003120, 37.077503, 23.055462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108299, 36.704136, 23.153112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522537, 0.074933, 0.849318,
		-0.811059, -0.350888, -0.468040,
		0.262944, -0.933414, 0.244127,
		40.187183, 36.424110, 23.226351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450806, 36.791553, 23.528580>,  <40.003120, 37.077503, 23.055462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450806, 36.791553, 23.528580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775524, 36.578159, 23.623558>,  <39.970356, 36.450123, 23.680544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775524, 36.578159, 23.623558>,  <39.450806, 36.791553, 23.528580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775524, 36.578159, 23.623558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318326, -0.063405, 0.945859,
		-0.489551, -0.843427, -0.221295,
		0.811793, -0.533490, 0.237445,
		40.019062, 36.418114, 23.694792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131844, 36.130539, 23.879080>,  <39.450806, 36.791553, 23.528580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131844, 36.130539, 23.879080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520336, 36.162312, 23.968884>,  <39.753429, 36.181377, 24.022766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520336, 36.162312, 23.968884>,  <39.131844, 36.130539, 23.879080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520336, 36.162312, 23.968884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214342, -0.119294, 0.969446,
		0.103791, -0.989676, -0.098836,
		0.971229, 0.079435, 0.224511,
		39.811707, 36.186142, 24.036238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213692, 35.640984, 24.391535>,  <39.131844, 36.130539, 23.879080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213692, 35.640984, 24.391535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540882, 35.870251, 24.411114>,  <39.737198, 36.007809, 24.422861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540882, 35.870251, 24.411114>,  <39.213692, 35.640984, 24.391535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540882, 35.870251, 24.411114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154484, 0.136908, 0.978464,
		0.554118, -0.807923, 0.200532,
		0.817978, 0.573164, 0.048948,
		39.786274, 36.042198, 24.425798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641785, 35.353363, 24.852856>,  <39.213692, 35.640984, 24.391535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641785, 35.353363, 24.852856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718410, 35.745872, 24.844736>,  <39.764385, 35.981377, 24.839865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718410, 35.745872, 24.844736>,  <39.641785, 35.353363, 24.852856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718410, 35.745872, 24.844736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254709, 0.069675, 0.964504,
		0.947853, -0.179597, 0.263286,
		0.191567, 0.981270, -0.020297,
		39.775879, 36.040253, 24.838648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175220, 35.458435, 25.435570>,  <39.641785, 35.353363, 24.852856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175220, 35.458435, 25.435570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997658, 35.810287, 25.367224>,  <39.891121, 36.021400, 25.326216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997658, 35.810287, 25.367224>,  <40.175220, 35.458435, 25.435570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997658, 35.810287, 25.367224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046891, 0.167616, 0.984736,
		0.894844, 0.445145, -0.033159,
		-0.443909, 0.879631, -0.170864,
		39.864487, 36.074177, 25.315964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863663, 35.316998, 25.922411>,  <40.175220, 35.458435, 25.435570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863663, 35.316998, 25.922411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896152, 34.967838, 26.114851>,  <40.915646, 34.758343, 26.230314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896152, 34.967838, 26.114851>,  <40.863663, 35.316998, 25.922411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896152, 34.967838, 26.114851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367043, -0.422574, -0.828680,
		0.926651, 0.243897, 0.286065,
		0.081229, -0.872895, 0.481099,
		40.920521, 34.705971, 26.259180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554089, 35.063244, 25.705948>,  <40.863663, 35.316998, 25.922411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554089, 35.063244, 25.705948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361198, 34.746460, 25.855751>,  <41.245464, 34.556389, 25.945633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361198, 34.746460, 25.855751>,  <41.554089, 35.063244, 25.705948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361198, 34.746460, 25.855751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438340, -0.588261, -0.679564,
		0.758497, -0.163542, 0.630823,
		-0.482225, -0.791961, 0.374507,
		41.216530, 34.508873, 25.968103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038948, 34.496243, 25.678928>,  <41.554089, 35.063244, 25.705948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038948, 34.496243, 25.678928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680382, 34.320858, 25.704838>,  <41.465240, 34.215630, 25.720385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680382, 34.320858, 25.704838>,  <42.038948, 34.496243, 25.678928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680382, 34.320858, 25.704838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212624, -0.553651, -0.805147,
		0.388885, -0.707973, 0.589527,
		-0.896415, -0.438457, 0.064775,
		41.411457, 34.189320, 25.724270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143284, 33.776226, 25.425919>,  <42.038948, 34.496243, 25.678928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143284, 33.776226, 25.425919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746540, 33.818363, 25.397305>,  <41.508495, 33.843643, 25.380136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746540, 33.818363, 25.397305>,  <42.143284, 33.776226, 25.425919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746540, 33.818363, 25.397305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018252, -0.673613, -0.738859,
		-0.126017, -0.731539, 0.670052,
		-0.991860, 0.105338, -0.071534,
		41.448982, 33.849964, 25.375845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948902, 33.155079, 25.397976>,  <42.143284, 33.776226, 25.425919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948902, 33.155079, 25.397976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645477, 33.369514, 25.249817>,  <41.463425, 33.498177, 25.160921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645477, 33.369514, 25.249817>,  <41.948902, 33.155079, 25.397976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645477, 33.369514, 25.249817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149028, -0.696106, -0.702301,
		-0.634331, -0.477539, 0.607932,
		-0.758561, 0.536090, -0.370395,
		41.417908, 33.530342, 25.138699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382351, 32.697525, 25.288912>,  <41.948902, 33.155079, 25.397976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382351, 32.697525, 25.288912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311337, 33.009911, 25.049387>,  <41.268726, 33.197342, 24.905672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311337, 33.009911, 25.049387>,  <41.382351, 32.697525, 25.288912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311337, 33.009911, 25.049387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246129, -0.624378, -0.741332,
		-0.952839, 0.015773, 0.303067,
		-0.177535, 0.780963, -0.598814,
		41.258076, 33.244198, 24.869743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780849, 32.555031, 25.011574>,  <41.382351, 32.697525, 25.288912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780849, 32.555031, 25.011574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935139, 32.817829, 24.752476>,  <41.027714, 32.975510, 24.597017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935139, 32.817829, 24.752476>,  <40.780849, 32.555031, 25.011574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935139, 32.817829, 24.752476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172372, -0.638394, -0.750161,
		-0.906369, 0.401007, -0.132995,
		0.385723, 0.656998, -0.647743,
		41.050854, 33.014927, 24.558153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334755, 32.594307, 24.445082>,  <40.780849, 32.555031, 25.011574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334755, 32.594307, 24.445082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667747, 32.752636, 24.290005>,  <40.867542, 32.847633, 24.196959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667747, 32.752636, 24.290005>,  <40.334755, 32.594307, 24.445082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667747, 32.752636, 24.290005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124844, -0.547730, -0.827288,
		-0.539805, 0.737102, -0.406559,
		0.832481, 0.395818, -0.387690,
		40.917492, 32.871380, 24.173698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162556, 32.696659, 23.722218>,  <40.334755, 32.594307, 24.445082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162556, 32.696659, 23.722218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561562, 32.724209, 23.728168>,  <40.800964, 32.740738, 23.731739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561562, 32.724209, 23.728168>,  <40.162556, 32.696659, 23.722218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561562, 32.724209, 23.728168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034509, -0.293453, -0.955350,
		-0.061438, 0.953489, -0.295100,
		0.997514, 0.068879, 0.014875,
		40.860817, 32.744873, 23.732632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413174, 32.915577, 23.048407>,  <40.162556, 32.696659, 23.722218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413174, 32.915577, 23.048407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736515, 32.758087, 23.223469>,  <40.930519, 32.663593, 23.328506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736515, 32.758087, 23.223469>,  <40.413174, 32.915577, 23.048407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736515, 32.758087, 23.223469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232891, -0.468904, -0.851992,
		0.540666, 0.790640, -0.287348,
		0.808357, -0.393723, 0.437654,
		40.979023, 32.639969, 23.354765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939236, 33.147438, 22.653509>,  <40.413174, 32.915577, 23.048407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939236, 33.147438, 22.653509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092434, 32.826485, 22.836594>,  <41.184353, 32.633915, 22.946444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092434, 32.826485, 22.836594>,  <40.939236, 33.147438, 22.653509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092434, 32.826485, 22.836594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443563, -0.274890, -0.853046,
		0.810288, 0.529736, 0.250625,
		0.382994, -0.802381, 0.457712,
		41.207333, 32.585770, 22.973907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680195, 33.102081, 22.441862>,  <40.939236, 33.147438, 22.653509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680195, 33.102081, 22.441862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577431, 32.739239, 22.575224>,  <41.515774, 32.521534, 22.655241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577431, 32.739239, 22.575224>,  <41.680195, 33.102081, 22.441862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577431, 32.739239, 22.575224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337862, -0.407515, -0.848399,
		0.905454, -0.105316, 0.411170,
		-0.256908, -0.907105, 0.333404,
		41.500359, 32.467106, 22.675245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276947, 32.710606, 22.398031>,  <41.680195, 33.102081, 22.441862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276947, 32.710606, 22.398031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954296, 32.475044, 22.377882>,  <41.760704, 32.333706, 22.365793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954296, 32.475044, 22.377882>,  <42.276947, 32.710606, 22.398031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954296, 32.475044, 22.377882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387777, -0.462964, -0.797053,
		0.446069, -0.662460, 0.601805,
		-0.806630, -0.588907, -0.050373,
		41.712307, 32.298370, 22.362770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536003, 32.045662, 22.030722>,  <42.276947, 32.710606, 22.398031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536003, 32.045662, 22.030722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140610, 31.986612, 22.017353>,  <41.903374, 31.951183, 22.009331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140610, 31.986612, 22.017353>,  <42.536003, 32.045662, 22.030722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140610, 31.986612, 22.017353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089266, -0.390254, -0.916370,
		0.122233, -0.908796, 0.398936,
		-0.988479, -0.147622, -0.033423,
		41.844067, 31.942326, 22.007326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.635220, 33.876575, 20.410536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011501, 33.850498, 20.543701>,  <35.237270, 33.834854, 20.623600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011501, 33.850498, 20.543701>,  <34.635220, 33.876575, 20.410536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011501, 33.850498, 20.543701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306726, 0.255781, 0.916785,
		-0.144919, -0.964534, 0.220617,
		0.940701, -0.065191, 0.332916,
		35.293713, 33.830940, 20.643576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581982, 33.603939, 21.109396>,  <34.635220, 33.876575, 20.410536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581982, 33.603939, 21.109396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.940418, 33.781391, 21.115116>,  <35.155479, 33.887863, 21.118547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.940418, 33.781391, 21.115116>,  <34.581982, 33.603939, 21.109396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940418, 33.781391, 21.115116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227787, 0.431980, 0.872644,
		0.380953, -0.785230, 0.488148,
		0.896096, 0.443630, 0.014301,
		35.209248, 33.914482, 21.119406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942478, 33.274761, 21.619238>,  <34.581982, 33.603939, 21.109396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942478, 33.274761, 21.619238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092247, 33.640778, 21.559231>,  <35.182106, 33.860390, 21.523226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092247, 33.640778, 21.559231>,  <34.942478, 33.274761, 21.619238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092247, 33.640778, 21.559231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106802, 0.203267, 0.973281,
		0.921088, -0.348392, 0.173835,
		0.374419, 0.915044, -0.150018,
		35.204575, 33.915291, 21.514225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374565, 33.448811, 22.236099>,  <34.942478, 33.274761, 21.619238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374565, 33.448811, 22.236099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.294613, 33.802616, 22.067490>,  <35.246643, 34.014900, 21.966324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.294613, 33.802616, 22.067490>,  <35.374565, 33.448811, 22.236099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294613, 33.802616, 22.067490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200457, 0.384194, 0.901228,
		0.959097, 0.264633, 0.100515,
		-0.199877, 0.884514, -0.421526,
		35.234650, 34.067970, 21.941032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836300, 33.901276, 22.629215>,  <35.374565, 33.448811, 22.236099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836300, 33.901276, 22.629215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537498, 34.111980, 22.466980>,  <35.358215, 34.238403, 22.369638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537498, 34.111980, 22.466980>,  <35.836300, 33.901276, 22.629215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537498, 34.111980, 22.466980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135950, 0.476147, 0.868793,
		0.650767, 0.704134, -0.284072,
		-0.747007, 0.526762, -0.405588,
		35.313396, 34.270008, 22.345304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942825, 34.626583, 22.811792>,  <35.836300, 33.901276, 22.629215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942825, 34.626583, 22.811792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563732, 34.616665, 22.684547>,  <35.336277, 34.610714, 22.608200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563732, 34.616665, 22.684547>,  <35.942825, 34.626583, 22.811792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563732, 34.616665, 22.684547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278575, 0.550433, 0.787032,
		0.155587, 0.834511, -0.528568,
		-0.947728, -0.024794, -0.318114,
		35.279415, 34.609226, 22.589113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688480, 35.292797, 22.868752>,  <35.942825, 34.626583, 22.811792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688480, 35.292797, 22.868752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.354675, 35.072430, 22.865328>,  <35.154392, 34.940208, 22.863274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.354675, 35.072430, 22.865328>,  <35.688480, 35.292797, 22.868752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354675, 35.072430, 22.865328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439138, 0.655657, 0.614225,
		-0.332775, 0.516339, -0.789085,
		-0.834517, -0.550916, -0.008558,
		35.104321, 34.907154, 22.862761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091736, 35.769459, 22.867788>,  <35.688480, 35.292797, 22.868752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091736, 35.769459, 22.867788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976494, 35.422390, 23.029850>,  <34.907349, 35.214149, 23.127087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976494, 35.422390, 23.029850>,  <35.091736, 35.769459, 22.867788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976494, 35.422390, 23.029850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406912, 0.493921, 0.768417,
		-0.866844, 0.056523, -0.495366,
		-0.288105, -0.867668, 0.405152,
		34.890064, 35.162090, 23.151396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510216, 35.910030, 23.271757>,  <35.091736, 35.769459, 22.867788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510216, 35.910030, 23.271757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570805, 35.529610, 23.379507>,  <34.607159, 35.301357, 23.444157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570805, 35.529610, 23.379507>,  <34.510216, 35.910030, 23.271757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570805, 35.529610, 23.379507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389114, 0.193143, 0.900714,
		-0.908650, -0.241252, -0.340810,
		0.151474, -0.951048, 0.269374,
		34.616245, 35.244297, 23.460320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798542, 35.582809, 23.437099>,  <34.510216, 35.910030, 23.271757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798542, 35.582809, 23.437099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099464, 35.396488, 23.623461>,  <34.280018, 35.284695, 23.735277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.099464, 35.396488, 23.623461>,  <33.798542, 35.582809, 23.437099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099464, 35.396488, 23.623461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392583, 0.250962, 0.884815,
		-0.529072, -0.848556, 0.005934,
		0.752304, -0.465801, 0.465905,
		34.325157, 35.256748, 23.763233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473671, 35.284794, 24.016819>,  <33.798542, 35.582809, 23.437099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473671, 35.284794, 24.016819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.858887, 35.267818, 24.123222>,  <34.090015, 35.257633, 24.187065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.858887, 35.267818, 24.123222>,  <33.473671, 35.284794, 24.016819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858887, 35.267818, 24.123222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258209, 0.135902, 0.956483,
		-0.076739, -0.989813, 0.119922,
		0.963036, -0.042435, 0.266008,
		34.147797, 35.255089, 24.203024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544842, 34.726757, 24.493280>,  <33.473671, 35.284794, 24.016819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544842, 34.726757, 24.493280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.854969, 34.971237, 24.556915>,  <34.041046, 35.117928, 24.595097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.854969, 34.971237, 24.556915>,  <33.544842, 34.726757, 24.493280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854969, 34.971237, 24.556915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359538, 0.220048, 0.906814,
		0.519243, -0.760268, 0.390358,
		0.775320, 0.611205, 0.159087,
		34.087566, 35.154598, 24.604641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738571, 34.523651, 25.170969>,  <33.544842, 34.726757, 24.493280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738571, 34.523651, 25.170969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919979, 34.876514, 25.120182>,  <34.028824, 35.088230, 25.089710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.919979, 34.876514, 25.120182>,  <33.738571, 34.523651, 25.170969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919979, 34.876514, 25.120182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044658, 0.164775, 0.985320,
		0.890127, -0.441191, 0.114124,
		0.453519, 0.882157, -0.126968,
		34.056034, 35.141163, 25.082092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338913, 34.516792, 25.629293>,  <33.738571, 34.523651, 25.170969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338913, 34.516792, 25.629293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247444, 34.898643, 25.552986>,  <34.192562, 35.127754, 25.507202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247444, 34.898643, 25.552986>,  <34.338913, 34.516792, 25.629293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247444, 34.898643, 25.552986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137130, 0.225595, 0.964522,
		0.963796, 0.194402, -0.182496,
		-0.228675, 0.954628, -0.190769,
		34.178841, 35.185032, 25.495756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932892, 34.315136, 25.748686>,  <34.338913, 34.516792, 25.629293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932892, 34.315136, 25.748686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989857, 33.956478, 25.916376>,  <35.024036, 33.741283, 26.016991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989857, 33.956478, 25.916376>,  <34.932892, 34.315136, 25.748686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989857, 33.956478, 25.916376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063422, -0.414405, -0.907880,
		0.987774, 0.155880, -0.002148,
		0.142411, -0.896644, 0.419224,
		35.032581, 33.687485, 26.042143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184029, 34.022209, 25.175470>,  <34.932892, 34.315136, 25.748686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184029, 34.022209, 25.175470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158974, 33.690620, 25.397778>,  <35.143940, 33.491665, 25.531162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158974, 33.690620, 25.397778>,  <35.184029, 34.022209, 25.175470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158974, 33.690620, 25.397778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093205, -0.559286, -0.823719,
		0.993675, 0.000204, 0.112297,
		-0.062638, -0.828975, 0.555767,
		35.140182, 33.441929, 25.564508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739655, 33.477448, 25.032677>,  <35.184029, 34.022209, 25.175470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739655, 33.477448, 25.032677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428680, 33.279556, 25.188032>,  <35.242096, 33.160824, 25.281246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428680, 33.279556, 25.188032>,  <35.739655, 33.477448, 25.032677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428680, 33.279556, 25.188032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047598, -0.662009, -0.747983,
		0.627162, -0.563021, 0.538216,
		-0.777434, -0.494724, 0.388388,
		35.195450, 33.131138, 25.304548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990219, 32.849567, 25.007139>,  <35.739655, 33.477448, 25.032677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990219, 32.849567, 25.007139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593082, 32.805351, 25.025251>,  <35.354801, 32.778824, 25.036118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593082, 32.805351, 25.025251>,  <35.990219, 32.849567, 25.007139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593082, 32.805351, 25.025251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052382, -0.743558, -0.666617,
		0.107354, -0.659472, 0.744024,
		-0.992840, -0.110538, 0.045279,
		35.295231, 32.772190, 25.038836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890148, 32.111790, 24.850096>,  <35.990219, 32.849567, 25.007139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890148, 32.111790, 24.850096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524448, 32.262493, 24.790501>,  <35.305027, 32.352913, 24.754744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524448, 32.262493, 24.790501>,  <35.890148, 32.111790, 24.850096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524448, 32.262493, 24.790501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141909, -0.642240, -0.753253,
		-0.379478, -0.667521, 0.640634,
		-0.914253, 0.376755, -0.148988,
		35.250172, 32.375519, 24.745804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554867, 31.597687, 24.748297>,  <35.890148, 32.111790, 24.850096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554867, 31.597687, 24.748297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313431, 31.869772, 24.581930>,  <35.168568, 32.033024, 24.482111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313431, 31.869772, 24.581930>,  <35.554867, 31.597687, 24.748297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313431, 31.869772, 24.581930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051856, -0.554046, -0.830869,
		-0.795605, -0.479939, 0.369691,
		-0.603592, 0.680215, -0.415914,
		35.132355, 32.073837, 24.457155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921021, 31.299908, 24.429859>,  <35.554867, 31.597687, 24.748297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921021, 31.299908, 24.429859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996567, 31.642298, 24.237345>,  <35.041893, 31.847733, 24.121836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996567, 31.642298, 24.237345>,  <34.921021, 31.299908, 24.429859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996567, 31.642298, 24.237345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028143, -0.494622, -0.868653,
		-0.981600, 0.150512, -0.117506,
		0.188863, 0.855976, -0.481285,
		35.053226, 31.899090, 24.092958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567703, 31.180704, 23.864862>,  <34.921021, 31.299908, 24.429859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567703, 31.180704, 23.864862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.796188, 31.496954, 23.776659>,  <34.933281, 31.686705, 23.723738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.796188, 31.496954, 23.776659>,  <34.567703, 31.180704, 23.864862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796188, 31.496954, 23.776659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104466, -0.336492, -0.935874,
		-0.814125, 0.511550, -0.274803,
		0.571216, 0.790626, -0.220507,
		34.967552, 31.734142, 23.710506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253006, 31.419804, 23.247541>,  <34.567703, 31.180704, 23.864862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253006, 31.419804, 23.247541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628120, 31.548119, 23.300695>,  <34.853188, 31.625107, 23.332588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628120, 31.548119, 23.300695>,  <34.253006, 31.419804, 23.247541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628120, 31.548119, 23.300695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261308, -0.400005, -0.878473,
		-0.228648, 0.858541, -0.458942,
		0.937784, 0.320786, 0.132883,
		34.909454, 31.644354, 23.340561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446579, 31.661898, 22.629776>,  <34.253006, 31.419804, 23.247541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446579, 31.661898, 22.629776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798740, 31.578102, 22.799957>,  <35.010036, 31.527824, 22.902065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798740, 31.578102, 22.799957>,  <34.446579, 31.661898, 22.629776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798740, 31.578102, 22.799957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263313, -0.530202, -0.805948,
		0.394414, 0.821583, -0.411628,
		0.880399, -0.209490, 0.425453,
		35.062859, 31.515255, 22.927593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073597, 31.934263, 22.323418>,  <34.446579, 31.661898, 22.629776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073597, 31.934263, 22.323418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157745, 31.584743, 22.498791>,  <35.208233, 31.375032, 22.604013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157745, 31.584743, 22.498791>,  <35.073597, 31.934263, 22.323418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157745, 31.584743, 22.498791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313501, -0.364485, -0.876851,
		0.925991, 0.321914, 0.197259,
		0.210372, -0.873797, 0.438430,
		35.220856, 31.322605, 22.630320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862865, 31.811241, 22.273605>,  <35.073597, 31.934263, 22.323418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862865, 31.811241, 22.273605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659077, 31.468384, 22.303936>,  <35.536804, 31.262671, 22.322134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659077, 31.468384, 22.303936>,  <35.862865, 31.811241, 22.273605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659077, 31.468384, 22.303936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442608, -0.336605, -0.831141,
		0.737930, -0.389878, 0.550867,
		-0.509468, -0.857142, 0.075828,
		35.506237, 31.211241, 22.326685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395531, 31.302496, 22.247662>,  <35.862865, 31.811241, 22.273605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395531, 31.302496, 22.247662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041794, 31.152082, 22.136997>,  <35.829552, 31.061834, 22.070599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.041794, 31.152082, 22.136997>,  <36.395531, 31.302496, 22.247662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041794, 31.152082, 22.136997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366987, -0.193660, -0.909844,
		0.288557, -0.906141, 0.309262,
		-0.884339, -0.376037, -0.276660,
		35.776493, 31.039272, 22.053999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528072, 30.740437, 21.866833>,  <36.395531, 31.302496, 22.247662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528072, 30.740437, 21.866833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.149250, 30.795116, 21.750626>,  <35.921955, 30.827925, 21.680902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.149250, 30.795116, 21.750626>,  <36.528072, 30.740437, 21.866833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149250, 30.795116, 21.750626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271914, -0.139666, -0.952132,
		-0.170734, -0.980717, 0.095100,
		-0.947055, 0.136703, -0.290516,
		35.865135, 30.836126, 21.663471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753197, 30.095507, 21.915516>,  <36.528072, 30.740437, 21.866833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753197, 30.095507, 21.915516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124485, 29.968277, 21.992704>,  <37.347260, 29.891939, 22.039017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124485, 29.968277, 21.992704>,  <36.753197, 30.095507, 21.915516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124485, 29.968277, 21.992704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149525, 0.155996, 0.976375,
		-0.340661, -0.935144, 0.097238,
		0.928220, -0.318073, 0.192969,
		37.402950, 29.872854, 22.050594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752125, 29.714310, 22.541506>,  <36.753197, 30.095507, 21.915516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752125, 29.714310, 22.541506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131317, 29.841066, 22.529478>,  <37.358833, 29.917120, 22.522263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131317, 29.841066, 22.529478>,  <36.752125, 29.714310, 22.541506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131317, 29.841066, 22.529478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090864, 0.359926, 0.928546,
		0.305067, -0.877517, 0.369999,
		0.947986, 0.316888, -0.030067,
		37.415714, 29.936134, 22.520458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024464, 29.508783, 23.219442>,  <36.752125, 29.714310, 22.541506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024464, 29.508783, 23.219442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274044, 29.796316, 23.096828>,  <37.423794, 29.968836, 23.023260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274044, 29.796316, 23.096828>,  <37.024464, 29.508783, 23.219442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274044, 29.796316, 23.096828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051816, 0.353340, 0.934059,
		0.779741, -0.598693, 0.183221,
		0.623954, 0.718831, -0.306535,
		37.461231, 30.011965, 23.004868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534882, 29.500889, 23.789005>,  <37.024464, 29.508783, 23.219442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534882, 29.500889, 23.789005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592243, 29.845221, 23.593697>,  <37.626659, 30.051819, 23.476511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592243, 29.845221, 23.593697>,  <37.534882, 29.500889, 23.789005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592243, 29.845221, 23.593697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188721, 0.460534, 0.867348,
		0.971504, -0.216528, -0.096414,
		0.143404, 0.860828, -0.488274,
		37.635265, 30.103468, 23.447214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189735, 29.830711, 23.931698>,  <37.534882, 29.500889, 23.789005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189735, 29.830711, 23.931698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970116, 30.148458, 23.827759>,  <37.838345, 30.339106, 23.765396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970116, 30.148458, 23.827759>,  <38.189735, 29.830711, 23.931698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970116, 30.148458, 23.827759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330407, 0.491875, 0.805537,
		0.767705, 0.356428, -0.532530,
		-0.549054, 0.794367, -0.259848,
		37.805401, 30.386768, 23.749804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561874, 30.408100, 24.235815>,  <38.189735, 29.830711, 23.931698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561874, 30.408100, 24.235815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264370, 30.641443, 24.105270>,  <38.085869, 30.781450, 24.026943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264370, 30.641443, 24.105270>,  <38.561874, 30.408100, 24.235815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264370, 30.641443, 24.105270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071859, 0.555191, 0.828613,
		0.664573, 0.592837, -0.454849,
		-0.743760, 0.583359, -0.326364,
		38.041241, 30.816450, 24.007360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701088, 31.268867, 24.173805>,  <38.561874, 30.408100, 24.235815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701088, 31.268867, 24.173805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317261, 31.177387, 24.239433>,  <38.086964, 31.122499, 24.278811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317261, 31.177387, 24.239433>,  <38.701088, 31.268867, 24.173805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317261, 31.177387, 24.239433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017194, 0.534193, 0.845188,
		-0.280941, 0.813839, -0.508664,
		-0.959571, -0.228702, 0.164070,
		38.029388, 31.108776, 24.288654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449764, 31.794308, 24.554230>,  <38.701088, 31.268867, 24.173805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449764, 31.794308, 24.554230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123722, 31.572163, 24.620174>,  <37.928097, 31.438875, 24.659740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.123722, 31.572163, 24.620174>,  <38.449764, 31.794308, 24.554230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123722, 31.572163, 24.620174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192281, 0.527804, 0.827315,
		-0.546473, 0.642649, -0.537001,
		-0.815105, -0.555360, 0.164861,
		37.879192, 31.405554, 24.669632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018707, 32.236710, 24.707043>,  <38.449764, 31.794308, 24.554230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018707, 32.236710, 24.707043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.878101, 31.904835, 24.880505>,  <37.793739, 31.705709, 24.984581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.878101, 31.904835, 24.880505>,  <38.018707, 32.236710, 24.707043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878101, 31.904835, 24.880505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134566, 0.503185, 0.853637,
		-0.926460, 0.241712, -0.288525,
		-0.351516, -0.829687, 0.433655,
		37.772648, 31.655930, 25.010601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298248, 32.349945, 24.997784>,  <38.018707, 32.236710, 24.707043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298248, 32.349945, 24.997784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468597, 32.039112, 25.183161>,  <37.570808, 31.852613, 25.294388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468597, 32.039112, 25.183161>,  <37.298248, 32.349945, 24.997784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468597, 32.039112, 25.183161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208835, 0.413961, 0.886016,
		-0.880352, -0.474114, 0.014014,
		0.425874, -0.777079, 0.463443,
		37.596359, 31.805988, 25.322193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025326, 32.326019, 25.742939>,  <37.298248, 32.349945, 24.997784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025326, 32.326019, 25.742939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.311489, 32.049255, 25.781832>,  <37.483189, 31.883198, 25.805168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.311489, 32.049255, 25.781832>,  <37.025326, 32.326019, 25.742939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311489, 32.049255, 25.781832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090825, 0.230074, 0.968926,
		-0.692775, -0.684349, 0.227439,
		0.715411, -0.691905, 0.097233,
		37.526112, 31.841684, 25.811001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832165, 31.793900, 26.225771>,  <37.025326, 32.326019, 25.742939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832165, 31.793900, 26.225771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232109, 31.798887, 26.221348>,  <37.472076, 31.801880, 26.218693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232109, 31.798887, 26.221348>,  <36.832165, 31.793900, 26.225771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232109, 31.798887, 26.221348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008979, 0.155996, 0.987717,
		0.014042, -0.987679, 0.155863,
		0.999861, 0.012470, -0.011059,
		37.532066, 31.802628, 26.218031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975193, 31.500311, 26.784359>,  <36.832165, 31.793900, 26.225771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975193, 31.500311, 26.784359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327114, 31.676891, 26.713858>,  <37.538269, 31.782839, 26.671556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327114, 31.676891, 26.713858>,  <36.975193, 31.500311, 26.784359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327114, 31.676891, 26.713858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093871, 0.202134, 0.974849,
		0.465975, -0.874221, 0.136399,
		0.879804, 0.441452, -0.176254,
		37.591057, 31.809326, 26.660982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425934, 31.289160, 27.226355>,  <36.975193, 31.500311, 26.784359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425934, 31.289160, 27.226355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593231, 31.636818, 27.120787>,  <37.693611, 31.845413, 27.057446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593231, 31.636818, 27.120787>,  <37.425934, 31.289160, 27.226355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593231, 31.636818, 27.120787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248459, 0.170006, 0.953607,
		0.873692, -0.464417, -0.144843,
		0.418247, 0.869146, -0.263922,
		37.718704, 31.897562, 27.041611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.352760, 31.304642, 21.837633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.048428, 31.548479, 21.748604>,  <41.865829, 31.694780, 21.695187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.048428, 31.548479, 21.748604>,  <42.352760, 31.304642, 21.837633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048428, 31.548479, 21.748604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072966, -0.421152, -0.904050,
		-0.644838, -0.671587, 0.364904,
		-0.760829, 0.609592, -0.222572,
		41.820179, 31.731356, 21.681833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807270, 30.779886, 21.554838>,  <42.352760, 31.304642, 21.837633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807270, 30.779886, 21.554838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692833, 31.141762, 21.428541>,  <41.624172, 31.358887, 21.352764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692833, 31.141762, 21.428541>,  <41.807270, 30.779886, 21.554838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692833, 31.141762, 21.428541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196097, -0.377818, -0.904875,
		-0.937922, -0.196959, 0.285497,
		-0.286089, 0.904688, -0.315741,
		41.607006, 31.413168, 21.333818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986973, 30.737553, 21.330137>,  <41.807270, 30.779886, 21.554838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986973, 30.737553, 21.330137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177586, 31.036432, 21.144831>,  <41.291954, 31.215759, 21.033648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177586, 31.036432, 21.144831>,  <40.986973, 30.737553, 21.330137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177586, 31.036432, 21.144831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378109, -0.301534, -0.875278,
		-0.793697, 0.592259, 0.138834,
		0.476528, 0.747199, -0.463265,
		41.320545, 31.260592, 21.005852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544491, 30.785654, 20.678091>,  <40.986973, 30.737553, 21.330137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544491, 30.785654, 20.678091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.873955, 31.000916, 20.606556>,  <41.071632, 31.130072, 20.563635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.873955, 31.000916, 20.606556>,  <40.544491, 30.785654, 20.678091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873955, 31.000916, 20.606556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068402, -0.218780, -0.973374,
		-0.562949, 0.813958, -0.143388,
		0.823656, 0.538152, -0.178838,
		41.121052, 31.162361, 20.552904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349224, 31.134655, 20.049543>,  <40.544491, 30.785654, 20.678091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349224, 31.134655, 20.049543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748039, 31.129137, 20.079811>,  <40.987328, 31.125826, 20.097971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748039, 31.129137, 20.079811>,  <40.349224, 31.134655, 20.049543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748039, 31.129137, 20.079811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074833, -0.053392, -0.995766,
		0.017778, 0.998478, -0.052201,
		0.997038, -0.013796, 0.075668,
		41.047150, 31.124998, 20.102512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608727, 31.535095, 19.515238>,  <40.349224, 31.134655, 20.049543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608727, 31.535095, 19.515238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.943321, 31.325924, 19.580774>,  <41.144077, 31.200420, 19.620096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.943321, 31.325924, 19.580774>,  <40.608727, 31.535095, 19.515238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943321, 31.325924, 19.580774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154278, -0.062163, -0.986070,
		0.525829, 0.850107, 0.028678,
		0.836482, -0.522928, 0.163840,
		41.194267, 31.169044, 19.629927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233154, 31.891495, 19.109554>,  <40.608727, 31.535095, 19.515238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233154, 31.891495, 19.109554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334702, 31.514231, 19.195345>,  <41.395630, 31.287872, 19.246820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334702, 31.514231, 19.195345>,  <41.233154, 31.891495, 19.109554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334702, 31.514231, 19.195345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244921, -0.151832, -0.957581,
		0.935716, 0.295630, 0.192454,
		0.253869, -0.943159, 0.214478,
		41.410862, 31.231283, 19.259687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777683, 31.768587, 18.663204>,  <41.233154, 31.891495, 19.109554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777683, 31.768587, 18.663204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639877, 31.409697, 18.773691>,  <41.557194, 31.194363, 18.839983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639877, 31.409697, 18.773691>,  <41.777683, 31.768587, 18.663204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639877, 31.409697, 18.773691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142334, -0.340749, -0.929318,
		0.927930, -0.280845, 0.245097,
		-0.344511, -0.897227, 0.276217,
		41.536526, 31.140528, 18.856556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266361, 31.213829, 18.413239>,  <41.777683, 31.768587, 18.663204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266361, 31.213829, 18.413239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928963, 31.014584, 18.493635>,  <41.726524, 30.895037, 18.541874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928963, 31.014584, 18.493635>,  <42.266361, 31.213829, 18.413239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928963, 31.014584, 18.493635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011029, -0.358054, -0.933636,
		0.537024, -0.789734, 0.296523,
		-0.843495, -0.498115, 0.200994,
		41.675915, 30.865149, 18.553934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458015, 30.610273, 18.079443>,  <42.266361, 31.213829, 18.413239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458015, 30.610273, 18.079443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060291, 30.630827, 18.116768>,  <41.821655, 30.643158, 18.139162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060291, 30.630827, 18.116768>,  <42.458015, 30.610273, 18.079443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060291, 30.630827, 18.116768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103926, -0.275731, -0.955600,
		-0.023372, -0.959861, 0.279502,
		-0.994311, 0.051382, 0.093310,
		41.761997, 30.646242, 18.144760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211784, 30.049030, 17.676147>,  <42.458015, 30.610273, 18.079443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211784, 30.049030, 17.676147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893299, 30.288010, 17.714319>,  <41.702209, 30.431396, 17.737223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893299, 30.288010, 17.714319>,  <42.211784, 30.049030, 17.676147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893299, 30.288010, 17.714319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212049, -0.127843, -0.968861,
		-0.566646, -0.791650, 0.228478,
		-0.796208, 0.597450, 0.095427,
		41.654438, 30.467245, 17.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667976, 29.674086, 17.555731>,  <42.211784, 30.049030, 17.676147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667976, 29.674086, 17.555731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.575588, 30.054392, 17.473074>,  <41.520157, 30.282576, 17.423479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.575588, 30.054392, 17.473074>,  <41.667976, 29.674086, 17.555731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575588, 30.054392, 17.473074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428585, -0.290091, -0.855665,
		-0.873480, -0.109069, 0.474485,
		-0.230971, 0.950763, -0.206644,
		41.506298, 30.339621, 17.411081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839840, 29.622229, 17.560022>,  <41.667976, 29.674086, 17.555731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839840, 29.622229, 17.560022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000755, 29.318474, 17.355474>,  <41.097305, 29.136221, 17.232746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000755, 29.318474, 17.355474>,  <40.839840, 29.622229, 17.560022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000755, 29.318474, 17.355474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197390, -0.617366, 0.761509,
		-0.893981, -0.205405, -0.398253,
		0.402286, -0.759387, -0.511369,
		41.121441, 29.090658, 17.202065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300884, 29.132694, 17.600090>,  <40.839840, 29.622229, 17.560022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300884, 29.132694, 17.600090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.676899, 28.996428, 17.593353>,  <40.902508, 28.914667, 17.589312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.676899, 28.996428, 17.593353>,  <40.300884, 29.132694, 17.600090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676899, 28.996428, 17.593353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217993, -0.638033, 0.738507,
		-0.262330, -0.690550, -0.674035,
		0.940033, -0.340668, -0.016840,
		40.958908, 28.894228, 17.588301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612068, 29.444904, 17.359543>,  <40.300884, 29.132694, 17.600090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612068, 29.444904, 17.359543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438606, 29.094727, 17.274181>,  <39.334530, 28.884619, 17.222965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438606, 29.094727, 17.274181>,  <39.612068, 29.444904, 17.359543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438606, 29.094727, 17.274181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415767, -0.015716, 0.909335,
		-0.799428, 0.483060, -0.357166,
		-0.433650, -0.875446, -0.213404,
		39.308510, 28.832092, 17.210159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900173, 29.497227, 17.546465>,  <39.612068, 29.444904, 17.359543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900173, 29.497227, 17.546465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959999, 29.102156, 17.528044>,  <38.995895, 28.865112, 17.516991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959999, 29.102156, 17.528044>,  <38.900173, 29.497227, 17.546465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959999, 29.102156, 17.528044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323561, -0.092902, 0.941635,
		-0.934312, -0.125931, -0.333470,
		0.149561, -0.987680, -0.046053,
		39.004868, 28.805851, 17.514229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279957, 29.227358, 17.674288>,  <38.900173, 29.497227, 17.546465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279957, 29.227358, 17.674288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.528439, 28.931129, 17.776785>,  <38.677528, 28.753393, 17.838284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.528439, 28.931129, 17.776785>,  <38.279957, 29.227358, 17.674288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528439, 28.931129, 17.776785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504732, -0.127979, 0.853737,
		-0.599460, -0.659678, -0.453291,
		0.621203, -0.740572, 0.256242,
		38.714798, 28.708958, 17.853657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853630, 28.812052, 18.012737>,  <38.279957, 29.227358, 17.674288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853630, 28.812052, 18.012737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228230, 28.713587, 18.112638>,  <38.452988, 28.654509, 18.172579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228230, 28.713587, 18.112638>,  <37.853630, 28.812052, 18.012737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228230, 28.713587, 18.112638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271122, -0.056559, 0.960882,
		-0.222408, -0.967577, -0.119707,
		0.936498, -0.246163, 0.249752,
		38.509178, 28.639738, 18.187565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781960, 28.195219, 18.457945>,  <37.853630, 28.812052, 18.012737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781960, 28.195219, 18.457945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131485, 28.380354, 18.517593>,  <38.341198, 28.491434, 18.553383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131485, 28.380354, 18.517593>,  <37.781960, 28.195219, 18.457945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131485, 28.380354, 18.517593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164952, -0.006353, 0.986281,
		0.457434, -0.886421, 0.070795,
		0.873811, 0.462836, 0.149123,
		38.393627, 28.519205, 18.562330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013428, 27.759600, 18.989441>,  <37.781960, 28.195219, 18.457945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013428, 27.759600, 18.989441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244030, 28.085920, 19.007822>,  <38.382389, 28.281713, 19.018850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244030, 28.085920, 19.007822>,  <38.013428, 27.759600, 18.989441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244030, 28.085920, 19.007822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108769, 0.020884, 0.993847,
		0.809824, -0.577953, 0.100774,
		0.576502, 0.815803, 0.045952,
		38.416981, 28.330662, 19.021608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371609, 27.666031, 19.622927>,  <38.013428, 27.759600, 18.989441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371609, 27.666031, 19.622927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.402782, 28.056314, 19.541025>,  <38.421486, 28.290483, 19.491884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.402782, 28.056314, 19.541025>,  <38.371609, 27.666031, 19.622927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402782, 28.056314, 19.541025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106707, 0.212360, 0.971348,
		0.991232, -0.053850, 0.120664,
		0.077931, 0.975707, -0.204752,
		38.426163, 28.349026, 19.479599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649685, 27.960901, 20.229494>,  <38.371609, 27.666031, 19.622927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649685, 27.960901, 20.229494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490528, 28.276787, 20.042719>,  <38.395035, 28.466318, 19.930653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.490528, 28.276787, 20.042719>,  <38.649685, 27.960901, 20.229494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490528, 28.276787, 20.042719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089316, 0.473203, 0.876414,
		0.913073, 0.390427, -0.117752,
		-0.397896, 0.789712, -0.466940,
		38.371159, 28.513700, 19.902637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045212, 28.515196, 20.357584>,  <38.649685, 27.960901, 20.229494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045212, 28.515196, 20.357584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695797, 28.671972, 20.242132>,  <38.486149, 28.766039, 20.172861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695797, 28.671972, 20.242132>,  <39.045212, 28.515196, 20.357584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695797, 28.671972, 20.242132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072682, 0.481294, 0.873541,
		0.481294, 0.784052, -0.391942,
		-0.873541, 0.391942, -0.288630,
		38.433735, 28.789555, 20.155542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059662, 29.152515, 20.658619>,  <39.045212, 28.515196, 20.357584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059662, 29.152515, 20.658619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677364, 29.107157, 20.550035>,  <38.447987, 29.079941, 20.484886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.677364, 29.107157, 20.550035>,  <39.059662, 29.152515, 20.658619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677364, 29.107157, 20.550035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290584, 0.507941, 0.810898,
		0.045930, 0.853895, -0.518415,
		-0.955747, -0.113399, -0.271458,
		38.390640, 29.073137, 20.468597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743126, 29.866079, 20.693825>,  <39.059662, 29.152515, 20.658619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743126, 29.866079, 20.693825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446812, 29.597685, 20.706553>,  <38.269024, 29.436647, 20.714190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.446812, 29.597685, 20.706553>,  <38.743126, 29.866079, 20.693825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446812, 29.597685, 20.706553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313380, 0.387099, 0.867149,
		-0.594162, 0.632401, -0.497032,
		-0.740786, -0.670987, 0.031818,
		38.224575, 29.396389, 20.716099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285622, 30.252213, 20.852226>,  <38.743126, 29.866079, 20.693825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285622, 30.252213, 20.852226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148663, 29.887102, 20.941317>,  <38.066486, 29.668036, 20.994772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148663, 29.887102, 20.941317>,  <38.285622, 30.252213, 20.852226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148663, 29.887102, 20.941317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425217, 0.361932, 0.829575,
		-0.837827, 0.189337, -0.512052,
		-0.342398, -0.912774, 0.222727,
		38.045944, 29.613270, 21.008135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599697, 30.311932, 20.910349>,  <38.285622, 30.252213, 20.852226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599697, 30.311932, 20.910349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714256, 29.993195, 21.123146>,  <37.782993, 29.801952, 21.250824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714256, 29.993195, 21.123146>,  <37.599697, 30.311932, 20.910349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714256, 29.993195, 21.123146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205891, 0.491093, 0.846426,
		-0.935727, -0.351947, -0.023415,
		0.286398, -0.796844, 0.531991,
		37.800175, 29.754141, 21.282743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034245, 30.158834, 21.239704>,  <37.599697, 30.311932, 20.910349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034245, 30.158834, 21.239704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311451, 29.974630, 21.461571>,  <37.477776, 29.864107, 21.594690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311451, 29.974630, 21.461571>,  <37.034245, 30.158834, 21.239704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311451, 29.974630, 21.461571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276855, 0.540385, 0.794566,
		-0.665639, -0.704212, 0.247003,
		0.693020, -0.460510, 0.554666,
		37.519356, 29.836477, 21.627970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358097, 30.126484, 21.315025>,  <37.034245, 30.158834, 21.239704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358097, 30.126484, 21.315025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.073822, 30.401175, 21.253925>,  <35.903259, 30.565989, 21.217264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.073822, 30.401175, 21.253925>,  <36.358097, 30.126484, 21.315025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073822, 30.401175, 21.253925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207037, -0.003355, -0.978327,
		-0.672358, -0.726906, -0.139794,
		-0.710683, 0.686729, -0.152752,
		35.860619, 30.607193, 21.208099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956764, 29.906256, 20.779617>,  <36.358097, 30.126484, 21.315025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956764, 29.906256, 20.779617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930023, 30.304556, 20.804960>,  <35.913979, 30.543535, 20.820166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930023, 30.304556, 20.804960>,  <35.956764, 29.906256, 20.779617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930023, 30.304556, 20.804960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378216, 0.084052, -0.921894,
		-0.923301, -0.037665, -0.382227,
		-0.066850, 0.995749, 0.063359,
		35.909969, 30.603281, 20.823969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636574, 30.144283, 20.141556>,  <35.956764, 29.906256, 20.779617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636574, 30.144283, 20.141556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812717, 30.475531, 20.280294>,  <35.918404, 30.674278, 20.363539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812717, 30.475531, 20.280294>,  <35.636574, 30.144283, 20.141556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812717, 30.475531, 20.280294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311957, 0.221124, -0.924006,
		-0.841883, 0.515096, -0.160964,
		0.440358, 0.828119, 0.346849,
		35.944824, 30.723967, 20.384350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626503, 30.530716, 19.555250>,  <35.636574, 30.144283, 20.141556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626503, 30.530716, 19.555250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892021, 30.711567, 19.793564>,  <36.051331, 30.820078, 19.936552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892021, 30.711567, 19.793564>,  <35.626503, 30.530716, 19.555250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892021, 30.711567, 19.793564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563987, 0.220599, -0.795773,
		-0.491221, 0.864243, -0.108562,
		0.663793, 0.452129, 0.595784,
		36.091160, 30.847206, 19.972300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655132, 31.205275, 19.301521>,  <35.626503, 30.530716, 19.555250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655132, 31.205275, 19.301521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989105, 31.090380, 19.489300>,  <36.189491, 31.021442, 19.601967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989105, 31.090380, 19.489300>,  <35.655132, 31.205275, 19.301521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989105, 31.090380, 19.489300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502064, 0.048155, -0.863488,
		0.225419, 0.956649, 0.184417,
		0.834936, -0.287236, 0.469444,
		36.239586, 31.004210, 19.630133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062767, 31.723839, 19.062193>,  <35.655132, 31.205275, 19.301521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062767, 31.723839, 19.062193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293877, 31.422903, 19.188789>,  <36.432541, 31.242342, 19.264748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293877, 31.422903, 19.188789>,  <36.062767, 31.723839, 19.062193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293877, 31.422903, 19.188789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506966, 0.026903, -0.861546,
		0.639660, 0.658226, 0.396955,
		0.577771, -0.752340, 0.316489,
		36.467209, 31.197201, 19.283735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788483, 31.902739, 18.924896>,  <36.062767, 31.723839, 19.062193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788483, 31.902739, 18.924896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792732, 31.503372, 18.946993>,  <36.795280, 31.263752, 18.960251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792732, 31.503372, 18.946993>,  <36.788483, 31.902739, 18.924896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792732, 31.503372, 18.946993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652810, -0.034920, -0.756716,
		0.757447, 0.044102, 0.651405,
		0.010625, -0.998417, 0.055240,
		36.795921, 31.203848, 18.963564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280556, 32.426296, 18.671865>,  <36.788483, 31.902739, 18.924896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280556, 32.426296, 18.671865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044205, 32.661541, 18.450966>,  <36.902393, 32.802689, 18.318426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044205, 32.661541, 18.450966>,  <37.280556, 32.426296, 18.671865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044205, 32.661541, 18.450966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409909, 0.370728, 0.833388,
		0.694863, 0.718804, 0.022018,
		-0.590880, 0.588116, -0.552250,
		36.866940, 32.837975, 18.285292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386894, 32.994022, 19.004827>,  <37.280556, 32.426296, 18.671865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386894, 32.994022, 19.004827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058704, 33.094887, 18.799599>,  <36.861790, 33.155403, 18.676462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058704, 33.094887, 18.799599>,  <37.386894, 32.994022, 19.004827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058704, 33.094887, 18.799599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336206, 0.513040, 0.789782,
		0.462377, 0.820491, -0.336157,
		-0.820471, 0.252159, -0.513072,
		36.812565, 33.170536, 18.645678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276001, 33.655079, 19.087761>,  <37.386894, 32.994022, 19.004827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276001, 33.655079, 19.087761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913925, 33.503796, 19.010212>,  <36.696678, 33.413025, 18.963682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913925, 33.503796, 19.010212>,  <37.276001, 33.655079, 19.087761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913925, 33.503796, 19.010212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379071, 0.512183, 0.770697,
		-0.192189, 0.771119, -0.606992,
		-0.905190, -0.378212, -0.193873,
		36.642368, 33.390331, 18.952049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820206, 34.206207, 19.300890>,  <37.276001, 33.655079, 19.087761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820206, 34.206207, 19.300890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569038, 33.896423, 19.270113>,  <36.418339, 33.710552, 19.251646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569038, 33.896423, 19.270113>,  <36.820206, 34.206207, 19.300890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569038, 33.896423, 19.270113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587213, 0.406566, 0.699918,
		-0.510779, 0.484676, -0.710066,
		-0.627922, -0.774463, -0.076943,
		36.380661, 33.664085, 19.247030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238495, 34.513268, 19.324207>,  <36.820206, 34.206207, 19.300890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238495, 34.513268, 19.324207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.176132, 34.133331, 19.432642>,  <36.138714, 33.905369, 19.497704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.176132, 34.133331, 19.432642>,  <36.238495, 34.513268, 19.324207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176132, 34.133331, 19.432642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631954, 0.306841, 0.711676,
		-0.759163, -0.060363, -0.648096,
		-0.155904, -0.949845, 0.271089,
		36.129360, 33.848377, 19.513969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527573, 34.521736, 19.583769>,  <36.238495, 34.513268, 19.324207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527573, 34.521736, 19.583769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695332, 34.194229, 19.740599>,  <35.795986, 33.997726, 19.834696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695332, 34.194229, 19.740599>,  <35.527573, 34.521736, 19.583769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695332, 34.194229, 19.740599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544237, 0.118897, 0.830463,
		-0.726573, -0.561679, -0.395739,
		0.419401, -0.818768, 0.392073,
		35.821152, 33.948597, 19.858221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985432, 34.186245, 19.857315>,  <35.527573, 34.521736, 19.583769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985432, 34.186245, 19.857315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299774, 34.047058, 20.061806>,  <35.488380, 33.963547, 20.184500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299774, 34.047058, 20.061806>,  <34.985432, 34.186245, 19.857315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299774, 34.047058, 20.061806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507371, 0.109847, 0.854698,
		-0.353566, -0.931048, -0.090227,
		0.785854, -0.347970, 0.511225,
		35.535530, 33.942669, 20.215174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.725903, 33.429550, 15.654006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.885544, 33.172714, 15.915828>,  <40.981327, 33.018612, 16.072922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.885544, 33.172714, 15.915828>,  <40.725903, 33.429550, 15.654006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885544, 33.172714, 15.915828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196144, 0.757135, 0.623117,
		-0.895681, -0.120300, 0.428116,
		0.399102, -0.642086, 0.654555,
		41.005276, 32.980087, 16.112194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297478, 33.438248, 16.224064>,  <40.725903, 33.429550, 15.654006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297478, 33.438248, 16.224064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649658, 33.300739, 16.354679>,  <40.860966, 33.218235, 16.433048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649658, 33.300739, 16.354679>,  <40.297478, 33.438248, 16.224064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649658, 33.300739, 16.354679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033112, 0.731607, 0.680922,
		-0.472977, -0.588707, 0.655528,
		0.880452, -0.343766, 0.326540,
		40.913795, 33.197609, 16.452641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100681, 33.440445, 16.852732>,  <40.297478, 33.438248, 16.224064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100681, 33.440445, 16.852732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499062, 33.408489, 16.869240>,  <40.738091, 33.389317, 16.879145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499062, 33.408489, 16.869240>,  <40.100681, 33.440445, 16.852732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499062, 33.408489, 16.869240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007224, 0.528561, 0.848864,
		-0.089631, -0.845127, 0.526997,
		0.995949, -0.079892, 0.041271,
		40.797848, 33.384521, 16.881620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282261, 33.113060, 17.487253>,  <40.100681, 33.440445, 16.852732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282261, 33.113060, 17.487253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.601849, 33.338394, 17.403053>,  <40.793602, 33.473595, 17.352533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.601849, 33.338394, 17.403053>,  <40.282261, 33.113060, 17.487253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601849, 33.338394, 17.403053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029928, 0.386841, 0.921661,
		0.600631, -0.730076, 0.325932,
		0.798966, 0.563332, -0.210499,
		40.841537, 33.507393, 17.339903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469814, 33.251209, 18.089048>,  <40.282261, 33.113060, 17.487253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469814, 33.251209, 18.089048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707191, 33.499146, 17.883669>,  <40.849617, 33.647907, 17.760441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707191, 33.499146, 17.883669>,  <40.469814, 33.251209, 18.089048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707191, 33.499146, 17.883669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161174, 0.533487, 0.830310,
		0.788577, -0.575493, 0.216689,
		0.593439, 0.619839, -0.513450,
		40.885223, 33.685097, 17.729633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135902, 33.366432, 18.502640>,  <40.469814, 33.251209, 18.089048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135902, 33.366432, 18.502640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.112556, 33.669792, 18.242970>,  <41.098549, 33.851807, 18.087168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.112556, 33.669792, 18.242970>,  <41.135902, 33.366432, 18.502640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112556, 33.669792, 18.242970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052053, 0.651710, 0.756680,
		0.996937, 0.010371, -0.077512,
		-0.058363, 0.758398, -0.649174,
		41.095047, 33.897312, 18.048218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713394, 33.781307, 18.643517>,  <41.135902, 33.366432, 18.502640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713394, 33.781307, 18.643517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.432224, 33.992523, 18.452908>,  <41.263523, 34.119251, 18.338541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.432224, 33.992523, 18.452908>,  <41.713394, 33.781307, 18.643517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432224, 33.992523, 18.452908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129497, 0.753777, 0.644244,
		0.699379, 0.391146, -0.598226,
		-0.702923, 0.528039, -0.476524,
		41.221348, 34.150936, 18.309950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880913, 34.485424, 18.725889>,  <41.713394, 33.781307, 18.643517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880913, 34.485424, 18.725889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.495804, 34.518394, 18.622917>,  <41.264736, 34.538177, 18.561134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.495804, 34.518394, 18.622917>,  <41.880913, 34.485424, 18.725889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495804, 34.518394, 18.622917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118423, 0.727492, 0.675819,
		0.242984, 0.681147, -0.690650,
		-0.962775, 0.082424, -0.257432,
		41.206970, 34.543121, 18.545687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653309, 35.144444, 18.619076>,  <41.880913, 34.485424, 18.725889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653309, 35.144444, 18.619076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.304436, 34.960701, 18.686361>,  <41.095112, 34.850456, 18.726732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.304436, 34.960701, 18.686361>,  <41.653309, 35.144444, 18.619076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304436, 34.960701, 18.686361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162309, 0.596125, 0.786314,
		-0.461474, 0.658505, -0.594486,
		-0.872180, -0.459354, 0.168215,
		41.042782, 34.822895, 18.736826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357723, 35.730267, 18.856068>,  <41.653309, 35.144444, 18.619076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357723, 35.730267, 18.856068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103119, 35.432285, 18.935965>,  <40.950356, 35.253494, 18.983902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103119, 35.432285, 18.935965>,  <41.357723, 35.730267, 18.856068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103119, 35.432285, 18.935965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362122, 0.517311, 0.775407,
		-0.680974, 0.421222, -0.599038,
		-0.636508, -0.744957, 0.199741,
		40.912167, 35.208797, 18.995888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696613, 36.033253, 18.942114>,  <41.357723, 35.730267, 18.856068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696613, 36.033253, 18.942114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724495, 35.695240, 19.154173>,  <40.741226, 35.492432, 19.281408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724495, 35.695240, 19.154173>,  <40.696613, 36.033253, 18.942114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724495, 35.695240, 19.154173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281003, 0.493286, 0.823229,
		-0.957172, -0.206357, -0.203073,
		0.069706, -0.845036, 0.530146,
		40.745407, 35.441730, 19.313217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027321, 35.862122, 19.284267>,  <40.696613, 36.033253, 18.942114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027321, 35.862122, 19.284267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325603, 35.697063, 19.493511>,  <40.504574, 35.598030, 19.619057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325603, 35.697063, 19.493511>,  <40.027321, 35.862122, 19.284267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325603, 35.697063, 19.493511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448541, 0.269644, 0.852117,
		-0.492676, -0.870066, 0.015987,
		0.745709, -0.412647, 0.523107,
		40.549316, 35.573269, 19.650444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354603, 35.920738, 19.299040>,  <40.027321, 35.862122, 19.284267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354603, 35.920738, 19.299040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103836, 36.219227, 19.209475>,  <38.953377, 36.398319, 19.155735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103836, 36.219227, 19.209475>,  <39.354603, 35.920738, 19.299040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103836, 36.219227, 19.209475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121018, -0.190643, -0.974171,
		-0.769632, -0.637819, 0.029211,
		-0.626914, 0.746219, -0.223912,
		38.915760, 36.443092, 19.142302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923046, 35.560944, 18.962236>,  <39.354603, 35.920738, 19.299040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923046, 35.560944, 18.962236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895187, 35.950684, 18.876633>,  <38.878471, 36.184528, 18.825270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895187, 35.950684, 18.876633>,  <38.923046, 35.560944, 18.962236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895187, 35.950684, 18.876633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077997, -0.219193, -0.972559,
		-0.994518, -0.051044, 0.091262,
		-0.069648, 0.974345, -0.214010,
		38.874294, 36.242989, 18.812429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322662, 35.595024, 18.476225>,  <38.923046, 35.560944, 18.962236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322662, 35.595024, 18.476225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.554913, 35.916279, 18.422792>,  <38.694263, 36.109032, 18.390734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.554913, 35.916279, 18.422792>,  <38.322662, 35.595024, 18.476225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554913, 35.916279, 18.422792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064868, -0.117914, -0.990903,
		-0.811580, 0.584012, -0.016366,
		0.580629, 0.803136, -0.133580,
		38.729099, 36.157219, 18.382719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955349, 35.930210, 17.795801>,  <38.322662, 35.595024, 18.476225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955349, 35.930210, 17.795801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.314133, 36.100479, 17.843575>,  <38.529404, 36.202641, 17.872238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.314133, 36.100479, 17.843575>,  <37.955349, 35.930210, 17.795801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314133, 36.100479, 17.843575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174336, -0.092296, -0.980351,
		-0.406286, 0.900158, -0.156996,
		0.896961, 0.425673, 0.119431,
		38.583221, 36.228180, 17.879404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943249, 36.417858, 17.241726>,  <37.955349, 35.930210, 17.795801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943249, 36.417858, 17.241726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317432, 36.372837, 17.375736>,  <38.541943, 36.345825, 17.456142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317432, 36.372837, 17.375736>,  <37.943249, 36.417858, 17.241726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317432, 36.372837, 17.375736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313295, -0.174639, -0.933460,
		0.163573, 0.978178, -0.128105,
		0.935462, -0.112554, 0.335025,
		38.598072, 36.339069, 17.476244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285587, 36.773617, 16.742752>,  <37.943249, 36.417858, 17.241726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285587, 36.773617, 16.742752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538460, 36.534634, 16.940090>,  <38.690186, 36.391243, 17.058493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538460, 36.534634, 16.940090>,  <38.285587, 36.773617, 16.742752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538460, 36.534634, 16.940090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357798, -0.339662, -0.869834,
		0.687259, 0.726412, -0.000960,
		0.632183, -0.597458, 0.493344,
		38.728115, 36.355396, 17.088093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937225, 36.921452, 16.462660>,  <38.285587, 36.773617, 16.742752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937225, 36.921452, 16.462660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.971630, 36.561478, 16.633642>,  <38.992271, 36.345493, 16.736231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.971630, 36.561478, 16.633642>,  <38.937225, 36.921452, 16.462660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971630, 36.561478, 16.633642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284768, -0.388940, -0.876146,
		0.954730, 0.197083, 0.222821,
		0.086009, -0.899936, 0.427456,
		38.997433, 36.291496, 16.761879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575062, 36.592045, 16.148951>,  <38.937225, 36.921452, 16.462660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575062, 36.592045, 16.148951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378899, 36.285389, 16.314730>,  <39.261200, 36.101395, 16.414196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378899, 36.285389, 16.314730>,  <39.575062, 36.592045, 16.148951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378899, 36.285389, 16.314730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175566, -0.552715, -0.814667,
		0.853628, -0.326753, 0.405650,
		-0.490404, -0.766641, 0.414446,
		39.231777, 36.055397, 16.439064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075016, 35.949558, 16.109772>,  <39.575062, 36.592045, 16.148951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075016, 35.949558, 16.109772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.693275, 35.831455, 16.127813>,  <39.464230, 35.760593, 16.138639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.693275, 35.831455, 16.127813>,  <40.075016, 35.949558, 16.109772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693275, 35.831455, 16.127813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118898, -0.514086, -0.849458,
		0.273995, -0.805320, 0.525725,
		-0.954353, -0.295255, 0.045106,
		39.406971, 35.742878, 16.141346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224613, 35.304813, 15.797697>,  <40.075016, 35.949558, 16.109772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224613, 35.304813, 15.797697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826756, 35.344387, 15.809716>,  <39.588043, 35.368134, 15.816928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.826756, 35.344387, 15.809716>,  <40.224613, 35.304813, 15.797697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826756, 35.344387, 15.809716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083114, -0.592133, -0.801543,
		-0.061511, -0.799744, 0.597182,
		-0.994640, 0.098938, 0.030048,
		39.528362, 35.374069, 15.818730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950024, 34.599636, 15.882143>,  <40.224613, 35.304813, 15.797697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950024, 34.599636, 15.882143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.681129, 34.850155, 15.724228>,  <39.519794, 35.000465, 15.629478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.681129, 34.850155, 15.724228>,  <39.950024, 34.599636, 15.882143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681129, 34.850155, 15.724228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143936, -0.633641, -0.760119,
		-0.726211, -0.454154, 0.516102,
		-0.672235, 0.626293, -0.394788,
		39.479458, 35.038044, 15.605791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517483, 34.158123, 15.587153>,  <39.950024, 34.599636, 15.882143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517483, 34.158123, 15.587153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.450317, 34.508163, 15.405606>,  <39.410019, 34.718189, 15.296678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.450317, 34.508163, 15.405606>,  <39.517483, 34.158123, 15.587153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450317, 34.508163, 15.405606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132727, -0.476282, -0.869218,
		-0.976826, -0.085712, 0.196124,
		-0.167913, 0.875105, -0.453868,
		39.399944, 34.770695, 15.269445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064423, 33.941208, 15.229704>,  <39.517483, 34.158123, 15.587153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064423, 33.941208, 15.229704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234035, 34.265366, 15.067983>,  <39.335804, 34.459862, 14.970950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234035, 34.265366, 15.067983>,  <39.064423, 33.941208, 15.229704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234035, 34.265366, 15.067983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120684, -0.493005, -0.861616,
		-0.897571, 0.316558, -0.306850,
		0.424030, 0.810393, -0.404303,
		39.361244, 34.508484, 14.946692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964169, 33.286392, 15.509898>,  <39.064423, 33.941208, 15.229704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964169, 33.286392, 15.509898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.633949, 33.073429, 15.435054>,  <38.435818, 32.945652, 15.390147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.633949, 33.073429, 15.435054>,  <38.964169, 33.286392, 15.509898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633949, 33.073429, 15.435054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310380, 0.151458, 0.938469,
		-0.471304, 0.832831, -0.290284,
		-0.825552, -0.532403, -0.187111,
		38.386284, 32.913708, 15.378921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511150, 33.584251, 15.873535>,  <38.964169, 33.286392, 15.509898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511150, 33.584251, 15.873535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285690, 33.262531, 15.798282>,  <38.150414, 33.069500, 15.753130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285690, 33.262531, 15.798282>,  <38.511150, 33.584251, 15.873535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285690, 33.262531, 15.798282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381214, 0.051242, 0.923065,
		-0.732783, 0.592007, -0.335494,
		-0.563653, -0.804302, -0.188133,
		38.116596, 33.021240, 15.741842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866013, 33.756062, 16.001209>,  <38.511150, 33.584251, 15.873535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866013, 33.756062, 16.001209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848827, 33.356430, 16.001905>,  <37.838516, 33.116653, 16.002323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848827, 33.356430, 16.001905>,  <37.866013, 33.756062, 16.001209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848827, 33.356430, 16.001905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741790, 0.033066, 0.669817,
		-0.669255, 0.027488, -0.742525,
		-0.042964, -0.999075, 0.001739,
		37.835938, 33.056709, 16.002428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157669, 33.579235, 16.032425>,  <37.866013, 33.756062, 16.001209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157669, 33.579235, 16.032425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.384617, 33.274723, 16.157993>,  <37.520786, 33.092018, 16.233335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.384617, 33.274723, 16.157993>,  <37.157669, 33.579235, 16.032425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384617, 33.274723, 16.157993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637465, -0.164723, 0.752665,
		-0.521278, -0.627153, -0.578747,
		0.567369, -0.761279, 0.313922,
		37.554829, 33.046341, 16.252171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641689, 32.946960, 16.280289>,  <37.157669, 33.579235, 16.032425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641689, 32.946960, 16.280289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994083, 32.919125, 16.467489>,  <37.205521, 32.902424, 16.579809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.994083, 32.919125, 16.467489>,  <36.641689, 32.946960, 16.280289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994083, 32.919125, 16.467489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472989, -0.154966, 0.867333,
		0.012166, -0.985466, -0.169438,
		0.880984, -0.069590, 0.468000,
		37.258377, 32.898247, 16.607889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631496, 32.264866, 16.668825>,  <36.641689, 32.946960, 16.280289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631496, 32.264866, 16.668825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.893047, 32.523872, 16.825367>,  <37.049980, 32.679276, 16.919292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.893047, 32.523872, 16.825367>,  <36.631496, 32.264866, 16.668825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893047, 32.523872, 16.825367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278051, -0.275401, 0.920240,
		0.703654, -0.710543, -0.000035,
		0.653880, 0.647521, 0.391354,
		37.089211, 32.718128, 16.942774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872345, 31.971533, 17.336782>,  <36.631496, 32.264866, 16.668825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872345, 31.971533, 17.336782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982933, 32.354122, 17.374149>,  <37.049286, 32.583675, 17.396568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982933, 32.354122, 17.374149>,  <36.872345, 31.971533, 17.336782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982933, 32.354122, 17.374149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331209, 0.003583, 0.943550,
		0.902145, -0.291803, 0.317783,
		0.276469, 0.956472, 0.093415,
		37.065872, 32.641064, 17.402174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091286, 32.066849, 18.092503>,  <36.872345, 31.971533, 17.336782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091286, 32.066849, 18.092503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030499, 32.441082, 17.965010>,  <36.994026, 32.665623, 17.888514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030499, 32.441082, 17.965010>,  <37.091286, 32.066849, 18.092503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030499, 32.441082, 17.965010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337244, 0.254045, 0.906492,
		0.929071, 0.245246, 0.276914,
		-0.151965, 0.935583, -0.318733,
		36.984909, 32.721756, 17.869390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538811, 31.753513, 18.682480>,  <37.091286, 32.066849, 18.092503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538811, 31.753513, 18.682480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331532, 31.411421, 18.679564>,  <37.207165, 31.206165, 18.677814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331532, 31.411421, 18.679564>,  <37.538811, 31.753513, 18.682480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331532, 31.411421, 18.679564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624311, -0.372426, -0.686684,
		0.584559, -0.360387, 0.726920,
		-0.518196, -0.855231, -0.007289,
		37.176071, 31.154852, 18.677378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075352, 31.281786, 18.781481>,  <37.538811, 31.753513, 18.682480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075352, 31.281786, 18.781481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.762993, 31.113819, 18.596497>,  <37.575577, 31.013039, 18.485506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.762993, 31.113819, 18.596497>,  <38.075352, 31.281786, 18.781481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762993, 31.113819, 18.596497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602526, -0.311002, -0.735011,
		0.164816, -0.852612, 0.495871,
		-0.780896, -0.419917, -0.462462,
		37.528725, 30.987844, 18.457758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329197, 30.572803, 18.613506>,  <38.075352, 31.281786, 18.781481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329197, 30.572803, 18.613506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.014526, 30.645721, 18.377571>,  <37.825726, 30.689472, 18.236010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.014526, 30.645721, 18.377571>,  <38.329197, 30.572803, 18.613506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014526, 30.645721, 18.377571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453500, -0.477642, -0.752460,
		-0.418897, -0.859435, 0.293082,
		-0.786679, 0.182291, -0.589836,
		37.778522, 30.700409, 18.200621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019585, 29.894814, 18.269800>,  <38.329197, 30.572803, 18.613506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019585, 29.894814, 18.269800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893772, 30.202652, 18.047523>,  <37.818287, 30.387356, 17.914158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893772, 30.202652, 18.047523>,  <38.019585, 29.894814, 18.269800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893772, 30.202652, 18.047523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350938, -0.449650, -0.821375,
		-0.881994, -0.453359, -0.128653,
		-0.314528, 0.769598, -0.555690,
		37.799412, 30.433531, 17.880817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459957, 29.657440, 17.702396>,  <38.019585, 29.894814, 18.269800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459957, 29.657440, 17.702396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631657, 29.990072, 17.561419>,  <37.734676, 30.189651, 17.476831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631657, 29.990072, 17.561419>,  <37.459957, 29.657440, 17.702396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631657, 29.990072, 17.561419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278897, -0.493195, -0.824000,
		-0.859046, 0.255407, -0.443629,
		0.429251, 0.831581, -0.352445,
		37.760433, 30.239546, 17.455685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308887, 29.631243, 17.063305>,  <37.459957, 29.657440, 17.702396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308887, 29.631243, 17.063305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.582783, 29.920811, 17.029673>,  <37.747120, 30.094551, 17.009493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.582783, 29.920811, 17.029673>,  <37.308887, 29.631243, 17.063305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582783, 29.920811, 17.029673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343521, -0.422355, -0.838814,
		-0.642748, 0.545486, -0.537885,
		0.684740, 0.723921, -0.084082,
		37.788204, 30.137987, 17.004448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212132, 29.920231, 16.380667>,  <37.308887, 29.631243, 17.063305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212132, 29.920231, 16.380667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.589294, 30.013742, 16.475555>,  <37.815594, 30.069849, 16.532488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.589294, 30.013742, 16.475555>,  <37.212132, 29.920231, 16.380667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589294, 30.013742, 16.475555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321709, -0.454965, -0.830368,
		-0.086194, 0.859276, -0.504198,
		0.942907, 0.233778, 0.237221,
		37.872166, 30.083876, 16.546722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417744, 30.346745, 15.761627>,  <37.212132, 29.920231, 16.380667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417744, 30.346745, 15.761627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.715057, 30.197735, 15.983891>,  <37.893444, 30.108328, 16.117250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.715057, 30.197735, 15.983891>,  <37.417744, 30.346745, 15.761627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715057, 30.197735, 15.983891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362821, -0.473360, -0.802678,
		0.562046, 0.798220, -0.216679,
		0.743280, -0.372526, 0.555660,
		37.938042, 30.085978, 16.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859921, 30.273727, 15.219783>,  <37.417744, 30.346745, 15.761627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859921, 30.273727, 15.219783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065651, 30.064156, 15.491362>,  <38.189091, 29.938412, 15.654308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065651, 30.064156, 15.491362>,  <37.859921, 30.273727, 15.219783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065651, 30.064156, 15.491362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401582, -0.552388, -0.730479,
		0.757760, 0.648357, -0.073707,
		0.514326, -0.523929, 0.678946,
		38.219948, 29.906977, 15.695045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.317955, 36.659946, 29.959904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.546341, 36.333145, 29.992178>,  <36.683372, 36.137066, 30.011541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.546341, 36.333145, 29.992178>,  <36.317955, 36.659946, 29.959904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546341, 36.333145, 29.992178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377270, -0.348395, -0.858072,
		0.729156, 0.459487, -0.507151,
		0.570962, -0.817002, 0.080684,
		36.717628, 36.088043, 30.016382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693237, 36.497498, 29.253769>,  <36.317955, 36.659946, 29.959904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693237, 36.497498, 29.253769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655357, 36.153194, 29.453823>,  <36.632629, 35.946613, 29.573854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655357, 36.153194, 29.453823>,  <36.693237, 36.497498, 29.253769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655357, 36.153194, 29.453823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138674, -0.486088, -0.862837,
		0.985800, -0.151065, -0.073333,
		-0.094698, -0.860754, 0.500134,
		36.626949, 35.894970, 29.603863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857452, 35.974586, 28.796394>,  <36.693237, 36.497498, 29.253769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857452, 35.974586, 28.796394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706230, 35.740929, 29.083687>,  <36.615498, 35.600735, 29.256062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706230, 35.740929, 29.083687>,  <36.857452, 35.974586, 28.796394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706230, 35.740929, 29.083687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172557, -0.717751, -0.674579,
		0.909560, -0.378962, 0.170550,
		-0.378053, -0.584141, 0.718231,
		36.592815, 35.565685, 29.299156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146538, 35.324154, 28.695356>,  <36.857452, 35.974586, 28.796394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146538, 35.324154, 28.695356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814888, 35.259109, 28.909315>,  <36.615898, 35.220085, 29.037691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814888, 35.259109, 28.909315>,  <37.146538, 35.324154, 28.695356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814888, 35.259109, 28.909315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347484, -0.599629, -0.720903,
		0.437964, -0.783584, 0.440662,
		-0.829121, -0.162607, 0.534899,
		36.566151, 35.210327, 29.069784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020950, 34.667522, 28.512753>,  <37.146538, 35.324154, 28.695356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020950, 34.667522, 28.512753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669136, 34.757469, 28.680494>,  <36.458050, 34.811436, 28.781139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669136, 34.757469, 28.680494>,  <37.020950, 34.667522, 28.512753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669136, 34.757469, 28.680494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465625, -0.588326, -0.661109,
		0.098056, -0.776729, 0.622155,
		-0.879533, 0.224865, 0.419353,
		36.405277, 34.824928, 28.806301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718056, 34.019196, 28.626627>,  <37.020950, 34.667522, 28.512753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718056, 34.019196, 28.626627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422409, 34.288624, 28.625048>,  <36.245022, 34.450279, 28.624100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422409, 34.288624, 28.625048>,  <36.718056, 34.019196, 28.626627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422409, 34.288624, 28.625048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488220, -0.539750, -0.685792,
		-0.464057, -0.504953, 0.727787,
		-0.739116, 0.673567, -0.003947,
		36.200676, 34.490692, 28.623863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146305, 33.633381, 28.689863>,  <36.718056, 34.019196, 28.626627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146305, 33.633381, 28.689863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016621, 33.969120, 28.515331>,  <35.938812, 34.170563, 28.410612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016621, 33.969120, 28.515331>,  <36.146305, 33.633381, 28.689863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016621, 33.969120, 28.515331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407367, -0.540160, -0.736396,
		-0.853780, -0.061000, 0.517047,
		-0.324208, 0.839348, -0.436329,
		35.919357, 34.220924, 28.384432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549866, 33.548454, 28.411812>,  <36.146305, 33.633381, 28.689863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549866, 33.548454, 28.411812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634129, 33.875034, 28.196768>,  <35.684685, 34.070984, 28.067741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634129, 33.875034, 28.196768>,  <35.549866, 33.548454, 28.411812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634129, 33.875034, 28.196768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515651, -0.374414, -0.770662,
		-0.830499, 0.439565, 0.342132,
		0.210656, 0.816454, -0.537612,
		35.697327, 34.119972, 28.035484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082764, 33.501740, 28.011429>,  <35.549866, 33.548454, 28.411812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082764, 33.501740, 28.011429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304001, 33.770599, 27.814529>,  <35.436745, 33.931915, 27.696390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304001, 33.770599, 27.814529>,  <35.082764, 33.501740, 28.011429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304001, 33.770599, 27.814529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351718, -0.347231, -0.869325,
		-0.755237, 0.653950, 0.044354,
		0.553093, 0.672146, -0.492247,
		35.469929, 33.972244, 27.666855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584164, 33.955132, 27.672894>,  <35.082764, 33.501740, 28.011429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584164, 33.955132, 27.672894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925995, 33.992455, 27.468542>,  <35.131092, 34.014851, 27.345932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925995, 33.992455, 27.468542>,  <34.584164, 33.955132, 27.672894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925995, 33.992455, 27.468542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456083, -0.335639, -0.824218,
		-0.248378, 0.937358, -0.244271,
		0.854574, 0.093310, -0.510878,
		35.182365, 34.020447, 27.315279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362556, 34.076832, 27.069191>,  <34.584164, 33.955132, 27.672894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362556, 34.076832, 27.069191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739494, 33.976536, 26.980539>,  <34.965656, 33.916359, 26.927347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739494, 33.976536, 26.980539>,  <34.362556, 34.076832, 27.069191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739494, 33.976536, 26.980539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287040, -0.265126, -0.920498,
		0.172049, 0.931040, -0.321812,
		0.942341, -0.250744, -0.221631,
		35.022198, 33.901314, 26.914049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432041, 34.275719, 26.416615>,  <34.362556, 34.076832, 27.069191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432041, 34.275719, 26.416615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719681, 34.004395, 26.477011>,  <34.892265, 33.841602, 26.513248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719681, 34.004395, 26.477011>,  <34.432041, 34.275719, 26.416615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719681, 34.004395, 26.477011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142770, -0.356856, -0.923185,
		0.680084, 0.642304, -0.353457,
		0.719099, -0.678306, 0.150990,
		34.935410, 33.800903, 26.522308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708794, 34.928417, 26.103094>,  <34.432041, 34.275719, 26.416615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708794, 34.928417, 26.103094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459969, 35.221718, 25.993277>,  <34.310673, 35.397697, 25.927387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459969, 35.221718, 25.993277>,  <34.708794, 34.928417, 26.103094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459969, 35.221718, 25.993277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108503, 0.266527, 0.957700,
		0.775412, 0.625540, -0.086237,
		-0.622064, 0.733255, -0.274542,
		34.273350, 35.441696, 25.910913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878002, 35.599152, 26.474607>,  <34.708794, 34.928417, 26.103094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878002, 35.599152, 26.474607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499046, 35.634346, 26.351507>,  <34.271671, 35.655460, 26.277647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499046, 35.634346, 26.351507>,  <34.878002, 35.599152, 26.474607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499046, 35.634346, 26.351507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248502, 0.403816, 0.880443,
		0.201738, 0.910600, -0.360707,
		-0.947390, 0.087983, -0.307751,
		34.214828, 35.660740, 26.259182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749611, 36.253708, 26.532858>,  <34.878002, 35.599152, 26.474607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749611, 36.253708, 26.532858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399300, 36.061050, 26.545713>,  <34.189114, 35.945454, 26.553427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399300, 36.061050, 26.545713>,  <34.749611, 36.253708, 26.532858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399300, 36.061050, 26.545713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193284, 0.410901, 0.890955,
		-0.442332, 0.774065, -0.452952,
		-0.875776, -0.481647, 0.032140,
		34.136566, 35.916557, 26.555355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347088, 36.726803, 26.812323>,  <34.749611, 36.253708, 26.532858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347088, 36.726803, 26.812323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124325, 36.397614, 26.857185>,  <33.990669, 36.200100, 26.884104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124325, 36.397614, 26.857185>,  <34.347088, 36.726803, 26.812323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124325, 36.397614, 26.857185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330878, 0.343681, 0.878865,
		-0.761825, 0.452333, -0.463700,
		-0.556904, -0.822969, 0.112158,
		33.957253, 36.150723, 26.890833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583988, 36.900200, 26.827139>,  <34.347088, 36.726803, 26.812323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583988, 36.900200, 26.827139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631527, 36.552383, 27.018875>,  <33.660049, 36.343693, 27.133917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631527, 36.552383, 27.018875>,  <33.583988, 36.900200, 26.827139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631527, 36.552383, 27.018875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470338, 0.375860, 0.798443,
		-0.874447, -0.320346, -0.364310,
		0.118849, -0.869545, 0.479340,
		33.667183, 36.291519, 27.162678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113358, 36.818867, 27.209167>,  <33.583988, 36.900200, 26.827139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113358, 36.818867, 27.209167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306808, 36.522343, 27.395315>,  <33.422878, 36.344429, 27.507004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306808, 36.522343, 27.395315>,  <33.113358, 36.818867, 27.209167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306808, 36.522343, 27.395315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411434, 0.276742, 0.868410,
		-0.772546, -0.611455, -0.171159,
		0.483627, -0.741307, 0.465369,
		33.451897, 36.299950, 27.534925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615032, 36.437683, 27.587040>,  <33.113358, 36.818867, 27.209167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615032, 36.437683, 27.587040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963844, 36.378052, 27.773520>,  <33.173130, 36.342274, 27.885406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963844, 36.378052, 27.773520>,  <32.615032, 36.437683, 27.587040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963844, 36.378052, 27.773520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471589, -0.000918, 0.881818,
		-0.131033, -0.988825, -0.071105,
		0.872029, -0.149080, 0.466198,
		33.225452, 36.333328, 27.913380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448238, 36.079674, 28.225981>,  <32.615032, 36.437683, 27.587040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448238, 36.079674, 28.225981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822582, 36.208969, 28.282095>,  <33.047188, 36.286545, 28.315763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822582, 36.208969, 28.282095>,  <32.448238, 36.079674, 28.225981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822582, 36.208969, 28.282095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216514, 0.213408, 0.952669,
		0.278006, -0.921939, 0.269706,
		0.935860, 0.323243, 0.140284,
		33.103340, 36.305943, 28.324181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658146, 35.675564, 28.803139>,  <32.448238, 36.079674, 28.225981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658146, 35.675564, 28.803139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906258, 35.988468, 28.780094>,  <33.055126, 36.176212, 28.766268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906258, 35.988468, 28.780094>,  <32.658146, 35.675564, 28.803139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906258, 35.988468, 28.780094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053217, 0.115248, 0.991910,
		0.782575, -0.612194, 0.113116,
		0.620278, 0.782264, -0.057611,
		33.092342, 36.223148, 28.762812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336163, 35.579193, 29.278294>,  <32.658146, 35.675564, 28.803139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336163, 35.579193, 29.278294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296635, 35.973213, 29.221857>,  <33.272919, 36.209625, 29.187994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296635, 35.973213, 29.221857>,  <33.336163, 35.579193, 29.278294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296635, 35.973213, 29.221857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067676, 0.148111, 0.986652,
		0.992802, 0.087948, -0.081300,
		-0.098816, 0.985052, -0.141093,
		33.266991, 36.268730, 29.179529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869274, 35.907036, 29.725731>,  <33.336163, 35.579193, 29.278294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869274, 35.907036, 29.725731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640614, 36.222870, 29.636494>,  <33.503418, 36.412369, 29.582951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640614, 36.222870, 29.636494>,  <33.869274, 35.907036, 29.725731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640614, 36.222870, 29.636494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112590, 0.344819, 0.931892,
		0.812732, 0.507603, -0.286017,
		-0.571655, 0.789582, -0.223094,
		33.469116, 36.459743, 29.569565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193832, 36.443855, 29.985485>,  <33.869274, 35.907036, 29.725731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193832, 36.443855, 29.985485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823101, 36.589123, 29.947327>,  <33.600662, 36.676285, 29.924431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823101, 36.589123, 29.947327>,  <34.193832, 36.443855, 29.985485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823101, 36.589123, 29.947327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136035, 0.561557, 0.816179,
		0.349984, 0.743479, -0.569869,
		-0.926826, 0.363172, -0.095396,
		33.545052, 36.698074, 29.918707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269684, 37.131180, 30.054211>,  <34.193832, 36.443855, 29.985485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269684, 37.131180, 30.054211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884472, 37.063969, 30.138443>,  <33.653347, 37.023643, 30.188982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884472, 37.063969, 30.138443>,  <34.269684, 37.131180, 30.054211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884472, 37.063969, 30.138443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069203, 0.601134, 0.796146,
		-0.260363, 0.781284, -0.567280,
		-0.963028, -0.168029, 0.210580,
		33.595562, 37.013561, 30.201616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010998, 37.703640, 30.369438>,  <34.269684, 37.131180, 30.054211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010998, 37.703640, 30.369438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744919, 37.430473, 30.490187>,  <33.585270, 37.266571, 30.562635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744919, 37.430473, 30.490187>,  <34.010998, 37.703640, 30.369438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744919, 37.430473, 30.490187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068370, 0.346887, 0.935412,
		-0.743527, 0.642876, -0.184058,
		-0.665201, -0.682920, 0.301874,
		33.545357, 37.225597, 30.580750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290764, 38.031731, 29.711868>,  <34.010998, 37.703640, 30.369438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290764, 38.031731, 29.711868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424923, 38.407822, 29.688253>,  <34.505417, 38.633476, 29.674086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424923, 38.407822, 29.688253>,  <34.290764, 38.031731, 29.711868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424923, 38.407822, 29.688253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923141, 0.315509, -0.219693,
		-0.187934, 0.128183, 0.973781,
		0.335397, 0.940225, -0.059036,
		34.525543, 38.689888, 29.670542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227360, 38.290722, 29.067533>,  <34.290764, 38.031731, 29.711868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227360, 38.290722, 29.067533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627163, 38.299332, 29.058483>,  <34.867046, 38.304497, 29.053053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627163, 38.299332, 29.058483>,  <34.227360, 38.290722, 29.067533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627163, 38.299332, 29.058483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021381, -0.056515, -0.998173,
		-0.022763, 0.998170, -0.056027,
		0.999512, 0.021523, -0.022628,
		34.927017, 38.305790, 29.051695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451576, 38.819542, 28.495323>,  <34.227360, 38.290722, 29.067533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451576, 38.819542, 28.495323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717545, 38.525509, 28.548296>,  <34.877125, 38.349091, 28.580080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717545, 38.525509, 28.548296>,  <34.451576, 38.819542, 28.495323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717545, 38.525509, 28.548296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164790, -0.028559, -0.985915,
		0.728507, 0.677381, 0.102144,
		0.664923, -0.735078, 0.132431,
		34.917023, 38.304985, 28.588026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016685, 38.961620, 28.160845>,  <34.451576, 38.819542, 28.495323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016685, 38.961620, 28.160845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048553, 38.564217, 28.193329>,  <35.067673, 38.325775, 28.212820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048553, 38.564217, 28.193329>,  <35.016685, 38.961620, 28.160845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048553, 38.564217, 28.193329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176278, -0.066145, -0.982116,
		0.981111, 0.092562, 0.169863,
		0.079671, -0.993508, 0.081212,
		35.072456, 38.266163, 28.217693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588081, 38.819355, 27.790518>,  <35.016685, 38.961620, 28.160845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588081, 38.819355, 27.790518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479851, 38.437298, 27.838669>,  <35.414913, 38.208065, 27.867559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479851, 38.437298, 27.838669>,  <35.588081, 38.819355, 27.790518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479851, 38.437298, 27.838669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238127, -0.187559, -0.952952,
		0.932782, -0.229184, 0.278194,
		-0.270580, -0.955142, 0.120377,
		35.398678, 38.150757, 27.874783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196144, 38.429104, 27.862188>,  <35.588081, 38.819355, 27.790518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196144, 38.429104, 27.862188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898140, 38.184128, 27.756443>,  <35.719337, 38.037144, 27.692995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898140, 38.184128, 27.756443>,  <36.196144, 38.429104, 27.862188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898140, 38.184128, 27.756443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489707, -0.233046, -0.840165,
		0.452939, -0.755388, 0.473535,
		-0.745006, -0.612436, -0.264363,
		35.674637, 38.000397, 27.677134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472065, 37.728722, 27.701687>,  <36.196144, 38.429104, 27.862188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472065, 37.728722, 27.701687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114811, 37.737892, 27.522009>,  <35.900459, 37.743393, 27.414202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114811, 37.737892, 27.522009>,  <36.472065, 37.728722, 27.701687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114811, 37.737892, 27.522009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426825, -0.271774, -0.862531,
		-0.141850, -0.962088, 0.232949,
		-0.893140, 0.022922, -0.449195,
		35.846870, 37.744770, 27.387251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331875, 37.092754, 27.284410>,  <36.472065, 37.728722, 27.701687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331875, 37.092754, 27.284410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077953, 37.349949, 27.113016>,  <35.925602, 37.504265, 27.010180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077953, 37.349949, 27.113016>,  <36.331875, 37.092754, 27.284410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077953, 37.349949, 27.113016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383002, -0.219779, -0.897222,
		-0.671070, -0.733669, -0.106748,
		-0.634803, 0.642983, -0.428483,
		35.887512, 37.542843, 26.984470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955536, 36.702385, 26.738626>,  <36.331875, 37.092754, 27.284410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955536, 36.702385, 26.738626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898743, 37.087723, 26.647575>,  <35.864666, 37.318924, 26.592945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898743, 37.087723, 26.647575>,  <35.955536, 36.702385, 26.738626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898743, 37.087723, 26.647575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400117, -0.154481, -0.903351,
		-0.905399, -0.219340, -0.363515,
		-0.141985, 0.963341, -0.227628,
		35.856148, 37.376724, 26.579287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775627, 36.696911, 26.021345>,  <35.955536, 36.702385, 26.738626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775627, 36.696911, 26.021345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873131, 37.082207, 26.066519>,  <35.931633, 37.313385, 26.093622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873131, 37.082207, 26.066519>,  <35.775627, 36.696911, 26.021345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873131, 37.082207, 26.066519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502897, -0.025970, -0.863956,
		-0.829263, 0.267390, -0.490740,
		0.243758, 0.963238, 0.112933,
		35.946259, 37.371178, 26.100399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699512, 36.960190, 25.347376>,  <35.775627, 36.696911, 26.021345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699512, 36.960190, 25.347376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937157, 37.209103, 25.551260>,  <36.079742, 37.358452, 25.673590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937157, 37.209103, 25.551260>,  <35.699512, 36.960190, 25.347376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937157, 37.209103, 25.551260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651484, -0.000569, -0.758663,
		-0.471811, 0.782794, -0.405744,
		0.594107, 0.622281, 0.509709,
		36.115387, 37.395786, 25.704172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823750, 37.392757, 24.851116>,  <35.699512, 36.960190, 25.347376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823750, 37.392757, 24.851116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129810, 37.474049, 25.095490>,  <36.313446, 37.522823, 25.242113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129810, 37.474049, 25.095490>,  <35.823750, 37.392757, 24.851116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129810, 37.474049, 25.095490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626517, -0.016334, -0.779237,
		-0.148381, 0.978996, -0.139821,
		0.765154, 0.203224, 0.610934,
		36.359356, 37.535015, 25.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187008, 37.938416, 24.653605>,  <35.823750, 37.392757, 24.851116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187008, 37.938416, 24.653605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443195, 37.689396, 24.833490>,  <36.596909, 37.539986, 24.941422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443195, 37.689396, 24.833490>,  <36.187008, 37.938416, 24.653605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443195, 37.689396, 24.833490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652030, 0.131381, -0.746723,
		0.405786, 0.771476, 0.490063,
		0.640464, -0.622546, 0.449713,
		36.635334, 37.502632, 24.968405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802998, 38.013222, 24.203884>,  <36.187008, 37.938416, 24.653605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802998, 38.013222, 24.203884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939423, 37.715797, 24.433945>,  <37.021278, 37.537342, 24.571981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939423, 37.715797, 24.433945>,  <36.802998, 38.013222, 24.203884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939423, 37.715797, 24.433945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570515, -0.322544, -0.755300,
		0.747121, 0.585734, 0.314206,
		0.341060, -0.743560, 0.575150,
		37.041740, 37.492729, 24.606489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481243, 38.106224, 24.378633>,  <36.802998, 38.013222, 24.203884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481243, 38.106224, 24.378633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.383770, 37.718300, 24.382229>,  <37.325287, 37.485546, 24.384386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.383770, 37.718300, 24.382229>,  <37.481243, 38.106224, 24.378633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383770, 37.718300, 24.382229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479502, -0.128531, -0.868077,
		0.843028, -0.207228, 0.496348,
		-0.243685, -0.969813, 0.008989,
		37.310665, 37.427357, 24.384926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014610, 37.747288, 23.974438>,  <37.481243, 38.106224, 24.378633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014610, 37.747288, 23.974438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750660, 37.447895, 24.000780>,  <37.592289, 37.268257, 24.016586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750660, 37.447895, 24.000780>,  <38.014610, 37.747288, 23.974438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750660, 37.447895, 24.000780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322538, -0.361333, -0.874876,
		0.678627, -0.556067, 0.479849,
		-0.659875, -0.748484, 0.065857,
		37.552696, 37.223351, 24.020536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355499, 37.132549, 24.011629>,  <38.014610, 37.747288, 23.974438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355499, 37.132549, 24.011629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986282, 37.056984, 23.877579>,  <37.764751, 37.011642, 23.797150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986282, 37.056984, 23.877579>,  <38.355499, 37.132549, 24.011629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986282, 37.056984, 23.877579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383161, -0.373527, -0.844787,
		0.034415, -0.908179, 0.417166,
		-0.923041, -0.188915, -0.335124,
		37.709370, 37.000309, 23.777042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410614, 36.575706, 23.599266>,  <38.355499, 37.132549, 24.011629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410614, 36.575706, 23.599266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052387, 36.700558, 23.472431>,  <37.837452, 36.775467, 23.396330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052387, 36.700558, 23.472431>,  <38.410614, 36.575706, 23.599266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052387, 36.700558, 23.472431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100869, -0.551675, -0.827937,
		-0.433348, -0.773455, 0.462577,
		-0.895564, 0.312125, -0.317084,
		37.783718, 36.794197, 23.377306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983002, 36.022366, 23.288034>,  <38.410614, 36.575706, 23.599266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983002, 36.022366, 23.288034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830837, 36.356945, 23.130228>,  <37.739536, 36.557693, 23.035545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830837, 36.356945, 23.130228>,  <37.983002, 36.022366, 23.288034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830837, 36.356945, 23.130228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133779, -0.372329, -0.918409,
		-0.915090, -0.402152, 0.029740,
		-0.380413, 0.836448, -0.394514,
		37.716713, 36.607880, 23.011873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645729, 35.822365, 22.641003>,  <37.983002, 36.022366, 23.288034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645729, 35.822365, 22.641003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687901, 36.218109, 22.600914>,  <37.713203, 36.455555, 22.576860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687901, 36.218109, 22.600914>,  <37.645729, 35.822365, 22.641003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687901, 36.218109, 22.600914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060204, -0.106949, -0.992440,
		-0.992603, 0.098598, -0.070839,
		0.105428, 0.989364, -0.100222,
		37.719528, 36.514919, 22.570848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304245, 35.904816, 22.037146>,  <37.645729, 35.822365, 22.641003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304245, 35.904816, 22.037146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.492088, 36.253860, 22.090832>,  <37.604794, 36.463287, 22.123043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.492088, 36.253860, 22.090832>,  <37.304245, 35.904816, 22.037146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492088, 36.253860, 22.090832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170203, 0.059689, -0.983599,
		-0.866313, 0.484751, -0.120491,
		0.469609, 0.872613, 0.134216,
		37.632973, 36.515644, 22.131096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114506, 36.354973, 21.479063>,  <37.304245, 35.904816, 22.037146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114506, 36.354973, 21.479063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466320, 36.473404, 21.628065>,  <37.677406, 36.544464, 21.717466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466320, 36.473404, 21.628065>,  <37.114506, 36.354973, 21.479063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466320, 36.473404, 21.628065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379614, 0.035408, -0.924467,
		-0.286903, 0.954507, -0.081252,
		0.879534, 0.296077, 0.372503,
		37.730179, 36.562225, 21.739817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155064, 37.040222, 21.249771>,  <37.114506, 36.354973, 21.479063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155064, 37.040222, 21.249771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535217, 36.932720, 21.312428>,  <37.763309, 36.868221, 21.350021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535217, 36.932720, 21.312428>,  <37.155064, 37.040222, 21.249771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535217, 36.932720, 21.312428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211774, 0.190165, -0.958639,
		0.227847, 0.944251, 0.237645,
		0.950388, -0.268751, 0.156639,
		37.820335, 36.852097, 21.359419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567177, 37.555008, 20.887180>,  <37.155064, 37.040222, 21.249771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567177, 37.555008, 20.887180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805557, 37.241703, 20.958002>,  <37.948586, 37.053719, 21.000494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.805557, 37.241703, 20.958002>,  <37.567177, 37.555008, 20.887180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805557, 37.241703, 20.958002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405353, 0.103091, -0.908329,
		0.693207, 0.613085, 0.378934,
		0.595948, -0.783262, 0.177053,
		37.984341, 37.006725, 21.011118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224949, 37.756542, 20.693680>,  <37.567177, 37.555008, 20.887180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224949, 37.756542, 20.693680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214790, 37.356960, 20.678448>,  <38.208694, 37.117210, 20.669308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214790, 37.356960, 20.678448>,  <38.224949, 37.756542, 20.693680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214790, 37.356960, 20.678448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378913, 0.025635, -0.925077,
		0.925084, -0.037920, 0.377865,
		-0.025392, -0.998952, -0.038082,
		38.207172, 37.057274, 20.667023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855690, 37.488224, 20.340300>,  <38.224949, 37.756542, 20.693680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855690, 37.488224, 20.340300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639721, 37.151539, 20.340000>,  <38.510139, 36.949528, 20.339821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639721, 37.151539, 20.340000>,  <38.855690, 37.488224, 20.340300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639721, 37.151539, 20.340000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310676, -0.198459, -0.929567,
		0.782279, -0.502130, 0.368653,
		-0.539926, -0.841712, -0.000750,
		38.477741, 36.899025, 20.339775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375656, 36.980473, 20.205839>,  <38.855690, 37.488224, 20.340300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375656, 36.980473, 20.205839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013378, 36.866383, 20.080385>,  <38.796013, 36.797928, 20.005114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013378, 36.866383, 20.080385>,  <39.375656, 36.980473, 20.205839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013378, 36.866383, 20.080385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381745, -0.226978, -0.895964,
		0.184361, -0.931198, 0.314454,
		-0.905694, -0.285222, -0.313634,
		38.741669, 36.780815, 19.986296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420139, 36.353607, 19.976032>,  <39.375656, 36.980473, 20.205839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420139, 36.353607, 19.976032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091499, 36.484753, 19.789492>,  <38.894318, 36.563442, 19.677568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091499, 36.484753, 19.789492>,  <39.420139, 36.353607, 19.976032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091499, 36.484753, 19.789492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462048, -0.096166, -0.881626,
		-0.333904, -0.939816, -0.072481,
		-0.821596, 0.327869, -0.466350,
		38.845020, 36.583115, 19.649586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541058, 35.619907, 20.055759>,  <39.420139, 36.353607, 19.976032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541058, 35.619907, 20.055759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937199, 35.580620, 20.094875>,  <40.174881, 35.557049, 20.118345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937199, 35.580620, 20.094875>,  <39.541058, 35.619907, 20.055759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937199, 35.580620, 20.094875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085727, 0.120310, 0.989028,
		-0.108906, -0.987866, 0.110729,
		0.990348, -0.098219, 0.097789,
		40.234303, 35.551155, 20.124212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657188, 35.207375, 20.667736>,  <39.541058, 35.619907, 20.055759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657188, 35.207375, 20.667736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019318, 35.371750, 20.624805>,  <40.236595, 35.470375, 20.599047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019318, 35.371750, 20.624805>,  <39.657188, 35.207375, 20.667736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019318, 35.371750, 20.624805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164646, -0.106623, 0.980573,
		0.391510, -0.905407, -0.164188,
		0.905324, 0.410937, -0.107328,
		40.290916, 35.495029, 20.592607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184399, 34.731594, 20.931402>,  <39.657188, 35.207375, 20.667736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184399, 34.731594, 20.931402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350632, 35.094223, 20.960850>,  <40.450371, 35.311798, 20.978518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350632, 35.094223, 20.960850>,  <40.184399, 34.731594, 20.931402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350632, 35.094223, 20.960850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097658, -0.124944, 0.987346,
		0.904296, -0.403137, -0.140458,
		0.415585, 0.906570, 0.073617,
		40.475307, 35.366196, 20.982935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762573, 34.737068, 21.471689>,  <40.184399, 34.731594, 20.931402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762573, 34.737068, 21.471689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.739204, 35.135693, 21.448210>,  <40.725182, 35.374866, 21.434122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.739204, 35.135693, 21.448210>,  <40.762573, 34.737068, 21.471689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739204, 35.135693, 21.448210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119093, 0.065338, 0.990731,
		0.991163, 0.050893, -0.122501,
		-0.058425, 0.996564, -0.058700,
		40.721676, 35.434662, 21.430599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235176, 34.983086, 21.965668>,  <40.762573, 34.737068, 21.471689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235176, 34.983086, 21.965668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978565, 35.278400, 21.882360>,  <40.824600, 35.455589, 21.832376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978565, 35.278400, 21.882360>,  <41.235176, 34.983086, 21.965668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978565, 35.278400, 21.882360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110106, 0.180066, 0.977473,
		0.759161, 0.650003, -0.034226,
		-0.641523, 0.738291, -0.208268,
		40.786110, 35.499889, 21.819880>
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
