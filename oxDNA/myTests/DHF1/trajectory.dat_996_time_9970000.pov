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
	<0.927085, 1.846894, -0.935599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.726643, 1.982681, -0.617189>,  <0.606377, 2.064153, -0.426144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.726643, 1.982681, -0.617189>,  <0.927085, 1.846894, -0.935599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.726643, 1.982681, -0.617189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447713, -0.888876, 0.097223,
		0.740571, -0.307671, 0.597406,
		-0.501107, 0.339467, 0.796024,
		0.576310, 2.084521, -0.378382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.171618, 1.393693, -0.298352>,  <0.927085, 1.846894, -0.935599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.171618, 1.393693, -0.298352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806477, 1.556639, -0.309324>,  <0.587392, 1.654406, -0.315908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806477, 1.556639, -0.309324>,  <1.171618, 1.393693, -0.298352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.806477, 1.556639, -0.309324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407660, -0.905676, 0.116468,
		0.022601, 0.117501, 0.992815,
		-0.912854, 0.407363, -0.027431,
		0.532620, 1.678848, -0.317554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.633521, 1.241798, 0.173482>,  <1.171618, 1.393693, -0.298352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.633521, 1.241798, 0.173482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.457863, 1.195930, 0.529909>,  <0.352468, 1.168410, 0.743766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.457863, 1.195930, 0.529909>,  <0.633521, 1.241798, 0.173482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.457863, 1.195930, 0.529909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656485, 0.636144, 0.405399,
		-0.613335, 0.763002, -0.204081,
		-0.439145, -0.114669, 0.891068,
		0.326119, 1.161530, 0.797230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.402739, 1.926969, 0.378192>,  <0.633521, 1.241798, 0.173482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.402739, 1.926969, 0.378192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.425858, 1.685248, 0.696054>,  <0.439729, 1.540216, 0.886772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.425858, 1.685248, 0.696054>,  <0.402739, 1.926969, 0.378192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.425858, 1.685248, 0.696054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668812, 0.614396, 0.418578,
		-0.741181, 0.507283, 0.439675,
		0.057797, -0.604302, 0.794656,
		0.443197, 1.503958, 0.934451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.255590, 2.288265, 1.043853>,  <0.402739, 1.926969, 0.378192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.255590, 2.288265, 1.043853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.467106, 1.962615, 1.139835>,  <0.594016, 1.767224, 1.197425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.467106, 1.962615, 1.139835>,  <0.255590, 2.288265, 1.043853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.467106, 1.962615, 1.139835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711112, 0.579306, 0.398401,
		-0.463357, -0.040034, 0.885267,
		0.528790, -0.814126, 0.239957,
		0.625743, 1.718377, 1.211822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.484723, 2.460829, 1.706514>,  <0.255590, 2.288265, 1.043853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.484723, 2.460829, 1.706514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.725891, 2.182513, 1.550379>,  <0.870592, 2.015524, 1.456697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.725891, 2.182513, 1.550379>,  <0.484723, 2.460829, 1.706514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.725891, 2.182513, 1.550379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767572, 0.372499, 0.521611,
		-0.217530, -0.614103, 0.758655,
		0.602921, -0.695788, -0.390339,
		0.906768, 1.973777, 1.433277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.772938, 2.213815, 2.255495>,  <0.484723, 2.460829, 1.706514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.772938, 2.213815, 2.255495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.012859, 2.077189, 1.966063>,  <1.156812, 1.995213, 1.792403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.012859, 2.077189, 1.966063>,  <0.772938, 2.213815, 2.255495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.012859, 2.077189, 1.966063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799960, 0.236385, 0.551531,
		-0.017341, -0.909645, 0.415024,
		0.599803, -0.341567, -0.723581,
		1.192800, 1.974719, 1.748988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.225561, 1.746792, 2.528698>,  <0.772938, 2.213815, 2.255495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.225561, 1.746792, 2.528698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.421619, 1.850103, 2.195700>,  <1.539255, 1.912089, 1.995901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.421619, 1.850103, 2.195700>,  <1.225561, 1.746792, 2.528698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.421619, 1.850103, 2.195700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830241, 0.152511, 0.536135,
		0.265436, -0.953956, -0.139680,
		0.490146, 0.258278, -0.832496,
		1.568663, 1.927586, 1.945951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.468066, 3.154663, 2.476815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.646332, 2.828405, 2.329243>,  <2.753291, 2.632651, 2.240700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.646332, 2.828405, 2.329243>,  <2.468066, 3.154663, 2.476815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.646332, 2.828405, 2.329243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859251, -0.274136, -0.431899,
		0.251139, 0.509485, -0.823015,
		0.445664, -0.815644, -0.368929,
		2.780031, 2.583712, 2.218564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.123100, 3.162916, 1.856532>,  <2.468066, 3.154663, 2.476815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.123100, 3.162916, 1.856532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.284225, 2.801161, 1.912846>,  <2.380901, 2.584107, 1.946634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.284225, 2.801161, 1.912846>,  <2.123100, 3.162916, 1.856532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.284225, 2.801161, 1.912846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743892, -0.413106, -0.525327,
		0.533259, 0.106881, -0.839173,
		0.402815, -0.904389, 0.140785,
		2.405070, 2.529844, 1.955081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.002845, 2.897746, 1.232682>,  <2.123100, 3.162916, 1.856532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.002845, 2.897746, 1.232682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.055565, 2.603073, 1.497990>,  <2.087197, 2.426269, 1.657174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.055565, 2.603073, 1.497990>,  <2.002845, 2.897746, 1.232682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.055565, 2.603073, 1.497990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721514, -0.530115, -0.445416,
		0.679740, -0.419853, -0.601396,
		0.131800, -0.736683, 0.663270,
		2.095105, 2.382068, 1.696971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.151651, 2.323324, 0.845946>,  <2.002845, 2.897746, 1.232682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.151651, 2.323324, 0.845946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.988640, 2.194902, 1.187904>,  <1.890833, 2.117850, 1.393079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.988640, 2.194902, 1.187904>,  <2.151651, 2.323324, 0.845946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.988640, 2.194902, 1.187904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704431, -0.485212, -0.518021,
		0.581118, -0.813323, -0.028423,
		-0.407527, -0.321054, 0.854896,
		1.866382, 2.098587, 1.444373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012271, 1.645997, 0.764328>,  <2.151651, 2.323324, 0.845946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012271, 1.645997, 0.764328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.775116, 1.709671, 1.080086>,  <1.632823, 1.747875, 1.269541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.775116, 1.709671, 1.080086>,  <2.012271, 1.645997, 0.764328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.775116, 1.709671, 1.080086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717005, -0.550597, -0.427488,
		0.366589, -0.819453, 0.440579,
		-0.592888, 0.159185, 0.789395,
		1.597250, 1.757427, 1.316904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.644068, 1.049591, 0.928081>,  <2.012271, 1.645997, 0.764328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.644068, 1.049591, 0.928081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.426651, 1.322060, 1.124271>,  <1.296201, 1.485541, 1.241986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.426651, 1.322060, 1.124271>,  <1.644068, 1.049591, 0.928081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.426651, 1.322060, 1.124271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818699, -0.559138, -0.130752,
		0.185179, -0.472622, 0.861590,
		-0.543544, 0.681170, 0.490476,
		1.263588, 1.526411, 1.271414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.376489, 0.766633, 1.618181>,  <1.644068, 1.049591, 0.928081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.376489, 0.766633, 1.618181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140839, 1.059958, 1.482426>,  <0.999448, 1.235952, 1.400972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140839, 1.059958, 1.482426>,  <1.376489, 0.766633, 1.618181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140839, 1.059958, 1.482426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746375, -0.654771, -0.119159,
		-0.309602, 0.183111, 0.933068,
		-0.589127, 0.733311, -0.339388,
		0.964101, 1.279951, 1.380609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.759246, 0.878658, 1.965631>,  <1.376489, 0.766633, 1.618181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.759246, 0.878658, 1.965631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.674446, 1.035160, 1.607418>,  <0.623566, 1.129061, 1.392491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.674446, 1.035160, 1.607418>,  <0.759246, 0.878658, 1.965631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.674446, 1.035160, 1.607418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831949, -0.553051, -0.044680,
		-0.512756, 0.735564, 0.442750,
		-0.211999, 0.391255, -0.895531,
		0.610847, 1.152537, 1.338759>
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
