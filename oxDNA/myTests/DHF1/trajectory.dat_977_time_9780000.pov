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
	<3.787782, 0.266402, 0.947119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.461311, 0.432119, 1.108225>,  <3.265429, 0.531549, 1.204888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.461311, 0.432119, 1.108225>,  <3.787782, 0.266402, 0.947119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.461311, 0.432119, 1.108225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307692, -0.278368, 0.909855,
		0.489062, 0.866530, 0.099723,
		-0.816177, 0.414291, 0.402763,
		3.216458, 0.556406, 1.229054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896390, 0.831932, 1.375176>,  <3.787782, 0.266402, 0.947119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896390, 0.831932, 1.375176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.544113, 0.692518, 1.503492>,  <3.332747, 0.608870, 1.580482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.544113, 0.692518, 1.503492>,  <3.896390, 0.831932, 1.375176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.544113, 0.692518, 1.503492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376859, -0.105246, 0.920272,
		-0.286985, 0.931369, 0.224037,
		-0.880691, -0.348534, 0.320790,
		3.279906, 0.587958, 1.599730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.458290, 1.288562, 1.913683>,  <3.896390, 0.831932, 1.375176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.458290, 1.288562, 1.913683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.381050, 0.897688, 1.949055>,  <3.334706, 0.663163, 1.970278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.381050, 0.897688, 1.949055>,  <3.458290, 1.288562, 1.913683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.381050, 0.897688, 1.949055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269359, 0.033868, 0.962444,
		-0.943482, 0.209667, 0.256674,
		-0.193100, -0.977186, 0.088429,
		3.323120, 0.604532, 1.975583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.961123, 1.141500, 2.449873>,  <3.458290, 1.288562, 1.913683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.961123, 1.141500, 2.449873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.153908, 0.796925, 2.385824>,  <3.269578, 0.590181, 2.347395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.153908, 0.796925, 2.385824>,  <2.961123, 1.141500, 2.449873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.153908, 0.796925, 2.385824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181406, -0.080683, 0.980093,
		-0.857208, -0.501414, 0.117384,
		0.481961, -0.861438, -0.160122,
		3.298496, 0.538494, 2.337788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.716130, 0.718575, 2.947117>,  <2.961123, 1.141500, 2.449873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.716130, 0.718575, 2.947117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.059723, 0.548588, 2.832886>,  <3.265878, 0.446596, 2.764347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.059723, 0.548588, 2.832886>,  <2.716130, 0.718575, 2.947117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.059723, 0.548588, 2.832886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219985, -0.197331, 0.955336,
		-0.462340, -0.883438, -0.076017,
		0.858980, -0.424968, -0.285577,
		3.317417, 0.421098, 2.747213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.799236, 0.021875, 3.265651>,  <2.716130, 0.718575, 2.947117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.799236, 0.021875, 3.265651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.171982, 0.106544, 3.147787>,  <3.395629, 0.157346, 3.077068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.171982, 0.106544, 3.147787>,  <2.799236, 0.021875, 3.265651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.171982, 0.106544, 3.147787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348992, -0.300970, 0.887480,
		0.099171, -0.929845, -0.354335,
		0.931863, 0.211673, -0.294661,
		3.451541, 0.170046, 3.059389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.119739, -0.556735, 3.499648>,  <2.799236, 0.021875, 3.265651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.119739, -0.556735, 3.499648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.381485, -0.255211, 3.475733>,  <3.538532, -0.074296, 3.461384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.381485, -0.255211, 3.475733>,  <3.119739, -0.556735, 3.499648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.381485, -0.255211, 3.475733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304163, -0.189999, 0.933480,
		0.692309, -0.629022, -0.353610,
		0.654365, 0.753812, -0.059787,
		3.577795, -0.029067, 3.457797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.668144, -0.779202, 3.859025>,  <3.119739, -0.556735, 3.499648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.668144, -0.779202, 3.859025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.741081, -0.385912, 3.860723>,  <3.784844, -0.149937, 3.861742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.741081, -0.385912, 3.860723>,  <3.668144, -0.779202, 3.859025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.741081, -0.385912, 3.860723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485940, -0.093872, 0.868936,
		0.854759, -0.156382, -0.494905,
		0.182344, 0.983226, 0.004246,
		3.795784, -0.090944, 3.861997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.892546, -0.529373, 4.766778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.989815, -0.148293, 4.839691>,  <4.048176, 0.080356, 4.883439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.989815, -0.148293, 4.839691>,  <3.892546, -0.529373, 4.766778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.989815, -0.148293, 4.839691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066994, 0.203971, -0.976682,
		-0.967667, 0.225289, 0.113425,
		0.243171, 0.952702, 0.182283,
		4.062766, 0.137518, 4.894376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.377207, 0.047699, 4.613035>,  <3.892546, -0.529373, 4.766778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.377207, 0.047699, 4.613035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.757103, 0.165714, 4.571182>,  <3.985040, 0.236523, 4.546071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.757103, 0.165714, 4.571182>,  <3.377207, 0.047699, 4.613035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.757103, 0.165714, 4.571182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165275, 0.188734, -0.968020,
		-0.265855, 0.936660, 0.228011,
		0.949740, 0.295038, -0.104631,
		4.042025, 0.254226, 4.539793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.325413, 0.762646, 4.330837>,  <3.377207, 0.047699, 4.613035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.325413, 0.762646, 4.330837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.657730, 0.558336, 4.242390>,  <3.857121, 0.435751, 4.189322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.657730, 0.558336, 4.242390>,  <3.325413, 0.762646, 4.330837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.657730, 0.558336, 4.242390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198429, 0.099362, -0.975066,
		0.520009, 0.853954, -0.018803,
		0.830793, -0.510774, -0.221118,
		3.906968, 0.405104, 4.176054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.976140, 1.143509, 3.924756>,  <3.325413, 0.762646, 4.330837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.976140, 1.143509, 3.924756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955322, 0.748734, 3.863773>,  <3.942832, 0.511868, 3.827184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955322, 0.748734, 3.863773>,  <3.976140, 1.143509, 3.924756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955322, 0.748734, 3.863773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271834, 0.160898, -0.948798,
		0.960936, -0.007936, -0.276657,
		-0.052043, -0.986939, -0.152455,
		3.939709, 0.452652, 3.818037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.526436, 0.902655, 3.425438>,  <3.976140, 1.143509, 3.924756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.526436, 0.902655, 3.425438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.224533, 0.640692, 3.410286>,  <4.043391, 0.483514, 3.401195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.224533, 0.640692, 3.410286>,  <4.526436, 0.902655, 3.425438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.224533, 0.640692, 3.410286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001001, 0.058895, -0.998264,
		0.656003, -0.753409, -0.045107,
		-0.754758, -0.654909, -0.037881,
		3.998106, 0.444219, 3.398922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.651292, 0.501270, 2.770395>,  <4.526436, 0.902655, 3.425438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.651292, 0.501270, 2.770395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.275612, 0.404764, 2.868126>,  <4.050204, 0.346861, 2.926765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.275612, 0.404764, 2.868126>,  <4.651292, 0.501270, 2.770395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.275612, 0.404764, 2.868126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222685, -0.113665, -0.968242,
		0.261374, -0.963780, 0.053028,
		-0.939199, -0.241264, 0.244328,
		3.993852, 0.332385, 2.941424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.503767, -0.094278, 2.466795>,  <4.651292, 0.501270, 2.770395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.503767, -0.094278, 2.466795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.145584, 0.068693, 2.538525>,  <3.930674, 0.166476, 2.581563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.145584, 0.068693, 2.538525>,  <4.503767, -0.094278, 2.466795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.145584, 0.068693, 2.538525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298193, -0.249920, -0.921206,
		-0.330510, -0.878374, 0.345285,
		-0.895457, 0.407430, 0.179324,
		3.876947, 0.190922, 2.592322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.051479, -0.547667, 2.272777>,  <4.503767, -0.094278, 2.466795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.051479, -0.547667, 2.272777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.848991, -0.202707, 2.271599>,  <3.727499, 0.004269, 2.270892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.848991, -0.202707, 2.271599>,  <4.051479, -0.547667, 2.272777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.848991, -0.202707, 2.271599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295431, -0.176622, -0.938896,
		-0.810224, -0.474416, 0.344189,
		-0.506219, 0.862400, -0.002946,
		3.697126, 0.056013, 2.270715>
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
