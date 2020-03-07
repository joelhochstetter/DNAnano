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
	<1.600032, 3.534890, 0.259901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.582396, 3.225937, 0.513351>,  <1.571814, 3.040565, 0.665422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.582396, 3.225937, 0.513351>,  <1.600032, 3.534890, 0.259901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.582396, 3.225937, 0.513351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984712, 0.140586, 0.102853,
		-0.168520, -0.619404, -0.766772,
		-0.044090, -0.772383, 0.633626,
		1.569169, 2.994222, 0.703439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.984540, 3.089476, -0.085539>,  <1.600032, 3.534890, 0.259901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.984540, 3.089476, -0.085539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.023138, 3.061892, 0.311638>,  <1.046297, 3.045341, 0.549944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.023138, 3.061892, 0.311638>,  <0.984540, 3.089476, -0.085539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.023138, 3.061892, 0.311638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962184, 0.248854, 0.110790,
		-0.254738, -0.966083, -0.042345,
		0.096494, -0.068966, 0.992941,
		1.052087, 3.041203, 0.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.352392, 3.335345, 0.197381>,  <0.984540, 3.089476, -0.085539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.352392, 3.335345, 0.197381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537483, 3.223660, 0.533934>,  <0.648538, 3.156648, 0.735865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537483, 3.223660, 0.533934>,  <0.352392, 3.335345, 0.197381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.537483, 3.223660, 0.533934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842623, 0.156366, 0.515302,
		-0.275444, -0.947411, -0.162919,
		0.462727, -0.279216, 0.841381,
		0.676302, 3.139895, 0.786348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.005874, 2.846252, 0.501699>,  <0.352392, 3.335345, 0.197381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.005874, 2.846252, 0.501699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.179462, 3.000269, 0.820963>,  <0.290664, 3.092679, 1.012521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.179462, 3.000269, 0.820963>,  <-0.005874, 2.846252, 0.501699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.179462, 3.000269, 0.820963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882169, 0.114818, 0.456721,
		0.084216, -0.915727, 0.392876,
		0.463341, 0.385046, 0.798157,
		0.318465, 3.115782, 1.060410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.216834, 2.465870, 1.044246>,  <-0.005874, 2.846252, 0.501699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.216834, 2.465870, 1.044246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.092447, 2.800800, 1.224106>,  <-0.017815, 3.001759, 1.332021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.092447, 2.800800, 1.224106>,  <-0.216834, 2.465870, 1.044246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.092447, 2.800800, 1.224106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842434, 0.023809, 0.538272,
		0.440004, -0.546184, 0.712797,
		0.310967, 0.837327, 0.449648,
		0.000843, 3.051998, 1.359000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.218577, 2.308668, 1.778530>,  <-0.216834, 2.465870, 1.044246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.218577, 2.308668, 1.778530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.261337, 2.700619, 1.711103>,  <-0.286993, 2.935789, 1.670647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.261337, 2.700619, 1.711103>,  <-0.218577, 2.308668, 1.778530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.261337, 2.700619, 1.711103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819310, 0.009237, 0.573277,
		0.563297, 0.199393, 0.801835,
		-0.106901, 0.979876, -0.168568,
		-0.293407, 2.994582, 1.660533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.568925, 2.547550, 2.355685>,  <-0.218577, 2.308668, 1.778530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.568925, 2.547550, 2.355685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.623337, 2.850687, 2.100445>,  <-0.655984, 3.032569, 1.947301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.623337, 2.850687, 2.100445>,  <-0.568925, 2.547550, 2.355685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.623337, 2.850687, 2.100445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855381, 0.235105, 0.461574,
		0.499820, 0.608605, 0.616262,
		-0.136029, 0.757843, -0.638099,
		-0.664146, 3.078040, 1.909015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.942900, 3.099709, 2.744969>,  <-0.568925, 2.547550, 2.355685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.942900, 3.099709, 2.744969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.996616, 3.187710, 2.358484>,  <-1.028846, 3.240510, 2.126593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.996616, 3.187710, 2.358484>,  <-0.942900, 3.099709, 2.744969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.996616, 3.187710, 2.358484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977522, 0.130512, 0.165579,
		0.162531, 0.966729, 0.197531,
		-0.134290, 0.220002, -0.966212,
		-1.036903, 3.253711, 2.068621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.608687, 3.037641, 2.163701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.705551, 3.336220, 1.915773>,  <2.763670, 3.515367, 1.767017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.705551, 3.336220, 1.915773>,  <2.608687, 3.037641, 2.163701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.705551, 3.336220, 1.915773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931976, -0.356587, -0.065318,
		-0.269776, -0.561838, -0.782022,
		0.242161, 0.746447, -0.619818,
		2.778200, 3.560154, 1.729828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.124001, 2.796414, 1.667567>,  <2.608687, 3.037641, 2.163701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.124001, 2.796414, 1.667567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147011, 3.194429, 1.635100>,  <3.160817, 3.433239, 1.615620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147011, 3.194429, 1.635100>,  <3.124001, 2.796414, 1.667567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.147011, 3.194429, 1.635100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990586, -0.067004, -0.119376,
		-0.124223, -0.073535, -0.989526,
		0.057524, 0.995039, -0.081166,
		3.164268, 3.492941, 1.610751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.444878, 3.073037, 0.973520>,  <3.124001, 2.796414, 1.667567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.444878, 3.073037, 0.973520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.498787, 3.293193, 1.303103>,  <3.531132, 3.425287, 1.500854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.498787, 3.293193, 1.303103>,  <3.444878, 3.073037, 0.973520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.498787, 3.293193, 1.303103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986154, 0.006586, -0.165700,
		-0.096627, 0.834882, -0.541882,
		0.134771, 0.550390, 0.823959,
		3.539218, 3.458310, 1.550291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.898304, 3.537850, 0.829135>,  <3.444878, 3.073037, 0.973520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.898304, 3.537850, 0.829135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.902885, 3.464608, 1.222345>,  <3.905634, 3.420663, 1.458272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.902885, 3.464608, 1.222345>,  <3.898304, 3.537850, 0.829135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.902885, 3.464608, 1.222345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997656, 0.068414, 0.001119,
		-0.067458, 0.980710, 0.183458,
		0.011453, -0.183104, 0.983027,
		3.906322, 3.409677, 1.517253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.209387, 4.086150, 1.066533>,  <3.898304, 3.537850, 0.829135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.209387, 4.086150, 1.066533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246719, 3.792503, 1.335565>,  <4.269119, 3.616315, 1.496984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246719, 3.792503, 1.335565>,  <4.209387, 4.086150, 1.066533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246719, 3.792503, 1.335565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983668, -0.036433, -0.176265,
		0.153903, 0.678046, 0.718726,
		0.093330, -0.734116, 0.672579,
		4.274718, 3.572268, 1.537338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.655847, 4.305686, 1.619853>,  <4.209387, 4.086150, 1.066533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.655847, 4.305686, 1.619853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.674965, 3.906336, 1.607424>,  <4.686436, 3.666726, 1.599966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.674965, 3.906336, 1.607424>,  <4.655847, 4.305686, 1.619853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.674965, 3.906336, 1.607424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992193, 0.051040, -0.113788,
		0.115189, -0.025392, 0.993019,
		0.047794, -0.998374, -0.031073,
		4.689303, 3.606824, 1.598102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.324789, 4.182076, 1.887454>,  <4.655847, 4.305686, 1.619853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.324789, 4.182076, 1.887454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.224304, 3.838735, 1.708515>,  <5.164013, 3.632730, 1.601152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.224304, 3.838735, 1.708515>,  <5.324789, 4.182076, 1.887454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.224304, 3.838735, 1.708515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958416, -0.155936, -0.239002,
		0.135391, -0.488785, 0.861834,
		-0.251212, -0.858355, -0.447347,
		5.148941, 3.581228, 1.574311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.980066, 3.686174, 2.011580>,  <5.324789, 4.182076, 1.887454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.980066, 3.686174, 2.011580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.776634, 3.532225, 1.703497>,  <5.654575, 3.439855, 1.518647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.776634, 3.532225, 1.703497>,  <5.980066, 3.686174, 2.011580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.776634, 3.532225, 1.703497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855934, -0.128962, -0.500745,
		0.093397, -0.913915, 0.395015,
		-0.508581, -0.384875, -0.770206,
		5.624060, 3.416762, 1.472435>
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
