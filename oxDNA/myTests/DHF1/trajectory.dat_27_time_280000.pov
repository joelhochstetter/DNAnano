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
	<2.205797, 2.545409, 2.888905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.557289, 2.572056, 2.699846>,  <2.768184, 2.588044, 2.586411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.557289, 2.572056, 2.699846>,  <2.205797, 2.545409, 2.888905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.557289, 2.572056, 2.699846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026558, -0.981856, -0.187761,
		-0.476578, 0.177544, -0.861018,
		0.878731, 0.066616, -0.472646,
		2.820908, 2.592041, 2.558052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.237948, 2.438911, 2.111537>,  <2.205797, 2.545409, 2.888905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.237948, 2.438911, 2.111537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517773, 2.325607, 2.373950>,  <2.685667, 2.257625, 2.531398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.517773, 2.325607, 2.373950>,  <2.237948, 2.438911, 2.111537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.517773, 2.325607, 2.373950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187133, -0.958657, -0.214377,
		0.689635, 0.027204, -0.723646,
		0.699560, -0.283260, 0.656033,
		2.727641, 2.240629, 2.570760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.637469, 2.034106, 1.808281>,  <2.237948, 2.438911, 2.111537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.637469, 2.034106, 1.808281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624779, 1.902409, 2.185765>,  <2.617165, 1.823390, 2.412256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624779, 1.902409, 2.185765>,  <2.637469, 2.034106, 1.808281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624779, 1.902409, 2.185765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125137, -0.935449, -0.330569,
		0.991632, -0.128581, -0.011524,
		-0.031724, -0.329245, 0.943711,
		2.615261, 1.803635, 2.468879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.121717, 1.495304, 1.920454>,  <2.637469, 2.034106, 1.808281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.121717, 1.495304, 1.920454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801865, 1.473152, 2.159626>,  <2.609953, 1.459861, 2.303129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801865, 1.473152, 2.159626>,  <3.121717, 1.495304, 1.920454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.801865, 1.473152, 2.159626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184108, -0.925174, -0.331900,
		0.571570, -0.375482, 0.729603,
		-0.799632, -0.055379, 0.597931,
		2.561975, 1.456539, 2.339005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.129251, 0.885913, 2.336759>,  <3.121717, 1.495304, 1.920454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.129251, 0.885913, 2.336759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.750372, 1.004723, 2.288436>,  <2.523045, 1.076009, 2.259442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.750372, 1.004723, 2.288436>,  <3.129251, 0.885913, 2.336759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.750372, 1.004723, 2.288436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241261, -0.908330, -0.341658,
		-0.211213, -0.294472, 0.932027,
		-0.947197, 0.297025, -0.120807,
		2.466213, 1.093830, 2.252194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703472, 0.338349, 2.575254>,  <3.129251, 0.885913, 2.336759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703472, 0.338349, 2.575254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536009, 0.568642, 2.294325>,  <2.435531, 0.706818, 2.125767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536009, 0.568642, 2.294325>,  <2.703472, 0.338349, 2.575254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536009, 0.568642, 2.294325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233536, -0.815606, -0.529385,
		-0.877603, -0.057613, 0.475914,
		-0.418658, 0.575733, -0.702323,
		2.410412, 0.741361, 2.083628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.010233, 0.087562, 2.425654>,  <2.703472, 0.338349, 2.575254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.010233, 0.087562, 2.425654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130072, 0.287220, 2.100423>,  <2.201975, 0.407015, 1.905284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130072, 0.287220, 2.100423>,  <2.010233, 0.087562, 2.425654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.130072, 0.287220, 2.100423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069501, -0.838542, -0.540385,
		-0.951531, 0.218406, -0.216533,
		0.299596, 0.499145, -0.813079,
		2.219950, 0.436963, 1.856499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.083155, -0.235240, 1.733958>,  <2.010233, 0.087562, 2.425654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.083155, -0.235240, 1.733958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.961847, -0.444260, 2.052698>,  <1.889063, -0.569672, 2.243942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.961847, -0.444260, 2.052698>,  <2.083155, -0.235240, 1.733958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.961847, -0.444260, 2.052698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799112, -0.316061, -0.511395,
		0.519083, -0.791863, -0.321725,
		-0.303270, -0.522550, 0.796849,
		1.870866, -0.601025, 2.291753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.169910, 5.752402, 4.977643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.563650, 5.812798, 4.941292>,  <4.799894, 5.849035, 4.919482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.563650, 5.812798, 4.941292>,  <4.169910, 5.752402, 4.977643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.563650, 5.812798, 4.941292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005062, -0.539696, -0.841845,
		-0.176156, 0.828210, -0.532013,
		0.984349, 0.150989, -0.090878,
		4.858955, 5.858094, 4.914029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.328973, 5.926734, 4.320024>,  <4.169910, 5.752402, 4.977643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.328973, 5.926734, 4.320024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.656853, 5.756310, 4.473158>,  <4.853580, 5.654055, 4.565039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.656853, 5.756310, 4.473158>,  <4.328973, 5.926734, 4.320024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.656853, 5.756310, 4.473158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002541, -0.671066, -0.741393,
		0.572789, 0.606746, -0.551155,
		0.819699, -0.426063, 0.382837,
		4.902762, 5.628490, 4.588009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.016901, 5.887724, 3.845634>,  <4.328973, 5.926734, 4.320024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.016901, 5.887724, 3.845634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.999868, 5.587589, 4.109507>,  <4.989649, 5.407508, 4.267831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.999868, 5.587589, 4.109507>,  <5.016901, 5.887724, 3.845634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.999868, 5.587589, 4.109507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001667, -0.660226, -0.751065,
		0.999092, -0.033080, 0.026862,
		-0.042581, -0.750338, 0.659682,
		4.987094, 5.362488, 4.307412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.471076, 5.421930, 3.685848>,  <5.016901, 5.887724, 3.845634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.471076, 5.421930, 3.685848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.179064, 5.223087, 3.873438>,  <5.003856, 5.103782, 3.985992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.179064, 5.223087, 3.873438>,  <5.471076, 5.421930, 3.685848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.179064, 5.223087, 3.873438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156396, -0.546494, -0.822730,
		0.665277, -0.673965, 0.321213,
		-0.730032, -0.497107, 0.468976,
		4.960054, 5.073956, 4.014131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.542952, 4.661504, 3.672688>,  <5.471076, 5.421930, 3.685848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.542952, 4.661504, 3.672688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.152887, 4.747501, 3.693992>,  <4.918849, 4.799100, 3.706774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.152887, 4.747501, 3.693992>,  <5.542952, 4.661504, 3.672688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.152887, 4.747501, 3.693992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174795, -0.599310, -0.781200,
		-0.136034, -0.771106, 0.622005,
		-0.975162, 0.214993, 0.053259,
		4.860339, 4.811999, 3.709969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.113532, 4.031233, 3.651238>,  <5.542952, 4.661504, 3.672688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.113532, 4.031233, 3.651238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.915937, 4.343597, 3.498318>,  <4.797380, 4.531016, 3.406565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.915937, 4.343597, 3.498318>,  <5.113532, 4.031233, 3.651238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.915937, 4.343597, 3.498318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249663, -0.548576, -0.797955,
		-0.832854, -0.298732, 0.465954,
		-0.493986, 0.780912, -0.382302,
		4.767741, 4.577871, 3.383627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.303091, 3.942140, 3.538879>,  <5.113532, 4.031233, 3.651238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.303091, 3.942140, 3.538879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.516994, 4.154915, 3.276253>,  <4.645337, 4.282579, 3.118678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.516994, 4.154915, 3.276253>,  <4.303091, 3.942140, 3.538879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.516994, 4.154915, 3.276253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237847, -0.650826, -0.721009,
		-0.810840, 0.541728, -0.221516,
		0.534759, 0.531936, -0.656564,
		4.677422, 4.314496, 3.079284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.871115, 4.228677, 2.971144>,  <4.303091, 3.942140, 3.538879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.871115, 4.228677, 2.971144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.243036, 4.135052, 2.857526>,  <4.466189, 4.078877, 2.789356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.243036, 4.135052, 2.857526>,  <3.871115, 4.228677, 2.971144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.243036, 4.135052, 2.857526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364820, -0.688230, -0.627093,
		-0.048709, 0.686698, -0.725309,
		0.929803, -0.234062, -0.284044,
		4.521977, 4.064833, 2.772313>
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
