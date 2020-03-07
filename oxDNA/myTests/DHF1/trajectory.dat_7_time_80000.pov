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
	<-0.602761, 0.495999, 1.788576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.896706, 0.679217, 1.988645>,  <-1.073073, 0.789149, 2.108685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.896706, 0.679217, 1.988645>,  <-0.602761, 0.495999, 1.788576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.896706, 0.679217, 1.988645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546214, -0.836866, -0.036125,
		0.402029, -0.299747, 0.865173,
		-0.734863, 0.458047, 0.500171,
		-1.117164, 0.816631, 2.138696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.768563, 0.879436, 1.171883>,  <-0.602761, 0.495999, 1.788576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.768563, 0.879436, 1.171883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.446213, 1.032626, 0.991264>,  <-0.252802, 1.124540, 0.882893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.446213, 1.032626, 0.991264>,  <-0.768563, 0.879436, 1.171883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.446213, 1.032626, 0.991264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395571, -0.915712, -0.070674,
		-0.440552, -0.121664, -0.889444,
		0.805877, 0.382974, -0.451546,
		-0.204450, 1.147518, 0.855801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.739844, 0.608910, 0.521801>,  <-0.768563, 0.879436, 1.171883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.739844, 0.608910, 0.521801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.395548, 0.702717, 0.702523>,  <-0.188970, 0.759001, 0.810956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.395548, 0.702717, 0.702523>,  <-0.739844, 0.608910, 0.521801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.395548, 0.702717, 0.702523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247344, -0.968417, 0.031452,
		0.444912, 0.084679, -0.891562,
		0.860741, 0.234516, 0.451805,
		-0.137326, 0.773072, 0.838065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.127214, 0.222585, 0.192023>,  <-0.739844, 0.608910, 0.521801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.127214, 0.222585, 0.192023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.081852, 0.319825, 0.577363>,  <-0.054635, 0.378169, 0.808567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.081852, 0.319825, 0.577363>,  <-0.127214, 0.222585, 0.192023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.081852, 0.319825, 0.577363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287464, -0.936162, 0.202398,
		0.951054, 0.253976, -0.176048,
		0.113405, 0.243099, 0.963350,
		-0.047830, 0.392755, 0.866368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.286929, -0.097961, -0.155441>,  <-0.127214, 0.222585, 0.192023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.286929, -0.097961, -0.155441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.457802, -0.397123, -0.358677>,  <0.560325, -0.576620, -0.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.457802, -0.397123, -0.358677>,  <0.286929, -0.097961, -0.155441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.457802, -0.397123, -0.358677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422309, 0.661922, -0.619285,
		0.799482, 0.049976, 0.598608,
		0.427181, -0.747905, -0.508090,
		0.585956, -0.621495, -0.511104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.060047, -0.090450, -0.107199>,  <0.286929, -0.097961, -0.155441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.060047, -0.090450, -0.107199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889471, -0.193958, -0.453883>,  <0.787126, -0.256063, -0.661894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889471, -0.193958, -0.453883>,  <1.060047, -0.090450, -0.107199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889471, -0.193958, -0.453883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368696, 0.825255, -0.427806,
		0.826012, -0.501954, -0.256410,
		-0.426342, -0.258836, -0.866739,
		0.761539, -0.271589, -0.713896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.533152, -0.091172, -0.779230>,  <1.060047, -0.090450, -0.107199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.533152, -0.091172, -0.779230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162529, 0.012070, -0.888682>,  <0.940155, 0.074015, -0.954354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162529, 0.012070, -0.888682>,  <1.533152, -0.091172, -0.779230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.162529, 0.012070, -0.888682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355881, 0.837101, -0.415464,
		0.121823, -0.482332, -0.867477,
		-0.926557, 0.258106, -0.273631,
		0.884562, 0.089501, -0.970772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.406511, 0.005729, -1.605509>,  <1.533152, -0.091172, -0.779230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.406511, 0.005729, -1.605509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.248165, 0.238005, -1.320949>,  <1.153158, 0.377370, -1.150212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.248165, 0.238005, -1.320949>,  <1.406511, 0.005729, -1.605509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.248165, 0.238005, -1.320949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477447, 0.791897, -0.380714,
		-0.784433, 0.188946, -0.590732,
		-0.395864, 0.580688, 0.711402,
		1.129406, 0.412211, -1.107528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.698577, 2.516806, 4.556466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.514081, 2.740882, 4.281237>,  <4.403383, 2.875328, 4.116099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.514081, 2.740882, 4.281237>,  <4.698577, 2.516806, 4.556466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.514081, 2.740882, 4.281237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830484, 0.000414, 0.557042,
		0.312334, 0.828364, 0.465038,
		-0.461241, 0.560190, -0.688072,
		4.375709, 2.908939, 4.074815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.529956, 3.077057, 4.953206>,  <4.698577, 2.516806, 4.556466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.529956, 3.077057, 4.953206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315454, 3.132801, 4.620217>,  <4.186752, 3.166247, 4.420424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315454, 3.132801, 4.620217>,  <4.529956, 3.077057, 4.953206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.315454, 3.132801, 4.620217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803329, 0.218396, 0.554044,
		0.259020, 0.965859, -0.005165,
		-0.536256, 0.139359, -0.832471,
		4.154577, 3.174609, 4.370475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.968078, 3.373329, 5.200299>,  <4.529956, 3.077057, 4.953206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.968078, 3.373329, 5.200299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.853210, 3.281534, 4.828306>,  <3.784290, 3.226457, 4.605110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.853210, 3.281534, 4.828306>,  <3.968078, 3.373329, 5.200299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.853210, 3.281534, 4.828306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953827, 0.157719, 0.255613,
		0.088016, 0.960448, -0.264184,
		-0.287170, -0.229488, -0.929983,
		3.767060, 3.212688, 4.549311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.538976, 3.958468, 4.768680>,  <3.968078, 3.373329, 5.200299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.538976, 3.958468, 4.768680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.451388, 3.585255, 4.654487>,  <3.398836, 3.361327, 4.585970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.451388, 3.585255, 4.654487>,  <3.538976, 3.958468, 4.768680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451388, 3.585255, 4.654487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961614, 0.156766, 0.225219,
		-0.165382, 0.323841, -0.931545,
		-0.218969, -0.933034, -0.285484,
		3.385698, 3.305345, 4.568841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.910195, 4.013229, 4.371698>,  <3.538976, 3.958468, 4.768680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.910195, 4.013229, 4.371698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.946668, 3.644258, 4.521798>,  <2.968551, 3.422875, 4.611857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.946668, 3.644258, 4.521798>,  <2.910195, 4.013229, 4.371698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.946668, 3.644258, 4.521798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945635, 0.037926, 0.323010,
		-0.312185, -0.384301, -0.868823,
		0.091182, -0.922429, 0.375248,
		2.974022, 3.367529, 4.634372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.332030, 3.500662, 4.074453>,  <2.910195, 4.013229, 4.371698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.332030, 3.500662, 4.074453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.465408, 3.419327, 4.442685>,  <2.545436, 3.370526, 4.663624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.465408, 3.419327, 4.442685>,  <2.332030, 3.500662, 4.074453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.465408, 3.419327, 4.442685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941610, -0.023433, 0.335889,
		-0.046731, -0.978826, -0.199290,
		0.333447, -0.203350, 0.920577,
		2.565443, 3.358326, 4.718859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.956451, 2.894398, 4.336612>,  <2.332030, 3.500662, 4.074453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.956451, 2.894398, 4.336612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.096075, 3.132077, 4.626463>,  <2.179850, 3.274684, 4.800374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.096075, 3.132077, 4.626463>,  <1.956451, 2.894398, 4.336612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.096075, 3.132077, 4.626463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881356, -0.054555, 0.469293,
		0.318385, -0.802467, 0.504657,
		0.349061, 0.594198, 0.724628,
		2.200793, 3.310336, 4.843852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.720302, 2.641931, 4.977483>,  <1.956451, 2.894398, 4.336612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.720302, 2.641931, 4.977483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823935, 3.020407, 5.055048>,  <1.886114, 3.247492, 5.101587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.823935, 3.020407, 5.055048>,  <1.720302, 2.641931, 4.977483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.823935, 3.020407, 5.055048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812950, 0.105220, 0.572749,
		0.521526, -0.306030, 0.796465,
		0.259082, 0.946189, 0.193912,
		1.901659, 3.304264, 5.113222>
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
