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
	<1.757840, 3.000980, 3.274593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.508392, 3.304270, 3.350693>,  <1.358723, 3.486243, 3.396353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.508392, 3.304270, 3.350693>,  <1.757840, 3.000980, 3.274593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.508392, 3.304270, 3.350693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291689, -0.000095, 0.956513,
		0.725269, 0.651994, -0.221106,
		-0.623620, 0.758224, 0.190249,
		1.321306, 3.531737, 3.407767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.068280, 3.713371, 3.517134>,  <1.757840, 3.000980, 3.274593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.068280, 3.713371, 3.517134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.699280, 3.637474, 3.651590>,  <1.477880, 3.591936, 3.732264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.699280, 3.637474, 3.651590>,  <2.068280, 3.713371, 3.517134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.699280, 3.637474, 3.651590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293696, 0.220046, 0.930227,
		-0.250470, 0.956858, -0.147266,
		-0.922501, -0.189743, 0.336140,
		1.422530, 3.580551, 3.752432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.797270, 4.255830, 3.953901>,  <2.068280, 3.713371, 3.517134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.797270, 4.255830, 3.953901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.636230, 3.902000, 4.048086>,  <1.539607, 3.689703, 4.104597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.636230, 3.902000, 4.048086>,  <1.797270, 4.255830, 3.953901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.636230, 3.902000, 4.048086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239722, 0.146366, 0.959745,
		-0.883429, 0.442838, 0.153125,
		-0.402600, -0.884574, 0.235462,
		1.515451, 3.636628, 4.118725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.425003, 4.344226, 4.498413>,  <1.797270, 4.255830, 3.953901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.425003, 4.344226, 4.498413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.531761, 3.958881, 4.509007>,  <1.595816, 3.727674, 4.515363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.531761, 3.958881, 4.509007>,  <1.425003, 4.344226, 4.498413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.531761, 3.958881, 4.509007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284327, 0.104970, 0.952964,
		-0.920829, -0.246811, 0.301926,
		0.266895, -0.963362, 0.026485,
		1.611830, 3.669873, 4.516952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.138293, 4.122924, 5.086075>,  <1.425003, 4.344226, 4.498413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.138293, 4.122924, 5.086075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.435684, 3.867373, 5.007008>,  <1.614119, 3.714042, 4.959567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.435684, 3.867373, 5.007008>,  <1.138293, 4.122924, 5.086075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.435684, 3.867373, 5.007008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239958, -0.021045, 0.970555,
		-0.624227, -0.769019, 0.137658,
		0.743479, -0.638879, -0.197670,
		1.658728, 3.675709, 4.947707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.126315, 3.740350, 5.641705>,  <1.138293, 4.122924, 5.086075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.126315, 3.740350, 5.641705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.492111, 3.665876, 5.498014>,  <1.711589, 3.621192, 5.411800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.492111, 3.665876, 5.498014>,  <1.126315, 3.740350, 5.641705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.492111, 3.665876, 5.498014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327318, -0.181479, 0.927323,
		-0.237848, -0.965608, -0.105018,
		0.914490, -0.186188, -0.359225,
		1.766458, 3.610021, 5.390247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216502, 3.201572, 6.011525>,  <1.126315, 3.740350, 5.641705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216502, 3.201572, 6.011525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.590218, 3.292271, 5.901476>,  <1.814447, 3.346690, 5.835447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.590218, 3.292271, 5.901476>,  <1.216502, 3.201572, 6.011525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.590218, 3.292271, 5.901476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337020, -0.309997, 0.888999,
		0.116290, -0.923303, -0.366045,
		0.934288, 0.226746, -0.275122,
		1.870504, 3.360294, 5.818939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.681062, 2.687422, 6.417189>,  <1.216502, 3.201572, 6.011525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.681062, 2.687422, 6.417189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.923836, 2.979252, 6.291107>,  <2.069500, 3.154350, 6.215458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.923836, 2.979252, 6.291107>,  <1.681062, 2.687422, 6.417189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.923836, 2.979252, 6.291107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450301, 0.011121, 0.892807,
		0.654875, -0.683811, -0.321778,
		0.606933, 0.729574, -0.315204,
		2.105916, 3.198124, 6.196546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.886920, 3.545891, 2.241856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.252121, 3.708427, 2.227345>,  <2.471241, 3.805949, 2.218637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.252121, 3.708427, 2.227345>,  <1.886920, 3.545891, 2.241856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.252121, 3.708427, 2.227345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013926, -0.057834, -0.998229,
		-0.407719, 0.911890, -0.047143,
		0.913001, 0.406341, -0.036279,
		2.526021, 3.830330, 2.216461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.837911, 4.151833, 1.845941>,  <1.886920, 3.545891, 2.241856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.837911, 4.151833, 1.845941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.207039, 4.001221, 1.813374>,  <2.428516, 3.910853, 1.793833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.207039, 4.001221, 1.813374>,  <1.837911, 4.151833, 1.845941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.207039, 4.001221, 1.813374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206723, -0.305673, -0.929424,
		0.325069, 0.874522, -0.359919,
		0.922820, -0.376530, -0.081419,
		2.483885, 3.888262, 1.788948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.175668, 4.419740, 1.314499>,  <1.837911, 4.151833, 1.845941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.175668, 4.419740, 1.314499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328323, 4.053288, 1.363577>,  <2.419916, 3.833416, 1.393024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328323, 4.053288, 1.363577>,  <2.175668, 4.419740, 1.314499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.328323, 4.053288, 1.363577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295846, -0.246830, -0.922795,
		0.875687, 0.315875, -0.365233,
		0.381638, -0.916132, 0.122696,
		2.442815, 3.778448, 1.400386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.733047, 4.266646, 0.781641>,  <2.175668, 4.419740, 1.314499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.733047, 4.266646, 0.781641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553078, 3.934135, 0.912207>,  <2.445096, 3.734629, 0.990546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553078, 3.934135, 0.912207>,  <2.733047, 4.266646, 0.781641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553078, 3.934135, 0.912207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167818, -0.280291, -0.945132,
		0.877158, -0.480015, -0.013394,
		-0.449923, -0.831278, 0.326415,
		2.418101, 3.684752, 1.010131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.069181, 3.689110, 0.449689>,  <2.733047, 4.266646, 0.781641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.069181, 3.689110, 0.449689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.693634, 3.599312, 0.554096>,  <2.468306, 3.545433, 0.616740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.693634, 3.599312, 0.554096>,  <3.069181, 3.689110, 0.449689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.693634, 3.599312, 0.554096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198314, -0.267092, -0.943045,
		0.281425, -0.937157, 0.206243,
		-0.938867, -0.224496, 0.261018,
		2.411974, 3.531963, 0.632401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.927784, 3.380963, -0.131218>,  <3.069181, 3.689110, 0.449689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.927784, 3.380963, -0.131218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.565094, 3.412437, 0.034510>,  <2.347480, 3.431322, 0.133946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.565094, 3.412437, 0.034510>,  <2.927784, 3.380963, -0.131218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.565094, 3.412437, 0.034510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421605, -0.192506, -0.886110,
		0.010037, -0.978136, 0.207723,
		-0.906724, 0.078683, 0.414319,
		2.293077, 3.436043, 0.158805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535200, 2.742931, -0.197433>,  <2.927784, 3.380963, -0.131218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535200, 2.742931, -0.197433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.288376, 3.056087, -0.165638>,  <2.140281, 3.243981, -0.146561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.288376, 3.056087, -0.165638>,  <2.535200, 2.742931, -0.197433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.288376, 3.056087, -0.165638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324937, -0.161500, -0.931844,
		-0.716695, -0.600832, 0.354046,
		-0.617060, 0.782891, 0.079486,
		2.103258, 3.290955, -0.141792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.978384, 2.412585, -0.499263>,  <2.535200, 2.742931, -0.197433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.978384, 2.412585, -0.499263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.907661, 2.806248, -0.504524>,  <1.865228, 3.042446, -0.507681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.907661, 2.806248, -0.504524>,  <1.978384, 2.412585, -0.499263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.907661, 2.806248, -0.504524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468867, -0.095968, -0.878040,
		-0.865392, -0.149075, 0.478407,
		-0.176806, 0.984158, -0.013154,
		1.854620, 3.101495, -0.508470>
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
