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
	<0.506737, 2.038041, 1.467355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.860268, 1.852371, 1.490650>,  <1.072386, 1.740969, 1.504627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.860268, 1.852371, 1.490650>,  <0.506737, 2.038041, 1.467355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.860268, 1.852371, 1.490650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459918, -0.839379, 0.289687,
		-0.085581, -0.282818, -0.955348,
		0.883827, -0.464174, 0.058238,
		1.125416, 1.713119, 1.508121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.328852, 1.461731, 1.247784>,  <0.506737, 2.038041, 1.467355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.328852, 1.461731, 1.247784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.669342, 1.427261, 1.454855>,  <0.873636, 1.406580, 1.579098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.669342, 1.427261, 1.454855>,  <0.328852, 1.461731, 1.247784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669342, 1.427261, 1.454855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376005, -0.788291, 0.487050,
		0.366110, -0.609238, -0.703414,
		0.851225, -0.086173, 0.517678,
		0.924710, 1.401409, 1.610159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.578614, 0.759299, 1.203810>,  <0.328852, 1.461731, 1.247784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.578614, 0.759299, 1.203810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.712776, 0.920395, 1.544469>,  <0.793273, 1.017052, 1.748865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.712776, 0.920395, 1.544469>,  <0.578614, 0.759299, 1.203810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.712776, 0.920395, 1.544469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312875, -0.805082, 0.503937,
		0.888602, -0.435482, -0.144021,
		0.335405, 0.402739, 0.851648,
		0.813398, 1.041217, 1.799964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.932942, 0.300480, 1.674902>,  <0.578614, 0.759299, 1.203810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.932942, 0.300480, 1.674902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.825134, 0.576157, 1.943937>,  <0.760450, 0.741562, 2.105359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.825134, 0.576157, 1.943937>,  <0.932942, 0.300480, 1.674902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.825134, 0.576157, 1.943937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206275, -0.723540, 0.658742,
		0.940644, 0.038805, 0.337170,
		-0.269519, 0.689191, 0.672589,
		0.744279, 0.782914, 2.145714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.262721, 0.115130, 2.242574>,  <0.932942, 0.300480, 1.674902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.262721, 0.115130, 2.242574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.040565, 0.403702, 2.408024>,  <0.907272, 0.576845, 2.507293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.040565, 0.403702, 2.408024>,  <1.262721, 0.115130, 2.242574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.040565, 0.403702, 2.408024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264145, -0.318586, 0.910346,
		0.788524, 0.614853, -0.013623,
		-0.555389, 0.721428, 0.413623,
		0.873949, 0.620130, 2.532111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.704297, 0.497284, 2.670057>,  <1.262721, 0.115130, 2.242574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.704297, 0.497284, 2.670057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338333, 0.570671, 2.813879>,  <1.118755, 0.614703, 2.900172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338333, 0.570671, 2.813879>,  <1.704297, 0.497284, 2.670057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.338333, 0.570671, 2.813879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330577, -0.170608, 0.928230,
		0.231643, 0.968108, 0.095441,
		-0.914910, 0.183468, 0.359555,
		1.063860, 0.625711, 2.921746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.840960, 0.883816, 3.298552>,  <1.704297, 0.497284, 2.670057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.840960, 0.883816, 3.298552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490459, 0.691116, 3.294475>,  <1.280159, 0.575497, 3.292029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490459, 0.691116, 3.294475>,  <1.840960, 0.883816, 3.298552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490459, 0.691116, 3.294475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196327, -0.376254, 0.905477,
		-0.440047, 0.791424, 0.424273,
		-0.876251, -0.481748, -0.010192,
		1.227584, 0.546592, 3.291418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.410796, 1.095918, 3.952857>,  <1.840960, 0.883816, 3.298552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.410796, 1.095918, 3.952857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.349781, 0.744255, 3.772274>,  <1.313172, 0.533257, 3.663923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.349781, 0.744255, 3.772274>,  <1.410796, 1.095918, 3.952857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.349781, 0.744255, 3.772274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015166, -0.458833, 0.888393,
		-0.988181, 0.128665, 0.083322,
		-0.152536, -0.879157, -0.451459,
		1.304020, 0.480508, 3.636836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.119683, -0.142123, 4.545575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800041, -0.382599, 4.546112>,  <1.608256, -0.526884, 4.546434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.800041, -0.382599, 4.546112>,  <2.119683, -0.142123, 4.545575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.800041, -0.382599, 4.546112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395488, 0.523999, -0.754330,
		0.452792, -0.603320, -0.656494,
		-0.799104, -0.601190, 0.001343,
		1.560310, -0.562956, 4.546515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.950407, -0.396081, 3.839741>,  <2.119683, -0.142123, 4.545575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.950407, -0.396081, 3.839741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.615135, -0.385468, 4.057641>,  <1.413972, -0.379099, 4.188381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.615135, -0.385468, 4.057641>,  <1.950407, -0.396081, 3.839741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.615135, -0.385468, 4.057641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444831, 0.544657, -0.710967,
		-0.315567, -0.838239, -0.444717,
		-0.838178, 0.026534, 0.544750,
		1.363682, -0.377507, 4.221066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356259, -0.700656, 3.505049>,  <1.950407, -0.396081, 3.839741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356259, -0.700656, 3.505049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.253349, -0.403137, 3.751812>,  <1.191604, -0.224626, 3.899870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.253349, -0.403137, 3.751812>,  <1.356259, -0.700656, 3.505049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.253349, -0.403137, 3.751812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436040, 0.480357, -0.761004,
		-0.862369, -0.464783, 0.200742,
		-0.257274, 0.743798, 0.616908,
		1.176167, -0.179998, 3.936884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.707259, -0.529569, 3.355621>,  <1.356259, -0.700656, 3.505049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.707259, -0.529569, 3.355621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.856392, -0.199150, 3.524687>,  <0.945872, -0.000899, 3.626126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.856392, -0.199150, 3.524687>,  <0.707259, -0.529569, 3.355621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.856392, -0.199150, 3.524687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499066, 0.562526, -0.659164,
		-0.782259, 0.034820, 0.621979,
		0.372832, 0.826046, 0.422663,
		0.968241, 0.048664, 3.651486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.104526, -0.092195, 3.426445>,  <0.707259, -0.529569, 3.355621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.104526, -0.092195, 3.426445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.445435, 0.115257, 3.399159>,  <0.649980, 0.239729, 3.382788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.445435, 0.115257, 3.399159>,  <0.104526, -0.092195, 3.426445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.445435, 0.115257, 3.399159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335169, 0.441302, -0.832415,
		-0.401614, 0.732307, 0.549939,
		0.852272, 0.518632, -0.068213,
		0.701116, 0.270847, 3.378695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.181664, 0.610749, 3.282026>,  <0.104526, -0.092196, 3.426445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.181664, 0.610749, 3.282026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.204697, 0.647820, 3.185324>,  <0.436513, 0.670062, 3.127302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.204697, 0.647820, 3.185324>,  <-0.181664, 0.610749, 3.282026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.204697, 0.647820, 3.185324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257355, 0.445878, -0.857299,
		0.028342, 0.890283, 0.454525,
		0.965901, 0.092677, -0.241756,
		0.494467, 0.675623, 3.112797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.017335, 1.337043, 3.073509>,  <-0.181664, 0.610749, 3.282026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.017335, 1.337043, 3.073509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.268089, 1.114967, 2.902584>,  <0.439344, 0.981722, 2.800029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.268089, 1.114967, 2.902584>,  <-0.017335, 1.337043, 3.073509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.268089, 1.114967, 2.902584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054108, 0.564436, -0.823702,
		0.698501, 0.610882, 0.372720,
		0.713561, -0.555189, -0.427312,
		0.482158, 0.948411, 2.774390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.517220, 1.930971, 2.755697>,  <-0.017335, 1.337043, 3.073509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.517220, 1.930971, 2.755697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562828, 1.571983, 2.585264>,  <0.590193, 1.356591, 2.483004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562828, 1.571983, 2.585264>,  <0.517220, 1.930971, 2.755697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.562828, 1.571983, 2.585264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034146, 0.432167, -0.901147,
		0.992891, 0.088200, 0.079921,
		0.114021, -0.897470, -0.426083,
		0.597034, 1.302742, 2.457439>
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
