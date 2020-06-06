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
	<4.432044, 14.733037, 15.124865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.156028, 14.893602, 14.883963>,  <3.990418, 14.989942, 14.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.156028, 14.893602, 14.883963>,  <4.432044, 14.733037, 15.124865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.156028, 14.893602, 14.883963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706009, 0.190105, -0.682210,
		-0.159358, -0.895950, -0.414583,
		-0.690041, 0.401415, -0.602254,
		3.949016, 15.014027, 14.703286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.518019, 14.467837, 14.472158>,  <4.432044, 14.733037, 15.124865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.518019, 14.467837, 14.472158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345184, 14.826544, 14.433978>,  <4.241483, 15.041768, 14.411070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345184, 14.826544, 14.433978>,  <4.518019, 14.467837, 14.472158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345184, 14.826544, 14.433978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682083, 0.255726, -0.685104,
		-0.589969, -0.361130, -0.722165,
		-0.432088, 0.896766, -0.095450,
		4.215558, 15.095573, 14.405343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941432, 14.683729, 14.031678>,  <4.518019, 14.467837, 14.472158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941432, 14.683729, 14.031678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.675981, 14.982390, 14.050032>,  <4.516710, 15.161587, 14.061044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.675981, 14.982390, 14.050032>,  <4.941432, 14.683729, 14.031678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.675981, 14.982390, 14.050032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501908, 0.489901, -0.712801,
		-0.554693, -0.450007, -0.699864,
		-0.663629, 0.746653, 0.045883,
		4.476892, 15.206387, 14.063796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.184357, 15.346582, 14.063143>,  <4.941432, 14.683729, 14.031678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.184357, 15.346582, 14.063143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.513929, 15.539295, 14.182490>,  <5.711673, 15.654922, 14.254099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.513929, 15.539295, 14.182490>,  <5.184357, 15.346582, 14.063143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.513929, 15.539295, 14.182490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184575, 0.269652, -0.945103,
		-0.535789, 0.833771, 0.133250,
		0.823931, 0.481781, 0.298369,
		5.761109, 15.683829, 14.272001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.195596, 16.046087, 14.007612>,  <5.184357, 15.346582, 14.063143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.195596, 16.046087, 14.007612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.578064, 15.933013, 13.977083>,  <5.807546, 15.865169, 13.958766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.578064, 15.933013, 13.977083>,  <5.195596, 16.046087, 14.007612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.578064, 15.933013, 13.977083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070717, 0.475886, -0.876659,
		0.284141, 0.832839, 0.475019,
		0.956171, -0.282687, -0.076323,
		5.864916, 15.848207, 13.954186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.623658, 16.742016, 13.802402>,  <5.195596, 16.046087, 14.007612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.623658, 16.742016, 13.802402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.835966, 16.410038, 13.733723>,  <5.963350, 16.210852, 13.692515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.835966, 16.410038, 13.733723>,  <5.623658, 16.742016, 13.802402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.835966, 16.410038, 13.733723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264960, 0.354929, -0.896561,
		0.805035, 0.430373, 0.408286,
		0.530768, -0.829943, -0.171699,
		5.995196, 16.161055, 13.682213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.182144, 16.951502, 13.543698>,  <5.623658, 16.742016, 13.802402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.182144, 16.951502, 13.543698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.163860, 16.581635, 13.392491>,  <6.152890, 16.359715, 13.301767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.163860, 16.581635, 13.392491>,  <6.182144, 16.951502, 13.543698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.163860, 16.581635, 13.392491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331887, 0.342862, -0.878804,
		0.942211, -0.165627, 0.291214,
		-0.045708, -0.924669, -0.378018,
		6.150148, 16.304234, 13.279086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.817450, 16.941925, 13.226143>,  <6.182144, 16.951502, 13.543698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.817450, 16.941925, 13.226143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.613420, 16.639709, 13.061711>,  <6.491002, 16.458380, 12.963053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.613420, 16.639709, 13.061711>,  <6.817450, 16.941925, 13.226143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.613420, 16.639709, 13.061711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339537, 0.262244, -0.903296,
		0.790277, -0.600325, 0.122769,
		-0.510075, -0.755539, -0.411078,
		6.460397, 16.413048, 12.938388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.319876, 16.491962, 12.858156>,  <6.817450, 16.941925, 13.226143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.319876, 16.491962, 12.858156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.953030, 16.437622, 12.708253>,  <6.732922, 16.405018, 12.618311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.953030, 16.437622, 12.708253>,  <7.319876, 16.491962, 12.858156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.953030, 16.437622, 12.708253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353172, 0.159032, -0.921943,
		0.184853, -0.977881, -0.097869,
		-0.917114, -0.135860, -0.374758,
		6.677895, 16.396866, 12.595826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.527174, 16.271822, 12.296815>,  <7.319876, 16.491962, 12.858156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.527174, 16.271822, 12.296815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.141834, 16.349819, 12.223128>,  <6.910631, 16.396618, 12.178916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.141834, 16.349819, 12.223128>,  <7.527174, 16.271822, 12.296815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.141834, 16.349819, 12.223128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219884, 0.180644, -0.958655,
		-0.153655, -0.964025, -0.216899,
		-0.963349, 0.194995, -0.184217,
		6.852829, 16.408318, 12.167863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.368453, 15.889657, 11.694154>,  <7.527174, 16.271822, 12.296815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.368453, 15.889657, 11.694154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.079513, 16.166056, 11.704991>,  <6.906149, 16.331896, 11.711494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.079513, 16.166056, 11.704991>,  <7.368453, 15.889657, 11.694154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.079513, 16.166056, 11.704991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071224, 0.113314, -0.991003,
		-0.687851, -0.713920, -0.131068,
		-0.722349, 0.690997, 0.027095,
		6.862808, 16.373354, 11.713120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.121714, 15.902413, 11.030464>,  <7.368453, 15.889657, 11.694154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.121714, 15.902413, 11.030464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.954085, 16.243471, 11.155285>,  <6.853508, 16.448107, 11.230177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.954085, 16.243471, 11.155285>,  <7.121714, 15.902413, 11.030464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.954085, 16.243471, 11.155285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106886, 0.387625, -0.915599,
		-0.901640, -0.350348, -0.253579,
		-0.419072, 0.852645, 0.312051,
		6.828364, 16.499264, 11.248900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.505603, 16.100525, 10.641945>,  <7.121714, 15.902413, 11.030464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.505603, 16.100525, 10.641945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.684736, 16.433760, 10.771814>,  <6.792215, 16.633701, 10.849736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.684736, 16.433760, 10.771814>,  <6.505603, 16.100525, 10.641945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.684736, 16.433760, 10.771814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033819, 0.378644, -0.924925,
		-0.893479, 0.403229, 0.197743,
		0.447831, 0.833088, 0.324673,
		6.819085, 16.683685, 10.869216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.127038, 16.598190, 10.194419>,  <6.505603, 16.100525, 10.641945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.127038, 16.598190, 10.194419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.402479, 16.830536, 10.368052>,  <6.567744, 16.969942, 10.472231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.402479, 16.830536, 10.368052>,  <6.127038, 16.598190, 10.194419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.402479, 16.830536, 10.368052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001250, 0.597666, -0.801744,
		-0.725138, 0.552625, 0.410828,
		0.688602, 0.580862, 0.434082,
		6.609060, 17.004795, 10.498276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.903617, 17.301689, 10.034228>,  <6.127038, 16.598190, 10.194419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.903617, 17.301689, 10.034228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.297180, 17.294144, 10.105298>,  <6.533318, 17.289616, 10.147940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.297180, 17.294144, 10.105298>,  <5.903617, 17.301689, 10.034228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.297180, 17.294144, 10.105298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153713, 0.596305, -0.787904,
		-0.091084, 0.802536, 0.589610,
		0.983908, -0.018866, 0.177674,
		6.592353, 17.288485, 10.158601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.083702, 17.931602, 9.882603>,  <5.903617, 17.301689, 10.034228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.083702, 17.931602, 9.882603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.413140, 17.705744, 9.861185>,  <6.610803, 17.570229, 9.848334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.413140, 17.705744, 9.861185>,  <6.083702, 17.931602, 9.882603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.413140, 17.705744, 9.861185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329075, 0.552604, -0.765727,
		0.461953, 0.613029, 0.640933,
		0.823595, -0.564645, -0.053545,
		6.660219, 17.536350, 9.845121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.661911, 18.377005, 9.972519>,  <6.083702, 17.931602, 9.882603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.661911, 18.377005, 9.972519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784708, 18.051126, 9.775733>,  <6.858386, 17.855600, 9.657661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784708, 18.051126, 9.775733>,  <6.661911, 18.377005, 9.972519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.784708, 18.051126, 9.775733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412702, 0.579753, -0.702541,
		0.857575, 0.012639, 0.514205,
		0.306991, -0.814694, -0.491965,
		6.876805, 17.806719, 9.628143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.177332, 18.666313, 9.527560>,  <6.661911, 18.377005, 9.972519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.177332, 18.666313, 9.527560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165464, 18.288158, 9.397718>,  <7.158343, 18.061266, 9.319814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165464, 18.288158, 9.397718>,  <7.177332, 18.666313, 9.527560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.165464, 18.288158, 9.397718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528922, 0.260707, -0.807634,
		0.848151, -0.195653, 0.492300,
		-0.029670, -0.945385, -0.324604,
		7.156563, 18.004543, 9.300337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.819203, 18.570032, 9.399476>,  <7.177332, 18.666313, 9.527560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.819203, 18.570032, 9.399476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.615222, 18.313084, 9.170633>,  <7.492833, 18.158915, 9.033328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.615222, 18.313084, 9.170633>,  <7.819203, 18.570032, 9.399476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.615222, 18.313084, 9.170633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612130, 0.196276, -0.766011,
		0.604355, -0.740834, 0.293122,
		-0.509954, -0.642371, -0.572107,
		7.462236, 18.120373, 8.999002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.316270, 18.362242, 8.953536>,  <7.819203, 18.570032, 9.399476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.316270, 18.362242, 8.953536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.973480, 18.251049, 8.779951>,  <7.767807, 18.184334, 8.675800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.973480, 18.251049, 8.779951>,  <8.316270, 18.362242, 8.953536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.973480, 18.251049, 8.779951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419351, 0.113343, -0.900721,
		0.299570, -0.953876, 0.019440,
		-0.856973, -0.277981, -0.433963,
		7.716388, 18.167656, 8.649762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.489529, 17.837599, 8.372478>,  <8.316270, 18.362242, 8.953536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.489529, 17.837599, 8.372478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.134307, 18.006317, 8.299324>,  <7.921174, 18.107548, 8.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.134307, 18.006317, 8.299324>,  <8.489529, 17.837599, 8.372478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.134307, 18.006317, 8.299324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241529, 0.089566, -0.966251,
		-0.391182, -0.902256, -0.181416,
		-0.888055, 0.421797, -0.182884,
		7.867890, 18.132856, 8.244459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.130591, 17.475655, 7.838613>,  <8.489529, 17.837599, 8.372478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.130591, 17.475655, 7.838613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.945376, 17.830191, 7.838593>,  <7.834248, 18.042912, 7.838582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.945376, 17.830191, 7.838593>,  <8.130591, 17.475655, 7.838613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.945376, 17.830191, 7.838593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091083, 0.047529, -0.994708,
		-0.881646, -0.460591, -0.102738,
		-0.463037, 0.886339, -0.000048,
		7.806465, 18.096092, 7.838579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.572783, 17.482098, 7.252503>,  <8.130591, 17.475655, 7.838613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.572783, 17.482098, 7.252503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.676422, 17.857441, 7.344028>,  <7.738605, 18.082647, 7.398942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.676422, 17.857441, 7.344028>,  <7.572783, 17.482098, 7.252503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.676422, 17.857441, 7.344028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268855, 0.157468, -0.950222,
		-0.927677, 0.307718, -0.211482,
		0.259098, 0.938357, 0.228811,
		7.754151, 18.138948, 7.412671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259881, 17.842154, 6.742217>,  <7.572783, 17.482098, 7.252503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259881, 17.842154, 6.742217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.516078, 18.111111, 6.890626>,  <7.669796, 18.272484, 6.979672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.516078, 18.111111, 6.890626>,  <7.259881, 17.842154, 6.742217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.516078, 18.111111, 6.890626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141893, 0.371195, -0.917650,
		-0.754741, 0.640394, 0.142340,
		0.640493, 0.672391, 0.371024,
		7.708226, 18.312828, 7.001934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.217216, 18.375727, 6.304782>,  <7.259881, 17.842154, 6.742217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.217216, 18.375727, 6.304782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.566350, 18.450081, 6.485274>,  <7.775830, 18.494694, 6.593569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.566350, 18.450081, 6.485274>,  <7.217216, 18.375727, 6.304782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.566350, 18.450081, 6.485274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307191, 0.509182, -0.803970,
		-0.379204, 0.840345, 0.387330,
		0.872834, 0.185884, 0.451230,
		7.828200, 18.505846, 6.620643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.443000, 19.054186, 6.176672>,  <7.217216, 18.375727, 6.304782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.443000, 19.054186, 6.176672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.754630, 18.804665, 6.201684>,  <7.941608, 18.654951, 6.216692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.754630, 18.804665, 6.201684>,  <7.443000, 19.054186, 6.176672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.754630, 18.804665, 6.201684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419747, 0.444924, -0.791110,
		0.465675, 0.642582, 0.608469,
		0.779076, -0.623803, 0.062532,
		7.988353, 18.617523, 6.220444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.925582, 19.480412, 6.101897>,  <7.443000, 19.054186, 6.176672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.925582, 19.480412, 6.101897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.037739, 19.106646, 6.014031>,  <8.105033, 18.882387, 5.961312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.037739, 19.106646, 6.014031>,  <7.925582, 19.480412, 6.101897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.037739, 19.106646, 6.014031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505330, 0.338260, -0.793865,
		0.816102, 0.111591, 0.567033,
		0.280393, -0.934413, -0.219664,
		8.121857, 18.826323, 5.948132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.731304, 19.378567, 6.053482>,  <7.925582, 19.480412, 6.101897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.731304, 19.378567, 6.053482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512689, 19.143034, 5.815299>,  <8.381519, 19.001715, 5.672389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512689, 19.143034, 5.815299>,  <8.731304, 19.378567, 6.053482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.512689, 19.143034, 5.815299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494818, 0.346579, -0.796893,
		0.675611, -0.730176, 0.101946,
		-0.546540, -0.588834, -0.595457,
		8.348726, 18.966383, 5.636662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.338295, 19.424358, 6.554307>,  <8.731304, 19.378567, 6.053482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.338295, 19.424358, 6.554307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247847, 19.633644, 6.882969>,  <9.193578, 19.759216, 7.080166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247847, 19.633644, 6.882969>,  <9.338295, 19.424358, 6.554307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.247847, 19.633644, 6.882969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855234, 0.510425, -0.089668,
		-0.466309, 0.682431, -0.562889,
		-0.226121, 0.523215, 0.821654,
		9.180011, 19.790609, 7.129465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.320617, 20.100145, 6.335405>,  <9.338295, 19.424358, 6.554307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.320617, 20.100145, 6.335405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375305, 20.097904, 6.731642>,  <9.408118, 20.096560, 6.969385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.375305, 20.097904, 6.731642>,  <9.320617, 20.100145, 6.335405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375305, 20.097904, 6.731642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763066, 0.638267, -0.101709,
		-0.631694, 0.769795, 0.091538,
		0.136721, -0.005601, 0.990594,
		9.416322, 20.096224, 7.028821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.682248, 20.743448, 6.510291>,  <9.320617, 20.100145, 6.335405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.682248, 20.743448, 6.510291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.687684, 20.564503, 6.867990>,  <9.690946, 20.457134, 7.082609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.687684, 20.564503, 6.867990>,  <9.682248, 20.743448, 6.510291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.687684, 20.564503, 6.867990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586369, 0.727978, 0.355275,
		-0.809930, 0.519530, 0.272215,
		0.013590, -0.447366, 0.894248,
		9.691761, 20.430292, 7.136264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.335300, 21.143227, 7.097523>,  <9.682248, 20.743448, 6.510291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.335300, 21.143227, 7.097523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652196, 20.911835, 7.175210>,  <9.842333, 20.773001, 7.221822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652196, 20.911835, 7.175210>,  <9.335300, 21.143227, 7.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.652196, 20.911835, 7.175210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526937, 0.809053, 0.260329,
		-0.307727, -0.103903, 0.945785,
		0.792239, -0.578479, 0.194217,
		9.889868, 20.738291, 7.233475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.742583, 21.270359, 7.803370>,  <9.335300, 21.143227, 7.097523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.742583, 21.270359, 7.803370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.021832, 21.121714, 7.558576>,  <10.189383, 21.032526, 7.411699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.021832, 21.121714, 7.558576>,  <9.742583, 21.270359, 7.803370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.021832, 21.121714, 7.558576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582066, 0.792308, 0.182883,
		0.416919, -0.483891, 0.769433,
		0.698124, -0.371614, -0.611986,
		10.231270, 21.010229, 7.374980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.349111, 21.115616, 8.158345>,  <9.742583, 21.270359, 7.803370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.349111, 21.115616, 8.158345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391877, 21.241804, 7.781188>,  <10.417538, 21.317516, 7.554893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.391877, 21.241804, 7.781188>,  <10.349111, 21.115616, 8.158345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.391877, 21.241804, 7.781188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461706, 0.824127, 0.328088,
		0.880566, -0.470418, -0.057541,
		0.106917, 0.315470, -0.942893,
		10.423952, 21.336445, 7.498320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.736320, 20.671030, 8.219116>,  <10.349111, 21.115616, 8.158345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.736320, 20.671030, 8.219116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.557476, 20.481579, 7.915598>,  <9.450170, 20.367908, 7.733488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.557476, 20.481579, 7.915598>,  <9.736320, 20.671030, 8.219116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.557476, 20.481579, 7.915598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699711, 0.713656, -0.033158,
		0.557223, 0.516111, -0.650486,
		-0.447110, -0.473629, -0.758794,
		9.423343, 20.339491, 7.687960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.193033, 20.823997, 8.878767>,  <9.736320, 20.671030, 8.219116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.193033, 20.823997, 8.878767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.939133, 21.051249, 9.088269>,  <9.786793, 21.187599, 9.213970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.939133, 21.051249, 9.088269>,  <10.193033, 20.823997, 8.878767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.939133, 21.051249, 9.088269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177298, -0.552646, 0.814339,
		0.752101, 0.609764, 0.250064,
		-0.634751, 0.568129, 0.523756,
		9.748707, 21.221687, 9.245396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.501161, 21.090315, 9.555011>,  <10.193033, 20.823997, 8.878767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.501161, 21.090315, 9.555011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.103657, 21.061012, 9.588661>,  <9.865154, 21.043430, 9.608851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.103657, 21.061012, 9.588661>,  <10.501161, 21.090315, 9.555011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.103657, 21.061012, 9.588661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111478, -0.679122, 0.725511,
		0.003984, 0.730361, 0.683050,
		-0.993759, -0.073254, 0.084125,
		9.805529, 21.039036, 9.613898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.312023, 21.201920, 10.197579>,  <10.501161, 21.090315, 9.555011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.312023, 21.201920, 10.197579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.025623, 20.976423, 10.032877>,  <9.853784, 20.841125, 9.934055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.025623, 20.976423, 10.032877>,  <10.312023, 21.201920, 10.197579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.025623, 20.976423, 10.032877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115314, -0.677228, 0.726681,
		-0.688510, 0.472823, 0.549902,
		-0.716001, -0.563738, -0.411755,
		9.810823, 20.807302, 9.909350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.768188, 21.016460, 10.768968>,  <10.312023, 21.201920, 10.197579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.768188, 21.016460, 10.768968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.732244, 20.736572, 10.485472>,  <9.710676, 20.568640, 10.315374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.732244, 20.736572, 10.485472>,  <9.768188, 21.016460, 10.768968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.732244, 20.736572, 10.485472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159239, -0.712559, 0.683302,
		-0.983142, -0.051456, 0.175456,
		-0.089863, -0.699722, -0.708740,
		9.705285, 20.526655, 10.272850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.298700, 20.534555, 10.965687>,  <9.768188, 21.016460, 10.768968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.298700, 20.534555, 10.965687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507501, 20.327793, 10.694298>,  <9.632781, 20.203735, 10.531465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507501, 20.327793, 10.694298>,  <9.298700, 20.534555, 10.965687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.507501, 20.327793, 10.694298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063187, -0.816697, 0.573597,
		-0.850604, -0.256545, -0.458975,
		0.521997, -0.516905, -0.678475,
		9.664101, 20.172722, 10.490756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.935966, 19.860125, 10.907882>,  <9.298700, 20.534555, 10.965687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.935966, 19.860125, 10.907882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.301353, 19.798161, 10.757375>,  <9.520586, 19.760983, 10.667070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.301353, 19.798161, 10.757375>,  <8.935966, 19.860125, 10.907882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.301353, 19.798161, 10.757375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030013, -0.896527, 0.441971,
		-0.405800, -0.415020, -0.814300,
		0.913469, -0.154912, -0.376267,
		9.575394, 19.751686, 10.644495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.952648, 19.234827, 10.635905>,  <8.935966, 19.860125, 10.907882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.952648, 19.234827, 10.635905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.348526, 19.281744, 10.668765>,  <9.586053, 19.309895, 10.688481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.348526, 19.281744, 10.668765>,  <8.952648, 19.234827, 10.635905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.348526, 19.281744, 10.668765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076736, -0.918750, 0.387311,
		0.120904, -0.377015, -0.918282,
		0.989694, 0.117293, 0.082150,
		9.645434, 19.316933, 10.693410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.151539, 18.527197, 10.505242>,  <8.952648, 19.234827, 10.635905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.151539, 18.527197, 10.505242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.492301, 18.701815, 10.620958>,  <9.696758, 18.806585, 10.690388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.492301, 18.701815, 10.620958>,  <9.151539, 18.527197, 10.505242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.492301, 18.701815, 10.620958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289381, -0.852806, 0.434720,
		0.436483, -0.286625, -0.852836,
		0.851905, 0.436542, 0.289291,
		9.747872, 18.832777, 10.707746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.800710, 18.147568, 10.305345>,  <9.151539, 18.527197, 10.505242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.800710, 18.147568, 10.305345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.859045, 18.355865, 10.641809>,  <9.894046, 18.480844, 10.843689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.859045, 18.355865, 10.641809>,  <9.800710, 18.147568, 10.305345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.859045, 18.355865, 10.641809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177927, -0.850196, 0.495489,
		0.973177, 0.077405, -0.216645,
		0.145837, 0.520745, 0.841163,
		9.902796, 18.512089, 10.894158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.331211, 17.684599, 10.672205>,  <9.800710, 18.147568, 10.305345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.331211, 17.684599, 10.672205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.242235, 17.938049, 10.968593>,  <10.188849, 18.090120, 11.146425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.242235, 17.938049, 10.968593>,  <10.331211, 17.684599, 10.672205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.242235, 17.938049, 10.968593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177762, -0.720913, 0.669840,
		0.958604, 0.280716, 0.047726,
		-0.222441, 0.633627, 0.740970,
		10.175503, 18.128138, 11.190884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847205, 17.715080, 11.173397>,  <10.331211, 17.684599, 10.672205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847205, 17.715080, 11.173397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.511520, 17.801720, 11.372920>,  <10.310109, 17.853703, 11.492634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.511520, 17.801720, 11.372920>,  <10.847205, 17.715080, 11.173397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.511520, 17.801720, 11.372920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124088, -0.816783, 0.563443,
		0.529456, 0.534745, 0.658577,
		-0.839213, 0.216597, 0.498806,
		10.259756, 17.866699, 11.522562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.924204, 17.383953, 11.839877>,  <10.847205, 17.715080, 11.173397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.924204, 17.383953, 11.839877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.533799, 17.467094, 11.865793>,  <10.299556, 17.516979, 11.881343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.533799, 17.467094, 11.865793>,  <10.924204, 17.383953, 11.839877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.533799, 17.467094, 11.865793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120376, -0.763155, 0.634905,
		0.181411, 0.611876, 0.769869,
		-0.976012, 0.207852, 0.064789,
		10.240995, 17.529449, 11.885230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.675677, 17.394953, 12.610711>,  <10.924204, 17.383953, 11.839877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.675677, 17.394953, 12.610711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.334223, 17.326611, 12.413891>,  <10.129350, 17.285606, 12.295798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.334223, 17.326611, 12.413891>,  <10.675677, 17.394953, 12.610711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.334223, 17.326611, 12.413891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266379, -0.668591, 0.694283,
		-0.447601, 0.723737, 0.525222,
		-0.853637, -0.170854, -0.492050,
		10.078132, 17.275354, 12.266275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.189630, 17.303625, 13.077474>,  <10.675677, 17.394953, 12.610711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.189630, 17.303625, 13.077474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.027502, 17.133493, 12.753792>,  <9.930225, 17.031414, 12.559583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.027502, 17.133493, 12.753792>,  <10.189630, 17.303625, 13.077474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.027502, 17.133493, 12.753792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322323, -0.761838, 0.561881,
		-0.855468, 0.488565, 0.171693,
		-0.405318, -0.425331, -0.809204,
		9.905907, 17.005894, 12.511030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.614858, 17.047808, 13.310212>,  <10.189630, 17.303625, 13.077474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.614858, 17.047808, 13.310212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.644056, 16.827179, 12.977841>,  <9.661575, 16.694801, 12.778419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.644056, 16.827179, 12.977841>,  <9.614858, 17.047808, 13.310212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.644056, 16.827179, 12.977841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489075, -0.745893, 0.452162,
		-0.869182, 0.373379, -0.324208,
		0.072997, -0.551573, -0.830926,
		9.665956, 16.661707, 12.728563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.814822, 16.915678, 13.006207>,  <9.614858, 17.047808, 13.310212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.814822, 16.915678, 13.006207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066601, 16.638229, 12.866100>,  <9.217669, 16.471760, 12.782037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066601, 16.638229, 12.866100>,  <8.814822, 16.915678, 13.006207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066601, 16.638229, 12.866100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640501, -0.718355, 0.271522,
		-0.439948, 0.053436, -0.896432,
		0.629447, -0.693621, -0.350265,
		9.255435, 16.430143, 12.761021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.402836, 16.471258, 12.649688>,  <8.814822, 16.915678, 13.006207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.402836, 16.471258, 12.649688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.728627, 16.249853, 12.719254>,  <8.924102, 16.117010, 12.760995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.728627, 16.249853, 12.719254>,  <8.402836, 16.471258, 12.649688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.728627, 16.249853, 12.719254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577308, -0.803021, 0.147894,
		0.057798, -0.220860, -0.973591,
		0.814478, -0.553514, 0.173917,
		8.972971, 16.083799, 12.771430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.348186, 15.898041, 12.242591>,  <8.402836, 16.471258, 12.649688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.348186, 15.898041, 12.242591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.622966, 15.790301, 12.512569>,  <8.787833, 15.725657, 12.674557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.622966, 15.790301, 12.512569>,  <8.348186, 15.898041, 12.242591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.622966, 15.790301, 12.512569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500557, -0.848693, 0.170773,
		0.526824, -0.455161, -0.717834,
		0.686949, -0.269350, 0.674945,
		8.829051, 15.709496, 12.715053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.653792, 15.308866, 12.070265>,  <8.348186, 15.898041, 12.242591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.653792, 15.308866, 12.070265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.698763, 15.331773, 12.467068>,  <8.725745, 15.345517, 12.705150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.698763, 15.331773, 12.467068>,  <8.653792, 15.308866, 12.070265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.698763, 15.331773, 12.467068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495935, -0.861870, 0.105961,
		0.861051, -0.503885, -0.068493,
		0.112425, 0.057270, 0.992009,
		8.732491, 15.348953, 12.764670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.594295, 14.639275, 12.130196>,  <8.653792, 15.308866, 12.070265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.594295, 14.639275, 12.130196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.558899, 14.779548, 12.503118>,  <8.537662, 14.863711, 12.726871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.558899, 14.779548, 12.503118>,  <8.594295, 14.639275, 12.130196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.558899, 14.779548, 12.503118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562539, -0.790016, 0.243770,
		0.822022, -0.502887, 0.267180,
		-0.088488, 0.350684, 0.932304,
		8.532352, 14.884753, 12.782808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.886625, 14.130330, 12.654039>,  <8.594295, 14.639275, 12.130196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.886625, 14.130330, 12.654039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.597401, 14.339869, 12.834158>,  <8.423866, 14.465591, 12.942229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.597401, 14.339869, 12.834158>,  <8.886625, 14.130330, 12.654039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.597401, 14.339869, 12.834158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431777, -0.851564, 0.297335,
		0.539214, 0.020564, 0.841918,
		-0.723061, 0.523847, 0.450296,
		8.380483, 14.497023, 12.969247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.533194, 13.720642, 12.738750>,  <8.886625, 14.130330, 12.654039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.533194, 13.720642, 12.738750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797061, 13.959376, 12.921452>,  <9.955381, 14.102617, 13.031073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797061, 13.959376, 12.921452>,  <9.533194, 13.720642, 12.738750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797061, 13.959376, 12.921452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637037, -0.766508, 0.081547,
		0.398776, 0.237177, -0.885847,
		0.659667, 0.596836, 0.456755,
		9.994961, 14.138427, 13.058478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.243051, 13.716736, 12.375821>,  <9.533194, 13.720642, 12.738750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.243051, 13.716736, 12.375821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.217650, 13.742250, 12.774198>,  <10.202410, 13.757559, 13.013224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.217650, 13.742250, 12.774198>,  <10.243051, 13.716736, 12.375821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.217650, 13.742250, 12.774198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628545, -0.772600, 0.089558,
		0.775177, 0.631681, 0.008969,
		-0.063502, 0.063786, 0.995941,
		10.198600, 13.761386, 13.072980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.923878, 13.852719, 12.630297>,  <10.243051, 13.716736, 12.375821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.923878, 13.852719, 12.630297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.685887, 13.638896, 12.870380>,  <10.543093, 13.510602, 13.014431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.685887, 13.638896, 12.870380>,  <10.923878, 13.852719, 12.630297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.685887, 13.638896, 12.870380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670302, -0.742080, 0.003548,
		0.443507, 0.404433, 0.799835,
		-0.594976, -0.534557, 0.600210,
		10.507395, 13.478529, 13.050444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308897, 13.246284, 12.750999>,  <10.923878, 13.852719, 12.630297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308897, 13.246284, 12.750999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.965535, 13.144158, 12.928968>,  <10.759518, 13.082883, 13.035749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.965535, 13.144158, 12.928968>,  <11.308897, 13.246284, 12.750999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.965535, 13.144158, 12.928968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449379, -0.792558, 0.412203,
		0.247386, 0.553775, 0.795068,
		-0.858405, -0.255314, 0.444922,
		10.708014, 13.067564, 13.062445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.267744, 13.251554, 13.434209>,  <11.308897, 13.246284, 12.750999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.267744, 13.251554, 13.434209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.031901, 12.957817, 13.299684>,  <10.890396, 12.781575, 13.218968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.031901, 12.957817, 13.299684>,  <11.267744, 13.251554, 13.434209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.031901, 12.957817, 13.299684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665898, -0.677606, 0.312137,
		-0.457104, -0.039913, 0.888517,
		-0.589606, -0.734341, -0.336314,
		10.855020, 12.737514, 13.198790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.248344, 12.713274, 13.928985>,  <11.267744, 13.251554, 13.434209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.248344, 12.713274, 13.928985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182412, 12.563972, 13.563797>,  <11.142853, 12.474390, 13.344685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.182412, 12.563972, 13.563797>,  <11.248344, 12.713274, 13.928985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.182412, 12.563972, 13.563797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703573, -0.693202, 0.156383,
		-0.691242, -0.616563, 0.376874,
		-0.164830, -0.373257, -0.912968,
		11.132963, 12.451995, 13.289907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.865055, 12.111906, 13.929099>,  <11.248344, 12.713274, 13.928985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.865055, 12.111906, 13.929099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091271, 12.090794, 13.599887>,  <11.227001, 12.078126, 13.402360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091271, 12.090794, 13.599887>,  <10.865055, 12.111906, 13.929099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.091271, 12.090794, 13.599887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484857, -0.785993, 0.383574,
		-0.667141, -0.615978, -0.418919,
		0.565541, -0.052782, -0.823030,
		11.260934, 12.074959, 13.352978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.862799, 11.374142, 13.723011>,  <10.865055, 12.111906, 13.929099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.862799, 11.374142, 13.723011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.193955, 11.543952, 13.576383>,  <11.392650, 11.645838, 13.488405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.193955, 11.543952, 13.576383>,  <10.862799, 11.374142, 13.723011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.193955, 11.543952, 13.576383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543776, -0.767703, 0.339027,
		-0.137492, -0.480010, -0.866422,
		0.827891, 0.424526, -0.366571,
		11.442323, 11.671309, 13.466412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.428907, 11.667370, 14.011346>,  <10.862799, 11.374142, 13.723011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.428907, 11.667370, 14.011346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804741, 11.605114, 14.133301>,  <12.030241, 11.567760, 14.206474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804741, 11.605114, 14.133301>,  <11.428907, 11.667370, 14.011346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.804741, 11.605114, 14.133301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101214, 0.724529, 0.681772,
		-0.327010, -0.671441, 0.665004,
		0.939585, -0.155639, 0.304888,
		12.086617, 11.558422, 14.224768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.443744, 11.682136, 14.882136>,  <11.428907, 11.667370, 14.011346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.443744, 11.682136, 14.882136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808949, 11.741878, 14.730293>,  <12.028071, 11.777722, 14.639188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808949, 11.741878, 14.730293>,  <11.443744, 11.682136, 14.882136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808949, 11.741878, 14.730293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187505, 0.672787, 0.715681,
		0.362286, -0.724604, 0.586258,
		0.913012, 0.149355, -0.379608,
		12.082852, 11.786684, 14.616411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.939379, 11.591400, 15.458054>,  <11.443744, 11.682136, 14.882136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.939379, 11.591400, 15.458054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.153142, 11.806546, 15.197251>,  <12.281400, 11.935634, 15.040771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.153142, 11.806546, 15.197251>,  <11.939379, 11.591400, 15.458054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.153142, 11.806546, 15.197251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203840, 0.666613, 0.716991,
		0.820280, -0.516070, 0.246604,
		0.534406, 0.537866, -0.652005,
		12.313464, 11.967906, 15.001650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703819, 11.776367, 15.729521>,  <11.939379, 11.591400, 15.458054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703819, 11.776367, 15.729521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.592903, 12.048823, 15.458476>,  <12.526353, 12.212297, 15.295849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.592903, 12.048823, 15.458476>,  <12.703819, 11.776367, 15.729521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.592903, 12.048823, 15.458476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378117, 0.725721, 0.574767,
		0.883253, -0.096839, -0.458787,
		-0.277292, 0.681140, -0.677611,
		12.509716, 12.253165, 15.255193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167203, 12.315215, 15.679160>,  <12.703819, 11.776367, 15.729521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.167203, 12.315215, 15.679160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.864276, 12.509734, 15.504810>,  <12.682520, 12.626446, 15.400201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.864276, 12.509734, 15.504810>,  <13.167203, 12.315215, 15.679160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864276, 12.509734, 15.504810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205669, 0.811088, 0.547573,
		0.619815, 0.325041, -0.714267,
		-0.757317, 0.486297, -0.435874,
		12.637081, 12.655623, 15.374048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377845, 12.990176, 15.760882>,  <13.167203, 12.315215, 15.679160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377845, 12.990176, 15.760882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999171, 13.043571, 15.643600>,  <12.771967, 13.075609, 15.573232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999171, 13.043571, 15.643600>,  <13.377845, 12.990176, 15.760882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.999171, 13.043571, 15.643600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074472, 0.794790, 0.602299,
		0.313436, 0.592022, -0.742474,
		-0.946685, 0.133489, -0.293205,
		12.715166, 13.083618, 15.555639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.207371, 13.726665, 15.482728>,  <13.377845, 12.990176, 15.760882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.207371, 13.726665, 15.482728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.859882, 13.574079, 15.609096>,  <12.651389, 13.482527, 15.684916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.859882, 13.574079, 15.609096>,  <13.207371, 13.726665, 15.482728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.859882, 13.574079, 15.609096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095311, 0.754663, 0.649153,
		-0.486043, 0.533823, -0.691950,
		-0.868722, -0.381467, 0.315920,
		12.599266, 13.459639, 15.703872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874559, 14.329623, 15.711820>,  <13.207371, 13.726665, 15.482728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874559, 14.329623, 15.711820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.625821, 14.047980, 15.848958>,  <12.476579, 13.878995, 15.931241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.625821, 14.047980, 15.848958>,  <12.874559, 14.329623, 15.711820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.625821, 14.047980, 15.848958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302676, 0.619847, 0.724001,
		-0.722286, 0.346445, -0.598565,
		-0.621845, -0.704107, 0.342846,
		12.439268, 13.836748, 15.951812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.143190, 14.589485, 15.877532>,  <12.874559, 14.329623, 15.711820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.143190, 14.589485, 15.877532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207571, 14.274334, 16.115303>,  <12.246200, 14.085243, 16.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207571, 14.274334, 16.115303>,  <12.143190, 14.589485, 15.877532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207571, 14.274334, 16.115303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100409, 0.586083, 0.804005,
		-0.981842, -0.189091, 0.015220,
		0.160951, -0.787878, 0.594427,
		12.255857, 14.037971, 16.293631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712176, 14.697009, 16.477684>,  <12.143190, 14.589485, 15.877532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712176, 14.697009, 16.477684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949552, 14.403891, 16.610855>,  <12.091977, 14.228020, 16.690758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949552, 14.403891, 16.610855>,  <11.712176, 14.697009, 16.477684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.949552, 14.403891, 16.610855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053240, 0.376990, 0.924686,
		-0.803117, -0.566469, 0.184706,
		0.593439, -0.732797, 0.332926,
		12.127584, 14.184052, 16.710733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.377210, 14.428005, 16.961388>,  <11.712176, 14.697009, 16.477684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.377210, 14.428005, 16.961388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743491, 14.299134, 17.057463>,  <11.963260, 14.221811, 17.115107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743491, 14.299134, 17.057463>,  <11.377210, 14.428005, 16.961388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743491, 14.299134, 17.057463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082912, 0.433362, 0.897398,
		-0.393210, -0.841664, 0.370119,
		0.915703, -0.322178, 0.240186,
		12.018202, 14.202480, 17.129519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333563, 14.107796, 17.557804>,  <11.377210, 14.428005, 16.961388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333563, 14.107796, 17.557804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727106, 14.179207, 17.562702>,  <11.963232, 14.222054, 17.565641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.727106, 14.179207, 17.562702>,  <11.333563, 14.107796, 17.557804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.727106, 14.179207, 17.562702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089977, 0.434400, 0.896215,
		0.154680, -0.882851, 0.443451,
		0.983859, 0.178527, 0.012243,
		12.022264, 14.232765, 17.566376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.621929, 13.821348, 18.197981>,  <11.333563, 14.107796, 17.557804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.621929, 13.821348, 18.197981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.864389, 14.108713, 18.061474>,  <12.009866, 14.281133, 17.979568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.864389, 14.108713, 18.061474>,  <11.621929, 13.821348, 18.197981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864389, 14.108713, 18.061474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086732, 0.486228, 0.869517,
		0.790608, -0.497458, 0.357036,
		0.606149, 0.718414, -0.341270,
		12.046234, 14.324237, 17.959093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.029840, 13.976751, 18.800890>,  <11.621929, 13.821348, 18.197981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.029840, 13.976751, 18.800890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101927, 14.303267, 18.581366>,  <12.145180, 14.499176, 18.449650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.101927, 14.303267, 18.581366>,  <12.029840, 13.976751, 18.800890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101927, 14.303267, 18.581366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018716, 0.555001, 0.831639,
		0.983448, -0.160149, 0.084745,
		0.180219, 0.816288, -0.548812,
		12.155993, 14.548153, 18.416721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697672, 14.201476, 19.017757>,  <12.029840, 13.976751, 18.800890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697672, 14.201476, 19.017757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489453, 14.501217, 18.854048>,  <12.364522, 14.681061, 18.755821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489453, 14.501217, 18.854048>,  <12.697672, 14.201476, 19.017757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489453, 14.501217, 18.854048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108246, 0.533387, 0.838917,
		0.846944, 0.392392, -0.358767,
		-0.520546, 0.749351, -0.409274,
		12.333289, 14.726022, 18.731266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986483, 14.785148, 19.333187>,  <12.697672, 14.201476, 19.017757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986483, 14.785148, 19.333187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636488, 14.915963, 19.190388>,  <12.426492, 14.994452, 19.104708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636488, 14.915963, 19.190388>,  <12.986483, 14.785148, 19.333187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636488, 14.915963, 19.190388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104968, 0.591686, 0.799306,
		0.472633, 0.736854, -0.483388,
		-0.874986, 0.327038, -0.356996,
		12.373992, 15.014074, 19.083288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.028332, 15.541160, 19.554525>,  <12.986483, 14.785148, 19.333187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.028332, 15.541160, 19.554525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658804, 15.422392, 19.457865>,  <12.437087, 15.351131, 19.399868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658804, 15.422392, 19.457865>,  <13.028332, 15.541160, 19.554525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658804, 15.422392, 19.457865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354697, 0.426368, 0.832106,
		-0.144037, 0.854429, -0.499204,
		-0.923820, -0.296920, -0.241651,
		12.381658, 15.333316, 19.385370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627008, 16.034275, 19.911047>,  <13.028332, 15.541160, 19.554525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627008, 16.034275, 19.911047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314142, 15.805959, 19.811115>,  <12.126423, 15.668969, 19.751156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314142, 15.805959, 19.811115>,  <12.627008, 16.034275, 19.911047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314142, 15.805959, 19.811115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557735, 0.462654, 0.689118,
		-0.277758, 0.678343, -0.680222,
		-0.782165, -0.570792, -0.249830,
		12.079493, 15.634722, 19.736166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082551, 16.381056, 19.852098>,  <12.627008, 16.034275, 19.911047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082551, 16.381056, 19.852098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927687, 16.022526, 19.938543>,  <11.834768, 15.807407, 19.990410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927687, 16.022526, 19.938543>,  <12.082551, 16.381056, 19.852098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927687, 16.022526, 19.938543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537475, 0.409851, 0.736982,
		-0.749151, 0.169175, -0.640432,
		-0.387161, -0.896327, 0.216113,
		11.811539, 15.753628, 20.003378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474653, 16.533199, 19.862665>,  <12.082551, 16.381056, 19.852098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474653, 16.533199, 19.862665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.461428, 16.186701, 20.062075>,  <11.453492, 15.978802, 20.181721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.461428, 16.186701, 20.062075>,  <11.474653, 16.533199, 19.862665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461428, 16.186701, 20.062075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523663, 0.439864, 0.729586,
		-0.851284, -0.236935, -0.468164,
		-0.033064, -0.866245, 0.498524,
		11.451509, 15.926827, 20.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.701731, 16.468172, 20.172054>,  <11.474653, 16.533199, 19.862665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.701731, 16.468172, 20.172054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.953342, 16.238729, 20.381929>,  <11.104310, 16.101065, 20.507854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.953342, 16.238729, 20.381929>,  <10.701731, 16.468172, 20.172054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.953342, 16.238729, 20.381929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482478, 0.241146, 0.842059,
		-0.609537, -0.782830, -0.125065,
		0.629030, -0.573608, 0.524686,
		11.142052, 16.066647, 20.539335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.257333, 16.183905, 20.634359>,  <10.701731, 16.468172, 20.172054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.257333, 16.183905, 20.634359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.626149, 16.149948, 20.785427>,  <10.847439, 16.129574, 20.876068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.626149, 16.149948, 20.785427>,  <10.257333, 16.183905, 20.634359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.626149, 16.149948, 20.785427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342684, 0.274744, 0.898378,
		-0.180027, -0.957763, 0.224234,
		0.922040, -0.084891, 0.377671,
		10.902761, 16.124481, 20.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.994318, 16.147572, 21.303797>,  <10.257333, 16.183905, 20.634359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.994318, 16.147572, 21.303797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.379233, 16.253345, 21.278259>,  <10.610183, 16.316809, 21.262938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.379233, 16.253345, 21.278259>,  <9.994318, 16.147572, 21.303797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.379233, 16.253345, 21.278259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050644, 0.404730, 0.913033,
		0.267274, -0.875368, 0.402859,
		0.962289, 0.264432, -0.063842,
		10.667920, 16.332676, 21.259106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.325850, 15.850174, 21.931593>,  <9.994318, 16.147572, 21.303797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.325850, 15.850174, 21.931593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.545664, 16.158463, 21.802597>,  <10.677552, 16.343435, 21.725201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.545664, 16.158463, 21.802597>,  <10.325850, 15.850174, 21.931593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.545664, 16.158463, 21.802597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086313, 0.436304, 0.895650,
		0.831000, -0.464356, 0.306287,
		0.549535, 0.770722, -0.322489,
		10.710525, 16.389679, 21.705851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715405, 16.059969, 22.571501>,  <10.325850, 15.850174, 21.931593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715405, 16.059969, 22.571501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767220, 16.372046, 22.326710>,  <10.798310, 16.559292, 22.179834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767220, 16.372046, 22.326710>,  <10.715405, 16.059969, 22.571501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767220, 16.372046, 22.326710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030964, 0.613695, 0.788936,
		0.991091, -0.121149, 0.055340,
		0.129541, 0.780194, -0.611978,
		10.806083, 16.606104, 22.143116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.283527, 16.465765, 22.824097>,  <10.715405, 16.059969, 22.571501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.283527, 16.465765, 22.824097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.078558, 16.721384, 22.594648>,  <10.955576, 16.874756, 22.456980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.078558, 16.721384, 22.594648>,  <11.283527, 16.465765, 22.824097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.078558, 16.721384, 22.594648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096326, 0.620995, 0.777873,
		0.853313, 0.453856, -0.256656,
		-0.512424, 0.639047, -0.573621,
		10.924830, 16.913097, 22.422562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618630, 17.151268, 22.874300>,  <11.283527, 16.465765, 22.824097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618630, 17.151268, 22.874300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233399, 17.205269, 22.781126>,  <11.002261, 17.237669, 22.725222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233399, 17.205269, 22.781126>,  <11.618630, 17.151268, 22.874300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.233399, 17.205269, 22.781126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088200, 0.659244, 0.746738,
		0.254371, 0.739711, -0.622996,
		-0.963076, 0.135001, -0.232935,
		10.944476, 17.245770, 22.711246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476786, 17.819479, 22.731543>,  <11.618630, 17.151268, 22.874300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476786, 17.819479, 22.731543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132837, 17.657001, 22.855240>,  <10.926468, 17.559515, 22.929459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132837, 17.657001, 22.855240>,  <11.476786, 17.819479, 22.731543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132837, 17.657001, 22.855240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029327, 0.644051, 0.764421,
		-0.509668, 0.648234, -0.565713,
		-0.859871, -0.406192, 0.309241,
		10.874876, 17.535145, 22.948011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.982809, 18.303488, 22.909126>,  <11.476786, 17.819479, 22.731543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.982809, 18.303488, 22.909126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.860813, 17.976851, 23.105150>,  <10.787616, 17.780869, 23.222765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.860813, 17.976851, 23.105150>,  <10.982809, 18.303488, 22.909126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.860813, 17.976851, 23.105150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115475, 0.542490, 0.832088,
		-0.945329, 0.197188, -0.259750,
		-0.304989, -0.816592, 0.490061,
		10.769317, 17.731873, 23.252169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.353854, 18.477049, 23.206272>,  <10.982809, 18.303488, 22.909126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.353854, 18.477049, 23.206272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495658, 18.165522, 23.413258>,  <10.580740, 17.978605, 23.537449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.495658, 18.165522, 23.413258>,  <10.353854, 18.477049, 23.206272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.495658, 18.165522, 23.413258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251965, 0.453368, 0.854969,
		-0.900465, -0.433477, -0.035511,
		0.354509, -0.778817, 0.517462,
		10.602011, 17.931877, 23.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905525, 18.331779, 23.747849>,  <10.353854, 18.477049, 23.206272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905525, 18.331779, 23.747849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244877, 18.153814, 23.862602>,  <10.448488, 18.047035, 23.931456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244877, 18.153814, 23.862602>,  <9.905525, 18.331779, 23.747849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.244877, 18.153814, 23.862602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054660, 0.465404, 0.883409,
		-0.526559, -0.765147, 0.370520,
		0.848379, -0.444915, 0.286886,
		10.499391, 18.020340, 23.948668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.788204, 18.093922, 24.410337>,  <9.905525, 18.331779, 23.747849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.788204, 18.093922, 24.410337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186764, 18.122299, 24.391771>,  <10.425900, 18.139326, 24.380632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186764, 18.122299, 24.391771>,  <9.788204, 18.093922, 24.410337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.186764, 18.122299, 24.391771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008499, 0.461136, 0.887289,
		0.084349, -0.884489, 0.458873,
		0.996400, 0.070942, -0.046413,
		10.485683, 18.143581, 24.377848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062126, 17.944952, 25.100540>,  <9.788204, 18.093922, 24.410337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062126, 17.944952, 25.100540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.387025, 18.103666, 24.929512>,  <10.581964, 18.198895, 24.826895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.387025, 18.103666, 24.929512>,  <10.062126, 17.944952, 25.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.387025, 18.103666, 24.929512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259752, 0.410277, 0.874186,
		0.522288, -0.821117, 0.230180,
		0.812246, 0.396787, -0.427570,
		10.630699, 18.222702, 24.801241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.558034, 17.767633, 25.488188>,  <10.062126, 17.944952, 25.100540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.558034, 17.767633, 25.488188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.745915, 18.056179, 25.284615>,  <10.858644, 18.229307, 25.162470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.745915, 18.056179, 25.284615>,  <10.558034, 17.767633, 25.488188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.745915, 18.056179, 25.284615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611529, 0.149919, 0.776889,
		0.636719, -0.676135, -0.370717,
		0.469705, 0.721364, -0.508933,
		10.886827, 18.272589, 25.131935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.288074, 17.626724, 25.670942>,  <10.558034, 17.767633, 25.488188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.288074, 17.626724, 25.670942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215052, 18.005510, 25.565165>,  <11.171238, 18.232782, 25.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215052, 18.005510, 25.565165>,  <11.288074, 17.626724, 25.670942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.215052, 18.005510, 25.565165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438087, 0.319135, 0.840377,
		0.880201, 0.037566, -0.473113,
		-0.182556, 0.946965, -0.264446,
		11.160285, 18.289600, 25.485830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849305, 18.026962, 25.836180>,  <11.288074, 17.626724, 25.670942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849305, 18.026962, 25.836180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579520, 18.321688, 25.817402>,  <11.417649, 18.498524, 25.806135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579520, 18.321688, 25.817402>,  <11.849305, 18.026962, 25.836180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579520, 18.321688, 25.817402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500209, 0.502797, 0.704972,
		0.543038, 0.451995, -0.707679,
		-0.674463, 0.736814, -0.046946,
		11.377181, 18.542732, 25.803318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185406, 18.705650, 26.058472>,  <11.849305, 18.026962, 25.836180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185406, 18.705650, 26.058472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795278, 18.746220, 26.136921>,  <11.561201, 18.770561, 26.183990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795278, 18.746220, 26.136921>,  <12.185406, 18.705650, 26.058472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795278, 18.746220, 26.136921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214707, 0.642804, 0.735325,
		-0.051489, 0.759287, -0.648716,
		-0.975320, 0.101423, 0.196122,
		11.502682, 18.776646, 26.195757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058437, 19.346380, 26.137299>,  <12.185406, 18.705650, 26.058472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058437, 19.346380, 26.137299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748758, 19.196045, 26.341009>,  <11.562951, 19.105843, 26.463236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748758, 19.196045, 26.341009>,  <12.058437, 19.346380, 26.137299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748758, 19.196045, 26.341009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185848, 0.634164, 0.750531,
		-0.605044, 0.675707, -0.421119,
		-0.774198, -0.375840, 0.509276,
		11.516499, 19.083292, 26.493792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.842215, 19.891287, 26.522892>,  <12.058437, 19.346380, 26.137299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.842215, 19.891287, 26.522892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.658749, 19.594879, 26.719061>,  <11.548669, 19.417034, 26.836761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.658749, 19.594879, 26.719061>,  <11.842215, 19.891287, 26.522892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.658749, 19.594879, 26.719061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225515, 0.436760, 0.870852,
		-0.859517, 0.510028, -0.033215,
		-0.458666, -0.741021, 0.490422,
		11.521149, 19.372572, 26.866188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.362519, 20.219105, 27.049334>,  <11.842215, 19.891287, 26.522892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.362519, 20.219105, 27.049334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.467081, 19.845299, 27.145958>,  <11.529819, 19.621016, 27.203932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.467081, 19.845299, 27.145958>,  <11.362519, 20.219105, 27.049334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.467081, 19.845299, 27.145958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091321, 0.273083, 0.957646,
		-0.960900, -0.228274, 0.156726,
		0.261405, -0.934514, 0.241559,
		11.545503, 19.564945, 27.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.920530, 20.117014, 27.668451>,  <11.362519, 20.219105, 27.049334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.920530, 20.117014, 27.668451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.231065, 19.865944, 27.691521>,  <11.417385, 19.715302, 27.705362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.231065, 19.865944, 27.691521>,  <10.920530, 20.117014, 27.668451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231065, 19.865944, 27.691521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126258, 0.244494, 0.961396,
		-0.617546, -0.739084, 0.269058,
		0.776335, -0.627676, 0.057671,
		11.463965, 19.677641, 27.708822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.936851, 19.453815, 28.097343>,  <10.920530, 20.117014, 27.668451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.936851, 19.453815, 28.097343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317626, 19.447807, 28.219711>,  <11.546091, 19.444202, 28.293133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317626, 19.447807, 28.219711>,  <10.936851, 19.453815, 28.097343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317626, 19.447807, 28.219711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300009, -0.246921, 0.921425,
		0.061700, -0.968919, -0.239559,
		0.951939, -0.015018, 0.305920,
		11.603208, 19.443302, 28.311487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.941690, 19.085827, 28.773577>,  <10.936851, 19.453815, 28.097343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.941690, 19.085827, 28.773577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.308107, 19.246250, 28.775440>,  <11.527957, 19.342505, 28.776558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.308107, 19.246250, 28.775440>,  <10.941690, 19.085827, 28.773577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.308107, 19.246250, 28.775440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100227, -0.240145, 0.965549,
		0.388359, -0.884016, -0.260180,
		0.916041, 0.401056, 0.004660,
		11.582920, 19.366568, 28.776838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.396985, 18.645580, 29.142578>,  <10.941690, 19.085827, 28.773577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.396985, 18.645580, 29.142578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501864, 19.029352, 29.184038>,  <11.564793, 19.259615, 29.208914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501864, 19.029352, 29.184038>,  <11.396985, 18.645580, 29.142578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.501864, 19.029352, 29.184038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047492, -0.120107, 0.991624,
		0.963844, -0.255081, -0.077057,
		0.262199, 0.959431, 0.103650,
		11.580524, 19.317181, 29.215134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870133, 18.658163, 29.663853>,  <11.396985, 18.645580, 29.142578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870133, 18.658163, 29.663853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.767180, 19.044237, 29.682512>,  <11.705409, 19.275881, 29.693708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.767180, 19.044237, 29.682512>,  <11.870133, 18.658163, 29.663853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.767180, 19.044237, 29.682512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153688, -0.088548, 0.984144,
		0.954009, 0.246132, 0.171128,
		-0.257382, 0.965183, 0.046648,
		11.689965, 19.333792, 29.696507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.271878, 19.040329, 30.275320>,  <11.870133, 18.658163, 29.663853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.271878, 19.040329, 30.275320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905515, 19.176243, 30.189852>,  <11.685697, 19.257792, 30.138571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905515, 19.176243, 30.189852>,  <12.271878, 19.040329, 30.275320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905515, 19.176243, 30.189852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232020, -0.013797, 0.972613,
		0.327531, 0.940402, 0.091473,
		-0.915909, 0.339785, -0.213673,
		11.630742, 19.278179, 30.125750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.928852, 18.811728, 30.629299>,  <12.271878, 19.040329, 30.275320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.928852, 18.811728, 30.629299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.304467, 18.788221, 30.764801>,  <13.529837, 18.774117, 30.846102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.304467, 18.788221, 30.764801>,  <12.928852, 18.811728, 30.629299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304467, 18.788221, 30.764801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340919, -0.286770, 0.895286,
		0.044533, -0.956195, -0.289322,
		0.939037, -0.058765, 0.338756,
		13.586179, 18.770592, 30.866428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991373, 18.225370, 30.964500>,  <12.928852, 18.811728, 30.629299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991373, 18.225370, 30.964500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314765, 18.406416, 31.114969>,  <13.508800, 18.515043, 31.205250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314765, 18.406416, 31.114969>,  <12.991373, 18.225370, 30.964500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314765, 18.406416, 31.114969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128960, -0.487396, 0.863605,
		0.574222, -0.746718, -0.335681,
		0.808479, 0.452612, 0.376171,
		13.557309, 18.542200, 31.227821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.486754, 17.528460, 30.993324>,  <12.991373, 18.225370, 30.964500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.486754, 17.528460, 30.993324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649406, 17.192686, 30.849100>,  <13.746998, 16.991222, 30.762566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649406, 17.192686, 30.849100>,  <13.486754, 17.528460, 30.993324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649406, 17.192686, 30.849100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378904, -0.514075, 0.769518,
		-0.831315, -0.176290, -0.527102,
		0.406629, -0.839434, -0.360561,
		13.771395, 16.940857, 30.740932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.753126, 17.235765, 30.308285>,  <13.486754, 17.528460, 30.993324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.753126, 17.235765, 30.308285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.626226, 16.887339, 30.158302>,  <13.550087, 16.678282, 30.068312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.626226, 16.887339, 30.158302>,  <13.753126, 17.235765, 30.308285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.626226, 16.887339, 30.158302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170876, -0.336405, 0.926085,
		-0.932821, 0.357871, -0.042120,
		-0.317249, -0.871068, -0.374957,
		13.531052, 16.626019, 30.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913653, 17.008789, 30.457981>,  <13.753126, 17.235765, 30.308285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913653, 17.008789, 30.457981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205956, 16.736160, 30.442698>,  <13.381336, 16.572584, 30.433527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205956, 16.736160, 30.442698>,  <12.913653, 17.008789, 30.457981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205956, 16.736160, 30.442698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325078, -0.396662, 0.858477,
		-0.600269, -0.614914, -0.511426,
		0.730753, -0.681571, -0.038209,
		13.425181, 16.531689, 30.431234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525417, 17.579145, 30.027945>,  <12.913653, 17.008789, 30.457981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525417, 17.579145, 30.027945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.510162, 17.857271, 29.740868>,  <12.501010, 18.024147, 29.568621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.510162, 17.857271, 29.740868>,  <12.525417, 17.579145, 30.027945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.510162, 17.857271, 29.740868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288850, -0.679885, -0.674034,
		-0.956615, -0.233011, -0.174913,
		-0.038136, 0.695314, -0.717693,
		12.498721, 18.065865, 29.525560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611254, 17.180553, 29.487305>,  <12.525417, 17.579145, 30.027945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611254, 17.180553, 29.487305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623807, 17.539797, 29.311842>,  <12.631339, 17.755342, 29.206564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623807, 17.539797, 29.311842>,  <12.611254, 17.180553, 29.487305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623807, 17.539797, 29.311842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197397, -0.435798, -0.878132,
		-0.979821, -0.059030, -0.190960,
		0.031384, 0.898107, -0.438657,
		12.633223, 17.809229, 29.180244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034045, 17.215332, 28.944025>,  <12.611254, 17.180553, 29.487305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034045, 17.215332, 28.944025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.325685, 17.467310, 28.837006>,  <12.500669, 17.618498, 28.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.325685, 17.467310, 28.837006>,  <12.034045, 17.215332, 28.944025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.325685, 17.467310, 28.837006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177086, -0.551245, -0.815334,
		-0.661102, 0.547080, -0.513467,
		0.729099, 0.629947, -0.267549,
		12.544415, 17.656294, 28.756741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045508, 17.343273, 28.148241>,  <12.034045, 17.215332, 28.944025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045508, 17.343273, 28.148241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400078, 17.486496, 28.265577>,  <12.612820, 17.572430, 28.335979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400078, 17.486496, 28.265577>,  <12.045508, 17.343273, 28.148241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400078, 17.486496, 28.265577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403591, -0.287560, -0.868576,
		-0.226646, 0.888316, -0.399408,
		0.886423, 0.358057, 0.293342,
		12.666005, 17.593912, 28.353580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352177, 17.707565, 27.534975>,  <12.045508, 17.343273, 28.148241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352177, 17.707565, 27.534975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.660168, 17.617682, 27.773853>,  <12.844962, 17.563751, 27.917179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.660168, 17.617682, 27.773853>,  <12.352177, 17.707565, 27.534975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660168, 17.617682, 27.773853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435357, -0.499224, -0.749160,
		0.466476, 0.836829, -0.286562,
		0.769977, -0.224708, 0.597195,
		12.891161, 17.550268, 27.953012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.827039, 17.889708, 27.034254>,  <12.352177, 17.707565, 27.534975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.827039, 17.889708, 27.034254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.957909, 17.645172, 27.322481>,  <13.036430, 17.498451, 27.495417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.957909, 17.645172, 27.322481>,  <12.827039, 17.889708, 27.034254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957909, 17.645172, 27.322481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354222, -0.627592, -0.693293,
		0.876061, 0.482069, 0.011218,
		0.327175, -0.611341, 0.720568,
		13.056061, 17.461769, 27.538652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417887, 17.758419, 26.829014>,  <12.827039, 17.889708, 27.034254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417887, 17.758419, 26.829014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.345113, 17.467491, 27.093712>,  <13.301449, 17.292934, 27.252531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.345113, 17.467491, 27.093712>,  <13.417887, 17.758419, 26.829014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345113, 17.467491, 27.093712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454182, -0.659043, -0.599484,
		0.872135, 0.191485, 0.450239,
		-0.181935, -0.727321, 0.661743,
		13.290532, 17.249294, 27.292234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047358, 17.333967, 26.824053>,  <13.417887, 17.758419, 26.829014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047358, 17.333967, 26.824053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.784634, 17.079966, 26.986715>,  <13.626999, 16.927565, 27.084312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.784634, 17.079966, 26.986715>,  <14.047358, 17.333967, 26.824053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784634, 17.079966, 26.986715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366239, -0.740053, -0.564083,
		0.659144, -0.221561, 0.718637,
		-0.656809, -0.635005, 0.406657,
		13.587591, 16.889463, 27.108713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461888, 16.865831, 27.040667>,  <14.047358, 17.333967, 26.824053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461888, 16.865831, 27.040667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.108445, 16.679644, 27.020370>,  <13.896379, 16.567930, 27.008194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.108445, 16.679644, 27.020370>,  <14.461888, 16.865831, 27.040667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.108445, 16.679644, 27.020370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399184, -0.692245, -0.601206,
		0.244719, -0.551485, 0.797482,
		-0.883609, -0.465469, -0.050739,
		13.843363, 16.540003, 27.005148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555750, 16.197834, 27.329782>,  <14.461888, 16.865831, 27.040667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555750, 16.197834, 27.329782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216008, 16.130804, 27.129576>,  <14.012163, 16.090586, 27.009453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.216008, 16.130804, 27.129576>,  <14.555750, 16.197834, 27.329782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216008, 16.130804, 27.129576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392274, -0.834868, -0.386156,
		-0.353154, -0.524323, 0.774834,
		-0.849354, -0.167575, -0.500515,
		13.961202, 16.080532, 26.979422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434569, 15.441512, 27.322752>,  <14.555750, 16.197834, 27.329782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.434569, 15.441512, 27.322752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208300, 15.589845, 27.028135>,  <14.072537, 15.678844, 26.851364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208300, 15.589845, 27.028135>,  <14.434569, 15.441512, 27.322752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208300, 15.589845, 27.028135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325428, -0.720301, -0.612587,
		-0.757698, -0.586218, 0.286779,
		-0.565677, 0.370830, -0.736542,
		14.038597, 15.701095, 26.807173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144872, 14.863287, 27.065331>,  <14.434569, 15.441512, 27.322752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144872, 14.863287, 27.065331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.146834, 15.154802, 26.791443>,  <14.148012, 15.329712, 26.627110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.146834, 15.154802, 26.791443>,  <14.144872, 14.863287, 27.065331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.146834, 15.154802, 26.791443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302218, -0.653790, -0.693702,
		-0.953226, -0.203530, -0.223462,
		0.004908, 0.728789, -0.684721,
		14.148307, 15.373439, 26.586027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841836, 14.547915, 26.503942>,  <14.144872, 14.863287, 27.065331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841836, 14.547915, 26.503942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047280, 14.863891, 26.369955>,  <14.170547, 15.053475, 26.289562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047280, 14.863891, 26.369955>,  <13.841836, 14.547915, 26.503942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.047280, 14.863891, 26.369955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260331, -0.515459, -0.816413,
		-0.817576, 0.332117, -0.470391,
		0.513612, 0.789937, -0.334966,
		14.201364, 15.100872, 26.269464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604502, 14.653989, 25.845072>,  <13.841836, 14.547915, 26.503942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604502, 14.653989, 25.845072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968075, 14.817771, 25.876539>,  <14.186218, 14.916040, 25.895420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968075, 14.817771, 25.876539>,  <13.604502, 14.653989, 25.845072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968075, 14.817771, 25.876539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286862, -0.477198, -0.830658,
		-0.302576, 0.777579, -0.551198,
		0.908932, 0.409455, 0.078669,
		14.240754, 14.940607, 25.900141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632088, 14.796389, 25.228119>,  <13.604502, 14.653989, 25.845072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632088, 14.796389, 25.228119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004209, 14.802264, 25.374718>,  <14.227481, 14.805790, 25.462677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.004209, 14.802264, 25.374718>,  <13.632088, 14.796389, 25.228119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.004209, 14.802264, 25.374718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328930, -0.475551, -0.815877,
		0.162304, 0.879565, -0.447239,
		0.930302, 0.014690, 0.366499,
		14.283299, 14.806671, 25.484667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979540, 15.053102, 24.698822>,  <13.632088, 14.796389, 25.228119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979540, 15.053102, 24.698822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247224, 14.861243, 24.925837>,  <14.407834, 14.746128, 25.062044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247224, 14.861243, 24.925837>,  <13.979540, 15.053102, 24.698822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247224, 14.861243, 24.925837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338491, -0.483146, -0.807461,
		0.661499, 0.732467, -0.160970,
		0.669211, -0.479648, 0.567534,
		14.447988, 14.717349, 25.096096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.640863, 15.268657, 24.430420>,  <13.979540, 15.053102, 24.698822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.640863, 15.268657, 24.430420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625568, 14.907459, 24.601601>,  <14.616391, 14.690741, 24.704309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625568, 14.907459, 24.601601>,  <14.640863, 15.268657, 24.430420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625568, 14.907459, 24.601601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149334, -0.428619, -0.891059,
		0.988047, 0.029837, 0.151236,
		-0.038237, -0.902993, 0.427951,
		14.614098, 14.636561, 24.729986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141424, 14.917149, 24.001608>,  <14.640863, 15.268657, 24.430420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141424, 14.917149, 24.001608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914230, 14.650930, 24.195284>,  <14.777914, 14.491199, 24.311489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914230, 14.650930, 24.195284>,  <15.141424, 14.917149, 24.001608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914230, 14.650930, 24.195284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199857, -0.459159, -0.865581,
		0.798405, -0.588406, 0.127781,
		-0.567985, -0.665546, 0.484192,
		14.743834, 14.451266, 24.340542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239250, 14.339499, 23.595566>,  <15.141424, 14.917149, 24.001608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239250, 14.339499, 23.595566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920546, 14.233047, 23.812580>,  <14.729323, 14.169175, 23.942789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920546, 14.233047, 23.812580>,  <15.239250, 14.339499, 23.595566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920546, 14.233047, 23.812580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357760, -0.515816, -0.778422,
		0.487011, -0.814315, 0.315771,
		-0.796761, -0.266130, 0.542537,
		14.681518, 14.153208, 23.975342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.123707, 13.702168, 23.418423>,  <15.239250, 14.339499, 23.595566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.123707, 13.702168, 23.418423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758684, 13.802778, 23.547401>,  <14.539670, 13.863145, 23.624788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758684, 13.802778, 23.547401>,  <15.123707, 13.702168, 23.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758684, 13.802778, 23.547401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408242, -0.606596, -0.682187,
		0.024009, -0.754172, 0.656238,
		-0.912558, 0.251525, 0.322449,
		14.484917, 13.878236, 23.644136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826056, 13.061537, 23.258116>,  <15.123707, 13.702168, 23.418423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826056, 13.061537, 23.258116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.529855, 13.321546, 23.326380>,  <14.352134, 13.477551, 23.367338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.529855, 13.321546, 23.326380>,  <14.826056, 13.061537, 23.258116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.529855, 13.321546, 23.326380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534908, -0.416331, -0.735215,
		-0.406829, -0.635740, 0.655991,
		-0.740515, 0.650002, 0.170686,
		14.307704, 13.516552, 23.377579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206170, 12.657997, 23.381599>,  <14.826056, 13.061537, 23.258116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206170, 12.657997, 23.381599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117349, 13.026809, 23.254757>,  <14.064055, 13.248096, 23.178652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117349, 13.026809, 23.254757>,  <14.206170, 12.657997, 23.381599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.117349, 13.026809, 23.254757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438458, -0.384912, -0.812155,
		-0.870888, -0.041305, 0.489742,
		-0.222054, 0.922028, -0.317105,
		14.050733, 13.303417, 23.159626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.494771, 12.631742, 23.240564>,  <14.206170, 12.657997, 23.381599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.494771, 12.631742, 23.240564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.629340, 12.949306, 23.037971>,  <13.710082, 13.139845, 22.916416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.629340, 12.949306, 23.037971>,  <13.494771, 12.631742, 23.240564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.629340, 12.949306, 23.037971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400324, -0.366248, -0.840002,
		-0.852385, 0.485353, 0.194607,
		0.336423, 0.793911, -0.506483,
		13.730268, 13.187480, 22.886026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902338, 12.851807, 22.804785>,  <13.494771, 12.631742, 23.240564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902338, 12.851807, 22.804785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225920, 12.999332, 22.621670>,  <13.420069, 13.087848, 22.511801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225920, 12.999332, 22.621670>,  <12.902338, 12.851807, 22.804785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225920, 12.999332, 22.621670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308290, -0.396902, -0.864538,
		-0.500551, 0.840503, -0.207374,
		0.808954, 0.368814, -0.457788,
		13.468606, 13.109977, 22.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661201, 13.069039, 22.322330>,  <12.902338, 12.851807, 22.804785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661201, 13.069039, 22.322330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.039781, 13.038763, 22.196787>,  <13.266928, 13.020597, 22.121460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.039781, 13.038763, 22.196787>,  <12.661201, 13.069039, 22.322330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.039781, 13.038763, 22.196787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320876, -0.328054, -0.888493,
		-0.035712, 0.941622, -0.334773,
		0.946448, -0.075691, -0.313859,
		13.323715, 13.016056, 22.102629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.650065, 13.390071, 21.595427>,  <12.661201, 13.069039, 22.322330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.650065, 13.390071, 21.595427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994827, 13.188132, 21.614412>,  <13.201684, 13.066969, 21.625803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994827, 13.188132, 21.614412>,  <12.650065, 13.390071, 21.595427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994827, 13.188132, 21.614412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157648, -0.355750, -0.921189,
		0.481943, 0.786494, -0.386210,
		0.861904, -0.504845, 0.047462,
		13.253399, 13.036678, 21.628651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034533, 13.517935, 21.042500>,  <12.650065, 13.390071, 21.595427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034533, 13.517935, 21.042500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194140, 13.171781, 21.163752>,  <13.289906, 12.964087, 21.236504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194140, 13.171781, 21.163752>,  <13.034533, 13.517935, 21.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194140, 13.171781, 21.163752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131730, -0.381261, -0.915034,
		0.907430, 0.325186, -0.266128,
		0.399021, -0.865386, 0.303132,
		13.313847, 12.912165, 21.254690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504755, 13.378850, 20.430687>,  <13.034533, 13.517935, 21.042500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504755, 13.378850, 20.430687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497595, 13.027871, 20.622423>,  <13.493299, 12.817284, 20.737465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497595, 13.027871, 20.622423>,  <13.504755, 13.378850, 20.430687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497595, 13.027871, 20.622423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029157, -0.479671, -0.876964,
		0.999415, -0.001721, 0.034170,
		-0.017900, -0.877446, 0.479340,
		13.492225, 12.764637, 20.766226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085799, 12.954302, 20.178312>,  <13.504755, 13.378850, 20.430687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085799, 12.954302, 20.178312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807092, 12.715051, 20.336681>,  <13.639867, 12.571500, 20.431704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807092, 12.715051, 20.336681>,  <14.085799, 12.954302, 20.178312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.807092, 12.715051, 20.336681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060477, -0.598987, -0.798472,
		0.714741, -0.532406, 0.453529,
		-0.696770, -0.598129, 0.395922,
		13.598061, 12.535612, 20.455458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271699, 12.293883, 20.065269>,  <14.085799, 12.954302, 20.178312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271699, 12.293883, 20.065269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.879184, 12.248558, 20.127537>,  <13.643675, 12.221363, 20.164896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.879184, 12.248558, 20.127537>,  <14.271699, 12.293883, 20.065269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.879184, 12.248558, 20.127537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079265, -0.499053, -0.862939,
		0.175469, -0.859131, 0.480733,
		-0.981288, -0.113313, 0.155667,
		13.584797, 12.214564, 20.174236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164689, 11.590398, 20.068266>,  <14.271699, 12.293883, 20.065269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164689, 11.590398, 20.068266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822596, 11.776318, 19.976582>,  <13.617339, 11.887870, 19.921572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822596, 11.776318, 19.976582>,  <14.164689, 11.590398, 20.068266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822596, 11.776318, 19.976582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029746, -0.485578, -0.873687,
		-0.517393, -0.740386, 0.429107,
		-0.855231, 0.464803, -0.229211,
		13.566026, 11.915757, 19.907820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735065, 11.036003, 19.847357>,  <14.164689, 11.590398, 20.068266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735065, 11.036003, 19.847357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528972, 11.338629, 19.686287>,  <13.405315, 11.520204, 19.589645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528972, 11.338629, 19.686287>,  <13.735065, 11.036003, 19.847357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528972, 11.338629, 19.686287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008849, -0.465115, -0.885206,
		-0.857004, -0.459652, 0.232948,
		-0.515234, 0.756563, -0.402673,
		13.374401, 11.565598, 19.565485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176899, 10.661514, 19.473429>,  <13.735065, 11.036003, 19.847357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176899, 10.661514, 19.473429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231241, 11.016926, 19.298130>,  <13.263846, 11.230172, 19.192951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231241, 11.016926, 19.298130>,  <13.176899, 10.661514, 19.473429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231241, 11.016926, 19.298130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055898, -0.434770, -0.898805,
		-0.989150, 0.146606, -0.009399,
		0.135857, 0.888528, -0.438248,
		13.271998, 11.283484, 19.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850751, 10.684054, 18.801138>,  <13.176899, 10.661514, 19.473429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850751, 10.684054, 18.801138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092640, 11.001051, 18.769468>,  <13.237773, 11.191249, 18.750467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092640, 11.001051, 18.769468>,  <12.850751, 10.684054, 18.801138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.092640, 11.001051, 18.769468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141157, -0.204481, -0.968639,
		-0.783828, 0.574582, -0.235520,
		0.604722, 0.792492, -0.079172,
		13.274056, 11.238798, 18.745716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.572277, 11.090796, 18.183573>,  <12.850751, 10.684054, 18.801138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.572277, 11.090796, 18.183573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953935, 11.205223, 18.218838>,  <13.182929, 11.273880, 18.239996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953935, 11.205223, 18.218838>,  <12.572277, 11.090796, 18.183573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953935, 11.205223, 18.218838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178209, -0.306196, -0.935139,
		-0.240521, 0.907969, -0.343136,
		0.954144, 0.286070, 0.088162,
		13.240178, 11.291044, 18.245287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635050, 11.530735, 17.656551>,  <12.572277, 11.090796, 18.183573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635050, 11.530735, 17.656551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009754, 11.447960, 17.769444>,  <13.234577, 11.398295, 17.837179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009754, 11.447960, 17.769444>,  <12.635050, 11.530735, 17.656551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009754, 11.447960, 17.769444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270101, -0.085298, -0.959046,
		0.222536, 0.974629, -0.024010,
		0.936762, -0.206937, 0.282230,
		13.290783, 11.385879, 17.854113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.026586, 11.924396, 17.250763>,  <12.635050, 11.530735, 17.656551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.026586, 11.924396, 17.250763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296266, 11.654614, 17.371140>,  <13.458074, 11.492745, 17.443365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296266, 11.654614, 17.371140>,  <13.026586, 11.924396, 17.250763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296266, 11.654614, 17.371140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279129, -0.144561, -0.949310,
		0.683770, 0.724026, 0.090796,
		0.674200, -0.674454, 0.300943,
		13.498526, 11.452278, 17.461422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.751798, 12.117095, 17.035360>,  <13.026586, 11.924396, 17.250763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.751798, 12.117095, 17.035360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753292, 11.718801, 17.072231>,  <13.754189, 11.479824, 17.094355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753292, 11.718801, 17.072231>,  <13.751798, 12.117095, 17.035360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753292, 11.718801, 17.072231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249265, -0.088342, -0.964398,
		0.968428, 0.026580, 0.247871,
		0.003737, -0.995736, 0.092178,
		13.754413, 11.420080, 17.099884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416246, 11.859839, 16.875137>,  <13.751798, 12.117095, 17.035360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416246, 11.859839, 16.875137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.206905, 11.520509, 16.843033>,  <14.081301, 11.316910, 16.823771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.206905, 11.520509, 16.843033>,  <14.416246, 11.859839, 16.875137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206905, 11.520509, 16.843033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353708, -0.130582, -0.926196,
		0.775237, -0.513116, 0.368401,
		-0.523353, -0.848328, -0.080262,
		14.049899, 11.266010, 16.818954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898811, 11.348792, 16.729683>,  <14.416246, 11.859839, 16.875137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898811, 11.348792, 16.729683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547028, 11.209761, 16.599613>,  <14.335958, 11.126342, 16.521570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547028, 11.209761, 16.599613>,  <14.898811, 11.348792, 16.729683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547028, 11.209761, 16.599613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406956, -0.194782, -0.892438,
		0.246855, -0.917196, 0.312753,
		-0.879460, -0.347580, -0.325176,
		14.283190, 11.105487, 16.502060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631308, 11.667484, 16.769640>,  <14.898811, 11.348792, 16.729683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631308, 11.667484, 16.769640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028030, 11.671429, 16.718691>,  <16.266064, 11.673796, 16.688122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028030, 11.671429, 16.718691>,  <15.631308, 11.667484, 16.769640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028030, 11.671429, 16.718691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127368, 0.001073, 0.991855,
		0.009952, -0.999951, -0.000196,
		0.991806, 0.009896, -0.127373,
		16.325573, 11.674387, 16.680479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967934, 10.982327, 17.074917>,  <15.631308, 11.667484, 16.769640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967934, 10.982327, 17.074917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228769, 11.285330, 17.062490>,  <16.385271, 11.467132, 17.055035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228769, 11.285330, 17.062490>,  <15.967934, 10.982327, 17.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228769, 11.285330, 17.062490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248893, -0.175190, 0.952555,
		0.716124, -0.628882, -0.302777,
		0.652088, 0.757506, -0.031067,
		16.424397, 11.512582, 17.053171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491240, 10.765326, 17.641190>,  <15.967934, 10.982327, 17.074917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491240, 10.765326, 17.641190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.569311, 11.151974, 17.574795>,  <16.616154, 11.383963, 17.534958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.569311, 11.151974, 17.574795>,  <16.491240, 10.765326, 17.641190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.569311, 11.151974, 17.574795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177349, 0.131668, 0.975300,
		0.964600, -0.219796, -0.145730,
		0.195179, 0.966619, -0.165988,
		16.627865, 11.441959, 17.524998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119095, 10.946334, 18.136051>,  <16.491240, 10.765326, 17.641190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.119095, 10.946334, 18.136051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957804, 11.286483, 18.000834>,  <16.861029, 11.490572, 17.919703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957804, 11.286483, 18.000834>,  <17.119095, 10.946334, 18.136051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957804, 11.286483, 18.000834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041910, 0.351856, 0.935115,
		0.914138, 0.391234, -0.106240,
		-0.403230, 0.850372, -0.338042,
		16.836834, 11.541595, 17.899422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.450600, 11.593623, 18.502739>,  <17.119095, 10.946334, 18.136051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.450600, 11.593623, 18.502739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090084, 11.724079, 18.388680>,  <16.873775, 11.802353, 18.320244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090084, 11.724079, 18.388680>,  <17.450600, 11.593623, 18.502739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090084, 11.724079, 18.388680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150281, 0.381964, 0.911877,
		0.406317, 0.864717, -0.295248,
		-0.901289, 0.326141, -0.285149,
		16.819696, 11.821921, 18.303135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463684, 12.308050, 18.592281>,  <17.450600, 11.593623, 18.502739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463684, 12.308050, 18.592281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080891, 12.194014, 18.613832>,  <16.851213, 12.125592, 18.626762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080891, 12.194014, 18.613832>,  <17.463684, 12.308050, 18.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080891, 12.194014, 18.613832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110291, 0.529211, 0.841291,
		-0.268357, 0.799161, -0.537890,
		-0.956985, -0.285091, 0.053877,
		16.793795, 12.108486, 18.629995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206779, 12.954948, 18.887741>,  <17.463684, 12.308050, 18.592281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206779, 12.954948, 18.887741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963341, 12.642610, 18.944155>,  <16.817278, 12.455207, 18.978003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963341, 12.642610, 18.944155>,  <17.206779, 12.954948, 18.887741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963341, 12.642610, 18.944155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259848, 0.364067, 0.894390,
		-0.749727, 0.507675, -0.424471,
		-0.608596, -0.780846, 0.141033,
		16.780762, 12.408356, 18.986465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610033, 13.217915, 19.035509>,  <17.206779, 12.954948, 18.887741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.610033, 13.217915, 19.035509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585192, 12.851039, 19.192942>,  <16.570286, 12.630914, 19.287401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585192, 12.851039, 19.192942>,  <16.610033, 13.217915, 19.035509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585192, 12.851039, 19.192942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506390, 0.368774, 0.779471,
		-0.860065, -0.150897, -0.487358,
		-0.062105, -0.917189, 0.393583,
		16.566561, 12.575882, 19.311016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991487, 13.245068, 19.470648>,  <16.610033, 13.217915, 19.035509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991487, 13.245068, 19.470648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198240, 12.927273, 19.598160>,  <16.322292, 12.736596, 19.674667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198240, 12.927273, 19.598160>,  <15.991487, 13.245068, 19.470648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198240, 12.927273, 19.598160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261406, 0.208113, 0.942526,
		-0.815168, -0.570508, -0.100114,
		0.516883, -0.794487, 0.318781,
		16.353306, 12.688927, 19.693794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509550, 12.880931, 19.901072>,  <15.991487, 13.245068, 19.470648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509550, 12.880931, 19.901072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.885769, 12.788283, 20.000448>,  <16.111500, 12.732695, 20.060074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.885769, 12.788283, 20.000448>,  <15.509550, 12.880931, 19.901072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885769, 12.788283, 20.000448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163262, 0.333121, 0.928642,
		-0.297852, -0.913993, 0.275502,
		0.940548, -0.231619, 0.248441,
		16.167933, 12.718798, 20.074980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457673, 12.991544, 20.636600>,  <15.509550, 12.880931, 19.901072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457673, 12.991544, 20.636600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852748, 12.947343, 20.592302>,  <16.089792, 12.920822, 20.565723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852748, 12.947343, 20.592302>,  <15.457673, 12.991544, 20.636600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852748, 12.947343, 20.592302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139881, 0.306753, 0.941454,
		-0.070063, -0.945353, 0.318432,
		0.987686, -0.110503, -0.110745,
		16.149054, 12.914192, 20.559078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746065, 12.684024, 21.224590>,  <15.457673, 12.991544, 20.636600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746065, 12.684024, 21.224590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060389, 12.866094, 21.057104>,  <16.248981, 12.975335, 20.956612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060389, 12.866094, 21.057104>,  <15.746065, 12.684024, 21.224590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060389, 12.866094, 21.057104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322935, 0.275424, 0.905458,
		0.527466, -0.846734, 0.069438,
		0.785807, 0.455174, -0.418717,
		16.296131, 13.002645, 20.931488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352482, 12.424481, 21.539436>,  <15.746065, 12.684024, 21.224590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352482, 12.424481, 21.539436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463156, 12.781617, 21.397291>,  <16.529560, 12.995898, 21.312004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463156, 12.781617, 21.397291>,  <16.352482, 12.424481, 21.539436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463156, 12.781617, 21.397291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515982, 0.173936, 0.838755,
		0.810683, -0.415433, -0.412563,
		0.276687, 0.892839, -0.355362,
		16.546162, 13.049469, 21.290682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999138, 12.455608, 21.937401>,  <16.352482, 12.424481, 21.539436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999138, 12.455608, 21.937401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923927, 12.818739, 21.787468>,  <16.878801, 13.036617, 21.697508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923927, 12.818739, 21.787468>,  <16.999138, 12.455608, 21.937401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923927, 12.818739, 21.787468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442753, 0.419007, 0.792719,
		0.876707, -0.016906, -0.480727,
		-0.188026, 0.907826, -0.374832,
		16.867519, 13.091086, 21.675018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669321, 12.809466, 22.120859>,  <16.999138, 12.455608, 21.937401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669321, 12.809466, 22.120859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393089, 13.094882, 22.073599>,  <17.227350, 13.266131, 22.045242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393089, 13.094882, 22.073599>,  <17.669321, 12.809466, 22.120859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393089, 13.094882, 22.073599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366084, 0.485737, 0.793752,
		0.623763, 0.504897, -0.596656,
		-0.690581, 0.713539, -0.118150,
		17.185915, 13.308944, 22.038155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021057, 13.484728, 22.268793>,  <17.669321, 12.809466, 22.120859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021057, 13.484728, 22.268793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633909, 13.561117, 22.334223>,  <17.401621, 13.606951, 22.373480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633909, 13.561117, 22.334223>,  <18.021057, 13.484728, 22.268793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633909, 13.561117, 22.334223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244678, 0.565322, 0.787746,
		0.057968, 0.802459, -0.593886,
		-0.967870, 0.190974, 0.163573,
		17.343548, 13.618409, 22.383295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030201, 14.111781, 22.570929>,  <18.021057, 13.484728, 22.268793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030201, 14.111781, 22.570929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648315, 14.014100, 22.638914>,  <17.419184, 13.955491, 22.679705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648315, 14.014100, 22.638914>,  <18.030201, 14.111781, 22.570929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648315, 14.014100, 22.638914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000598, 0.569674, 0.821871,
		-0.297526, 0.784753, -0.543729,
		-0.954714, -0.244202, 0.169962,
		17.361902, 13.940840, 22.689903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725952, 14.786717, 22.758808>,  <18.030201, 14.111781, 22.570929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725952, 14.786717, 22.758808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497122, 14.515567, 22.943508>,  <17.359823, 14.352877, 23.054329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497122, 14.515567, 22.943508>,  <17.725952, 14.786717, 22.758808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497122, 14.515567, 22.943508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019736, 0.574188, 0.818486,
		-0.819963, 0.459122, -0.341857,
		-0.572075, -0.677876, 0.461751,
		17.325499, 14.312204, 23.082033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210770, 15.177698, 23.092398>,  <17.725952, 14.786717, 22.758808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210770, 15.177698, 23.092398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191402, 14.822225, 23.274780>,  <17.179783, 14.608940, 23.384211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191402, 14.822225, 23.274780>,  <17.210770, 15.177698, 23.092398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191402, 14.822225, 23.274780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092032, 0.458520, 0.883906,
		-0.994578, 0.000833, -0.103988,
		-0.048416, -0.888684, 0.455957,
		17.176878, 14.555619, 23.411568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556665, 15.152264, 23.464302>,  <17.210770, 15.177698, 23.092398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556665, 15.152264, 23.464302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.792221, 14.870014, 23.621939>,  <16.933554, 14.700665, 23.716520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.792221, 14.870014, 23.621939>,  <16.556665, 15.152264, 23.464302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792221, 14.870014, 23.621939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203176, 0.342698, 0.917212,
		-0.782260, -0.620205, 0.058445,
		0.588888, -0.705623, 0.394090,
		16.968887, 14.658327, 23.740166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.186453, 14.933177, 24.013756>,  <16.556665, 15.152264, 23.464302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.186453, 14.933177, 24.013756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563959, 14.834493, 24.101789>,  <16.790462, 14.775282, 24.154610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563959, 14.834493, 24.101789>,  <16.186453, 14.933177, 24.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563959, 14.834493, 24.101789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103648, 0.411345, 0.905568,
		-0.313945, -0.877456, 0.362642,
		0.943767, -0.246711, 0.220086,
		16.847090, 14.760479, 24.167814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172981, 14.639147, 24.707720>,  <16.186453, 14.933177, 24.013756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172981, 14.639147, 24.707720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552446, 14.740263, 24.631683>,  <16.780125, 14.800933, 24.586061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552446, 14.740263, 24.631683>,  <16.172981, 14.639147, 24.707720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552446, 14.740263, 24.631683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088615, 0.364501, 0.926977,
		0.303616, -0.896235, 0.323388,
		0.948664, 0.252788, -0.190088,
		16.837046, 14.816100, 24.574656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490570, 14.512035, 25.363855>,  <16.172981, 14.639147, 24.707720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490570, 14.512035, 25.363855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743250, 14.760460, 25.178280>,  <16.894857, 14.909514, 25.066935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743250, 14.760460, 25.178280>,  <16.490570, 14.512035, 25.363855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743250, 14.760460, 25.178280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115191, 0.516619, 0.848431,
		0.766607, -0.589396, 0.254808,
		0.631701, 0.621062, -0.463936,
		16.932760, 14.946778, 25.039099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120689, 14.425119, 25.746733>,  <16.490570, 14.512035, 25.363855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120689, 14.425119, 25.746733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130651, 14.766109, 25.537863>,  <17.136629, 14.970703, 25.412540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.130651, 14.766109, 25.537863>,  <17.120689, 14.425119, 25.746733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130651, 14.766109, 25.537863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318627, 0.488326, 0.812413,
		0.947553, -0.186613, -0.259459,
		0.024907, 0.852475, -0.522174,
		17.138123, 15.021852, 25.381210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751015, 14.788316, 26.025780>,  <17.120689, 14.425119, 25.746733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751015, 14.788316, 26.025780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.538450, 15.092546, 25.876579>,  <17.410912, 15.275084, 25.787060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.538450, 15.092546, 25.876579>,  <17.751015, 14.788316, 26.025780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538450, 15.092546, 25.876579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105171, 0.496148, 0.861844,
		0.840561, 0.418764, -0.343648,
		-0.531410, 0.760574, -0.373001,
		17.379026, 15.320718, 25.764679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063026, 15.382311, 26.281527>,  <17.751015, 14.788316, 26.025780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063026, 15.382311, 26.281527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686253, 15.477291, 26.186554>,  <17.460188, 15.534279, 26.129570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686253, 15.477291, 26.186554>,  <18.063026, 15.382311, 26.281527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686253, 15.477291, 26.186554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035631, 0.632414, 0.773811,
		0.333898, 0.737340, -0.587232,
		-0.941936, 0.237450, -0.237434,
		17.403671, 15.548526, 26.115324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.032446, 16.075684, 26.404877>,  <18.063026, 15.382311, 26.281527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.032446, 16.075684, 26.404877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.641092, 16.008528, 26.356573>,  <17.406281, 15.968234, 26.327591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.641092, 16.008528, 26.356573>,  <18.032446, 16.075684, 26.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641092, 16.008528, 26.356573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200015, 0.619752, 0.758882,
		-0.052567, 0.766629, -0.639935,
		-0.978382, -0.167889, -0.120758,
		17.347578, 15.958161, 26.320345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723248, 16.673283, 26.555967>,  <18.032446, 16.075684, 26.404877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723248, 16.673283, 26.555967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.410378, 16.426355, 26.589714>,  <17.222654, 16.278198, 26.609962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.410378, 16.426355, 26.589714>,  <17.723248, 16.673283, 26.555967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410378, 16.426355, 26.589714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441501, 0.644696, 0.624054,
		-0.439632, 0.450872, -0.776813,
		-0.782177, -0.617318, 0.084369,
		17.175724, 16.241159, 26.615025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121046, 17.098873, 26.415512>,  <17.723248, 16.673283, 26.555967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121046, 17.098873, 26.415512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023470, 16.774380, 26.628075>,  <16.964924, 16.579683, 26.755613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023470, 16.774380, 26.628075>,  <17.121046, 17.098873, 26.415512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023470, 16.774380, 26.628075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477028, 0.577461, 0.662558,
		-0.844356, -0.091873, -0.527846,
		-0.243940, -0.811233, 0.531408,
		16.950289, 16.531010, 26.787497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441444, 17.117268, 26.539396>,  <17.121046, 17.098873, 26.415512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441444, 17.117268, 26.539396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581423, 16.911194, 26.852350>,  <16.665409, 16.787550, 27.040123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581423, 16.911194, 26.852350>,  <16.441444, 17.117268, 26.539396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581423, 16.911194, 26.852350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561432, 0.553234, 0.615408,
		-0.749889, -0.654614, -0.095640,
		0.349944, -0.515183, 0.782385,
		16.686405, 16.756639, 27.087067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833004, 16.964647, 26.903831>,  <16.441444, 17.117268, 26.539396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.833004, 16.964647, 26.903831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136192, 16.892717, 27.154636>,  <16.318106, 16.849560, 27.305119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136192, 16.892717, 27.154636>,  <15.833004, 16.964647, 26.903831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136192, 16.892717, 27.154636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369735, 0.673467, 0.640108,
		-0.537380, -0.717011, 0.443980,
		0.757970, -0.179826, 0.627011,
		16.363583, 16.838770, 27.342739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549752, 16.931694, 27.605936>,  <15.833004, 16.964647, 26.903831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549752, 16.931694, 27.605936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.936534, 17.013899, 27.666288>,  <16.168602, 17.063223, 27.702499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.936534, 17.013899, 27.666288>,  <15.549752, 16.931694, 27.605936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.936534, 17.013899, 27.666288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254950, 0.777076, 0.575459,
		0.001019, -0.594909, 0.803792,
		0.966953, 0.205513, 0.150880,
		16.226620, 17.075554, 27.711552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774086, 16.944166, 28.375628>,  <15.549752, 16.931694, 27.605936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774086, 16.944166, 28.375628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024464, 17.173464, 28.164125>,  <16.174690, 17.311043, 28.037224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024464, 17.173464, 28.164125>,  <15.774086, 16.944166, 28.375628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024464, 17.173464, 28.164125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232834, 0.784451, 0.574826,
		0.744295, -0.236701, 0.624498,
		0.625950, 0.573244, -0.528751,
		16.212248, 17.345438, 28.005499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373604, 17.308805, 28.829060>,  <15.774086, 16.944166, 28.375628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373604, 17.308805, 28.829060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236082, 17.494267, 28.502422>,  <16.153568, 17.605543, 28.306440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236082, 17.494267, 28.502422>,  <16.373604, 17.308805, 28.829060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236082, 17.494267, 28.502422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358397, 0.738988, 0.570481,
		0.867957, 0.488800, -0.087897,
		-0.343806, 0.463651, -0.816594,
		16.132940, 17.633362, 28.257444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.700874, 17.936623, 28.781246>,  <16.373604, 17.308805, 28.829060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.700874, 17.936623, 28.781246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337996, 17.934429, 28.612980>,  <16.120268, 17.933113, 28.512020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337996, 17.934429, 28.612980>,  <16.700874, 17.936623, 28.781246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337996, 17.934429, 28.612980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293256, 0.725193, 0.622974,
		0.301649, 0.688524, -0.659502,
		-0.907198, -0.005484, -0.420667,
		16.065836, 17.932785, 28.486780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488396, 18.560049, 28.260103>,  <16.700874, 17.936623, 28.781246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488396, 18.560049, 28.260103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227316, 18.372587, 28.498213>,  <16.070669, 18.260111, 28.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227316, 18.372587, 28.498213>,  <16.488396, 18.560049, 28.260103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227316, 18.372587, 28.498213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090488, 0.828315, 0.552907,
		-0.752195, 0.307016, -0.583047,
		-0.652698, -0.468652, 0.595273,
		16.031506, 18.231991, 28.676794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929132, 19.023859, 28.363562>,  <16.488396, 18.560049, 28.260103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929132, 19.023859, 28.363562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907331, 18.779135, 28.679211>,  <15.894251, 18.632299, 28.868601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907331, 18.779135, 28.679211>,  <15.929132, 19.023859, 28.363562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907331, 18.779135, 28.679211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171704, 0.784268, 0.596189,
		-0.983640, -0.103002, -0.147795,
		-0.054503, -0.611812, 0.789123,
		15.890981, 18.595591, 28.915947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310085, 19.103010, 28.718235>,  <15.929132, 19.023859, 28.363562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310085, 19.103010, 28.718235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596493, 19.048988, 28.992191>,  <15.768337, 19.016575, 29.156565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596493, 19.048988, 28.992191>,  <15.310085, 19.103010, 28.718235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.596493, 19.048988, 28.992191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220128, 0.887371, 0.405114,
		-0.662465, -0.440833, 0.605645,
		0.716019, -0.135055, 0.684892,
		15.811298, 19.008472, 29.197659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885748, 19.507206, 28.294687>,  <15.310085, 19.103010, 28.718235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885748, 19.507206, 28.294687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.982832, 19.844448, 28.102745>,  <15.041082, 20.046793, 27.987579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.982832, 19.844448, 28.102745>,  <14.885748, 19.507206, 28.294687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.982832, 19.844448, 28.102745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001038, -0.494872, -0.868965,
		-0.970098, 0.210408, -0.120985,
		0.242710, 0.843107, -0.479856,
		15.055645, 20.097380, 27.958788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462653, 19.471611, 27.746948>,  <14.885748, 19.507206, 28.294687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462653, 19.471611, 27.746948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752270, 19.717058, 27.620941>,  <14.926040, 19.864326, 27.545336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752270, 19.717058, 27.620941>,  <14.462653, 19.471611, 27.746948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752270, 19.717058, 27.620941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035287, -0.489065, -0.871533,
		-0.688853, 0.619910, -0.375756,
		0.724041, 0.613618, -0.315020,
		14.969482, 19.901144, 27.526436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230526, 19.599304, 27.029984>,  <14.462653, 19.471611, 27.746948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230526, 19.599304, 27.029984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.605717, 19.735229, 27.057487>,  <14.830831, 19.816786, 27.073990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.605717, 19.735229, 27.057487>,  <14.230526, 19.599304, 27.029984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.605717, 19.735229, 27.057487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166552, -0.267708, -0.948996,
		-0.304076, 0.901587, -0.307701,
		0.937976, 0.339815, 0.068758,
		14.887110, 19.837173, 27.078115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367536, 20.004450, 26.365934>,  <14.230526, 19.599304, 27.029984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367536, 20.004450, 26.365934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.715413, 19.872728, 26.513008>,  <14.924140, 19.793695, 26.601252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.715413, 19.872728, 26.513008>,  <14.367536, 20.004450, 26.365934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715413, 19.872728, 26.513008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316183, -0.200338, -0.927304,
		0.379025, 0.922727, -0.070113,
		0.869694, -0.329303, 0.367684,
		14.976321, 19.773937, 26.623314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912136, 20.318897, 25.957851>,  <14.367536, 20.004450, 26.365934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912136, 20.318897, 25.957851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.105174, 20.014723, 26.131672>,  <15.220997, 19.832218, 26.235964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.105174, 20.014723, 26.131672>,  <14.912136, 20.318897, 25.957851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105174, 20.014723, 26.131672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370108, -0.272617, -0.888088,
		0.793802, 0.589418, 0.149881,
		0.482595, -0.760438, 0.434553,
		15.249952, 19.786591, 26.262037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527890, 20.292610, 25.740749>,  <14.912136, 20.318897, 25.957851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527890, 20.292610, 25.740749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.484271, 19.911173, 25.853012>,  <15.458099, 19.682310, 25.920370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.484271, 19.911173, 25.853012>,  <15.527890, 20.292610, 25.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.484271, 19.911173, 25.853012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502869, -0.296468, -0.811930,
		0.857457, 0.052593, 0.511862,
		-0.109049, -0.953594, 0.280656,
		15.451556, 19.625095, 25.937208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198835, 20.016094, 25.471661>,  <15.527890, 20.292610, 25.740749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198835, 20.016094, 25.471661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925186, 19.734083, 25.546400>,  <15.760996, 19.564877, 25.591244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925186, 19.734083, 25.546400>,  <16.198835, 20.016094, 25.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925186, 19.734083, 25.546400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301214, -0.506416, -0.807968,
		0.664261, -0.496469, 0.558816,
		-0.684125, -0.705025, 0.186849,
		15.719949, 19.522575, 25.602455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566280, 19.372444, 25.393301>,  <16.198835, 20.016094, 25.471661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566280, 19.372444, 25.393301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174866, 19.313507, 25.335676>,  <15.940017, 19.278145, 25.301102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174866, 19.313507, 25.335676>,  <16.566280, 19.372444, 25.393301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174866, 19.313507, 25.335676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205995, -0.680991, -0.702721,
		0.005434, -0.717316, 0.696727,
		-0.978538, -0.147341, -0.144063,
		15.881305, 19.269304, 25.292458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492945, 18.597427, 25.162169>,  <16.566280, 19.372444, 25.393301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492945, 18.597427, 25.162169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.116560, 18.710144, 25.087141>,  <15.890729, 18.777775, 25.042124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.116560, 18.710144, 25.087141>,  <16.492945, 18.597427, 25.162169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116560, 18.710144, 25.087141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053983, -0.671925, -0.738649,
		-0.334179, -0.684916, 0.647468,
		-0.940962, 0.281793, -0.187569,
		15.834271, 18.794682, 25.030870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.072287, 18.022316, 25.164125>,  <16.492945, 18.597427, 25.162169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.072287, 18.022316, 25.164125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863085, 18.300316, 24.966768>,  <15.737563, 18.467115, 24.848354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863085, 18.300316, 24.966768>,  <16.072287, 18.022316, 25.164125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863085, 18.300316, 24.966768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050685, -0.552493, -0.831975,
		-0.850820, -0.460136, 0.253731,
		-0.523006, 0.695001, -0.493394,
		15.706182, 18.508816, 24.818750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762774, 17.607824, 24.744148>,  <16.072287, 18.022316, 25.164125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762774, 17.607824, 24.744148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740911, 17.978209, 24.594692>,  <15.727793, 18.200439, 24.505018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740911, 17.978209, 24.594692>,  <15.762774, 17.607824, 24.744148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740911, 17.978209, 24.594692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243067, -0.350606, -0.904430,
		-0.968468, -0.140253, -0.205908,
		-0.054657, 0.925962, -0.373641,
		15.724513, 18.255997, 24.482599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259169, 17.593985, 24.241388>,  <15.762774, 17.607824, 24.744148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259169, 17.593985, 24.241388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503564, 17.901129, 24.164360>,  <15.650201, 18.085415, 24.118143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503564, 17.901129, 24.164360>,  <15.259169, 17.593985, 24.241388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503564, 17.901129, 24.164360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233516, -0.407244, -0.882962,
		-0.756414, 0.494513, -0.428129,
		0.610989, 0.767860, -0.192569,
		15.686861, 18.131487, 24.106590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116847, 17.718712, 23.605240>,  <15.259169, 17.593985, 24.241388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116847, 17.718712, 23.605240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478948, 17.874748, 23.672590>,  <15.696208, 17.968370, 23.712999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478948, 17.874748, 23.672590>,  <15.116847, 17.718712, 23.605240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478948, 17.874748, 23.672590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351717, -0.465696, -0.812048,
		-0.238362, 0.794327, -0.558773,
		0.905250, 0.390092, 0.168374,
		15.750523, 17.991776, 23.723103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412306, 17.909052, 22.922180>,  <15.116847, 17.718712, 23.605240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412306, 17.909052, 22.922180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.736684, 17.901117, 23.156094>,  <15.931311, 17.896357, 23.296442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.736684, 17.901117, 23.156094>,  <15.412306, 17.909052, 22.922180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736684, 17.901117, 23.156094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545047, -0.337892, -0.767303,
		0.212816, 0.940976, -0.263199,
		0.810946, -0.019838, 0.584784,
		15.979968, 17.895166, 23.331530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969700, 18.183874, 22.581039>,  <15.412306, 17.909052, 22.922180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969700, 18.183874, 22.581039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134178, 17.943953, 22.855602>,  <16.232866, 17.799999, 23.020340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134178, 17.943953, 22.855602>,  <15.969700, 18.183874, 22.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134178, 17.943953, 22.855602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520001, -0.464118, -0.717073,
		0.748676, 0.651789, 0.121055,
		0.411197, -0.599805, 0.686405,
		16.257538, 17.764011, 23.061523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600660, 18.128147, 22.304388>,  <15.969700, 18.183874, 22.581039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600660, 18.128147, 22.304388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.558123, 17.849806, 22.588495>,  <16.532600, 17.682800, 22.758959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.558123, 17.849806, 22.588495>,  <16.600660, 18.128147, 22.304388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558123, 17.849806, 22.588495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597966, -0.615472, -0.513451,
		0.794435, 0.370113, 0.481548,
		-0.106344, -0.695852, 0.710268,
		16.526220, 17.641050, 22.801575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302485, 17.826525, 22.559320>,  <16.600660, 18.128147, 22.304388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302485, 17.826525, 22.559320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045008, 17.535673, 22.654770>,  <16.890522, 17.361162, 22.712040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045008, 17.535673, 22.654770>,  <17.302485, 17.826525, 22.559320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045008, 17.535673, 22.654770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428986, -0.601053, -0.674319,
		0.633745, -0.331686, 0.698822,
		-0.643691, -0.727131, 0.238625,
		16.851900, 17.317533, 22.726357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765617, 17.180796, 22.612120>,  <17.302485, 17.826525, 22.559320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765617, 17.180796, 22.612120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385796, 17.088305, 22.527378>,  <17.157904, 17.032810, 22.476532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385796, 17.088305, 22.527378>,  <17.765617, 17.180796, 22.612120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385796, 17.088305, 22.527378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312414, -0.756322, -0.574782,
		-0.027325, -0.611973, 0.790407,
		-0.949553, -0.231228, -0.211856,
		17.100929, 17.018936, 22.463821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673775, 16.435171, 22.656157>,  <17.765617, 17.180796, 22.612120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673775, 16.435171, 22.656157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.349745, 16.522728, 22.438581>,  <17.155327, 16.575262, 22.308037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.349745, 16.522728, 22.438581>,  <17.673775, 16.435171, 22.656157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349745, 16.522728, 22.438581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192894, -0.776567, -0.599779,
		-0.553689, -0.590788, 0.586854,
		-0.810074, 0.218890, -0.543937,
		17.106722, 16.588396, 22.275400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413210, 15.767118, 22.398046>,  <17.673775, 16.435171, 22.656157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413210, 15.767118, 22.398046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229963, 16.033585, 22.162640>,  <17.120014, 16.193464, 22.021395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229963, 16.033585, 22.162640>,  <17.413210, 15.767118, 22.398046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229963, 16.033585, 22.162640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051306, -0.641160, -0.765690,
		-0.887410, -0.380971, 0.259548,
		-0.458117, 0.666165, -0.588518,
		17.092527, 16.233435, 21.986084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895302, 15.383446, 22.081661>,  <17.413210, 15.767118, 22.398046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895302, 15.383446, 22.081661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.942640, 15.702434, 21.845005>,  <16.971043, 15.893826, 21.703012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.942640, 15.702434, 21.845005>,  <16.895302, 15.383446, 22.081661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942640, 15.702434, 21.845005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029054, -0.592789, -0.804833,
		-0.992547, 0.112439, -0.046985,
		0.118346, 0.797470, -0.591638,
		16.978144, 15.941674, 21.667513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509600, 15.253921, 21.420141>,  <16.895302, 15.383446, 22.081661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509600, 15.253921, 21.420141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740456, 15.554947, 21.293299>,  <16.878969, 15.735562, 21.217194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740456, 15.554947, 21.293299>,  <16.509600, 15.253921, 21.420141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740456, 15.554947, 21.293299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100699, -0.450920, -0.886866,
		-0.810413, 0.479914, -0.336027,
		0.577141, 0.752565, -0.317104,
		16.913597, 15.780716, 21.198168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279264, 15.520725, 20.804495>,  <16.509600, 15.253921, 21.420141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279264, 15.520725, 20.804495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665035, 15.626443, 20.802320>,  <16.896498, 15.689874, 20.801016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.665035, 15.626443, 20.802320>,  <16.279264, 15.520725, 20.804495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.665035, 15.626443, 20.802320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142020, -0.535369, -0.832592,
		-0.222959, 0.802203, -0.553860,
		0.964427, 0.264293, -0.005436,
		16.954363, 15.705730, 20.800690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357742, 15.673870, 20.101892>,  <16.279264, 15.520725, 20.804495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357742, 15.673870, 20.101892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726210, 15.630542, 20.251406>,  <16.947290, 15.604545, 20.341114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726210, 15.630542, 20.251406>,  <16.357742, 15.673870, 20.101892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726210, 15.630542, 20.251406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277532, -0.490455, -0.826093,
		0.272807, 0.864708, -0.421730,
		0.921169, -0.108321, 0.373784,
		17.002560, 15.598045, 20.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814787, 15.889199, 19.559059>,  <16.357742, 15.673870, 20.101892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814787, 15.889199, 19.559059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026321, 15.640976, 19.790657>,  <17.153242, 15.492042, 19.929617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026321, 15.640976, 19.790657>,  <16.814787, 15.889199, 19.559059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026321, 15.640976, 19.790657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314545, -0.490314, -0.812806,
		0.788284, 0.611963, -0.064103,
		0.528838, -0.620559, 0.578997,
		17.184973, 15.454808, 19.964355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414494, 15.811999, 19.256453>,  <16.814787, 15.889199, 19.559059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414494, 15.811999, 19.256453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421829, 15.502584, 19.509848>,  <17.426229, 15.316936, 19.661884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421829, 15.502584, 19.509848>,  <17.414494, 15.811999, 19.256453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421829, 15.502584, 19.509848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428665, -0.566324, -0.703934,
		0.903277, 0.284462, 0.321203,
		0.018337, -0.773536, 0.633487,
		17.427330, 15.270524, 19.699894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022224, 15.665654, 19.186392>,  <17.414494, 15.811999, 19.256453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022224, 15.665654, 19.186392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874374, 15.322605, 19.329422>,  <17.785664, 15.116776, 19.415239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874374, 15.322605, 19.329422>,  <18.022224, 15.665654, 19.186392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874374, 15.322605, 19.329422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544809, -0.511771, -0.664284,
		0.752701, -0.050727, 0.656405,
		-0.369626, -0.857623, 0.357574,
		17.763487, 15.065318, 19.436695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588161, 15.229566, 19.346426>,  <18.022224, 15.665654, 19.186392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588161, 15.229566, 19.346426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.266510, 14.996638, 19.298626>,  <18.073519, 14.856882, 19.269947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.266510, 14.996638, 19.298626>,  <18.588161, 15.229566, 19.346426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266510, 14.996638, 19.298626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525783, -0.602928, -0.600025,
		0.277356, -0.545328, 0.791006,
		-0.804131, -0.582318, -0.119498,
		18.025270, 14.821943, 19.262775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855581, 14.579827, 19.367872>,  <18.588161, 15.229566, 19.346426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855581, 14.579827, 19.367872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502443, 14.549602, 19.182455>,  <18.290560, 14.531466, 19.071205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502443, 14.549602, 19.182455>,  <18.855581, 14.579827, 19.367872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502443, 14.549602, 19.182455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431741, -0.519099, -0.737656,
		-0.184884, -0.851367, 0.490909,
		-0.882846, -0.075565, -0.463544,
		18.237589, 14.526932, 19.043392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801718, 13.896912, 19.128487>,  <18.855581, 14.579827, 19.367872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801718, 13.896912, 19.128487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556917, 14.107653, 18.892563>,  <18.410036, 14.234097, 18.751009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556917, 14.107653, 18.892563>,  <18.801718, 13.896912, 19.128487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556917, 14.107653, 18.892563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396487, -0.440896, -0.805238,
		-0.684289, -0.726661, 0.060938,
		-0.612003, 0.526854, -0.589812,
		18.373316, 14.265709, 18.715620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772602, 13.510581, 18.555876>,  <18.801718, 13.896912, 19.128487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.772602, 13.510581, 18.555876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619183, 13.851115, 18.412701>,  <18.527132, 14.055436, 18.326796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619183, 13.851115, 18.412701>,  <18.772602, 13.510581, 18.555876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619183, 13.851115, 18.412701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415172, -0.187258, -0.890262,
		-0.824939, -0.490063, -0.281628,
		-0.383547, 0.851336, -0.357937,
		18.504118, 14.106516, 18.305319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518154, 13.298730, 17.954796>,  <18.772602, 13.510581, 18.555876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518154, 13.298730, 17.954796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535429, 13.697872, 17.935122>,  <18.545794, 13.937358, 17.923317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535429, 13.697872, 17.935122>,  <18.518154, 13.298730, 17.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535429, 13.697872, 17.935122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443058, -0.063253, -0.894259,
		-0.895452, 0.016827, -0.444840,
		0.043185, 0.997856, -0.049185,
		18.548384, 13.997229, 17.920366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318041, 13.515949, 17.261070>,  <18.518154, 13.298730, 17.954796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318041, 13.515949, 17.261070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499788, 13.849581, 17.386202>,  <18.608837, 14.049760, 17.461281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499788, 13.849581, 17.386202>,  <18.318041, 13.515949, 17.261070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499788, 13.849581, 17.386202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531430, 0.028043, -0.846638,
		-0.714935, 0.550933, -0.430512,
		0.454368, 0.834078, 0.312831,
		18.636099, 14.099804, 17.480051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174364, 13.861184, 16.753983>,  <18.318041, 13.515949, 17.261070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174364, 13.861184, 16.753983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489779, 14.023378, 16.938932>,  <18.679028, 14.120695, 17.049902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489779, 14.023378, 16.938932>,  <18.174364, 13.861184, 16.753983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489779, 14.023378, 16.938932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403331, 0.226589, -0.886556,
		-0.464253, 0.885573, 0.015129,
		0.788538, 0.405484, 0.462374,
		18.726339, 14.145023, 17.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380939, 14.484851, 16.321234>,  <18.174364, 13.861184, 16.753983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380939, 14.484851, 16.321234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.700867, 14.425055, 16.553766>,  <18.892822, 14.389177, 16.693285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.700867, 14.425055, 16.553766>,  <18.380939, 14.484851, 16.321234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700867, 14.425055, 16.553766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596029, 0.083235, -0.798637,
		0.071002, 0.985254, 0.155673,
		0.799818, -0.149490, 0.581330,
		18.940811, 14.380207, 16.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802666, 15.049334, 16.229431>,  <18.380939, 14.484851, 16.321234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802666, 15.049334, 16.229431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.995520, 14.717830, 16.343063>,  <19.111233, 14.518928, 16.411242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.995520, 14.717830, 16.343063>,  <18.802666, 15.049334, 16.229431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995520, 14.717830, 16.343063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398034, -0.081646, -0.913730,
		0.780458, 0.553615, 0.290510,
		0.482136, -0.828761, 0.284079,
		19.140160, 14.469201, 16.428288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385979, 15.190050, 16.074419>,  <18.802666, 15.049334, 16.229431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385979, 15.190050, 16.074419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.425716, 14.794286, 16.116749>,  <19.449558, 14.556828, 16.142147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.425716, 14.794286, 16.116749>,  <19.385979, 15.190050, 16.074419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425716, 14.794286, 16.116749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388712, -0.059312, -0.919448,
		0.915988, 0.132475, 0.378704,
		0.099343, -0.989410, 0.105824,
		19.455519, 14.497462, 16.148497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116732, 14.915942, 16.000908>,  <19.385979, 15.190050, 16.074419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116732, 14.915942, 16.000908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874531, 14.611773, 15.906993>,  <19.729210, 14.429271, 15.850644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.874531, 14.611773, 15.906993>,  <20.116732, 14.915942, 16.000908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874531, 14.611773, 15.906993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342450, 0.017356, -0.939376,
		0.718399, -0.649195, 0.249898,
		-0.605501, -0.760424, -0.234785,
		19.692881, 14.383645, 15.836557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.559460, 14.411490, 15.627375>,  <20.116732, 14.915942, 16.000908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.559460, 14.411490, 15.627375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186068, 14.328815, 15.510140>,  <19.962032, 14.279211, 15.439800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186068, 14.328815, 15.510140>,  <20.559460, 14.411490, 15.627375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186068, 14.328815, 15.510140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320734, -0.115480, -0.940103,
		0.160462, -0.971568, 0.174090,
		-0.933478, -0.206687, -0.293085,
		19.906025, 14.266809, 15.422215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408470, 13.726834, 15.325550>,  <20.559460, 14.411490, 15.627375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408470, 13.726834, 15.325550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.158804, 13.980599, 15.143150>,  <20.009005, 14.132858, 15.033710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.158804, 13.980599, 15.143150>,  <20.408470, 13.726834, 15.325550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158804, 13.980599, 15.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389755, -0.253002, -0.885484,
		-0.677131, -0.730417, -0.089350,
		-0.624167, 0.634413, -0.455999,
		19.971554, 14.170923, 15.006351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017426, 13.412128, 14.968522>,  <20.408470, 13.726834, 15.325550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017426, 13.412128, 14.968522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023666, 13.759570, 14.770418>,  <20.027411, 13.968036, 14.651556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023666, 13.759570, 14.770418>,  <20.017426, 13.412128, 14.968522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023666, 13.759570, 14.770418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273572, -0.480129, -0.833448,
		-0.961725, -0.122484, -0.245118,
		0.015604, 0.868605, -0.495260,
		20.028347, 14.020151, 14.621840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625248, 13.451656, 14.348552>,  <20.017426, 13.412128, 14.968522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625248, 13.451656, 14.348552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933535, 13.704120, 14.313604>,  <20.118507, 13.855597, 14.292636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933535, 13.704120, 14.313604>,  <19.625248, 13.451656, 14.348552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933535, 13.704120, 14.313604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183540, -0.351219, -0.918128,
		-0.610169, 0.691582, -0.386533,
		0.770719, 0.631157, -0.087369,
		20.164751, 13.893467, 14.287394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.569429, 13.954952, 13.728537>,  <19.625248, 13.451656, 14.348552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.569429, 13.954952, 13.728537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960018, 13.952688, 13.814765>,  <20.194372, 13.951330, 13.866502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960018, 13.952688, 13.814765>,  <19.569429, 13.954952, 13.728537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960018, 13.952688, 13.814765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205884, -0.272887, -0.939758,
		0.064146, 0.962029, -0.265302,
		0.976472, -0.005660, 0.215571,
		20.252960, 13.950990, 13.879436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.829897, 14.125337, 13.133917>,  <19.569429, 13.954952, 13.728537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.829897, 14.125337, 13.133917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.132706, 13.950963, 13.328598>,  <20.314390, 13.846338, 13.445407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.132706, 13.950963, 13.328598>,  <19.829897, 14.125337, 13.133917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.132706, 13.950963, 13.328598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160777, -0.597703, -0.785431,
		0.633301, 0.672839, -0.382385,
		0.757021, -0.435935, 0.486703,
		20.359812, 13.820183, 13.474608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417713, 14.000438, 12.623121>,  <19.829897, 14.125337, 13.133917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417713, 14.000438, 12.623121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419355, 13.721752, 12.910056>,  <20.420341, 13.554541, 13.082217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419355, 13.721752, 12.910056>,  <20.417713, 14.000438, 12.623121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419355, 13.721752, 12.910056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183409, -0.704650, -0.685441,
		0.983028, 0.134380, 0.124891,
		0.004105, -0.696714, 0.717337,
		20.420588, 13.512738, 13.125257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034555, 13.604491, 12.687223>,  <20.417713, 14.000438, 12.623121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034555, 13.604491, 12.687223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737864, 13.369287, 12.816270>,  <20.559849, 13.228164, 12.893698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737864, 13.369287, 12.816270>,  <21.034555, 13.604491, 12.687223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.737864, 13.369287, 12.816270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222185, -0.669274, -0.709018,
		0.632829, -0.454219, 0.627067,
		-0.741729, -0.588012, 0.322615,
		20.515345, 13.192883, 12.913054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.388885, 14.337839, 12.572460>,  <21.034555, 13.604491, 12.687223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.388885, 14.337839, 12.572460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.758436, 14.460216, 12.480502>,  <21.980167, 14.533641, 12.425327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.758436, 14.460216, 12.480502>,  <21.388885, 14.337839, 12.572460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758436, 14.460216, 12.480502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130636, -0.816778, -0.561967,
		-0.359702, 0.489156, -0.794569,
		0.923877, 0.305940, -0.229896,
		22.035599, 14.551998, 12.411533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.543463, 14.360194, 11.793331>,  <21.388885, 14.337839, 12.572460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.543463, 14.360194, 11.793331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.810783, 14.261918, 12.074188>,  <21.971176, 14.202952, 12.242702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.810783, 14.261918, 12.074188>,  <21.543463, 14.360194, 11.793331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810783, 14.261918, 12.074188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037117, -0.953721, -0.298394,
		0.742962, 0.173356, -0.646495,
		0.668304, -0.245691, 0.702144,
		22.011274, 14.188210, 12.284831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913260, 14.815615, 11.292764>,  <21.543463, 14.360194, 11.793331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913260, 14.815615, 11.292764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575611, 14.604732, 11.253745>,  <21.373022, 14.478202, 11.230334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575611, 14.604732, 11.253745>,  <21.913260, 14.815615, 11.292764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575611, 14.604732, 11.253745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197447, 0.474819, -0.857649,
		0.498486, -0.704691, -0.504898,
		-0.844113, -0.527216, -0.097552,
		21.322376, 14.446569, 11.224482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938412, 14.579231, 10.617510>,  <21.913260, 14.815615, 11.292764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938412, 14.579231, 10.617510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.550812, 14.569278, 10.715836>,  <21.318253, 14.563306, 10.774831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.550812, 14.569278, 10.715836>,  <21.938412, 14.579231, 10.617510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.550812, 14.569278, 10.715836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233965, 0.412147, -0.880565,
		-0.079401, -0.910777, -0.405191,
		-0.968997, -0.024883, 0.245815,
		21.260113, 14.561812, 10.789580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.514500, 14.302728, 10.064578>,  <21.938412, 14.579231, 10.617510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.514500, 14.302728, 10.064578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266489, 14.516049, 10.294763>,  <21.117683, 14.644042, 10.432874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266489, 14.516049, 10.294763>,  <21.514500, 14.302728, 10.064578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266489, 14.516049, 10.294763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305551, 0.511425, -0.803170,
		-0.722639, -0.673819, -0.154145,
		-0.620025, 0.533303, 0.575462,
		21.080481, 14.676041, 10.467402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051697, 14.312593, 9.555741>,  <21.514500, 14.302728, 10.064578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051697, 14.312593, 9.555741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007847, 14.582971, 9.847242>,  <20.981537, 14.745197, 10.022143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007847, 14.582971, 9.847242>,  <21.051697, 14.312593, 9.555741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007847, 14.582971, 9.847242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117465, 0.719224, -0.684777,
		-0.987008, -0.160671, 0.000556,
		-0.109624, 0.675945, 0.728753,
		20.974960, 14.785754, 10.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557487, 14.671605, 9.208685>,  <21.051697, 14.312593, 9.555741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557487, 14.671605, 9.208685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741104, 14.889763, 9.489206>,  <20.851274, 15.020658, 9.657519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741104, 14.889763, 9.489206>,  <20.557487, 14.671605, 9.208685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741104, 14.889763, 9.489206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068336, 0.808724, -0.584204,
		-0.885783, 0.220250, 0.408508,
		0.459042, 0.545394, 0.701303,
		20.878817, 15.053381, 9.699597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.318638, 15.339483, 9.074243>,  <20.557487, 14.671605, 9.208685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.318638, 15.339483, 9.074243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631794, 15.422756, 9.308761>,  <20.819687, 15.472720, 9.449471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631794, 15.422756, 9.308761>,  <20.318638, 15.339483, 9.074243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631794, 15.422756, 9.308761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163456, 0.840428, -0.516685,
		-0.600304, 0.500341, 0.623934,
		0.782890, 0.208183, 0.586296,
		20.866661, 15.485211, 9.484650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.301449, 16.042662, 9.101566>,  <20.318638, 15.339483, 9.074243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.301449, 16.042662, 9.101566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.669476, 15.953520, 9.230444>,  <20.890291, 15.900034, 9.307771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.669476, 15.953520, 9.230444>,  <20.301449, 16.042662, 9.101566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.669476, 15.953520, 9.230444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378259, 0.719391, -0.582579,
		-0.101951, 0.657885, 0.746186,
		0.920069, -0.222857, 0.322194,
		20.945496, 15.886662, 9.327102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605648, 16.566366, 9.369687>,  <20.301449, 16.042662, 9.101566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605648, 16.566366, 9.369687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903734, 16.334064, 9.238614>,  <21.082586, 16.194683, 9.159970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903734, 16.334064, 9.238614>,  <20.605648, 16.566366, 9.369687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903734, 16.334064, 9.238614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371515, 0.769678, -0.519203,
		0.553739, 0.265181, 0.789336,
		0.745218, -0.580754, -0.327683,
		21.127300, 16.159838, 9.140309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055561, 16.955971, 9.337887>,  <20.605648, 16.566366, 9.369687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055561, 16.955971, 9.337887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.239580, 16.670153, 9.127068>,  <21.349993, 16.498661, 9.000576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.239580, 16.670153, 9.127068>,  <21.055561, 16.955971, 9.337887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239580, 16.670153, 9.127068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349633, 0.691423, -0.632211,
		0.816157, 0.106575, 0.567918,
		0.460049, -0.714546, -0.527048,
		21.377594, 16.455790, 8.968953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715258, 17.214050, 9.288799>,  <21.055561, 16.955971, 9.337887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.715258, 17.214050, 9.288799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637762, 16.957996, 8.991426>,  <21.591265, 16.804363, 8.813003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637762, 16.957996, 8.991426>,  <21.715258, 17.214050, 9.288799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637762, 16.957996, 8.991426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291936, 0.685842, -0.666628,
		0.936610, -0.346187, 0.054004,
		-0.193740, -0.640136, -0.743431,
		21.579639, 16.765955, 8.768397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242281, 17.278275, 8.783453>,  <21.715258, 17.214050, 9.288799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242281, 17.278275, 8.783453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945372, 17.111881, 8.573317>,  <21.767225, 17.012045, 8.447234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945372, 17.111881, 8.573317>,  <22.242281, 17.278275, 8.783453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945372, 17.111881, 8.573317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113890, 0.694258, -0.710658,
		0.660340, -0.587338, -0.467958,
		-0.742280, -0.415980, -0.525338,
		21.722689, 16.987085, 8.415714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.395914, 17.500996, 8.048326>,  <22.242281, 17.278275, 8.783453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.395914, 17.500996, 8.048326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.026455, 17.353817, 8.005450>,  <21.804779, 17.265511, 7.979724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.026455, 17.353817, 8.005450>,  <22.395914, 17.500996, 8.048326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.026455, 17.353817, 8.005450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175035, 0.653833, -0.736115,
		0.340935, -0.661149, -0.668315,
		-0.923648, -0.367946, -0.107190,
		21.749361, 17.243433, 7.973293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254040, 17.344788, 7.285699>,  <22.395914, 17.500996, 8.048326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254040, 17.344788, 7.285699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894741, 17.421547, 7.443854>,  <21.679163, 17.467604, 7.538747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894741, 17.421547, 7.443854>,  <22.254040, 17.344788, 7.285699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894741, 17.421547, 7.443854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180345, 0.659466, -0.729781,
		-0.400790, -0.726828, -0.557753,
		-0.898244, 0.191901, 0.395387,
		21.625267, 17.479116, 7.562470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962414, 17.492441, 6.789426>,  <22.254040, 17.344788, 7.285699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962414, 17.492441, 6.789426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.679239, 17.624994, 7.038910>,  <21.509335, 17.704525, 7.188600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.679239, 17.624994, 7.038910>,  <21.962414, 17.492441, 6.789426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.679239, 17.624994, 7.038910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251105, 0.707302, -0.660810,
		-0.660131, -0.624428, -0.417513,
		-0.707936, 0.331381, 0.623709,
		21.466858, 17.724409, 7.226023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.307602, 17.540581, 6.347111>,  <21.962414, 17.492441, 6.789426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.307602, 17.540581, 6.347111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322145, 17.784613, 6.663714>,  <21.330872, 17.931030, 6.853676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322145, 17.784613, 6.663714>,  <21.307602, 17.540581, 6.347111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322145, 17.784613, 6.663714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223289, 0.776966, -0.588613,
		-0.974074, -0.155335, 0.164472,
		0.036357, 0.610077, 0.791507,
		21.333052, 17.967636, 6.901166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713758, 17.977289, 6.247411>,  <21.307602, 17.540581, 6.347111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713758, 17.977289, 6.247411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963261, 18.155478, 6.504312>,  <21.112963, 18.262390, 6.658452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963261, 18.155478, 6.504312>,  <20.713758, 17.977289, 6.247411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963261, 18.155478, 6.504312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155686, 0.876037, -0.456422,
		-0.765957, 0.184706, 0.615786,
		0.623756, 0.445469, 0.642251,
		21.150387, 18.289118, 6.696987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310617, 18.541370, 6.367159>,  <20.713758, 17.977289, 6.247411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310617, 18.541370, 6.367159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.692547, 18.605797, 6.467055>,  <20.921705, 18.644453, 6.526992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.692547, 18.605797, 6.467055>,  <20.310617, 18.541370, 6.367159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.692547, 18.605797, 6.467055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023144, 0.878132, -0.477858,
		-0.296272, 0.450490, 0.842189,
		0.954823, 0.161067, 0.249740,
		20.978994, 18.654118, 6.541977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407532, 19.244085, 6.608359>,  <20.310617, 18.541370, 6.367159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407532, 19.244085, 6.608359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767931, 19.114887, 6.492515>,  <20.984171, 19.037369, 6.423008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767931, 19.114887, 6.492515>,  <20.407532, 19.244085, 6.608359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767931, 19.114887, 6.492515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094500, 0.797678, -0.595634,
		0.423403, 0.509298, 0.749230,
		0.900999, -0.322995, -0.289610,
		21.038231, 19.017988, 6.405632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731411, 19.883562, 6.632644>,  <20.407532, 19.244085, 6.608359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731411, 19.883562, 6.632644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.922314, 19.629766, 6.389448>,  <21.036856, 19.477489, 6.243530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.922314, 19.629766, 6.389448>,  <20.731411, 19.883562, 6.632644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922314, 19.629766, 6.389448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079521, 0.720214, -0.689180,
		0.875158, 0.280568, 0.394182,
		0.477257, -0.634487, -0.607990,
		21.065491, 19.439421, 6.207051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237806, 20.285261, 6.435599>,  <20.731411, 19.883562, 6.632644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237806, 20.285261, 6.435599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241886, 19.990620, 6.165101>,  <21.244333, 19.813835, 6.002801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.241886, 19.990620, 6.165101>,  <21.237806, 20.285261, 6.435599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241886, 19.990620, 6.165101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219198, 0.661480, -0.717215,
		0.975627, -0.140917, 0.168209,
		0.010199, -0.736605, -0.676246,
		21.244946, 19.769638, 5.962227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722486, 20.302452, 5.971729>,  <21.237806, 20.285261, 6.435599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722486, 20.302452, 5.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.457230, 20.088963, 5.761822>,  <21.298075, 19.960869, 5.635878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.457230, 20.088963, 5.761822>,  <21.722486, 20.302452, 5.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.457230, 20.088963, 5.761822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213188, 0.537377, -0.815951,
		0.717490, -0.652967, -0.242574,
		-0.663143, -0.533723, -0.524768,
		21.258286, 19.928846, 5.604392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.208580, 20.162107, 5.409824>,  <21.722486, 20.302452, 5.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.208580, 20.162107, 5.409824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817436, 20.172012, 5.326709>,  <21.582750, 20.177956, 5.276840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817436, 20.172012, 5.326709>,  <22.208580, 20.162107, 5.409824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817436, 20.172012, 5.326709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182474, 0.586959, -0.788785,
		0.102431, -0.809238, -0.578483,
		-0.977860, 0.024762, -0.207788,
		21.524078, 20.179441, 5.264372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.201052, 19.968018, 4.688414>,  <22.208580, 20.162107, 5.409824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.201052, 19.968018, 4.688414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.917629, 20.210915, 4.832195>,  <21.747576, 20.356653, 4.918464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.917629, 20.210915, 4.832195>,  <22.201052, 19.968018, 4.688414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.917629, 20.210915, 4.832195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277699, 0.708237, -0.649064,
		-0.648717, -0.360077, -0.670455,
		-0.708555, 0.607243, 0.359453,
		21.705063, 20.393087, 4.940031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631178, 20.499563, 4.818528>,  <22.201052, 19.968018, 4.688414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631178, 20.499563, 4.818528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955475, 20.678766, 4.969250>,  <23.150053, 20.786287, 5.059683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.955475, 20.678766, 4.969250>,  <22.631178, 20.499563, 4.818528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.955475, 20.678766, 4.969250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076220, -0.718977, 0.690842,
		0.580417, -0.531377, -0.617054,
		0.810745, 0.448008, 0.376805,
		23.198698, 20.813169, 5.082291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.251204, 20.008696, 4.836720>,  <22.631178, 20.499563, 4.818528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.251204, 20.008696, 4.836720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334505, 20.263712, 5.133414>,  <23.384485, 20.416721, 5.311431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334505, 20.263712, 5.133414>,  <23.251204, 20.008696, 4.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334505, 20.263712, 5.133414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335009, -0.758986, 0.558310,
		0.918912, 0.132218, -0.371643,
		0.208253, 0.637541, 0.741736,
		23.396980, 20.454975, 5.355935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.948635, 19.976175, 5.095917>,  <23.251204, 20.008696, 4.836720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.948635, 19.976175, 5.095917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708923, 20.109814, 5.386914>,  <23.565096, 20.189997, 5.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.708923, 20.109814, 5.386914>,  <23.948635, 19.976175, 5.095917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708923, 20.109814, 5.386914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367496, -0.692528, 0.620767,
		0.711205, 0.639363, 0.292238,
		-0.599278, 0.334096, 0.727493,
		23.529140, 20.210043, 5.605162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377674, 20.109436, 5.822319>,  <23.948635, 19.976175, 5.095917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377674, 20.109436, 5.822319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.998991, 19.990183, 5.871078>,  <23.771780, 19.918631, 5.900332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.998991, 19.990183, 5.871078>,  <24.377674, 20.109436, 5.822319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.998991, 19.990183, 5.871078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317921, -0.804246, 0.502110,
		-0.051661, 0.514106, 0.856170,
		-0.946709, -0.298134, 0.121896,
		23.714979, 19.900743, 5.907647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397322, 19.780197, 6.405407>,  <24.377674, 20.109436, 5.822319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397322, 19.780197, 6.405407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.054926, 19.651508, 6.243530>,  <23.849487, 19.574295, 6.146403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.054926, 19.651508, 6.243530>,  <24.397322, 19.780197, 6.405407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.054926, 19.651508, 6.243530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086482, -0.860861, 0.501437,
		-0.509707, 0.394226, 0.764712,
		-0.855990, -0.321720, -0.404694,
		23.798128, 19.554993, 6.122122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.785505, 19.842119, 6.926888>,  <24.397322, 19.780197, 6.405407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.785505, 19.842119, 6.926888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.801088, 19.538372, 6.667090>,  <23.810438, 19.356123, 6.511211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.801088, 19.538372, 6.667090>,  <23.785505, 19.842119, 6.926888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801088, 19.538372, 6.667090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199783, -0.630945, 0.749663,
		-0.979065, -0.158964, 0.127127,
		0.038960, -0.759367, -0.649495,
		23.812777, 19.310562, 6.472241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178488, 19.232151, 7.032921>,  <23.785505, 19.842119, 6.926888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178488, 19.232151, 7.032921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535141, 19.112150, 6.897283>,  <23.749134, 19.040150, 6.815900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535141, 19.112150, 6.897283>,  <23.178488, 19.232151, 7.032921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535141, 19.112150, 6.897283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113128, -0.577577, 0.808459,
		-0.438392, -0.759212, -0.481050,
		0.891636, -0.300002, -0.339094,
		23.802631, 19.022150, 6.795555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.253580, 18.393393, 6.879732>,  <23.178488, 19.232151, 7.032921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.253580, 18.393393, 6.879732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.609398, 18.546459, 6.979555>,  <23.822887, 18.638300, 7.039448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.609398, 18.546459, 6.979555>,  <23.253580, 18.393393, 6.879732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.609398, 18.546459, 6.979555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116733, -0.718507, 0.685654,
		0.441685, -0.580788, -0.683813,
		0.889544, 0.382666, 0.249557,
		23.876261, 18.661259, 7.054421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847828, 17.850609, 6.897689>,  <23.253580, 18.393393, 6.879732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847828, 17.850609, 6.897689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.962601, 18.141586, 7.147007>,  <24.031464, 18.316174, 7.296597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.962601, 18.141586, 7.147007>,  <23.847828, 17.850609, 6.897689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.962601, 18.141586, 7.147007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105017, -0.670618, 0.734331,
		0.952177, -0.145246, -0.268816,
		0.286932, 0.727444, 0.623294,
		24.048679, 18.359819, 7.333995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470125, 17.615868, 7.283269>,  <23.847828, 17.850609, 6.897689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470125, 17.615868, 7.283269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325661, 17.918018, 7.501982>,  <24.238983, 18.099308, 7.633209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325661, 17.918018, 7.501982>,  <24.470125, 17.615868, 7.283269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325661, 17.918018, 7.501982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078450, -0.559667, 0.824996,
		0.929198, 0.340851, 0.142870,
		-0.361160, 0.755377, 0.546781,
		24.217312, 18.144630, 7.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913179, 17.659300, 7.895459>,  <24.470125, 17.615868, 7.283269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913179, 17.659300, 7.895459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587507, 17.868317, 7.996700>,  <24.392105, 17.993727, 8.057445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587507, 17.868317, 7.996700>,  <24.913179, 17.659300, 7.895459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587507, 17.868317, 7.996700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052517, -0.500414, 0.864192,
		0.578234, 0.690315, 0.434870,
		-0.814179, 0.522543, 0.253103,
		24.343254, 18.025080, 8.072631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037554, 17.816145, 8.631316>,  <24.913179, 17.659300, 7.895459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037554, 17.816145, 8.631316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644562, 17.881653, 8.595744>,  <24.408766, 17.920958, 8.574401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644562, 17.881653, 8.595744>,  <25.037554, 17.816145, 8.631316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644562, 17.881653, 8.595744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143397, -0.359581, 0.922030,
		0.119024, 0.918630, 0.376766,
		-0.982482, 0.163770, -0.088930,
		24.349817, 17.930784, 8.569065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892715, 18.020563, 9.235657>,  <25.037554, 17.816145, 8.631316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892715, 18.020563, 9.235657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544474, 17.919182, 9.066986>,  <24.335529, 17.858353, 8.965784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544474, 17.919182, 9.066986>,  <24.892715, 18.020563, 9.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544474, 17.919182, 9.066986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287850, -0.432671, 0.854364,
		-0.398987, 0.865193, 0.303729,
		-0.870604, -0.253452, -0.421676,
		24.283293, 17.843145, 8.940483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344385, 18.240000, 9.643275>,  <24.892715, 18.020563, 9.235657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.344385, 18.240000, 9.643275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201303, 17.918919, 9.452396>,  <24.115454, 17.726271, 9.337869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201303, 17.918919, 9.452396>,  <24.344385, 18.240000, 9.643275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201303, 17.918919, 9.452396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110311, -0.471110, 0.875150,
		-0.927297, 0.365685, 0.079971,
		-0.357704, -0.802702, -0.477197,
		24.093992, 17.678108, 9.309237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.883299, 17.946777, 10.120599>,  <24.344385, 18.240000, 9.643275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.883299, 17.946777, 10.120599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.961708, 17.655619, 9.857770>,  <24.008755, 17.480925, 9.700072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.961708, 17.655619, 9.857770>,  <23.883299, 17.946777, 10.120599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961708, 17.655619, 9.857770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286794, -0.683330, 0.671423,
		-0.937723, 0.056829, -0.342705,
		0.196024, -0.727895, -0.657072,
		24.020515, 17.437250, 9.660648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.465984, 17.541946, 10.334432>,  <23.883299, 17.946777, 10.120599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.465984, 17.541946, 10.334432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.691286, 17.310860, 10.098132>,  <23.826468, 17.172207, 9.956352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.691286, 17.310860, 10.098132>,  <23.465984, 17.541946, 10.334432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.691286, 17.310860, 10.098132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112962, -0.762074, 0.637560,
		-0.818526, -0.292375, -0.494502,
		0.563254, -0.577719, -0.590750,
		23.860262, 17.137545, 9.920907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.129190, 17.058004, 10.156074>,  <23.465984, 17.541946, 10.334432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.129190, 17.058004, 10.156074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.496572, 16.906830, 10.109424>,  <23.717003, 16.816126, 10.081433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.496572, 16.906830, 10.109424>,  <23.129190, 17.058004, 10.156074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.496572, 16.906830, 10.109424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266676, -0.809488, 0.523080,
		-0.292098, -0.449326, -0.844266,
		0.918457, -0.377936, -0.116626,
		23.772110, 16.793449, 10.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.987597, 16.384018, 10.115553>,  <23.129190, 17.058004, 10.156074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.987597, 16.384018, 10.115553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382067, 16.373438, 10.180984>,  <23.618750, 16.367090, 10.220243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382067, 16.373438, 10.180984>,  <22.987597, 16.384018, 10.115553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.382067, 16.373438, 10.180984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095834, -0.896378, 0.432807,
		0.135178, -0.442500, -0.886522,
		0.986176, -0.026452, 0.163577,
		23.677919, 16.365501, 10.230057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.267994, 15.661281, 9.842088>,  <22.987597, 16.384018, 10.115553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.267994, 15.661281, 9.842088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556721, 15.787770, 10.088333>,  <23.729958, 15.863665, 10.236080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556721, 15.787770, 10.088333>,  <23.267994, 15.661281, 9.842088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.556721, 15.787770, 10.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221172, -0.948263, 0.227771,
		0.655790, -0.028253, -0.754414,
		0.721819, 0.316225, 0.615613,
		23.773266, 15.882638, 10.273017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784428, 15.248695, 9.704235>,  <23.267994, 15.661281, 9.842088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784428, 15.248695, 9.704235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872814, 15.373502, 10.073844>,  <23.925846, 15.448385, 10.295609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872814, 15.373502, 10.073844>,  <23.784428, 15.248695, 9.704235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872814, 15.373502, 10.073844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136972, -0.947981, 0.287351,
		0.965615, 0.063070, -0.252210,
		0.220967, 0.312016, 0.924023,
		23.939104, 15.467107, 10.351051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.514456, 14.904159, 9.900331>,  <23.784428, 15.248695, 9.704235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.514456, 14.904159, 9.900331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293495, 14.973196, 10.226537>,  <24.160919, 15.014619, 10.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293495, 14.973196, 10.226537>,  <24.514456, 14.904159, 9.900331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293495, 14.973196, 10.226537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111190, -0.954331, 0.277288,
		0.826130, 0.243851, 0.507982,
		-0.552400, 0.172594, 0.815516,
		24.127775, 15.024974, 10.471191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773987, 14.402534, 10.462186>,  <24.514456, 14.904159, 9.900331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773987, 14.402534, 10.462186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446644, 14.527306, 10.655263>,  <24.250238, 14.602168, 10.771109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446644, 14.527306, 10.655263>,  <24.773987, 14.402534, 10.462186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446644, 14.527306, 10.655263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009908, -0.847421, 0.530829,
		0.574624, 0.429625, 0.696584,
		-0.818358, 0.311928, 0.482692,
		24.201136, 14.620884, 10.800071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932671, 14.143129, 11.162519>,  <24.773987, 14.402534, 10.462186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932671, 14.143129, 11.162519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544807, 14.231289, 11.120205>,  <24.312090, 14.284184, 11.094816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544807, 14.231289, 11.120205>,  <24.932671, 14.143129, 11.162519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544807, 14.231289, 11.120205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241590, -0.797611, 0.552677,
		0.037433, 0.561464, 0.826654,
		-0.969656, 0.220400, -0.105787,
		24.253910, 14.297409, 11.088469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636799, 14.094357, 11.858173>,  <24.932671, 14.143129, 11.162519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636799, 14.094357, 11.858173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350786, 14.024256, 11.587466>,  <24.179178, 13.982195, 11.425042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350786, 14.024256, 11.587466>,  <24.636799, 14.094357, 11.858173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350786, 14.024256, 11.587466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265109, -0.827786, 0.494457,
		-0.646874, 0.532970, 0.545433,
		-0.715032, -0.175252, -0.676768,
		24.136276, 13.971680, 11.384436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202278, 14.434619, 12.292354>,  <24.636799, 14.094357, 11.858173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202278, 14.434619, 12.292354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276937, 14.253324, 11.943702>,  <25.321733, 14.144547, 11.734510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276937, 14.253324, 11.943702>,  <25.202278, 14.434619, 12.292354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276937, 14.253324, 11.943702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582590, 0.663320, -0.469675,
		0.791044, 0.595467, -0.140244,
		0.186649, -0.453239, -0.871629,
		25.332932, 14.117352, 11.682213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999537, 14.495315, 12.104657>,  <25.202278, 14.434619, 12.292354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999537, 14.495315, 12.104657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974249, 14.128572, 12.262330>,  <25.959076, 13.908527, 12.356934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974249, 14.128572, 12.262330>,  <25.999537, 14.495315, 12.104657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974249, 14.128572, 12.262330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399784, 0.338632, 0.851764,
		-0.914427, 0.211436, 0.345136,
		-0.063220, -0.916855, 0.394183,
		25.955282, 13.853516, 12.380585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847044, 14.538547, 12.831180>,  <25.999537, 14.495315, 12.104657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847044, 14.538547, 12.831180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081676, 14.214591, 12.830828>,  <26.222456, 14.020218, 12.830617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081676, 14.214591, 12.830828>,  <25.847044, 14.538547, 12.831180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081676, 14.214591, 12.830828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416786, 0.300936, 0.857746,
		-0.694414, -0.503505, 0.514074,
		0.586582, -0.809889, -0.000880,
		26.257650, 13.971624, 12.830564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524719, 14.189581, 13.311696>,  <25.847044, 14.538547, 12.831180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524719, 14.189581, 13.311696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914988, 14.126088, 13.251199>,  <26.149149, 14.087993, 13.214900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914988, 14.126088, 13.251199>,  <25.524719, 14.189581, 13.311696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914988, 14.126088, 13.251199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187076, 0.242973, 0.951823,
		-0.114336, -0.956958, 0.266756,
		0.975669, -0.158731, -0.151244,
		26.207687, 14.078469, 13.205826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792372, 13.700012, 13.900359>,  <25.524719, 14.189581, 13.311696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792372, 13.700012, 13.900359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071716, 13.955146, 13.770461>,  <26.239323, 14.108226, 13.692522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071716, 13.955146, 13.770461>,  <25.792372, 13.700012, 13.900359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071716, 13.955146, 13.770461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125083, 0.337974, 0.932806,
		0.704731, -0.692056, 0.156246,
		0.698361, 0.637834, -0.324746,
		26.281225, 14.146496, 13.673038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462814, 13.823719, 14.403666>,  <25.792372, 13.700012, 13.900359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462814, 13.823719, 14.403666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444332, 14.168329, 14.201425>,  <26.433243, 14.375095, 14.080079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444332, 14.168329, 14.201425>,  <26.462814, 13.823719, 14.403666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444332, 14.168329, 14.201425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023753, 0.506950, 0.861648,
		0.998649, 0.027804, -0.043889,
		-0.046207, 0.861527, -0.505605,
		26.430470, 14.426787, 14.049743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834740, 14.288247, 14.832295>,  <26.462814, 13.823719, 14.403666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834740, 14.288247, 14.832295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561083, 14.478305, 14.610960>,  <26.396889, 14.592340, 14.478159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561083, 14.478305, 14.610960>,  <26.834740, 14.288247, 14.832295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561083, 14.478305, 14.610960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178439, 0.626579, 0.758656,
		0.707182, 0.617767, -0.343886,
		-0.684144, 0.475145, -0.553339,
		26.355839, 14.620849, 14.444959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987099, 15.046150, 14.810806>,  <26.834740, 14.288247, 14.832295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987099, 15.046150, 14.810806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589138, 15.013783, 14.786716>,  <26.350363, 14.994362, 14.772263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589138, 15.013783, 14.786716>,  <26.987099, 15.046150, 14.810806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589138, 15.013783, 14.786716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099319, 0.681524, 0.725024,
		-0.017624, 0.727308, -0.686085,
		-0.994900, -0.080919, -0.060225,
		26.290668, 14.989507, 14.768649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.723424, 19.386362, 20.026628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.338635, 19.279053, 20.006065>,  <13.107762, 19.214666, 19.993727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.338635, 19.279053, 20.006065>,  <13.723424, 19.386362, 20.026628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338635, 19.279053, 20.006065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239576, -0.738240, -0.630559,
		0.131211, -0.618895, 0.774437,
		-0.961970, -0.268273, -0.051407,
		13.050044, 19.198570, 19.990643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550585, 18.721243, 20.290422>,  <13.723424, 19.386362, 20.026628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550585, 18.721243, 20.290422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.237854, 18.760406, 20.044119>,  <13.050216, 18.783905, 19.896338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.237854, 18.760406, 20.044119>,  <13.550585, 18.721243, 20.290422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237854, 18.760406, 20.044119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334999, -0.766967, -0.547299,
		-0.525852, -0.634173, 0.566837,
		-0.781828, 0.097908, -0.615759,
		13.003305, 18.789780, 19.859390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515540, 18.138466, 20.003620>,  <13.550585, 18.721243, 20.290422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515540, 18.138466, 20.003620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.234162, 18.294708, 19.766102>,  <13.065336, 18.388454, 19.623590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.234162, 18.294708, 19.766102>,  <13.515540, 18.138466, 20.003620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.234162, 18.294708, 19.766102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132152, -0.749000, -0.649257,
		-0.698355, -0.535189, 0.475262,
		-0.703446, 0.390605, -0.593794,
		13.023129, 18.411890, 19.587963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160591, 17.506809, 19.765062>,  <13.515540, 18.138466, 20.003620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160591, 17.506809, 19.765062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.072786, 17.809664, 19.518955>,  <13.020103, 17.991377, 19.371290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.072786, 17.809664, 19.518955>,  <13.160591, 17.506809, 19.765062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072786, 17.809664, 19.518955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039914, -0.623153, -0.781081,
		-0.974793, -0.196014, 0.106568,
		-0.219511, 0.757138, -0.615269,
		13.006933, 18.036806, 19.334375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.454479, 17.379105, 19.481058>,  <13.160591, 17.506809, 19.765062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.454479, 17.379105, 19.481058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.653833, 17.621292, 19.232859>,  <12.773446, 17.766605, 19.083939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.653833, 17.621292, 19.232859>,  <12.454479, 17.379105, 19.481058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653833, 17.621292, 19.232859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159633, -0.639393, -0.752126,
		-0.852132, 0.473900, -0.222011,
		0.498385, 0.605470, -0.620498,
		12.803349, 17.802933, 19.046709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167915, 17.069967, 18.844616>,  <12.454479, 17.379105, 19.481058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167915, 17.069967, 18.844616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.448584, 17.328236, 18.724108>,  <12.616984, 17.483196, 18.651802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.448584, 17.328236, 18.724108>,  <12.167915, 17.069967, 18.844616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.448584, 17.328236, 18.724108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186909, -0.574831, -0.796639,
		-0.687549, 0.502668, -0.524024,
		0.701671, 0.645673, -0.301272,
		12.659084, 17.521938, 18.633726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082846, 17.217731, 18.094612>,  <12.167915, 17.069967, 18.844616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082846, 17.217731, 18.094612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.468806, 17.304399, 18.153965>,  <12.700383, 17.356400, 18.189577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.468806, 17.304399, 18.153965>,  <12.082846, 17.217731, 18.094612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.468806, 17.304399, 18.153965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225632, -0.394918, -0.890578,
		-0.134363, 0.892801, -0.429945,
		0.964902, 0.216670, 0.148383,
		12.758277, 17.369400, 18.198481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359243, 17.499178, 17.436821>,  <12.082846, 17.217731, 18.094612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.359243, 17.499178, 17.436821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.668165, 17.354364, 17.645618>,  <12.853518, 17.267477, 17.770897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.668165, 17.354364, 17.645618>,  <12.359243, 17.499178, 17.436821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.668165, 17.354364, 17.645618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414185, -0.336062, -0.845880,
		0.481659, 0.869479, -0.109593,
		0.772305, -0.362033, 0.521993,
		12.899857, 17.245754, 17.802216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065221, 17.721275, 16.991255>,  <12.359243, 17.499178, 17.436821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065221, 17.721275, 16.991255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.134850, 17.398684, 17.217278>,  <13.176627, 17.205128, 17.352892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.134850, 17.398684, 17.217278>,  <13.065221, 17.721275, 16.991255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134850, 17.398684, 17.217278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417922, -0.459072, -0.783960,
		0.891650, 0.372615, 0.257134,
		0.174073, -0.806480, 0.565056,
		13.187072, 17.156740, 17.386795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614502, 17.434448, 16.673855>,  <13.065221, 17.721275, 16.991255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614502, 17.434448, 16.673855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.516131, 17.128613, 16.912155>,  <13.457109, 16.945110, 17.055136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.516131, 17.128613, 16.912155>,  <13.614502, 17.434448, 16.673855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516131, 17.128613, 16.912155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232820, -0.643231, -0.729416,
		0.940912, -0.040679, 0.336199,
		-0.245926, -0.764590, 0.595753,
		13.442353, 16.899235, 17.090881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261439, 17.026876, 16.747025>,  <13.614502, 17.434448, 16.673855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.261439, 17.026876, 16.747025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.951804, 16.782024, 16.811628>,  <13.766024, 16.635113, 16.850391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.951804, 16.782024, 16.811628>,  <14.261439, 17.026876, 16.747025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.951804, 16.782024, 16.811628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477047, -0.731715, -0.486846,
		0.416193, -0.299814, 0.858426,
		-0.774087, -0.612131, 0.161509,
		13.719578, 16.598385, 16.860081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579560, 16.413275, 16.798576>,  <14.261439, 17.026876, 16.747025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579560, 16.413275, 16.798576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.195437, 16.318789, 16.739233>,  <13.964964, 16.262096, 16.703627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.195437, 16.318789, 16.739233>,  <14.579560, 16.413275, 16.798576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195437, 16.318789, 16.739233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278793, -0.795362, -0.538213,
		0.009135, -0.558212, 0.829648,
		-0.960308, -0.236216, -0.148360,
		13.907345, 16.247923, 16.694725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489290, 15.649142, 17.036236>,  <14.579560, 16.413275, 16.798576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489290, 15.649142, 17.036236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.225284, 15.760223, 16.757019>,  <14.066879, 15.826872, 16.589489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.225284, 15.760223, 16.757019>,  <14.489290, 15.649142, 17.036236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.225284, 15.760223, 16.757019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341121, -0.717075, -0.607816,
		-0.669337, -0.639286, 0.378553,
		-0.660019, 0.277701, -0.698039,
		14.027279, 15.843534, 16.547607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407474, 15.106033, 16.663778>,  <14.489290, 15.649142, 17.036236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407474, 15.106033, 16.663778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.225096, 15.365179, 16.419683>,  <14.115669, 15.520666, 16.273228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.225096, 15.365179, 16.419683>,  <14.407474, 15.106033, 16.663778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.225096, 15.365179, 16.419683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168102, -0.610623, -0.773874,
		-0.873989, -0.455425, 0.169503,
		-0.455944, 0.647864, -0.610236,
		14.088312, 15.559538, 16.236612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936286, 14.714008, 16.248125>,  <14.407474, 15.106033, 16.663778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936286, 14.714008, 16.248125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.020902, 15.052201, 16.051998>,  <14.071671, 15.255117, 15.934322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.020902, 15.052201, 16.051998>,  <13.936286, 14.714008, 16.248125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.020902, 15.052201, 16.051998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230978, -0.530705, -0.815476,
		-0.949684, 0.059253, -0.307554,
		0.211540, 0.845483, -0.490316,
		14.084364, 15.305846, 15.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691470, 14.560672, 15.663895>,  <13.936286, 14.714008, 16.248125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691470, 14.560672, 15.663895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.904086, 14.887186, 15.573435>,  <14.031656, 15.083095, 15.519159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.904086, 14.887186, 15.573435>,  <13.691470, 14.560672, 15.663895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904086, 14.887186, 15.573435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367983, -0.463017, -0.806352,
		-0.762924, 0.345390, -0.546491,
		0.531541, 0.816285, -0.226150,
		14.063548, 15.132071, 15.505589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613094, 14.719405, 14.979445>,  <13.691470, 14.560672, 15.663895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613094, 14.719405, 14.979445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.953811, 14.894179, 15.095057>,  <14.158240, 14.999043, 15.164424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.953811, 14.894179, 15.095057>,  <13.613094, 14.719405, 14.979445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953811, 14.894179, 15.095057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459093, -0.356801, -0.813589,
		-0.252359, 0.825700, -0.504514,
		0.851792, 0.436935, 0.289031,
		14.209348, 15.025260, 15.181766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819582, 15.158031, 14.416534>,  <13.613094, 14.719405, 14.979445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819582, 15.158031, 14.416534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130975, 15.058429, 14.646999>,  <14.317810, 14.998668, 14.785278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130975, 15.058429, 14.646999>,  <13.819582, 15.158031, 14.416534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130975, 15.058429, 14.646999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371400, -0.557252, -0.742652,
		0.505991, 0.792128, -0.341331,
		0.778482, -0.249005, 0.576161,
		14.364519, 14.983727, 14.819848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303387, 15.115804, 13.891879>,  <13.819582, 15.158031, 14.416534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303387, 15.115804, 13.891879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.484260, 14.937416, 14.200850>,  <14.592783, 14.830383, 14.386232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.484260, 14.937416, 14.200850>,  <14.303387, 15.115804, 13.891879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484260, 14.937416, 14.200850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364895, -0.697735, -0.616455,
		0.813869, 0.560605, -0.152772,
		0.452182, -0.445969, 0.772427,
		14.619914, 14.803625, 14.432578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.024464, 15.031905, 13.701706>,  <14.303387, 15.115804, 13.891879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.024464, 15.031905, 13.701706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.961775, 14.760376, 13.988659>,  <14.924162, 14.597459, 14.160830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.961775, 14.760376, 13.988659>,  <15.024464, 15.031905, 13.701706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961775, 14.760376, 13.988659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317921, -0.722372, -0.614089,
		0.935075, 0.131830, 0.329024,
		-0.156722, -0.678823, 0.717383,
		14.914758, 14.556729, 14.203874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623607, 14.694999, 13.823082>,  <15.024464, 15.031905, 13.701706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623607, 14.694999, 13.823082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338151, 14.447125, 13.953748>,  <15.166878, 14.298401, 14.032147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338151, 14.447125, 13.953748>,  <15.623607, 14.694999, 13.823082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338151, 14.447125, 13.953748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359108, -0.724013, -0.588937,
		0.601465, -0.302981, 0.739218,
		-0.713639, -0.619684, 0.326665,
		15.124059, 14.261220, 14.051747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041695, 14.174389, 13.943765>,  <15.623607, 14.694999, 13.823082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041695, 14.174389, 13.943765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.662601, 14.074189, 13.864720>,  <15.435144, 14.014070, 13.817294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.662601, 14.074189, 13.864720>,  <16.041695, 14.174389, 13.943765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662601, 14.074189, 13.864720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317141, -0.807431, -0.497470,
		-0.034941, -0.534140, 0.844674,
		-0.947734, -0.250499, -0.197610,
		15.378281, 13.999040, 13.805437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002155, 14.696855, 14.567773>,  <16.041695, 14.174389, 13.943765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002155, 14.696855, 14.567773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.401257, 14.715976, 14.549006>,  <16.640718, 14.727448, 14.537746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.401257, 14.715976, 14.549006>,  <16.002155, 14.696855, 14.567773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401257, 14.715976, 14.549006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009270, 0.595163, 0.803551,
		0.066335, -0.802182, 0.593383,
		0.997755, 0.047803, -0.046916,
		16.700583, 14.730317, 14.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217848, 14.581499, 15.248549>,  <16.002155, 14.696855, 14.567773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217848, 14.581499, 15.248549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.521217, 14.771866, 15.070427>,  <16.703239, 14.886086, 14.963553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.521217, 14.771866, 15.070427>,  <16.217848, 14.581499, 15.248549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.521217, 14.771866, 15.070427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026543, 0.660115, 0.750696,
		0.651218, -0.581167, 0.488016,
		0.758427, 0.475913, -0.445304,
		16.748745, 14.914640, 14.936834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715950, 14.694280, 15.763739>,  <16.217848, 14.581499, 15.248549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715950, 14.694280, 15.763739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.831329, 14.983576, 15.512750>,  <16.900557, 15.157153, 15.362156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.831329, 14.983576, 15.512750>,  <16.715950, 14.694280, 15.763739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831329, 14.983576, 15.512750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077835, 0.670870, 0.737479,
		0.954326, -0.163886, 0.249805,
		0.288450, 0.723239, -0.627473,
		16.917864, 15.200547, 15.324508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321636, 15.052731, 16.032732>,  <16.715950, 14.694280, 15.763739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321636, 15.052731, 16.032732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.167236, 15.312704, 15.770865>,  <17.074596, 15.468688, 15.613746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.167236, 15.312704, 15.770865>,  <17.321636, 15.052731, 16.032732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.167236, 15.312704, 15.770865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061089, 0.726118, 0.684851,
		0.920473, 0.224361, -0.319986,
		-0.386001, 0.649935, -0.654666,
		17.051435, 15.507685, 15.574466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670313, 15.604724, 16.230890>,  <17.321636, 15.052731, 16.032732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670313, 15.604724, 16.230890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.344013, 15.726930, 16.034435>,  <17.148233, 15.800253, 15.916562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.344013, 15.726930, 16.034435>,  <17.670313, 15.604724, 16.230890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.344013, 15.726930, 16.034435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023439, 0.830963, 0.555834,
		0.577933, 0.464932, -0.670695,
		-0.815747, 0.305514, -0.491139,
		17.099289, 15.818583, 15.887094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856495, 16.165211, 15.878524>,  <17.670313, 15.604724, 16.230890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.856495, 16.165211, 15.878524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.462009, 16.177675, 15.943533>,  <17.225319, 16.185154, 15.982538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.462009, 16.177675, 15.943533>,  <17.856495, 16.165211, 15.878524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462009, 16.177675, 15.943533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115070, 0.834943, 0.538172,
		-0.118928, 0.549454, -0.827017,
		-0.986212, 0.031162, 0.162524,
		17.166145, 16.187023, 15.992290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710093, 16.818951, 15.943951>,  <17.856495, 16.165211, 15.878524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.710093, 16.818951, 15.943951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.357052, 16.679438, 16.070038>,  <17.145227, 16.595730, 16.145691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.357052, 16.679438, 16.070038>,  <17.710093, 16.818951, 15.943951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357052, 16.679438, 16.070038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104661, 0.799460, 0.591532,
		-0.458320, 0.489097, -0.742110,
		-0.882603, -0.348781, 0.315219,
		17.092270, 16.574802, 16.164604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.132799, 17.168051, 15.680207>,  <17.710093, 16.818951, 15.943951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.132799, 17.168051, 15.680207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.016798, 17.016485, 16.031734>,  <16.947197, 16.925547, 16.242651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.016798, 17.016485, 16.031734>,  <17.132799, 17.168051, 15.680207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016798, 17.016485, 16.031734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096589, 0.925181, 0.367029,
		-0.952139, 0.021555, -0.304905,
		-0.290003, -0.378913, 0.878819,
		16.929796, 16.902811, 16.295380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586411, 17.756033, 15.992850>,  <17.132799, 17.168051, 15.680207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586411, 17.756033, 15.992850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.693495, 17.515305, 16.293819>,  <16.757746, 17.370867, 16.474401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.693495, 17.515305, 16.293819>,  <16.586411, 17.756033, 15.992850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693495, 17.515305, 16.293819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019327, 0.777416, 0.628689,
		-0.963306, -0.182848, 0.196490,
		0.267709, -0.601823, 0.752424,
		16.773808, 17.334757, 16.519547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035398, 17.793814, 16.549925>,  <16.586411, 17.756033, 15.992850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.035398, 17.793814, 16.549925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.381544, 17.668341, 16.706259>,  <16.589231, 17.593058, 16.800060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.381544, 17.668341, 16.706259>,  <16.035398, 17.793814, 16.549925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381544, 17.668341, 16.706259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004083, 0.775443, 0.631404,
		-0.501131, -0.547989, 0.669758,
		0.865362, -0.313682, 0.390836,
		16.641153, 17.574236, 16.823509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830642, 17.782906, 17.202513>,  <16.035398, 17.793814, 16.549925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830642, 17.782906, 17.202513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.230398, 17.769413, 17.206104>,  <16.470251, 17.761316, 17.208260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.230398, 17.769413, 17.206104>,  <15.830642, 17.782906, 17.202513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230398, 17.769413, 17.206104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013517, 0.611126, 0.791418,
		-0.032183, -0.790815, 0.611209,
		0.999391, -0.033733, 0.008978,
		16.530216, 17.759293, 17.208797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010000, 17.459223, 17.929790>,  <15.830642, 17.782906, 17.202513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010000, 17.459223, 17.929790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.333830, 17.646343, 17.787943>,  <16.528128, 17.758615, 17.702835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.333830, 17.646343, 17.787943>,  <16.010000, 17.459223, 17.929790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333830, 17.646343, 17.787943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010246, 0.592745, 0.805325,
		0.586902, -0.655619, 0.475089,
		0.809593, 0.467779, -0.354601,
		16.576702, 17.786684, 17.681557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645029, 17.326227, 18.420742>,  <16.010000, 17.459223, 17.929790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645029, 17.326227, 18.420742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.651201, 17.659359, 18.199417>,  <16.654905, 17.859238, 18.066622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.651201, 17.659359, 18.199417>,  <16.645029, 17.326227, 18.420742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651201, 17.659359, 18.199417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152943, 0.548834, 0.821821,
		0.988114, 0.071944, 0.135845,
		0.015431, 0.832830, -0.553314,
		16.655830, 17.909208, 18.033422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844379, 17.819111, 18.894562>,  <16.645029, 17.326227, 18.420742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844379, 17.819111, 18.894562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.794722, 18.074038, 18.590347>,  <16.764927, 18.226994, 18.407820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.794722, 18.074038, 18.590347>,  <16.844379, 17.819111, 18.894562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794722, 18.074038, 18.590347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335085, 0.694511, 0.636688,
		0.933973, 0.333885, 0.127337,
		-0.124144, 0.637319, -0.760535,
		16.757479, 18.265234, 18.362186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205843, 18.397758, 19.040892>,  <16.844379, 17.819111, 18.894562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205843, 18.397758, 19.040892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.920288, 18.520079, 18.788908>,  <16.748955, 18.593472, 18.637718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.920288, 18.520079, 18.788908>,  <17.205843, 18.397758, 19.040892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920288, 18.520079, 18.788908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237360, 0.740681, 0.628532,
		0.658804, 0.598229, -0.456179,
		-0.713889, 0.305800, -0.629959,
		16.706121, 18.611818, 18.599920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244190, 19.182571, 18.967398>,  <17.205843, 18.397758, 19.040892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244190, 19.182571, 18.967398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.877811, 19.049681, 18.877357>,  <16.657984, 18.969946, 18.823334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.877811, 19.049681, 18.877357>,  <17.244190, 19.182571, 18.967398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877811, 19.049681, 18.877357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396462, 0.662288, 0.635762,
		-0.062136, 0.671566, -0.738335,
		-0.915946, -0.332225, -0.225098,
		16.603027, 18.950014, 18.809828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853474, 19.741989, 19.033390>,  <17.244190, 19.182571, 18.967398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853474, 19.741989, 19.033390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.573893, 19.456615, 19.053282>,  <16.406143, 19.285391, 19.065218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.573893, 19.456615, 19.053282>,  <16.853474, 19.741989, 19.033390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573893, 19.456615, 19.053282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393679, 0.441877, 0.806078,
		-0.597060, 0.543833, -0.589716,
		-0.698954, -0.713436, 0.049731,
		16.364206, 19.242584, 19.068201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302393, 20.012943, 19.359867>,  <16.853474, 19.741989, 19.033390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302393, 20.012943, 19.359867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.190044, 19.629572, 19.379967>,  <16.122635, 19.399549, 19.392027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.190044, 19.629572, 19.379967>,  <16.302393, 20.012943, 19.359867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.190044, 19.629572, 19.379967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510456, 0.193520, 0.837845,
		-0.812739, 0.209677, -0.543590,
		-0.280872, -0.958429, 0.050250,
		16.105783, 19.342043, 19.395042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.560165, 20.014519, 19.460018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.670046, 19.652849, 19.590866>,  <15.735974, 19.435846, 19.669374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.670046, 19.652849, 19.590866>,  <15.560165, 20.014519, 19.460018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670046, 19.652849, 19.590866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511423, 0.150698, 0.846012,
		-0.814240, -0.399696, -0.421019,
		0.274701, -0.904176, 0.327118,
		15.752456, 19.381596, 19.689001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009293, 19.779041, 19.671877>,  <15.560165, 20.014519, 19.460018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009293, 19.779041, 19.671877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.290365, 19.558702, 19.852015>,  <15.459009, 19.426500, 19.960096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.290365, 19.558702, 19.852015>,  <15.009293, 19.779041, 19.671877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290365, 19.558702, 19.852015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460549, 0.130324, 0.878015,
		-0.542341, -0.824369, -0.162115,
		0.702681, -0.550846, 0.450342,
		15.501169, 19.393448, 19.987118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633146, 19.411306, 20.252369>,  <15.009293, 19.779041, 19.671877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633146, 19.411306, 20.252369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.022755, 19.407818, 20.342886>,  <15.256519, 19.405725, 20.397196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.022755, 19.407818, 20.342886>,  <14.633146, 19.411306, 20.252369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.022755, 19.407818, 20.342886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217821, 0.237302, 0.946700,
		-0.061956, -0.971397, 0.229238,
		0.974020, -0.008721, 0.226293,
		15.314960, 19.405201, 20.410774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643383, 19.138254, 20.963745>,  <14.633146, 19.411306, 20.252369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643383, 19.138254, 20.963745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.983807, 19.336658, 20.894842>,  <15.188061, 19.455700, 20.853500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.983807, 19.336658, 20.894842>,  <14.643383, 19.138254, 20.963745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983807, 19.336658, 20.894842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025849, 0.288088, 0.957255,
		0.524433, -0.819133, 0.232359,
		0.851059, 0.496010, -0.172256,
		15.239124, 19.485462, 20.843164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983130, 18.948023, 21.480848>,  <14.643383, 19.138254, 20.963745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983130, 18.948023, 21.480848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.169646, 19.271360, 21.337097>,  <15.281556, 19.465363, 21.250847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.169646, 19.271360, 21.337097>,  <14.983130, 18.948023, 21.480848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169646, 19.271360, 21.337097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020777, 0.416138, 0.909064,
		0.884388, -0.416420, 0.210836,
		0.466290, 0.808346, -0.359376,
		15.309533, 19.513865, 21.229284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548045, 19.050480, 21.891745>,  <14.983130, 18.948023, 21.480848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548045, 19.050480, 21.891745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.442629, 19.396542, 21.721075>,  <15.379379, 19.604179, 21.618673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.442629, 19.396542, 21.721075>,  <15.548045, 19.050480, 21.891745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442629, 19.396542, 21.721075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130374, 0.406308, 0.904387,
		0.955797, 0.293971, 0.005715,
		-0.263542, 0.865156, -0.426674,
		15.363566, 19.656088, 21.593073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609293, 19.466450, 22.428854>,  <15.548045, 19.050480, 21.891745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609293, 19.466450, 22.428854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447925, 19.715988, 22.161102>,  <15.351104, 19.865711, 22.000452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447925, 19.715988, 22.161102>,  <15.609293, 19.466450, 22.428854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447925, 19.715988, 22.161102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288023, 0.607786, 0.740026,
		0.868501, 0.491339, -0.065513,
		-0.403422, 0.623844, -0.669380,
		15.326899, 19.903141, 21.960289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794397, 20.084980, 22.586107>,  <15.609293, 19.466450, 22.428854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794397, 20.084980, 22.586107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.470963, 20.152056, 22.360516>,  <15.276903, 20.192301, 22.225161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.470963, 20.152056, 22.360516>,  <15.794397, 20.084980, 22.586107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470963, 20.152056, 22.360516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346719, 0.638622, 0.686984,
		0.475370, 0.751027, -0.458238,
		-0.808585, 0.167691, -0.563977,
		15.228388, 20.202364, 22.191322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711397, 20.819923, 22.405302>,  <15.794397, 20.084980, 22.586107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711397, 20.819923, 22.405302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.357042, 20.634428, 22.400373>,  <15.144429, 20.523130, 22.397417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.357042, 20.634428, 22.400373>,  <15.711397, 20.819923, 22.405302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357042, 20.634428, 22.400373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373872, 0.697986, 0.610767,
		-0.274638, 0.545676, -0.791715,
		-0.885886, -0.463739, -0.012320,
		15.091276, 20.495306, 22.396677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198732, 21.417982, 22.474995>,  <15.711397, 20.819923, 22.405302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198732, 21.417982, 22.474995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.983716, 21.083679, 22.519831>,  <14.854707, 20.883099, 22.546732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.983716, 21.083679, 22.519831>,  <15.198732, 21.417982, 22.474995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983716, 21.083679, 22.519831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487783, 0.416618, 0.767136,
		-0.687836, 0.357692, -0.631616,
		-0.537540, -0.835755, 0.112089,
		14.822453, 20.832952, 22.553457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506657, 21.651188, 22.560450>,  <15.198732, 21.417982, 22.474995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506657, 21.651188, 22.560450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.537018, 21.301142, 22.751619>,  <14.555235, 21.091114, 22.866322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.537018, 21.301142, 22.751619>,  <14.506657, 21.651188, 22.560450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.537018, 21.301142, 22.751619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416308, 0.407719, 0.812683,
		-0.906050, -0.260649, -0.333370,
		0.075904, -0.875116, 0.477924,
		14.559789, 21.038607, 22.894997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808494, 21.488279, 22.832439>,  <14.506657, 21.651188, 22.560450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808494, 21.488279, 22.832439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.075366, 21.275501, 23.041018>,  <14.235490, 21.147835, 23.166164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.075366, 21.275501, 23.041018>,  <13.808494, 21.488279, 22.832439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075366, 21.275501, 23.041018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383800, 0.354467, 0.852673,
		-0.638410, -0.769017, 0.032333,
		0.667181, -0.531945, 0.521444,
		14.275520, 21.115917, 23.197451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.498963, 21.354406, 23.474333>,  <13.808494, 21.488279, 22.832439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.498963, 21.354406, 23.474333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.877151, 21.248161, 23.549742>,  <14.104063, 21.184414, 23.594986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.877151, 21.248161, 23.549742>,  <13.498963, 21.354406, 23.474333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.877151, 21.248161, 23.549742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130164, 0.222452, 0.966216,
		-0.298576, -0.938064, 0.175748,
		0.945468, -0.265613, 0.188521,
		14.160791, 21.168478, 23.606298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.611069, 20.840630, 24.052277>,  <13.498963, 21.354406, 23.474333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.611069, 20.840630, 24.052277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.943520, 21.062653, 24.038773>,  <14.142990, 21.195866, 24.030670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.943520, 21.062653, 24.038773>,  <13.611069, 20.840630, 24.052277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943520, 21.062653, 24.038773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099476, 0.208133, 0.973029,
		0.547114, -0.805352, 0.228200,
		0.831126, 0.555058, -0.033759,
		14.192858, 21.229170, 24.028645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993863, 20.644594, 24.683399>,  <13.611069, 20.840630, 24.052277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993863, 20.644594, 24.683399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.149998, 20.993298, 24.564960>,  <14.243678, 21.202520, 24.493898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.149998, 20.993298, 24.564960>,  <13.993863, 20.644594, 24.683399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149998, 20.993298, 24.564960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030291, 0.333593, 0.942230,
		0.920174, -0.358817, 0.156620,
		0.390336, 0.871760, -0.296095,
		14.267098, 21.254826, 24.476131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352309, 20.887903, 25.277987>,  <13.993863, 20.644594, 24.683399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352309, 20.887903, 25.277987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.375298, 21.211710, 25.044275>,  <14.389091, 21.405994, 24.904049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.375298, 21.211710, 25.044275>,  <14.352309, 20.887903, 25.277987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375298, 21.211710, 25.044275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200178, 0.564017, 0.801133,
		0.978073, -0.163002, -0.129632,
		0.057472, 0.809516, -0.584279,
		14.392539, 21.454565, 24.868992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019059, 21.145876, 25.449562>,  <14.352309, 20.887903, 25.277987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019059, 21.145876, 25.449562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.740205, 21.398510, 25.313854>,  <14.572892, 21.550091, 25.232430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.740205, 21.398510, 25.313854>,  <15.019059, 21.145876, 25.449562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.740205, 21.398510, 25.313854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156856, 0.596118, 0.787425,
		0.699569, 0.495726, -0.514644,
		-0.697136, 0.631584, -0.339269,
		14.531064, 21.587986, 25.212074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382340, 21.780006, 25.507940>,  <15.019059, 21.145876, 25.449562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382340, 21.780006, 25.507940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.005105, 21.912687, 25.498489>,  <14.778764, 21.992296, 25.492819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.005105, 21.912687, 25.498489>,  <15.382340, 21.780006, 25.507940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005105, 21.912687, 25.498489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214036, 0.659847, 0.720271,
		0.254505, 0.674222, -0.693290,
		-0.943088, 0.331702, -0.023626,
		14.722178, 22.012197, 25.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427305, 22.497023, 25.598330>,  <15.382340, 21.780006, 25.507940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427305, 22.497023, 25.598330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.050855, 22.408989, 25.700970>,  <14.824985, 22.356169, 25.762554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.050855, 22.408989, 25.700970>,  <15.427305, 22.497023, 25.598330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050855, 22.408989, 25.700970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043457, 0.673987, 0.737464,
		-0.335249, 0.705198, -0.624743,
		-0.941127, -0.220084, 0.256599,
		14.768517, 22.342964, 25.777950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.158553, 23.084406, 25.665789>,  <15.427305, 22.497023, 25.598330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.158553, 23.084406, 25.665789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.938787, 22.846376, 25.900406>,  <14.806929, 22.703560, 26.041176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.938787, 22.846376, 25.900406>,  <15.158553, 23.084406, 25.665789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938787, 22.846376, 25.900406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108181, 0.645416, 0.756132,
		-0.828518, 0.478882, -0.290225,
		-0.549414, -0.595072, 0.586544,
		14.773963, 22.667854, 26.076368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801335, 23.572748, 26.049696>,  <15.158553, 23.084406, 25.665789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.801335, 23.572748, 26.049696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.705476, 23.232273, 26.236479>,  <14.647960, 23.027988, 26.348549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.705476, 23.232273, 26.236479>,  <14.801335, 23.572748, 26.049696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705476, 23.232273, 26.236479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144800, 0.506931, 0.849738,
		-0.960001, 0.136024, -0.244737,
		-0.239650, -0.851187, 0.466958,
		14.633581, 22.976917, 26.376566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127536, 23.642330, 26.470057>,  <14.801335, 23.572748, 26.049696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127536, 23.642330, 26.470057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.359491, 23.360044, 26.632881>,  <14.498665, 23.190674, 26.730576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.359491, 23.360044, 26.632881>,  <14.127536, 23.642330, 26.470057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359491, 23.360044, 26.632881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105434, 0.430437, 0.896442,
		-0.807844, -0.562755, 0.175199,
		0.579889, -0.705713, 0.407059,
		14.533458, 23.148331, 26.754999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735739, 23.278929, 26.941971>,  <14.127536, 23.642330, 26.470057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735739, 23.278929, 26.941971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.124321, 23.324921, 27.024967>,  <14.357471, 23.352516, 27.074764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.124321, 23.324921, 27.024967>,  <13.735739, 23.278929, 26.941971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124321, 23.324921, 27.024967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236619, 0.531862, 0.813102,
		-0.016868, -0.838989, 0.543887,
		0.971456, 0.114979, 0.207492,
		14.415758, 23.359415, 27.087215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.971950, 23.348139, 26.859381>,  <13.735739, 23.278929, 26.941971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.971950, 23.348139, 26.859381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.706365, 23.187889, 27.111937>,  <12.547013, 23.091740, 27.263470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.706365, 23.187889, 27.111937>,  <12.971950, 23.348139, 26.859381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.706365, 23.187889, 27.111937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205744, -0.713902, -0.669338,
		0.718904, -0.574321, 0.391578,
		-0.663963, -0.400625, 0.631390,
		12.507175, 23.067701, 27.301353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.077320, 22.621225, 26.840448>,  <12.971950, 23.348139, 26.859381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.077320, 22.621225, 26.840448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.699721, 22.685799, 26.955555>,  <12.473162, 22.724543, 27.024620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.699721, 22.685799, 26.955555>,  <13.077320, 22.621225, 26.840448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.699721, 22.685799, 26.955555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324010, -0.618353, -0.716001,
		0.062356, -0.769142, 0.636028,
		-0.943997, 0.161432, 0.287768,
		12.416522, 22.734228, 27.041885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.786962, 21.969116, 26.935797>,  <13.077320, 22.621225, 26.840448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.786962, 21.969116, 26.935797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.465999, 22.198872, 26.871021>,  <12.273421, 22.336725, 26.832157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.465999, 22.198872, 26.871021>,  <12.786962, 21.969116, 26.935797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465999, 22.198872, 26.871021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380629, -0.701572, -0.602427,
		-0.459636, -0.421753, 0.781575,
		-0.802406, 0.574387, -0.161936,
		12.225277, 22.371187, 26.822441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197992, 21.545971, 27.008904>,  <12.786962, 21.969116, 26.935797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197992, 21.545971, 27.008904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.070951, 21.850220, 26.782425>,  <11.994727, 22.032770, 26.646538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.070951, 21.850220, 26.782425>,  <12.197992, 21.545971, 27.008904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.070951, 21.850220, 26.782425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486549, -0.643239, -0.591197,
		-0.813879, 0.087718, 0.574375,
		-0.317602, 0.760624, -0.566198,
		11.975671, 22.078407, 26.612566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474761, 21.287874, 26.852310>,  <12.197992, 21.545971, 27.008904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474761, 21.287874, 26.852310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.595103, 21.578341, 26.605030>,  <11.667309, 21.752621, 26.456661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.595103, 21.578341, 26.605030>,  <11.474761, 21.287874, 26.852310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595103, 21.578341, 26.605030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455973, -0.459806, -0.762015,
		-0.837600, 0.511140, 0.192776,
		0.300856, 0.726164, -0.618200,
		11.685360, 21.796190, 26.419571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.908914, 21.344547, 26.328915>,  <11.474761, 21.287874, 26.852310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.908914, 21.344547, 26.328915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.210584, 21.523516, 26.136650>,  <11.391585, 21.630896, 26.021292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.210584, 21.523516, 26.136650>,  <10.908914, 21.344547, 26.328915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.210584, 21.523516, 26.136650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216613, -0.521496, -0.825300,
		-0.619919, 0.726538, -0.296383,
		0.754175, 0.447419, -0.480663,
		11.436836, 21.657742, 25.992451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.630422, 21.614708, 25.641329>,  <10.908914, 21.344547, 26.328915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.630422, 21.614708, 25.641329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.028811, 21.612318, 25.605547>,  <11.267844, 21.610884, 25.584078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.028811, 21.612318, 25.605547>,  <10.630422, 21.614708, 25.641329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028811, 21.612318, 25.605547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083211, -0.432964, -0.897562,
		-0.033367, 0.901391, -0.431718,
		0.995973, -0.005975, -0.089453,
		11.327602, 21.610525, 25.578711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.827247, 21.897156, 24.953081>,  <10.630422, 21.614708, 25.641329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.827247, 21.897156, 24.953081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.141774, 21.665890, 25.040192>,  <11.330491, 21.527130, 25.092459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.141774, 21.665890, 25.040192>,  <10.827247, 21.897156, 24.953081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141774, 21.665890, 25.040192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029105, -0.317435, -0.947833,
		0.617135, 0.751638, -0.232778,
		0.786319, -0.578166, 0.217776,
		11.377670, 21.492439, 25.105524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180453, 21.931181, 24.283699>,  <10.827247, 21.897156, 24.953081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.180453, 21.931181, 24.283699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.381628, 21.652037, 24.487679>,  <11.502333, 21.484550, 24.610065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.381628, 21.652037, 24.487679>,  <11.180453, 21.931181, 24.283699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.381628, 21.652037, 24.487679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279268, -0.427146, -0.859974,
		0.817964, 0.574924, -0.019938,
		0.502936, -0.697860, 0.509948,
		11.532509, 21.442678, 24.640663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.921757, 21.812269, 24.048779>,  <11.180453, 21.931181, 24.283699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.921757, 21.812269, 24.048779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.811001, 21.464186, 24.211786>,  <11.744547, 21.255337, 24.309591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.811001, 21.464186, 24.211786>,  <11.921757, 21.812269, 24.048779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.811001, 21.464186, 24.211786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197655, -0.466610, -0.862095,
		0.940353, -0.158159, 0.301201,
		-0.276891, -0.870208, 0.407517,
		11.727934, 21.203123, 24.334042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549296, 21.416557, 23.899605>,  <11.921757, 21.812269, 24.048779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549296, 21.416557, 23.899605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.257464, 21.146965, 23.946018>,  <12.082365, 20.985210, 23.973866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.257464, 21.146965, 23.946018>,  <12.549296, 21.416557, 23.899605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.257464, 21.146965, 23.946018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206539, -0.378884, -0.902102,
		0.651961, -0.634191, 0.415630,
		-0.729581, -0.673979, 0.116033,
		12.038590, 20.944771, 23.980827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860497, 20.749376, 23.576820>,  <12.549296, 21.416557, 23.899605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.860497, 20.749376, 23.576820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.468135, 20.673466, 23.593830>,  <12.232718, 20.627920, 23.604036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.468135, 20.673466, 23.593830>,  <12.860497, 20.749376, 23.576820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.468135, 20.673466, 23.593830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061420, -0.509753, -0.858125,
		0.184529, -0.839128, 0.511676,
		-0.980906, -0.189776, 0.042525,
		12.173863, 20.616533, 23.606588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823974, 20.130188, 23.443333>,  <12.860497, 20.749376, 23.576820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823974, 20.130188, 23.443333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.454273, 20.259186, 23.361593>,  <12.232453, 20.336584, 23.312550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.454273, 20.259186, 23.361593>,  <12.823974, 20.130188, 23.443333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454273, 20.259186, 23.361593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047149, -0.434728, -0.899327,
		-0.378863, -0.840838, 0.386593,
		-0.924251, 0.322494, -0.204347,
		12.176998, 20.355934, 23.300289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.380379, 19.507046, 23.246857>,  <12.823974, 20.130188, 23.443333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.380379, 19.507046, 23.246857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.214643, 19.834814, 23.088428>,  <12.115201, 20.031475, 22.993372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.214643, 19.834814, 23.088428>,  <12.380379, 19.507046, 23.246857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214643, 19.834814, 23.088428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073647, -0.463941, -0.882799,
		-0.907138, -0.336609, 0.252577,
		-0.414339, 0.819422, -0.396068,
		12.090341, 20.080641, 22.969608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.951867, 19.197802, 22.734390>,  <12.380379, 19.507046, 23.246857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.951867, 19.197802, 22.734390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.971143, 19.576366, 22.606653>,  <11.982708, 19.803505, 22.530010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.971143, 19.576366, 22.606653>,  <11.951867, 19.197802, 22.734390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.971143, 19.576366, 22.606653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195812, -0.322464, -0.926107,
		-0.979457, -0.017904, -0.200858,
		0.048188, 0.946413, -0.319345,
		11.985600, 19.860291, 22.510849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683502, 19.180370, 22.095957>,  <11.951867, 19.197802, 22.734390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683502, 19.180370, 22.095957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.884800, 19.525587, 22.113419>,  <12.005579, 19.732718, 22.123896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.884800, 19.525587, 22.113419>,  <11.683502, 19.180370, 22.095957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884800, 19.525587, 22.113419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148994, -0.036896, -0.988150,
		-0.851202, 0.503786, -0.147156,
		0.503245, 0.863040, 0.043655,
		12.035773, 19.784500, 22.126514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.493773, 19.598032, 21.550348>,  <11.683502, 19.180370, 22.095957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.493773, 19.598032, 21.550348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.847740, 19.753283, 21.653324>,  <12.060121, 19.846434, 21.715109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.847740, 19.753283, 21.653324>,  <11.493773, 19.598032, 21.550348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.847740, 19.753283, 21.653324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298537, -0.048432, -0.953168,
		-0.357482, 0.920332, -0.158729,
		0.884919, 0.388127, 0.257440,
		12.113216, 19.869720, 21.730556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704112, 20.166456, 21.116404>,  <11.493773, 19.598032, 21.550348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704112, 20.166456, 21.116404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.045601, 19.999573, 21.241043>,  <12.250494, 19.899443, 21.315826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.045601, 19.999573, 21.241043>,  <11.704112, 20.166456, 21.116404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045601, 19.999573, 21.241043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238785, -0.218113, -0.946260,
		0.462753, 0.882249, -0.086585,
		0.853722, -0.417209, 0.311600,
		12.301718, 19.874411, 21.334524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997092, 20.241158, 20.545242>,  <11.704112, 20.166456, 21.116404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997092, 20.241158, 20.545242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.247517, 20.006891, 20.751173>,  <12.397771, 19.866331, 20.874731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.247517, 20.006891, 20.751173>,  <11.997092, 20.241158, 20.545242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.247517, 20.006891, 20.751173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446154, -0.272441, -0.852480,
		0.639526, 0.763396, 0.090732,
		0.626061, -0.585664, 0.514825,
		12.435335, 19.831192, 20.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703795, 20.336472, 20.250744>,  <11.997092, 20.241158, 20.545242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703795, 20.336472, 20.250744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.689465, 19.982336, 20.436171>,  <12.680866, 19.769855, 20.547426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.689465, 19.982336, 20.436171>,  <12.703795, 20.336472, 20.250744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.689465, 19.982336, 20.436171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358405, -0.444392, -0.821013,
		0.932878, 0.136730, 0.333231,
		-0.035828, -0.885337, 0.463568,
		12.678716, 19.716736, 20.575241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348871, 20.033180, 20.097456>,  <12.703795, 20.336472, 20.250744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348871, 20.033180, 20.097456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.096140, 19.736408, 20.187193>,  <12.944501, 19.558344, 20.241035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.096140, 19.736408, 20.187193>,  <13.348871, 20.033180, 20.097456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.096140, 19.736408, 20.187193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374264, -0.545482, -0.749917,
		0.678764, -0.389854, 0.622329,
		-0.631827, -0.741932, 0.224345,
		12.906591, 19.513828, 20.254496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.052402, 21.731348, 3.155512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.058702, 21.437836, 3.427193>,  <19.062483, 21.261728, 3.590202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.058702, 21.437836, 3.427193>,  <19.052402, 21.731348, 3.155512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058702, 21.437836, 3.427193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644696, -0.526681, -0.554052,
		0.764277, -0.429152, -0.481362,
		0.015751, -0.733782, 0.679203,
		19.063427, 21.217701, 3.630954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314692, 21.084049, 3.059109>,  <19.052402, 21.731348, 3.155512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314692, 21.084049, 3.059109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.028870, 20.993319, 3.323823>,  <18.857376, 20.938881, 3.482652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.028870, 20.993319, 3.323823>,  <19.314692, 21.084049, 3.059109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028870, 20.993319, 3.323823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582983, -0.329838, -0.742521,
		0.386704, -0.916383, 0.103452,
		-0.714556, -0.226825, 0.661786,
		18.814503, 20.925270, 3.522359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054586, 20.386631, 3.136106>,  <19.314692, 21.084049, 3.059109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054586, 20.386631, 3.136106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.751221, 20.635786, 3.212861>,  <18.569201, 20.785278, 3.258914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.751221, 20.635786, 3.212861>,  <19.054586, 20.386631, 3.136106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751221, 20.635786, 3.212861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549819, -0.453323, -0.701568,
		-0.350008, -0.637584, 0.686281,
		-0.758415, 0.622885, 0.191889,
		18.523697, 20.822651, 3.270427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396837, 20.092447, 3.477772>,  <19.054586, 20.386631, 3.136106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396837, 20.092447, 3.477772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.348806, 20.380489, 3.204414>,  <18.319988, 20.553314, 3.040400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.348806, 20.380489, 3.204414>,  <18.396837, 20.092447, 3.477772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348806, 20.380489, 3.204414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714017, -0.540914, -0.444514,
		-0.689755, 0.434579, 0.579120,
		-0.120078, 0.720106, -0.683394,
		18.312782, 20.596521, 2.999396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172997, 19.974943, 3.764011>,  <18.396837, 20.092447, 3.477772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172997, 19.974943, 3.764011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.240126, 20.349028, 3.888731>,  <19.280403, 20.573479, 3.963564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.240126, 20.349028, 3.888731>,  <19.172997, 19.974943, 3.764011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240126, 20.349028, 3.888731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329807, -0.244799, 0.911757,
		0.929012, -0.255846, 0.267357,
		0.167821, 0.935209, 0.311801,
		19.290472, 20.629591, 3.982272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890730, 20.187159, 3.846452>,  <19.172997, 19.974943, 3.764011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890730, 20.187159, 3.846452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.012775, 19.908131, 4.105774>,  <20.086002, 19.740715, 4.261368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.012775, 19.908131, 4.105774>,  <19.890730, 20.187159, 3.846452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012775, 19.908131, 4.105774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899898, -0.011547, -0.435948,
		0.311590, 0.716425, 0.624218,
		0.305116, -0.697569, 0.648307,
		20.104311, 19.698860, 4.300267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601049, 20.248093, 3.960383>,  <19.890730, 20.187159, 3.846452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601049, 20.248093, 3.960383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.529724, 19.866388, 4.056372>,  <20.486929, 19.637365, 4.113966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.529724, 19.866388, 4.056372>,  <20.601049, 20.248093, 3.960383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.529724, 19.866388, 4.056372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939891, -0.237361, -0.245487,
		0.291220, 0.181775, 0.939228,
		-0.178313, -0.954263, 0.239973,
		20.476231, 19.580109, 4.128364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034029, 19.958099, 4.485615>,  <20.601049, 20.248093, 3.960383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034029, 19.958099, 4.485615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.899166, 19.736912, 4.180840>,  <20.818249, 19.604198, 3.997976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.899166, 19.736912, 4.180840>,  <21.034029, 19.958099, 4.485615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899166, 19.736912, 4.180840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935712, -0.107633, -0.335942,
		0.103756, -0.826220, 0.553710,
		-0.337160, -0.552969, -0.761937,
		20.798018, 19.571020, 3.952259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304920, 19.234444, 4.519510>,  <21.034029, 19.958099, 4.485615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304920, 19.234444, 4.519510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.225054, 19.341928, 4.142591>,  <21.177134, 19.406420, 3.916439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.225054, 19.341928, 4.142591>,  <21.304920, 19.234444, 4.519510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225054, 19.341928, 4.142591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914231, -0.294949, -0.277827,
		-0.352586, -0.916951, -0.186775,
		-0.199664, 0.268713, -0.942299,
		21.165155, 19.422543, 3.859901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776352, 19.091381, 5.010452>,  <21.304920, 19.234444, 4.519510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776352, 19.091381, 5.010452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056898, 19.342106, 5.146214>,  <21.225225, 19.492540, 5.227671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056898, 19.342106, 5.146214>,  <20.776352, 19.091381, 5.010452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056898, 19.342106, 5.146214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161250, -0.603334, 0.781017,
		0.694324, -0.493049, -0.524230,
		0.701365, 0.626811, 0.339405,
		21.267307, 19.530149, 5.248035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.238237, 18.626850, 5.214400>,  <20.776352, 19.091381, 5.010452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.238237, 18.626850, 5.214400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.275330, 18.970205, 5.416221>,  <21.297585, 19.176218, 5.537313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.275330, 18.970205, 5.416221>,  <21.238237, 18.626850, 5.214400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275330, 18.970205, 5.416221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036120, -0.509301, 0.859830,
		0.995036, -0.061506, -0.078231,
		0.092728, 0.858388, 0.504551,
		21.303148, 19.227722, 5.567586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868193, 18.680632, 5.529014>,  <21.238237, 18.626850, 5.214400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868193, 18.680632, 5.529014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.634016, 18.919649, 5.748175>,  <21.493509, 19.063059, 5.879672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.634016, 18.919649, 5.748175>,  <21.868193, 18.680632, 5.529014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634016, 18.919649, 5.748175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063687, -0.639842, 0.765863,
		0.808208, 0.483263, 0.336535,
		-0.585443, 0.597544, 0.547903,
		21.458384, 19.098913, 5.912546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214062, 18.604706, 6.158106>,  <21.868193, 18.680632, 5.529014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214062, 18.604706, 6.158106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.846371, 18.739565, 6.239444>,  <21.625755, 18.820480, 6.288247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.846371, 18.739565, 6.239444>,  <22.214062, 18.604706, 6.158106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.846371, 18.739565, 6.239444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051862, -0.615649, 0.786312,
		0.390293, 0.712255, 0.583408,
		-0.919229, 0.337149, 0.203345,
		21.570602, 18.840710, 6.300447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261230, 18.805786, 6.836270>,  <22.214062, 18.604706, 6.158106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261230, 18.805786, 6.836270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.870251, 18.768595, 6.760435>,  <21.635662, 18.746279, 6.714933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.870251, 18.768595, 6.760435>,  <22.261230, 18.805786, 6.836270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.870251, 18.768595, 6.760435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097156, -0.599135, 0.794731,
		-0.187485, 0.795230, 0.576592,
		-0.977451, -0.092981, -0.189590,
		21.577015, 18.740700, 6.703557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013359, 18.812159, 7.480623>,  <22.261230, 18.805786, 6.836270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013359, 18.812159, 7.480623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.723801, 18.668812, 7.244811>,  <21.550066, 18.582804, 7.103323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.723801, 18.668812, 7.244811>,  <22.013359, 18.812159, 7.480623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723801, 18.668812, 7.244811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113642, -0.780895, 0.614238,
		-0.680486, 0.511639, 0.524561,
		-0.723895, -0.358368, -0.589532,
		21.506632, 18.561302, 7.067951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359695, 18.826832, 7.884886>,  <22.013359, 18.812159, 7.480623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359695, 18.826832, 7.884886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.374207, 18.555597, 7.591251>,  <21.382914, 18.392857, 7.415071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.374207, 18.555597, 7.591251>,  <21.359695, 18.826832, 7.884886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374207, 18.555597, 7.591251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180430, -0.726943, 0.662570,
		-0.982919, 0.108414, -0.148719,
		0.036278, -0.678086, -0.734087,
		21.385090, 18.352171, 7.371025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843615, 18.404856, 8.117681>,  <21.359695, 18.826832, 7.884886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843615, 18.404856, 8.117681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034273, 18.183702, 7.844294>,  <21.148668, 18.051010, 7.680262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034273, 18.183702, 7.844294>,  <20.843615, 18.404856, 8.117681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034273, 18.183702, 7.844294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015535, -0.772048, 0.635374,
		-0.878958, -0.313467, -0.359405,
		0.476646, -0.552884, -0.683468,
		21.177267, 18.017838, 7.639254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527430, 17.647303, 8.254294>,  <20.843615, 18.404856, 8.117681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527430, 17.647303, 8.254294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.861252, 17.607807, 8.037493>,  <21.061544, 17.584110, 7.907412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.861252, 17.607807, 8.037493>,  <20.527430, 17.647303, 8.254294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861252, 17.607807, 8.037493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254731, -0.803171, 0.538542,
		-0.488496, -0.587508, -0.645140,
		0.834556, -0.098738, -0.542003,
		21.111618, 17.578186, 7.874892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.536922, 16.922291, 7.900159>,  <20.527430, 17.647303, 8.254294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.536922, 16.922291, 7.900159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925009, 17.019087, 7.895790>,  <21.157862, 17.077166, 7.893168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925009, 17.019087, 7.895790>,  <20.536922, 16.922291, 7.900159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925009, 17.019087, 7.895790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214639, -0.837894, 0.501860,
		0.112293, -0.489257, -0.864880,
		0.970217, 0.241992, -0.010924,
		21.216074, 17.091684, 7.892513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.910915, 16.396828, 7.589715>,  <20.536922, 16.922291, 7.900159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.910915, 16.396828, 7.589715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.133387, 16.582052, 7.865757>,  <21.266869, 16.693188, 8.031381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.133387, 16.582052, 7.865757>,  <20.910915, 16.396828, 7.589715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133387, 16.582052, 7.865757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047718, -0.846808, 0.529754,
		0.829693, -0.261707, -0.493071,
		0.556177, 0.463062, 0.690102,
		21.300240, 16.720970, 8.072787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.444870, 15.833274, 7.783720>,  <20.910915, 16.396828, 7.589715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.444870, 15.833274, 7.783720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.464569, 16.103170, 8.078284>,  <21.476389, 16.265108, 8.255022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.464569, 16.103170, 8.078284>,  <21.444870, 15.833274, 7.783720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464569, 16.103170, 8.078284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048770, -0.738049, 0.672982,
		0.997595, 0.002771, -0.069255,
		0.049248, 0.674742, 0.736409,
		21.479343, 16.305593, 8.299207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.886080, 15.607294, 8.226046>,  <21.444870, 15.833274, 7.783720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.886080, 15.607294, 8.226046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.688192, 15.875429, 8.447279>,  <21.569460, 16.036310, 8.580019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.688192, 15.875429, 8.447279>,  <21.886080, 15.607294, 8.226046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.688192, 15.875429, 8.447279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010794, -0.631631, 0.775194,
		0.868986, 0.389473, 0.305244,
		-0.494719, 0.670338, 0.553083,
		21.539776, 16.076530, 8.613204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174969, 15.461519, 8.880525>,  <21.886080, 15.607294, 8.226046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174969, 15.461519, 8.880525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.852665, 15.683714, 8.962681>,  <21.659283, 15.817031, 9.011974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.852665, 15.683714, 8.962681>,  <22.174969, 15.461519, 8.880525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.852665, 15.683714, 8.962681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160266, -0.538375, 0.827325,
		0.570146, 0.633708, 0.522827,
		-0.805759, 0.555488, 0.205390,
		21.610937, 15.850360, 9.024298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167109, 15.569168, 9.591496>,  <22.174969, 15.461519, 8.880525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167109, 15.569168, 9.591496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.787258, 15.655103, 9.500230>,  <21.559349, 15.706663, 9.445471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.787258, 15.655103, 9.500230>,  <22.167109, 15.569168, 9.591496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787258, 15.655103, 9.500230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306933, -0.490549, 0.815570,
		0.063288, 0.844516, 0.531777,
		-0.949624, 0.214836, -0.228164,
		21.502371, 15.719554, 9.431781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926411, 15.745627, 10.212419>,  <22.167109, 15.569168, 9.591496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926411, 15.745627, 10.212419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.589802, 15.668152, 10.010695>,  <21.387836, 15.621667, 9.889662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.589802, 15.668152, 10.010695>,  <21.926411, 15.745627, 10.212419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589802, 15.668152, 10.010695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292453, -0.621559, 0.726730,
		-0.454215, 0.759045, 0.466411,
		-0.841522, -0.193688, -0.504307,
		21.337345, 15.610045, 9.859404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401016, 15.797493, 10.676366>,  <21.926411, 15.745627, 10.212419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401016, 15.797493, 10.676366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.260071, 15.569022, 10.379827>,  <21.175505, 15.431940, 10.201902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.260071, 15.569022, 10.379827>,  <21.401016, 15.797493, 10.676366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260071, 15.569022, 10.379827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460051, -0.584119, 0.668699,
		-0.814981, 0.576682, -0.056950,
		-0.352361, -0.571177, -0.741349,
		21.154362, 15.397669, 10.157422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761988, 15.706308, 10.979777>,  <21.401016, 15.797493, 10.676366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761988, 15.706308, 10.979777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.842789, 15.414474, 10.718428>,  <20.891270, 15.239372, 10.561618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.842789, 15.414474, 10.718428>,  <20.761988, 15.706308, 10.979777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.842789, 15.414474, 10.718428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331718, -0.678664, 0.655270,
		-0.921498, 0.084370, -0.379108,
		0.202002, -0.729587, -0.653375,
		20.903389, 15.195598, 10.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319658, 15.224914, 11.258141>,  <20.761988, 15.706308, 10.979777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319658, 15.224914, 11.258141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.525000, 15.033585, 10.973135>,  <20.648205, 14.918787, 10.802132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.525000, 15.033585, 10.973135>,  <20.319658, 15.224914, 11.258141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525000, 15.033585, 10.973135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066340, -0.849898, 0.522754,
		-0.855610, -0.221088, -0.468029,
		0.513352, -0.478322, -0.712514,
		20.679005, 14.890088, 10.759380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949394, 14.502289, 11.095595>,  <20.319658, 15.224914, 11.258141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949394, 14.502289, 11.095595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.340708, 14.518855, 11.014356>,  <20.575495, 14.528795, 10.965611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.340708, 14.518855, 11.014356>,  <19.949394, 14.502289, 11.095595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340708, 14.518855, 11.014356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150206, -0.816864, 0.556930,
		-0.142839, -0.575341, -0.805344,
		0.978282, 0.041417, -0.203100,
		20.634192, 14.531281, 10.953425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130579, 13.845113, 11.060169>,  <19.949394, 14.502289, 11.095595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130579, 13.845113, 11.060169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.481405, 14.032089, 11.104450>,  <20.691900, 14.144275, 11.131019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.481405, 14.032089, 11.104450>,  <20.130579, 13.845113, 11.060169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.481405, 14.032089, 11.104450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388342, -0.825600, 0.409359,
		0.282746, -0.316045, -0.905633,
		0.877066, 0.467440, 0.110702,
		20.744526, 14.172321, 11.137661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620159, 13.502242, 10.722608>,  <20.130579, 13.845113, 11.060169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620159, 13.502242, 10.722608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795839, 13.677179, 11.036508>,  <20.901247, 13.782142, 11.224848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795839, 13.677179, 11.036508>,  <20.620159, 13.502242, 10.722608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795839, 13.677179, 11.036508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389988, -0.879728, 0.272009,
		0.809328, 0.186577, -0.556935,
		0.439201, 0.437343, 0.784751,
		20.927599, 13.808382, 11.271933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197474, 13.080826, 10.756618>,  <20.620159, 13.502242, 10.722608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197474, 13.080826, 10.756618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131983, 13.251164, 11.112561>,  <21.092688, 13.353368, 11.326127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131983, 13.251164, 11.112561>,  <21.197474, 13.080826, 10.756618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131983, 13.251164, 11.112561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378014, -0.806099, 0.455313,
		0.911207, 0.410927, -0.028995,
		-0.163727, 0.425845, 0.889859,
		21.082865, 13.378918, 11.379519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793032, 13.133030, 11.087292>,  <21.197474, 13.080826, 10.756618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793032, 13.133030, 11.087292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.529385, 13.119637, 11.387809>,  <21.371197, 13.111601, 11.568119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.529385, 13.119637, 11.387809>,  <21.793032, 13.133030, 11.087292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.529385, 13.119637, 11.387809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498476, -0.767476, 0.403116,
		0.563101, 0.640203, 0.522549,
		-0.659120, -0.033483, 0.751292,
		21.331648, 13.109591, 11.613196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185589, 13.120232, 11.665046>,  <21.793032, 13.133030, 11.087292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185589, 13.120232, 11.665046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824884, 12.956676, 11.721103>,  <21.608461, 12.858543, 11.754737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824884, 12.956676, 11.721103>,  <22.185589, 13.120232, 11.665046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824884, 12.956676, 11.721103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403522, -0.680169, 0.611997,
		-0.154918, 0.608424, 0.778345,
		-0.901760, -0.408888, 0.140142,
		21.554356, 12.834010, 11.763145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.612978, 13.107965, 11.029442>,  <22.185589, 13.120232, 11.665046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.612978, 13.107965, 11.029442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.681019, 13.498398, 11.083594>,  <22.721844, 13.732657, 11.116086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.681019, 13.498398, 11.083594>,  <22.612978, 13.107965, 11.029442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.681019, 13.498398, 11.083594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598557, 0.211478, -0.772663,
		-0.782812, 0.050400, 0.620214,
		0.170104, 0.976083, 0.135380,
		22.732050, 13.791223, 11.124208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.077887, 13.722114, 10.717565>,  <22.612978, 13.107965, 11.029442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.077887, 13.722114, 10.717565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.425617, 13.815657, 10.891727>,  <23.634256, 13.871782, 10.996225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.425617, 13.815657, 10.891727>,  <23.077887, 13.722114, 10.717565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.425617, 13.815657, 10.891727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134559, 0.735702, -0.663805,
		-0.475565, 0.635652, 0.608099,
		0.869328, 0.233857, 0.435407,
		23.686417, 13.885814, 11.022349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.941214, 14.422723, 10.905781>,  <23.077887, 13.722114, 10.717565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.941214, 14.422723, 10.905781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.336737, 14.382099, 10.949504>,  <23.574051, 14.357725, 10.975738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.336737, 14.382099, 10.949504>,  <22.941214, 14.422723, 10.905781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.336737, 14.382099, 10.949504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135000, 0.920950, -0.365549,
		-0.063542, 0.376214, 0.924352,
		0.988806, -0.101560, 0.109308,
		23.633379, 14.351631, 10.982296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.062645, 15.003209, 11.252916>,  <22.941214, 14.422723, 10.905781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.062645, 15.003209, 11.252916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415224, 14.877188, 11.112179>,  <23.626772, 14.801575, 11.027736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.415224, 14.877188, 11.112179>,  <23.062645, 15.003209, 11.252916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.415224, 14.877188, 11.112179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217643, 0.932131, -0.289420,
		0.419148, 0.178531, 0.890192,
		0.881445, -0.315054, -0.351845,
		23.679657, 14.782672, 11.006625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.483568, 15.478696, 11.501547>,  <23.062645, 15.003209, 11.252916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.483568, 15.478696, 11.501547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.714977, 15.344931, 11.203961>,  <23.853823, 15.264671, 11.025410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.714977, 15.344931, 11.203961>,  <23.483568, 15.478696, 11.501547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.714977, 15.344931, 11.203961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098931, 0.934126, -0.342960,
		0.809646, 0.124809, 0.573495,
		0.578521, -0.334412, -0.743963,
		23.888535, 15.244607, 10.980772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173679, 15.922295, 11.573771>,  <23.483568, 15.478696, 11.501547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173679, 15.922295, 11.573771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.110199, 15.794399, 11.200122>,  <24.072111, 15.717662, 10.975933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.110199, 15.794399, 11.200122>,  <24.173679, 15.922295, 11.573771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.110199, 15.794399, 11.200122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008088, 0.945658, -0.325062,
		0.987294, -0.059142, -0.147488,
		-0.158698, -0.319739, -0.934121,
		24.062590, 15.698478, 10.919886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614162, 16.293232, 11.181690>,  <24.173679, 15.922295, 11.573771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614162, 16.293232, 11.181690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355230, 16.166946, 10.904190>,  <24.199871, 16.091175, 10.737690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355230, 16.166946, 10.904190>,  <24.614162, 16.293232, 11.181690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355230, 16.166946, 10.904190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052322, 0.889629, -0.453676,
		0.760412, -0.329977, -0.559365,
		-0.647330, -0.315714, -0.693750,
		24.161032, 16.072233, 10.696065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958580, 16.325241, 10.553939>,  <24.614162, 16.293232, 11.181690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958580, 16.325241, 10.553939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.573519, 16.339506, 10.446585>,  <24.342482, 16.348064, 10.382173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.573519, 16.339506, 10.446585>,  <24.958580, 16.325241, 10.553939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573519, 16.339506, 10.446585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210272, 0.722922, -0.658156,
		0.170551, -0.690009, -0.703421,
		-0.962652, 0.035661, -0.268385,
		24.284723, 16.350204, 10.366069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970222, 16.520607, 9.848372>,  <24.958580, 16.325241, 10.553939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970222, 16.520607, 9.848372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.575663, 16.534899, 9.912545>,  <24.338926, 16.543474, 9.951050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.575663, 16.534899, 9.912545>,  <24.970222, 16.520607, 9.848372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.575663, 16.534899, 9.912545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105636, 0.609995, -0.785332,
		-0.125924, -0.791599, -0.597925,
		-0.986400, 0.035729, 0.160434,
		24.279743, 16.545618, 9.960675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610245, 16.324062, 9.203049>,  <24.970222, 16.520607, 9.848372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610245, 16.324062, 9.203049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.369337, 16.569698, 9.407076>,  <24.224792, 16.717079, 9.529492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.369337, 16.569698, 9.407076>,  <24.610245, 16.324062, 9.203049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369337, 16.569698, 9.407076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012308, 0.646015, -0.763225,
		-0.798199, -0.453388, -0.396632,
		-0.602268, 0.614088, 0.510068,
		24.188656, 16.753925, 9.560097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240551, 16.537258, 8.742964>,  <24.610245, 16.324062, 9.203049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240551, 16.537258, 8.742964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.211567, 16.816744, 9.027652>,  <24.194176, 16.984436, 9.198464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.211567, 16.816744, 9.027652>,  <24.240551, 16.537258, 8.742964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211567, 16.816744, 9.027652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102062, 0.704655, -0.702171,
		-0.992135, -0.123521, 0.020252,
		-0.072462, 0.698716, 0.711720,
		24.189829, 17.026360, 9.241168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550749, 16.785070, 8.564997>,  <24.240551, 16.537258, 8.742964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550749, 16.785070, 8.564997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.753744, 17.047066, 8.788940>,  <23.875542, 17.204264, 8.923306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.753744, 17.047066, 8.788940>,  <23.550749, 16.785070, 8.564997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.753744, 17.047066, 8.788940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093096, 0.687624, -0.720073,
		-0.856613, 0.313310, 0.409940,
		0.507491, 0.654988, 0.559860,
		23.905991, 17.243563, 8.956899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.251534, 17.354300, 8.309131>,  <23.550749, 16.785070, 8.564997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.251534, 17.354300, 8.309131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.565815, 17.489079, 8.516644>,  <23.754383, 17.569946, 8.641153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.565815, 17.489079, 8.516644>,  <23.251534, 17.354300, 8.309131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.565815, 17.489079, 8.516644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119889, 0.739794, -0.662065,
		-0.606876, 0.582383, 0.540862,
		0.785702, 0.336948, 0.518785,
		23.801525, 17.590162, 8.672280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.100460, 18.088379, 8.361902>,  <23.251534, 17.354300, 8.309131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.100460, 18.088379, 8.361902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.492029, 18.028931, 8.417937>,  <23.726971, 17.993261, 8.451558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.492029, 18.028931, 8.417937>,  <23.100460, 18.088379, 8.361902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.492029, 18.028931, 8.417937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204004, 0.744373, -0.635840,
		-0.009779, 0.651015, 0.759001,
		0.978921, -0.148622, 0.140089,
		23.785706, 17.984344, 8.459964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.354364, 18.715263, 8.425438>,  <23.100460, 18.088379, 8.361902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.354364, 18.715263, 8.425438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.668732, 18.496489, 8.310068>,  <23.857353, 18.365223, 8.240846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.668732, 18.496489, 8.310068>,  <23.354364, 18.715263, 8.425438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668732, 18.496489, 8.310068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259905, 0.715459, -0.648512,
		0.561052, 0.434715, 0.704446,
		0.785920, -0.546938, -0.288425,
		23.904509, 18.332407, 8.223540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.859116, 19.207308, 8.294595>,  <23.354364, 18.715263, 8.425438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.859116, 19.207308, 8.294595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.976366, 18.868172, 8.117847>,  <24.046717, 18.664690, 8.011799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.976366, 18.868172, 8.117847>,  <23.859116, 19.207308, 8.294595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.976366, 18.868172, 8.117847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362884, 0.526246, -0.769012,
		0.884530, 0.065070, 0.461923,
		0.293125, -0.847839, -0.441868,
		24.064304, 18.613819, 7.985287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507067, 19.357262, 8.059106>,  <23.859116, 19.207308, 8.294595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507067, 19.357262, 8.059106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.369385, 19.046293, 7.848529>,  <24.286776, 18.859713, 7.722184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.369385, 19.046293, 7.848529>,  <24.507067, 19.357262, 8.059106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369385, 19.046293, 7.848529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147441, 0.508989, -0.848051,
		0.927246, -0.369521, -0.060572,
		-0.344203, -0.777421, -0.526441,
		24.266123, 18.813066, 7.690597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986586, 19.133129, 7.612556>,  <24.507067, 19.357262, 8.059106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986586, 19.133129, 7.612556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.644096, 19.026125, 7.435776>,  <24.438602, 18.961922, 7.329708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.644096, 19.026125, 7.435776>,  <24.986586, 19.133129, 7.612556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644096, 19.026125, 7.435776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134791, 0.710171, -0.691005,
		0.498713, -0.651225, -0.572007,
		-0.856222, -0.267511, -0.441951,
		24.387230, 18.945871, 7.303191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.620609, 18.464123, 17.203825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308254, 18.260538, 17.348700>,  <17.120842, 18.138388, 17.435623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308254, 18.260538, 17.348700>,  <17.620609, 18.464123, 17.203825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308254, 18.260538, 17.348700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245948, -0.783466, -0.570692,
		0.574219, -0.356567, 0.736975,
		-0.780885, -0.508960, 0.362184,
		17.073988, 18.107849, 17.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838678, 17.765675, 17.297199>,  <17.620609, 18.464123, 17.203825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838678, 17.765675, 17.297199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439280, 17.748314, 17.283829>,  <17.199640, 17.737898, 17.275806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439280, 17.748314, 17.283829>,  <17.838678, 17.765675, 17.297199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439280, 17.748314, 17.283829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054748, -0.812016, -0.581062,
		-0.001925, -0.582020, 0.813173,
		-0.998498, -0.043401, -0.033427,
		17.139730, 17.735294, 17.273800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.774460, 17.032085, 17.331638>,  <17.838678, 17.765675, 17.297199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.774460, 17.032085, 17.331638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423475, 17.183754, 17.214136>,  <17.212885, 17.274755, 17.143635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423475, 17.183754, 17.214136>,  <17.774460, 17.032085, 17.331638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423475, 17.183754, 17.214136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171666, -0.820127, -0.545823,
		-0.447875, -0.428511, 0.784720,
		-0.877461, 0.379170, -0.293754,
		17.160236, 17.297504, 17.126011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116110, 16.654268, 17.576891>,  <17.774460, 17.032085, 17.331638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116110, 16.654268, 17.576891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011950, 16.857170, 17.248285>,  <16.949453, 16.978910, 17.051123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011950, 16.857170, 17.248285>,  <17.116110, 16.654268, 17.576891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011950, 16.857170, 17.248285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131439, -0.861571, -0.490325,
		-0.956512, -0.019702, 0.291028,
		-0.260401, 0.507254, -0.821513,
		16.933828, 17.009346, 17.001831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479935, 16.364895, 17.336771>,  <17.116110, 16.654268, 17.576891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479935, 16.364895, 17.336771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650723, 16.540117, 17.020340>,  <16.753195, 16.645250, 16.830481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650723, 16.540117, 17.020340>,  <16.479935, 16.364895, 17.336771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650723, 16.540117, 17.020340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132318, -0.835146, -0.533876,
		-0.894532, 0.332623, -0.298620,
		0.426970, 0.438056, -0.791077,
		16.778814, 16.671534, 16.783016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115238, 15.997570, 16.807098>,  <16.479935, 16.364895, 17.336771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115238, 15.997570, 16.807098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390335, 16.206505, 16.605434>,  <16.555393, 16.331865, 16.484436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390335, 16.206505, 16.605434>,  <16.115238, 15.997570, 16.807098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390335, 16.206505, 16.605434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094788, -0.623920, -0.775719,
		-0.719742, 0.581282, -0.379583,
		0.687740, 0.522337, -0.504160,
		16.596657, 16.363207, 16.454185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869237, 16.041435, 16.066898>,  <16.115238, 15.997570, 16.807098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869237, 16.041435, 16.066898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262756, 16.103273, 16.030584>,  <16.498867, 16.140375, 16.008797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262756, 16.103273, 16.030584>,  <15.869237, 16.041435, 16.066898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262756, 16.103273, 16.030584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014066, -0.571385, -0.820562,
		-0.178726, 0.805991, -0.564302,
		0.983798, 0.154593, -0.090784,
		16.557896, 16.149651, 16.003349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014118, 16.193310, 15.315948>,  <15.869237, 16.041435, 16.066898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014118, 16.193310, 15.315948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360720, 16.093760, 15.489029>,  <16.568680, 16.034029, 15.592877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360720, 16.093760, 15.489029>,  <16.014118, 16.193310, 15.315948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360720, 16.093760, 15.489029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193501, -0.631593, -0.750765,
		0.460138, 0.734269, -0.499121,
		0.866505, -0.248875, 0.432702,
		16.620670, 16.019096, 15.618839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525362, 16.335470, 14.760900>,  <16.014118, 16.193310, 15.315948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525362, 16.335470, 14.760900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693911, 16.076294, 15.014709>,  <16.795040, 15.920788, 15.166994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693911, 16.076294, 15.014709>,  <16.525362, 16.335470, 14.760900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693911, 16.076294, 15.014709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347109, -0.531163, -0.772904,
		0.837831, 0.545929, 0.001089,
		0.421373, -0.647941, 0.634522,
		16.820322, 15.881911, 15.205065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158329, 16.084791, 14.466832>,  <16.525362, 16.335470, 14.760900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158329, 16.084791, 14.466832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073801, 15.800284, 14.734994>,  <17.023085, 15.629580, 14.895891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073801, 15.800284, 14.734994>,  <17.158329, 16.084791, 14.466832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073801, 15.800284, 14.734994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246675, -0.702500, -0.667567,
		0.945778, 0.024302, 0.323903,
		-0.211319, -0.711269, 0.670403,
		17.010405, 15.586904, 14.936115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593676, 15.597284, 14.287696>,  <17.158329, 16.084791, 14.466832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593676, 15.597284, 14.287696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.356056, 15.371626, 14.517077>,  <17.213486, 15.236231, 14.654706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.356056, 15.371626, 14.517077>,  <17.593676, 15.597284, 14.287696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356056, 15.371626, 14.517077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116603, -0.765727, -0.632508,
		0.795935, -0.308873, 0.520658,
		-0.594046, -0.564146, 0.573454,
		17.177843, 15.202382, 14.689114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976835, 14.914272, 14.483642>,  <17.593676, 15.597284, 14.287696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976835, 14.914272, 14.483642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577868, 14.886467, 14.476420>,  <17.338488, 14.869784, 14.472088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577868, 14.886467, 14.476420>,  <17.976835, 14.914272, 14.483642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.577868, 14.886467, 14.476420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063232, -0.730801, -0.679656,
		0.034052, -0.679042, 0.733309,
		-0.997418, -0.069513, -0.018052,
		17.278643, 14.865613, 14.471004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.113295, 14.260118, 14.208464>,  <17.976835, 14.914272, 14.483642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.113295, 14.260118, 14.208464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.226217, 14.077229, 13.871121>,  <18.293970, 13.967494, 13.668716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.226217, 14.077229, 13.871121>,  <18.113295, 14.260118, 14.208464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226217, 14.077229, 13.871121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945846, 0.279506, 0.165080,
		0.160244, -0.844287, 0.511371,
		0.282307, -0.457226, -0.843355,
		18.310909, 13.940061, 13.618114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869295, 14.064178, 14.229632>,  <18.113295, 14.260118, 14.208464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869295, 14.064178, 14.229632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797974, 14.042188, 13.836657>,  <18.755180, 14.028994, 13.600871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797974, 14.042188, 13.836657>,  <18.869295, 14.064178, 14.229632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797974, 14.042188, 13.836657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962140, 0.199432, -0.185778,
		0.206143, -0.978369, 0.017336,
		-0.178302, -0.054977, -0.982439,
		18.744482, 14.025695, 13.541924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884390, 14.592566, 14.742195>,  <18.869295, 14.064178, 14.229632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884390, 14.592566, 14.742195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158552, 14.308484, 14.806479>,  <19.323050, 14.138036, 14.845050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158552, 14.308484, 14.806479>,  <18.884390, 14.592566, 14.742195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158552, 14.308484, 14.806479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276590, -0.049763, 0.959699,
		-0.673584, -0.702235, -0.230543,
		0.685407, -0.710204, 0.160712,
		19.364174, 14.095423, 14.854693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.702524, 13.872001, 15.153945>,  <18.884390, 14.592566, 14.742195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.702524, 13.872001, 15.153945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078512, 13.981175, 15.235884>,  <19.304106, 14.046680, 15.285047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078512, 13.981175, 15.235884>,  <18.702524, 13.872001, 15.153945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078512, 13.981175, 15.235884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227117, 0.052310, 0.972462,
		0.254707, -0.960608, 0.111159,
		0.939969, 0.272939, 0.204847,
		19.360502, 14.063057, 15.297338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931917, 13.388277, 15.662415>,  <18.702524, 13.872001, 15.153945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931917, 13.388277, 15.662415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194525, 13.684464, 15.719952>,  <19.352089, 13.862176, 15.754474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194525, 13.684464, 15.719952>,  <18.931917, 13.388277, 15.662415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194525, 13.684464, 15.719952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146038, -0.062313, 0.987314,
		0.740038, -0.669197, 0.067227,
		0.656519, 0.740467, 0.143843,
		19.391481, 13.906604, 15.763104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454569, 13.192785, 16.269745>,  <18.931917, 13.388277, 15.662415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454569, 13.192785, 16.269745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468504, 13.590056, 16.225229>,  <19.476866, 13.828419, 16.198519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468504, 13.590056, 16.225229>,  <19.454569, 13.192785, 16.269745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468504, 13.590056, 16.225229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147234, 0.115244, 0.982365,
		0.988488, -0.017840, 0.150245,
		0.034840, 0.993177, -0.111290,
		19.478956, 13.888010, 16.191843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971512, 13.542783, 16.793810>,  <19.454569, 13.192785, 16.269745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971512, 13.542783, 16.793810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703030, 13.824182, 16.700365>,  <19.541941, 13.993021, 16.644299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703030, 13.824182, 16.700365>,  <19.971512, 13.542783, 16.793810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.703030, 13.824182, 16.700365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366904, -0.041456, 0.929334,
		0.644098, 0.709489, 0.285941,
		-0.671207, 0.703496, -0.233613,
		19.501667, 14.035231, 16.630281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059767, 14.028732, 17.375607>,  <19.971512, 13.542783, 16.793810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059767, 14.028732, 17.375607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.714073, 14.113410, 17.193052>,  <19.506657, 14.164217, 17.083521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.714073, 14.113410, 17.193052>,  <20.059767, 14.028732, 17.375607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714073, 14.113410, 17.193052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314517, 0.480679, 0.818552,
		0.392657, 0.850960, -0.348837,
		-0.864233, 0.211695, -0.456383,
		19.454803, 14.176919, 17.056137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828735, 14.651666, 17.527021>,  <20.059767, 14.028732, 17.375607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828735, 14.651666, 17.527021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490681, 14.464767, 17.423157>,  <19.287848, 14.352629, 17.360838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490681, 14.464767, 17.423157>,  <19.828735, 14.651666, 17.527021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490681, 14.464767, 17.423157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489583, 0.481578, 0.726905,
		-0.214597, 0.741460, -0.635756,
		-0.845137, -0.467246, -0.259661,
		19.237139, 14.324594, 17.345259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402510, 15.029998, 17.846455>,  <19.828735, 14.651666, 17.527021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402510, 15.029998, 17.846455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144913, 14.751995, 17.718557>,  <18.990355, 14.585194, 17.641819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144913, 14.751995, 17.718557>,  <19.402510, 15.029998, 17.846455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144913, 14.751995, 17.718557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675305, 0.320037, 0.664484,
		-0.359492, 0.643849, -0.675444,
		-0.643994, -0.695007, -0.319744,
		18.951714, 14.543493, 17.622635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753096, 15.334175, 17.761560>,  <19.402510, 15.029998, 17.846455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753096, 15.334175, 17.761560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698942, 14.943558, 17.828535>,  <18.666451, 14.709188, 17.868721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.698942, 14.943558, 17.828535>,  <18.753096, 15.334175, 17.761560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698942, 14.943558, 17.828535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703755, 0.213734, 0.677530,
		-0.697424, -0.026109, -0.716183,
		-0.135383, -0.976543, 0.167438,
		18.658327, 14.650595, 17.878767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074320, 15.232619, 17.782972>,  <18.753096, 15.334175, 17.761560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074320, 15.232619, 17.782972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202927, 14.900758, 17.965532>,  <18.280090, 14.701641, 18.075069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202927, 14.900758, 17.965532>,  <18.074320, 15.232619, 17.782972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.202927, 14.900758, 17.965532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692050, 0.123092, 0.711277,
		-0.646293, -0.544539, -0.534586,
		0.321515, -0.829654, 0.456402,
		18.299381, 14.651862, 18.102453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462166, 14.874465, 18.019115>,  <18.074320, 15.232619, 17.782972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462166, 14.874465, 18.019115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737114, 14.673867, 18.229267>,  <17.902082, 14.553509, 18.355358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737114, 14.673867, 18.229267>,  <17.462166, 14.874465, 18.019115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737114, 14.673867, 18.229267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591210, 0.033848, 0.805807,
		-0.421891, -0.864499, -0.273222,
		0.687372, -0.501494, 0.525380,
		17.943325, 14.523419, 18.386881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138319, 14.323275, 18.332506>,  <17.462166, 14.874465, 18.019115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138319, 14.323275, 18.332506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457197, 14.395432, 18.562962>,  <17.648525, 14.438725, 18.701235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457197, 14.395432, 18.562962>,  <17.138319, 14.323275, 18.332506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.457197, 14.395432, 18.562962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603596, 0.257393, 0.754600,
		-0.012172, -0.949320, 0.314075,
		0.797197, 0.180390, 0.576139,
		17.696356, 14.449549, 18.735804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054209, 13.985080, 19.007990>,  <17.138319, 14.323275, 18.332506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054209, 13.985080, 19.007990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339142, 14.257504, 19.075800>,  <17.510101, 14.420958, 19.116486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339142, 14.257504, 19.075800>,  <17.054209, 13.985080, 19.007990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339142, 14.257504, 19.075800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424236, 0.225406, 0.877049,
		0.559110, -0.696671, 0.449494,
		0.712334, 0.681059, 0.169526,
		17.552841, 14.461822, 19.126657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160545, 13.938581, 19.725376>,  <17.054209, 13.985080, 19.007990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160545, 13.938581, 19.725376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313744, 14.296612, 19.634033>,  <17.405663, 14.511431, 19.579227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313744, 14.296612, 19.634033>,  <17.160545, 13.938581, 19.725376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313744, 14.296612, 19.634033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411666, 0.386686, 0.825230,
		0.826949, -0.222052, 0.516573,
		0.382996, 0.895079, -0.228359,
		17.428642, 14.565136, 19.565525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.351484, 13.585238, 20.450804>,  <17.160545, 13.938581, 19.725376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.351484, 13.585238, 20.450804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036728, 13.385615, 20.595993>,  <16.847874, 13.265842, 20.683107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036728, 13.385615, 20.595993>,  <17.351484, 13.585238, 20.450804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036728, 13.385615, 20.595993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000417, -0.587768, -0.809030,
		0.617094, -0.636768, 0.462300,
		-0.786889, -0.499055, 0.362974,
		16.800661, 13.235899, 20.704885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417206, 12.880836, 20.367489>,  <17.351484, 13.585238, 20.450804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417206, 12.880836, 20.367489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024094, 12.881776, 20.441395>,  <16.788227, 12.882339, 20.485739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024094, 12.881776, 20.441395>,  <17.417206, 12.880836, 20.367489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.024094, 12.881776, 20.441395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146355, -0.620300, -0.770590,
		0.112798, -0.784361, 0.609962,
		-0.982780, 0.002350, 0.184764,
		16.729259, 12.882481, 20.496824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335163, 12.191904, 20.250092>,  <17.417206, 12.880836, 20.367489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.335163, 12.191904, 20.250092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970514, 12.354737, 20.227354>,  <16.751726, 12.452437, 20.213713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970514, 12.354737, 20.227354>,  <17.335163, 12.191904, 20.250092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970514, 12.354737, 20.227354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154337, -0.467184, -0.870585,
		-0.380957, -0.784871, 0.488723,
		-0.911621, 0.407084, -0.056842,
		16.697027, 12.476862, 20.210302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999493, 11.626249, 20.038841>,  <17.335163, 12.191904, 20.250092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999493, 11.626249, 20.038841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808313, 11.965161, 19.946159>,  <16.693605, 12.168509, 19.890551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808313, 11.965161, 19.946159>,  <16.999493, 11.626249, 20.038841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808313, 11.965161, 19.946159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052162, -0.290692, -0.955394,
		-0.876839, -0.444541, 0.183131,
		-0.477946, 0.847279, -0.231702,
		16.664930, 12.219345, 19.876648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349380, 11.379068, 19.735981>,  <16.999493, 11.626249, 20.038841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349380, 11.379068, 19.735981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400852, 11.756049, 19.612547>,  <16.431736, 11.982238, 19.538486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400852, 11.756049, 19.612547>,  <16.349380, 11.379068, 19.735981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400852, 11.756049, 19.612547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186052, -0.282703, -0.940991,
		-0.974077, 0.178500, 0.138967,
		0.128681, 0.942452, -0.308585,
		16.439457, 12.038785, 19.519972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836640, 11.509960, 19.271223>,  <16.349380, 11.379068, 19.735981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836640, 11.509960, 19.271223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129950, 11.766169, 19.179968>,  <16.305935, 11.919893, 19.125216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129950, 11.766169, 19.179968>,  <15.836640, 11.509960, 19.271223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129950, 11.766169, 19.179968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154225, -0.170099, -0.973284,
		-0.662213, 0.748866, -0.025945,
		0.733272, 0.640520, -0.228136,
		16.349932, 11.958324, 19.111526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530129, 11.832314, 18.769716>,  <15.836640, 11.509960, 19.271223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530129, 11.832314, 18.769716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923966, 11.891656, 18.732687>,  <16.160269, 11.927261, 18.710470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923966, 11.891656, 18.732687>,  <15.530129, 11.832314, 18.769716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923966, 11.891656, 18.732687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077441, -0.104729, -0.991481,
		-0.156786, 0.983373, -0.091627,
		0.984592, 0.148355, -0.092574,
		16.219343, 11.936162, 18.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.606372, 12.244075, 18.099119>,  <15.530129, 11.832314, 18.769716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.606372, 12.244075, 18.099119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965055, 12.085093, 18.177034>,  <16.180265, 11.989703, 18.223783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965055, 12.085093, 18.177034>,  <15.606372, 12.244075, 18.099119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965055, 12.085093, 18.177034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156254, -0.127494, -0.979454,
		0.414124, 0.908721, -0.052221,
		0.896708, -0.397456, 0.194790,
		16.234068, 11.965856, 18.235472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030222, 12.610886, 17.655291>,  <15.606372, 12.244075, 18.099119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030222, 12.610886, 17.655291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263645, 12.299627, 17.748198>,  <16.403700, 12.112872, 17.803942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263645, 12.299627, 17.748198>,  <16.030222, 12.610886, 17.655291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263645, 12.299627, 17.748198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236808, -0.110527, -0.965249,
		0.776777, 0.618281, 0.119773,
		0.583558, -0.778146, 0.232269,
		16.438713, 12.066183, 17.817879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679607, 12.718077, 17.312307>,  <16.030222, 12.610886, 17.655291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679607, 12.718077, 17.312307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626984, 12.326118, 17.372303>,  <16.595409, 12.090943, 17.408300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626984, 12.326118, 17.372303>,  <16.679607, 12.718077, 17.312307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626984, 12.326118, 17.372303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294758, -0.183130, -0.937860,
		0.946472, -0.079173, 0.312924,
		-0.131559, -0.979895, 0.149991,
		16.587515, 12.032150, 17.417301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323359, 12.411504, 17.082045>,  <16.679607, 12.718077, 17.312307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323359, 12.411504, 17.082045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020599, 12.151318, 17.056740>,  <16.838943, 11.995206, 17.041557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020599, 12.151318, 17.056740>,  <17.323359, 12.411504, 17.082045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020599, 12.151318, 17.056740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243193, -0.190482, -0.951091,
		0.606602, -0.735262, 0.302364,
		-0.756896, -0.650466, -0.063264,
		16.793531, 11.956178, 17.037762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621332, 11.877101, 16.623547>,  <17.323359, 12.411504, 17.082045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621332, 11.877101, 16.623547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.225355, 11.822161, 16.637117>,  <16.987770, 11.789197, 16.645260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.225355, 11.822161, 16.637117>,  <17.621332, 11.877101, 16.623547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225355, 11.822161, 16.637117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001769, -0.227775, -0.973712,
		0.141468, -0.963978, 0.225241,
		-0.989941, -0.137351, 0.033928,
		16.928373, 11.780955, 16.647295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.306385, 15.875401, 25.626253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.671677, 15.817111, 25.778452>,  <16.890852, 15.782137, 25.869772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.671677, 15.817111, 25.778452>,  <16.306385, 15.875401, 25.626253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671677, 15.817111, 25.778452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342522, -0.231182, -0.910622,
		0.220666, 0.961935, -0.161208,
		0.913228, -0.145726, 0.380498,
		16.945644, 15.773393, 25.892601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664150, 16.261711, 25.130100>,  <16.306385, 15.875401, 25.626253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664150, 16.261711, 25.130100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.886072, 15.987311, 25.318398>,  <17.019226, 15.822672, 25.431376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.886072, 15.987311, 25.318398>,  <16.664150, 16.261711, 25.130100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886072, 15.987311, 25.318398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322035, -0.344636, -0.881770,
		0.767127, 0.640807, 0.029709,
		0.554806, -0.685997, 0.470742,
		17.052513, 15.781512, 25.459620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258801, 16.102390, 24.715193>,  <16.664150, 16.261711, 25.130100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258801, 16.102390, 24.715193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.233858, 15.780679, 24.951582>,  <17.218893, 15.587652, 25.093414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.233858, 15.780679, 24.951582>,  <17.258801, 16.102390, 24.715193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233858, 15.780679, 24.951582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256627, -0.585135, -0.769259,
		0.964497, 0.103693, 0.242885,
		-0.062354, -0.804279, 0.590972,
		17.215153, 15.539395, 25.128874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776974, 15.757027, 24.494223>,  <17.258801, 16.102390, 24.715193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776974, 15.757027, 24.494223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.517458, 15.502278, 24.660822>,  <17.361750, 15.349429, 24.760782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.517458, 15.502278, 24.660822>,  <17.776974, 15.757027, 24.494223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517458, 15.502278, 24.660822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187430, -0.664203, -0.723674,
		0.737526, -0.391446, 0.550295,
		-0.648787, -0.636871, 0.416498,
		17.322823, 15.311217, 24.785772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072777, 15.153941, 24.549292>,  <17.776974, 15.757027, 24.494223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072777, 15.153941, 24.549292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.685408, 15.055419, 24.564713>,  <17.452986, 14.996305, 24.573965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.685408, 15.055419, 24.564713>,  <18.072777, 15.153941, 24.549292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685408, 15.055419, 24.564713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138968, -0.661710, -0.736768,
		0.206980, -0.708148, 0.675046,
		-0.968425, -0.246306, 0.038551,
		17.394880, 14.981527, 24.576277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093693, 14.393169, 24.486370>,  <18.072777, 15.153941, 24.549292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093693, 14.393169, 24.486370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.736015, 14.527065, 24.367464>,  <17.521408, 14.607403, 24.296120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.736015, 14.527065, 24.367464>,  <18.093693, 14.393169, 24.486370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736015, 14.527065, 24.367464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108203, -0.482728, -0.869060,
		-0.434404, -0.809275, 0.395434,
		-0.894195, 0.334736, -0.297265,
		17.467756, 14.627487, 24.278284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823448, 13.825694, 24.235317>,  <18.093693, 14.393169, 24.486370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823448, 13.825694, 24.235317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.562841, 14.093112, 24.091888>,  <17.406477, 14.253563, 24.005831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.562841, 14.093112, 24.091888>,  <17.823448, 13.825694, 24.235317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562841, 14.093112, 24.091888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101216, -0.545032, -0.832283,
		-0.751852, -0.505953, 0.422765,
		-0.651517, 0.668544, -0.358572,
		17.367386, 14.293675, 23.984316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179043, 13.421472, 23.957016>,  <17.823448, 13.825694, 24.235317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179043, 13.421472, 23.957016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.212288, 13.783750, 23.790735>,  <17.232235, 14.001117, 23.690968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.212288, 13.783750, 23.790735>,  <17.179043, 13.421472, 23.957016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212288, 13.783750, 23.790735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269227, -0.381226, -0.884411,
		-0.959484, 0.185424, 0.212153,
		0.083113, 0.905696, -0.415701,
		17.237223, 14.055458, 23.666025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687836, 13.277885, 23.541298>,  <17.179043, 13.421472, 23.957016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687836, 13.277885, 23.541298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.876337, 13.597136, 23.391146>,  <16.989437, 13.788688, 23.301054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.876337, 13.597136, 23.391146>,  <16.687836, 13.277885, 23.541298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.876337, 13.597136, 23.391146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419417, -0.171618, -0.891424,
		-0.775894, 0.577527, 0.253873,
		0.471252, 0.798129, -0.375382,
		17.017714, 13.836576, 23.278532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153156, 13.702542, 23.090439>,  <16.687836, 13.277885, 23.541298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153156, 13.702542, 23.090439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.523283, 13.783175, 22.961971>,  <16.745359, 13.831553, 22.884892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.523283, 13.783175, 22.961971>,  <16.153156, 13.702542, 23.090439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.523283, 13.783175, 22.961971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242849, -0.335454, -0.910217,
		-0.291219, 0.920237, -0.261448,
		0.925319, 0.201581, -0.321169,
		16.800879, 13.843649, 22.865620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103897, 13.940858, 22.507332>,  <16.153156, 13.702542, 23.090439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103897, 13.940858, 22.507332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.491510, 13.844686, 22.484833>,  <16.724079, 13.786983, 22.471334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.491510, 13.844686, 22.484833>,  <16.103897, 13.940858, 22.507332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491510, 13.844686, 22.484833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085904, -0.114705, -0.989678,
		0.231498, 0.963865, -0.131808,
		0.969035, -0.240431, -0.056246,
		16.782221, 13.772556, 22.467958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196373, 14.163981, 21.853745>,  <16.103897, 13.940858, 22.507332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196373, 14.163981, 21.853745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.513313, 13.928592, 21.918097>,  <16.703478, 13.787358, 21.956707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.513313, 13.928592, 21.918097>,  <16.196373, 14.163981, 21.853745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513313, 13.928592, 21.918097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007696, -0.254043, -0.967162,
		0.610019, 0.767568, -0.196762,
		0.792349, -0.588473, 0.160879,
		16.751019, 13.752049, 21.966360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595358, 14.405805, 21.285532>,  <16.196373, 14.163981, 21.853745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.595358, 14.405805, 21.285532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.662697, 14.029648, 21.403732>,  <16.703100, 13.803953, 21.474653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.662697, 14.029648, 21.403732>,  <16.595358, 14.405805, 21.285532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662697, 14.029648, 21.403732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150706, -0.320811, -0.935077,
		0.974140, 0.112882, -0.195729,
		0.168345, -0.940393, 0.295502,
		16.713200, 13.747530, 21.492382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009493, 14.144354, 20.810116>,  <16.595358, 14.405805, 21.285532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009493, 14.144354, 20.810116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.888420, 13.795373, 20.963587>,  <16.815777, 13.585984, 21.055670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.888420, 13.795373, 20.963587>,  <17.009493, 14.144354, 20.810116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888420, 13.795373, 20.963587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130966, -0.360670, -0.923453,
		0.944051, -0.329761, -0.005094,
		-0.302682, -0.872453, 0.383678,
		16.797615, 13.533637, 21.078690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572414, 14.267936, 20.446884>,  <17.009493, 14.144354, 20.810116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572414, 14.267936, 20.446884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.508694, 14.584828, 20.211260>,  <17.470461, 14.774964, 20.069885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.508694, 14.584828, 20.211260>,  <17.572414, 14.267936, 20.446884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508694, 14.584828, 20.211260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081364, 0.605186, 0.791916,
		0.983872, 0.078224, -0.160865,
		-0.159300, 0.792232, -0.589060,
		17.460903, 14.822498, 20.034542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895863, 14.767809, 20.782928>,  <17.572414, 14.267936, 20.446884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.895863, 14.767809, 20.782928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.664732, 14.968172, 20.525181>,  <17.526054, 15.088390, 20.370533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.664732, 14.968172, 20.525181>,  <17.895863, 14.767809, 20.782928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664732, 14.968172, 20.525181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040858, 0.770767, 0.635805,
		0.815137, 0.393712, -0.424903,
		-0.577826, 0.500908, -0.644367,
		17.491385, 15.118444, 20.331871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177114, 15.366147, 20.818527>,  <17.895863, 14.767809, 20.782928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177114, 15.366147, 20.818527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.821323, 15.469463, 20.667734>,  <17.607849, 15.531453, 20.577259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.821323, 15.469463, 20.667734>,  <18.177114, 15.366147, 20.818527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821323, 15.469463, 20.667734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050622, 0.764173, 0.643021,
		0.454166, 0.591036, -0.666640,
		-0.889477, 0.258292, -0.376982,
		17.554480, 15.546951, 20.554640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175674, 16.112520, 20.737383>,  <18.177114, 15.366147, 20.818527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.175674, 16.112520, 20.737383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.792997, 15.998709, 20.761986>,  <17.563391, 15.930422, 20.776747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.792997, 15.998709, 20.761986>,  <18.175674, 16.112520, 20.737383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792997, 15.998709, 20.761986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169168, 0.715363, 0.677967,
		-0.236901, 0.638200, -0.732515,
		-0.956692, -0.284529, 0.061507,
		17.505989, 15.913350, 20.780437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765018, 16.736847, 20.786970>,  <18.175674, 16.112520, 20.737383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765018, 16.736847, 20.786970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.503046, 16.466307, 20.921797>,  <17.345863, 16.303982, 21.002693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.503046, 16.466307, 20.921797>,  <17.765018, 16.736847, 20.786970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503046, 16.466307, 20.921797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216317, 0.595166, 0.773941,
		-0.724068, 0.433963, -0.536099,
		-0.654929, -0.676353, 0.337067,
		17.306568, 16.263401, 21.022917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.145876, 16.997471, 20.902571>,  <17.765018, 16.736847, 20.786970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.145876, 16.997471, 20.902571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.102600, 16.681519, 21.144028>,  <17.076633, 16.491947, 21.288902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.102600, 16.681519, 21.144028>,  <17.145876, 16.997471, 20.902571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102600, 16.681519, 21.144028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421747, 0.586324, 0.691631,
		-0.900236, -0.179755, -0.396565,
		-0.108191, -0.789881, 0.603641,
		17.070143, 16.444553, 21.325119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494720, 17.163090, 21.253819>,  <17.145876, 16.997471, 20.902571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494720, 17.163090, 21.253819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.659016, 16.871811, 21.473282>,  <16.757593, 16.697044, 21.604959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.659016, 16.871811, 21.473282>,  <16.494720, 17.163090, 21.253819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659016, 16.871811, 21.473282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243359, 0.492368, 0.835673,
		-0.878676, -0.476763, 0.025021,
		0.410738, -0.728197, 0.548657,
		16.782238, 16.653353, 21.637878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002176, 16.847322, 21.655874>,  <16.494720, 17.163090, 21.253819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002176, 16.847322, 21.655874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.348858, 16.781935, 21.844387>,  <16.556866, 16.742702, 21.957495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.348858, 16.781935, 21.844387>,  <16.002176, 16.847322, 21.655874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.348858, 16.781935, 21.844387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276317, 0.629254, 0.726422,
		-0.415302, -0.759814, 0.500207,
		0.866702, -0.163469, 0.471280,
		16.608870, 16.732895, 21.985771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818688, 16.624668, 22.383064>,  <16.002176, 16.847322, 21.655874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818688, 16.624668, 22.383064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.200130, 16.744993, 22.387913>,  <16.428995, 16.817188, 22.390821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.200130, 16.744993, 22.387913>,  <15.818688, 16.624668, 22.383064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200130, 16.744993, 22.387913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145456, 0.425107, 0.893379,
		0.263588, -0.853695, 0.449140,
		0.953606, 0.300813, 0.012122,
		16.486212, 16.835238, 22.391548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994923, 16.413418, 23.050701>,  <15.818688, 16.624668, 22.383064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994923, 16.413418, 23.050701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.250301, 16.696079, 22.928701>,  <16.403528, 16.865677, 22.855501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.250301, 16.696079, 22.928701>,  <15.994923, 16.413418, 23.050701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250301, 16.696079, 22.928701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090079, 0.462158, 0.882211,
		0.764378, -0.535769, 0.358717,
		0.638445, 0.706655, -0.305002,
		16.441835, 16.908075, 22.837200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456078, 16.560766, 23.699589>,  <15.994923, 16.413418, 23.050701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456078, 16.560766, 23.699589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.477049, 16.858782, 23.433605>,  <16.489632, 17.037590, 23.274015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.477049, 16.858782, 23.433605>,  <16.456078, 16.560766, 23.699589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477049, 16.858782, 23.433605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212755, 0.658921, 0.721497,
		0.975698, 0.103647, 0.193056,
		0.052428, 0.745037, -0.664959,
		16.492777, 17.082293, 23.234118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.644674, 17.070803, 24.081312>,  <16.456078, 16.560766, 23.699589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.644674, 17.070803, 24.081312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.531227, 17.274973, 23.756590>,  <16.463160, 17.397474, 23.561756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.531227, 17.274973, 23.756590>,  <16.644674, 17.070803, 24.081312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531227, 17.274973, 23.756590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177993, 0.803836, 0.567598,
		0.942274, 0.305476, -0.137129,
		-0.283617, 0.510424, -0.811806,
		16.446142, 17.428101, 23.513048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066490, 17.763163, 23.971716>,  <16.644674, 17.070803, 24.081312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066490, 17.763163, 23.971716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.708591, 17.811394, 23.799721>,  <16.493853, 17.840332, 23.696524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.708591, 17.811394, 23.799721>,  <17.066490, 17.763163, 23.971716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708591, 17.811394, 23.799721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220467, 0.718073, 0.660125,
		0.388357, 0.685443, -0.615911,
		-0.894747, 0.120576, -0.429986,
		16.440166, 17.847567, 23.670725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893497, 18.552109, 23.829817>,  <17.066490, 17.763163, 23.971716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893497, 18.552109, 23.829817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.546309, 18.353498, 23.826082>,  <16.337996, 18.234331, 23.823841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.546309, 18.353498, 23.826082>,  <16.893497, 18.552109, 23.829817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.546309, 18.353498, 23.826082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373825, 0.640869, 0.670479,
		-0.326926, 0.585447, -0.741870,
		-0.867971, -0.496527, -0.009338,
		16.285917, 18.204540, 23.823280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.876098, 17.800013, 22.240252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.199336, 17.605804, 22.373669>,  <10.393279, 17.489279, 22.453718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.199336, 17.605804, 22.373669>,  <9.876098, 17.800013, 22.240252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.199336, 17.605804, 22.373669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078993, -0.471801, -0.878160,
		0.583730, 0.735985, -0.342908,
		0.808096, -0.485521, 0.333542,
		10.441765, 17.460148, 22.473732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.308568, 17.793034, 21.650740>,  <9.876098, 17.800013, 22.240252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.308568, 17.793034, 21.650740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.489100, 17.515781, 21.875549>,  <10.597418, 17.349430, 22.010435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.489100, 17.515781, 21.875549>,  <10.308568, 17.793034, 21.650740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489100, 17.515781, 21.875549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454971, -0.363073, -0.813129,
		0.767662, 0.622693, 0.151490,
		0.451328, -0.693131, 0.562025,
		10.624497, 17.307842, 22.044157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912849, 17.673706, 21.350063>,  <10.308568, 17.793034, 21.650740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912849, 17.673706, 21.350063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.857678, 17.350861, 21.579685>,  <10.824575, 17.157152, 21.717459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.857678, 17.350861, 21.579685>,  <10.912849, 17.673706, 21.350063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.857678, 17.350861, 21.579685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203257, -0.590326, -0.781154,
		0.969362, 0.008939, 0.245474,
		-0.137927, -0.807116, 0.574056,
		10.816300, 17.108727, 21.751902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.510295, 17.347464, 21.373833>,  <10.912849, 17.673706, 21.350063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.510295, 17.347464, 21.373833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.286129, 17.032495, 21.476517>,  <11.151629, 16.843513, 21.538128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.286129, 17.032495, 21.476517>,  <11.510295, 17.347464, 21.373833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286129, 17.032495, 21.476517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377202, -0.518612, -0.767307,
		0.737328, -0.333179, 0.587655,
		-0.560416, -0.787422, 0.256712,
		11.118005, 16.796268, 21.553530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.871839, 16.791758, 21.229992>,  <11.510295, 17.347464, 21.373833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.871839, 16.791758, 21.229992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.520301, 16.609999, 21.288170>,  <11.309379, 16.500942, 21.323076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.520301, 16.609999, 21.288170>,  <11.871839, 16.791758, 21.229992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.520301, 16.609999, 21.288170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252803, -0.702036, -0.665760,
		0.404627, -0.548330, 0.731854,
		-0.878844, -0.454399, 0.145444,
		11.256647, 16.473679, 21.331802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.117754, 16.157951, 21.408785>,  <11.871839, 16.791758, 21.229992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.117754, 16.157951, 21.408785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.751968, 16.151106, 21.247063>,  <11.532497, 16.146997, 21.150028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.751968, 16.151106, 21.247063>,  <12.117754, 16.157951, 21.408785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.751968, 16.151106, 21.247063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314925, -0.657519, -0.684464,
		-0.254124, -0.753243, 0.606668,
		-0.914463, -0.017116, -0.404306,
		11.477630, 16.145971, 21.125771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.015901, 15.449914, 21.264278>,  <12.117754, 16.157951, 21.408785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.015901, 15.449914, 21.264278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725210, 15.616282, 21.045599>,  <11.550796, 15.716102, 20.914391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.725210, 15.616282, 21.045599>,  <12.015901, 15.449914, 21.264278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725210, 15.616282, 21.045599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259544, -0.570616, -0.779124,
		-0.636007, -0.708103, 0.306733,
		-0.726727, 0.415917, -0.546700,
		11.507193, 15.741057, 20.881588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582031, 14.931541, 20.980822>,  <12.015901, 15.449914, 21.264278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582031, 14.931541, 20.980822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.561026, 15.241863, 20.729309>,  <11.548422, 15.428057, 20.578402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.561026, 15.241863, 20.729309>,  <11.582031, 14.931541, 20.980822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.561026, 15.241863, 20.729309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132689, -0.618648, -0.774383,
		-0.989765, -0.124099, -0.070453,
		-0.052515, 0.775806, -0.628782,
		11.545271, 15.474605, 20.540674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.370021, 14.585708, 20.343782>,  <11.582031, 14.931541, 20.980822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.370021, 14.585708, 20.343782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.531884, 14.939374, 20.250401>,  <11.629002, 15.151574, 20.194370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.531884, 14.939374, 20.250401>,  <11.370021, 14.585708, 20.343782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.531884, 14.939374, 20.250401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197072, -0.333609, -0.921883,
		-0.892981, 0.327039, -0.309242,
		0.404657, 0.884167, -0.233456,
		11.653281, 15.204624, 20.180363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.502218, 14.563685, 19.676641>,  <11.370021, 14.585708, 20.343782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.502218, 14.563685, 19.676641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.692929, 14.915097, 19.688444>,  <11.807356, 15.125944, 19.695526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.692929, 14.915097, 19.688444>,  <11.502218, 14.563685, 19.676641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.692929, 14.915097, 19.688444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368696, -0.169392, -0.913986,
		-0.797964, 0.446648, -0.404672,
		0.476778, 0.878528, 0.029508,
		11.835962, 15.178656, 19.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108884, 15.091745, 19.192396>,  <11.502218, 14.563685, 19.676641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108884, 15.091745, 19.192396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.498832, 15.170464, 19.234156>,  <11.732800, 15.217694, 19.259211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.498832, 15.170464, 19.234156>,  <11.108884, 15.091745, 19.192396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.498832, 15.170464, 19.234156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137040, -0.160296, -0.977510,
		-0.175634, 0.967252, -0.183237,
		0.974871, 0.196794, 0.104399,
		11.791293, 15.229502, 19.265476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.339746, 15.577194, 18.652309>,  <11.108884, 15.091745, 19.192396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.339746, 15.577194, 18.652309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.666434, 15.387314, 18.783535>,  <11.862447, 15.273385, 18.862270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.666434, 15.387314, 18.783535>,  <11.339746, 15.577194, 18.652309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666434, 15.387314, 18.783535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208202, -0.287816, -0.934780,
		0.538164, 0.831757, -0.136232,
		0.816720, -0.474702, 0.328066,
		11.911450, 15.244904, 18.881954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.790494, 15.804353, 18.176765>,  <11.339746, 15.577194, 18.652309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.790494, 15.804353, 18.176765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.959329, 15.487489, 18.353096>,  <12.060629, 15.297371, 18.458895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.959329, 15.487489, 18.353096>,  <11.790494, 15.804353, 18.176765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.959329, 15.487489, 18.353096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147922, -0.419567, -0.895591,
		0.894406, 0.443224, -0.059915,
		0.422086, -0.792159, 0.440826,
		12.085955, 15.249841, 18.485344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.385220, 15.585555, 17.688454>,  <11.790494, 15.804353, 18.176765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.385220, 15.585555, 17.688454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.309529, 15.268804, 17.920702>,  <12.264115, 15.078753, 18.060051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.309529, 15.268804, 17.920702>,  <12.385220, 15.585555, 17.688454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309529, 15.268804, 17.920702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181462, -0.609320, -0.771881,
		0.965021, -0.040699, 0.258995,
		-0.189226, -0.791879, 0.580622,
		12.252762, 15.031240, 18.094889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070710, 15.903060, 17.796066>,  <12.385220, 15.585555, 17.688454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070710, 15.903060, 17.796066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.193484, 16.216919, 17.580616>,  <13.267149, 16.405235, 17.451345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.193484, 16.216919, 17.580616>,  <13.070710, 15.903060, 17.796066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.193484, 16.216919, 17.580616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099159, 0.589229, 0.801858,
		0.946550, -0.192709, 0.258661,
		0.306936, 0.784648, -0.538626,
		13.285565, 16.452312, 17.419027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.539261, 16.178556, 18.239796>,  <13.070710, 15.903060, 17.796066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.539261, 16.178556, 18.239796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.453500, 16.478081, 17.988935>,  <13.402043, 16.657795, 17.838419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.453500, 16.478081, 17.988935>,  <13.539261, 16.178556, 18.239796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.453500, 16.478081, 17.988935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107653, 0.620052, 0.777139,
		0.970795, 0.234135, -0.052329,
		-0.214402, 0.748810, -0.627149,
		13.389179, 16.702724, 17.800791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.892309, 16.806602, 18.498411>,  <13.539261, 16.178556, 18.239796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.892309, 16.806602, 18.498411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.608368, 16.950741, 18.256332>,  <13.438004, 17.037224, 18.111086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.608368, 16.950741, 18.256332>,  <13.892309, 16.806602, 18.498411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608368, 16.950741, 18.256332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246127, 0.678157, 0.692477,
		0.659948, 0.640511, -0.392701,
		-0.709852, 0.360345, -0.605196,
		13.395412, 17.058844, 18.074774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996643, 17.542427, 18.397409>,  <13.892309, 16.806602, 18.498411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996643, 17.542427, 18.397409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.607050, 17.491737, 18.322258>,  <13.373294, 17.461323, 18.277166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.607050, 17.491737, 18.322258>,  <13.996643, 17.542427, 18.397409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607050, 17.491737, 18.322258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219646, 0.732016, 0.644910,
		0.055805, 0.669398, -0.740805,
		-0.973982, -0.126725, -0.187881,
		13.314856, 17.453720, 18.265894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706635, 18.178350, 18.299953>,  <13.996643, 17.542427, 18.397409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706635, 18.178350, 18.299953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.369389, 17.990065, 18.403936>,  <13.167040, 17.877092, 18.466326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.369389, 17.990065, 18.403936>,  <13.706635, 18.178350, 18.299953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.369389, 17.990065, 18.403936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359633, 0.853014, 0.378194,
		-0.399771, 0.225372, -0.888476,
		-0.843117, -0.470717, 0.259959,
		13.116453, 17.848850, 18.481924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235006, 18.608034, 18.121469>,  <13.706635, 18.178350, 18.299953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235006, 18.608034, 18.121469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.097200, 18.363873, 18.406767>,  <13.014517, 18.217375, 18.577946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.097200, 18.363873, 18.406767>,  <13.235006, 18.608034, 18.121469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.097200, 18.363873, 18.406767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376374, 0.785830, 0.490727,
		-0.860031, -0.099383, -0.500470,
		-0.344514, -0.610404, 0.713244,
		12.993846, 18.180752, 18.620741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681171, 18.945087, 18.441139>,  <13.235006, 18.608034, 18.121469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681171, 18.945087, 18.441139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.772774, 18.669903, 18.716606>,  <12.827735, 18.504791, 18.881887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.772774, 18.669903, 18.716606>,  <12.681171, 18.945087, 18.441139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772774, 18.669903, 18.716606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363639, 0.595790, 0.716101,
		-0.902952, -0.414419, -0.113731,
		0.229006, -0.687962, 0.688669,
		12.841475, 18.463514, 18.923206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.174556, 19.073658, 18.824757>,  <12.681171, 18.945087, 18.441139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.174556, 19.073658, 18.824757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.430896, 18.863518, 19.048656>,  <12.584700, 18.737434, 19.182997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.430896, 18.863518, 19.048656>,  <12.174556, 19.073658, 18.824757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.430896, 18.863518, 19.048656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192453, 0.595923, 0.779639,
		-0.743151, -0.607357, 0.280792,
		0.640850, -0.525350, 0.559749,
		12.623151, 18.705914, 19.216581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.813305, 18.919752, 19.442225>,  <12.174556, 19.073658, 18.824757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.813305, 18.919752, 19.442225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.199682, 18.883688, 19.539240>,  <12.431509, 18.862049, 19.597448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.199682, 18.883688, 19.539240>,  <11.813305, 18.919752, 19.442225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199682, 18.883688, 19.539240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163555, 0.513592, 0.842302,
		-0.200506, -0.853285, 0.481355,
		0.965944, -0.090159, 0.242538,
		12.489466, 18.856640, 19.612001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.906313, 18.591515, 19.990625>,  <11.813305, 18.919752, 19.442225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.906313, 18.591515, 19.990625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.269950, 18.757185, 20.008556>,  <12.488132, 18.856586, 20.019316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.269950, 18.757185, 20.008556>,  <11.906313, 18.591515, 19.990625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269950, 18.757185, 20.008556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174120, 0.279998, 0.944078,
		0.378465, -0.866059, 0.326660,
		0.909091, 0.414178, 0.044829,
		12.542678, 18.881437, 20.022005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213147, 18.434557, 20.638771>,  <11.906313, 18.591515, 19.990625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213147, 18.434557, 20.638771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.425665, 18.751823, 20.519695>,  <12.553175, 18.942183, 20.448250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.425665, 18.751823, 20.519695>,  <12.213147, 18.434557, 20.638771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.425665, 18.751823, 20.519695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129655, 0.423370, 0.896631,
		0.837208, -0.437777, 0.327771,
		0.531293, 0.793164, -0.297689,
		12.585052, 18.989773, 20.430389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781507, 18.540791, 21.143475>,  <12.213147, 18.434557, 20.638771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781507, 18.540791, 21.143475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.749578, 18.903267, 20.977367>,  <12.730421, 19.120752, 20.877703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.749578, 18.903267, 20.977367>,  <12.781507, 18.540791, 21.143475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749578, 18.903267, 20.977367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201332, 0.393353, 0.897072,
		0.976265, 0.155213, 0.151047,
		-0.079823, 0.906191, -0.415266,
		12.725632, 19.175125, 20.852787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182549, 18.986391, 21.536087>,  <12.781507, 18.540791, 21.143475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182549, 18.986391, 21.536087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.942972, 19.242477, 21.343674>,  <12.799226, 19.396130, 21.228226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.942972, 19.242477, 21.343674>,  <13.182549, 18.986391, 21.536087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.942972, 19.242477, 21.343674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106470, 0.531699, 0.840215,
		0.793683, 0.554455, -0.250293,
		-0.598942, 0.640215, -0.481033,
		12.763289, 19.434542, 21.199364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491714, 19.669609, 21.726934>,  <13.182549, 18.986391, 21.536087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491714, 19.669609, 21.726934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.115885, 19.713125, 21.597092>,  <12.890388, 19.739235, 21.519186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.115885, 19.713125, 21.597092>,  <13.491714, 19.669609, 21.726934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.115885, 19.713125, 21.597092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246678, 0.442346, 0.862253,
		0.237394, 0.890222, -0.388780,
		-0.939571, 0.108790, -0.324608,
		12.834013, 19.745762, 21.499710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042434, 20.152973, 21.592632>,  <13.491714, 19.669609, 21.726934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042434, 20.152973, 21.592632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.404118, 20.173090, 21.762280>,  <14.621128, 20.185160, 21.864067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.404118, 20.173090, 21.762280>,  <14.042434, 20.152973, 21.592632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.404118, 20.173090, 21.762280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419880, -0.286349, -0.861223,
		0.078131, 0.956804, -0.280037,
		0.904210, 0.050294, 0.424116,
		14.675381, 20.188179, 21.889515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432356, 20.357477, 21.076607>,  <14.042434, 20.152973, 21.592632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432356, 20.357477, 21.076607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.699484, 20.244673, 21.352139>,  <14.859761, 20.176991, 21.517458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.699484, 20.244673, 21.352139>,  <14.432356, 20.357477, 21.076607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699484, 20.244673, 21.352139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596382, -0.350995, -0.721893,
		0.445357, 0.892901, -0.066216,
		0.667821, -0.282010, 0.688829,
		14.899830, 20.160070, 21.558786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031416, 20.672756, 20.923553>,  <14.432356, 20.357477, 21.076607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031416, 20.672756, 20.923553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.131188, 20.356894, 21.147778>,  <15.191052, 20.167376, 21.282312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.131188, 20.356894, 21.147778>,  <15.031416, 20.672756, 20.923553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131188, 20.356894, 21.147778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572912, -0.346356, -0.742839,
		0.780740, 0.506438, 0.366012,
		0.249432, -0.789657, 0.560559,
		15.206017, 20.119997, 21.315945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796377, 20.635347, 20.822262>,  <15.031416, 20.672756, 20.923553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.796377, 20.635347, 20.822262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.658539, 20.279791, 20.943012>,  <15.575835, 20.066458, 21.015463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.658539, 20.279791, 20.943012>,  <15.796377, 20.635347, 20.822262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658539, 20.279791, 20.943012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565207, -0.453209, -0.689306,
		0.749529, -0.066911, 0.658581,
		-0.344597, -0.888890, 0.301875,
		15.555160, 20.013124, 21.033575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316555, 20.138630, 20.703510>,  <15.796377, 20.635347, 20.822262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316555, 20.138630, 20.703510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.983316, 19.922159, 20.749252>,  <15.783373, 19.792276, 20.776697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.983316, 19.922159, 20.749252>,  <16.316555, 20.138630, 20.703510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983316, 19.922159, 20.749252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303065, -0.619554, -0.724088,
		0.462709, -0.568579, 0.680160,
		-0.833098, -0.541175, 0.114356,
		15.733387, 19.759808, 20.783560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525080, 19.510963, 20.774796>,  <16.316555, 20.138630, 20.703510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525080, 19.510963, 20.774796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.146996, 19.448521, 20.660107>,  <15.920145, 19.411055, 20.591293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.146996, 19.448521, 20.660107>,  <16.525080, 19.510963, 20.774796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146996, 19.448521, 20.660107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319442, -0.623449, -0.713630,
		-0.067352, -0.766121, 0.639158,
		-0.945209, -0.156109, -0.286722,
		15.863433, 19.401688, 20.574091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457815, 18.828152, 20.648830>,  <16.525080, 19.510963, 20.774796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457815, 18.828152, 20.648830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.153305, 18.982975, 20.440735>,  <15.970599, 19.075869, 20.315878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.153305, 18.982975, 20.440735>,  <16.457815, 18.828152, 20.648830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153305, 18.982975, 20.440735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315313, -0.480090, -0.818591,
		-0.566605, -0.787209, 0.243435,
		-0.761273, 0.387060, -0.520238,
		15.924923, 19.099092, 20.284664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328577, 18.336559, 20.024803>,  <16.457815, 18.828152, 20.648830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328577, 18.336559, 20.024803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091175, 18.645061, 19.932793>,  <15.948733, 18.830164, 19.877586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091175, 18.645061, 19.932793>,  <16.328577, 18.336559, 20.024803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091175, 18.645061, 19.932793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130935, -0.189473, -0.973117,
		-0.794107, -0.607670, 0.011469,
		-0.593507, 0.771257, -0.230028,
		15.913123, 18.876438, 19.863785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791498, 18.080391, 19.573370>,  <16.328577, 18.336559, 20.024803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791498, 18.080391, 19.573370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870654, 18.468287, 19.516171>,  <15.918147, 18.701023, 19.481852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.870654, 18.468287, 19.516171>,  <15.791498, 18.080391, 19.573370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870654, 18.468287, 19.516171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241287, -0.189585, -0.951755,
		-0.950063, 0.153838, -0.271502,
		0.197889, 0.969738, -0.142998,
		15.930020, 18.759209, 19.473270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419651, 18.343859, 19.053633>,  <15.791498, 18.080391, 19.573370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419651, 18.343859, 19.053633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.720273, 18.607687, 19.049061>,  <15.900646, 18.765984, 19.046318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.720273, 18.607687, 19.049061>,  <15.419651, 18.343859, 19.053633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720273, 18.607687, 19.049061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231344, -0.279754, -0.931782,
		-0.617773, 0.697642, -0.362838,
		0.751556, 0.659570, -0.011429,
		15.945740, 18.805557, 19.045631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444699, 18.577957, 18.286577>,  <15.419651, 18.343859, 19.053633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444699, 18.577957, 18.286577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.781409, 18.704700, 18.461399>,  <15.983435, 18.780746, 18.566292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.781409, 18.704700, 18.461399>,  <15.444699, 18.577957, 18.286577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.781409, 18.704700, 18.461399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519031, -0.252479, -0.816616,
		-0.148404, 0.914251, -0.376989,
		0.841774, 0.316858, 0.437056,
		16.033941, 18.799757, 18.592516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832020, 18.874180, 17.750908>,  <15.444699, 18.577957, 18.286577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832020, 18.874180, 17.750908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.107170, 18.810261, 18.034115>,  <16.272261, 18.771910, 18.204039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.107170, 18.810261, 18.034115>,  <15.832020, 18.874180, 17.750908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107170, 18.810261, 18.034115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606612, -0.409066, -0.681679,
		0.398557, 0.898404, -0.184452,
		0.687876, -0.159797, 0.708019,
		16.313534, 18.762321, 18.246521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366543, 19.113020, 17.466400>,  <15.832020, 18.874180, 17.750908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366543, 19.113020, 17.466400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.494286, 18.839151, 17.728464>,  <16.570932, 18.674829, 17.885702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.494286, 18.839151, 17.728464>,  <16.366543, 19.113020, 17.466400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494286, 18.839151, 17.728464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502671, -0.463685, -0.729602,
		0.803326, 0.562333, 0.196084,
		0.319358, -0.684673, 0.655159,
		16.590094, 18.633749, 17.925013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052774, 18.962202, 17.322824>,  <16.366543, 19.113020, 17.466400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052774, 18.962202, 17.322824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.929375, 18.639420, 17.524279>,  <16.855335, 18.445749, 17.645151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.929375, 18.639420, 17.524279>,  <17.052774, 18.962202, 17.322824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929375, 18.639420, 17.524279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359379, -0.589096, -0.723750,
		0.880724, -0.042281, 0.471739,
		-0.308500, -0.806956, 0.503636,
		16.836824, 18.397333, 17.675369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<6.047524, 18.752880, 4.029824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.336719, 18.639748, 4.281950>,  <6.510236, 18.571869, 4.433225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.336719, 18.639748, 4.281950>,  <6.047524, 18.752880, 4.029824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.336719, 18.639748, 4.281950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690478, 0.326186, -0.645634,
		-0.022995, 0.902003, 0.431116,
		0.722988, -0.282830, 0.630314,
		6.553616, 18.554899, 4.471044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.404296, 19.313231, 4.302185>,  <6.047524, 18.752880, 4.029824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.404296, 19.313231, 4.302185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.677639, 19.022047, 4.324449>,  <6.841646, 18.847338, 4.337808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.677639, 19.022047, 4.324449>,  <6.404296, 19.313231, 4.302185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.677639, 19.022047, 4.324449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667587, 0.592182, -0.451273,
		0.295546, 0.345540, 0.890649,
		0.683359, -0.727958, 0.055661,
		6.882647, 18.803659, 4.341147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.092989, 19.518015, 4.655304>,  <6.404296, 19.313231, 4.302185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.092989, 19.518015, 4.655304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.175252, 19.217806, 4.404092>,  <7.224610, 19.037682, 4.253365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.175252, 19.217806, 4.404092>,  <7.092989, 19.518015, 4.655304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.175252, 19.217806, 4.404092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768786, 0.520994, -0.370856,
		0.605535, -0.406551, 0.684136,
		0.205658, -0.750521, -0.628031,
		7.236950, 18.992649, 4.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.839096, 19.427416, 4.739226>,  <7.092989, 19.518015, 4.655304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.839096, 19.427416, 4.739226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.661923, 19.310621, 4.400156>,  <7.555619, 19.240545, 4.196714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.661923, 19.310621, 4.400156>,  <7.839096, 19.427416, 4.739226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.661923, 19.310621, 4.400156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622297, 0.580509, -0.525125,
		0.645414, -0.760100, -0.075422,
		-0.442931, -0.291988, -0.847676,
		7.529043, 19.223024, 4.145853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.161714, 19.002199, 4.208148>,  <7.839096, 19.427416, 4.739226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.161714, 19.002199, 4.208148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.913005, 19.242943, 4.007681>,  <7.763780, 19.387388, 3.887401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.913005, 19.242943, 4.007681>,  <8.161714, 19.002199, 4.208148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.913005, 19.242943, 4.007681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782155, 0.510206, -0.357664,
		0.040435, -0.614375, -0.787977,
		-0.621771, 0.601858, -0.501167,
		7.726474, 19.423500, 3.857331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.696478, 18.858543, 4.697541>,  <8.161714, 19.002199, 4.208148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.696478, 18.858543, 4.697541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.866301, 18.525633, 4.840127>,  <8.968194, 18.325886, 4.925679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.866301, 18.525633, 4.840127>,  <8.696478, 18.858543, 4.697541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.866301, 18.525633, 4.840127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584534, 0.048705, 0.809906,
		-0.691428, -0.552216, -0.465817,
		0.424555, -0.832277, 0.356465,
		8.993668, 18.275949, 4.947067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.334703, 18.354189, 5.001956>,  <8.696478, 18.858543, 4.697541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.334703, 18.354189, 5.001956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.657112, 18.288813, 5.229505>,  <8.850557, 18.249588, 5.366035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.657112, 18.288813, 5.229505>,  <8.334703, 18.354189, 5.001956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.657112, 18.288813, 5.229505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573687, 0.020779, 0.818811,
		-0.145648, -0.986334, -0.077016,
		0.806021, -0.163442, 0.568874,
		8.898918, 18.239780, 5.400167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209612, 17.921370, 5.607364>,  <8.334703, 18.354189, 5.001956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209612, 17.921370, 5.607364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.522160, 18.154665, 5.696175>,  <8.709688, 18.294641, 5.749462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.522160, 18.154665, 5.696175>,  <8.209612, 17.921370, 5.607364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.522160, 18.154665, 5.696175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503823, 0.379588, 0.775935,
		0.368268, -0.718159, 0.590445,
		0.781371, 0.583232, 0.222035,
		8.756570, 18.329636, 5.762784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.381157, 17.844881, 6.257027>,  <8.209612, 17.921370, 5.607364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.381157, 17.844881, 6.257027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.521721, 18.209990, 6.173738>,  <8.606059, 18.429054, 6.123765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.521721, 18.209990, 6.173738>,  <8.381157, 17.844881, 6.257027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.521721, 18.209990, 6.173738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394271, 0.346007, 0.851370,
		0.849154, -0.217083, 0.481469,
		0.351409, 0.912773, -0.208223,
		8.627144, 18.483822, 6.111271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.892675, 18.116976, 6.706280>,  <8.381157, 17.844881, 6.257027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.892675, 18.116976, 6.706280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.642396, 18.383602, 6.544197>,  <8.492229, 18.543577, 6.446948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.642396, 18.383602, 6.544197>,  <8.892675, 18.116976, 6.706280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.642396, 18.383602, 6.544197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427334, 0.141676, 0.892924,
		0.652600, 0.731860, 0.196200,
		-0.625698, 0.666565, -0.405206,
		8.454686, 18.583572, 6.422635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.986781, 18.568092, 7.149148>,  <8.892675, 18.116976, 6.706280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.986781, 18.568092, 7.149148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.628223, 18.603943, 6.975508>,  <8.413089, 18.625454, 6.871324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.628223, 18.603943, 6.975508>,  <8.986781, 18.568092, 7.149148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.628223, 18.603943, 6.975508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436618, -0.009694, 0.899594,
		0.076419, 0.995928, 0.047823,
		-0.896395, 0.089627, -0.434100,
		8.359304, 18.630831, 6.845278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.660811, 19.050362, 7.524309>,  <8.986781, 18.568092, 7.149148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.660811, 19.050362, 7.524309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.379903, 18.822514, 7.353500>,  <8.211357, 18.685804, 7.251015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.379903, 18.822514, 7.353500>,  <8.660811, 19.050362, 7.524309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.379903, 18.822514, 7.353500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451199, -0.107837, 0.885884,
		-0.550666, 0.814803, -0.181281,
		-0.702272, -0.569620, -0.427021,
		8.169221, 18.651627, 7.225394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.016986, 19.339067, 7.755432>,  <8.660811, 19.050362, 7.524309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.016986, 19.339067, 7.755432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.928920, 18.969467, 7.630371>,  <7.876080, 18.747707, 7.555335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.928920, 18.969467, 7.630371>,  <8.016986, 19.339067, 7.755432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.928920, 18.969467, 7.630371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359448, -0.221114, 0.906590,
		-0.906821, 0.311983, -0.283448,
		-0.220166, -0.924000, -0.312652,
		7.862870, 18.692266, 7.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.277534, 19.209568, 8.007668>,  <8.016986, 19.339067, 7.755432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.277534, 19.209568, 8.007668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.412262, 18.841118, 7.929609>,  <7.493100, 18.620049, 7.882774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.412262, 18.841118, 7.929609>,  <7.277534, 19.209568, 8.007668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.412262, 18.841118, 7.929609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417499, -0.331875, 0.845904,
		-0.843946, -0.203447, -0.496351,
		0.336823, -0.921124, -0.195146,
		7.513309, 18.564781, 7.871066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.696956, 18.714941, 8.005459>,  <7.277534, 19.209568, 8.007668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.696956, 18.714941, 8.005459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.038414, 18.518456, 8.074737>,  <7.243290, 18.400564, 8.116303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.038414, 18.518456, 8.074737>,  <6.696956, 18.714941, 8.005459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.038414, 18.518456, 8.074737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442435, -0.508398, 0.738771,
		-0.274842, -0.707277, -0.651322,
		0.853647, -0.491213, 0.173195,
		7.294508, 18.371092, 8.126695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.546395, 18.007742, 8.072577>,  <6.696956, 18.714941, 8.005459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.546395, 18.007742, 8.072577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.909494, 18.019566, 8.239964>,  <7.127354, 18.026661, 8.340397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.909494, 18.019566, 8.239964>,  <6.546395, 18.007742, 8.072577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.909494, 18.019566, 8.239964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376412, -0.383010, 0.843574,
		0.185215, -0.923271, -0.336550,
		0.907750, 0.029561, 0.418470,
		7.181819, 18.028435, 8.365505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.630261, 17.363091, 8.382850>,  <6.546395, 18.007742, 8.072577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.630261, 17.363091, 8.382850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.895368, 17.607374, 8.556182>,  <7.054431, 17.753944, 8.660181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.895368, 17.607374, 8.556182>,  <6.630261, 17.363091, 8.382850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.895368, 17.607374, 8.556182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272455, -0.342351, 0.899202,
		0.697503, -0.714022, -0.060507,
		0.662765, 0.610711, 0.433329,
		7.094197, 17.790588, 8.686181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.144003, 16.882113, 8.703901>,  <6.630261, 17.363091, 8.382850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.144003, 16.882113, 8.703901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.145816, 17.233265, 8.895444>,  <7.146904, 17.443956, 9.010369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.145816, 17.233265, 8.895444>,  <7.144003, 16.882113, 8.703901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.145816, 17.233265, 8.895444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098841, -0.476123, 0.873806,
		0.995093, -0.051292, 0.084612,
		0.004533, 0.877882, 0.478856,
		7.147176, 17.496630, 9.039101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.462515, 16.685614, 9.205936>,  <7.144003, 16.882113, 8.703901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.462515, 16.685614, 9.205936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.293952, 17.032284, 9.312736>,  <7.192813, 17.240286, 9.376815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.293952, 17.032284, 9.312736>,  <7.462515, 16.685614, 9.205936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.293952, 17.032284, 9.312736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174269, -0.366320, 0.914024,
		0.889969, 0.338648, 0.305405,
		-0.421408, 0.866676, 0.266997,
		7.167529, 17.292286, 9.392835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.801263, 16.909229, 9.760225>,  <7.462515, 16.685614, 9.205936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.801263, 16.909229, 9.760225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.454392, 17.105297, 9.795408>,  <7.246269, 17.222939, 9.816518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.454392, 17.105297, 9.795408>,  <7.801263, 16.909229, 9.760225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.454392, 17.105297, 9.795408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030952, -0.123227, 0.991896,
		0.497037, 0.862872, 0.091688,
		-0.867177, 0.490171, 0.087956,
		7.194239, 17.252348, 9.821795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.830034, 17.180712, 10.460248>,  <7.801263, 16.909229, 9.760225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.830034, 17.180712, 10.460248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.444620, 17.213528, 10.358370>,  <7.213371, 17.233217, 10.297243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.444620, 17.213528, 10.358370>,  <7.830034, 17.180712, 10.460248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.444620, 17.213528, 10.358370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264135, -0.139324, 0.954370,
		0.042813, 0.986842, 0.155914,
		-0.963535, 0.082041, -0.254695,
		7.155559, 17.238140, 10.281961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.641331, 17.667707, 10.880055>,  <7.830034, 17.180712, 10.460248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.641331, 17.667707, 10.880055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.327800, 17.448164, 10.763870>,  <7.139681, 17.316439, 10.694160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.327800, 17.448164, 10.763870>,  <7.641331, 17.667707, 10.880055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.327800, 17.448164, 10.763870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244373, -0.157373, 0.956826,
		-0.570871, 0.820969, -0.010773,
		-0.783829, -0.548857, -0.290462,
		7.092651, 17.283506, 10.676731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.108042, 17.830711, 11.322828>,  <7.641331, 17.667707, 10.880055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.108042, 17.830711, 11.322828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.034540, 17.462933, 11.183772>,  <6.990438, 17.242266, 11.100338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.034540, 17.462933, 11.183772>,  <7.108042, 17.830711, 11.322828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.034540, 17.462933, 11.183772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275673, -0.291267, 0.916061,
		-0.943524, 0.264167, -0.199944,
		-0.183756, -0.919445, -0.347642,
		6.979413, 17.187099, 11.079479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.514102, 17.672789, 11.652628>,  <7.108042, 17.830711, 11.322828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.514102, 17.672789, 11.652628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.603940, 17.311085, 11.507372>,  <6.657843, 17.094063, 11.420218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.603940, 17.311085, 11.507372>,  <6.514102, 17.672789, 11.652628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.603940, 17.311085, 11.507372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316921, -0.420184, 0.850298,
		-0.921476, -0.075887, -0.380950,
		0.224596, -0.904260, -0.363139,
		6.671319, 17.039806, 11.398430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.880794, 17.241774, 11.644943>,  <6.514102, 17.672789, 11.652628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.880794, 17.241774, 11.644943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.195696, 16.996304, 11.669053>,  <6.384638, 16.849022, 11.683518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.195696, 16.996304, 11.669053>,  <5.880794, 17.241774, 11.644943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.195696, 16.996304, 11.669053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345948, -0.358648, 0.867001,
		-0.510440, -0.703403, -0.494647,
		0.787255, -0.613675, 0.060273,
		6.431873, 16.812202, 11.687136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.627069, 16.735052, 12.132058>,  <5.880794, 17.241774, 11.644943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.627069, 16.735052, 12.132058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.006035, 16.611099, 12.100118>,  <6.233415, 16.536728, 12.080954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.006035, 16.611099, 12.100118>,  <5.627069, 16.735052, 12.132058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006035, 16.611099, 12.100118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140197, -0.626251, 0.766913,
		-0.287660, -0.715390, -0.636764,
		0.947416, -0.309882, -0.079852,
		6.290260, 16.518135, 12.076162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.584129, 16.004202, 12.031710>,  <5.627069, 16.735052, 12.132058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.584129, 16.004202, 12.031710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.923730, 16.123968, 12.205857>,  <6.127491, 16.195827, 12.310346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.923730, 16.123968, 12.205857>,  <5.584129, 16.004202, 12.031710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.923730, 16.123968, 12.205857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230874, -0.530930, 0.815359,
		0.475280, -0.792757, -0.381634,
		0.849003, 0.299414, 0.435368,
		6.178431, 16.213793, 12.336468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.741919, 15.465551, 12.392480>,  <5.584129, 16.004202, 12.031710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.741919, 15.465551, 12.392480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.965834, 15.754709, 12.554498>,  <6.100183, 15.928204, 12.651709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.965834, 15.754709, 12.554498>,  <5.741919, 15.465551, 12.392480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.965834, 15.754709, 12.554498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230378, -0.333765, 0.914072,
		0.795968, -0.604999, -0.020298,
		0.559787, 0.722895, 0.405045,
		6.133770, 15.971578, 12.676011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.961518, 15.041038, 12.949234>,  <5.741919, 15.465551, 12.392480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.961518, 15.041038, 12.949234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.050693, 15.421610, 13.034163>,  <6.104198, 15.649953, 13.085119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.050693, 15.421610, 13.034163>,  <5.961518, 15.041038, 12.949234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.050693, 15.421610, 13.034163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038705, -0.208992, 0.977151,
		0.974064, -0.226062, -0.009767,
		0.222938, 0.951430, 0.212321,
		6.117574, 15.707039, 13.097858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.618608, 15.145266, 13.287925>,  <5.961518, 15.041038, 12.949234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.618608, 15.145266, 13.287925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.399104, 15.455981, 13.411513>,  <6.267401, 15.642410, 13.485666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.399104, 15.455981, 13.411513>,  <6.618608, 15.145266, 13.287925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.399104, 15.455981, 13.411513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037699, -0.346222, 0.937395,
		0.835130, 0.526052, 0.160708,
		-0.548759, 0.776788, 0.308972,
		6.234476, 15.689017, 13.504205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.097041, 15.470429, 13.832639>,  <6.618608, 15.145266, 13.287925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.097041, 15.470429, 13.832639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.713481, 15.576318, 13.873501>,  <6.483345, 15.639851, 13.898018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.713481, 15.576318, 13.873501>,  <7.097041, 15.470429, 13.832639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.713481, 15.576318, 13.873501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090292, -0.056632, 0.994304,
		0.268999, 0.962661, 0.030402,
		-0.958899, 0.264722, 0.102154,
		6.425811, 15.655734, 13.904147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.803259, 15.422994, 13.580598>,  <7.097041, 15.470429, 13.832639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.803259, 15.422994, 13.580598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.016162, 15.094652, 13.497749>,  <8.143904, 14.897647, 13.448040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.016162, 15.094652, 13.497749>,  <7.803259, 15.422994, 13.580598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.016162, 15.094652, 13.497749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743233, 0.570223, -0.349931,
		0.405348, 0.032314, 0.913591,
		0.532258, -0.820854, -0.207122,
		8.175839, 14.848396, 13.435613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.407436, 15.391557, 13.999023>,  <7.803259, 15.422994, 13.580598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.407436, 15.391557, 13.999023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.449182, 15.229074, 13.635903>,  <8.474229, 15.131583, 13.418031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.449182, 15.229074, 13.635903>,  <8.407436, 15.391557, 13.999023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.449182, 15.229074, 13.635903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803118, 0.572809, -0.163984,
		0.586609, -0.711958, 0.386013,
		0.104362, -0.406208, -0.907801,
		8.480490, 15.107211, 13.363563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.068840, 15.282073, 13.987520>,  <8.407436, 15.391557, 13.999023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.068840, 15.282073, 13.987520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.975417, 15.293339, 13.598746>,  <8.919363, 15.300098, 13.365482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.975417, 15.293339, 13.598746>,  <9.068840, 15.282073, 13.987520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.975417, 15.293339, 13.598746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724936, 0.671207, -0.154752,
		0.648011, -0.740734, -0.177183,
		-0.233557, 0.028165, -0.971935,
		8.905350, 15.301788, 13.307166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.783490, 15.476200, 13.623374>,  <9.068840, 15.282073, 13.987520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.783490, 15.476200, 13.623374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.505660, 15.539170, 13.342580>,  <9.338962, 15.576953, 13.174104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.505660, 15.539170, 13.342580>,  <9.783490, 15.476200, 13.623374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505660, 15.539170, 13.342580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610044, 0.646087, -0.458714,
		0.381329, -0.746853, -0.544793,
		-0.694575, 0.157427, -0.701985,
		9.297288, 15.586398, 13.131985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.148606, 15.433208, 12.930135>,  <9.783490, 15.476200, 13.623374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.148606, 15.433208, 12.930135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.795640, 15.615665, 12.884048>,  <9.583860, 15.725140, 12.856397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.795640, 15.615665, 12.884048>,  <10.148606, 15.433208, 12.930135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.795640, 15.615665, 12.884048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413299, 0.634575, -0.653068,
		-0.224780, -0.623896, -0.748483,
		-0.882416, 0.456144, -0.115216,
		9.530915, 15.752509, 12.849483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136273, 15.542968, 12.336884>,  <10.148606, 15.433208, 12.930135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136273, 15.542968, 12.336884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.865664, 15.812912, 12.454785>,  <9.703300, 15.974878, 12.525527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.865664, 15.812912, 12.454785>,  <10.136273, 15.542968, 12.336884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.865664, 15.812912, 12.454785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389396, 0.667539, -0.634635,
		-0.625051, -0.314568, -0.714393,
		-0.676521, 0.674862, 0.294755,
		9.662708, 16.015371, 12.543212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.807279, 15.869061, 11.683168>,  <10.136273, 15.542968, 12.336884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.807279, 15.869061, 11.683168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.752121, 16.118181, 11.991221>,  <9.719027, 16.267653, 12.176053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.752121, 16.118181, 11.991221>,  <9.807279, 15.869061, 11.683168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.752121, 16.118181, 11.991221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284954, 0.769632, -0.571373,
		-0.948571, 0.140664, -0.283597,
		-0.137894, 0.622800, 0.770134,
		9.710752, 16.305021, 12.222261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.359389, 16.407919, 11.507988>,  <9.807279, 15.869061, 11.683168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.359389, 16.407919, 11.507988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.505110, 16.607277, 11.822666>,  <9.592542, 16.726891, 12.011473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.505110, 16.607277, 11.822666>,  <9.359389, 16.407919, 11.507988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505110, 16.607277, 11.822666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089442, 0.822115, -0.562251,
		-0.926976, 0.275192, 0.254920,
		0.364301, 0.498393, 0.786695,
		9.614400, 16.756794, 12.058675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.015944, 17.070856, 11.496635>,  <9.359389, 16.407919, 11.507988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.015944, 17.070856, 11.496635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.318787, 17.136894, 11.749470>,  <9.500492, 17.176517, 11.901171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.318787, 17.136894, 11.749470>,  <9.015944, 17.070856, 11.496635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.318787, 17.136894, 11.749470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211158, 0.853764, -0.475920,
		-0.618224, 0.493792, 0.611530,
		0.757107, 0.165095, 0.632085,
		9.545918, 17.186422, 11.939095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.942786, 17.691147, 11.836855>,  <9.015944, 17.070856, 11.496635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.942786, 17.691147, 11.836855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.340020, 17.645601, 11.848272>,  <9.578361, 17.618273, 11.855123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.340020, 17.645601, 11.848272>,  <8.942786, 17.691147, 11.836855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.340020, 17.645601, 11.848272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116565, 0.927769, -0.354483,
		0.013882, 0.355359, 0.934627,
		0.993086, -0.113866, 0.028543,
		9.637946, 17.611441, 11.856835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.103931, 18.262171, 11.986249>,  <8.942786, 17.691147, 11.836855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.103931, 18.262171, 11.986249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.463780, 18.148064, 11.854007>,  <9.679689, 18.079599, 11.774661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.463780, 18.148064, 11.854007>,  <9.103931, 18.262171, 11.986249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.463780, 18.148064, 11.854007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205097, 0.944443, -0.256834,
		0.385505, 0.163247, 0.908150,
		0.899623, -0.285270, -0.330606,
		9.733667, 18.062483, 11.754825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.573624, 18.796778, 12.078903>,  <9.103931, 18.262171, 11.986249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.573624, 18.796778, 12.078903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.771725, 18.591631, 11.798421>,  <9.890586, 18.468542, 11.630132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.771725, 18.591631, 11.798421>,  <9.573624, 18.796778, 12.078903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771725, 18.591631, 11.798421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242845, 0.856697, -0.455078,
		0.834117, 0.055094, 0.548830,
		0.495253, -0.512868, -0.701206,
		9.920300, 18.437771, 11.588059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.119723, 19.215744, 11.922235>,  <9.573624, 18.796778, 12.078903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.119723, 19.215744, 11.922235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.082762, 18.993864, 11.591473>,  <10.060585, 18.860737, 11.393016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.082762, 18.993864, 11.591473>,  <10.119723, 19.215744, 11.922235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.082762, 18.993864, 11.591473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151995, 0.812866, -0.562268,
		0.984052, -0.177641, 0.009200,
		-0.092403, -0.554700, -0.826904,
		10.055041, 18.827454, 11.343402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595600, 19.518532, 11.455690>,  <10.119723, 19.215744, 11.922235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595600, 19.518532, 11.455690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.353690, 19.301428, 11.222569>,  <10.208544, 19.171165, 11.082696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.353690, 19.301428, 11.222569>,  <10.595600, 19.518532, 11.455690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.353690, 19.301428, 11.222569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048813, 0.755688, -0.653110,
		0.794900, -0.366535, -0.483514,
		-0.604774, -0.542759, -0.582805,
		10.172257, 19.138601, 11.047728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.916341, 19.324615, 10.773289>,  <10.595600, 19.518532, 11.455690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.916341, 19.324615, 10.773289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.517248, 19.349329, 10.762602>,  <10.277793, 19.364157, 10.756189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.517248, 19.349329, 10.762602>,  <10.916341, 19.324615, 10.773289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517248, 19.349329, 10.762602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061385, 0.672246, -0.737779,
		-0.027622, -0.737745, -0.674514,
		-0.997732, 0.061784, -0.026717,
		10.217929, 19.367865, 10.754586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.679232, 19.289835, 10.054207>,  <10.916341, 19.324615, 10.773289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.679232, 19.289835, 10.054207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.375883, 19.474613, 10.238155>,  <10.193874, 19.585480, 10.348524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.375883, 19.474613, 10.238155>,  <10.679232, 19.289835, 10.054207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.375883, 19.474613, 10.238155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127911, 0.586329, -0.799911,
		-0.639151, -0.665451, -0.385566,
		-0.758370, 0.461945, 0.459872,
		10.148372, 19.613197, 10.376117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.325386, 19.619247, 9.534328>,  <10.679232, 19.289835, 10.054207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.325386, 19.619247, 9.534328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.092257, 19.763781, 9.825465>,  <9.952379, 19.850500, 10.000148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.092257, 19.763781, 9.825465>,  <10.325386, 19.619247, 9.534328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.092257, 19.763781, 9.825465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347087, 0.699186, -0.625036,
		-0.734743, -0.616911, -0.282088,
		-0.582823, 0.361332, 0.727844,
		9.917410, 19.872181, 10.043818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.521113, 19.630690, 9.324046>,  <10.325386, 19.619247, 9.534328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.521113, 19.630690, 9.324046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.596981, 19.899006, 9.610839>,  <9.642502, 20.059996, 9.782915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.596981, 19.899006, 9.610839>,  <9.521113, 19.630690, 9.324046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.596981, 19.899006, 9.610839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275942, 0.737223, -0.616731,
		-0.942274, -0.080870, 0.324929,
		0.189670, 0.670792, 0.716982,
		9.653882, 20.100243, 9.825933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881309, 20.040670, 9.398723>,  <9.521113, 19.630690, 9.324046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881309, 20.040670, 9.398723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168894, 20.274260, 9.549491>,  <9.341445, 20.414413, 9.639952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168894, 20.274260, 9.549491>,  <8.881309, 20.040670, 9.398723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168894, 20.274260, 9.549491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272199, 0.735545, -0.620387,
		-0.639530, 0.343439, 0.687787,
		0.718964, 0.583972, 0.376920,
		9.384583, 20.449451, 9.662567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.565047, 20.683504, 9.418228>,  <8.881309, 20.040670, 9.398723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.565047, 20.683504, 9.418228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.962840, 20.723186, 9.404585>,  <9.201516, 20.746996, 9.396399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.962840, 20.723186, 9.404585>,  <8.565047, 20.683504, 9.418228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.962840, 20.723186, 9.404585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085316, 0.575647, -0.813235,
		-0.061042, 0.811658, 0.580935,
		0.994482, 0.099205, -0.034109,
		9.261185, 20.752949, 9.394352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.450676, 20.492956, 8.722479>,  <8.565047, 20.683504, 9.418228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.450676, 20.492956, 8.722479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053357, 20.538406, 8.730943>,  <7.814966, 20.565678, 8.736021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.053357, 20.538406, 8.730943>,  <8.450676, 20.492956, 8.722479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.053357, 20.538406, 8.730943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024988, 0.032362, 0.999164,
		0.112848, 0.992996, -0.034984,
		-0.993298, 0.113628, 0.021161,
		7.755368, 20.572495, 8.737291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.399000, 19.224463, 23.852165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.167858, 18.899712, 23.885496>,  <16.029173, 18.704861, 23.905495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.167858, 18.899712, 23.885496>,  <16.399000, 19.224463, 23.852165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167858, 18.899712, 23.885496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435432, 0.393044, 0.809886,
		-0.690278, 0.431713, -0.580638,
		-0.577854, -0.811875, 0.083328,
		15.994502, 18.656149, 23.910494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788476, 19.469084, 23.881176>,  <16.399000, 19.224463, 23.852165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788476, 19.469084, 23.881176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.747764, 19.108744, 24.049988>,  <15.723336, 18.892540, 24.151276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.747764, 19.108744, 24.049988>,  <15.788476, 19.469084, 23.881176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747764, 19.108744, 24.049988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416450, 0.423857, 0.804310,
		-0.903443, -0.093891, -0.418300,
		-0.101782, -0.900849, 0.422032,
		15.717229, 18.838490, 24.176598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151464, 19.450788, 24.089485>,  <15.788476, 19.469084, 23.881176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151464, 19.450788, 24.089485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.307852, 19.161467, 24.317160>,  <15.401685, 18.987873, 24.453764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.307852, 19.161467, 24.317160>,  <15.151464, 19.450788, 24.089485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307852, 19.161467, 24.317160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277419, 0.497045, 0.822183,
		-0.877600, -0.479352, -0.006329,
		0.390969, -0.723303, 0.569188,
		15.425142, 18.944475, 24.487915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774849, 19.467464, 24.719656>,  <15.151464, 19.450788, 24.089485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774849, 19.467464, 24.719656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.081080, 19.232180, 24.823885>,  <15.264819, 19.091009, 24.886421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.081080, 19.232180, 24.823885>,  <14.774849, 19.467464, 24.719656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081080, 19.232180, 24.823885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120403, 0.266869, 0.956182,
		-0.631974, -0.763407, 0.133487,
		0.765579, -0.588210, 0.260571,
		15.310754, 19.055717, 24.902056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602664, 18.947096, 25.236746>,  <14.774849, 19.467464, 24.719656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602664, 18.947096, 25.236746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.992249, 19.035788, 25.255634>,  <15.226001, 19.089003, 25.266968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.992249, 19.035788, 25.255634>,  <14.602664, 18.947096, 25.236746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992249, 19.035788, 25.255634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120967, 0.332141, 0.935441,
		0.191730, -0.916798, 0.350315,
		0.973964, 0.221729, 0.047220,
		15.284439, 19.102306, 25.269800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921197, 18.516211, 25.818005>,  <14.602664, 18.947096, 25.236746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921197, 18.516211, 25.818005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.173115, 18.822762, 25.767365>,  <15.324265, 19.006691, 25.736980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.173115, 18.822762, 25.767365>,  <14.921197, 18.516211, 25.818005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173115, 18.822762, 25.767365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145091, 0.276181, 0.950091,
		0.763091, -0.579993, 0.285132,
		0.629794, 0.766376, -0.126600,
		15.362053, 19.052675, 25.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389586, 18.488770, 26.433111>,  <14.921197, 18.516211, 25.818005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389586, 18.488770, 26.433111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.415535, 18.856707, 26.278357>,  <15.431104, 19.077469, 26.185505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.415535, 18.856707, 26.278357>,  <15.389586, 18.488770, 26.433111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415535, 18.856707, 26.278357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145218, 0.392276, 0.908312,
		0.987271, -0.002740, 0.159025,
		0.064871, 0.919843, -0.386885,
		15.434997, 19.132660, 26.162291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780614, 18.782412, 26.938286>,  <15.389586, 18.488770, 26.433111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780614, 18.782412, 26.938286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597604, 19.055262, 26.710119>,  <15.487798, 19.218971, 26.573219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597604, 19.055262, 26.710119>,  <15.780614, 18.782412, 26.938286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597604, 19.055262, 26.710119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269408, 0.505007, 0.819992,
		0.847402, 0.528843, -0.047283,
		-0.457525, 0.682124, -0.570418,
		15.460346, 19.259899, 26.538994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163820, 19.446875, 27.064272>,  <15.780614, 18.782412, 26.938286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163820, 19.446875, 27.064272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.797058, 19.553461, 26.945425>,  <15.577001, 19.617413, 26.874117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.797058, 19.553461, 26.945425>,  <16.163820, 19.446875, 27.064272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797058, 19.553461, 26.945425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159179, 0.438526, 0.884510,
		0.365986, 0.858307, -0.359671,
		-0.916906, 0.266466, -0.297119,
		15.521986, 19.633400, 26.856289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128202, 20.198383, 27.256168>,  <16.163820, 19.446875, 27.064272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128202, 20.198383, 27.256168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.749866, 20.082699, 27.197195>,  <15.522863, 20.013288, 27.161810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.749866, 20.082699, 27.197195>,  <16.128202, 20.198383, 27.256168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749866, 20.082699, 27.197195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259148, 0.399181, 0.879487,
		-0.195503, 0.870065, -0.452511,
		-0.945844, -0.289209, -0.147434,
		15.466112, 19.995935, 27.152966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875278, 20.781675, 27.246206>,  <16.128202, 20.198383, 27.256168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875278, 20.781675, 27.246206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597692, 20.509264, 27.339684>,  <15.431140, 20.345818, 27.395769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597692, 20.509264, 27.339684>,  <15.875278, 20.781675, 27.246206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597692, 20.509264, 27.339684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237977, 0.523278, 0.818258,
		-0.679543, 0.512230, -0.525206,
		-0.693965, -0.681029, 0.233691,
		15.389502, 20.304955, 27.409790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209628, 21.165628, 27.253469>,  <15.875278, 20.781675, 27.246206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209628, 21.165628, 27.253469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.193398, 20.838900, 27.483656>,  <15.183661, 20.642862, 27.621767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.193398, 20.838900, 27.483656>,  <15.209628, 21.165628, 27.253469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193398, 20.838900, 27.483656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131976, 0.575274, 0.807244,
		-0.990422, -0.043195, -0.131141,
		-0.040573, -0.816820, 0.575464,
		15.181227, 20.593853, 27.656296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464563, 21.702772, 27.901402>,  <15.209628, 21.165628, 27.253469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464563, 21.702772, 27.901402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.711028, 22.016088, 27.934395>,  <15.858907, 22.204079, 27.954191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.711028, 22.016088, 27.934395>,  <15.464563, 21.702772, 27.901402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711028, 22.016088, 27.934395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737614, -0.537145, -0.409148,
		-0.276174, 0.312943, -0.908732,
		0.616161, 0.783289, 0.082486,
		15.895876, 22.251076, 27.959141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771827, 21.905788, 27.221312>,  <15.464563, 21.702772, 27.901402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.771827, 21.905788, 27.221312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.018225, 22.058117, 27.497145>,  <16.166063, 22.149513, 27.662645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.018225, 22.058117, 27.497145>,  <15.771827, 21.905788, 27.221312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018225, 22.058117, 27.497145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762348, -0.508695, -0.400070,
		0.198433, 0.772143, -0.603671,
		0.615995, 0.380820, 0.689584,
		16.203024, 22.172363, 27.704020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948026, 22.085985, 27.332336>,  <15.771827, 21.905788, 27.221312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948026, 22.085985, 27.332336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.790844, 22.410599, 27.159365>,  <14.696535, 22.605368, 27.055582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.790844, 22.410599, 27.159365>,  <14.948026, 22.085985, 27.332336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790844, 22.410599, 27.159365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183530, -0.530013, -0.827891,
		-0.901057, -0.245959, 0.357212,
		-0.392954, 0.811536, -0.432432,
		14.672957, 22.654060, 27.029634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393682, 21.806622, 26.980331>,  <14.948026, 22.085985, 27.332336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393682, 21.806622, 26.980331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.470375, 22.158340, 26.805941>,  <14.516391, 22.369371, 26.701305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.470375, 22.158340, 26.805941>,  <14.393682, 21.806622, 26.980331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.470375, 22.158340, 26.805941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294255, -0.372284, -0.880238,
		-0.936297, 0.297059, 0.187358,
		0.191732, 0.879296, -0.435979,
		14.527895, 22.422129, 26.675146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867921, 21.939032, 26.625380>,  <14.393682, 21.806622, 26.980331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867921, 21.939032, 26.625380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.140553, 22.179832, 26.458986>,  <14.304132, 22.324312, 26.359150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.140553, 22.179832, 26.458986>,  <13.867921, 21.939032, 26.625380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140553, 22.179832, 26.458986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241400, -0.351676, -0.904461,
		-0.690779, 0.716880, -0.094372,
		0.681579, 0.602002, -0.415985,
		14.345026, 22.360434, 26.334190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512010, 22.127832, 26.053928>,  <13.867921, 21.939032, 26.625380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512010, 22.127832, 26.053928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.892532, 22.216175, 25.967920>,  <14.120846, 22.269180, 25.916315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.892532, 22.216175, 25.967920>,  <13.512010, 22.127832, 26.053928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892532, 22.216175, 25.967920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166817, -0.217704, -0.961653,
		-0.259201, 0.950698, -0.170260,
		0.951308, 0.220859, -0.215022,
		14.177925, 22.282433, 25.903414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537159, 22.544365, 25.364708>,  <13.512010, 22.127832, 26.053928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.537159, 22.544365, 25.364708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.892047, 22.363319, 25.400448>,  <14.104980, 22.254692, 25.421892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.892047, 22.363319, 25.400448>,  <13.537159, 22.544365, 25.364708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892047, 22.363319, 25.400448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025467, -0.241425, -0.970085,
		0.460645, 0.858402, -0.225723,
		0.887219, -0.452614, 0.089350,
		14.158213, 22.227535, 25.427254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012531, 22.725262, 24.896040>,  <13.537159, 22.544365, 25.364708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.012531, 22.725262, 24.896040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.134128, 22.354935, 24.985884>,  <14.207086, 22.132738, 25.039791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.134128, 22.354935, 24.985884>,  <14.012531, 22.725262, 24.896040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.134128, 22.354935, 24.985884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089094, -0.207108, -0.974253,
		0.948500, 0.316175, 0.019526,
		0.303991, -0.925818, 0.224611,
		14.225325, 22.077188, 25.053267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358838, 22.612741, 24.389574>,  <14.012531, 22.725262, 24.896040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358838, 22.612741, 24.389574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.340942, 22.238054, 24.528460>,  <14.330205, 22.013243, 24.611792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.340942, 22.238054, 24.528460>,  <14.358838, 22.612741, 24.389574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.340942, 22.238054, 24.528460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134350, -0.350046, -0.927048,
		0.989924, 0.005173, 0.141508,
		-0.044739, -0.936718, 0.347213,
		14.327520, 21.957039, 24.632624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.838776, 22.289019, 23.965954>,  <14.358838, 22.612741, 24.389574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.838776, 22.289019, 23.965954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.656394, 21.978064, 24.139284>,  <14.546965, 21.791491, 24.243282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.656394, 21.978064, 24.139284>,  <14.838776, 22.289019, 23.965954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656394, 21.978064, 24.139284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204546, -0.565378, -0.799067,
		0.866179, -0.275704, 0.416799,
		-0.455955, -0.777390, 0.433325,
		14.519608, 21.744846, 24.269281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.285827, 21.803499, 23.880409>,  <14.838776, 22.289019, 23.965954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.285827, 21.803499, 23.880409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.944099, 21.607101, 23.948606>,  <14.739063, 21.489264, 23.989525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.944099, 21.607101, 23.948606>,  <15.285827, 21.803499, 23.880409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944099, 21.607101, 23.948606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236906, -0.659825, -0.713096,
		0.462620, -0.568820, 0.680019,
		-0.854317, -0.490994, 0.170492,
		14.687804, 21.459803, 23.999754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477386, 21.154108, 23.851503>,  <15.285827, 21.803499, 23.880409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477386, 21.154108, 23.851503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.083141, 21.128080, 23.789101>,  <14.846595, 21.112463, 23.751659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.083141, 21.128080, 23.789101>,  <15.477386, 21.154108, 23.851503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083141, 21.128080, 23.789101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165381, -0.562050, -0.810400,
		-0.034952, -0.824539, 0.564724,
		-0.985610, -0.065070, -0.156008,
		14.787458, 21.108559, 23.742298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287911, 20.490311, 23.747696>,  <15.477386, 21.154108, 23.851503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287911, 20.490311, 23.747696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.960490, 20.660080, 23.592861>,  <14.764037, 20.761942, 23.499960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.960490, 20.660080, 23.592861>,  <15.287911, 20.490311, 23.747696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960490, 20.660080, 23.592861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105658, -0.551121, -0.827709,
		-0.564635, -0.718420, 0.406276,
		-0.818550, 0.424427, -0.387089,
		14.714925, 20.787407, 23.476734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908954, 19.915215, 23.463032>,  <15.287911, 20.490311, 23.747696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908954, 19.915215, 23.463032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.799507, 20.256409, 23.285246>,  <14.733839, 20.461126, 23.178576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.799507, 20.256409, 23.285246>,  <14.908954, 19.915215, 23.463032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799507, 20.256409, 23.285246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031265, -0.469741, -0.882250,
		-0.961331, -0.227501, 0.155197,
		-0.273615, 0.852987, -0.444464,
		14.717422, 20.512304, 23.151907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.287148, 19.680033, 22.992046>,  <14.908954, 19.915215, 23.463032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.287148, 19.680033, 22.992046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.450586, 20.023596, 22.868549>,  <14.548650, 20.229734, 22.794451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.450586, 20.023596, 22.868549>,  <14.287148, 19.680033, 22.992046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450586, 20.023596, 22.868549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070841, -0.367092, -0.927483,
		-0.909961, 0.357096, -0.210839,
		0.408598, 0.858910, -0.308743,
		14.573166, 20.281269, 22.775927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931919, 19.948057, 22.308001>,  <14.287148, 19.680033, 22.992046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.931919, 19.948057, 22.308001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.294286, 20.109945, 22.357826>,  <14.511706, 20.207077, 22.387722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.294286, 20.109945, 22.357826>,  <13.931919, 19.948057, 22.308001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294286, 20.109945, 22.357826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286218, -0.368441, -0.884495,
		-0.312077, 0.836931, -0.449615,
		0.905918, 0.404719, 0.124562,
		14.566061, 20.231361, 22.395195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293090, 20.291985, 22.036461>,  <13.931919, 19.948057, 22.308001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293090, 20.291985, 22.036461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.925773, 20.163462, 21.943939>,  <12.705382, 20.086348, 21.888426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.925773, 20.163462, 21.943939>,  <13.293090, 20.291985, 22.036461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.925773, 20.163462, 21.943939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308125, 0.213177, 0.927154,
		-0.248594, 0.922668, -0.294762,
		-0.918292, -0.321308, -0.231302,
		12.650285, 20.067070, 21.874548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758348, 20.837851, 22.191454>,  <13.293090, 20.291985, 22.036461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758348, 20.837851, 22.191454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.517837, 20.518362, 22.182449>,  <12.373529, 20.326668, 22.177046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.517837, 20.518362, 22.182449>,  <12.758348, 20.837851, 22.191454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.517837, 20.518362, 22.182449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342237, 0.231972, 0.910529,
		-0.722038, 0.555186, -0.412832,
		-0.601278, -0.798723, -0.022512,
		12.337453, 20.278746, 22.175695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.073151, 21.138821, 22.216856>,  <12.758348, 20.837851, 22.191454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.073151, 21.138821, 22.216856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.105686, 20.759108, 22.338343>,  <12.125208, 20.531279, 22.411234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.105686, 20.759108, 22.338343>,  <12.073151, 21.138821, 22.216856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105686, 20.759108, 22.338343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382342, 0.251694, 0.889081,
		-0.920434, -0.188441, -0.342478,
		0.081340, -0.949284, 0.303717,
		12.130088, 20.474323, 22.429459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418504, 21.097265, 22.544014>,  <12.073151, 21.138821, 22.216856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418504, 21.097265, 22.544014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.636847, 20.786404, 22.669281>,  <11.767852, 20.599888, 22.744442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.636847, 20.786404, 22.669281>,  <11.418504, 21.097265, 22.544014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.636847, 20.786404, 22.669281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239054, 0.213778, 0.947181,
		-0.803053, -0.591888, -0.069089,
		0.545856, -0.777153, 0.313168,
		11.800603, 20.553257, 22.763231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.978580, 20.713249, 23.028023>,  <11.418504, 21.097265, 22.544014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.978580, 20.713249, 23.028023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.357126, 20.608082, 23.103142>,  <11.584254, 20.544981, 23.148214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.357126, 20.608082, 23.103142>,  <10.978580, 20.713249, 23.028023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357126, 20.608082, 23.103142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140218, 0.189454, 0.971826,
		-0.291089, -0.946035, 0.142427,
		0.946365, -0.262917, 0.187799,
		11.641036, 20.529207, 23.159481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.963544, 20.232113, 23.591549>,  <10.978580, 20.713249, 23.028023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.963544, 20.232113, 23.591549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.323487, 20.406586, 23.591928>,  <11.539454, 20.511269, 23.592155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.323487, 20.406586, 23.591928>,  <10.963544, 20.232113, 23.591549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323487, 20.406586, 23.591928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042245, 0.084991, 0.995486,
		0.434134, -0.895835, 0.094907,
		0.899857, 0.436184, 0.000947,
		11.593445, 20.537441, 23.592213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.182640, 20.007681, 24.185207>,  <10.963544, 20.232113, 23.591549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.182640, 20.007681, 24.185207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.429169, 20.316257, 24.121929>,  <11.577086, 20.501404, 24.083963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.429169, 20.316257, 24.121929>,  <11.182640, 20.007681, 24.185207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.429169, 20.316257, 24.121929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066029, 0.250798, 0.965785,
		0.784721, -0.584789, 0.205510,
		0.616322, 0.771441, -0.158193,
		11.614065, 20.547689, 24.074471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.268991, 19.351625, 24.498545>,  <11.182640, 20.007681, 24.185207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.268991, 19.351625, 24.498545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.179738, 19.016918, 24.698557>,  <11.126186, 18.816093, 24.818565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.179738, 19.016918, 24.698557>,  <11.268991, 19.351625, 24.498545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.179738, 19.016918, 24.698557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116431, -0.486414, -0.865936,
		0.967810, -0.251436, 0.011109,
		-0.223131, -0.836769, 0.500032,
		11.112799, 18.765888, 24.848566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.683458, 18.777704, 24.295231>,  <11.268991, 19.351625, 24.498545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.683458, 18.777704, 24.295231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.353617, 18.610323, 24.447506>,  <11.155712, 18.509893, 24.538872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.353617, 18.610323, 24.447506>,  <11.683458, 18.777704, 24.295231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.353617, 18.610323, 24.447506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020397, -0.694494, -0.719209,
		0.565342, -0.585298, 0.581218,
		-0.824604, -0.418454, 0.380688,
		11.106236, 18.484787, 24.561712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.777756, 18.143673, 24.239548>,  <11.683458, 18.777704, 24.295231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.777756, 18.143673, 24.239548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.382287, 18.119175, 24.294359>,  <11.145006, 18.104477, 24.327246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.382287, 18.119175, 24.294359>,  <11.777756, 18.143673, 24.239548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.382287, 18.119175, 24.294359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075335, -0.587150, -0.805965,
		0.129819, -0.807158, 0.575884,
		-0.988671, -0.061245, 0.137031,
		11.085686, 18.100801, 24.335468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567240, 17.371603, 24.354227>,  <11.777756, 18.143673, 24.239548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567240, 17.371603, 24.354227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.244506, 17.574953, 24.233847>,  <11.050865, 17.696964, 24.161619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.244506, 17.574953, 24.233847>,  <11.567240, 17.371603, 24.354227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.244506, 17.574953, 24.233847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084011, -0.602968, -0.793329,
		-0.584765, -0.614807, 0.529208,
		-0.806840, 0.508371, -0.300944,
		11.002456, 17.727467, 24.143562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101012, 16.909521, 24.185551>,  <11.567240, 17.371603, 24.354227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101012, 16.909521, 24.185551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.949349, 17.220257, 23.984449>,  <10.858352, 17.406698, 23.863789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.949349, 17.220257, 23.984449>,  <11.101012, 16.909521, 24.185551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.949349, 17.220257, 23.984449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202614, -0.599833, -0.774046,
		-0.902878, -0.191620, 0.384829,
		-0.379156, 0.776841, -0.502751,
		10.835603, 17.453310, 23.833624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.368401, 16.760534, 24.038811>,  <11.101012, 16.909521, 24.185551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.368401, 16.760534, 24.038811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.499629, 17.043921, 23.788868>,  <10.578366, 17.213953, 23.638903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.499629, 17.043921, 23.788868>,  <10.368401, 16.760534, 24.038811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.499629, 17.043921, 23.788868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366555, -0.514164, -0.775417,
		-0.870636, 0.483436, 0.091010,
		0.328071, 0.708466, -0.624856,
		10.598050, 17.256460, 23.601412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.885843, 16.840975, 23.465853>,  <10.368401, 16.760534, 24.038811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.885843, 16.840975, 23.465853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.196064, 17.049992, 23.324165>,  <10.382196, 17.175402, 23.239153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.196064, 17.049992, 23.324165>,  <9.885843, 16.840975, 23.465853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.196064, 17.049992, 23.324165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127214, -0.420230, -0.898456,
		-0.618334, 0.741860, -0.259436,
		0.775551, 0.522542, -0.354218,
		10.428729, 17.206755, 23.217899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.996799, 19.676319, 25.805401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.761654, 19.845564, 25.529606>,  <17.620567, 19.947111, 25.364128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.761654, 19.845564, 25.529606>,  <17.996799, 19.676319, 25.805401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.761654, 19.845564, 25.529606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734373, 0.078346, 0.674209,
		0.339283, 0.902685, 0.264664,
		-0.587863, 0.423110, -0.689489,
		17.585295, 19.972496, 25.322760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092096, 19.170898, 26.451231>,  <17.996799, 19.676319, 25.805401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092096, 19.170898, 26.451231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.957148, 18.816963, 26.579756>,  <17.876179, 18.604603, 26.656870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.957148, 18.816963, 26.579756>,  <18.092096, 19.170898, 26.451231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.957148, 18.816963, 26.579756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510091, 0.458702, 0.727598,
		-0.791193, 0.081574, -0.606102,
		-0.337373, -0.884838, 0.321312,
		17.855936, 18.551512, 26.676149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403982, 19.261295, 26.554790>,  <18.092096, 19.170898, 26.451231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403982, 19.261295, 26.554790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.534473, 18.972904, 26.799335>,  <17.612768, 18.799870, 26.946062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.534473, 18.972904, 26.799335>,  <17.403982, 19.261295, 26.554790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534473, 18.972904, 26.799335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374770, 0.495103, 0.783850,
		-0.867827, -0.484834, -0.108685,
		0.326227, -0.720978, 0.611365,
		17.632341, 18.756611, 26.982744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859667, 18.878805, 27.014160>,  <17.403982, 19.261295, 26.554790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859667, 18.878805, 27.014160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.218925, 18.919827, 27.185186>,  <17.434481, 18.944439, 27.287802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.218925, 18.919827, 27.185186>,  <16.859667, 18.878805, 27.014160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218925, 18.919827, 27.185186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397582, 0.604700, 0.690121,
		-0.187776, -0.789824, 0.583883,
		0.898148, 0.102553, 0.427568,
		17.488369, 18.950592, 27.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489080, 18.198002, 27.136747>,  <16.859667, 18.878805, 27.014160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489080, 18.198002, 27.136747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.455244, 18.094183, 27.521555>,  <16.434942, 18.031891, 27.752439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.455244, 18.094183, 27.521555>,  <16.489080, 18.198002, 27.136747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.455244, 18.094183, 27.521555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263732, -0.936878, -0.229575,
		0.960880, 0.234295, 0.147701,
		-0.084589, -0.259547, 0.962019,
		16.429867, 18.016319, 27.810160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170227, 17.948704, 27.434458>,  <16.489080, 18.198002, 27.136747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170227, 17.948704, 27.434458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.859682, 17.769329, 27.611620>,  <16.673355, 17.661705, 27.717918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.859682, 17.769329, 27.611620>,  <17.170227, 17.948704, 27.434458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859682, 17.769329, 27.611620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336017, -0.888994, -0.311098,
		0.533249, -0.092700, 0.840864,
		-0.776361, -0.448438, 0.442907,
		16.626774, 17.634798, 27.744492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480219, 17.407173, 27.646503>,  <17.170227, 17.948704, 27.434458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480219, 17.407173, 27.646503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.103235, 17.293938, 27.717640>,  <16.877045, 17.225996, 27.760323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.103235, 17.293938, 27.717640>,  <17.480219, 17.407173, 27.646503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103235, 17.293938, 27.717640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227924, -0.933245, -0.277677,
		0.244578, -0.221166, 0.944070,
		-0.942461, -0.283090, 0.177842,
		16.820498, 17.209011, 27.770992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387033, 16.753584, 28.181744>,  <17.480219, 17.407173, 27.646503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387033, 16.753584, 28.181744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.090437, 16.780666, 27.914730>,  <16.912479, 16.796915, 27.754522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.090437, 16.780666, 27.914730>,  <17.387033, 16.753584, 28.181744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090437, 16.780666, 27.914730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260005, -0.888164, -0.378895,
		-0.618536, -0.454510, 0.640963,
		-0.741493, 0.067707, -0.667536,
		16.867989, 16.800978, 27.714470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133612, 15.999386, 28.025173>,  <17.387033, 16.753584, 28.181744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133612, 15.999386, 28.025173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.028467, 16.242882, 27.725750>,  <16.965380, 16.388979, 27.546095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.028467, 16.242882, 27.725750>,  <17.133612, 15.999386, 28.025173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028467, 16.242882, 27.725750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143600, -0.742518, -0.654252,
		-0.954087, -0.279471, 0.107765,
		-0.262862, 0.608739, -0.748559,
		16.949608, 16.425503, 27.501183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709499, 15.509117, 27.565720>,  <17.133612, 15.999386, 28.025173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709499, 15.509117, 27.565720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.806915, 15.829700, 27.347233>,  <16.865364, 16.022051, 27.216141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.806915, 15.829700, 27.347233>,  <16.709499, 15.509117, 27.565720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806915, 15.829700, 27.347233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216841, -0.593912, -0.774757,
		-0.945340, 0.070242, -0.318430,
		0.243540, 0.801458, -0.546218,
		16.879976, 16.070137, 27.183367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299749, 15.370637, 26.972454>,  <16.709499, 15.509117, 27.565720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299749, 15.370637, 26.972454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.567114, 15.645587, 26.858791>,  <16.727531, 15.810556, 26.790594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.567114, 15.645587, 26.858791>,  <16.299749, 15.370637, 26.972454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567114, 15.645587, 26.858791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172353, -0.514777, -0.839821,
		-0.723550, 0.512368, -0.462553,
		0.668409, 0.687374, -0.284159,
		16.767637, 15.851799, 26.773544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123636, 15.453031, 26.318834>,  <16.299749, 15.370637, 26.972454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123636, 15.453031, 26.318834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.488338, 15.615260, 26.344793>,  <16.707159, 15.712598, 26.360369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.488338, 15.615260, 26.344793>,  <16.123636, 15.453031, 26.318834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488338, 15.615260, 26.344793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201921, -0.305002, -0.930700,
		-0.357673, 0.861675, -0.359981,
		0.911755, 0.405574, 0.064899,
		16.761866, 15.736933, 26.364264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416753, 15.504272, 25.895103>,  <16.123636, 15.453031, 26.318834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416753, 15.504272, 25.895103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.068143, 15.308825, 25.911602>,  <14.858977, 15.191558, 25.921501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.068143, 15.308825, 25.911602>,  <15.416753, 15.504272, 25.895103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068143, 15.308825, 25.911602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304843, 0.605776, 0.734919,
		-0.384078, 0.627926, -0.676899,
		-0.871524, -0.488614, 0.041246,
		14.806685, 15.162241, 25.923975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.830917, 16.106358, 25.826477>,  <15.416753, 15.504272, 25.895103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.830917, 16.106358, 25.826477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.653791, 15.790338, 25.996058>,  <14.547516, 15.600725, 26.097807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.653791, 15.790338, 25.996058>,  <14.830917, 16.106358, 25.826477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653791, 15.790338, 25.996058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656276, 0.607769, 0.447122,
		-0.610914, -0.080238, -0.787620,
		-0.442815, -0.790050, 0.423953,
		14.520947, 15.553323, 26.123243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123350, 16.308460, 25.704950>,  <14.830917, 16.106358, 25.826477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123350, 16.308460, 25.704950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.092917, 16.026594, 25.987129>,  <14.074658, 15.857474, 26.156437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.092917, 16.026594, 25.987129>,  <14.123350, 16.308460, 25.704950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.092917, 16.026594, 25.987129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759475, 0.499378, 0.416916,
		-0.646072, -0.504052, -0.573169,
		-0.076081, -0.704666, 0.705449,
		14.070093, 15.815194, 26.198765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423480, 16.232418, 25.799995>,  <14.123350, 16.308460, 25.704950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423480, 16.232418, 25.799995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.594095, 16.063509, 26.119932>,  <13.696465, 15.962163, 26.311895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.594095, 16.063509, 26.119932>,  <13.423480, 16.232418, 25.799995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594095, 16.063509, 26.119932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605155, 0.523988, 0.599353,
		-0.672199, -0.739677, -0.032039,
		0.426539, -0.422273, 0.799844,
		13.722057, 15.936827, 26.359886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.882757, 15.972735, 26.312447>,  <13.423480, 16.232418, 25.799995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.882757, 15.972735, 26.312447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.216727, 16.004002, 26.530361>,  <13.417109, 16.022760, 26.661110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.216727, 16.004002, 26.530361>,  <12.882757, 15.972735, 26.312447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216727, 16.004002, 26.530361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465116, 0.629391, 0.622523,
		-0.294223, -0.773148, 0.561850,
		0.834925, 0.078165, 0.544785,
		13.467205, 16.027451, 26.693796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.622834, 16.032293, 26.999189>,  <12.882757, 15.972735, 26.312447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.622834, 16.032293, 26.999189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.994882, 16.179192, 27.000439>,  <13.218110, 16.267330, 27.001188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.994882, 16.179192, 27.000439>,  <12.622834, 16.032293, 26.999189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994882, 16.179192, 27.000439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326650, 0.823356, 0.464095,
		0.167863, -0.432684, 0.885780,
		0.930119, 0.367245, 0.003125,
		13.273917, 16.289366, 27.001377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718932, 16.170204, 27.705490>,  <12.622834, 16.032293, 26.999189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718932, 16.170204, 27.705490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.002607, 16.384066, 27.521666>,  <13.172812, 16.512383, 27.411371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.002607, 16.384066, 27.521666>,  <12.718932, 16.170204, 27.705490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002607, 16.384066, 27.521666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113562, 0.729959, 0.673990,
		0.695814, -0.425797, 0.578394,
		0.709187, 0.534655, -0.459562,
		13.215364, 16.544462, 27.383797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149450, 16.308212, 28.191616>,  <12.718932, 16.170204, 27.705490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149450, 16.308212, 28.191616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.203646, 16.582628, 27.905680>,  <13.236163, 16.747278, 27.734118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.203646, 16.582628, 27.905680>,  <13.149450, 16.308212, 28.191616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.203646, 16.582628, 27.905680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051378, 0.715656, 0.696560,
		0.989446, -0.131103, 0.061716,
		0.135488, 0.686038, -0.714839,
		13.244292, 16.788439, 27.691229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.694427, 16.587784, 28.322569>,  <13.149450, 16.308212, 28.191616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.694427, 16.587784, 28.322569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.492703, 16.856346, 28.105352>,  <13.371670, 17.017483, 27.975023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.492703, 16.856346, 28.105352>,  <13.694427, 16.587784, 28.322569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.492703, 16.856346, 28.105352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045615, 0.607273, 0.793183,
		0.862319, 0.424779, -0.275626,
		-0.504308, 0.671404, -0.543039,
		13.341412, 17.057768, 27.942440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910410, 17.224585, 28.637993>,  <13.694427, 16.587784, 28.322569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910410, 17.224585, 28.637993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.586056, 17.333031, 28.430548>,  <13.391443, 17.398098, 28.306080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.586056, 17.333031, 28.430548>,  <13.910410, 17.224585, 28.637993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586056, 17.333031, 28.430548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262025, 0.624206, 0.736010,
		0.523266, 0.732710, -0.435120,
		-0.810886, 0.271116, -0.518614,
		13.342790, 17.414366, 28.274963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850486, 18.012751, 28.565201>,  <13.910410, 17.224585, 28.637993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850486, 18.012751, 28.565201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.477927, 17.872534, 28.525969>,  <13.254392, 17.788404, 28.502428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.477927, 17.872534, 28.525969>,  <13.850486, 18.012751, 28.565201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477927, 17.872534, 28.525969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340355, 0.743135, 0.576115,
		-0.129064, 0.569974, -0.811463,
		-0.931397, -0.350541, -0.098081,
		13.198508, 17.767372, 28.496544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445107, 18.646101, 28.597919>,  <13.850486, 18.012751, 28.565201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445107, 18.646101, 28.597919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.183031, 18.346592, 28.638062>,  <13.025786, 18.166887, 28.662146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.183031, 18.346592, 28.638062>,  <13.445107, 18.646101, 28.597919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.183031, 18.346592, 28.638062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578604, 0.582765, 0.570615,
		-0.485743, 0.315795, -0.815063,
		-0.655188, -0.748771, 0.100354,
		12.986475, 18.121962, 28.668167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857987, 18.978315, 28.616499>,  <13.445107, 18.646101, 28.597919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857987, 18.978315, 28.616499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.744870, 18.626669, 28.769955>,  <12.677000, 18.415680, 28.862028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.744870, 18.626669, 28.769955>,  <12.857987, 18.978315, 28.616499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744870, 18.626669, 28.769955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496892, 0.476385, 0.725366,
		-0.820443, 0.014500, -0.571545,
		-0.282793, -0.879117, 0.383642,
		12.660032, 18.362934, 28.885048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197544, 18.952711, 28.618874>,  <12.857987, 18.978315, 28.616499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197544, 18.952711, 28.618874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.320510, 18.696161, 28.900053>,  <12.394289, 18.542231, 29.068760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.320510, 18.696161, 28.900053>,  <12.197544, 18.952711, 28.618874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.320510, 18.696161, 28.900053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488841, 0.527347, 0.694939,
		-0.816413, -0.557263, -0.151416,
		0.307415, -0.641375, 0.702946,
		12.412734, 18.503748, 29.110937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.360495, 18.784544, 27.846357>,  <12.197544, 18.952711, 28.618874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.360495, 18.784544, 27.846357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.065697, 19.054670, 27.835129>,  <11.888818, 19.216745, 27.828392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.065697, 19.054670, 27.835129>,  <12.360495, 18.784544, 27.846357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.065697, 19.054670, 27.835129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402011, -0.471362, -0.784987,
		-0.543345, -0.567247, 0.618876,
		-0.736996, 0.675314, -0.028073,
		11.844598, 19.257265, 27.826706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.664765, 18.348408, 27.730104>,  <12.360495, 18.784544, 27.846357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.664765, 18.348408, 27.730104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.588059, 18.713886, 27.586779>,  <11.542036, 18.933172, 27.500782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.588059, 18.713886, 27.586779>,  <11.664765, 18.348408, 27.730104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.588059, 18.713886, 27.586779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309488, -0.402760, -0.861395,
		-0.931367, -0.054290, 0.360012,
		-0.191764, 0.913694, -0.358315,
		11.530530, 18.987995, 27.479284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.022161, 18.324589, 27.462654>,  <11.664765, 18.348408, 27.730104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.022161, 18.324589, 27.462654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.156738, 18.653141, 27.278421>,  <11.237485, 18.850273, 27.167883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.156738, 18.653141, 27.278421>,  <11.022161, 18.324589, 27.462654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.156738, 18.653141, 27.278421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362344, -0.338523, -0.868394,
		-0.869202, 0.459056, 0.183729,
		0.336445, 0.821383, -0.460581,
		11.257672, 18.899555, 27.140247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.488560, 18.593203, 27.001699>,  <11.022161, 18.324589, 27.462654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.488560, 18.593203, 27.001699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.824724, 18.743256, 26.845247>,  <11.026423, 18.833288, 26.751375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.824724, 18.743256, 26.845247>,  <10.488560, 18.593203, 27.001699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.824724, 18.743256, 26.845247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202114, -0.452698, -0.868455,
		-0.502851, 0.808913, -0.304632,
		0.840411, 0.375133, -0.391132,
		11.076847, 18.855795, 26.727907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.298432, 18.994154, 26.389168>,  <10.488560, 18.593203, 27.001699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.298432, 18.994154, 26.389168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.683537, 18.906981, 26.325174>,  <10.914600, 18.854677, 26.286779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.683537, 18.906981, 26.325174>,  <10.298432, 18.994154, 26.389168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.683537, 18.906981, 26.325174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201844, -0.185755, -0.961641,
		0.179855, 0.958123, -0.222827,
		0.962762, -0.217933, -0.159982,
		10.972366, 18.841600, 26.277180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.330483, 19.280657, 25.738302>,  <10.298432, 18.994154, 26.389168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.330483, 19.280657, 25.738302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.649912, 19.040754, 25.758604>,  <10.841569, 18.896812, 25.770786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.649912, 19.040754, 25.758604>,  <10.330483, 19.280657, 25.738302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.649912, 19.040754, 25.758604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092023, -0.204991, -0.974428,
		0.594824, 0.773480, -0.218891,
		0.798572, -0.599756, 0.050755,
		10.889483, 18.860828, 25.773830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.893433, 19.516613, 25.166702>,  <10.330483, 19.280657, 25.738302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.893433, 19.516613, 25.166702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.989069, 19.138573, 25.255806>,  <11.046451, 18.911749, 25.309269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.989069, 19.138573, 25.255806>,  <10.893433, 19.516613, 25.166702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989069, 19.138573, 25.255806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241428, -0.280073, -0.929124,
		0.940504, 0.168365, -0.295136,
		0.239092, -0.945099, 0.222762,
		11.060797, 18.855043, 25.322634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334532, 20.090193, 24.940565>,  <10.893433, 19.516613, 25.166702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334532, 20.090193, 24.940565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.454889, 20.418699, 24.746664>,  <11.527104, 20.615803, 24.630323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.454889, 20.418699, 24.746664>,  <11.334532, 20.090193, 24.940565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.454889, 20.418699, 24.746664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032292, 0.499245, 0.865859,
		0.953111, -0.276186, 0.123700,
		0.300895, 0.821265, -0.484755,
		11.545157, 20.665079, 24.601238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.890105, 20.359560, 25.319315>,  <11.334532, 20.090193, 24.940565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.890105, 20.359560, 25.319315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.793804, 20.688072, 25.112419>,  <11.736024, 20.885180, 24.988281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.793804, 20.688072, 25.112419>,  <11.890105, 20.359560, 25.319315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.793804, 20.688072, 25.112419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169132, 0.560260, 0.810865,
		0.955737, 0.107736, -0.273789,
		-0.240753, 0.821280, -0.517240,
		11.721579, 20.934456, 24.957247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.387526, 20.762787, 25.369860>,  <11.890105, 20.359560, 25.319315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.387526, 20.762787, 25.369860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.072319, 20.996634, 25.292656>,  <11.883195, 21.136942, 25.246334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.072319, 20.996634, 25.292656>,  <12.387526, 20.762787, 25.369860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.072319, 20.996634, 25.292656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266280, 0.606309, 0.749322,
		0.555090, 0.539083, -0.633454,
		-0.788016, 0.584618, -0.193009,
		11.835915, 21.172018, 25.234753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608706, 21.489899, 25.473568>,  <12.387526, 20.762787, 25.369860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608706, 21.489899, 25.473568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.214283, 21.530624, 25.526222>,  <11.977630, 21.555059, 25.557814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.214283, 21.530624, 25.526222>,  <12.608706, 21.489899, 25.473568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214283, 21.530624, 25.526222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165927, 0.662044, 0.730866,
		-0.012733, 0.742516, -0.669707,
		-0.986056, 0.101816, 0.131634,
		11.918467, 21.561169, 25.565712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.464239, 22.214018, 25.382687>,  <12.608706, 21.489899, 25.473568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.464239, 22.214018, 25.382687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.155974, 22.052158, 25.579599>,  <11.971016, 21.955044, 25.697746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.155974, 22.052158, 25.579599>,  <12.464239, 22.214018, 25.382687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.155974, 22.052158, 25.579599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046978, 0.734337, 0.677157,
		-0.635510, 0.544985, -0.546916,
		-0.770662, -0.404648, 0.492281,
		11.924776, 21.930763, 25.727283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.944087, 22.766977, 25.482370>,  <12.464239, 22.214018, 25.382687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.944087, 22.766977, 25.482370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.877503, 22.478951, 25.751827>,  <11.837553, 22.306135, 25.913502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.877503, 22.478951, 25.751827>,  <11.944087, 22.766977, 25.482370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877503, 22.478951, 25.751827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122078, 0.662868, 0.738717,
		-0.978462, 0.205204, -0.022436,
		-0.166460, -0.720068, 0.673642,
		11.827565, 22.262930, 25.953920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463991, 23.078224, 25.934126>,  <11.944087, 22.766977, 25.482370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463991, 23.078224, 25.934126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.628958, 22.766737, 26.123234>,  <11.727938, 22.579844, 26.236698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.628958, 22.766737, 26.123234>,  <11.463991, 23.078224, 25.934126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628958, 22.766737, 26.123234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165847, 0.574464, 0.801552,
		-0.895772, -0.252165, 0.366067,
		0.412416, -0.778719, 0.472768,
		11.752683, 22.533121, 26.265064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.249127, 23.209352, 26.657009>,  <11.463991, 23.078224, 25.934126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.249127, 23.209352, 26.657009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.549974, 22.952078, 26.714458>,  <11.730483, 22.797712, 26.748928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.549974, 22.952078, 26.714458>,  <11.249127, 23.209352, 26.657009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.549974, 22.952078, 26.714458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263805, 0.493539, 0.828750,
		-0.603925, -0.585430, 0.540876,
		0.752118, -0.643188, 0.143621,
		11.775610, 22.759121, 26.757545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232197, 23.150261, 27.338751>,  <11.249127, 23.209352, 26.657009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232197, 23.150261, 27.338751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.586349, 23.012514, 27.213844>,  <11.798841, 22.929867, 27.138901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.586349, 23.012514, 27.213844>,  <11.232197, 23.150261, 27.338751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.586349, 23.012514, 27.213844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440746, 0.408283, 0.799405,
		-0.147795, -0.845409, 0.513265,
		0.885381, -0.344368, -0.312268,
		11.851964, 22.909204, 27.120163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.091278, 13.530354, 13.882644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468553, 13.611440, 13.987949>,  <14.694917, 13.660091, 14.051133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468553, 13.611440, 13.987949>,  <14.091278, 13.530354, 13.882644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468553, 13.611440, 13.987949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324182, 0.735155, 0.595359,
		-0.072853, -0.646880, 0.759104,
		0.943185, 0.202714, 0.263265,
		14.751509, 13.672254, 14.066929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289684, 13.506775, 14.636743>,  <14.091278, 13.530354, 13.882644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289684, 13.506775, 14.636743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.555820, 13.752345, 14.466840>,  <14.715502, 13.899688, 14.364898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.555820, 13.752345, 14.466840>,  <14.289684, 13.506775, 14.636743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555820, 13.752345, 14.466840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262765, 0.725141, 0.636494,
		0.698766, -0.311876, 0.643785,
		0.665342, 0.613925, -0.424754,
		14.755423, 13.936522, 14.339413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687003, 13.783234, 15.202034>,  <14.289684, 13.506775, 14.636743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687003, 13.783234, 15.202034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746508, 14.016415, 14.882525>,  <14.782210, 14.156323, 14.690820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746508, 14.016415, 14.882525>,  <14.687003, 13.783234, 15.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746508, 14.016415, 14.882525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069664, 0.811931, 0.579582,
		0.986416, -0.030573, 0.161395,
		0.148761, 0.582952, -0.798772,
		14.791136, 14.191300, 14.642894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166332, 14.210926, 15.397622>,  <14.687003, 13.783234, 15.202034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166332, 14.210926, 15.397622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000608, 14.408437, 15.091804>,  <14.901174, 14.526943, 14.908312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000608, 14.408437, 15.091804>,  <15.166332, 14.210926, 15.397622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000608, 14.408437, 15.091804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082611, 0.816166, 0.571882,
		0.906379, 0.300096, -0.297354,
		-0.414310, 0.493777, -0.764547,
		14.876315, 14.556570, 14.862439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457540, 14.842009, 15.498814>,  <15.166332, 14.210926, 15.397622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457540, 14.842009, 15.498814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137054, 14.906676, 15.268363>,  <14.944763, 14.945477, 15.130093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137054, 14.906676, 15.268363>,  <15.457540, 14.842009, 15.498814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137054, 14.906676, 15.268363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292769, 0.733788, 0.613059,
		0.521867, 0.659863, -0.540588,
		-0.801212, 0.161668, -0.576127,
		14.896691, 14.955176, 15.095525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337495, 15.579426, 15.433087>,  <15.457540, 14.842009, 15.498814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337495, 15.579426, 15.433087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988547, 15.403177, 15.348399>,  <14.779179, 15.297428, 15.297586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988547, 15.403177, 15.348399>,  <15.337495, 15.579426, 15.433087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988547, 15.403177, 15.348399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473453, 0.653715, 0.590338,
		-0.121711, 0.615232, -0.778894,
		-0.872369, -0.440620, -0.211719,
		14.726836, 15.270991, 15.284883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927011, 16.078764, 15.190722>,  <15.337495, 15.579426, 15.433087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927011, 16.078764, 15.190722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665043, 15.796474, 15.298822>,  <14.507862, 15.627101, 15.363683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665043, 15.796474, 15.298822>,  <14.927011, 16.078764, 15.190722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665043, 15.796474, 15.298822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448495, 0.650806, 0.612620,
		-0.608223, 0.280009, -0.742738,
		-0.654918, -0.705724, 0.270253,
		14.468568, 15.584757, 15.379898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328322, 16.476177, 15.328019>,  <14.927011, 16.078764, 15.190722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328322, 16.476177, 15.328019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.270801, 16.117258, 15.494958>,  <14.236287, 15.901907, 15.595121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.270801, 16.117258, 15.494958>,  <14.328322, 16.476177, 15.328019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270801, 16.117258, 15.494958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701508, 0.389891, 0.596550,
		-0.698002, -0.206985, -0.685529,
		-0.143804, -0.897298, 0.417347,
		14.227659, 15.848069, 15.620162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548650, 16.323811, 15.343191>,  <14.328322, 16.476177, 15.328019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548650, 16.323811, 15.343191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706005, 16.098820, 15.634084>,  <13.800418, 15.963825, 15.808619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706005, 16.098820, 15.634084>,  <13.548650, 16.323811, 15.343191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706005, 16.098820, 15.634084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666904, 0.369896, 0.646850,
		-0.632839, -0.739457, -0.229606,
		0.393387, -0.562477, 0.727232,
		13.824021, 15.930077, 15.852253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.048625, 16.180202, 15.787679>,  <13.548650, 16.323811, 15.343191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.048625, 16.180202, 15.787679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346625, 16.058060, 16.024906>,  <13.525425, 15.984774, 16.167242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346625, 16.058060, 16.024906>,  <13.048625, 16.180202, 15.787679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346625, 16.058060, 16.024906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555607, 0.207964, 0.805017,
		-0.369156, -0.929251, -0.014727,
		0.745000, -0.305359, 0.593069,
		13.570126, 15.966453, 16.202827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703211, 15.839062, 16.374321>,  <13.048625, 16.180202, 15.787679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703211, 15.839062, 16.374321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.062619, 15.974288, 16.486300>,  <13.278264, 16.055424, 16.553488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.062619, 15.974288, 16.486300>,  <12.703211, 15.839062, 16.374321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.062619, 15.974288, 16.486300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394088, 0.340504, 0.853670,
		0.193272, -0.877365, 0.439177,
		0.898522, 0.338065, 0.279949,
		13.332175, 16.075708, 16.570284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814075, 15.723460, 17.092293>,  <12.703211, 15.839062, 16.374321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814075, 15.723460, 17.092293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080347, 16.011744, 17.014881>,  <13.240109, 16.184713, 16.968433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.080347, 16.011744, 17.014881>,  <12.814075, 15.723460, 17.092293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080347, 16.011744, 17.014881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376728, 0.548426, 0.746529,
		0.644166, -0.424039, 0.636585,
		0.665677, 0.720708, -0.193530,
		13.280050, 16.227955, 16.956823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950753, 15.168625, 17.562626>,  <12.814075, 15.723460, 17.092293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950753, 15.168625, 17.562626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676219, 14.906951, 17.689739>,  <12.511498, 14.749947, 17.766006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676219, 14.906951, 17.689739>,  <12.950753, 15.168625, 17.562626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.676219, 14.906951, 17.689739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269123, -0.634370, -0.724670,
		0.675661, -0.411843, 0.611447,
		-0.686334, -0.654186, 0.317783,
		12.470319, 14.710695, 17.785074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.260252, 14.570183, 17.551401>,  <12.950753, 15.168625, 17.562626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.260252, 14.570183, 17.551401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.869894, 14.487876, 17.522316>,  <12.635679, 14.438492, 17.504866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.869894, 14.487876, 17.522316>,  <13.260252, 14.570183, 17.551401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.869894, 14.487876, 17.522316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191848, -0.650061, -0.735265,
		0.104026, -0.731492, 0.673868,
		-0.975896, -0.205767, -0.072712,
		12.577126, 14.426146, 17.500502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243211, 13.828465, 17.344067>,  <13.260252, 14.570183, 17.551401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243211, 13.828465, 17.344067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.867676, 13.954068, 17.287519>,  <12.642355, 14.029430, 17.253592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.867676, 13.954068, 17.287519>,  <13.243211, 13.828465, 17.344067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867676, 13.954068, 17.287519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132833, -0.708969, -0.692617,
		-0.317712, -0.631477, 0.707317,
		-0.938837, 0.314008, -0.141367,
		12.586025, 14.048270, 17.245110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.905567, 13.214334, 17.181581>,  <13.243211, 13.828465, 17.344067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.905567, 13.214334, 17.181581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652127, 13.489089, 17.039179>,  <12.500064, 13.653942, 16.953737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652127, 13.489089, 17.039179>,  <12.905567, 13.214334, 17.181581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652127, 13.489089, 17.039179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141258, -0.555131, -0.819680,
		-0.760657, -0.469060, 0.448758,
		-0.633599, 0.686887, -0.356006,
		12.462048, 13.695155, 16.932377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.259422, 12.947946, 17.000219>,  <12.905567, 13.214334, 17.181581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.259422, 12.947946, 17.000219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299767, 13.276405, 16.775528>,  <12.323973, 13.473481, 16.640713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299767, 13.276405, 16.775528>,  <12.259422, 12.947946, 17.000219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.299767, 13.276405, 16.775528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068091, -0.557587, -0.827321,
		-0.992568, 0.121692, -0.000326,
		0.100860, 0.821150, -0.561729,
		12.330025, 13.522750, 16.607010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.805049, 12.811090, 16.541151>,  <12.259422, 12.947946, 17.000219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.805049, 12.811090, 16.541151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985705, 13.121392, 16.364868>,  <12.094099, 13.307574, 16.259098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985705, 13.121392, 16.364868>,  <11.805049, 12.811090, 16.541151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985705, 13.121392, 16.364868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096827, -0.448419, -0.888563,
		-0.886930, 0.443984, -0.127410,
		0.451641, 0.775757, -0.440706,
		12.121198, 13.354119, 16.232656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446301, 12.868402, 15.971436>,  <11.805049, 12.811090, 16.541151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446301, 12.868402, 15.971436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799438, 13.045482, 15.908688>,  <12.011321, 13.151730, 15.871039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799438, 13.045482, 15.908688>,  <11.446301, 12.868402, 15.971436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799438, 13.045482, 15.908688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078464, -0.468325, -0.880065,
		-0.463069, 0.764650, -0.448193,
		0.882842, 0.442698, -0.156869,
		12.064291, 13.178291, 15.861627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.428253, 13.075842, 15.344437>,  <11.446301, 12.868402, 15.971436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.428253, 13.075842, 15.344437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.824150, 13.069957, 15.401281>,  <12.061688, 13.066425, 15.435389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.824150, 13.069957, 15.401281>,  <11.428253, 13.075842, 15.344437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.824150, 13.069957, 15.401281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115981, -0.498115, -0.859319,
		0.083432, 0.866986, -0.491299,
		0.989741, -0.014713, 0.142113,
		12.121073, 13.065543, 15.443915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.743084, 13.329075, 14.743824>,  <11.428253, 13.075842, 15.344437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.743084, 13.329075, 14.743824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006459, 13.112305, 14.952736>,  <12.164484, 12.982243, 15.078083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006459, 13.112305, 14.952736>,  <11.743084, 13.329075, 14.743824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006459, 13.112305, 14.952736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120881, -0.608780, -0.784075,
		0.742864, 0.579399, -0.335335,
		0.658438, -0.541926, 0.522279,
		12.203991, 12.949727, 15.109420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.298782, 13.125203, 14.268728>,  <11.743084, 13.329075, 14.743824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.298782, 13.125203, 14.268728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365042, 12.869553, 14.569149>,  <12.404798, 12.716163, 14.749401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365042, 12.869553, 14.569149>,  <12.298782, 13.125203, 14.268728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365042, 12.869553, 14.569149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077838, -0.750724, -0.656015,
		0.983108, 0.167128, -0.074607,
		0.165647, -0.639126, 0.751052,
		12.414736, 12.677814, 14.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.767153, 12.708747, 14.074670>,  <12.298782, 13.125203, 14.268728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.767153, 12.708747, 14.074670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640399, 12.476294, 14.374501>,  <12.564346, 12.336822, 14.554400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640399, 12.476294, 14.374501>,  <12.767153, 12.708747, 14.074670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640399, 12.476294, 14.374501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129960, -0.809458, -0.572616,
		0.939518, -0.084038, 0.332029,
		-0.316885, -0.581133, 0.749579,
		12.545334, 12.301953, 14.599375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.245694, 12.080913, 14.129270>,  <12.767153, 12.708747, 14.074670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.245694, 12.080913, 14.129270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.885667, 11.989519, 14.277686>,  <12.669650, 11.934683, 14.366735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.885667, 11.989519, 14.277686>,  <13.245694, 12.080913, 14.129270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.885667, 11.989519, 14.277686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024986, -0.823041, -0.567432,
		0.435031, -0.519999, 0.735084,
		-0.900069, -0.228483, 0.371041,
		12.615646, 11.920974, 14.388998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362147, 11.476915, 14.346583>,  <13.245694, 12.080913, 14.129270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.362147, 11.476915, 14.346583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.962607, 11.482862, 14.328344>,  <12.722883, 11.486430, 14.317401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.962607, 11.482862, 14.328344>,  <13.362147, 11.476915, 14.346583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962607, 11.482862, 14.328344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006995, -0.895409, -0.445189,
		-0.047447, -0.444995, 0.894275,
		-0.998849, 0.014867, -0.045597,
		12.662952, 11.487323, 14.314665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967543, 11.548782, 14.701328>,  <13.362147, 11.476915, 14.346583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967543, 11.548782, 14.701328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868997, 11.239298, 14.467859>,  <13.809869, 11.053607, 14.327778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868997, 11.239298, 14.467859>,  <13.967543, 11.548782, 14.701328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868997, 11.239298, 14.467859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969176, -0.197624, -0.147114,
		-0.001524, -0.601926, 0.798550,
		-0.246365, -0.773712, -0.583673,
		13.795087, 11.007184, 14.292757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662658, 11.461176, 15.374002>,  <13.967543, 11.548782, 14.701328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662658, 11.461176, 15.374002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964975, 11.222349, 15.481547>,  <14.146366, 11.079053, 15.546075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.964975, 11.222349, 15.481547>,  <13.662658, 11.461176, 15.374002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964975, 11.222349, 15.481547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442983, -0.163831, 0.881434,
		-0.482227, -0.785283, -0.388313,
		0.755793, -0.597067, 0.268863,
		14.191713, 11.043229, 15.562206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340466, 10.922791, 15.621778>,  <13.662658, 11.461176, 15.374002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340466, 10.922791, 15.621778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.701187, 10.892275, 15.791920>,  <13.917621, 10.873965, 15.894005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.701187, 10.892275, 15.791920>,  <13.340466, 10.922791, 15.621778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701187, 10.892275, 15.791920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430620, -0.076068, 0.899322,
		-0.036235, -0.994181, -0.101442,
		0.901806, -0.076270, 0.425358,
		13.971728, 10.869388, 15.919526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.180774, 10.490371, 16.120804>,  <13.340466, 10.922791, 15.621778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.180774, 10.490371, 16.120804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516411, 10.663671, 16.252390>,  <13.717793, 10.767652, 16.331341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516411, 10.663671, 16.252390>,  <13.180774, 10.490371, 16.120804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516411, 10.663671, 16.252390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392132, 0.062597, 0.917777,
		0.377038, -0.899096, 0.222417,
		0.839092, 0.433253, 0.328963,
		13.768139, 10.793647, 16.351078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275067, 10.267893, 16.783226>,  <13.180774, 10.490371, 16.120804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275067, 10.267893, 16.783226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526961, 10.578541, 16.776331>,  <13.678098, 10.764930, 16.772194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526961, 10.578541, 16.776331>,  <13.275067, 10.267893, 16.783226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526961, 10.578541, 16.776331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098213, 0.101611, 0.989964,
		0.770577, -0.621721, 0.140263,
		0.629734, 0.776619, -0.017238,
		13.715881, 10.811526, 16.771160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761127, 10.124586, 17.276968>,  <13.275067, 10.267893, 16.783226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761127, 10.124586, 17.276968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733164, 10.521401, 17.235065>,  <13.716387, 10.759491, 17.209925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733164, 10.521401, 17.235065>,  <13.761127, 10.124586, 17.276968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.733164, 10.521401, 17.235065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107736, 0.096889, 0.989447,
		0.991719, 0.080454, 0.100105,
		-0.069906, 0.992038, -0.104754,
		13.712193, 10.819013, 17.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.207904, 10.457456, 17.816708>,  <13.761127, 10.124586, 17.276968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.207904, 10.457456, 17.816708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.978432, 10.766368, 17.707548>,  <13.840749, 10.951715, 17.642052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.978432, 10.766368, 17.707548>,  <14.207904, 10.457456, 17.816708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.978432, 10.766368, 17.707548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105246, 0.260914, 0.959608,
		0.812290, 0.579229, -0.068401,
		-0.573680, 0.772281, -0.272899,
		13.806328, 10.998053, 17.625679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546125, 11.048260, 18.074131>,  <14.207904, 10.457456, 17.816708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546125, 11.048260, 18.074131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165318, 11.155455, 18.015009>,  <13.936834, 11.219771, 17.979536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165318, 11.155455, 18.015009>,  <14.546125, 11.048260, 18.074131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165318, 11.155455, 18.015009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010264, 0.454720, 0.890575,
		0.305871, 0.849361, -0.430150,
		-0.952018, 0.267986, -0.147804,
		13.879713, 11.235850, 17.970669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451426, 11.711742, 18.350708>,  <14.546125, 11.048260, 18.074131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451426, 11.711742, 18.350708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078809, 11.569432, 18.320637>,  <13.855239, 11.484046, 18.302593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078809, 11.569432, 18.320637>,  <14.451426, 11.711742, 18.350708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078809, 11.569432, 18.320637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289247, 0.599688, 0.746131,
		-0.220372, 0.716797, -0.661542,
		-0.931543, -0.355775, -0.075177,
		13.799346, 11.462700, 18.298084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078750, 12.178597, 18.549242>,  <14.451426, 11.711742, 18.350708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078750, 12.178597, 18.549242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830152, 11.873077, 18.618929>,  <13.680993, 11.689765, 18.660740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.830152, 11.873077, 18.618929>,  <14.078750, 12.178597, 18.549242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830152, 11.873077, 18.618929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303108, 0.439499, 0.845557,
		-0.722405, 0.472703, -0.504661,
		-0.621495, -0.763801, 0.174216,
		13.643703, 11.643937, 18.671194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474358, 12.469789, 18.726986>,  <14.078750, 12.178597, 18.549242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474358, 12.469789, 18.726986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431452, 12.099541, 18.872160>,  <13.405708, 11.877392, 18.959265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431452, 12.099541, 18.872160>,  <13.474358, 12.469789, 18.726986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431452, 12.099541, 18.872160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436313, 0.371838, 0.819370,
		-0.893378, -0.070464, -0.443745,
		-0.107266, -0.925620, 0.362936,
		13.399272, 11.821855, 18.981041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.759063, 12.564391, 19.102255>,  <13.474358, 12.469789, 18.726986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.759063, 12.564391, 19.102255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948834, 12.238803, 19.236340>,  <13.062697, 12.043450, 19.316792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948834, 12.238803, 19.236340>,  <12.759063, 12.564391, 19.102255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948834, 12.238803, 19.236340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346754, 0.177208, 0.921064,
		-0.809122, -0.553217, -0.198175,
		0.474430, -0.813971, 0.335213,
		13.091164, 11.994612, 19.336905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.298259, 12.359229, 19.666040>,  <12.759063, 12.564391, 19.102255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.298259, 12.359229, 19.666040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658044, 12.203272, 19.744986>,  <12.873915, 12.109697, 19.792353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658044, 12.203272, 19.744986>,  <12.298259, 12.359229, 19.666040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658044, 12.203272, 19.744986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065939, 0.325368, 0.943285,
		-0.431996, -0.861463, 0.266947,
		0.899462, -0.389894, 0.197362,
		12.927882, 12.086304, 19.804193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346990, 12.007402, 20.352880>,  <12.298259, 12.359229, 19.666040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346990, 12.007402, 20.352880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.741023, 12.048593, 20.297733>,  <12.977443, 12.073307, 20.264645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.741023, 12.048593, 20.297733>,  <12.346990, 12.007402, 20.352880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.741023, 12.048593, 20.297733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112039, 0.224299, 0.968058,
		0.130609, -0.969065, 0.209416,
		0.985083, 0.102974, -0.137868,
		13.036548, 12.079486, 20.256372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.668946, 11.707299, 20.912310>,  <12.346990, 12.007402, 20.352880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.668946, 11.707299, 20.912310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923916, 11.984806, 20.778217>,  <13.076898, 12.151310, 20.697762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923916, 11.984806, 20.778217>,  <12.668946, 11.707299, 20.912310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923916, 11.984806, 20.778217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250791, 0.224574, 0.941632,
		0.728556, -0.684292, -0.030842,
		0.637425, 0.693766, -0.335229,
		13.115143, 12.192936, 20.677649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125484, 11.640168, 21.341045>,  <12.668946, 11.707299, 20.912310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125484, 11.640168, 21.341045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225775, 11.989645, 21.174290>,  <13.285949, 12.199331, 21.074236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225775, 11.989645, 21.174290>,  <13.125484, 11.640168, 21.341045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225775, 11.989645, 21.174290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335323, 0.325603, 0.884048,
		0.908127, -0.361446, -0.211332,
		0.250725, 0.873693, -0.416891,
		13.300992, 12.251753, 21.049223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842499, 11.811041, 21.577690>,  <13.125484, 11.640168, 21.341045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842499, 11.811041, 21.577690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692437, 12.162673, 21.460064>,  <13.602400, 12.373652, 21.389488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692437, 12.162673, 21.460064>,  <13.842499, 11.811041, 21.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692437, 12.162673, 21.460064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390033, 0.437485, 0.810235,
		0.840912, 0.189269, -0.506995,
		-0.375155, 0.879081, -0.294065,
		13.579890, 12.426397, 21.371845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.382487, 12.351233, 21.702244>,  <13.842499, 11.811041, 21.577690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.382487, 12.351233, 21.702244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039444, 12.556360, 21.686617>,  <13.833618, 12.679437, 21.677240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039444, 12.556360, 21.686617>,  <14.382487, 12.351233, 21.702244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039444, 12.556360, 21.686617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247555, 0.478189, 0.842645,
		0.450805, 0.712988, -0.537050,
		-0.857608, 0.512818, -0.039066,
		13.782162, 12.710206, 21.674896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576826, 12.949934, 21.738375>,  <14.382487, 12.351233, 21.702244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576826, 12.949934, 21.738375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.191230, 12.996267, 21.834127>,  <13.959872, 13.024067, 21.891579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.191230, 12.996267, 21.834127>,  <14.576826, 12.949934, 21.738375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.191230, 12.996267, 21.834127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253831, 0.669235, 0.698351,
		-0.079310, 0.733967, -0.674539,
		-0.963992, 0.115833, 0.239380,
		13.902032, 13.031017, 21.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379423, 13.655601, 21.756651>,  <14.576826, 12.949934, 21.738375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379423, 13.655601, 21.756651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.103695, 13.479995, 21.987164>,  <13.938258, 13.374631, 22.125471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.103695, 13.479995, 21.987164>,  <14.379423, 13.655601, 21.756651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103695, 13.479995, 21.987164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240195, 0.611980, 0.753517,
		-0.683479, 0.657835, -0.316401,
		-0.689320, -0.439015, 0.576284,
		13.896899, 13.348290, 22.160049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040880, 14.258240, 22.183487>,  <14.379423, 13.655601, 21.756651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040880, 14.258240, 22.183487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.978902, 13.921976, 22.391058>,  <13.941714, 13.720218, 22.515600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.978902, 13.921976, 22.391058>,  <14.040880, 14.258240, 22.183487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.978902, 13.921976, 22.391058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143800, 0.500483, 0.853720,
		-0.977401, 0.206903, 0.043339,
		-0.154947, -0.840659, 0.518926,
		13.932418, 13.669779, 22.546736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667033, 14.495466, 22.721981>,  <14.040880, 14.258240, 22.183487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667033, 14.495466, 22.721981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.802407, 14.141843, 22.850918>,  <13.883632, 13.929669, 22.928280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.802407, 14.141843, 22.850918>,  <13.667033, 14.495466, 22.721981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.802407, 14.141843, 22.850918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256856, 0.416338, 0.872174,
		-0.905255, -0.212379, 0.367979,
		0.338435, -0.884058, 0.322341,
		13.903938, 13.876626, 22.947620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331797, 14.435986, 23.395618>,  <13.667033, 14.495466, 22.721981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331797, 14.435986, 23.395618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617776, 14.156533, 23.406672>,  <13.789364, 13.988862, 23.413303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617776, 14.156533, 23.406672>,  <13.331797, 14.435986, 23.395618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617776, 14.156533, 23.406672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287791, 0.330073, 0.899015,
		-0.637201, -0.634797, 0.437044,
		0.714949, -0.698631, 0.027634,
		13.832260, 13.946944, 23.414961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326956, 14.166500, 24.085733>,  <13.331797, 14.435986, 23.395618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326956, 14.166500, 24.085733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691830, 14.067389, 23.955179>,  <13.910754, 14.007923, 23.876846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691830, 14.067389, 23.955179>,  <13.326956, 14.166500, 24.085733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691830, 14.067389, 23.955179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404019, 0.410706, 0.817367,
		-0.068477, -0.877455, 0.474746,
		0.912184, -0.247777, -0.326384,
		13.965485, 13.993056, 23.857264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.574533, 13.825772, 24.571079>,  <13.326956, 14.166500, 24.085733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.574533, 13.825772, 24.571079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921179, 13.921536, 24.395962>,  <14.129167, 13.978995, 24.290892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921179, 13.921536, 24.395962>,  <13.574533, 13.825772, 24.571079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921179, 13.921536, 24.395962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304456, 0.441423, 0.844069,
		0.395324, -0.864772, 0.309657,
		0.866617, 0.239403, -0.437790,
		14.181163, 13.993360, 24.264624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155779, 13.504763, 25.000437>,  <13.574533, 13.825772, 24.571079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155779, 13.504763, 25.000437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.320826, 13.807774, 24.798090>,  <14.419853, 13.989580, 24.676682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.320826, 13.807774, 24.798090>,  <14.155779, 13.504763, 25.000437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320826, 13.807774, 24.798090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386607, 0.357210, 0.850256,
		0.824792, -0.546402, -0.145474,
		0.412617, 0.757526, -0.505867,
		14.444611, 14.035031, 24.646330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799455, 13.501966, 25.286606>,  <14.155779, 13.504763, 25.000437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799455, 13.501966, 25.286606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761359, 13.860885, 25.114195>,  <14.738502, 14.076236, 25.010748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.761359, 13.860885, 25.114195>,  <14.799455, 13.501966, 25.286606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761359, 13.860885, 25.114195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326344, 0.437212, 0.838060,
		0.940441, -0.060847, -0.334468,
		-0.095240, 0.897298, -0.431029,
		14.732787, 14.130074, 24.984886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315075, 13.974195, 25.720123>,  <14.799455, 13.501966, 25.286606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315075, 13.974195, 25.720123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065423, 14.208714, 25.513544>,  <14.915632, 14.349425, 25.389597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065423, 14.208714, 25.513544>,  <15.315075, 13.974195, 25.720123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065423, 14.208714, 25.513544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015484, 0.651580, 0.758422,
		0.781167, 0.481351, -0.397592,
		-0.624130, 0.586298, -0.516446,
		14.878184, 14.384603, 25.358610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561260, 14.706556, 25.873865>,  <15.315075, 13.974195, 25.720123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561260, 14.706556, 25.873865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181030, 14.744780, 25.755695>,  <14.952892, 14.767714, 25.684793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181030, 14.744780, 25.755695>,  <15.561260, 14.706556, 25.873865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181030, 14.744780, 25.755695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170168, 0.635512, 0.753105,
		0.259710, 0.766155, -0.587842,
		-0.950576, 0.095557, -0.295424,
		14.895858, 14.773447, 25.667068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
