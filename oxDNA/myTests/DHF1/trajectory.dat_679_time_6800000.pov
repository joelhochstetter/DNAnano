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
	<1.905428, 4.206221, 1.593247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.612563, 4.399445, 1.401167>,  <1.436844, 4.515379, 1.285919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.612563, 4.399445, 1.401167>,  <1.905428, 4.206221, 1.593247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.612563, 4.399445, 1.401167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611416, -0.776809, 0.150791,
		-0.300183, 0.404005, 0.864101,
		-0.732162, 0.483060, -0.480200,
		1.392915, 4.544363, 1.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.248036, 4.122544, 2.037344>,  <1.905428, 4.206221, 1.593247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.248036, 4.122544, 2.037344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.151784, 4.195438, 1.656002>,  <1.094033, 4.239175, 1.427197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.151784, 4.195438, 1.656002>,  <1.248036, 4.122544, 2.037344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.151784, 4.195438, 1.656002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643358, -0.765396, 0.016079,
		-0.726765, 0.617218, 0.301420,
		-0.240630, 0.182235, -0.953356,
		1.079595, 4.250109, 1.369995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.458362, 4.194262, 2.047068>,  <1.248036, 4.122544, 2.037344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.458362, 4.194262, 2.047068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.662035, 4.068308, 1.726673>,  <0.784239, 3.992736, 1.534436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.662035, 4.068308, 1.726673>,  <0.458362, 4.194262, 2.047068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.662035, 4.068308, 1.726673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543890, -0.839006, -0.015917,
		-0.667022, 0.443754, -0.598469,
		0.509182, -0.314884, -0.800988,
		0.814790, 3.973843, 1.486377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.008597, 3.787051, 1.655308>,  <0.458362, 4.194262, 2.047068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.008597, 3.787051, 1.655308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.353340, 3.661722, 1.495794>,  <0.560186, 3.586524, 1.400086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.353340, 3.661722, 1.495794>,  <0.008597, 3.787051, 1.655308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.353340, 3.661722, 1.495794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415571, -0.887029, -0.201201,
		-0.290693, 0.339130, -0.894700,
		0.861858, -0.313324, -0.398786,
		0.611897, 3.567725, 1.376159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.177094, 3.593722, 0.951493>,  <0.008597, 3.787051, 1.655308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.177094, 3.593722, 0.951493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.149740, 3.389439, 1.058485>,  <0.345841, 3.266869, 1.122680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.149740, 3.389439, 1.058485>,  <-0.177094, 3.593722, 0.951493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.149740, 3.389439, 1.058485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463321, -0.857804, -0.222500,
		0.343079, 0.057872, -0.937522,
		0.817087, -0.510709, 0.267481,
		0.394866, 3.236226, 1.138729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.056900, 3.095834, 0.387662>,  <-0.177094, 3.593722, 0.951493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.056900, 3.095834, 0.387662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.146772, 2.960739, 0.704311>,  <0.268976, 2.879683, 0.894301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.146772, 2.960739, 0.704311>,  <-0.056900, 3.095834, 0.387662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.146772, 2.960739, 0.704311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384760, -0.912083, -0.141646,
		0.769866, -0.232462, -0.594363,
		0.509182, -0.337736, 0.791624,
		0.299527, 2.859418, 0.941799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.290352, 2.512216, 0.167645>,  <-0.056900, 3.095834, 0.387662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.290352, 2.512216, 0.167645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.307756, 2.476370, 0.565655>,  <0.318199, 2.454862, 0.804461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.307756, 2.476370, 0.565655>,  <0.290352, 2.512216, 0.167645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.307756, 2.476370, 0.565655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302261, -0.950473, -0.072386,
		0.952232, -0.297608, -0.068443,
		0.043510, -0.089616, 0.995025,
		0.320810, 2.449485, 0.864162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.678742, 1.991550, 0.214613>,  <0.290352, 2.512216, 0.167645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.678742, 1.991550, 0.214613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.461111, 2.037432, 0.547075>,  <0.330532, 2.064960, 0.746553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.461111, 2.037432, 0.547075>,  <0.678742, 1.991550, 0.214613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.461111, 2.037432, 0.547075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407837, -0.901865, -0.142510,
		0.733245, -0.416513, 0.537466,
		-0.544079, 0.114703, 0.831157,
		0.297888, 2.071843, 0.796422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.862740, 1.146651, 0.147365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.703674, 1.070904, 0.506476>,  <-0.608235, 1.025456, 0.721942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.703674, 1.070904, 0.506476>,  <-0.862740, 1.146651, 0.147365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.703674, 1.070904, 0.506476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543687, 0.836820, -0.064311,
		-0.739099, 0.513684, 0.435730,
		0.397663, -0.189368, 0.897777,
		-0.584375, 1.014094, 0.775809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.925661, 1.720863, 0.610421>,  <-0.862740, 1.146651, 0.147365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.925661, 1.720863, 0.610421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.632133, 1.515851, 0.788780>,  <-0.456017, 1.392844, 0.895795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.632133, 1.515851, 0.788780>,  <-0.925661, 1.720863, 0.610421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.632133, 1.515851, 0.788780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460062, 0.857866, 0.228932,
		-0.499854, 0.037145, 0.865313,
		0.733818, -0.512530, 0.445897,
		-0.411988, 1.362092, 0.922549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.791925, 2.155675, 1.074209>,  <-0.925661, 1.720863, 0.610421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.791925, 2.155675, 1.074209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.462444, 1.929255, 1.087473>,  <-0.264756, 1.793402, 1.095431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.462444, 1.929255, 1.087473>,  <-0.791925, 2.155675, 1.074209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.462444, 1.929255, 1.087473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486574, 0.735654, 0.471230,
		-0.291136, -0.372018, 0.881387,
		0.823702, -0.566052, 0.033161,
		-0.215334, 1.759439, 1.097421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.389812, 2.121111, 1.840879>,  <-0.791925, 2.155675, 1.074209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.389812, 2.121111, 1.840879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.149158, 2.068553, 1.525723>,  <-0.004767, 2.037019, 1.336629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.149158, 2.068553, 1.525723>,  <-0.389812, 2.121111, 1.840879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.149158, 2.068553, 1.525723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634743, 0.677444, 0.371714,
		0.484911, -0.723744, 0.490974,
		0.601633, -0.131395, -0.787892,
		0.031331, 2.029135, 1.289355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.289491, 2.300045, 2.143588>,  <-0.389812, 2.121111, 1.840879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.289491, 2.300045, 2.143588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.299870, 2.345588, 1.746325>,  <0.306097, 2.372915, 1.507967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.299870, 2.345588, 1.746325>,  <0.289491, 2.300045, 2.143588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.299870, 2.345588, 1.746325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637305, 0.763536, 0.104184,
		0.770174, -0.635648, -0.052752,
		0.025946, 0.113859, -0.993158,
		0.307653, 2.379746, 1.448377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.958967, 2.399910, 1.981870>,  <0.289491, 2.300045, 2.143588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.958967, 2.399910, 1.981870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.783085, 2.532995, 1.648173>,  <0.677556, 2.612846, 1.447954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.783085, 2.532995, 1.648173>,  <0.958967, 2.399910, 1.981870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.783085, 2.532995, 1.648173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602726, 0.797948, 0.000559,
		0.665869, -0.502574, -0.551396,
		-0.439704, 0.332713, -0.834243,
		0.651174, 2.632809, 1.397900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.539791, 2.636181, 1.558946>,  <0.958967, 2.399910, 1.981870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.539791, 2.636181, 1.558946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.203869, 2.825300, 1.452221>,  <1.002316, 2.938771, 1.388186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.203869, 2.825300, 1.452221>,  <1.539791, 2.636181, 1.558946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.203869, 2.825300, 1.452221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495064, 0.868649, -0.018976,
		0.222795, -0.148026, -0.963561,
		-0.839806, 0.472797, -0.266813,
		0.951927, 2.967139, 1.372177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.720852, 3.050814, 0.932636>,  <1.539791, 2.636181, 1.558946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.720852, 3.050814, 0.932636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.387005, 3.212815, 1.081972>,  <1.186696, 3.310016, 1.171573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.387005, 3.212815, 1.081972>,  <1.720852, 3.050814, 0.932636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.387005, 3.212815, 1.081972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503739, 0.835406, 0.219874,
		-0.222840, 0.371577, -0.901262,
		-0.834619, 0.405004, 0.373340,
		1.136619, 3.334316, 1.193974>
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
