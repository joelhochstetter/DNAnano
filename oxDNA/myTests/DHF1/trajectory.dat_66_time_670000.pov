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
	<2.415710, 3.968247, 0.027964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.705326, 3.715614, -0.082939>,  <2.879096, 3.564035, -0.149481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.705326, 3.715614, -0.082939>,  <2.415710, 3.968247, 0.027964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.705326, 3.715614, -0.082939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672720, 0.557802, 0.486111,
		-0.152364, -0.538480, 0.828749,
		0.724039, -0.631582, -0.277257,
		2.922538, 3.526140, -0.166116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.810977, 3.732656, 0.684112>,  <2.415710, 3.968247, 0.027964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.810977, 3.732656, 0.684112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.029430, 3.685257, 0.352402>,  <3.160502, 3.656817, 0.153376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.029430, 3.685257, 0.352402>,  <2.810977, 3.732656, 0.684112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.029430, 3.685257, 0.352402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745187, 0.520938, 0.416316,
		0.382668, -0.845329, 0.372806,
		0.546133, -0.118499, -0.829275,
		3.193270, 3.649707, 0.103619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.456961, 3.540014, 0.881305>,  <2.810977, 3.732656, 0.684112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.456961, 3.540014, 0.881305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.488214, 3.678696, 0.507420>,  <3.506967, 3.761904, 0.283088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.488214, 3.678696, 0.507420>,  <3.456961, 3.540014, 0.881305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.488214, 3.678696, 0.507420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754912, 0.591807, 0.282617,
		0.651155, -0.727710, -0.215490,
		0.078135, 0.346704, -0.934715,
		3.511655, 3.782707, 0.227005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.134736, 3.372973, 0.505504>,  <3.456961, 3.540014, 0.881305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.134736, 3.372973, 0.505504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.946652, 3.720062, 0.441055>,  <3.833802, 3.928316, 0.402386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.946652, 3.720062, 0.441055>,  <4.134736, 3.372973, 0.505504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946652, 3.720062, 0.441055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762060, 0.491272, 0.421802,
		0.445162, 0.075550, -0.892257,
		-0.470208, 0.867723, -0.161122,
		3.805590, 3.980379, 0.392719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.555772, 3.880187, 0.156859>,  <4.134736, 3.372973, 0.505504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.555772, 3.880187, 0.156859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277819, 4.103657, 0.337975>,  <4.111046, 4.237739, 0.446644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277819, 4.103657, 0.337975>,  <4.555772, 3.880187, 0.156859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.277819, 4.103657, 0.337975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713441, 0.614564, 0.336620,
		-0.090207, 0.556950, -0.825633,
		-0.694884, 0.558675, 0.452789,
		4.069353, 4.271259, 0.473811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.761759, 4.572076, -0.022723>,  <4.555772, 3.880187, 0.156859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.761759, 4.572076, -0.022723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.538527, 4.606777, 0.307373>,  <4.404587, 4.627598, 0.505430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.538527, 4.606777, 0.307373>,  <4.761759, 4.572076, -0.022723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.538527, 4.606777, 0.307373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743690, 0.493425, 0.451061,
		-0.368063, 0.865451, -0.339889,
		-0.558081, 0.086753, 0.825239,
		4.371102, 4.632803, 0.554945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.788462, 5.294470, 0.194111>,  <4.761759, 4.572076, -0.022723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.788462, 5.294470, 0.194111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727098, 5.050594, 0.505173>,  <4.690280, 4.904269, 0.691809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727098, 5.050594, 0.505173>,  <4.788462, 5.294470, 0.194111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.727098, 5.050594, 0.505173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848993, 0.321372, 0.419442,
		-0.505645, 0.724568, 0.468321,
		-0.153409, -0.609690, 0.777653,
		4.681076, 4.867687, 0.738469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.691168, 5.674888, 0.865800>,  <4.788462, 5.294470, 0.194111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.691168, 5.674888, 0.865800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.844884, 5.306252, 0.887669>,  <4.937114, 5.085070, 0.900789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.844884, 5.306252, 0.887669>,  <4.691168, 5.674888, 0.865800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.844884, 5.306252, 0.887669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815209, 0.366532, 0.448429,
		-0.433307, -0.127759, 0.892145,
		0.384291, -0.921592, 0.054670,
		4.960171, 5.029774, 0.904070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.700140, 5.099241, 2.225633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.455622, 4.783077, 2.209782>,  <1.308911, 4.593379, 2.200271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.455622, 4.783077, 2.209782>,  <1.700140, 5.099241, 2.225633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.455622, 4.783077, 2.209782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623058, 0.511533, -0.591720,
		0.487975, -0.337023, -0.805169,
		-0.611293, -0.790412, -0.039630,
		1.272233, 4.545954, 2.197893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.249743, 5.241176, 1.775732>,  <1.700140, 5.099241, 2.225633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.249743, 5.241176, 1.775732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.047174, 4.914619, 1.886757>,  <0.925633, 4.718685, 1.953372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.047174, 4.914619, 1.886757>,  <1.249743, 5.241176, 1.775732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.047174, 4.914619, 1.886757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792549, 0.313878, -0.522826,
		0.339712, -0.484750, -0.805986,
		-0.506422, -0.816393, 0.277560,
		0.895248, 4.669702, 1.970026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.742246, 4.941193, 1.224497>,  <1.249743, 5.241176, 1.775732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.742246, 4.941193, 1.224497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.633636, 4.757092, 1.562595>,  <0.568471, 4.646631, 1.765455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.633636, 4.757092, 1.562595>,  <0.742246, 4.941193, 1.224497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.633636, 4.757092, 1.562595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910826, -0.160836, -0.380168,
		0.310920, -0.873097, -0.375541,
		-0.271523, -0.460254, 0.845246,
		0.552179, 4.619015, 1.816169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.556557, 4.275082, 1.082407>,  <0.742246, 4.941193, 1.224497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.556557, 4.275082, 1.082407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379820, 4.468773, 1.384480>,  <0.273777, 4.584988, 1.565723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379820, 4.468773, 1.384480>,  <0.556557, 4.275082, 1.082407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.379820, 4.468773, 1.384480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867393, -0.015789, -0.497373,
		-0.228918, -0.874800, 0.426992,
		-0.441844, 0.484228, 0.755181,
		0.247267, 4.614041, 1.611034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.015591, 3.949667, 1.383047>,  <0.556557, 4.275082, 1.082407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.015591, 3.949667, 1.383047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.056225, 4.343166, 1.382366>,  <-0.099314, 4.579266, 1.381958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.056225, 4.343166, 1.382366>,  <0.015591, 3.949667, 1.383047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.056225, 4.343166, 1.382366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944373, -0.172838, -0.279797,
		-0.275544, -0.048627, 0.960058,
		-0.179540, 0.983749, -0.001702,
		-0.110087, 4.638291, 1.381856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.686653, 4.115193, 1.737571>,  <0.015591, 3.949667, 1.383047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.686653, 4.115193, 1.737571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.595678, 4.373470, 1.445995>,  <-0.541093, 4.528436, 1.271050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.595678, 4.373470, 1.445995>,  <-0.686653, 4.115193, 1.737571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.595678, 4.373470, 1.445995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885078, -0.175094, -0.431252,
		-0.406089, 0.743252, 0.531665,
		0.227438, 0.645692, -0.728940,
		-0.527447, 4.567178, 1.227313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.217118, 4.490727, 1.700191>,  <-0.686653, 4.115193, 1.737571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.217118, 4.490727, 1.700191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.048687, 4.536343, 1.340260>,  <-0.947629, 4.563712, 1.124301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.048687, 4.536343, 1.340260>,  <-1.217118, 4.490727, 1.700191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.048687, 4.536343, 1.340260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897372, -0.091969, -0.431584,
		-0.131973, 0.989210, 0.063610,
		0.421077, 0.114039, -0.899827,
		-0.922364, 4.570554, 1.070311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.758856, 4.876466, 1.253539>,  <-1.217118, 4.490727, 1.700191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.758856, 4.876466, 1.253539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.498932, 4.693233, 1.010918>,  <-1.342978, 4.583294, 0.865345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.498932, 4.693233, 1.010918>,  <-1.758856, 4.876466, 1.253539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.498932, 4.693233, 1.010918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759752, -0.367410, -0.536458,
		0.022887, 0.809426, -0.586775,
		0.649810, -0.458082, -0.606554,
		-1.303989, 4.555809, 0.828951>
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
