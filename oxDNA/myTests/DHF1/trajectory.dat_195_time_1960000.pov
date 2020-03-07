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
	<3.105373, 2.995873, 1.259629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.241428, 3.191406, 1.580963>,  <3.323061, 3.308726, 1.773764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.241428, 3.191406, 1.580963>,  <3.105373, 2.995873, 1.259629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.241428, 3.191406, 1.580963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887240, -0.116271, 0.446414,
		0.311627, -0.864594, 0.394164,
		0.340138, 0.488833, 0.803336,
		3.343470, 3.338056, 1.821964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.679621, 2.678061, 1.693664>,  <3.105373, 2.995873, 1.259629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.679621, 2.678061, 1.693664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.721210, 3.048187, 1.839531>,  <2.746164, 3.270263, 1.927051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.721210, 3.048187, 1.839531>,  <2.679621, 2.678061, 1.693664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.721210, 3.048187, 1.839531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914266, -0.055424, 0.401305,
		0.391545, -0.375127, 0.840222,
		0.103972, 0.925315, 0.364667,
		2.752402, 3.325782, 1.948931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.675917, 2.791899, 2.428195>,  <2.679621, 2.678061, 1.693664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.675917, 2.791899, 2.428195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513622, 3.090439, 2.217163>,  <2.416245, 3.269562, 2.090544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513622, 3.090439, 2.217163>,  <2.675917, 2.791899, 2.428195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.513622, 3.090439, 2.217163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913789, -0.343334, 0.217051,
		-0.019140, 0.570163, 0.821309,
		-0.405738, 0.746349, -0.527580,
		2.391901, 3.314343, 2.058889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.071421, 3.007024, 2.716527>,  <2.675917, 2.791899, 2.428195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.071421, 3.007024, 2.716527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.021358, 3.119888, 2.336060>,  <1.991321, 3.187607, 2.107779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.021358, 3.119888, 2.336060>,  <2.071421, 3.007024, 2.716527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.021358, 3.119888, 2.336060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923922, -0.382495, 0.008106,
		-0.361530, 0.879820, 0.308567,
		-0.125157, 0.282161, -0.951168,
		1.983811, 3.204537, 2.050709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.395590, 3.372418, 2.529838>,  <2.071421, 3.007024, 2.716527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.395590, 3.372418, 2.529838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.557964, 3.186188, 2.215271>,  <1.655389, 3.074449, 2.026531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.557964, 3.186188, 2.215271>,  <1.395590, 3.372418, 2.529838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.557964, 3.186188, 2.215271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862897, -0.478708, -0.162008,
		-0.301037, 0.744363, -0.596070,
		0.405937, -0.465577, -0.786418,
		1.679745, 3.046515, 1.979346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.903534, 3.370104, 1.908702>,  <1.395590, 3.372418, 2.529838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.903534, 3.370104, 1.908702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.160923, 3.073273, 1.833588>,  <1.315356, 2.895174, 1.788519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.160923, 3.073273, 1.833588>,  <0.903534, 3.370104, 1.908702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.160923, 3.073273, 1.833588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761853, -0.644681, -0.062984,
		-0.074324, 0.183594, -0.980188,
		0.643473, -0.742078, -0.187787,
		1.353965, 2.850649, 1.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.535882, 2.937159, 1.597618>,  <0.903534, 3.370104, 1.908702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.535882, 2.937159, 1.597618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.847454, 2.702057, 1.685081>,  <1.034397, 2.560996, 1.737559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.847454, 2.702057, 1.685081>,  <0.535882, 2.937159, 1.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.847454, 2.702057, 1.685081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568347, -0.809005, -0.149977,
		0.265045, -0.007452, -0.964207,
		0.778930, -0.587755, 0.218658,
		1.081133, 2.525730, 1.750679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.570023, 2.404553, 1.039445>,  <0.535882, 2.937159, 1.597618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.570023, 2.404553, 1.039445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.760166, 2.250168, 1.355690>,  <0.874252, 2.157537, 1.545437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.760166, 2.250168, 1.355690>,  <0.570023, 2.404553, 1.039445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.760166, 2.250168, 1.355690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595340, -0.802757, -0.033941,
		0.647769, -0.454549, -0.611376,
		0.475358, -0.385963, 0.790612,
		0.902774, 2.134379, 1.592874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.549633, 1.772751, 1.468918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.303349, 1.466370, 1.542908>,  <-0.155578, 1.282541, 1.587301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.303349, 1.466370, 1.542908>,  <-0.549633, 1.772751, 1.468918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.303349, 1.466370, 1.542908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601916, 0.608682, 0.516917,
		-0.508525, -0.206932, 0.835812,
		0.615711, -0.765954, 0.184974,
		-0.118635, 1.236584, 1.598400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.322083, 1.924427, 2.087765>,  <-0.549633, 1.772751, 1.468918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.322083, 1.924427, 2.087765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.071487, 1.666428, 1.912727>,  <0.078870, 1.511628, 1.807705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.071487, 1.666428, 1.912727>,  <-0.322083, 1.924427, 2.087765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.071487, 1.666428, 1.912727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776693, 0.469593, 0.419799,
		-0.065279, -0.602876, 0.795160,
		0.626488, -0.644999, -0.437595,
		0.116459, 1.472928, 1.781449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.259668, 1.831077, 2.529395>,  <-0.322083, 1.924427, 2.087765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.259668, 1.831077, 2.529395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.413960, 1.676865, 2.194115>,  <0.506534, 1.584337, 1.992947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.413960, 1.676865, 2.194115>,  <0.259668, 1.831077, 2.529395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.413960, 1.676865, 2.194115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881275, 0.422859, 0.211056,
		0.273072, -0.820096, 0.502867,
		0.385728, -0.385531, -0.838200,
		0.529678, 1.561205, 1.942655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.913459, 1.615711, 2.720467>,  <0.259668, 1.831077, 2.529395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.913459, 1.615711, 2.720467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.918283, 1.628754, 2.320709>,  <0.921178, 1.636579, 2.080854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.918283, 1.628754, 2.320709>,  <0.913459, 1.615711, 2.720467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.918283, 1.628754, 2.320709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805878, 0.591370, 0.029020,
		0.591959, -0.805741, -0.019141,
		0.012063, 0.032603, -0.999396,
		0.921902, 1.638535, 2.020890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.620475, 1.627166, 2.539114>,  <0.913459, 1.615711, 2.720467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.620475, 1.627166, 2.539114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.377851, 1.771362, 2.255669>,  <1.232278, 1.857880, 2.085601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.377851, 1.771362, 2.255669>,  <1.620475, 1.627166, 2.539114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.377851, 1.771362, 2.255669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648001, 0.740565, -0.177929,
		0.460632, -0.567106, -0.682795,
		-0.606559, 0.360492, -0.708613,
		1.195884, 1.879510, 2.043085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064345, 1.795649, 2.096997>,  <1.620475, 1.627166, 2.539114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064345, 1.795649, 2.096997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.755087, 2.000809, 1.947769>,  <1.569532, 2.123904, 1.858232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.755087, 2.000809, 1.947769>,  <2.064345, 1.795649, 2.096997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.755087, 2.000809, 1.947769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631213, 0.679556, -0.373862,
		0.061768, -0.524536, -0.849144,
		-0.773146, 0.512898, -0.373069,
		1.523143, 2.154678, 1.835848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.185823, 1.950666, 1.311957>,  <2.064345, 1.795649, 2.096997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.185823, 1.950666, 1.311957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.937965, 2.221313, 1.471069>,  <1.789251, 2.383702, 1.566537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.937965, 2.221313, 1.471069>,  <2.185823, 1.950666, 1.311957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.937965, 2.221313, 1.471069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619602, 0.732788, -0.281275,
		-0.481804, 0.072175, -0.873301,
		-0.619644, 0.676618, 0.397780,
		1.752072, 2.424299, 1.590403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.242214, 2.584289, 0.918140>,  <2.185823, 1.950666, 1.311957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.242214, 2.584289, 0.918140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.082355, 2.706116, 1.263977>,  <1.986440, 2.779212, 1.471479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.082355, 2.706116, 1.263977>,  <2.242214, 2.584289, 0.918140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.082355, 2.706116, 1.263977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508964, 0.858173, -0.067043,
		-0.762390, 0.413253, -0.497980,
		-0.399647, 0.304567, 0.864593,
		1.962461, 2.797486, 1.523355>
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
