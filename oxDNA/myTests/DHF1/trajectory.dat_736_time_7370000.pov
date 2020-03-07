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
	<4.823228, 5.166019, 3.077264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.617664, 4.845013, 3.198500>,  <4.494326, 4.652409, 3.271241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.617664, 4.845013, 3.198500>,  <4.823228, 5.166019, 3.077264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.617664, 4.845013, 3.198500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220487, -0.465014, -0.857407,
		0.829025, -0.373802, 0.415920,
		-0.513909, -0.802517, 0.303090,
		4.463491, 4.604258, 3.289427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.233562, 4.466218, 3.054039>,  <4.823228, 5.166019, 3.077264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.233562, 4.466218, 3.054039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.837349, 4.436253, 3.008030>,  <4.599621, 4.418273, 2.980425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.837349, 4.436253, 3.008030>,  <5.233562, 4.466218, 3.054039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.837349, 4.436253, 3.008030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129809, -0.238802, -0.962353,
		0.044626, -0.968174, 0.246266,
		-0.990534, -0.074913, -0.115021,
		4.540189, 4.413779, 2.973524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.195832, 3.811619, 2.806183>,  <5.233562, 4.466218, 3.054039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.195832, 3.811619, 2.806183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.882622, 4.031998, 2.690718>,  <4.694695, 4.164225, 2.621439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.882622, 4.031998, 2.690718>,  <5.195832, 3.811619, 2.806183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.882622, 4.031998, 2.690718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038989, -0.419708, -0.906821,
		-0.620766, -0.721319, 0.307162,
		-0.783027, 0.550948, -0.288664,
		4.647714, 4.197282, 2.604119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.681861, 3.349042, 2.479825>,  <5.195832, 3.811619, 2.806183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.681861, 3.349042, 2.479825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679222, 3.708927, 2.305252>,  <4.677639, 3.924858, 2.200508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679222, 3.708927, 2.305252>,  <4.681861, 3.349042, 2.479825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.679222, 3.708927, 2.305252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157704, -0.430044, -0.888927,
		-0.987464, -0.074691, -0.139052,
		-0.006597, 0.899713, -0.436432,
		4.677243, 3.978841, 2.174322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.576918, 3.204564, 1.753211>,  <4.681861, 3.349042, 2.479825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.576918, 3.204564, 1.753211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.644360, 3.598301, 1.732655>,  <4.684824, 3.834543, 1.720321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.644360, 3.598301, 1.732655>,  <4.576918, 3.204564, 1.753211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.644360, 3.598301, 1.732655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075603, -0.064897, -0.995024,
		-0.982780, 0.163879, -0.085361,
		0.168603, 0.984343, -0.051390,
		4.694941, 3.893604, 1.717238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.100857, 3.379102, 1.285666>,  <4.576918, 3.204564, 1.753211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.100857, 3.379102, 1.285666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367195, 3.677055, 1.302637>,  <4.526998, 3.855827, 1.312820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.367195, 3.677055, 1.302637>,  <4.100857, 3.379102, 1.285666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.367195, 3.677055, 1.302637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001883, 0.055188, -0.998474,
		-0.746088, 0.664908, 0.035344,
		0.665844, 0.744884, 0.042427,
		4.566948, 3.900520, 1.315365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.829452, 3.888451, 0.813829>,  <4.100857, 3.379102, 1.285666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.829452, 3.888451, 0.813829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.221466, 3.961906, 0.844316>,  <4.456675, 4.005980, 0.862609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.221466, 3.961906, 0.844316>,  <3.829452, 3.888451, 0.813829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.221466, 3.961906, 0.844316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067346, 0.054084, -0.996263,
		-0.187075, 0.981505, 0.040637,
		0.980034, 0.183639, 0.076218,
		4.515476, 4.016998, 0.867182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985067, 4.399828, 0.341641>,  <3.829452, 3.888451, 0.813829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985067, 4.399828, 0.341641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340473, 4.225853, 0.400114>,  <4.553717, 4.121468, 0.435198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340473, 4.225853, 0.400114>,  <3.985067, 4.399828, 0.341641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.340473, 4.225853, 0.400114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155170, -0.015000, -0.987774,
		0.431813, 0.900335, 0.054161,
		0.888515, -0.434938, 0.146182,
		4.607028, 4.095372, 0.443969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.010022, 3.327273, -1.077814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.172760, 3.620991, -0.877014>,  <0.282429, 3.797222, -0.756534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.172760, 3.620991, -0.877014>,  <-0.010022, 3.327273, -1.077814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.172760, 3.620991, -0.877014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360084, -0.363345, 0.859255,
		0.813346, -0.573403, 0.098376,
		0.456955, 0.734295, 0.501999,
		0.309846, 3.841279, -0.726415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.063304, 3.062496, -0.409558>,  <-0.010022, 3.327273, -1.077814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.063304, 3.062496, -0.409558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.140373, 3.453766, -0.378441>,  <0.186614, 3.688528, -0.359771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.140373, 3.453766, -0.378441>,  <0.063304, 3.062496, -0.409558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.140373, 3.453766, -0.378441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296585, -0.017519, 0.954846,
		0.935369, -0.207044, 0.286737,
		0.192672, 0.978175, 0.077793,
		0.198175, 3.747218, -0.355103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.506655, 3.232469, 0.152151>,  <0.063304, 3.062496, -0.409558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.506655, 3.232469, 0.152151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.319092, 3.583736, 0.114315>,  <0.206554, 3.794497, 0.091614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.319092, 3.583736, 0.114315>,  <0.506655, 3.232469, 0.152151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.319092, 3.583736, 0.114315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151720, 0.025418, 0.988097,
		0.870119, 0.477677, 0.121317,
		-0.468907, 0.878168, -0.094590,
		0.178420, 3.847187, 0.085938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.877596, 3.743659, 0.516305>,  <0.506655, 3.232469, 0.152151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.877596, 3.743659, 0.516305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.485779, 3.819958, 0.490662>,  <0.250688, 3.865737, 0.475276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.485779, 3.819958, 0.490662>,  <0.877596, 3.743659, 0.516305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.485779, 3.819958, 0.490662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021827, 0.215985, 0.976153,
		0.200044, 0.957584, -0.207403,
		-0.979544, 0.190746, -0.064108,
		0.191916, 3.877182, 0.471429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801332, 4.145722, 1.017943>,  <0.877596, 3.743659, 0.516305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801332, 4.145722, 1.017943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.406441, 4.105103, 0.968845>,  <0.169506, 4.080730, 0.939387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.406441, 4.105103, 0.968845>,  <0.801332, 4.145722, 1.017943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.406441, 4.105103, 0.968845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150375, 0.339682, 0.928441,
		-0.052590, 0.935042, -0.350615,
		-0.987229, -0.101550, -0.122744,
		0.110272, 4.074637, 0.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.549402, 4.804849, 1.264985>,  <0.801332, 4.145722, 1.017943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.549402, 4.804849, 1.264985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.270332, 4.518299, 1.268047>,  <0.102891, 4.346369, 1.269885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.270332, 4.518299, 1.268047>,  <0.549402, 4.804849, 1.264985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.270332, 4.518299, 1.268047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308845, 0.310392, 0.899039,
		-0.646426, 0.624871, -0.437801,
		-0.697674, -0.716375, 0.007657,
		0.061030, 4.303387, 1.270344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.052513, 5.093603, 1.594375>,  <0.549402, 4.804849, 1.264985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.052513, 5.093603, 1.594375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.091934, 4.722424, 1.631264>,  <-0.178603, 4.499716, 1.653397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.091934, 4.722424, 1.631264>,  <0.052513, 5.093603, 1.594375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.091934, 4.722424, 1.631264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277221, 0.201253, 0.939492,
		-0.890360, 0.313702, -0.329923,
		-0.361119, -0.927948, 0.092223,
		-0.200270, 4.444039, 1.658931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.699022, 5.125036, 1.888157>,  <0.052513, 5.093603, 1.594375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.699022, 5.125036, 1.888157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.499817, 4.795803, 1.997349>,  <-0.380294, 4.598263, 2.062864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.499817, 4.795803, 1.997349>,  <-0.699022, 5.125036, 1.888157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.499817, 4.795803, 1.997349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430479, 0.038613, 0.901774,
		-0.752775, -0.566607, -0.335090,
		0.498013, -0.823083, 0.272980,
		-0.350413, 4.548878, 2.079243>
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
