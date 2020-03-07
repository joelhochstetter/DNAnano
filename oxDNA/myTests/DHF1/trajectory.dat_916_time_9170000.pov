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
	<1.537198, 1.260793, 5.056622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.927383, 1.184422, 5.012772>,  <2.161495, 1.138599, 4.986462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.927383, 1.184422, 5.012772>,  <1.537198, 1.260793, 5.056622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.927383, 1.184422, 5.012772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196184, 0.979781, 0.039247,
		0.099915, -0.059791, 0.993198,
		0.975464, -0.190928, -0.109625,
		2.220022, 1.127143, 4.979884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.023829, 1.441990, 5.598447>,  <1.537198, 1.260793, 5.056622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.023829, 1.441990, 5.598447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.184189, 1.477884, 5.233761>,  <2.280405, 1.499421, 5.014949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.184189, 1.477884, 5.233761>,  <2.023829, 1.441990, 5.598447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.184189, 1.477884, 5.233761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122159, 0.981068, 0.150277,
		0.907940, -0.171620, 0.382349,
		0.400901, 0.089735, -0.911716,
		2.304459, 1.504805, 4.960246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.793480, 1.761801, 5.506346>,  <2.023829, 1.441990, 5.598447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.793480, 1.761801, 5.506346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.544510, 1.845982, 5.204803>,  <2.395128, 1.896490, 5.023878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.544510, 1.845982, 5.204803>,  <2.793480, 1.761801, 5.506346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.544510, 1.845982, 5.204803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110548, 0.977155, 0.181514,
		0.774833, 0.029641, -0.631470,
		-0.622425, 0.210451, -0.753855,
		2.357782, 1.909117, 4.978647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.126294, 2.087564, 4.930833>,  <2.793480, 1.761801, 5.506346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.126294, 2.087564, 4.930833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743477, 2.191183, 4.982929>,  <2.513787, 2.253355, 5.014187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743477, 2.191183, 4.982929>,  <3.126294, 2.087564, 4.930833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.743477, 2.191183, 4.982929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270638, 0.959294, 0.080683,
		-0.104037, 0.112465, -0.988194,
		-0.957043, 0.259048, 0.130240,
		2.456364, 2.268898, 5.022001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.930051, 2.730383, 4.486968>,  <3.126294, 2.087564, 4.930833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.930051, 2.730383, 4.486968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.656044, 2.722878, 4.778282>,  <2.491640, 2.718374, 4.953071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.656044, 2.722878, 4.778282>,  <2.930051, 2.730383, 4.486968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.656044, 2.722878, 4.778282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028957, 0.998177, 0.052955,
		-0.727952, 0.057363, -0.683224,
		-0.685016, -0.018765, 0.728286,
		2.450539, 2.717248, 4.996768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.509065, 3.154546, 4.198531>,  <2.930051, 2.730383, 4.486968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.509065, 3.154546, 4.198531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.448326, 3.116444, 4.592052>,  <2.411883, 3.093582, 4.828165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.448326, 3.116444, 4.592052>,  <2.509065, 3.154546, 4.198531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.448326, 3.116444, 4.592052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027656, 0.995365, 0.092107,
		-0.988017, -0.013222, -0.153778,
		-0.151847, -0.095256, 0.983803,
		2.402772, 3.087867, 4.887194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.938055, 3.533643, 4.263576>,  <2.509065, 3.154546, 4.198531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.938055, 3.533643, 4.263576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.103767, 3.489918, 4.625000>,  <2.203195, 3.463683, 4.841855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.103767, 3.489918, 4.625000>,  <1.938055, 3.533643, 4.263576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.103767, 3.489918, 4.625000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169508, 0.966125, 0.194600,
		-0.894226, -0.233780, 0.381717,
		0.414280, -0.109312, 0.903561,
		2.228051, 3.457124, 4.896069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.421760, 3.773353, 4.839076>,  <1.938055, 3.533643, 4.263576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.421760, 3.773353, 4.839076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791649, 3.841551, 4.975204>,  <2.013582, 3.882469, 5.056881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791649, 3.841551, 4.975204>,  <1.421760, 3.773353, 4.839076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791649, 3.841551, 4.975204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233515, 0.960163, 0.153486,
		-0.300595, -0.221403, 0.927698,
		0.924723, 0.170494, 0.340322,
		2.069066, 3.892699, 5.077301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.014083, 5.080629, -0.188607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.294220, 5.023888, 0.091221>,  <2.462302, 4.989843, 0.259118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.294220, 5.023888, 0.091221>,  <2.014083, 5.080629, -0.188607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.294220, 5.023888, 0.091221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322841, -0.937034, 0.133192,
		0.636628, -0.319130, -0.702040,
		0.700342, -0.141854, 0.699570,
		2.504323, 4.981331, 0.301092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.458916, 4.394432, -0.331896>,  <2.014083, 5.080629, -0.188607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.458916, 4.394432, -0.331896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.474945, 4.505566, 0.052021>,  <2.484562, 4.572246, 0.282371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.474945, 4.505566, 0.052021>,  <2.458916, 4.394432, -0.331896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.474945, 4.505566, 0.052021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074722, -0.957041, 0.280158,
		0.996399, -0.082944, -0.017591,
		0.040073, 0.277834, 0.959793,
		2.486967, 4.588916, 0.339959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024573, 4.067023, 0.062653>,  <2.458916, 4.394432, -0.331896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024573, 4.067023, 0.062653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.715912, 4.170532, 0.295063>,  <2.530715, 4.232637, 0.434509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.715912, 4.170532, 0.295063>,  <3.024573, 4.067023, 0.062653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.715912, 4.170532, 0.295063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088582, -0.948317, 0.304709,
		0.629846, 0.183661, 0.754694,
		-0.771652, 0.258772, 0.581024,
		2.484416, 4.248164, 0.469370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.140365, 3.782229, 0.733713>,  <3.024573, 4.067023, 0.062653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.140365, 3.782229, 0.733713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.775177, 3.791531, 0.570766>,  <2.556064, 3.797112, 0.472999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.775177, 3.791531, 0.570766>,  <3.140365, 3.782229, 0.733713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.775177, 3.791531, 0.570766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001373, -0.998194, -0.060057,
		-0.408026, -0.055389, 0.911289,
		-0.912969, 0.023253, -0.407365,
		2.501286, 3.798506, 0.448557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.786966, 3.263991, 1.080479>,  <3.140365, 3.782229, 0.733713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.786966, 3.263991, 1.080479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.577209, 3.331902, 0.746727>,  <2.451356, 3.372648, 0.546476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.577209, 3.331902, 0.746727>,  <2.786966, 3.263991, 1.080479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577209, 3.331902, 0.746727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153336, -0.982729, -0.103592,
		-0.837557, 0.073618, 0.541367,
		-0.524391, 0.169776, -0.834380,
		2.419892, 3.382834, 0.496413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.060503, 3.024274, 1.113683>,  <2.786966, 3.263991, 1.080479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.060503, 3.024274, 1.113683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.172928, 3.028927, 0.729836>,  <2.240383, 3.031718, 0.499527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.172928, 3.028927, 0.729836>,  <2.060503, 3.024274, 1.113683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.172928, 3.028927, 0.729836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231721, -0.969518, -0.079621,
		-0.931294, 0.244743, -0.269800,
		0.281062, 0.011632, -0.959619,
		2.257246, 3.032416, 0.441950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.430662, 2.779504, 0.717652>,  <2.060503, 3.024274, 1.113683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.430662, 2.779504, 0.717652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759125, 2.738686, 0.493050>,  <1.956202, 2.714194, 0.358288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.759125, 2.738686, 0.493050>,  <1.430662, 2.779504, 0.717652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.759125, 2.738686, 0.493050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276117, -0.932103, -0.234400,
		-0.499461, 0.347521, -0.793579,
		0.821156, -0.102047, -0.561505,
		2.005472, 2.708071, 0.324598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.119510, 2.504022, 0.190477>,  <1.430662, 2.779504, 0.717652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.119510, 2.504022, 0.190477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.510056, 2.418121, 0.180721>,  <1.744383, 2.366581, 0.174868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.510056, 2.418121, 0.180721>,  <1.119510, 2.504022, 0.190477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.510056, 2.418121, 0.180721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214707, -0.950800, -0.223340,
		0.024774, 0.223298, -0.974435,
		0.976364, -0.214751, -0.024389,
		1.802965, 2.353696, 0.173405>
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
