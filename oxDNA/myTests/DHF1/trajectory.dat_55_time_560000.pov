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
	<2.010595, 0.954870, 2.960211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.732885, 1.060852, 2.692545>,  <1.566260, 1.124441, 2.531945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.732885, 1.060852, 2.692545>,  <2.010595, 0.954870, 2.960211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.732885, 1.060852, 2.692545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020636, 0.922060, 0.386497,
		0.719415, 0.282144, -0.634694,
		-0.694274, 0.264954, -0.669166,
		1.524603, 1.140338, 2.491795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.704952, 0.966773, 3.353591>,  <2.010595, 0.954870, 2.960211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.704952, 0.966773, 3.353591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.597260, 0.588875, 3.428392>,  <2.532644, 0.362136, 3.473273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.597260, 0.588875, 3.428392>,  <2.704952, 0.966773, 3.353591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.597260, 0.588875, 3.428392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729529, 0.073299, -0.680011,
		0.628730, -0.319505, -0.708953,
		-0.269232, -0.944745, 0.187003,
		2.516490, 0.305451, 3.484493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.614876, 0.604058, 2.655081>,  <2.704952, 0.966773, 3.353591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.614876, 0.604058, 2.655081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.423850, 0.425655, 2.957870>,  <2.309235, 0.318614, 3.139544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.423850, 0.425655, 2.957870>,  <2.614876, 0.604058, 2.655081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.423850, 0.425655, 2.957870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805274, -0.122372, -0.580136,
		0.351378, -0.886624, -0.300718,
		-0.477564, -0.446007, 0.756975,
		2.280581, 0.291853, 3.184963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.506147, 1.310288, 2.292438>,  <2.614876, 0.604058, 2.655081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.506147, 1.310288, 2.292438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.627812, 1.654022, 2.127987>,  <2.700811, 1.860263, 2.029316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.627812, 1.654022, 2.127987>,  <2.506147, 1.310288, 2.292438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.627812, 1.654022, 2.127987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163462, 0.472256, 0.866173,
		0.938491, -0.196254, 0.284111,
		0.304163, 0.859337, -0.411128,
		2.719061, 1.911823, 2.004649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.748494, 1.793680, 2.848464>,  <2.506147, 1.310288, 2.292438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.748494, 1.793680, 2.848464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.675603, 2.049786, 2.549973>,  <2.631868, 2.203449, 2.370878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.675603, 2.049786, 2.549973>,  <2.748494, 1.793680, 2.848464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.675603, 2.049786, 2.549973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230220, 0.710055, 0.665447,
		0.955924, 0.293060, 0.018009,
		-0.182228, 0.640263, -0.746228,
		2.620934, 2.241865, 2.326104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.138892, 2.392477, 2.995310>,  <2.748494, 1.793680, 2.848464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.138892, 2.392477, 2.995310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867372, 2.513645, 2.727737>,  <2.704459, 2.586346, 2.567194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.867372, 2.513645, 2.727737>,  <3.138892, 2.392477, 2.995310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.867372, 2.513645, 2.727737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138665, 0.841684, 0.521862,
		0.721111, 0.446997, -0.529331,
		-0.678801, 0.302921, -0.668931,
		2.663731, 2.604522, 2.527058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.226596, 3.094481, 2.883850>,  <3.138892, 2.392477, 2.995310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.226596, 3.094481, 2.883850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.837922, 3.038265, 2.807873>,  <2.604718, 3.004536, 2.762287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.837922, 3.038265, 2.807873>,  <3.226596, 3.094481, 2.883850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.837922, 3.038265, 2.807873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234981, 0.659037, 0.714460,
		0.024769, 0.738863, -0.673400,
		-0.971684, -0.140539, -0.189942,
		2.546417, 2.996103, 2.750890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.811227, 3.682897, 2.908216>,  <3.226596, 3.094481, 2.883850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.811227, 3.682897, 2.908216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.569279, 3.383179, 3.016058>,  <2.424109, 3.203348, 3.080763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.569279, 3.383179, 3.016058>,  <2.811227, 3.682897, 2.908216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.569279, 3.383179, 3.016058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485521, 0.615368, 0.620961,
		-0.631190, 0.244703, -0.736017,
		-0.604872, -0.749295, 0.269605,
		2.387817, 3.158390, 3.096940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.748855, 3.898573, 3.950723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932266, 3.634018, 4.188148>,  <1.042313, 3.475285, 4.330604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932266, 3.634018, 4.188148>,  <0.748855, 3.898573, 3.950723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.932266, 3.634018, 4.188148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374895, -0.461615, -0.803969,
		0.805733, 0.591166, 0.036288,
		0.458528, -0.661388, 0.593564,
		1.069825, 3.435601, 4.366218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.500182, 3.998581, 3.870765>,  <0.748855, 3.898573, 3.950723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.500182, 3.998581, 3.870765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.370447, 3.632286, 3.965618>,  <1.292606, 3.412509, 4.022530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.370447, 3.632286, 3.965618>,  <1.500182, 3.998581, 3.870765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.370447, 3.632286, 3.965618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566145, -0.388746, -0.726881,
		0.757816, -0.101502, 0.644525,
		-0.324337, -0.915737, 0.237133,
		1.273146, 3.357565, 4.036758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.081003, 3.442983, 4.015097>,  <1.500182, 3.998581, 3.870765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.081003, 3.442983, 4.015097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.733711, 3.354141, 3.837627>,  <1.525336, 3.300836, 3.731146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.733711, 3.354141, 3.837627>,  <2.081003, 3.442983, 4.015097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.733711, 3.354141, 3.837627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477940, -0.134275, -0.868069,
		0.133228, -0.965733, 0.222735,
		-0.868231, -0.222106, -0.443673,
		1.473242, 3.287510, 3.704525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.161427, 2.673340, 3.691772>,  <2.081003, 3.442983, 4.015097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.161427, 2.673340, 3.691772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.942900, 2.940704, 3.489876>,  <1.811783, 3.101123, 3.368738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.942900, 2.940704, 3.489876>,  <2.161427, 2.673340, 3.691772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.942900, 2.940704, 3.489876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418168, -0.304476, -0.855821,
		-0.725721, -0.678618, -0.113167,
		-0.546319, 0.668410, -0.504741,
		1.779004, 3.141227, 3.338454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.598307, 2.460711, 3.225420>,  <2.161427, 2.673340, 3.691772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.598307, 2.460711, 3.225420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.752422, 2.798958, 3.077644>,  <1.844891, 3.001906, 2.988979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.752422, 2.798958, 3.077644>,  <1.598307, 2.460711, 3.225420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.752422, 2.798958, 3.077644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371995, -0.508703, -0.776429,
		-0.844496, 0.161718, -0.510562,
		0.385287, 0.845617, -0.369439,
		1.868008, 3.052643, 2.966813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.327134, 2.746780, 2.529248>,  <1.598307, 2.460711, 3.225420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.327134, 2.746780, 2.529248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712688, 2.831230, 2.594181>,  <1.944021, 2.881900, 2.633141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712688, 2.831230, 2.594181>,  <1.327134, 2.746780, 2.529248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.712688, 2.831230, 2.594181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255261, -0.558582, -0.789195,
		-0.075944, 0.802130, -0.592301,
		0.963885, 0.211126, 0.162331,
		2.001854, 2.894568, 2.642880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.603038, 3.069172, 1.917503>,  <1.327134, 2.746780, 2.529248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.603038, 3.069172, 1.917503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.914890, 2.913506, 2.113758>,  <2.102002, 2.820106, 2.231511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.914890, 2.913506, 2.113758>,  <1.603038, 3.069172, 1.917503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.914890, 2.913506, 2.113758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223538, -0.558914, -0.798527,
		0.584984, 0.732232, -0.348753,
		0.779631, -0.389166, 0.490638,
		2.148780, 2.796756, 2.260949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.177984, 3.129172, 1.397031>,  <1.603038, 3.069172, 1.917503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.177984, 3.129172, 1.397031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.257557, 2.843582, 1.665558>,  <2.305300, 2.672228, 1.826674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.257557, 2.843582, 1.665558>,  <2.177984, 3.129172, 1.397031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.257557, 2.843582, 1.665558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217294, -0.635823, -0.740617,
		0.955620, 0.293205, 0.028657,
		0.198931, -0.713975, 0.671316,
		2.317236, 2.629390, 1.866953>
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
