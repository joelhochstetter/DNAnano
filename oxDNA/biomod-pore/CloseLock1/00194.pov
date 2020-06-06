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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.972639, 34.481354, 34.940948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319227, 34.680260, 34.923244>,  <24.527180, 34.799603, 34.912621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319227, 34.680260, 34.923244>,  <23.972639, 34.481354, 34.940948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319227, 34.680260, 34.923244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375872, -0.591449, 0.713378,
		0.328560, -0.634757, -0.699380,
		0.866469, 0.497265, -0.044261,
		24.579168, 34.829441, 34.909966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578352, 33.988663, 34.842548>,  <23.972639, 34.481354, 34.940948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578352, 33.988663, 34.842548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705641, 34.322807, 35.021843>,  <24.782015, 34.523293, 35.129417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705641, 34.322807, 35.021843>,  <24.578352, 33.988663, 34.842548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705641, 34.322807, 35.021843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326815, -0.540494, 0.775280,
		0.889903, -0.100223, -0.445004,
		0.318223, 0.835357, 0.448232,
		24.801107, 34.573414, 35.156311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223162, 33.851440, 35.033329>,  <24.578352, 33.988663, 34.842548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223162, 33.851440, 35.033329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055946, 34.117702, 35.280602>,  <24.955616, 34.277458, 35.428967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055946, 34.117702, 35.280602>,  <25.223162, 33.851440, 35.033329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055946, 34.117702, 35.280602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393500, -0.480655, 0.783663,
		0.818780, 0.570858, -0.061001,
		-0.418040, 0.665652, 0.618183,
		24.930534, 34.317398, 35.466057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573053, 33.695332, 35.749760>,  <25.223162, 33.851440, 35.033329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573053, 33.695332, 35.749760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404522, 33.506241, 36.059341>,  <25.303404, 33.392788, 36.245090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404522, 33.506241, 36.059341>,  <25.573053, 33.695332, 35.749760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404522, 33.506241, 36.059341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111096, 0.820072, 0.561373,
		-0.900078, 0.322506, -0.293002,
		-0.421329, -0.472728, 0.773957,
		25.278124, 33.364422, 36.291527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239401, 34.188759, 36.027699>,  <25.573053, 33.695332, 35.749760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239401, 34.188759, 36.027699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207401, 33.902695, 36.305447>,  <25.188202, 33.731056, 36.472095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207401, 33.902695, 36.305447>,  <25.239401, 34.188759, 36.027699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207401, 33.902695, 36.305447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130855, 0.683038, 0.718566,
		-0.988169, 0.148345, 0.038941,
		-0.079998, -0.715160, 0.694368,
		25.183401, 33.688148, 36.513756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726959, 34.422997, 36.479786>,  <25.239401, 34.188759, 36.027699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726959, 34.422997, 36.479786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011740, 34.194263, 36.642822>,  <25.182608, 34.057022, 36.740646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011740, 34.194263, 36.642822>,  <24.726959, 34.422997, 36.479786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011740, 34.194263, 36.642822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144523, 0.687316, 0.711836,
		-0.687198, -0.447884, 0.571977,
		0.711949, -0.571836, 0.407593,
		25.225325, 34.022713, 36.765099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661577, 34.737823, 37.185123>,  <24.726959, 34.422997, 36.479786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661577, 34.737823, 37.185123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995522, 34.528530, 37.116734>,  <25.195889, 34.402954, 37.075699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995522, 34.528530, 37.116734>,  <24.661577, 34.737823, 37.185123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995522, 34.528530, 37.116734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452599, 0.475695, 0.754234,
		-0.313309, -0.707064, 0.633955,
		0.834860, -0.523236, -0.170977,
		25.245979, 34.371559, 37.065441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792683, 34.409088, 37.841732>,  <24.661577, 34.737823, 37.185123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792683, 34.409088, 37.841732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116751, 34.457623, 37.612331>,  <25.311192, 34.486744, 37.474689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116751, 34.457623, 37.612331>,  <24.792683, 34.409088, 37.841732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116751, 34.457623, 37.612331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490690, 0.394865, 0.776727,
		0.320699, -0.910692, 0.260370,
		0.810170, 0.121334, -0.573500,
		25.359802, 34.494022, 37.440281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325047, 34.259926, 38.309021>,  <24.792683, 34.409088, 37.841732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325047, 34.259926, 38.309021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517145, 34.457790, 38.019283>,  <25.632404, 34.576508, 37.845440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517145, 34.457790, 38.019283>,  <25.325047, 34.259926, 38.309021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517145, 34.457790, 38.019283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478917, 0.543972, 0.689008,
		0.734848, -0.677795, 0.024340,
		0.480246, 0.494660, -0.724345,
		25.661219, 34.606190, 37.801979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074162, 34.303585, 38.400902>,  <25.325047, 34.259926, 38.309021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074162, 34.303585, 38.400902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008224, 34.624489, 38.171398>,  <25.968662, 34.817032, 38.033695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008224, 34.624489, 38.171398>,  <26.074162, 34.303585, 38.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008224, 34.624489, 38.171398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597731, 0.543984, 0.588897,
		0.784566, -0.245877, -0.569211,
		-0.164845, 0.802263, -0.573759,
		25.958771, 34.865170, 37.999271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787300, 34.737560, 38.293457>,  <26.074162, 34.303585, 38.400902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787300, 34.737560, 38.293457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497009, 34.992119, 38.188900>,  <26.322836, 35.144852, 38.126167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497009, 34.992119, 38.188900>,  <26.787300, 34.737560, 38.293457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497009, 34.992119, 38.188900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511002, 0.753008, 0.414556,
		0.460652, 0.167281, -0.871675,
		-0.725725, 0.636394, -0.261393,
		26.279291, 35.183037, 38.110481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185209, 35.333450, 38.195652>,  <26.787300, 34.737560, 38.293457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185209, 35.333450, 38.195652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809006, 35.469254, 38.201023>,  <26.583284, 35.550735, 38.204247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809006, 35.469254, 38.201023>,  <27.185209, 35.333450, 38.195652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809006, 35.469254, 38.201023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310908, 0.843993, 0.437049,
		0.137052, 0.415221, -0.899338,
		-0.940507, 0.339510, 0.013424,
		26.526854, 35.571106, 38.205051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306288, 35.908566, 37.875187>,  <27.185209, 35.333450, 38.195652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306288, 35.908566, 37.875187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969879, 35.929638, 38.090557>,  <26.768034, 35.942280, 38.219780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969879, 35.929638, 38.090557>,  <27.306288, 35.908566, 37.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969879, 35.929638, 38.090557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273034, 0.900531, 0.338373,
		-0.467045, 0.431589, -0.771751,
		-0.841024, 0.052679, 0.538427,
		26.717571, 35.945442, 38.252087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122631, 36.605980, 37.716309>,  <27.306288, 35.908566, 37.875187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122631, 36.605980, 37.716309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937838, 36.476143, 38.046452>,  <26.826962, 36.398239, 38.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937838, 36.476143, 38.046452>,  <27.122631, 36.605980, 37.716309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937838, 36.476143, 38.046452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281444, 0.828861, 0.483507,
		-0.841047, 0.455664, -0.291565,
		-0.461983, -0.324593, 0.825355,
		26.799242, 36.378765, 38.294060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754808, 37.188927, 37.927673>,  <27.122631, 36.605980, 37.716309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754808, 37.188927, 37.927673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770720, 36.956421, 38.252769>,  <26.780266, 36.816917, 38.447826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770720, 36.956421, 38.252769>,  <26.754808, 37.188927, 37.927673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770720, 36.956421, 38.252769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088162, 0.808171, 0.582312,
		-0.995312, -0.094816, -0.019099,
		0.039778, -0.581266, 0.812741,
		26.782652, 36.782040, 38.496593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202805, 37.449253, 38.380154>,  <26.754808, 37.188927, 37.927673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202805, 37.449253, 38.380154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469309, 37.244694, 38.597252>,  <26.629211, 37.121960, 38.727512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469309, 37.244694, 38.597252>,  <26.202805, 37.449253, 38.380154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469309, 37.244694, 38.597252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020203, 0.739926, 0.672385,
		-0.745445, -0.437019, 0.503316,
		0.666261, -0.511394, 0.542745,
		26.669188, 37.091274, 38.760075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976692, 37.414402, 39.046928>,  <26.202805, 37.449253, 38.380154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976692, 37.414402, 39.046928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371145, 37.353130, 39.072475>,  <26.607817, 37.316368, 39.087803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371145, 37.353130, 39.072475>,  <25.976692, 37.414402, 39.046928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371145, 37.353130, 39.072475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080372, 0.777505, 0.623720,
		-0.145197, -0.609937, 0.779034,
		0.986133, -0.153175, 0.063870,
		26.666985, 37.307178, 39.091637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016312, 37.562309, 39.713348>,  <25.976692, 37.414402, 39.046928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016312, 37.562309, 39.713348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389751, 37.571556, 39.570316>,  <26.613815, 37.577103, 39.484497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389751, 37.571556, 39.570316>,  <26.016312, 37.562309, 39.713348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389751, 37.571556, 39.570316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245050, 0.686894, 0.684198,
		0.261432, -0.726390, 0.635619,
		0.933597, 0.023113, -0.357578,
		26.669830, 37.578491, 39.463043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422194, 37.742470, 40.265495>,  <26.016312, 37.562309, 39.713348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422194, 37.742470, 40.265495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663988, 37.822258, 39.957001>,  <26.809065, 37.870132, 39.771904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663988, 37.822258, 39.957001>,  <26.422194, 37.742470, 40.265495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663988, 37.822258, 39.957001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373138, 0.784469, 0.495356,
		0.703820, -0.587214, 0.399771,
		0.604488, 0.199471, -0.771236,
		26.845335, 37.882099, 39.725628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053270, 37.908615, 40.647972>,  <26.422194, 37.742470, 40.265495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053270, 37.908615, 40.647972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094624, 38.057354, 40.278965>,  <27.119436, 38.146599, 40.057560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094624, 38.057354, 40.278965>,  <27.053270, 37.908615, 40.647972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094624, 38.057354, 40.278965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271451, 0.881731, 0.385830,
		0.956883, -0.290308, -0.009781,
		0.103385, 0.371849, -0.922518,
		27.125639, 38.168907, 40.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705807, 38.204018, 40.654697>,  <27.053270, 37.908615, 40.647972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705807, 38.204018, 40.654697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500736, 38.341961, 40.340187>,  <27.377693, 38.424728, 40.151482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500736, 38.341961, 40.340187>,  <27.705807, 38.204018, 40.654697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500736, 38.341961, 40.340187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363240, 0.916913, 0.165311,
		0.777957, -0.200856, -0.595348,
		-0.512679, 0.344859, -0.786278,
		27.346933, 38.445419, 40.104305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060459, 38.588554, 40.311703>,  <27.705807, 38.204018, 40.654697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060459, 38.588554, 40.311703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716095, 38.724945, 40.160671>,  <27.509476, 38.806782, 40.070053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716095, 38.724945, 40.160671>,  <28.060459, 38.588554, 40.311703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716095, 38.724945, 40.160671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239521, 0.926414, 0.290493,
		0.448846, 0.159650, -0.879232,
		-0.860911, 0.340981, -0.377578,
		27.457821, 38.827240, 40.047398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191404, 39.258026, 39.916523>,  <28.060459, 38.588554, 40.311703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191404, 39.258026, 39.916523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807484, 39.258698, 40.028793>,  <27.577131, 39.259102, 40.096157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807484, 39.258698, 40.028793>,  <28.191404, 39.258026, 39.916523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807484, 39.258698, 40.028793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071783, 0.968200, 0.239659,
		-0.271351, 0.250172, -0.929399,
		-0.959800, 0.001683, 0.280680,
		27.519545, 39.259201, 40.112999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862413, 39.730789, 39.516098>,  <28.191404, 39.258026, 39.916523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862413, 39.730789, 39.516098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661236, 39.683353, 39.858555>,  <27.540529, 39.654892, 40.064030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661236, 39.683353, 39.858555>,  <27.862413, 39.730789, 39.516098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661236, 39.683353, 39.858555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180376, 0.954332, 0.238148,
		-0.845288, 0.274203, -0.458585,
		-0.502943, -0.118586, 0.856146,
		27.510353, 39.647778, 40.115398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429312, 40.362423, 39.504654>,  <27.862413, 39.730789, 39.516098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429312, 40.362423, 39.504654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434830, 40.215420, 39.876621>,  <27.438141, 40.127220, 40.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434830, 40.215420, 39.876621>,  <27.429312, 40.362423, 39.504654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434830, 40.215420, 39.876621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085236, 0.926191, 0.367295,
		-0.996265, -0.084329, -0.018549,
		0.013794, -0.367504, 0.929919,
		27.438969, 40.105167, 40.155598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586782, 41.045322, 39.240475>,  <27.429312, 40.362423, 39.504654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586782, 41.045322, 39.240475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578203, 41.173012, 38.861500>,  <27.573055, 41.249626, 38.634113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578203, 41.173012, 38.861500>,  <27.586782, 41.045322, 39.240475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578203, 41.173012, 38.861500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997135, 0.075595, 0.002896,
		0.072546, -0.944660, -0.319928,
		-0.021449, 0.319221, -0.947438,
		27.571768, 41.268780, 38.577267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116152, 40.646152, 38.775360>,  <27.586782, 41.045322, 39.240475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116152, 40.646152, 38.775360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022179, 40.995556, 38.604813>,  <27.965796, 41.205196, 38.502483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022179, 40.995556, 38.604813>,  <28.116152, 40.646152, 38.775360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022179, 40.995556, 38.604813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960090, 0.140044, -0.242105,
		-0.151770, -0.466234, -0.871546,
		-0.234932, 0.873507, -0.426372,
		27.951698, 41.257607, 38.476902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346552, 40.760967, 38.007271>,  <28.116152, 40.646152, 38.775360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346552, 40.760967, 38.007271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366926, 41.057457, 38.274998>,  <28.379150, 41.235352, 38.435635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366926, 41.057457, 38.274998>,  <28.346552, 40.760967, 38.007271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366926, 41.057457, 38.274998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998446, -0.022617, -0.050936,
		-0.022617, 0.670876, -0.741224,
		0.050936, 0.741224, 0.669322,
		28.382208, 41.279823, 38.475796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917137, 40.963760, 37.805939>,  <28.346552, 40.760967, 38.007271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917137, 40.963760, 37.805939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867542, 41.353554, 37.880779>,  <28.837786, 41.587429, 37.925682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867542, 41.353554, 37.880779>,  <28.917137, 40.963760, 37.805939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867542, 41.353554, 37.880779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736660, 0.216723, -0.640595,
		-0.664800, 0.058406, -0.744735,
		-0.123986, 0.974484, 0.187103,
		28.830347, 41.645901, 37.936909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845722, 41.338043, 37.157131>,  <28.917137, 40.963760, 37.805939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845722, 41.338043, 37.157131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008827, 41.512630, 37.477936>,  <29.106689, 41.617382, 37.670418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008827, 41.512630, 37.477936>,  <28.845722, 41.338043, 37.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008827, 41.512630, 37.477936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775100, 0.298830, -0.556704,
		-0.482648, 0.848645, -0.216453,
		0.407762, 0.436465, 0.802015,
		29.131155, 41.643570, 37.718540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002075, 42.083359, 37.075104>,  <28.845722, 41.338043, 37.157131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002075, 42.083359, 37.075104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262802, 41.893398, 37.311615>,  <29.419237, 41.779423, 37.453522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262802, 41.893398, 37.311615>,  <29.002075, 42.083359, 37.075104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262802, 41.893398, 37.311615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750667, 0.293125, -0.592095,
		0.107868, 0.829788, 0.547555,
		0.651816, -0.474900, 0.591275,
		29.458347, 41.750927, 37.488998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528206, 42.521767, 37.352646>,  <29.002075, 42.083359, 37.075104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528206, 42.521767, 37.352646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668543, 42.147228, 37.357868>,  <29.752745, 41.922504, 37.361000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668543, 42.147228, 37.357868>,  <29.528206, 42.521767, 37.352646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668543, 42.147228, 37.357868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766913, 0.279302, -0.577784,
		0.537357, 0.212726, 0.816085,
		0.350844, -0.936343, 0.013057,
		29.773796, 41.866325, 37.361786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166605, 42.664711, 37.456886>,  <29.528206, 42.521767, 37.352646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166605, 42.664711, 37.456886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106335, 42.319923, 37.263268>,  <30.070173, 42.113052, 37.147095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106335, 42.319923, 37.263268>,  <30.166605, 42.664711, 37.456886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106335, 42.319923, 37.263268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732988, 0.231141, -0.639768,
		0.663344, -0.451201, 0.596986,
		-0.150676, -0.861969, -0.484051,
		30.061132, 42.061333, 37.118053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277666, 42.287937, 36.712631>,  <30.166605, 42.664711, 37.456886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277666, 42.287937, 36.712631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573305, 42.186291, 36.463100>,  <30.750689, 42.125301, 36.313381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573305, 42.186291, 36.463100>,  <30.277666, 42.287937, 36.712631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573305, 42.186291, 36.463100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412624, -0.902816, -0.121100,
		-0.532425, 0.346910, -0.772125,
		0.739097, -0.254120, -0.623826,
		30.795034, 42.110054, 36.275951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969660, 41.942368, 36.119236>,  <30.277666, 42.287937, 36.712631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969660, 41.942368, 36.119236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339621, 41.791237, 36.136208>,  <30.561598, 41.700558, 36.146389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339621, 41.791237, 36.136208>,  <29.969660, 41.942368, 36.119236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339621, 41.791237, 36.136208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371459, -0.921781, -0.111080,
		0.081077, 0.086979, -0.992906,
		0.924903, -0.377829, 0.042426,
		30.617092, 41.677887, 36.148937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065752, 41.273201, 35.578297>,  <29.969660, 41.942368, 36.119236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065752, 41.273201, 35.578297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311977, 41.275581, 35.893524>,  <30.459713, 41.277008, 36.082661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311977, 41.275581, 35.893524>,  <30.065752, 41.273201, 35.578297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311977, 41.275581, 35.893524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125967, -0.986373, 0.105837,
		0.777955, -0.164420, -0.606425,
		0.615563, 0.005947, 0.788065,
		30.496647, 41.277367, 36.129944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619043, 40.768890, 35.439060>,  <30.065752, 41.273201, 35.578297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619043, 40.768890, 35.439060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570803, 40.816147, 35.833317>,  <30.541859, 40.844501, 36.069870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570803, 40.816147, 35.833317>,  <30.619043, 40.768890, 35.439060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570803, 40.816147, 35.833317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168746, -0.980883, 0.096921,
		0.978253, -0.154634, 0.138233,
		-0.120603, 0.118139, 0.985646,
		30.534622, 40.851589, 36.129009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032385, 40.277603, 35.728889>,  <30.619043, 40.768890, 35.439060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032385, 40.277603, 35.728889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770781, 40.386299, 36.011288>,  <30.613819, 40.451515, 36.180725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770781, 40.386299, 36.011288>,  <31.032385, 40.277603, 35.728889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770781, 40.386299, 36.011288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265733, -0.956307, 0.121916,
		0.708278, -0.107872, 0.697643,
		-0.654010, 0.271737, 0.705996,
		30.574577, 40.467819, 36.223087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244329, 39.863400, 36.329865>,  <31.032385, 40.277603, 35.728889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244329, 39.863400, 36.329865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870424, 40.005108, 36.319199>,  <30.646082, 40.090134, 36.312798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870424, 40.005108, 36.319199>,  <31.244329, 39.863400, 36.329865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870424, 40.005108, 36.319199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348886, -0.901202, 0.257123,
		0.067060, 0.249652, 0.966011,
		-0.934763, 0.354271, -0.026665,
		30.589996, 40.111389, 36.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943306, 39.523022, 36.878967>,  <31.244329, 39.863400, 36.329865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943306, 39.523022, 36.878967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659998, 39.646847, 36.625187>,  <30.490013, 39.721142, 36.472919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659998, 39.646847, 36.625187>,  <30.943306, 39.523022, 36.878967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659998, 39.646847, 36.625187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446898, -0.892328, 0.063513,
		-0.546473, 0.328517, 0.770353,
		-0.708272, 0.309562, -0.634446,
		30.447515, 39.739716, 36.434853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447844, 39.349762, 37.255383>,  <30.943306, 39.523022, 36.878967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447844, 39.349762, 37.255383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291754, 39.393581, 36.889709>,  <30.198099, 39.419872, 36.670307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291754, 39.393581, 36.889709>,  <30.447844, 39.349762, 37.255383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291754, 39.393581, 36.889709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551003, -0.823256, 0.136546,
		-0.737644, 0.556999, 0.381619,
		-0.390226, 0.109550, -0.914178,
		30.174686, 39.426445, 36.615456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741032, 39.434879, 37.320461>,  <30.447844, 39.349762, 37.255383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741032, 39.434879, 37.320461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816759, 39.302517, 36.950668>,  <29.862196, 39.223099, 36.728794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816759, 39.302517, 36.950668>,  <29.741032, 39.434879, 37.320461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816759, 39.302517, 36.950668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376957, -0.893856, 0.242745,
		-0.906676, 0.302533, -0.293959,
		0.189319, -0.330901, -0.924480,
		29.873556, 39.203247, 36.673325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255056, 38.920223, 37.293453>,  <29.741032, 39.434879, 37.320461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255056, 38.920223, 37.293453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451036, 38.853329, 36.951229>,  <29.568624, 38.813190, 36.745895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451036, 38.853329, 36.951229>,  <29.255056, 38.920223, 37.293453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451036, 38.853329, 36.951229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407111, -0.911726, -0.054924,
		-0.770849, 0.375217, -0.514786,
		0.489952, -0.167237, -0.855557,
		29.598022, 38.803158, 36.694561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759073, 38.634373, 36.855293>,  <29.255056, 38.920223, 37.293453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759073, 38.634373, 36.855293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123190, 38.535004, 36.722836>,  <29.341660, 38.475384, 36.643360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123190, 38.535004, 36.722836>,  <28.759073, 38.634373, 36.855293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123190, 38.535004, 36.722836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282048, -0.957713, -0.056867,
		-0.303013, 0.145164, -0.941866,
		0.910292, -0.248420, -0.331143,
		29.396278, 38.460476, 36.623493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713062, 38.385265, 36.099579>,  <28.759073, 38.634373, 36.855293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713062, 38.385265, 36.099579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027969, 38.232361, 36.293106>,  <29.216913, 38.140617, 36.409222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027969, 38.232361, 36.293106>,  <28.713062, 38.385265, 36.099579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027969, 38.232361, 36.293106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334181, -0.923929, -0.186219,
		0.518199, -0.015079, -0.855127,
		0.787269, -0.382266, 0.483819,
		29.264151, 38.117680, 36.438251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908047, 37.852665, 35.756371>,  <28.713062, 38.385265, 36.099579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908047, 37.852665, 35.756371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093716, 37.722797, 36.086010>,  <29.205116, 37.644875, 36.283794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093716, 37.722797, 36.086010>,  <28.908047, 37.852665, 35.756371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093716, 37.722797, 36.086010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300297, -0.932978, -0.198427,
		0.833286, -0.155368, -0.530562,
		0.464173, -0.324672, 0.824094,
		29.232967, 37.625397, 36.333237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402300, 37.173069, 35.568619>,  <28.908047, 37.852665, 35.756371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402300, 37.173069, 35.568619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383648, 37.159554, 35.967957>,  <29.372458, 37.151443, 36.207558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383648, 37.159554, 35.967957>,  <29.402300, 37.173069, 35.568619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383648, 37.159554, 35.967957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254414, -0.966068, -0.044577,
		0.965971, -0.256070, 0.036449,
		-0.046627, -0.033787, 0.998341,
		29.369659, 37.149418, 36.267460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702837, 36.455063, 35.705608>,  <29.402300, 37.173069, 35.568619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702837, 36.455063, 35.705608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493889, 36.540672, 36.035778>,  <29.368519, 36.592037, 36.233879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493889, 36.540672, 36.035778>,  <29.702837, 36.455063, 35.705608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493889, 36.540672, 36.035778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224384, -0.968376, 0.109087,
		0.822666, -0.128228, 0.553876,
		-0.522372, 0.214023, 0.825422,
		29.337177, 36.604877, 36.283405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970137, 35.869591, 36.202564>,  <29.702837, 36.455063, 35.705608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970137, 35.869591, 36.202564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634502, 36.048130, 36.326954>,  <29.433123, 36.155254, 36.401588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634502, 36.048130, 36.326954>,  <29.970137, 35.869591, 36.202564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634502, 36.048130, 36.326954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314117, -0.864254, 0.392931,
		0.444146, 0.232021, 0.865390,
		-0.839085, 0.446353, 0.310973,
		29.382776, 36.182037, 36.420246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805929, 35.636623, 36.978672>,  <29.970137, 35.869591, 36.202564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805929, 35.636623, 36.978672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479769, 35.750134, 36.776844>,  <29.284073, 35.818237, 36.655746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479769, 35.750134, 36.776844>,  <29.805929, 35.636623, 36.978672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479769, 35.750134, 36.776844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501328, -0.781981, 0.370373,
		-0.289463, 0.554959, 0.779893,
		-0.815403, 0.283772, -0.504571,
		29.235147, 35.835266, 36.625473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295500, 35.329693, 37.407410>,  <29.805929, 35.636623, 36.978672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295500, 35.329693, 37.407410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119020, 35.448536, 37.068691>,  <29.013132, 35.519840, 36.865459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119020, 35.448536, 37.068691>,  <29.295500, 35.329693, 37.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119020, 35.448536, 37.068691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726310, -0.672435, 0.142495,
		-0.527082, 0.677908, 0.512470,
		-0.441201, 0.297105, -0.846800,
		28.986660, 35.537666, 36.814651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621874, 35.361324, 37.550846>,  <29.295500, 35.329693, 37.407410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621874, 35.361324, 37.550846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638638, 35.327625, 37.152622>,  <28.648695, 35.307404, 36.913689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638638, 35.327625, 37.152622>,  <28.621874, 35.361324, 37.550846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638638, 35.327625, 37.152622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722585, -0.690714, 0.028034,
		-0.690011, 0.718204, -0.089821,
		0.041907, -0.084247, -0.995563,
		28.651211, 35.302349, 36.853954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898134, 35.448914, 37.208996>,  <28.621874, 35.361324, 37.550846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898134, 35.448914, 37.208996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141380, 35.247322, 36.963654>,  <28.287329, 35.126366, 36.816448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141380, 35.247322, 36.963654>,  <27.898134, 35.448914, 37.208996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141380, 35.247322, 36.963654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704843, -0.698246, -0.125091,
		-0.365228, 0.508387, -0.779841,
		0.608116, -0.503979, -0.613352,
		28.323814, 35.096130, 36.779648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433619, 35.119934, 36.719460>,  <27.898134, 35.448914, 37.208996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433619, 35.119934, 36.719460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779232, 34.931900, 36.647392>,  <27.986601, 34.819080, 36.604153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779232, 34.931900, 36.647392>,  <27.433619, 35.119934, 36.719460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779232, 34.931900, 36.647392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494442, -0.859728, -0.128038,
		-0.094710, 0.199715, -0.975266,
		0.864035, -0.470086, -0.180173,
		28.038443, 34.790874, 36.593342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355711, 34.672218, 36.150547>,  <27.433619, 35.119934, 36.719460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355711, 34.672218, 36.150547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670502, 34.519428, 36.344357>,  <27.859377, 34.427753, 36.460640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670502, 34.519428, 36.344357>,  <27.355711, 34.672218, 36.150547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670502, 34.519428, 36.344357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391393, -0.916146, -0.086531,
		0.476944, -0.121539, -0.870490,
		0.786979, -0.381975, 0.484520,
		27.906595, 34.404835, 36.489712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509117, 34.067070, 35.846279>,  <27.355711, 34.672218, 36.150547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509117, 34.067070, 35.846279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707815, 34.011776, 36.189007>,  <27.827034, 33.978600, 36.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707815, 34.011776, 36.189007>,  <27.509117, 34.067070, 35.846279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707815, 34.011776, 36.189007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252767, -0.967480, -0.009549,
		0.830273, -0.211831, -0.515533,
		0.496746, -0.138238, 0.856816,
		27.856838, 33.970306, 36.446053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968887, 33.405609, 35.777073>,  <27.509117, 34.067070, 35.846279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968887, 33.405609, 35.777073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891802, 33.475887, 36.163231>,  <27.845551, 33.518055, 36.394928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891802, 33.475887, 36.163231>,  <27.968887, 33.405609, 35.777073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891802, 33.475887, 36.163231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404989, -0.910377, 0.084842,
		0.893782, -0.374625, 0.246596,
		-0.192711, 0.175699, 0.965397,
		27.833988, 33.528599, 36.452850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172600, 32.834587, 36.124893>,  <27.968887, 33.405609, 35.777073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172600, 32.834587, 36.124893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903313, 33.016949, 36.357765>,  <27.741741, 33.126366, 36.497486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903313, 33.016949, 36.357765>,  <28.172600, 32.834587, 36.124893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903313, 33.016949, 36.357765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517291, -0.852961, 0.069770,
		0.528383, -0.254185, 0.810062,
		-0.673217, 0.455904, 0.582178,
		27.701347, 33.153721, 36.532417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381672, 32.393219, 36.688343>,  <28.172600, 32.834587, 36.124893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381672, 32.393219, 36.688343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653996, 32.601269, 36.482056>,  <28.817390, 32.726101, 36.358284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653996, 32.601269, 36.482056>,  <28.381672, 32.393219, 36.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653996, 32.601269, 36.482056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599631, 0.008571, 0.800230,
		0.420642, -0.854046, -0.306049,
		0.680810, 0.520127, -0.515718,
		28.858238, 32.757305, 36.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068008, 32.123192, 36.961899>,  <28.381672, 32.393219, 36.688343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068008, 32.123192, 36.961899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106432, 32.487129, 36.800426>,  <29.129486, 32.705490, 36.703545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106432, 32.487129, 36.800426>,  <29.068008, 32.123192, 36.961899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106432, 32.487129, 36.800426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730036, 0.211286, 0.649927,
		0.676624, -0.357133, -0.643922,
		0.096059, 0.909843, -0.403681,
		29.135250, 32.760082, 36.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811222, 32.205585, 36.842651>,  <29.068008, 32.123192, 36.961899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811222, 32.205585, 36.842651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600452, 32.531563, 36.939171>,  <29.473991, 32.727150, 36.997082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600452, 32.531563, 36.939171>,  <29.811222, 32.205585, 36.842651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600452, 32.531563, 36.939171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715220, 0.271796, 0.643885,
		0.459143, 0.511860, -0.726076,
		-0.526924, 0.814939, 0.241299,
		29.442375, 32.776043, 37.011562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249306, 32.882298, 36.885391>,  <29.811222, 32.205585, 36.842651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249306, 32.882298, 36.885391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921780, 32.948814, 37.105167>,  <29.725264, 32.988724, 37.237034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921780, 32.948814, 37.105167>,  <30.249306, 32.882298, 36.885391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921780, 32.948814, 37.105167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565257, 0.400510, 0.721163,
		-0.100135, 0.901076, -0.421941,
		-0.818815, 0.166292, 0.549445,
		29.676136, 32.998703, 37.270000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219164, 33.542076, 37.251938>,  <30.249306, 32.882298, 36.885391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219164, 33.542076, 37.251938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958422, 33.325653, 37.464481>,  <29.801977, 33.195797, 37.592007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958422, 33.325653, 37.464481>,  <30.219164, 33.542076, 37.251938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958422, 33.325653, 37.464481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270917, 0.488291, 0.829564,
		-0.708301, 0.684708, -0.171712,
		-0.651854, -0.541061, 0.531356,
		29.762865, 33.163334, 37.623890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842337, 33.964512, 37.774361>,  <30.219164, 33.542076, 37.251938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842337, 33.964512, 37.774361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840485, 33.581257, 37.888874>,  <29.839375, 33.351303, 37.957581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840485, 33.581257, 37.888874>,  <29.842337, 33.964512, 37.774361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840485, 33.581257, 37.888874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506617, 0.244581, 0.826752,
		-0.862159, 0.148863, 0.484275,
		-0.004628, -0.958133, 0.286285,
		29.839096, 33.293816, 37.974758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310692, 33.886913, 38.447697>,  <29.842337, 33.964512, 37.774361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310692, 33.886913, 38.447697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657545, 33.698738, 38.382248>,  <29.865656, 33.585835, 38.342979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657545, 33.698738, 38.382248>,  <29.310692, 33.886913, 38.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657545, 33.698738, 38.382248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344526, 0.329273, 0.879137,
		-0.359703, -0.818698, 0.447601,
		0.867131, -0.470438, -0.163622,
		29.917685, 33.557606, 38.333160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366199, 33.496910, 38.980350>,  <29.310692, 33.886913, 38.447697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366199, 33.496910, 38.980350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743933, 33.514603, 38.849949>,  <29.970573, 33.525219, 38.771706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743933, 33.514603, 38.849949>,  <29.366199, 33.496910, 38.980350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743933, 33.514603, 38.849949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324001, 0.046917, 0.944892,
		0.057113, -0.997918, 0.029966,
		0.944331, 0.044257, -0.326006,
		30.027233, 33.527874, 38.752148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826593, 32.929241, 39.281742>,  <29.366199, 33.496910, 38.980350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826593, 32.929241, 39.281742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067013, 33.229465, 39.171909>,  <30.211264, 33.409599, 39.106010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067013, 33.229465, 39.171909>,  <29.826593, 32.929241, 39.281742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067013, 33.229465, 39.171909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465109, -0.049100, 0.883891,
		0.649934, -0.658972, -0.378605,
		0.601049, 0.750563, -0.274582,
		30.247328, 33.454636, 39.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475399, 32.825954, 39.702709>,  <29.826593, 32.929241, 39.281742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475399, 32.825954, 39.702709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532812, 33.188717, 39.544254>,  <30.567261, 33.406376, 39.449181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532812, 33.188717, 39.544254>,  <30.475399, 32.825954, 39.702709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532812, 33.188717, 39.544254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569706, 0.251581, 0.782395,
		0.809217, -0.337980, -0.480559,
		0.143534, 0.906905, -0.396133,
		30.575872, 33.460789, 39.425415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205654, 32.944027, 39.785568>,  <30.475399, 32.825954, 39.702709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205654, 32.944027, 39.785568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012239, 33.293896, 39.772095>,  <30.896191, 33.503819, 39.764011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012239, 33.293896, 39.772095>,  <31.205654, 32.944027, 39.785568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012239, 33.293896, 39.772095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652869, 0.386016, 0.651731,
		0.583054, 0.293148, -0.757702,
		-0.483538, 0.874675, -0.033681,
		30.867178, 33.556297, 39.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776911, 33.504959, 39.844097>,  <31.205654, 32.944027, 39.785568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776911, 33.504959, 39.844097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439554, 33.706364, 39.919109>,  <31.237141, 33.827206, 39.964119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439554, 33.706364, 39.919109>,  <31.776911, 33.504959, 39.844097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439554, 33.706364, 39.919109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481278, 0.552772, 0.680304,
		0.238878, 0.664018, -0.708532,
		-0.843391, 0.503511, 0.187533,
		31.186537, 33.857418, 39.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044998, 34.113087, 39.815392>,  <31.776911, 33.504959, 39.844097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044998, 34.113087, 39.815392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692522, 34.163681, 39.997601>,  <31.481037, 34.194038, 40.106926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692522, 34.163681, 39.997601>,  <32.044998, 34.113087, 39.815392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692522, 34.163681, 39.997601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442778, 0.558490, 0.701454,
		-0.165681, 0.819811, -0.548142,
		-0.881191, 0.126487, 0.455525,
		31.428165, 34.201626, 40.134258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924770, 34.895344, 39.929348>,  <32.044998, 34.113087, 39.815392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924770, 34.895344, 39.929348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709249, 34.696857, 40.201660>,  <31.579937, 34.577766, 40.365047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709249, 34.696857, 40.201660>,  <31.924770, 34.895344, 39.929348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709249, 34.696857, 40.201660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327366, 0.621278, 0.711931,
		-0.776225, 0.606454, -0.172301,
		-0.538800, -0.496213, 0.680784,
		31.547609, 34.547993, 40.405895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931145, 35.385780, 40.533344>,  <31.924770, 34.895344, 39.929348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931145, 35.385780, 40.533344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760344, 35.067650, 40.705452>,  <31.657864, 34.876774, 40.808716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760344, 35.067650, 40.705452>,  <31.931145, 35.385780, 40.533344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760344, 35.067650, 40.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433928, 0.237234, 0.869153,
		-0.793332, 0.557834, 0.243814,
		-0.427002, -0.795324, 0.430265,
		31.632242, 34.829052, 40.834530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657522, 35.651463, 41.187637>,  <31.931145, 35.385780, 40.533344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657522, 35.651463, 41.187637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731487, 35.259930, 41.222744>,  <31.775867, 35.025009, 41.243809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731487, 35.259930, 41.222744>,  <31.657522, 35.651463, 41.187637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731487, 35.259930, 41.222744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510516, 0.171987, 0.842493,
		-0.839750, -0.110981, 0.531510,
		0.184914, -0.978828, 0.087769,
		31.786961, 34.966282, 41.249073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438553, 35.470341, 41.903698>,  <31.657522, 35.651463, 41.187637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438553, 35.470341, 41.903698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708071, 35.208355, 41.766861>,  <31.869781, 35.051163, 41.684757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708071, 35.208355, 41.766861>,  <31.438553, 35.470341, 41.903698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708071, 35.208355, 41.766861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482346, 0.039138, 0.875106,
		-0.559771, -0.754649, 0.342289,
		0.673794, -0.654960, -0.342094,
		31.910210, 35.011868, 41.664234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410885, 34.825932, 42.307770>,  <31.438553, 35.470341, 41.903698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410885, 34.825932, 42.307770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780983, 34.901180, 42.175995>,  <32.003044, 34.946331, 42.096931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780983, 34.901180, 42.175995>,  <31.410885, 34.825932, 42.307770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780983, 34.901180, 42.175995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352174, -0.103095, 0.930239,
		0.141037, -0.976719, -0.161640,
		0.925247, 0.188124, -0.329435,
		32.058556, 34.957619, 42.077164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817278, 34.365730, 42.612839>,  <31.410885, 34.825932, 42.307770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817278, 34.365730, 42.612839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078583, 34.652153, 42.514439>,  <32.235367, 34.824005, 42.455399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078583, 34.652153, 42.514439>,  <31.817278, 34.365730, 42.612839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078583, 34.652153, 42.514439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442126, -0.097021, 0.891690,
		0.614631, -0.691270, -0.379966,
		0.653263, 0.716054, -0.245996,
		32.274563, 34.866970, 42.440639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294926, 34.118572, 42.991737>,  <31.817278, 34.365730, 42.612839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294926, 34.118572, 42.991737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397335, 34.497852, 42.916504>,  <32.458782, 34.725418, 42.871365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397335, 34.497852, 42.916504>,  <32.294926, 34.118572, 42.991737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397335, 34.497852, 42.916504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422730, 0.065158, 0.903910,
		0.869339, -0.310933, -0.384148,
		0.256025, 0.948196, -0.188085,
		32.474144, 34.782310, 42.860077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973137, 34.181339, 43.317749>,  <32.294926, 34.118572, 42.991737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973137, 34.181339, 43.317749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871384, 34.559731, 43.237331>,  <32.810333, 34.786766, 43.189079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871384, 34.559731, 43.237331>,  <32.973137, 34.181339, 43.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871384, 34.559731, 43.237331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290632, 0.273050, 0.917048,
		0.922401, 0.174849, -0.344389,
		-0.254380, 0.945976, -0.201045,
		32.795071, 34.843525, 43.177017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548027, 34.641758, 43.523830>,  <32.973137, 34.181339, 43.317749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548027, 34.641758, 43.523830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224331, 34.875153, 43.496498>,  <33.030113, 35.015190, 43.480099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224331, 34.875153, 43.496498>,  <33.548027, 34.641758, 43.523830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224331, 34.875153, 43.496498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115886, 0.272570, 0.955131,
		0.575934, 0.765013, -0.288193,
		-0.809241, 0.583490, -0.068327,
		32.981560, 35.050201, 43.476002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745537, 35.236656, 43.951244>,  <33.548027, 34.641758, 43.523830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745537, 35.236656, 43.951244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348232, 35.275860, 43.926525>,  <33.109848, 35.299381, 43.911694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348232, 35.275860, 43.926525>,  <33.745537, 35.236656, 43.951244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348232, 35.275860, 43.926525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004843, 0.497785, 0.867287,
		0.115761, 0.861745, -0.493958,
		-0.993265, 0.098006, -0.061797,
		33.050251, 35.305264, 43.907986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580181, 35.846485, 44.293846>,  <33.745537, 35.236656, 43.951244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580181, 35.846485, 44.293846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223400, 35.666378, 44.310234>,  <33.009331, 35.558315, 44.320065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223400, 35.666378, 44.310234>,  <33.580181, 35.846485, 44.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223400, 35.666378, 44.310234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144963, 0.370629, 0.917398,
		-0.428259, 0.812337, -0.395856,
		-0.891953, -0.450269, 0.040967,
		32.955814, 35.531296, 44.322525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119553, 36.399155, 44.370380>,  <33.580181, 35.846485, 44.293846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119553, 36.399155, 44.370380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934223, 36.071426, 44.505459>,  <32.823025, 35.874790, 44.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934223, 36.071426, 44.505459>,  <33.119553, 36.399155, 44.370380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934223, 36.071426, 44.505459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086399, 0.421014, 0.902930,
		-0.881966, 0.389175, -0.265856,
		-0.463327, -0.819323, 0.337696,
		32.795223, 35.825630, 44.606766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445232, 36.624195, 44.722061>,  <33.119553, 36.399155, 44.370380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445232, 36.624195, 44.722061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564190, 36.269035, 44.862453>,  <32.635563, 36.055939, 44.946690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564190, 36.269035, 44.862453>,  <32.445232, 36.624195, 44.722061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564190, 36.269035, 44.862453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013448, 0.371470, 0.928348,
		-0.954660, -0.271365, 0.122413,
		0.297394, -0.887902, 0.350978,
		32.653408, 36.002663, 44.967747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283390, 36.717228, 45.439964>,  <32.445232, 36.624195, 44.722061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283390, 36.717228, 45.439964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461967, 36.359741, 45.457672>,  <32.569115, 36.145248, 45.468296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461967, 36.359741, 45.457672>,  <32.283390, 36.717228, 45.439964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461967, 36.359741, 45.457672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180683, 0.138488, 0.973743,
		-0.876378, -0.426727, 0.223307,
		0.446448, -0.893714, 0.044266,
		32.595901, 36.091625, 45.470951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903597, 36.337166, 46.016640>,  <32.283390, 36.717228, 45.439964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903597, 36.337166, 46.016640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281586, 36.229843, 45.941769>,  <32.508381, 36.165451, 45.896847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281586, 36.229843, 45.941769>,  <31.903597, 36.337166, 46.016640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281586, 36.229843, 45.941769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269222, 0.312722, 0.910892,
		-0.185861, -0.911162, 0.367748,
		0.944974, -0.268305, -0.187182,
		32.565079, 36.149353, 45.885612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095646, 36.083847, 46.579777>,  <31.903597, 36.337166, 46.016640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095646, 36.083847, 46.579777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456146, 36.149986, 46.419571>,  <32.672447, 36.189671, 46.323448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456146, 36.149986, 46.419571>,  <32.095646, 36.083847, 46.579777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456146, 36.149986, 46.419571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270623, 0.507084, 0.818308,
		0.338400, -0.845887, 0.412262,
		0.901248, 0.165348, -0.400514,
		32.726521, 36.199593, 46.299416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483128, 35.983124, 47.137730>,  <32.095646, 36.083847, 46.579777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483128, 35.983124, 47.137730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739132, 36.166264, 46.890907>,  <32.892735, 36.276150, 46.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739132, 36.166264, 46.890907>,  <32.483128, 35.983124, 47.137730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739132, 36.166264, 46.890907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419655, 0.464432, 0.779867,
		0.643647, -0.758072, 0.105099,
		0.640006, 0.457854, -0.617059,
		32.931133, 36.303619, 46.705791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103226, 35.833874, 47.374458>,  <32.483128, 35.983124, 47.137730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103226, 35.833874, 47.374458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147213, 36.177059, 47.173737>,  <33.173607, 36.382969, 47.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147213, 36.177059, 47.173737>,  <33.103226, 35.833874, 47.374458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147213, 36.177059, 47.173737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312021, 0.449543, 0.836991,
		0.943689, -0.248618, -0.218265,
		0.109972, 0.857963, -0.501803,
		33.180206, 36.434448, 47.023197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681404, 35.989883, 47.514359>,  <33.103226, 35.833874, 47.374458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681404, 35.989883, 47.514359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550865, 36.331123, 47.351524>,  <33.472542, 36.535866, 47.253822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550865, 36.331123, 47.351524>,  <33.681404, 35.989883, 47.514359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550865, 36.331123, 47.351524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392254, 0.514057, 0.762812,
		0.860020, 0.089260, -0.502392,
		-0.326347, 0.853099, -0.407087,
		33.452961, 36.587051, 47.229397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278008, 36.394882, 47.504044>,  <33.681404, 35.989883, 47.514359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278008, 36.394882, 47.504044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934162, 36.598759, 47.518349>,  <33.727856, 36.721085, 47.526932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934162, 36.598759, 47.518349>,  <34.278008, 36.394882, 47.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934162, 36.598759, 47.518349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351688, 0.539453, 0.765053,
		0.370649, 0.670227, -0.642974,
		-0.859613, 0.509692, 0.035763,
		33.676277, 36.751667, 47.529079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415314, 37.106918, 47.689720>,  <34.278008, 36.394882, 47.504044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415314, 37.106918, 47.689720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021107, 37.069324, 47.746189>,  <33.784584, 37.046768, 47.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021107, 37.069324, 47.746189>,  <34.415314, 37.106918, 47.689720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021107, 37.069324, 47.746189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062472, 0.572709, 0.817375,
		-0.157672, 0.814353, -0.558541,
		-0.985513, -0.093984, 0.141174,
		33.725452, 37.041130, 47.788540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255688, 37.754814, 47.736176>,  <34.415314, 37.106918, 47.689720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255688, 37.754814, 47.736176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962448, 37.556835, 47.922764>,  <33.786507, 37.438046, 48.034718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962448, 37.556835, 47.922764>,  <34.255688, 37.754814, 47.736176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962448, 37.556835, 47.922764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146470, 0.554870, 0.818942,
		-0.664166, 0.668686, -0.334278,
		-0.733096, -0.494952, 0.466468,
		33.742519, 37.408348, 48.062706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755501, 38.242844, 48.033802>,  <34.255688, 37.754814, 47.736176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755501, 38.242844, 48.033802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732906, 37.902916, 48.243420>,  <33.719349, 37.698959, 48.369190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732906, 37.902916, 48.243420>,  <33.755501, 38.242844, 48.033802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732906, 37.902916, 48.243420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146319, 0.512165, 0.846332,
		-0.987623, 0.124485, 0.095413,
		-0.056488, -0.849818, 0.524041,
		33.715961, 37.647972, 48.400631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540195, 38.524429, 48.746483>,  <33.755501, 38.242844, 48.033802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540195, 38.524429, 48.746483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653614, 38.145363, 48.805183>,  <33.721664, 37.917923, 48.840405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653614, 38.145363, 48.805183>,  <33.540195, 38.524429, 48.746483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653614, 38.145363, 48.805183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120346, 0.186983, 0.974964,
		-0.951377, -0.258787, 0.167066,
		0.283546, -0.947664, 0.146748,
		33.738678, 37.861065, 48.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099545, 38.258419, 49.347542>,  <33.540195, 38.524429, 48.746483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099545, 38.258419, 49.347542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417545, 38.016666, 49.326759>,  <33.608345, 37.871613, 49.314289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417545, 38.016666, 49.326759>,  <33.099545, 38.258419, 49.347542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417545, 38.016666, 49.326759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160429, 0.126871, 0.978860,
		-0.585014, -0.786527, 0.197823,
		0.794997, -0.604384, -0.051960,
		33.656044, 37.835350, 49.311172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027496, 37.853176, 49.885036>,  <33.099545, 38.258419, 49.347542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027496, 37.853176, 49.885036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413212, 37.777359, 49.811039>,  <33.644642, 37.731869, 49.766640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413212, 37.777359, 49.811039>,  <33.027496, 37.853176, 49.885036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413212, 37.777359, 49.811039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177119, -0.057831, 0.982489,
		-0.196922, -0.980168, -0.022194,
		0.964288, -0.189543, -0.184995,
		33.702499, 37.720497, 49.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200592, 37.089157, 50.109066>,  <33.027496, 37.853176, 49.885036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200592, 37.089157, 50.109066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523228, 37.325474, 50.116928>,  <33.716808, 37.467262, 50.121647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523228, 37.325474, 50.116928>,  <33.200592, 37.089157, 50.109066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523228, 37.325474, 50.116928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112313, -0.185811, 0.976146,
		0.580350, -0.785138, -0.216226,
		0.806586, 0.590791, 0.019654,
		33.765202, 37.502712, 50.122826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717300, 36.714638, 50.439896>,  <33.200592, 37.089157, 50.109066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717300, 36.714638, 50.439896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873840, 37.081680, 50.467762>,  <33.967762, 37.301907, 50.484482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873840, 37.081680, 50.467762>,  <33.717300, 36.714638, 50.439896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873840, 37.081680, 50.467762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302939, -0.199945, 0.931799,
		0.868951, -0.343552, -0.356226,
		0.391347, 0.917602, 0.069667,
		33.991245, 37.356960, 50.488663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325260, 36.645359, 50.913296>,  <33.717300, 36.714638, 50.439896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325260, 36.645359, 50.913296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275761, 37.041775, 50.893211>,  <34.246063, 37.279625, 50.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275761, 37.041775, 50.893211>,  <34.325260, 36.645359, 50.913296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275761, 37.041775, 50.893211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188811, 0.073195, 0.979282,
		0.974185, 0.111702, -0.196178,
		-0.123747, 0.991042, -0.050215,
		34.238636, 37.339088, 50.878147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900414, 36.948627, 51.095264>,  <34.325260, 36.645359, 50.913296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900414, 36.948627, 51.095264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628090, 37.235317, 51.155666>,  <34.464695, 37.407333, 51.191906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628090, 37.235317, 51.155666>,  <34.900414, 36.948627, 51.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628090, 37.235317, 51.155666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228283, 0.011734, 0.973524,
		0.695981, 0.697253, -0.171606,
		-0.680807, 0.716729, 0.151004,
		34.423847, 37.450336, 51.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155106, 37.409073, 51.609001>,  <34.900414, 36.948627, 51.095264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155106, 37.409073, 51.609001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764008, 37.489216, 51.633904>,  <34.529350, 37.537300, 51.648846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764008, 37.489216, 51.633904>,  <35.155106, 37.409073, 51.609001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764008, 37.489216, 51.633904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070281, 0.033177, 0.996975,
		0.197683, 0.979162, -0.046520,
		-0.977743, 0.200354, 0.062258,
		34.470684, 37.549324, 51.652580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018566, 37.938900, 52.213089>,  <35.155106, 37.409073, 51.609001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018566, 37.938900, 52.213089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658207, 37.777554, 52.148987>,  <34.441990, 37.680744, 52.110527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658207, 37.777554, 52.148987>,  <35.018566, 37.938900, 52.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658207, 37.777554, 52.148987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143200, -0.072311, 0.987049,
		-0.409729, 0.912177, 0.007383,
		-0.900897, -0.403365, -0.160251,
		34.387939, 37.656544, 52.100910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717533, 38.183960, 52.652519>,  <35.018566, 37.938900, 52.213089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717533, 38.183960, 52.652519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453144, 37.891243, 52.586067>,  <34.294510, 37.715614, 52.546196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453144, 37.891243, 52.586067>,  <34.717533, 38.183960, 52.652519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453144, 37.891243, 52.586067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173914, -0.065968, 0.982549,
		-0.729978, 0.678331, -0.083666,
		-0.660974, -0.731789, -0.166126,
		34.254852, 37.671707, 52.536228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149136, 38.263168, 53.129036>,  <34.717533, 38.183960, 52.652519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149136, 38.263168, 53.129036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104969, 37.881092, 53.019192>,  <34.078468, 37.651844, 52.953285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104969, 37.881092, 53.019192>,  <34.149136, 38.263168, 53.129036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104969, 37.881092, 53.019192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022861, -0.273788, 0.961519,
		-0.993622, 0.112448, 0.008395,
		-0.110419, -0.955194, -0.274612,
		34.071842, 37.594532, 52.936810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478653, 37.904564, 53.379189>,  <34.149136, 38.263168, 53.129036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478653, 37.904564, 53.379189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782280, 37.646523, 53.344181>,  <33.964455, 37.491699, 53.323177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782280, 37.646523, 53.344181>,  <33.478653, 37.904564, 53.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782280, 37.646523, 53.344181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083798, -0.230138, 0.969543,
		-0.645599, -0.728612, -0.228748,
		0.759065, -0.645105, -0.087521,
		34.009998, 37.452991, 53.317924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203079, 37.249935, 53.416412>,  <33.478653, 37.904564, 53.379189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203079, 37.249935, 53.416412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582001, 37.283611, 53.540047>,  <33.809353, 37.303818, 53.614227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582001, 37.283611, 53.540047>,  <33.203079, 37.249935, 53.416412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582001, 37.283611, 53.540047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256878, -0.376849, 0.889943,
		0.191401, -0.922441, -0.335363,
		0.947301, 0.084189, 0.309084,
		33.866192, 37.308868, 53.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544147, 36.657612, 53.636963>,  <33.203079, 37.249935, 53.416412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544147, 36.657612, 53.636963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632740, 36.966255, 53.875484>,  <33.685894, 37.151440, 54.018597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632740, 36.966255, 53.875484>,  <33.544147, 36.657612, 53.636963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632740, 36.966255, 53.875484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435603, -0.468805, 0.768422,
		0.872466, -0.429941, 0.232282,
		0.221481, 0.771604, 0.596299,
		33.699184, 37.197735, 54.054375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659348, 36.375851, 54.202126>,  <33.544147, 36.657612, 53.636963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659348, 36.375851, 54.202126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565918, 36.747017, 54.318348>,  <33.509861, 36.969715, 54.388081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565918, 36.747017, 54.318348>,  <33.659348, 36.375851, 54.202126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565918, 36.747017, 54.318348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453862, -0.368317, 0.811388,
		0.859914, 0.057646, 0.507173,
		-0.233574, 0.927911, 0.290558,
		33.495846, 37.025391, 54.405514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862888, 36.526943, 54.878029>,  <33.659348, 36.375851, 54.202126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862888, 36.526943, 54.878029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538631, 36.745369, 54.793480>,  <33.344078, 36.876423, 54.742748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538631, 36.745369, 54.793480>,  <33.862888, 36.526943, 54.878029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538631, 36.745369, 54.793480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544783, -0.571019, 0.614124,
		0.214649, 0.612988, 0.760376,
		-0.810640, 0.546061, -0.211377,
		33.295441, 36.909187, 54.730068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655838, 36.041840, 55.244362>,  <33.862888, 36.526943, 54.878029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655838, 36.041840, 55.244362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948734, 35.769485, 55.238499>,  <34.124474, 35.606071, 55.234982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948734, 35.769485, 55.238499>,  <33.655838, 36.041840, 55.244362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948734, 35.769485, 55.238499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178219, 0.170796, 0.969054,
		-0.657313, -0.712195, 0.246411,
		0.732241, -0.680887, -0.014660,
		34.168407, 35.565220, 55.234100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201782, 35.826157, 54.612980>,  <33.655838, 36.041840, 55.244362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201782, 35.826157, 54.612980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566730, 35.663013, 54.598949>,  <34.785702, 35.565128, 54.590530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566730, 35.663013, 54.598949>,  <34.201782, 35.826157, 54.612980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566730, 35.663013, 54.598949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082017, -0.098176, -0.991783,
		0.401060, 0.907753, -0.123024,
		0.912373, -0.407855, -0.035077,
		34.840443, 35.540657, 54.588425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589550, 36.096565, 53.993874>,  <34.201782, 35.826157, 54.612980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589550, 36.096565, 53.993874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712719, 35.725498, 54.078362>,  <34.786621, 35.502857, 54.129055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712719, 35.725498, 54.078362>,  <34.589550, 36.096565, 53.993874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712719, 35.725498, 54.078362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011070, -0.218497, -0.975775,
		0.951346, 0.302803, -0.057011,
		0.307924, -0.927669, 0.211218,
		34.805096, 35.447197, 54.141727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204609, 36.015522, 53.677322>,  <34.589550, 36.096565, 53.993874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204609, 36.015522, 53.677322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008865, 35.671665, 53.736038>,  <34.891418, 35.465351, 53.771267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008865, 35.671665, 53.736038>,  <35.204609, 36.015522, 53.677322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008865, 35.671665, 53.736038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195038, -0.271940, -0.942342,
		0.849994, -0.432512, 0.300738,
		-0.489357, -0.859641, 0.146791,
		34.862057, 35.413773, 53.780075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625366, 35.486919, 53.476353>,  <35.204609, 36.015522, 53.677322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625366, 35.486919, 53.476353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256210, 35.335178, 53.449898>,  <35.034718, 35.244133, 53.434025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256210, 35.335178, 53.449898>,  <35.625366, 35.486919, 53.476353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256210, 35.335178, 53.449898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168129, -0.242447, -0.955485,
		0.346432, -0.892923, 0.287531,
		-0.922885, -0.379353, -0.066135,
		34.979343, 35.221375, 53.430058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507015, 34.744808, 53.418922>,  <35.625366, 35.486919, 53.476353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507015, 34.744808, 53.418922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230598, 34.964783, 53.231289>,  <35.064751, 35.096767, 53.118710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230598, 34.964783, 53.231289>,  <35.507015, 34.744808, 53.418922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230598, 34.964783, 53.231289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313848, -0.356315, -0.880079,
		-0.651127, -0.755389, 0.073631,
		-0.691038, 0.549934, -0.469084,
		35.023289, 35.129765, 53.090565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417458, 34.303780, 52.928905>,  <35.507015, 34.744808, 53.418922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417458, 34.303780, 52.928905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239895, 34.631283, 52.783257>,  <35.133358, 34.827785, 52.695869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239895, 34.631283, 52.783257>,  <35.417458, 34.303780, 52.928905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239895, 34.631283, 52.783257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262354, -0.269789, -0.926491,
		-0.856804, -0.506808, -0.095041,
		-0.443911, 0.818755, -0.364119,
		35.106720, 34.876911, 52.674023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992535, 34.109612, 52.393047>,  <35.417458, 34.303780, 52.928905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992535, 34.109612, 52.393047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079056, 34.494793, 52.328625>,  <35.130970, 34.725903, 52.289970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079056, 34.494793, 52.328625>,  <34.992535, 34.109612, 52.393047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079056, 34.494793, 52.328625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357623, -0.231641, -0.904682,
		-0.908471, 0.138088, -0.394477,
		0.216303, 0.962951, -0.161056,
		35.143948, 34.783680, 52.280308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626808, 34.330391, 51.728504>,  <34.992535, 34.109612, 52.393047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626808, 34.330391, 51.728504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948994, 34.556595, 51.799412>,  <35.142303, 34.692318, 51.841957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948994, 34.556595, 51.799412>,  <34.626808, 34.330391, 51.728504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948994, 34.556595, 51.799412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395291, -0.289775, -0.871651,
		-0.441561, 0.772156, -0.456945,
		0.805462, 0.565514, 0.177273,
		35.190632, 34.726250, 51.852592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777985, 34.575459, 51.062111>,  <34.626808, 34.330391, 51.728504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777985, 34.575459, 51.062111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111622, 34.628208, 51.276363>,  <35.311802, 34.659859, 51.404915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111622, 34.628208, 51.276363>,  <34.777985, 34.575459, 51.062111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111622, 34.628208, 51.276363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551574, -0.185767, -0.813177,
		-0.007737, 0.973704, -0.227687,
		0.834090, 0.131878, 0.535632,
		35.361851, 34.667770, 51.437054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248920, 34.936989, 50.665974>,  <34.777985, 34.575459, 51.062111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248920, 34.936989, 50.665974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504837, 34.767010, 50.922123>,  <35.658386, 34.665020, 51.075813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504837, 34.767010, 50.922123>,  <35.248920, 34.936989, 50.665974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504837, 34.767010, 50.922123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559517, -0.313685, -0.767165,
		0.526886, 0.849127, 0.037075,
		0.639790, -0.424952, 0.640378,
		35.696774, 34.639523, 51.114235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978439, 35.188526, 50.533115>,  <35.248920, 34.936989, 50.665974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978439, 35.188526, 50.533115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061226, 34.861557, 50.748146>,  <36.110897, 34.665375, 50.877163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061226, 34.861557, 50.748146>,  <35.978439, 35.188526, 50.533115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061226, 34.861557, 50.748146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531496, -0.367376, -0.763248,
		0.821388, 0.443682, 0.358424,
		0.206964, -0.817423, 0.537573,
		36.123314, 34.616329, 50.909416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668751, 35.040501, 50.390644>,  <35.978439, 35.188526, 50.533115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668751, 35.040501, 50.390644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512218, 34.694786, 50.517052>,  <36.418297, 34.487358, 50.592896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512218, 34.694786, 50.517052>,  <36.668751, 35.040501, 50.390644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512218, 34.694786, 50.517052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354328, -0.458449, -0.815031,
		0.849299, -0.206973, 0.485647,
		-0.391334, -0.864284, 0.316024,
		36.394817, 34.435501, 50.611858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170998, 34.587856, 50.308010>,  <36.668751, 35.040501, 50.390644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170998, 34.587856, 50.308010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846275, 34.355339, 50.330193>,  <36.651443, 34.215828, 50.343502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846275, 34.355339, 50.330193>,  <37.170998, 34.587856, 50.308010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846275, 34.355339, 50.330193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336951, -0.543889, -0.768536,
		0.476905, -0.605215, 0.637398,
		-0.811804, -0.581291, 0.055455,
		36.602734, 34.180950, 50.346828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410217, 33.975628, 50.235909>,  <37.170998, 34.587856, 50.308010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410217, 33.975628, 50.235909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035175, 33.880810, 50.134163>,  <36.810150, 33.823917, 50.073116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035175, 33.880810, 50.134163>,  <37.410217, 33.975628, 50.235909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035175, 33.880810, 50.134163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339926, -0.471133, -0.813931,
		0.073099, -0.849613, 0.522316,
		-0.937607, -0.237046, -0.254366,
		36.753895, 33.809696, 50.057854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288483, 33.215359, 50.124790>,  <37.410217, 33.975628, 50.235909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288483, 33.215359, 50.124790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981007, 33.372459, 49.922859>,  <36.796520, 33.466721, 49.801701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981007, 33.372459, 49.922859>,  <37.288483, 33.215359, 50.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981007, 33.372459, 49.922859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198480, -0.603834, -0.772004,
		-0.608044, -0.693632, 0.386208,
		-0.768692, 0.392758, -0.504830,
		36.750401, 33.490288, 49.771412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872490, 32.583126, 49.804829>,  <37.288483, 33.215359, 50.124790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872490, 32.583126, 49.804829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769245, 32.904572, 49.590317>,  <36.707298, 33.097439, 49.461609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769245, 32.904572, 49.590317>,  <36.872490, 32.583126, 49.804829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769245, 32.904572, 49.590317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043718, -0.544801, -0.837425,
		-0.965126, -0.239591, 0.105486,
		-0.258108, 0.803610, -0.536276,
		36.691814, 33.145653, 49.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272240, 32.349537, 49.375282>,  <36.872490, 32.583126, 49.804829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272240, 32.349537, 49.375282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427467, 32.674023, 49.200317>,  <36.520603, 32.868713, 49.095337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427467, 32.674023, 49.200317>,  <36.272240, 32.349537, 49.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427467, 32.674023, 49.200317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154126, -0.410803, -0.898602,
		-0.908652, 0.416135, -0.034390,
		0.388068, 0.811216, -0.437415,
		36.543888, 32.917389, 49.069092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039158, 32.356743, 48.724968>,  <36.272240, 32.349537, 49.375282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039158, 32.356743, 48.724968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331120, 32.625473, 48.674538>,  <36.506294, 32.786713, 48.644279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331120, 32.625473, 48.674538>,  <36.039158, 32.356743, 48.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331120, 32.625473, 48.674538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060884, -0.119809, -0.990928,
		-0.680835, 0.730957, -0.046545,
		0.729902, 0.671825, -0.126074,
		36.550091, 32.827019, 48.636715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992527, 32.440964, 48.061119>,  <36.039158, 32.356743, 48.724968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992527, 32.440964, 48.061119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336216, 32.637680, 48.117516>,  <36.542427, 32.755711, 48.151356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336216, 32.637680, 48.117516>,  <35.992527, 32.440964, 48.061119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336216, 32.637680, 48.117516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179679, -0.032038, -0.983203,
		-0.479016, 0.870122, -0.115893,
		0.859220, 0.491794, 0.140996,
		36.593983, 32.785217, 48.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930164, 33.055393, 47.620209>,  <35.992527, 32.440964, 48.061119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930164, 33.055393, 47.620209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308792, 32.954720, 47.700859>,  <36.535969, 32.894314, 47.749249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308792, 32.954720, 47.700859>,  <35.930164, 33.055393, 47.620209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308792, 32.954720, 47.700859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130406, -0.273103, -0.953105,
		0.294949, 0.928477, -0.225690,
		0.946573, -0.251686, 0.201630,
		36.592766, 32.879215, 47.761349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297070, 33.393566, 47.182945>,  <35.930164, 33.055393, 47.620209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297070, 33.393566, 47.182945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532852, 33.099224, 47.316246>,  <36.674320, 32.922619, 47.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532852, 33.099224, 47.316246>,  <36.297070, 33.393566, 47.182945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532852, 33.099224, 47.316246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181505, -0.281339, -0.942287,
		0.787145, 0.615924, -0.032275,
		0.589457, -0.735858, 0.333248,
		36.709690, 32.878468, 47.416222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866493, 33.522404, 46.744522>,  <36.297070, 33.393566, 47.182945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866493, 33.522404, 46.744522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911808, 33.145905, 46.871784>,  <36.938999, 32.920006, 46.948143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911808, 33.145905, 46.871784>,  <36.866493, 33.522404, 46.744522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911808, 33.145905, 46.871784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293914, -0.274137, -0.915676,
		0.949094, 0.197249, 0.245588,
		0.113292, -0.941245, 0.318156,
		36.945797, 32.863529, 46.967232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437958, 33.271709, 46.359501>,  <36.866493, 33.522404, 46.744522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437958, 33.271709, 46.359501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236240, 32.950951, 46.487659>,  <37.115211, 32.758495, 46.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236240, 32.950951, 46.487659>,  <37.437958, 33.271709, 46.359501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236240, 32.950951, 46.487659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166609, -0.454414, -0.875071,
		0.847309, -0.387909, 0.362760,
		-0.504291, -0.801894, 0.320400,
		37.084953, 32.710381, 46.583778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655212, 32.742577, 46.005066>,  <37.437958, 33.271709, 46.359501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655212, 32.742577, 46.005066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299385, 32.594967, 46.112770>,  <37.085888, 32.506401, 46.177391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299385, 32.594967, 46.112770>,  <37.655212, 32.742577, 46.005066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299385, 32.594967, 46.112770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095204, -0.426725, -0.899356,
		0.446780, -0.825669, 0.344467,
		-0.889564, -0.369020, 0.269259,
		37.032516, 32.484261, 46.193546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650715, 31.984520, 46.022842>,  <37.655212, 32.742577, 46.005066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650715, 31.984520, 46.022842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271046, 32.099781, 45.972198>,  <37.043243, 32.168938, 45.941811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271046, 32.099781, 45.972198>,  <37.650715, 31.984520, 46.022842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271046, 32.099781, 45.972198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102220, -0.662691, -0.741884,
		-0.297681, -0.691237, 0.658466,
		-0.949177, 0.288153, -0.126612,
		36.986294, 32.186226, 45.934216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415424, 31.482494, 45.660862>,  <37.650715, 31.984520, 46.022842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415424, 31.482494, 45.660862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090321, 31.708136, 45.602612>,  <36.895256, 31.843521, 45.567661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090321, 31.708136, 45.602612>,  <37.415424, 31.482494, 45.660862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090321, 31.708136, 45.602612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163651, -0.460951, -0.872205,
		-0.559139, -0.685064, 0.466959,
		-0.812762, 0.564102, -0.145625,
		36.846493, 31.877367, 45.558926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802376, 30.995031, 45.601639>,  <37.415424, 31.482494, 45.660862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802376, 30.995031, 45.601639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714481, 31.346865, 45.432858>,  <36.661743, 31.557964, 45.331589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714481, 31.346865, 45.432858>,  <36.802376, 30.995031, 45.601639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714481, 31.346865, 45.432858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299919, -0.472491, -0.828734,
		-0.928312, -0.055553, 0.367628,
		-0.219740, 0.879583, -0.421958,
		36.648560, 31.610739, 45.306271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057606, 30.904535, 45.309128>,  <36.802376, 30.995031, 45.601639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057606, 30.904535, 45.309128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239761, 31.207747, 45.122360>,  <36.349056, 31.389673, 45.010300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239761, 31.207747, 45.122360>,  <36.057606, 30.904535, 45.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239761, 31.207747, 45.122360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384021, -0.305907, -0.871177,
		-0.803209, 0.576033, 0.151791,
		0.455393, 0.758028, -0.466916,
		36.376381, 31.435156, 44.982285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660847, 31.143349, 44.754360>,  <36.057606, 30.904535, 45.309128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660847, 31.143349, 44.754360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999424, 31.322153, 44.638618>,  <36.202568, 31.429436, 44.569176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999424, 31.322153, 44.638618>,  <35.660847, 31.143349, 44.754360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999424, 31.322153, 44.638618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222177, -0.197353, -0.954824,
		-0.483920, 0.872487, -0.067732,
		0.846439, 0.447011, -0.289350,
		36.253357, 31.456257, 44.551815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414314, 31.583858, 44.169506>,  <35.660847, 31.143349, 44.754360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414314, 31.583858, 44.169506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807819, 31.523094, 44.131260>,  <36.043922, 31.486635, 44.108311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807819, 31.523094, 44.131260>,  <35.414314, 31.583858, 44.169506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807819, 31.523094, 44.131260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111545, -0.100044, -0.988711,
		0.140630, 0.983318, -0.115364,
		0.983759, -0.151911, -0.095615,
		36.102947, 31.477522, 44.102577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593887, 31.978090, 43.613762>,  <35.414314, 31.583858, 44.169506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593887, 31.978090, 43.613762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900360, 31.724396, 43.655155>,  <36.084244, 31.572180, 43.679993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900360, 31.724396, 43.655155>,  <35.593887, 31.978090, 43.613762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900360, 31.724396, 43.655155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084984, -0.059622, -0.994597,
		0.636977, 0.770839, 0.008218,
		0.766184, -0.634234, 0.103487,
		36.130215, 31.534126, 43.686203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083706, 32.261955, 43.222733>,  <35.593887, 31.978090, 43.613762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083706, 32.261955, 43.222733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148087, 31.868320, 43.252827>,  <36.186714, 31.632139, 43.270885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148087, 31.868320, 43.252827>,  <36.083706, 32.261955, 43.222733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148087, 31.868320, 43.252827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013281, -0.078384, -0.996835,
		0.986873, 0.159444, -0.025686,
		0.160953, -0.984090, 0.075237,
		36.196373, 31.573093, 43.275398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481575, 32.211395, 42.673466>,  <36.083706, 32.261955, 43.222733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481575, 32.211395, 42.673466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357838, 31.844418, 42.773544>,  <36.283596, 31.624229, 42.833591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357838, 31.844418, 42.773544>,  <36.481575, 32.211395, 42.673466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357838, 31.844418, 42.773544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208756, -0.191166, -0.959102,
		0.927754, -0.348922, -0.132386,
		-0.309344, -0.917447, 0.250194,
		36.265034, 31.569183, 42.848602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611156, 31.836712, 42.080204>,  <36.481575, 32.211395, 42.673466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611156, 31.836712, 42.080204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361469, 31.602201, 42.286751>,  <36.211658, 31.461494, 42.410679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361469, 31.602201, 42.286751>,  <36.611156, 31.836712, 42.080204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361469, 31.602201, 42.286751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279605, -0.449523, -0.848381,
		0.729506, -0.673950, 0.116672,
		-0.624214, -0.586276, 0.516369,
		36.174206, 31.426319, 42.441662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686043, 31.163269, 41.860046>,  <36.611156, 31.836712, 42.080204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686043, 31.163269, 41.860046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317604, 31.172462, 42.015511>,  <36.096542, 31.177979, 42.108791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317604, 31.172462, 42.015511>,  <36.686043, 31.163269, 41.860046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317604, 31.172462, 42.015511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368806, -0.371436, -0.852066,
		0.124780, -0.928174, 0.350604,
		-0.921093, 0.022984, 0.388664,
		36.041275, 31.179358, 42.132111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286297, 30.550974, 41.630814>,  <36.686043, 31.163269, 41.860046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286297, 30.550974, 41.630814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997353, 30.802521, 41.745853>,  <35.823986, 30.953449, 41.814877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997353, 30.802521, 41.745853>,  <36.286297, 30.550974, 41.630814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997353, 30.802521, 41.745853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461525, -0.128730, -0.877737,
		-0.514960, -0.766780, 0.383229,
		-0.722365, 0.628869, 0.287598,
		35.780643, 30.991180, 41.832134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535007, 30.252327, 41.319607>,  <36.286297, 30.550974, 41.630814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535007, 30.252327, 41.319607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469799, 30.632971, 41.423809>,  <35.430672, 30.861357, 41.486328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469799, 30.632971, 41.423809>,  <35.535007, 30.252327, 41.319607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469799, 30.632971, 41.423809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739023, 0.057150, -0.671252,
		-0.653658, -0.301947, 0.693945,
		-0.163024, 0.951610, 0.260502,
		35.420891, 30.918453, 41.501961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819244, 30.302231, 41.308819>,  <35.535007, 30.252327, 41.319607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819244, 30.302231, 41.308819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988995, 30.662987, 41.276577>,  <35.090847, 30.879440, 41.257233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988995, 30.662987, 41.276577>,  <34.819244, 30.302231, 41.308819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988995, 30.662987, 41.276577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664384, 0.249661, -0.704460,
		-0.615222, 0.352510, 0.705152,
		0.424378, 0.901890, -0.080605,
		35.116306, 30.933554, 41.252396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209278, 30.809338, 41.322845>,  <34.819244, 30.302231, 41.308819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209278, 30.809338, 41.322845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512871, 31.024174, 41.175613>,  <34.695026, 31.153076, 41.087276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512871, 31.024174, 41.175613>,  <34.209278, 30.809338, 41.322845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512871, 31.024174, 41.175613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607677, 0.381288, -0.696669,
		-0.233831, 0.752431, 0.615768,
		0.758980, 0.537092, -0.368078,
		34.740566, 31.185301, 41.065189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897270, 31.473686, 41.159901>,  <34.209278, 30.809338, 41.322845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897270, 31.473686, 41.159901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242229, 31.470074, 40.957443>,  <34.449207, 31.467907, 40.835968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242229, 31.470074, 40.957443>,  <33.897270, 31.473686, 41.159901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242229, 31.470074, 40.957443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475295, 0.329679, -0.815724,
		0.174230, 0.944050, 0.280024,
		0.862403, -0.009030, -0.506143,
		34.500950, 31.467365, 40.805599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137863, 32.175983, 40.974640>,  <33.897270, 31.473686, 41.159901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137863, 32.175983, 40.974640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301842, 31.916903, 40.717758>,  <34.400230, 31.761454, 40.563629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301842, 31.916903, 40.717758>,  <34.137863, 32.175983, 40.974640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301842, 31.916903, 40.717758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449775, 0.468976, -0.760108,
		0.793501, 0.600453, -0.099064,
		0.409950, -0.647703, -0.642201,
		34.424828, 31.722591, 40.525097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321236, 32.652512, 40.427483>,  <34.137863, 32.175983, 40.974640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321236, 32.652512, 40.427483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336357, 32.286854, 40.266033>,  <34.345428, 32.067459, 40.169163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336357, 32.286854, 40.266033>,  <34.321236, 32.652512, 40.427483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336357, 32.286854, 40.266033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282947, 0.377593, -0.881683,
		0.958390, 0.147535, -0.244380,
		0.037803, -0.914143, -0.403626,
		34.347698, 32.012611, 40.144947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791222, 32.708622, 39.979309>,  <34.321236, 32.652512, 40.427483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791222, 32.708622, 39.979309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554043, 32.407135, 39.865944>,  <34.411736, 32.226242, 39.797924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554043, 32.407135, 39.865944>,  <34.791222, 32.708622, 39.979309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554043, 32.407135, 39.865944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337961, 0.552401, -0.761994,
		0.730889, -0.356037, -0.582271,
		-0.592945, -0.753718, -0.283417,
		34.376160, 32.181019, 39.780918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944813, 32.755642, 39.302856>,  <34.791222, 32.708622, 39.979309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944813, 32.755642, 39.302856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599865, 32.564407, 39.369492>,  <34.392895, 32.449669, 39.409473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599865, 32.564407, 39.369492>,  <34.944813, 32.755642, 39.302856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599865, 32.564407, 39.369492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428225, 0.513275, -0.743755,
		0.270072, -0.712730, -0.647361,
		-0.862372, -0.478083, 0.166587,
		34.341152, 32.420982, 39.419468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725567, 32.771706, 39.239571>,  <34.944813, 32.755642, 39.302856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725567, 32.771706, 39.239571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085793, 32.807640, 39.069439>,  <36.301929, 32.829201, 38.967358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085793, 32.807640, 39.069439>,  <35.725567, 32.771706, 39.239571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085793, 32.807640, 39.069439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416847, 0.099169, 0.903551,
		0.123352, -0.991007, 0.051860,
		0.900568, 0.089837, -0.425331,
		36.355965, 32.834591, 38.941841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211609, 32.255463, 39.581993>,  <35.725567, 32.771706, 39.239571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211609, 32.255463, 39.581993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401920, 32.569462, 39.423294>,  <36.516106, 32.757862, 39.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401920, 32.569462, 39.423294>,  <36.211609, 32.255463, 39.581993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401920, 32.569462, 39.423294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479192, 0.146911, 0.865328,
		0.737570, -0.601821, -0.306270,
		0.475778, 0.785002, -0.396745,
		36.544655, 32.804962, 39.304272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860329, 32.085461, 39.748169>,  <36.211609, 32.255463, 39.581993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860329, 32.085461, 39.748169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879490, 32.479294, 39.680878>,  <36.890987, 32.715595, 39.640503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879490, 32.479294, 39.680878>,  <36.860329, 32.085461, 39.748169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879490, 32.479294, 39.680878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588409, 0.108280, 0.801280,
		0.807143, -0.137365, -0.574152,
		0.047899, 0.984584, -0.168224,
		36.893860, 32.774670, 39.630409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556675, 32.187313, 40.001854>,  <36.860329, 32.085461, 39.748169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556675, 32.187313, 40.001854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367577, 32.538689, 39.973980>,  <37.254116, 32.749516, 39.957256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367577, 32.538689, 39.973980>,  <37.556675, 32.187313, 40.001854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367577, 32.538689, 39.973980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438681, 0.303189, 0.845952,
		0.764243, 0.369355, -0.528686,
		-0.472749, 0.878438, -0.069681,
		37.225754, 32.802219, 39.953075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030212, 32.735317, 40.079456>,  <37.556675, 32.187313, 40.001854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030212, 32.735317, 40.079456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663158, 32.842144, 40.197178>,  <37.442924, 32.906239, 40.267811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663158, 32.842144, 40.197178>,  <38.030212, 32.735317, 40.079456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663158, 32.842144, 40.197178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367954, 0.291136, 0.883091,
		0.150163, 0.918648, -0.365426,
		-0.917639, 0.267068, 0.294302,
		37.387867, 32.922264, 40.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075619, 33.409115, 40.327797>,  <38.030212, 32.735317, 40.079456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075619, 33.409115, 40.327797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738014, 33.276573, 40.496487>,  <37.535450, 33.197048, 40.597698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738014, 33.276573, 40.496487>,  <38.075619, 33.409115, 40.327797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738014, 33.276573, 40.496487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353924, 0.246688, 0.902155,
		-0.402962, 0.910688, -0.090935,
		-0.844014, -0.331350, 0.421720,
		37.484810, 33.177170, 40.623001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081188, 33.691002, 40.974792>,  <38.075619, 33.409115, 40.327797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081188, 33.691002, 40.974792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783264, 33.429089, 41.026184>,  <37.604507, 33.271938, 41.057018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783264, 33.429089, 41.026184>,  <38.081188, 33.691002, 40.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783264, 33.429089, 41.026184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201014, -0.036578, 0.978905,
		-0.636276, 0.754927, 0.158865,
		-0.744813, -0.654788, 0.128478,
		37.559822, 33.232651, 41.064728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768013, 34.066364, 41.503712>,  <38.081188, 33.691002, 40.974792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768013, 34.066364, 41.503712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685265, 33.676899, 41.465397>,  <37.635616, 33.443218, 41.442406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685265, 33.676899, 41.465397>,  <37.768013, 34.066364, 41.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685265, 33.676899, 41.465397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231499, -0.143842, 0.962142,
		-0.950584, 0.176868, 0.255160,
		-0.206875, -0.973667, -0.095790,
		37.623203, 33.384800, 41.436661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230125, 33.826614, 42.058086>,  <37.768013, 34.066364, 41.503712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230125, 33.826614, 42.058086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434776, 33.506390, 41.933285>,  <37.557568, 33.314255, 41.858406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434776, 33.506390, 41.933285>,  <37.230125, 33.826614, 42.058086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434776, 33.506390, 41.933285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154748, -0.271332, 0.949964,
		-0.845159, -0.534306, -0.014935,
		0.511624, -0.800560, -0.312002,
		37.588264, 33.266220, 41.839684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038944, 33.201126, 42.492085>,  <37.230125, 33.826614, 42.058086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038944, 33.201126, 42.492085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392456, 33.134048, 42.317356>,  <37.604561, 33.093803, 42.212517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392456, 33.134048, 42.317356>,  <37.038944, 33.201126, 42.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392456, 33.134048, 42.317356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399011, -0.217510, 0.890775,
		-0.244392, -0.961544, -0.125318,
		0.883778, -0.167695, -0.436824,
		37.657589, 33.083740, 42.186310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282375, 32.646637, 42.898750>,  <37.038944, 33.201126, 42.492085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282375, 32.646637, 42.898750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623444, 32.747208, 42.715561>,  <37.828083, 32.807549, 42.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623444, 32.747208, 42.715561>,  <37.282375, 32.646637, 42.898750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623444, 32.747208, 42.715561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516625, -0.275169, 0.810790,
		0.077834, -0.927936, -0.364522,
		0.852667, 0.251428, -0.457978,
		37.879242, 32.822636, 42.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728802, 32.133068, 43.047039>,  <37.282375, 32.646637, 42.898750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728802, 32.133068, 43.047039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964550, 32.437546, 42.938797>,  <38.105999, 32.620232, 42.873852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964550, 32.437546, 42.938797>,  <37.728802, 32.133068, 43.047039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964550, 32.437546, 42.938797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555853, -0.139021, 0.819573,
		0.586231, -0.633453, -0.505045,
		0.589373, 0.761190, -0.270608,
		38.141361, 32.665901, 42.857613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368980, 31.992151, 43.304005>,  <37.728802, 32.133068, 43.047039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368980, 31.992151, 43.304005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420261, 32.384079, 43.242664>,  <38.451031, 32.619236, 43.205860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420261, 32.384079, 43.242664>,  <38.368980, 31.992151, 43.304005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420261, 32.384079, 43.242664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539217, 0.060912, 0.839961,
		0.832351, -0.190377, -0.520527,
		0.128203, 0.979820, -0.153354,
		38.458721, 32.678024, 43.196659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015888, 32.044926, 43.456928>,  <38.368980, 31.992151, 43.304005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015888, 32.044926, 43.456928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850185, 32.408512, 43.475590>,  <38.750763, 32.626663, 43.486786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850185, 32.408512, 43.475590>,  <39.015888, 32.044926, 43.456928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850185, 32.408512, 43.475590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359909, 0.116513, 0.925684,
		0.835979, 0.400258, -0.375410,
		-0.414253, 0.908965, 0.046654,
		38.725910, 32.681202, 43.489586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573162, 32.440174, 43.714771>,  <39.015888, 32.044926, 43.456928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573162, 32.440174, 43.714771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245617, 32.657024, 43.790207>,  <39.049091, 32.787136, 43.835468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245617, 32.657024, 43.790207>,  <39.573162, 32.440174, 43.714771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245617, 32.657024, 43.790207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353506, 0.217460, 0.909805,
		0.452222, 0.811669, -0.369715,
		-0.818859, 0.542130, 0.188589,
		38.999958, 32.819664, 43.846783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798573, 32.981110, 44.012436>,  <39.573162, 32.440174, 43.714771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798573, 32.981110, 44.012436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410885, 32.987892, 44.110683>,  <39.178272, 32.991962, 44.169632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410885, 32.987892, 44.110683>,  <39.798573, 32.981110, 44.012436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410885, 32.987892, 44.110683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244194, 0.193377, 0.950250,
		-0.031381, 0.980978, -0.191566,
		-0.969219, 0.016960, 0.245617,
		39.120121, 32.992981, 44.184368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682838, 33.547218, 44.428158>,  <39.798573, 32.981110, 44.012436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682838, 33.547218, 44.428158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354034, 33.339138, 44.520836>,  <39.156750, 33.214291, 44.576443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354034, 33.339138, 44.520836>,  <39.682838, 33.547218, 44.428158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354034, 33.339138, 44.520836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086008, 0.288785, 0.953523,
		-0.562935, 0.803736, -0.192643,
		-0.822013, -0.520203, 0.231695,
		39.107430, 33.183079, 44.590343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125404, 33.983269, 44.697926>,  <39.682838, 33.547218, 44.428158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125404, 33.983269, 44.697926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067669, 33.616394, 44.846481>,  <39.033028, 33.396267, 44.935616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067669, 33.616394, 44.846481>,  <39.125404, 33.983269, 44.697926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067669, 33.616394, 44.846481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145616, 0.351546, 0.924777,
		-0.978756, 0.187559, 0.082817,
		-0.144336, -0.917190, 0.371389,
		39.024368, 33.341236, 44.957897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972458, 34.118240, 45.326916>,  <39.125404, 33.983269, 44.697926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972458, 34.118240, 45.326916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003525, 33.721462, 45.366951>,  <39.022167, 33.483395, 45.390972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003525, 33.721462, 45.366951>,  <38.972458, 34.118240, 45.326916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003525, 33.721462, 45.366951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040991, 0.103483, 0.993786,
		-0.996136, -0.073084, 0.048699,
		0.077669, -0.991943, 0.100088,
		39.026825, 33.423878, 45.396976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475471, 33.842690, 45.750553>,  <38.972458, 34.118240, 45.326916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475471, 33.842690, 45.750553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783680, 33.590210, 45.786087>,  <38.968605, 33.438721, 45.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783680, 33.590210, 45.786087>,  <38.475471, 33.842690, 45.750553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783680, 33.590210, 45.786087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152799, -0.047598, 0.987110,
		-0.618836, -0.774158, -0.133122,
		0.770516, -0.631200, 0.088835,
		39.014835, 33.400848, 45.812737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233257, 33.307156, 46.244888>,  <38.475471, 33.842690, 45.750553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233257, 33.307156, 46.244888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632854, 33.294041, 46.257130>,  <38.872612, 33.286171, 46.264473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632854, 33.294041, 46.257130>,  <38.233257, 33.307156, 46.244888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632854, 33.294041, 46.257130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033801, -0.101842, 0.994226,
		-0.029479, -0.994260, -0.102847,
		0.998994, -0.032785, 0.030605,
		38.932552, 33.284206, 46.266312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410854, 32.749176, 46.735241>,  <38.233257, 33.307156, 46.244888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410854, 32.749176, 46.735241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751579, 32.958454, 46.724857>,  <38.956017, 33.084023, 46.718628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751579, 32.958454, 46.724857>,  <38.410854, 32.749176, 46.735241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751579, 32.958454, 46.724857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034020, -0.005801, 0.999404,
		0.522737, -0.852191, -0.022741,
		0.851815, 0.523199, -0.025959,
		39.007122, 33.115414, 46.717068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897453, 32.433731, 47.212730>,  <38.410854, 32.749176, 46.735241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897453, 32.433731, 47.212730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991405, 32.820087, 47.169121>,  <39.047779, 33.051903, 47.142956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991405, 32.820087, 47.169121>,  <38.897453, 32.433731, 47.212730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991405, 32.820087, 47.169121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092984, 0.089323, 0.991653,
		0.967565, -0.243062, -0.068832,
		0.234885, 0.965889, -0.109026,
		39.061871, 33.109856, 47.136414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447357, 32.556450, 47.689522>,  <38.897453, 32.433731, 47.212730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447357, 32.556450, 47.689522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310699, 32.922752, 47.604977>,  <39.228706, 33.142532, 47.554249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310699, 32.922752, 47.604977>,  <39.447357, 32.556450, 47.689522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310699, 32.922752, 47.604977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135019, 0.270387, 0.953237,
		0.930080, 0.297131, -0.216020,
		-0.341645, 0.915753, -0.211363,
		39.208206, 33.197479, 47.541569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795002, 32.917053, 48.161285>,  <39.447357, 32.556450, 47.689522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795002, 32.917053, 48.161285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545174, 33.190090, 48.009506>,  <39.395275, 33.353912, 47.918438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545174, 33.190090, 48.009506>,  <39.795002, 32.917053, 48.161285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545174, 33.190090, 48.009506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081679, 0.540301, 0.837499,
		0.776684, 0.492086, -0.393210,
		-0.624573, 0.682589, -0.379450,
		39.357803, 33.394867, 47.895672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141621, 33.653839, 48.191479>,  <39.795002, 32.917053, 48.161285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141621, 33.653839, 48.191479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742649, 33.681854, 48.197590>,  <39.503265, 33.698666, 48.201256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742649, 33.681854, 48.197590>,  <40.141621, 33.653839, 48.191479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742649, 33.681854, 48.197590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049996, 0.526833, 0.848497,
		0.051378, 0.847078, -0.528979,
		-0.997427, 0.070041, 0.015283,
		39.443420, 33.702866, 48.202175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994568, 34.381630, 48.359974>,  <40.141621, 33.653839, 48.191479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994568, 34.381630, 48.359974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667500, 34.172615, 48.456612>,  <39.471256, 34.047207, 48.514595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667500, 34.172615, 48.456612>,  <39.994568, 34.381630, 48.359974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667500, 34.172615, 48.456612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062000, 0.497157, 0.865443,
		-0.572335, 0.692670, -0.438909,
		-0.817673, -0.522535, 0.241594,
		39.422199, 34.015854, 48.529091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462753, 34.909504, 48.526947>,  <39.994568, 34.381630, 48.359974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462753, 34.909504, 48.526947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335537, 34.564777, 48.684998>,  <39.259209, 34.357941, 48.779827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335537, 34.564777, 48.684998>,  <39.462753, 34.909504, 48.526947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335537, 34.564777, 48.684998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247100, 0.477708, 0.843052,
		-0.915310, 0.170489, -0.364885,
		-0.318040, -0.861817, 0.395124,
		39.240124, 34.306232, 48.803535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804356, 35.054768, 48.806671>,  <39.462753, 34.909504, 48.526947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804356, 35.054768, 48.806671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960815, 34.756554, 49.022518>,  <39.054691, 34.577625, 49.152027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960815, 34.756554, 49.022518>,  <38.804356, 35.054768, 48.806671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960815, 34.756554, 49.022518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337935, 0.429031, 0.837695,
		-0.856041, -0.510017, -0.084127,
		0.391145, -0.745530, 0.539620,
		39.078159, 34.532894, 49.184402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297127, 34.916214, 49.329025>,  <38.804356, 35.054768, 48.806671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297127, 34.916214, 49.329025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640366, 34.752941, 49.453640>,  <38.846310, 34.654976, 49.528408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640366, 34.752941, 49.453640>,  <38.297127, 34.916214, 49.329025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640366, 34.752941, 49.453640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222865, 0.250524, 0.942109,
		-0.462602, -0.877851, 0.124004,
		0.858097, -0.408185, 0.311535,
		38.897797, 34.630486, 49.547100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131599, 34.426643, 49.890877>,  <38.297127, 34.916214, 49.329025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131599, 34.426643, 49.890877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504120, 34.567455, 49.928307>,  <38.727631, 34.651943, 49.950764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504120, 34.567455, 49.928307>,  <38.131599, 34.426643, 49.890877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504120, 34.567455, 49.928307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220765, 0.341168, 0.913711,
		0.289729, -0.871596, 0.395445,
		0.931300, 0.352029, 0.093572,
		38.783508, 34.673065, 49.956379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206974, 34.258286, 50.550739>,  <38.131599, 34.426643, 49.890877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206974, 34.258286, 50.550739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505013, 34.509090, 50.459808>,  <38.683838, 34.659573, 50.405251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505013, 34.509090, 50.459808>,  <38.206974, 34.258286, 50.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505013, 34.509090, 50.459808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124132, 0.465264, 0.876425,
		0.655302, -0.624804, 0.424500,
		0.745098, 0.627017, -0.227330,
		38.728542, 34.697197, 50.391609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550732, 34.339935, 51.271992>,  <38.206974, 34.258286, 50.550739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550732, 34.339935, 51.271992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665749, 34.630283, 51.022057>,  <38.734756, 34.804493, 50.872093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665749, 34.630283, 51.022057>,  <38.550732, 34.339935, 51.271992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665749, 34.630283, 51.022057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086162, 0.630143, 0.771683,
		0.953886, -0.275726, 0.118647,
		0.287538, 0.725875, -0.624842,
		38.752010, 34.848045, 50.834602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174843, 34.606617, 51.625469>,  <38.550732, 34.339935, 51.271992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174843, 34.606617, 51.625469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024059, 34.883827, 51.379665>,  <38.933590, 35.050152, 51.232185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024059, 34.883827, 51.379665>,  <39.174843, 34.606617, 51.625469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024059, 34.883827, 51.379665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339621, 0.720659, 0.604407,
		0.861718, 0.019138, -0.507026,
		-0.376960, 0.693025, -0.614506,
		38.910973, 35.091736, 51.195312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667519, 35.126778, 51.689667>,  <39.174843, 34.606617, 51.625469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667519, 35.126778, 51.689667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335354, 35.294945, 51.543419>,  <39.136055, 35.395844, 51.455669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335354, 35.294945, 51.543419>,  <39.667519, 35.126778, 51.689667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335354, 35.294945, 51.543419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104916, 0.762472, 0.638458,
		0.547188, 0.491822, -0.677271,
		-0.830408, 0.420413, -0.365616,
		39.086231, 35.421070, 51.433735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821434, 35.818871, 51.597370>,  <39.667519, 35.126778, 51.689667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821434, 35.818871, 51.597370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424831, 35.777508, 51.628937>,  <39.186871, 35.752689, 51.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424831, 35.777508, 51.628937>,  <39.821434, 35.818871, 51.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424831, 35.777508, 51.628937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015299, 0.695150, 0.718702,
		-0.129177, 0.711388, -0.690826,
		-0.991504, -0.103408, 0.078914,
		39.127380, 35.746487, 51.652611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661423, 36.413734, 51.753624>,  <39.821434, 35.818871, 51.597370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661423, 36.413734, 51.753624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319328, 36.225849, 51.841206>,  <39.114071, 36.113117, 51.893757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319328, 36.225849, 51.841206>,  <39.661423, 36.413734, 51.753624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319328, 36.225849, 51.841206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169512, 0.652805, 0.738317,
		-0.489733, 0.594319, -0.637924,
		-0.855235, -0.469714, 0.218956,
		39.062759, 36.084934, 51.906891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102890, 36.942974, 51.865173>,  <39.661423, 36.413734, 51.753624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102890, 36.942974, 51.865173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027660, 36.597530, 52.052277>,  <38.982521, 36.390263, 52.164539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027660, 36.597530, 52.052277>,  <39.102890, 36.942974, 51.865173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027660, 36.597530, 52.052277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287393, 0.503806, 0.814607,
		-0.939167, 0.018774, -0.342948,
		-0.188073, -0.863613, 0.467762,
		38.971237, 36.338448, 52.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664631, 37.289680, 51.517349>,  <39.102890, 36.942974, 51.865173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664631, 37.289680, 51.517349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972504, 37.543854, 51.492649>,  <40.157227, 37.696358, 51.477829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972504, 37.543854, 51.492649>,  <39.664631, 37.289680, 51.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972504, 37.543854, 51.492649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231204, 0.187274, -0.954711,
		-0.595092, 0.749101, 0.291056,
		0.769682, 0.635434, -0.061750,
		40.203407, 37.734486, 51.474125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380810, 37.875931, 51.065563>,  <39.664631, 37.289680, 51.517349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380810, 37.875931, 51.065563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777184, 37.918144, 51.032322>,  <40.015007, 37.943470, 51.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777184, 37.918144, 51.032322>,  <39.380810, 37.875931, 51.065563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777184, 37.918144, 51.032322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093311, 0.095793, -0.991018,
		-0.096620, 0.989792, 0.104771,
		0.990938, 0.105529, -0.083103,
		40.074467, 37.949802, 51.007389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581867, 38.466930, 50.660202>,  <39.380810, 37.875931, 51.065563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581867, 38.466930, 50.660202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904392, 38.231297, 50.638885>,  <40.097908, 38.089916, 50.626095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904392, 38.231297, 50.638885>,  <39.581867, 38.466930, 50.660202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904392, 38.231297, 50.638885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025929, 0.054816, -0.998160,
		0.590920, 0.806212, 0.028924,
		0.806314, -0.589082, -0.053296,
		40.146286, 38.054573, 50.622898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774895, 38.627380, 50.017879>,  <39.581867, 38.466930, 50.660202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774895, 38.627380, 50.017879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016209, 38.319221, 50.100376>,  <40.160995, 38.134327, 50.149872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016209, 38.319221, 50.100376>,  <39.774895, 38.627380, 50.017879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016209, 38.319221, 50.100376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107132, -0.177972, -0.978186,
		0.790301, 0.612215, -0.024832,
		0.603280, -0.770401, 0.206239,
		40.197193, 38.088100, 50.162247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438446, 38.705822, 49.695919>,  <39.774895, 38.627380, 50.017879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438446, 38.705822, 49.695919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387993, 38.312561, 49.748829>,  <40.357719, 38.076603, 49.780575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387993, 38.312561, 49.748829>,  <40.438446, 38.705822, 49.695919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387993, 38.312561, 49.748829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240914, -0.159705, -0.957316,
		0.962315, -0.088885, 0.257000,
		-0.126136, -0.983155, 0.132273,
		40.350151, 38.017616, 49.788509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058384, 38.393898, 49.279892>,  <40.438446, 38.705822, 49.695919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058384, 38.393898, 49.279892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765549, 38.125156, 49.324898>,  <40.589848, 37.963913, 49.351902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765549, 38.125156, 49.324898>,  <41.058384, 38.393898, 49.279892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765549, 38.125156, 49.324898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094486, -0.263723, -0.959960,
		0.674627, -0.692142, 0.256549,
		-0.732087, -0.671855, 0.112517,
		40.545921, 37.923599, 49.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182884, 37.887543, 48.849655>,  <41.058384, 38.393898, 49.279892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182884, 37.887543, 48.849655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802189, 37.787548, 48.920864>,  <40.573772, 37.727551, 48.963589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802189, 37.787548, 48.920864>,  <41.182884, 37.887543, 48.849655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802189, 37.787548, 48.920864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041370, -0.470283, -0.881545,
		0.304098, -0.846369, 0.437246,
		-0.951742, -0.249987, 0.178027,
		40.516666, 37.712551, 48.974274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054680, 37.222027, 48.643600>,  <41.182884, 37.887543, 48.849655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054680, 37.222027, 48.643600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694511, 37.395477, 48.629726>,  <40.478409, 37.499546, 48.621403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694511, 37.395477, 48.629726>,  <41.054680, 37.222027, 48.643600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694511, 37.395477, 48.629726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164718, -0.413652, -0.895410,
		-0.402624, -0.800535, 0.443889,
		-0.900423, 0.433630, -0.034684,
		40.424385, 37.525566, 48.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730030, 36.776985, 48.328045>,  <41.054680, 37.222027, 48.643600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730030, 36.776985, 48.328045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465302, 37.073704, 48.284710>,  <40.306465, 37.251736, 48.258709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465302, 37.073704, 48.284710>,  <40.730030, 36.776985, 48.328045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465302, 37.073704, 48.284710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278436, -0.377403, -0.883199,
		-0.696039, -0.554353, 0.456314,
		-0.661819, 0.741795, -0.108335,
		40.266754, 37.296242, 48.252209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928802, 36.540646, 48.267338>,  <40.730030, 36.776985, 48.328045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928802, 36.540646, 48.267338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021267, 36.862839, 48.049065>,  <40.076744, 37.056152, 47.918102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021267, 36.862839, 48.049065>,  <39.928802, 36.540646, 48.267338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021267, 36.862839, 48.049065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269606, -0.485872, -0.831409,
		-0.934814, 0.339308, 0.104848,
		0.231161, 0.805480, -0.545679,
		40.090614, 37.104485, 47.885361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567589, 36.455132, 47.745632>,  <39.928802, 36.540646, 48.267338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567589, 36.455132, 47.745632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757294, 36.791496, 47.641373>,  <39.871117, 36.993317, 47.578819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757294, 36.791496, 47.641373>,  <39.567589, 36.455132, 47.745632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757294, 36.791496, 47.641373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314259, -0.114852, -0.942364,
		-0.822384, 0.528839, 0.209795,
		0.474263, 0.840915, -0.260645,
		39.899574, 37.043770, 47.563179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076862, 36.938030, 47.256531>,  <39.567589, 36.455132, 47.745632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076862, 36.938030, 47.256531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471699, 36.956161, 47.195084>,  <39.708599, 36.967041, 47.158215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471699, 36.956161, 47.195084>,  <39.076862, 36.938030, 47.256531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471699, 36.956161, 47.195084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118410, -0.439345, -0.890480,
		-0.107861, 0.897174, -0.428305,
		0.987089, 0.045333, -0.153622,
		39.767826, 36.969761, 47.148998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120312, 37.051052, 46.544556>,  <39.076862, 36.938030, 47.256531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120312, 37.051052, 46.544556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498840, 36.970741, 46.645878>,  <39.725956, 36.922554, 46.706673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498840, 36.970741, 46.645878>,  <39.120312, 37.051052, 46.544556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498840, 36.970741, 46.645878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158093, -0.396048, -0.904518,
		0.281926, 0.896011, -0.343048,
		0.946321, -0.200774, 0.253309,
		39.782738, 36.910511, 46.721870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530052, 37.233868, 45.983711>,  <39.120312, 37.051052, 46.544556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530052, 37.233868, 45.983711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766125, 36.976730, 46.179031>,  <39.907768, 36.822449, 46.296223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766125, 36.976730, 46.179031>,  <39.530052, 37.233868, 45.983711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766125, 36.976730, 46.179031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383007, -0.309493, -0.870356,
		0.710630, 0.700689, 0.063559,
		0.590178, -0.642844, 0.488304,
		39.943176, 36.783878, 46.325523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262867, 37.258495, 45.709427>,  <39.530052, 37.233868, 45.983711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262867, 37.258495, 45.709427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260689, 36.898548, 45.883881>,  <40.259384, 36.682579, 45.988552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260689, 36.898548, 45.883881>,  <40.262867, 37.258495, 45.709427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260689, 36.898548, 45.883881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343903, -0.411225, -0.844171,
		0.938989, 0.145394, 0.311705,
		-0.005443, -0.899864, 0.436138,
		40.259056, 36.628590, 46.014721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918030, 36.882496, 45.554840>,  <40.262867, 37.258495, 45.709427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918030, 36.882496, 45.554840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636040, 36.605129, 45.614422>,  <40.466846, 36.438709, 45.650169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636040, 36.605129, 45.614422>,  <40.918030, 36.882496, 45.554840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636040, 36.605129, 45.614422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261475, -0.449339, -0.854240,
		0.659272, -0.563270, 0.498083,
		-0.704975, -0.693413, 0.148955,
		40.424545, 36.397106, 45.659107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209129, 36.203106, 45.476933>,  <40.918030, 36.882496, 45.554840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209129, 36.203106, 45.476933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818253, 36.128422, 45.436462>,  <40.583725, 36.083611, 45.412178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818253, 36.128422, 45.436462>,  <41.209129, 36.203106, 45.476933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818253, 36.128422, 45.436462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189151, -0.548651, -0.814373,
		0.096541, -0.814936, 0.571453,
		-0.977191, -0.186711, -0.101178,
		40.525097, 36.072407, 45.406109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029686, 35.427757, 45.280560>,  <41.209129, 36.203106, 45.476933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029686, 35.427757, 45.280560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693359, 35.612827, 45.168156>,  <40.491566, 35.723869, 45.100712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693359, 35.612827, 45.168156>,  <41.029686, 35.427757, 45.280560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693359, 35.612827, 45.168156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055814, -0.442254, -0.895151,
		-0.538443, -0.768338, 0.346028,
		-0.840812, 0.462675, -0.281013,
		40.441116, 35.751629, 45.083851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608158, 34.924221, 45.058674>,  <41.029686, 35.427757, 45.280560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608158, 34.924221, 45.058674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472321, 35.257370, 44.883858>,  <40.390820, 35.457260, 44.778969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472321, 35.257370, 44.883858>,  <40.608158, 34.924221, 45.058674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472321, 35.257370, 44.883858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056399, -0.445786, -0.893361,
		-0.938881, -0.328025, 0.104411,
		-0.339590, 0.832871, -0.437040,
		40.370445, 35.507233, 44.752747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211876, 34.671913, 44.509823>,  <40.608158, 34.924221, 45.058674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211876, 34.671913, 44.509823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212345, 35.065758, 44.439922>,  <40.212627, 35.302063, 44.397984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212345, 35.065758, 44.439922>,  <40.211876, 34.671913, 44.509823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212345, 35.065758, 44.439922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278162, -0.167532, -0.945811,
		-0.960533, 0.049721, 0.273685,
		0.001176, 0.984612, -0.174751,
		40.212696, 35.361141, 44.387497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557907, 34.922459, 44.365536>,  <40.211876, 34.671913, 44.509823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557907, 34.922459, 44.365536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801918, 35.176556, 44.176083>,  <39.948326, 35.329014, 44.062408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801918, 35.176556, 44.176083>,  <39.557907, 34.922459, 44.365536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801918, 35.176556, 44.176083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500090, -0.155001, -0.851989,
		-0.614633, 0.756600, 0.223123,
		0.610030, 0.635242, -0.473637,
		39.984928, 35.367126, 44.033993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138130, 35.262680, 43.975067>,  <39.557907, 34.922459, 44.365536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138130, 35.262680, 43.975067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502625, 35.334721, 43.826897>,  <39.721321, 35.377945, 43.737995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502625, 35.334721, 43.826897>,  <39.138130, 35.262680, 43.975067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502625, 35.334721, 43.826897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323158, -0.245018, -0.914076,
		-0.255387, 0.952644, -0.165067,
		0.911233, 0.180101, -0.370429,
		39.775993, 35.388752, 43.715767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081902, 35.617168, 43.326031>,  <39.138130, 35.262680, 43.975067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081902, 35.617168, 43.326031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446354, 35.457584, 43.284725>,  <39.665028, 35.361832, 43.259941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446354, 35.457584, 43.284725>,  <39.081902, 35.617168, 43.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446354, 35.457584, 43.284725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261549, -0.366163, -0.893038,
		0.318477, 0.840686, -0.437972,
		0.911134, -0.398963, -0.103266,
		39.719692, 35.337894, 43.253746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318401, 35.802612, 42.613319>,  <39.081902, 35.617168, 43.326031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318401, 35.802612, 42.613319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543297, 35.482105, 42.695164>,  <39.678234, 35.289803, 42.744270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543297, 35.482105, 42.695164>,  <39.318401, 35.802612, 42.613319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543297, 35.482105, 42.695164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104304, -0.314156, -0.943624,
		0.820373, 0.509197, -0.260205,
		0.562236, -0.801264, 0.204614,
		39.711967, 35.241726, 42.756550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808701, 35.768246, 42.042404>,  <39.318401, 35.802612, 42.613319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808701, 35.768246, 42.042404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839474, 35.402569, 42.201572>,  <39.857937, 35.183163, 42.297073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839474, 35.402569, 42.201572>,  <39.808701, 35.768246, 42.042404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839474, 35.402569, 42.201572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049790, -0.395082, -0.917295,
		0.995792, 0.090384, 0.015122,
		0.076934, -0.914189, 0.397920,
		39.862553, 35.128311, 42.320950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287903, 35.404209, 41.587746>,  <39.808701, 35.768246, 42.042404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287903, 35.404209, 41.587746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100983, 35.118877, 41.796665>,  <39.988831, 34.947678, 41.922016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100983, 35.118877, 41.796665>,  <40.287903, 35.404209, 41.587746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100983, 35.118877, 41.796665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053904, -0.566680, -0.822173,
		0.882456, -0.412353, 0.226356,
		-0.467297, -0.713329, 0.522297,
		39.960793, 34.904877, 41.953354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621540, 34.741833, 41.422203>,  <40.287903, 35.404209, 41.587746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621540, 34.741833, 41.422203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262272, 34.667175, 41.581425>,  <40.046711, 34.622379, 41.676956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262272, 34.667175, 41.581425>,  <40.621540, 34.741833, 41.422203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262272, 34.667175, 41.581425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202054, -0.628866, -0.750801,
		0.390456, -0.754778, 0.527118,
		-0.898175, -0.186648, 0.398050,
		39.992821, 34.611179, 41.700840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591476, 34.027016, 41.515114>,  <40.621540, 34.741833, 41.422203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591476, 34.027016, 41.515114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219727, 34.173832, 41.499428>,  <39.996677, 34.261921, 41.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219727, 34.173832, 41.499428>,  <40.591476, 34.027016, 41.515114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219727, 34.173832, 41.499428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238443, -0.678043, -0.695271,
		-0.281778, -0.636820, 0.717677,
		-0.929379, 0.367038, -0.039212,
		39.940914, 34.283943, 41.487663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214428, 33.457035, 41.343151>,  <40.591476, 34.027016, 41.515114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214428, 33.457035, 41.343151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964848, 33.755104, 41.248993>,  <39.815098, 33.933945, 41.192497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964848, 33.755104, 41.248993>,  <40.214428, 33.457035, 41.343151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964848, 33.755104, 41.248993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272560, -0.489819, -0.828124,
		-0.732391, -0.452550, 0.508726,
		-0.623951, 0.745168, -0.235392,
		39.777660, 33.978653, 41.178375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596241, 33.078159, 41.062107>,  <40.214428, 33.457035, 41.343151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596241, 33.078159, 41.062107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608501, 33.460194, 40.944206>,  <39.615856, 33.689415, 40.873466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608501, 33.460194, 40.944206>,  <39.596241, 33.078159, 41.062107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608501, 33.460194, 40.944206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052690, -0.296020, -0.953727,
		-0.998140, 0.013704, -0.059397,
		0.030652, 0.955083, -0.294748,
		39.617699, 33.746719, 40.855782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241753, 33.081192, 40.368259>,  <39.596241, 33.078159, 41.062107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241753, 33.081192, 40.368259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407921, 33.444042, 40.395264>,  <39.507622, 33.661751, 40.411465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407921, 33.444042, 40.395264>,  <39.241753, 33.081192, 40.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407921, 33.444042, 40.395264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099374, 0.028515, -0.994641,
		-0.904185, 0.419903, -0.078298,
		0.415421, 0.907121, 0.067510,
		39.532547, 33.716179, 40.415516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808903, 33.568157, 39.914658>,  <39.241753, 33.081192, 40.368259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808903, 33.568157, 39.914658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138649, 33.780205, 39.994061>,  <39.336494, 33.907433, 40.041702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138649, 33.780205, 39.994061>,  <38.808903, 33.568157, 39.914658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138649, 33.780205, 39.994061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013622, 0.332005, -0.943179,
		-0.565899, 0.780225, 0.266471,
		0.824362, 0.530115, 0.198509,
		39.385956, 33.939240, 40.053612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691830, 34.300232, 39.570698>,  <38.808903, 33.568157, 39.914658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691830, 34.300232, 39.570698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089134, 34.274307, 39.609119>,  <39.327518, 34.258751, 39.632172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089134, 34.274307, 39.609119>,  <38.691830, 34.300232, 39.570698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089134, 34.274307, 39.609119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114864, 0.441506, -0.889876,
		0.015266, 0.894915, 0.445976,
		0.993264, -0.064811, 0.096053,
		39.387112, 34.254864, 39.637936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956291, 34.998497, 39.427429>,  <38.691830, 34.300232, 39.570698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956291, 34.998497, 39.427429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208981, 34.702007, 39.336643>,  <39.360592, 34.524113, 39.282173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208981, 34.702007, 39.336643>,  <38.956291, 34.998497, 39.427429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208981, 34.702007, 39.336643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273513, 0.487076, -0.829426,
		0.725340, 0.461889, 0.510431,
		0.631721, -0.741226, -0.226964,
		39.398499, 34.479641, 39.268555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623367, 35.352509, 39.132778>,  <38.956291, 34.998497, 39.427429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623367, 35.352509, 39.132778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663025, 34.975075, 39.006405>,  <39.686821, 34.748615, 38.930580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663025, 34.975075, 39.006405>,  <39.623367, 35.352509, 39.132778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663025, 34.975075, 39.006405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452685, 0.325510, -0.830132,
		0.886141, -0.060712, 0.459421,
		0.099147, -0.943588, -0.315931,
		39.692768, 34.691998, 38.911625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362732, 35.288788, 38.875378>,  <39.623367, 35.352509, 39.132778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362732, 35.288788, 38.875378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161282, 34.992744, 38.697117>,  <40.040413, 34.815121, 38.590160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161282, 34.992744, 38.697117>,  <40.362732, 35.288788, 38.875378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161282, 34.992744, 38.697117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493261, 0.177166, -0.851649,
		0.709265, -0.648733, 0.275840,
		-0.503623, -0.740106, -0.445653,
		40.010193, 34.770714, 38.563419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901711, 34.978207, 38.360813>,  <40.362732, 35.288788, 38.875378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901711, 34.978207, 38.360813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563065, 34.804497, 38.237755>,  <40.359875, 34.700272, 38.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563065, 34.804497, 38.237755>,  <40.901711, 34.978207, 38.360813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563065, 34.804497, 38.237755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280967, 0.126219, -0.951381,
		0.451993, -0.891893, 0.015158,
		-0.846617, -0.434277, -0.307642,
		40.309078, 34.674213, 38.145462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009411, 34.649319, 37.770275>,  <40.901711, 34.978207, 38.360813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009411, 34.649319, 37.770275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613873, 34.671467, 37.714966>,  <40.376549, 34.684753, 37.681778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613873, 34.671467, 37.714966>,  <41.009411, 34.649319, 37.770275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613873, 34.671467, 37.714966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141348, 0.056006, -0.988374,
		-0.046982, -0.996894, -0.063207,
		-0.988845, 0.055370, -0.138278,
		40.317219, 34.688076, 37.673481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959286, 34.349369, 37.172989>,  <41.009411, 34.649319, 37.770275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959286, 34.349369, 37.172989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611698, 34.545155, 37.202175>,  <40.403145, 34.662624, 37.219685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611698, 34.545155, 37.202175>,  <40.959286, 34.349369, 37.172989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611698, 34.545155, 37.202175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047854, 0.229854, -0.972048,
		-0.492552, -0.841185, -0.223158,
		-0.868966, 0.489463, 0.072961,
		40.351009, 34.691994, 37.224064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532146, 34.088909, 36.676178>,  <40.959286, 34.349369, 37.172989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532146, 34.088909, 36.676178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417442, 34.465637, 36.746307>,  <40.348618, 34.691673, 36.788383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417442, 34.465637, 36.746307>,  <40.532146, 34.088909, 36.676178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417442, 34.465637, 36.746307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335290, 0.270105, -0.902565,
		-0.897411, -0.200039, -0.393240,
		-0.286764, 0.941822, 0.175324,
		40.331413, 34.748184, 36.798904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197948, 34.378983, 36.076202>,  <40.532146, 34.088909, 36.676178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197948, 34.378983, 36.076202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358349, 34.672192, 36.295975>,  <40.454590, 34.848118, 36.427837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358349, 34.672192, 36.295975>,  <40.197948, 34.378983, 36.076202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358349, 34.672192, 36.295975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456559, 0.360053, -0.813582,
		-0.794199, 0.577095, -0.190287,
		0.401001, 0.733023, 0.549432,
		40.478649, 34.892097, 36.460804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998486, 35.057735, 35.825573>,  <40.197948, 34.378983, 36.076202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998486, 35.057735, 35.825573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362579, 35.081985, 35.989422>,  <40.581036, 35.096535, 36.087730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362579, 35.081985, 35.989422>,  <39.998486, 35.057735, 35.825573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362579, 35.081985, 35.989422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359702, 0.374308, -0.854698,
		-0.205140, 0.925321, 0.318903,
		0.910237, 0.060623, 0.409625,
		40.635651, 35.100174, 36.112309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335983, 35.713951, 35.724377>,  <39.998486, 35.057735, 35.825573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335983, 35.713951, 35.724377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627602, 35.442272, 35.758293>,  <40.802570, 35.279266, 35.778645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627602, 35.442272, 35.758293>,  <40.335983, 35.713951, 35.724377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627602, 35.442272, 35.758293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520601, 0.469807, -0.712920,
		0.444378, 0.563891, 0.696100,
		0.729042, -0.679197, 0.084790,
		40.846313, 35.238514, 35.783730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015915, 36.027779, 35.943665>,  <40.335983, 35.713951, 35.724377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015915, 36.027779, 35.943665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029522, 35.702576, 35.711163>,  <41.037685, 35.507454, 35.571659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029522, 35.702576, 35.711163>,  <41.015915, 36.027779, 35.943665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029522, 35.702576, 35.711163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472745, 0.525505, -0.707360,
		0.880543, -0.250721, 0.402223,
		0.034020, -0.813009, -0.581256,
		41.039726, 35.458672, 35.536785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745541, 35.936989, 35.718929>,  <41.015915, 36.027779, 35.943665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745541, 35.936989, 35.718929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477493, 35.759758, 35.480724>,  <41.316666, 35.653419, 35.337803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477493, 35.759758, 35.480724>,  <41.745541, 35.936989, 35.718929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477493, 35.759758, 35.480724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460979, 0.380387, -0.801750,
		0.581759, -0.811782, -0.050655,
		-0.670115, -0.443075, -0.595508,
		41.276459, 35.626835, 35.302071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048019, 35.879444, 36.434566>,  <41.745541, 35.936989, 35.718929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048019, 35.879444, 36.434566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321682, 35.922558, 36.146034>,  <42.485878, 35.948425, 35.972916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321682, 35.922558, 36.146034>,  <42.048019, 35.879444, 36.434566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321682, 35.922558, 36.146034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037641, 0.982484, 0.182504,
		0.728366, -0.152012, 0.668113,
		0.684153, 0.107781, -0.721331,
		42.526928, 35.954891, 35.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674759, 36.290512, 36.766434>,  <42.048019, 35.879444, 36.434566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674759, 36.290512, 36.766434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621391, 36.316273, 36.370846>,  <42.589371, 36.331730, 36.133495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621391, 36.316273, 36.370846>,  <42.674759, 36.290512, 36.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621391, 36.316273, 36.370846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103572, 0.993328, 0.050717,
		0.985634, -0.095662, -0.139195,
		-0.133414, 0.064405, -0.988965,
		42.581367, 36.335594, 36.074158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098515, 36.618290, 36.215763>,  <42.674759, 36.290512, 36.766434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098515, 36.618290, 36.215763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222496, 36.407013, 35.899551>,  <43.296886, 36.280247, 35.709824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222496, 36.407013, 35.899551>,  <43.098515, 36.618290, 36.215763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222496, 36.407013, 35.899551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205900, 0.849041, -0.486554,
		0.928188, -0.011961, 0.371919,
		0.309955, -0.528192, -0.790532,
		43.315483, 36.248554, 35.662392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669975, 36.957500, 36.021511>,  <43.098515, 36.618290, 36.215763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669975, 36.957500, 36.021511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562996, 36.746861, 35.698734>,  <43.498806, 36.620476, 35.505066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562996, 36.746861, 35.698734>,  <43.669975, 36.957500, 36.021511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562996, 36.746861, 35.698734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016211, 0.839793, -0.542664,
		0.963435, -0.132054, -0.233140,
		-0.267450, -0.526601, -0.806946,
		43.482761, 36.588879, 35.456650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156384, 37.083370, 35.462688>,  <43.669975, 36.957500, 36.021511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156384, 37.083370, 35.462688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842476, 36.910976, 35.284527>,  <43.654129, 36.807541, 35.177631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842476, 36.910976, 35.284527>,  <44.156384, 37.083370, 35.462688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842476, 36.910976, 35.284527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024803, 0.696224, -0.717396,
		0.619287, -0.574040, -0.535688,
		-0.784773, -0.430987, -0.445400,
		43.607044, 36.781681, 35.150906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289761, 37.078186, 34.725697>,  <44.156384, 37.083370, 35.462688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289761, 37.078186, 34.725697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890854, 37.049366, 34.719097>,  <43.651512, 37.032074, 34.715137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890854, 37.049366, 34.719097>,  <44.289761, 37.078186, 34.725697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890854, 37.049366, 34.719097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022477, 0.508220, -0.860934,
		0.070414, -0.858208, -0.508449,
		-0.997264, -0.072050, -0.016496,
		43.591675, 37.027752, 34.714149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209354, 36.917988, 34.077827>,  <44.289761, 37.078186, 34.725697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209354, 36.917988, 34.077827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855999, 37.042912, 34.217590>,  <43.643986, 37.117867, 34.301449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855999, 37.042912, 34.217590>,  <44.209354, 36.917988, 34.077827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855999, 37.042912, 34.217590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223055, 0.375501, -0.899581,
		-0.412151, -0.872617, -0.262051,
		-0.883390, 0.312311, 0.349405,
		43.590981, 37.136604, 34.322411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866539, 36.905060, 33.541470>,  <44.209354, 36.917988, 34.077827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866539, 36.905060, 33.541470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631199, 37.120266, 33.782928>,  <43.489994, 37.249390, 33.927803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631199, 37.120266, 33.782928>,  <43.866539, 36.905060, 33.541470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631199, 37.120266, 33.782928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391499, 0.463662, -0.794825,
		-0.707513, -0.703961, -0.062164,
		-0.588349, 0.538012, 0.603647,
		43.454693, 37.281670, 33.964024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134182, 36.872601, 33.341015>,  <43.866539, 36.905060, 33.541470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134182, 36.872601, 33.341015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178268, 37.219292, 33.535595>,  <43.204720, 37.427307, 33.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178268, 37.219292, 33.535595>,  <43.134182, 36.872601, 33.341015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178268, 37.219292, 33.535595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419485, 0.484272, -0.767797,
		-0.901046, -0.119435, 0.416954,
		0.110217, 0.866727, 0.486453,
		43.211334, 37.479309, 33.681530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499348, 37.324104, 33.332542>,  <43.134182, 36.872601, 33.341015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499348, 37.324104, 33.332542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778751, 37.598141, 33.415234>,  <42.946396, 37.762562, 33.464848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778751, 37.598141, 33.415234>,  <42.499348, 37.324104, 33.332542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778751, 37.598141, 33.415234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456113, 0.648840, -0.609071,
		-0.551399, 0.331153, 0.765700,
		0.698513, 0.685087, 0.206727,
		42.988304, 37.803665, 33.477253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194927, 38.062519, 33.531601>,  <42.499348, 37.324104, 33.332542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194927, 38.062519, 33.531601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571743, 38.135567, 33.419022>,  <42.797832, 38.179394, 33.351475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571743, 38.135567, 33.419022>,  <42.194927, 38.062519, 33.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571743, 38.135567, 33.419022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322269, 0.725838, -0.607702,
		0.093309, 0.663181, 0.742620,
		0.942038, 0.182619, -0.281450,
		42.854355, 38.190353, 33.334587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304501, 38.801029, 33.530659>,  <42.194927, 38.062519, 33.531601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304501, 38.801029, 33.530659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589943, 38.669907, 33.283009>,  <42.761208, 38.591232, 33.134418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589943, 38.669907, 33.283009>,  <42.304501, 38.801029, 33.530659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589943, 38.669907, 33.283009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385903, 0.553651, -0.737936,
		0.584676, 0.765516, 0.268587,
		0.713606, -0.327804, -0.619121,
		42.804024, 38.571564, 33.097271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489429, 39.399139, 33.112354>,  <42.304501, 38.801029, 33.530659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489429, 39.399139, 33.112354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629055, 39.084484, 32.908646>,  <42.712830, 38.895691, 32.786423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629055, 39.084484, 32.908646>,  <42.489429, 39.399139, 33.112354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629055, 39.084484, 32.908646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288821, 0.426686, -0.857042,
		0.891481, 0.446249, -0.078258,
		0.349063, -0.786639, -0.509268,
		42.733772, 38.848492, 32.755863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972713, 39.733418, 32.552402>,  <42.489429, 39.399139, 33.112354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972713, 39.733418, 32.552402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874855, 39.358700, 32.452351>,  <42.816139, 39.133869, 32.392319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874855, 39.358700, 32.452351>,  <42.972713, 39.733418, 32.552402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874855, 39.358700, 32.452351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099050, 0.280762, -0.954653,
		0.964540, -0.208776, -0.161476,
		-0.244645, -0.936795, -0.250127,
		42.801460, 39.077660, 32.377312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377419, 39.593060, 31.947561>,  <42.972713, 39.733418, 32.552402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377419, 39.593060, 31.947561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109688, 39.296875, 31.923176>,  <42.949051, 39.119164, 31.908545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109688, 39.296875, 31.923176>,  <43.377419, 39.593060, 31.947561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109688, 39.296875, 31.923176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128832, 0.196483, -0.972006,
		0.731714, -0.642734, -0.226907,
		-0.669325, -0.740464, -0.060965,
		42.908890, 39.074738, 31.904886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621185, 39.090027, 31.469625>,  <43.377419, 39.593060, 31.947561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621185, 39.090027, 31.469625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223701, 39.048481, 31.486397>,  <42.985210, 39.023552, 31.496460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223701, 39.048481, 31.486397>,  <43.621185, 39.090027, 31.469625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223701, 39.048481, 31.486397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050002, 0.076399, -0.995823,
		0.100222, -0.991653, -0.081112,
		-0.993708, -0.103859, 0.041928,
		42.925591, 39.017323, 31.498976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442833, 38.777367, 30.872253>,  <43.621185, 39.090027, 31.469625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442833, 38.777367, 30.872253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078503, 38.889374, 30.993572>,  <42.859905, 38.956577, 31.066364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078503, 38.889374, 30.993572>,  <43.442833, 38.777367, 30.872253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078503, 38.889374, 30.993572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205743, 0.329033, -0.921633,
		-0.357865, -0.901848, -0.242080,
		-0.910825, 0.280014, 0.303298,
		42.805256, 38.973377, 31.084562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883736, 38.267185, 30.654537>,  <43.442833, 38.777367, 30.872253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883736, 38.267185, 30.654537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752270, 38.641888, 30.702652>,  <42.673389, 38.866707, 30.731522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752270, 38.641888, 30.702652>,  <42.883736, 38.267185, 30.654537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752270, 38.641888, 30.702652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262495, 0.031742, -0.964411,
		-0.907235, -0.348544, 0.235461,
		-0.328666, 0.936755, 0.120288,
		42.653671, 38.922913, 30.738739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178944, 38.339462, 30.525105>,  <42.883736, 38.267185, 30.654537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178944, 38.339462, 30.525105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345734, 38.694588, 30.447218>,  <42.445808, 38.907665, 30.400486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345734, 38.694588, 30.447218>,  <42.178944, 38.339462, 30.525105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345734, 38.694588, 30.447218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160704, -0.138841, -0.977189,
		-0.894600, 0.438751, 0.084784,
		0.416971, 0.887818, -0.194716,
		42.470825, 38.960934, 30.388803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005135, 38.450500, 29.831861>,  <42.178944, 38.339462, 30.525105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005135, 38.450500, 29.831861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225166, 38.780369, 29.884521>,  <42.357185, 38.978291, 29.916117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225166, 38.780369, 29.884521>,  <42.005135, 38.450500, 29.831861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225166, 38.780369, 29.884521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077550, 0.106518, -0.991282,
		-0.831504, 0.555493, -0.005360,
		0.550079, 0.824671, 0.131649,
		42.390190, 39.027771, 29.924017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720383, 38.836678, 29.329071>,  <42.005135, 38.450500, 29.831861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720383, 38.836678, 29.329071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058002, 39.039364, 29.399292>,  <42.260574, 39.160976, 29.441423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058002, 39.039364, 29.399292>,  <41.720383, 38.836678, 29.329071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058002, 39.039364, 29.399292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138456, 0.110343, -0.984202,
		-0.518086, 0.855020, 0.022976,
		0.844048, 0.506720, 0.175550,
		42.311218, 39.191380, 29.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803638, 39.348289, 28.905827>,  <41.720383, 38.836678, 29.329071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803638, 39.348289, 28.905827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188534, 39.309162, 29.007429>,  <42.419472, 39.285686, 29.068392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188534, 39.309162, 29.007429>,  <41.803638, 39.348289, 28.905827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188534, 39.309162, 29.007429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260749, 0.063530, -0.963314,
		0.078097, 0.993174, 0.086638,
		0.962242, -0.097822, 0.254008,
		42.477207, 39.279816, 29.083632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414497, 39.753689, 28.711824>,  <41.803638, 39.348289, 28.905827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414497, 39.753689, 28.711824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500759, 39.363453, 28.728428>,  <42.552517, 39.129311, 28.738390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500759, 39.363453, 28.728428>,  <42.414497, 39.753689, 28.711824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500759, 39.363453, 28.728428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216998, 0.006434, -0.976151,
		0.952053, 0.219516, 0.213089,
		0.215652, -0.975588, 0.041509,
		42.565456, 39.070778, 28.740881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001686, 39.686813, 28.345856>,  <42.414497, 39.753689, 28.711824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001686, 39.686813, 28.345856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829224, 39.325920, 28.342506>,  <42.725746, 39.109383, 28.340496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829224, 39.325920, 28.342506>,  <43.001686, 39.686813, 28.345856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829224, 39.325920, 28.342506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219688, -0.095971, -0.970838,
		0.875123, -0.420424, 0.239589,
		-0.431157, -0.902238, -0.008375,
		42.699875, 39.055248, 28.339994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452557, 39.232883, 28.022923>,  <43.001686, 39.686813, 28.345856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452557, 39.232883, 28.022923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083019, 39.084805, 27.984013>,  <42.861298, 38.995956, 27.960667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083019, 39.084805, 27.984013>,  <43.452557, 39.232883, 28.022923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083019, 39.084805, 27.984013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134762, -0.076719, -0.987904,
		0.358259, -0.925779, 0.120765,
		-0.923845, -0.370199, -0.097275,
		42.805866, 38.973743, 27.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410858, 38.689709, 27.558044>,  <43.452557, 39.232883, 28.022923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410858, 38.689709, 27.558044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038567, 38.833931, 27.533556>,  <42.815193, 38.920464, 27.518864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038567, 38.833931, 27.533556>,  <43.410858, 38.689709, 27.558044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038567, 38.833931, 27.533556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091546, 0.067622, -0.993502,
		-0.354074, -0.930283, -0.095945,
		-0.930726, 0.360557, -0.061220,
		42.759350, 38.942097, 27.515190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057137, 39.068562, 26.910929>,  <43.410858, 38.689709, 27.558044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057137, 39.068562, 26.910929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722092, 38.921719, 27.072739>,  <42.521065, 38.833614, 27.169825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722092, 38.921719, 27.072739>,  <43.057137, 39.068562, 26.910929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722092, 38.921719, 27.072739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041485, -0.781140, -0.622976,
		0.544689, -0.505030, 0.669521,
		-0.837612, -0.367103, 0.404527,
		42.470810, 38.811588, 27.194098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142384, 38.272049, 27.036896>,  <43.057137, 39.068562, 26.910929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142384, 38.272049, 27.036896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746841, 38.329338, 27.020607>,  <42.509518, 38.363712, 27.010834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746841, 38.329338, 27.020607>,  <43.142384, 38.272049, 27.036896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746841, 38.329338, 27.020607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091146, -0.798469, -0.595096,
		-0.117747, -0.584750, 0.802622,
		-0.988852, 0.143227, -0.040720,
		42.450188, 38.372307, 27.008390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042286, 37.705338, 27.416544>,  <43.142384, 38.272049, 27.036896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042286, 37.705338, 27.416544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758083, 37.827190, 27.162811>,  <42.587563, 37.900303, 27.010571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758083, 37.827190, 27.162811>,  <43.042286, 37.705338, 27.416544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758083, 37.827190, 27.162811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106415, -0.937586, -0.331073,
		-0.695597, -0.167727, 0.698579,
		-0.710507, 0.304633, -0.634333,
		42.544930, 37.918579, 26.972511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350220, 37.391376, 27.555742>,  <43.042286, 37.705338, 27.416544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350220, 37.391376, 27.555742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378220, 37.500721, 27.171997>,  <42.395020, 37.566326, 26.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378220, 37.500721, 27.171997>,  <42.350220, 37.391376, 27.555742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378220, 37.500721, 27.171997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207914, -0.936602, -0.282045,
		-0.975640, 0.219206, -0.008722,
		0.069995, 0.273361, -0.959361,
		42.399220, 37.582729, 26.884188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850315, 37.040325, 27.140266>,  <42.350220, 37.391376, 27.555742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850315, 37.040325, 27.140266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128757, 37.124573, 26.865728>,  <42.295822, 37.175121, 26.701006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128757, 37.124573, 26.865728>,  <41.850315, 37.040325, 27.140266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128757, 37.124573, 26.865728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166648, -0.882485, -0.439828,
		-0.698327, 0.420547, -0.579207,
		0.696109, 0.210620, -0.686346,
		42.337589, 37.187759, 26.659824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233601, 37.451000, 27.272030>,  <41.850315, 37.040325, 27.140266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233601, 37.451000, 27.272030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519970, 37.712868, 27.174980>,  <41.691792, 37.869987, 27.116751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519970, 37.712868, 27.174980>,  <41.233601, 37.451000, 27.272030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519970, 37.712868, 27.174980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686098, 0.724056, -0.070794,
		0.129327, 0.217147, 0.967534,
		0.715921, 0.654668, -0.242624,
		41.734745, 37.909267, 27.102194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835991, 37.298370, 27.849771>,  <41.233601, 37.451000, 27.272030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835991, 37.298370, 27.849771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557297, 37.114338, 28.069912>,  <40.390079, 37.003918, 28.201996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557297, 37.114338, 28.069912>,  <40.835991, 37.298370, 27.849771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557297, 37.114338, 28.069912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713308, -0.525453, 0.463778,
		0.075809, 0.715701, 0.694281,
		-0.696738, -0.460078, 0.550349,
		40.348274, 36.976315, 28.235016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010509, 37.331371, 28.510998>,  <40.835991, 37.298370, 27.849771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010509, 37.331371, 28.510998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754616, 37.023994, 28.504847>,  <40.601082, 36.839569, 28.501156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754616, 37.023994, 28.504847>,  <41.010509, 37.331371, 28.510998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754616, 37.023994, 28.504847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497744, -0.429453, 0.753539,
		-0.585657, 0.474409, 0.657223,
		-0.639732, -0.768444, -0.015378,
		40.562695, 36.793461, 28.500233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698803, 37.278664, 29.144995>,  <41.010509, 37.331371, 28.510998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698803, 37.278664, 29.144995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648441, 36.909306, 28.999952>,  <40.618225, 36.687691, 28.912926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648441, 36.909306, 28.999952>,  <40.698803, 37.278664, 29.144995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648441, 36.909306, 28.999952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474294, -0.377066, 0.795529,
		-0.871317, -0.071821, 0.485436,
		-0.125906, -0.923398, -0.362608,
		40.610668, 36.632286, 28.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415482, 36.922367, 29.656260>,  <40.698803, 37.278664, 29.144995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415482, 36.922367, 29.656260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568886, 36.644623, 29.412689>,  <40.660927, 36.477978, 29.266548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568886, 36.644623, 29.412689>,  <40.415482, 36.922367, 29.656260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568886, 36.644623, 29.412689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429868, -0.449350, 0.783133,
		-0.817395, -0.562095, 0.126152,
		0.383509, -0.694358, -0.608924,
		40.683937, 36.436314, 29.230013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332226, 36.335312, 29.954918>,  <40.415482, 36.922367, 29.656260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332226, 36.335312, 29.954918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613773, 36.209782, 29.700022>,  <40.782703, 36.134464, 29.547085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613773, 36.209782, 29.700022>,  <40.332226, 36.335312, 29.954918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613773, 36.209782, 29.700022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438450, -0.513863, 0.737365,
		-0.558861, -0.798408, -0.224095,
		0.703872, -0.313830, -0.637240,
		40.824936, 36.115631, 29.508850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330849, 35.614513, 29.961317>,  <40.332226, 36.335312, 29.954918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330849, 35.614513, 29.961317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690533, 35.728851, 29.828829>,  <40.906345, 35.797455, 29.749336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690533, 35.728851, 29.828829>,  <40.330849, 35.614513, 29.961317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690533, 35.728851, 29.828829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434902, -0.501474, 0.747920,
		0.047693, -0.816588, -0.575248,
		0.899214, 0.285846, -0.331219,
		40.960297, 35.814606, 29.729464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741962, 34.996487, 29.940197>,  <40.330849, 35.614513, 29.961317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741962, 34.996487, 29.940197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964931, 35.327309, 29.969198>,  <41.098713, 35.525803, 29.986599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964931, 35.327309, 29.969198>,  <40.741962, 34.996487, 29.940197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964931, 35.327309, 29.969198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526235, -0.419512, 0.739653,
		0.642153, -0.374144, -0.669071,
		0.557420, 0.827059, 0.072503,
		41.132156, 35.575428, 29.990950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468792, 34.761616, 30.041847>,  <40.741962, 34.996487, 29.940197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468792, 34.761616, 30.041847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461975, 35.142292, 30.164476>,  <41.457886, 35.370697, 30.238054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461975, 35.142292, 30.164476>,  <41.468792, 34.761616, 30.041847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461975, 35.142292, 30.164476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607026, -0.233796, 0.759512,
		0.794500, 0.199037, -0.573720,
		-0.017038, 0.951695, 0.306572,
		41.456863, 35.427799, 30.256449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152332, 34.894714, 30.227753>,  <41.468792, 34.761616, 30.041847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152332, 34.894714, 30.227753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972424, 35.191555, 30.426546>,  <41.864479, 35.369659, 30.545822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972424, 35.191555, 30.426546>,  <42.152332, 34.894714, 30.227753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972424, 35.191555, 30.426546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666142, -0.091930, 0.740138,
		0.594943, 0.663957, -0.452995,
		-0.449776, 0.742098, 0.496983,
		41.837490, 35.414185, 30.575642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686974, 35.287041, 30.589434>,  <42.152332, 34.894714, 30.227753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686974, 35.287041, 30.589434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354713, 35.398987, 30.781971>,  <42.155357, 35.466156, 30.897493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354713, 35.398987, 30.781971>,  <42.686974, 35.287041, 30.589434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354713, 35.398987, 30.781971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525179, 0.106679, 0.844279,
		0.184936, 0.954094, -0.235593,
		-0.830654, 0.279866, 0.481341,
		42.105518, 35.482948, 30.926373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708897, 36.033989, 30.789694>,  <42.686974, 35.287041, 30.589434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708897, 36.033989, 30.789694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493256, 35.828987, 31.057037>,  <42.363869, 35.705986, 31.217443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493256, 35.828987, 31.057037>,  <42.708897, 36.033989, 30.789694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493256, 35.828987, 31.057037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703305, 0.162668, 0.692026,
		-0.463387, 0.843137, 0.272751,
		-0.539105, -0.512503, 0.668361,
		42.331524, 35.675236, 31.257545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015408, 36.229084, 31.310234>,  <42.708897, 36.033989, 30.789694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015408, 36.229084, 31.310234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773899, 35.975700, 31.503809>,  <42.628994, 35.823669, 31.619953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773899, 35.975700, 31.503809>,  <43.015408, 36.229084, 31.310234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773899, 35.975700, 31.503809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619899, 0.008584, 0.784635,
		-0.501185, 0.773732, 0.387495,
		-0.603771, -0.633455, 0.483938,
		42.592770, 35.785664, 31.648991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874470, 36.447647, 32.021183>,  <43.015408, 36.229084, 31.310234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874470, 36.447647, 32.021183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791481, 36.056564, 32.008228>,  <42.741688, 35.821915, 32.000458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791481, 36.056564, 32.008228>,  <42.874470, 36.447647, 32.021183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791481, 36.056564, 32.008228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540465, -0.142154, 0.829271,
		-0.815386, 0.154546, 0.557908,
		-0.207469, -0.977705, -0.032383,
		42.729240, 35.763252, 31.998514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816509, 36.295303, 32.712612>,  <42.874470, 36.447647, 32.021183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816509, 36.295303, 32.712612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869759, 35.946754, 32.523724>,  <42.901707, 35.737625, 32.410389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869759, 35.946754, 32.523724>,  <42.816509, 36.295303, 32.712612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869759, 35.946754, 32.523724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549482, -0.331646, 0.766864,
		-0.824832, -0.361565, 0.434652,
		0.133121, -0.871367, -0.472226,
		42.909695, 35.685345, 32.382057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136528, 35.915401, 33.275017>,  <42.816509, 36.295303, 32.712612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136528, 35.915401, 33.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154778, 35.631554, 32.993774>,  <43.165726, 35.461243, 32.825031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154778, 35.631554, 32.993774>,  <43.136528, 35.915401, 33.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154778, 35.631554, 32.993774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632350, -0.524355, 0.570250,
		-0.773338, -0.470624, 0.424808,
		0.045623, -0.709623, -0.703103,
		43.168465, 35.418667, 32.782845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924141, 35.177345, 33.575443>,  <43.136528, 35.915401, 33.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924141, 35.177345, 33.575443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197735, 35.181347, 33.283672>,  <43.361893, 35.183746, 33.108612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197735, 35.181347, 33.283672>,  <42.924141, 35.177345, 33.575443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197735, 35.181347, 33.283672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687528, -0.343089, 0.639996,
		-0.243856, -0.939250, -0.241546,
		0.683987, 0.010003, -0.729425,
		43.402931, 35.184349, 33.064846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230663, 34.653168, 33.691952>,  <42.924141, 35.177345, 33.575443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230663, 34.653168, 33.691952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512856, 34.835114, 33.474548>,  <43.682171, 34.944283, 33.344109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512856, 34.835114, 33.474548>,  <43.230663, 34.653168, 33.691952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512856, 34.835114, 33.474548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704251, -0.363846, 0.609628,
		0.079546, -0.812844, -0.577024,
		0.705480, 0.454863, -0.543504,
		43.724499, 34.971573, 33.311497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701698, 34.099770, 33.506123>,  <43.230663, 34.653168, 33.691952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701698, 34.099770, 33.506123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886539, 34.452332, 33.466972>,  <43.997444, 34.663868, 33.443481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886539, 34.452332, 33.466972>,  <43.701698, 34.099770, 33.506123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886539, 34.452332, 33.466972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739360, -0.321959, 0.591345,
		0.489704, -0.345629, -0.800456,
		0.462101, 0.881409, -0.097880,
		44.025169, 34.716755, 33.437607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338753, 33.953789, 33.559902>,  <43.701698, 34.099770, 33.506123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338753, 33.953789, 33.559902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376328, 34.347702, 33.618382>,  <44.398872, 34.584049, 33.653469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376328, 34.347702, 33.618382>,  <44.338753, 33.953789, 33.559902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376328, 34.347702, 33.618382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749286, -0.166625, 0.640942,
		0.655550, 0.049331, -0.753539,
		0.093940, 0.984786, 0.146194,
		44.404510, 34.643139, 33.662239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971146, 33.998589, 33.497177>,  <44.338753, 33.953789, 33.559902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971146, 33.998589, 33.497177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901730, 34.349483, 33.676216>,  <44.860081, 34.560020, 33.783638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901730, 34.349483, 33.676216>,  <44.971146, 33.998589, 33.497177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901730, 34.349483, 33.676216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752541, -0.175051, 0.634854,
		0.635268, 0.447008, -0.629777,
		-0.173542, 0.877235, 0.447596,
		44.849667, 34.612656, 33.810493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576633, 34.445442, 33.532017>,  <44.971146, 33.998589, 33.497177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576633, 34.445442, 33.532017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327255, 34.543720, 33.828918>,  <45.177628, 34.602688, 34.007061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327255, 34.543720, 33.828918>,  <45.576633, 34.445442, 33.532017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327255, 34.543720, 33.828918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699445, -0.248998, 0.669908,
		0.349416, 0.936821, -0.016615,
		-0.623446, 0.245697, 0.742259,
		45.140221, 34.617428, 34.051598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964462, 34.960617, 33.941849>,  <45.576633, 34.445442, 33.532017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964462, 34.960617, 33.941849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688885, 34.749523, 34.140583>,  <45.523537, 34.622868, 34.259823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688885, 34.749523, 34.140583>,  <45.964462, 34.960617, 33.941849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688885, 34.749523, 34.140583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703518, -0.321940, 0.633575,
		-0.174410, 0.786032, 0.593072,
		-0.688944, -0.527738, 0.496839,
		45.482201, 34.591202, 34.289635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651772, 34.857609, 33.811039>,  <45.964462, 34.960617, 33.941849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651772, 34.857609, 33.811039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686775, 35.081135, 34.140903>,  <46.707779, 35.215248, 34.338821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686775, 35.081135, 34.140903>,  <46.651772, 34.857609, 33.811039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686775, 35.081135, 34.140903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815403, -0.515731, 0.262944,
		0.572242, 0.649423, -0.500789,
		0.087510, 0.558812, 0.824664,
		46.713028, 35.248779, 34.388302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324528, 35.336452, 33.878738>,  <46.651772, 34.857609, 33.811039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324528, 35.336452, 33.878738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170609, 35.173576, 34.210068>,  <47.078259, 35.075851, 34.408867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170609, 35.173576, 34.210068>,  <47.324528, 35.336452, 33.878738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.170609, 35.173576, 34.210068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851157, -0.503671, 0.147807,
		0.357018, 0.761911, 0.540397,
		-0.384799, -0.407193, 0.828326,
		47.055168, 35.051418, 34.458565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820503, 34.763126, 34.006546>,  <47.324528, 35.336452, 33.878738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820503, 34.763126, 34.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596851, 34.802582, 34.335823>,  <47.462662, 34.826256, 34.533390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596851, 34.802582, 34.335823>,  <47.820503, 34.763126, 34.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596851, 34.802582, 34.335823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603275, -0.632682, 0.485565,
		0.568714, 0.768104, 0.294246,
		-0.559128, 0.098636, 0.823193,
		47.429111, 34.832172, 34.582783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.930809, 35.238434, 34.557007>,  <47.820503, 34.763126, 34.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.930809, 35.238434, 34.557007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751068, 34.918179, 34.715534>,  <47.643223, 34.726025, 34.810650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751068, 34.918179, 34.715534>,  <47.930809, 35.238434, 34.557007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751068, 34.918179, 34.715534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881774, -0.326285, 0.340607,
		-0.143390, 0.502514, 0.852595,
		-0.449349, -0.800636, 0.396318,
		47.616264, 34.677986, 34.834431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.839016, 38.008244, 45.117752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482441, 37.972729, 45.295498>,  <35.268497, 37.951420, 45.402145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482441, 37.972729, 45.295498>,  <35.839016, 38.008244, 45.117752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482441, 37.972729, 45.295498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346410, -0.498647, -0.794576,
		0.292130, -0.862245, 0.413754,
		-0.891437, -0.088791, 0.444361,
		35.215012, 37.946091, 45.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631359, 37.341202, 45.145454>,  <35.839016, 38.008244, 45.117752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631359, 37.341202, 45.145454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282143, 37.535355, 45.164265>,  <35.072613, 37.651848, 45.175549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282143, 37.535355, 45.164265>,  <35.631359, 37.341202, 45.145454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282143, 37.535355, 45.164265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313758, -0.485283, -0.816123,
		-0.373311, -0.727260, 0.575962,
		-0.873038, 0.485380, 0.047022,
		35.020233, 37.680969, 45.178371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086754, 36.821026, 45.240269>,  <35.631359, 37.341202, 45.145454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086754, 36.821026, 45.240269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895542, 37.152802, 45.124672>,  <34.780815, 37.351868, 45.055313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895542, 37.152802, 45.124672>,  <35.086754, 36.821026, 45.240269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895542, 37.152802, 45.124672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318968, -0.470494, -0.822736,
		-0.818379, -0.301114, 0.489475,
		-0.478033, 0.829437, -0.288996,
		34.752132, 37.401634, 45.037971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474117, 36.601952, 44.913147>,  <35.086754, 36.821026, 45.240269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474117, 36.601952, 44.913147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547058, 36.969189, 44.772373>,  <34.590824, 37.189529, 44.687908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547058, 36.969189, 44.772373>,  <34.474117, 36.601952, 44.913147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547058, 36.969189, 44.772373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386406, -0.262223, -0.884268,
		-0.904123, 0.297239, 0.306938,
		0.182353, 0.918089, -0.351937,
		34.601765, 37.244614, 44.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816273, 36.871021, 44.733906>,  <34.474117, 36.601952, 44.913147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816273, 36.871021, 44.733906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093754, 37.074081, 44.529526>,  <34.260242, 37.195919, 44.406898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093754, 37.074081, 44.529526>,  <33.816273, 36.871021, 44.733906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093754, 37.074081, 44.529526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412748, -0.301172, -0.859613,
		-0.590266, 0.807208, 0.000608,
		0.693704, 0.507651, -0.510946,
		34.301865, 37.226376, 44.376244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450268, 36.977203, 44.020267>,  <33.816273, 36.871021, 44.733906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450268, 36.977203, 44.020267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828156, 37.091579, 43.956093>,  <34.054890, 37.160206, 43.917587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828156, 37.091579, 43.956093>,  <33.450268, 36.977203, 44.020267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828156, 37.091579, 43.956093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085289, -0.258148, -0.962333,
		-0.316588, 0.922819, -0.219490,
		0.944721, 0.285943, -0.160433,
		34.111572, 37.177361, 43.907963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401958, 37.330143, 43.329910>,  <33.450268, 36.977203, 44.020267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401958, 37.330143, 43.329910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780979, 37.237537, 43.418041>,  <34.008392, 37.181976, 43.470921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780979, 37.237537, 43.418041>,  <33.401958, 37.330143, 43.329910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780979, 37.237537, 43.418041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147933, -0.293379, -0.944481,
		0.283296, 0.927541, -0.243744,
		0.947554, -0.231510, 0.220327,
		34.065247, 37.168083, 43.484138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753567, 37.620232, 42.804077>,  <33.401958, 37.330143, 43.329910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753567, 37.620232, 42.804077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994957, 37.343605, 42.962845>,  <34.139790, 37.177628, 43.058105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994957, 37.343605, 42.962845>,  <33.753567, 37.620232, 42.804077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994957, 37.343605, 42.962845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165069, -0.378647, -0.910703,
		0.780108, 0.615107, -0.114348,
		0.603476, -0.691571, 0.396920,
		34.175999, 37.136135, 43.081921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451511, 37.702156, 42.556744>,  <33.753567, 37.620232, 42.804077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451511, 37.702156, 42.556744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369835, 37.321598, 42.648968>,  <34.320827, 37.093266, 42.704304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369835, 37.321598, 42.648968>,  <34.451511, 37.702156, 42.556744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369835, 37.321598, 42.648968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193743, -0.270142, -0.943126,
		0.959567, -0.147908, 0.239486,
		-0.204191, -0.951392, 0.230563,
		34.308578, 37.036179, 42.718136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068363, 37.359768, 42.403011>,  <34.451511, 37.702156, 42.556744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068363, 37.359768, 42.403011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803944, 37.060539, 42.426369>,  <34.645290, 36.881004, 42.440384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803944, 37.060539, 42.426369>,  <35.068363, 37.359768, 42.403011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803944, 37.060539, 42.426369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242197, -0.286379, -0.926999,
		0.710181, -0.598648, 0.370490,
		-0.661047, -0.748069, 0.058390,
		34.605629, 36.836117, 42.443886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328392, 36.697342, 42.206577>,  <35.068363, 37.359768, 42.403011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328392, 36.697342, 42.206577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945084, 36.618294, 42.123955>,  <34.715099, 36.570866, 42.074379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945084, 36.618294, 42.123955>,  <35.328392, 36.697342, 42.206577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945084, 36.618294, 42.123955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269020, -0.379015, -0.885424,
		0.096687, -0.904043, 0.416362,
		-0.958269, -0.197619, -0.206560,
		34.657604, 36.559010, 42.061985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345600, 36.084793, 41.832832>,  <35.328392, 36.697342, 42.206577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345600, 36.084793, 41.832832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.975735, 36.216446, 41.756245>,  <34.753815, 36.295437, 41.710293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.975735, 36.216446, 41.756245>,  <35.345600, 36.084793, 41.832832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975735, 36.216446, 41.756245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131057, -0.197025, -0.971599,
		-0.357513, -0.923499, 0.139047,
		-0.924667, 0.329136, -0.191470,
		34.698334, 36.315186, 41.698803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170376, 35.640266, 41.372379>,  <35.345600, 36.084793, 41.832832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170376, 35.640266, 41.372379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895470, 35.925209, 41.315521>,  <34.730526, 36.096176, 41.281406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895470, 35.925209, 41.315521>,  <35.170376, 35.640266, 41.372379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895470, 35.925209, 41.315521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148333, -0.329184, -0.932542,
		-0.711097, -0.619822, 0.331905,
		-0.687268, 0.712361, -0.142142,
		34.689289, 36.138916, 41.272881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527679, 35.321545, 41.146973>,  <35.170376, 35.640266, 41.372379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527679, 35.321545, 41.146973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539284, 35.701519, 41.022537>,  <34.546246, 35.929504, 40.947876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539284, 35.701519, 41.022537>,  <34.527679, 35.321545, 41.146973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539284, 35.701519, 41.022537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047171, -0.309568, -0.949706,
		-0.998466, 0.042225, 0.035829,
		0.029010, 0.949939, -0.311085,
		34.547985, 35.986500, 40.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180733, 35.337444, 40.562489>,  <34.527679, 35.321545, 41.146973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180733, 35.337444, 40.562489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363979, 35.689903, 40.515652>,  <34.473927, 35.901379, 40.487549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.363979, 35.689903, 40.515652>,  <34.180733, 35.337444, 40.562489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363979, 35.689903, 40.515652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190313, -0.031441, -0.981220,
		-0.868281, 0.471796, 0.153290,
		0.458115, 0.881147, -0.117088,
		34.501415, 35.954247, 40.480526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725838, 35.755547, 40.092838>,  <34.180733, 35.337444, 40.562489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725838, 35.755547, 40.092838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090096, 35.917301, 40.058914>,  <34.308651, 36.014355, 40.038559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090096, 35.917301, 40.058914>,  <33.725838, 35.755547, 40.092838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090096, 35.917301, 40.058914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136100, 0.099761, -0.985659,
		-0.390126, 0.909131, 0.145884,
		0.910647, 0.404387, -0.084814,
		34.363289, 36.038616, 40.033470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690086, 36.346424, 39.694260>,  <33.725838, 35.755547, 40.092838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690086, 36.346424, 39.694260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.080036, 36.258854, 39.677792>,  <34.314007, 36.206310, 39.667912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.080036, 36.258854, 39.677792>,  <33.690086, 36.346424, 39.694260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080036, 36.258854, 39.677792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073693, -0.142525, -0.987044,
		0.210220, 0.965277, -0.155077,
		0.974873, -0.218925, -0.041172,
		34.372498, 36.193176, 39.665440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948940, 36.671558, 39.098827>,  <33.690086, 36.346424, 39.694260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948940, 36.671558, 39.098827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248055, 36.412407, 39.156891>,  <34.427521, 36.256916, 39.191730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248055, 36.412407, 39.156891>,  <33.948940, 36.671558, 39.098827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248055, 36.412407, 39.156891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037705, -0.176842, -0.983517,
		0.662874, 0.740929, -0.107810,
		0.747781, -0.647882, 0.145161,
		34.472389, 36.218040, 39.200439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403179, 36.892551, 38.583935>,  <33.948940, 36.671558, 39.098827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403179, 36.892551, 38.583935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515293, 36.521595, 38.683037>,  <34.582561, 36.299023, 38.742500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515293, 36.521595, 38.683037>,  <34.403179, 36.892551, 38.583935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515293, 36.521595, 38.683037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029493, -0.249663, -0.967884,
		0.959464, 0.278590, -0.042625,
		0.280284, -0.927392, 0.247759,
		34.599377, 36.243378, 38.757366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956120, 36.744480, 38.130196>,  <34.403179, 36.892551, 38.583935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956120, 36.744480, 38.130196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831879, 36.379318, 38.236126>,  <34.757336, 36.160221, 38.299686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831879, 36.379318, 38.236126>,  <34.956120, 36.744480, 38.130196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831879, 36.379318, 38.236126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221636, -0.340483, -0.913755,
		0.924341, -0.225115, 0.308086,
		-0.310598, -0.912904, 0.264829,
		34.738701, 36.105446, 38.315575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350300, 36.390362, 37.710182>,  <34.956120, 36.744480, 38.130196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350300, 36.390362, 37.710182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094971, 36.118980, 37.855644>,  <34.941772, 35.956150, 37.942924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094971, 36.118980, 37.855644>,  <35.350300, 36.390362, 37.710182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094971, 36.118980, 37.855644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151096, -0.573667, -0.805032,
		0.754795, -0.458921, 0.468695,
		-0.638321, -0.678452, 0.363660,
		34.903473, 35.915443, 37.964741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729385, 35.724663, 37.653034>,  <35.350300, 36.390362, 37.710182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729385, 35.724663, 37.653034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335449, 35.660767, 37.625999>,  <35.099087, 35.622429, 37.609779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335449, 35.660767, 37.625999>,  <35.729385, 35.724663, 37.653034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335449, 35.660767, 37.625999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143886, -0.534794, -0.832642,
		0.096859, -0.829746, 0.549672,
		-0.984843, -0.159739, -0.067589,
		35.039997, 35.612846, 37.605724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018661, 35.331894, 38.210964>,  <35.729385, 35.724663, 37.653034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018661, 35.331894, 38.210964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324062, 35.456638, 37.984756>,  <36.507301, 35.531487, 37.849030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324062, 35.456638, 37.984756>,  <36.018661, 35.331894, 38.210964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324062, 35.456638, 37.984756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210660, 0.707516, 0.674569,
		0.610485, -0.634165, 0.474491,
		0.763499, 0.311859, -0.565521,
		36.553112, 35.550198, 37.815102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710369, 35.224667, 38.548862>,  <36.018661, 35.331894, 38.210964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710369, 35.224667, 38.548862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728771, 35.536591, 38.299133>,  <36.739815, 35.723743, 38.149296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728771, 35.536591, 38.299133>,  <36.710369, 35.224667, 38.548862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728771, 35.536591, 38.299133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249578, 0.596190, 0.763065,
		0.967261, -0.190924, -0.167195,
		0.046007, 0.779811, -0.624322,
		36.742573, 35.770535, 38.111835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319340, 35.555992, 38.785065>,  <36.710369, 35.224667, 38.548862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319340, 35.555992, 38.785065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110760, 35.824112, 38.573864>,  <36.985611, 35.984985, 38.447144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110760, 35.824112, 38.573864>,  <37.319340, 35.555992, 38.785065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110760, 35.824112, 38.573864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333461, 0.729663, 0.596989,
		0.785424, 0.135234, -0.604004,
		-0.521452, 0.670301, -0.528000,
		36.954323, 36.025204, 38.415462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726952, 36.054409, 38.791660>,  <37.319340, 35.555992, 38.785065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726952, 36.054409, 38.791660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395832, 36.251884, 38.685062>,  <37.197159, 36.370369, 38.621105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.395832, 36.251884, 38.685062>,  <37.726952, 36.054409, 38.791660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395832, 36.251884, 38.685062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188226, 0.691881, 0.697045,
		0.528500, 0.526856, -0.665666,
		-0.827803, 0.493684, -0.266491,
		37.147491, 36.399990, 38.605114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918884, 36.722710, 38.591244>,  <37.726952, 36.054409, 38.791660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918884, 36.722710, 38.591244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535759, 36.743134, 38.704376>,  <37.305885, 36.755386, 38.772255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535759, 36.743134, 38.704376>,  <37.918884, 36.722710, 38.591244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535759, 36.743134, 38.704376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232073, 0.717907, 0.656316,
		-0.169537, 0.694264, -0.699468,
		-0.957810, 0.051058, 0.282832,
		37.248417, 36.758450, 38.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840767, 37.403854, 38.612976>,  <37.918884, 36.722710, 38.591244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840767, 37.403854, 38.612976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524212, 37.268517, 38.816631>,  <37.334278, 37.187313, 38.938824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524212, 37.268517, 38.816631>,  <37.840767, 37.403854, 38.612976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524212, 37.268517, 38.816631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156074, 0.693441, 0.703406,
		-0.591051, 0.636133, -0.495977,
		-0.791391, -0.338340, 0.509143,
		37.286793, 37.167015, 38.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315285, 38.028652, 38.798069>,  <37.840767, 37.403854, 38.612976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315285, 38.028652, 38.798069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240097, 37.739708, 39.064262>,  <37.194984, 37.566341, 39.223976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240097, 37.739708, 39.064262>,  <37.315285, 38.028652, 38.798069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240097, 37.739708, 39.064262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143891, 0.690499, 0.708877,
		-0.971578, 0.037489, -0.233732,
		-0.187967, -0.722361, 0.665479,
		37.183708, 37.522999, 39.263905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847332, 38.351334, 39.319210>,  <37.315285, 38.028652, 38.798069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847332, 38.351334, 39.319210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979389, 38.017391, 39.495403>,  <37.058624, 37.817028, 39.601120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979389, 38.017391, 39.495403>,  <36.847332, 38.351334, 39.319210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979389, 38.017391, 39.495403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057025, 0.483436, 0.873520,
		-0.942208, -0.263265, 0.207209,
		0.330140, -0.834854, 0.440485,
		37.078430, 37.766933, 39.627548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575314, 38.363628, 39.930744>,  <36.847332, 38.351334, 39.319210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575314, 38.363628, 39.930744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899204, 38.132080, 39.969227>,  <37.093536, 37.993153, 39.992317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899204, 38.132080, 39.969227>,  <36.575314, 38.363628, 39.930744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899204, 38.132080, 39.969227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094623, 0.290609, 0.952152,
		-0.579133, -0.761875, 0.290087,
		0.809723, -0.578871, 0.096211,
		37.142120, 37.958420, 39.998089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485653, 38.111126, 40.538979>,  <36.575314, 38.363628, 39.930744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485653, 38.111126, 40.538979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876785, 38.055084, 40.476734>,  <37.111465, 38.021458, 40.439388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.876785, 38.055084, 40.476734>,  <36.485653, 38.111126, 40.538979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876785, 38.055084, 40.476734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188352, 0.263922, 0.945975,
		-0.091470, -0.954314, 0.284461,
		0.977833, -0.140108, -0.155606,
		37.170135, 38.013054, 40.430054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722019, 37.793278, 41.160728>,  <36.485653, 38.111126, 40.538979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722019, 37.793278, 41.160728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032608, 37.962639, 40.974041>,  <37.218960, 38.064255, 40.862030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032608, 37.962639, 40.974041>,  <36.722019, 37.793278, 41.160728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032608, 37.962639, 40.974041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361766, 0.306918, 0.880299,
		0.515967, -0.852367, 0.085139,
		0.776468, 0.423405, -0.466717,
		37.265549, 38.089661, 40.834026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272095, 37.483009, 41.519608>,  <36.722019, 37.793278, 41.160728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272095, 37.483009, 41.519608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414852, 37.812580, 41.343525>,  <37.500507, 38.010323, 41.237877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414852, 37.812580, 41.343525>,  <37.272095, 37.483009, 41.519608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414852, 37.812580, 41.343525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106999, 0.432078, 0.895466,
		0.927997, -0.366687, 0.066047,
		0.356893, 0.823923, -0.440202,
		37.521919, 38.059757, 41.211464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833870, 37.640606, 41.941704>,  <37.272095, 37.483009, 41.519608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833870, 37.640606, 41.941704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687954, 37.947845, 41.731197>,  <37.600403, 38.132187, 41.604893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687954, 37.947845, 41.731197>,  <37.833870, 37.640606, 41.941704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687954, 37.947845, 41.731197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080056, 0.588999, 0.804159,
		0.927640, 0.251221, -0.276354,
		-0.364794, 0.768094, -0.526267,
		37.578514, 38.178272, 41.573318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370693, 38.261505, 41.844036>,  <37.833870, 37.640606, 41.941704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370693, 38.261505, 41.844036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989605, 38.382359, 41.856911>,  <37.760952, 38.454868, 41.864635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989605, 38.382359, 41.856911>,  <38.370693, 38.261505, 41.844036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989605, 38.382359, 41.856911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165508, 0.427204, 0.888878,
		0.254807, 0.852181, -0.457012,
		-0.952723, 0.302132, 0.032188,
		37.703789, 38.473000, 41.866566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439877, 38.873569, 42.259052>,  <38.370693, 38.261505, 41.844036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439877, 38.873569, 42.259052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052898, 38.772419, 42.255116>,  <37.820709, 38.711727, 42.252754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052898, 38.772419, 42.255116>,  <38.439877, 38.873569, 42.259052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052898, 38.772419, 42.255116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128468, 0.457247, 0.880012,
		-0.218040, 0.852629, -0.474850,
		-0.967448, -0.252881, -0.009837,
		37.762665, 38.696556, 42.252163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187538, 39.492874, 42.317341>,  <38.439877, 38.873569, 42.259052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187538, 39.492874, 42.317341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945450, 39.202145, 42.447231>,  <37.800198, 39.027706, 42.525166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945450, 39.202145, 42.447231>,  <38.187538, 39.492874, 42.317341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945450, 39.202145, 42.447231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151669, 0.505722, 0.849259,
		-0.781479, 0.464735, -0.416308,
		-0.605216, -0.726820, 0.324725,
		37.763885, 38.984100, 42.544647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606266, 39.804310, 42.549885>,  <38.187538, 39.492874, 42.317341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606266, 39.804310, 42.549885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622063, 39.444290, 42.723488>,  <37.631542, 39.228279, 42.827648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622063, 39.444290, 42.723488>,  <37.606266, 39.804310, 42.549885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622063, 39.444290, 42.723488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037542, 0.432700, 0.900756,
		-0.998514, -0.051868, -0.016701,
		0.039494, -0.900045, 0.434004,
		37.633911, 39.174278, 42.853687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140720, 39.921558, 43.127213>,  <37.606266, 39.804310, 42.549885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140720, 39.921558, 43.127213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337414, 39.583149, 43.209618>,  <37.455429, 39.380104, 43.259060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337414, 39.583149, 43.209618>,  <37.140720, 39.921558, 43.127213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337414, 39.583149, 43.209618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099956, 0.289871, 0.951832,
		-0.864992, -0.447453, 0.227103,
		0.491730, -0.846027, 0.206011,
		37.484932, 39.329342, 43.271420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.655220, 39.413315, 43.429932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019005, 39.271511, 43.516827>,  <37.237278, 39.186428, 43.568962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019005, 39.271511, 43.516827>,  <36.655220, 39.413315, 43.429932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019005, 39.271511, 43.516827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111019, 0.296456, 0.948572,
		-0.400682, -0.886812, 0.230259,
		0.909466, -0.354512, 0.217238,
		37.291843, 39.165157, 43.581997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600292, 39.014992, 43.945316>,  <36.655220, 39.413315, 43.429932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600292, 39.014992, 43.945316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996632, 39.068535, 43.952152>,  <37.234436, 39.100662, 43.956253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996632, 39.068535, 43.952152>,  <36.600292, 39.014992, 43.945316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996632, 39.068535, 43.952152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013366, -0.028677, 0.999499,
		0.134285, -0.990585, -0.026625,
		0.990852, 0.133862, 0.017091,
		37.293888, 39.108692, 43.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872742, 38.391075, 44.333916>,  <36.600292, 39.014992, 43.945316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872742, 38.391075, 44.333916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121655, 38.703835, 44.348858>,  <37.271000, 38.891491, 44.357822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121655, 38.703835, 44.348858>,  <36.872742, 38.391075, 44.333916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121655, 38.703835, 44.348858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004088, -0.050967, 0.998692,
		0.782785, -0.621313, -0.034912,
		0.622280, 0.781904, 0.037356,
		37.308338, 38.938404, 44.360065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334736, 38.202793, 44.914345>,  <36.872742, 38.391075, 44.333916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334736, 38.202793, 44.914345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361637, 38.596977, 44.851925>,  <37.377777, 38.833488, 44.814472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361637, 38.596977, 44.851925>,  <37.334736, 38.202793, 44.914345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361637, 38.596977, 44.851925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234131, 0.136445, 0.962582,
		0.969876, -0.101269, -0.221550,
		0.067250, 0.985458, -0.156045,
		37.381813, 38.892616, 44.805111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908405, 38.400017, 45.318478>,  <37.334736, 38.202793, 44.914345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908405, 38.400017, 45.318478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767563, 38.766949, 45.244156>,  <37.683056, 38.987110, 45.199562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767563, 38.766949, 45.244156>,  <37.908405, 38.400017, 45.318478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767563, 38.766949, 45.244156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087819, 0.230018, 0.969216,
		0.931831, 0.324951, -0.161550,
		-0.352107, 0.917332, -0.185801,
		37.661930, 39.042149, 45.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347523, 39.009502, 45.652199>,  <37.908405, 38.400017, 45.318478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347523, 39.009502, 45.652199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963783, 39.116879, 45.617359>,  <37.733540, 39.181305, 45.596455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963783, 39.116879, 45.617359>,  <38.347523, 39.009502, 45.652199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963783, 39.116879, 45.617359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033222, 0.199073, 0.979421,
		0.280252, 0.942503, -0.182064,
		-0.959351, 0.268436, -0.087102,
		37.675980, 39.197411, 45.591228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296562, 39.577076, 46.043030>,  <38.347523, 39.009502, 45.652199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296562, 39.577076, 46.043030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907906, 39.501209, 45.986549>,  <37.674713, 39.455688, 45.952660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907906, 39.501209, 45.986549>,  <38.296562, 39.577076, 46.043030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907906, 39.501209, 45.986549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179794, 0.204778, 0.962154,
		-0.153573, 0.960257, -0.233072,
		-0.971643, -0.189666, -0.141200,
		37.616413, 39.444309, 45.944191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893208, 40.208199, 46.209045>,  <38.296562, 39.577076, 46.043030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893208, 40.208199, 46.209045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656723, 39.887028, 46.239452>,  <37.514832, 39.694324, 46.257694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656723, 39.887028, 46.239452>,  <37.893208, 40.208199, 46.209045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656723, 39.887028, 46.239452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170755, 0.216724, 0.961183,
		-0.788237, 0.555278, -0.265233,
		-0.591207, -0.802930, 0.076014,
		37.479362, 39.646149, 46.262257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619274, 40.512920, 46.773388>,  <37.893208, 40.208199, 46.209045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619274, 40.512920, 46.773388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509274, 40.130569, 46.732048>,  <37.443275, 39.901161, 46.707245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509274, 40.130569, 46.732048>,  <37.619274, 40.512920, 46.773388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509274, 40.130569, 46.732048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204603, -0.046853, 0.977723,
		-0.939422, 0.290019, -0.182690,
		-0.274999, -0.955873, -0.103354,
		37.426773, 39.843807, 46.701042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018635, 40.520382, 47.216595>,  <37.619274, 40.512920, 46.773388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018635, 40.520382, 47.216595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165672, 40.150127, 47.180656>,  <37.253895, 39.927975, 47.159096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.165672, 40.150127, 47.180656>,  <37.018635, 40.520382, 47.216595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165672, 40.150127, 47.180656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008234, -0.099842, 0.994969,
		-0.929951, -0.365001, -0.044322,
		0.367590, -0.925638, -0.089843,
		37.275951, 39.872437, 47.153702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675335, 40.031590, 47.673756>,  <37.018635, 40.520382, 47.216595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675335, 40.031590, 47.673756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014893, 39.828560, 47.614761>,  <37.218628, 39.706741, 47.579365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014893, 39.828560, 47.614761>,  <36.675335, 40.031590, 47.673756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014893, 39.828560, 47.614761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042064, -0.213262, 0.976089,
		-0.526894, -0.834796, -0.159685,
		0.848890, -0.507578, -0.147481,
		37.269558, 39.676285, 47.570518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595341, 39.579105, 48.232159>,  <36.675335, 40.031590, 47.673756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595341, 39.579105, 48.232159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966961, 39.524567, 48.094593>,  <37.189934, 39.491844, 48.012054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966961, 39.524567, 48.094593>,  <36.595341, 39.579105, 48.232159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966961, 39.524567, 48.094593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337003, -0.071649, 0.938773,
		-0.152639, -0.988067, -0.020617,
		0.929048, -0.136345, -0.343918,
		37.245674, 39.483662, 47.991417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849770, 38.938145, 48.498096>,  <36.595341, 39.579105, 48.232159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849770, 38.938145, 48.498096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186146, 39.136066, 48.410484>,  <37.387974, 39.254822, 48.357918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186146, 39.136066, 48.410484>,  <36.849770, 38.938145, 48.498096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186146, 39.136066, 48.410484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426725, -0.357507, 0.830719,
		0.332742, -0.792056, -0.511792,
		0.840945, 0.494809, -0.219032,
		37.438431, 39.284508, 48.344776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354355, 38.505432, 48.728561>,  <36.849770, 38.938145, 48.498096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354355, 38.505432, 48.728561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486294, 38.883026, 48.724556>,  <37.565456, 39.109581, 48.722153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486294, 38.883026, 48.724556>,  <37.354355, 38.505432, 48.728561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486294, 38.883026, 48.724556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362747, -0.116944, 0.924521,
		0.871561, -0.308580, -0.381000,
		0.329844, 0.943982, -0.010013,
		37.585247, 39.166222, 48.721554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117081, 38.409306, 48.785755>,  <37.354355, 38.505432, 48.728561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117081, 38.409306, 48.785755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984394, 38.761555, 48.921082>,  <37.904781, 38.972904, 49.002277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984394, 38.761555, 48.921082>,  <38.117081, 38.409306, 48.785755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984394, 38.761555, 48.921082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378930, -0.204045, 0.902650,
		0.863930, 0.427624, -0.266011,
		-0.331717, 0.880627, 0.338320,
		37.884880, 39.025742, 49.022579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568417, 38.472183, 49.319824>,  <38.117081, 38.409306, 48.785755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568417, 38.472183, 49.319824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.314171, 38.779812, 49.346729>,  <38.161621, 38.964390, 49.362873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.314171, 38.779812, 49.346729>,  <38.568417, 38.472183, 49.319824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314171, 38.779812, 49.346729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356259, 0.214911, 0.909336,
		0.684887, 0.601952, -0.410589,
		-0.635617, 0.769069, 0.067262,
		38.123486, 39.010532, 49.366909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929550, 38.997334, 49.674786>,  <38.568417, 38.472183, 49.319824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929550, 38.997334, 49.674786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.536320, 39.050186, 49.725544>,  <38.300381, 39.081898, 49.756001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.536320, 39.050186, 49.725544>,  <38.929550, 38.997334, 49.674786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536320, 39.050186, 49.725544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145877, 0.145580, 0.978533,
		0.110825, 0.980483, -0.162392,
		-0.983076, 0.132135, 0.126895,
		38.241398, 39.089828, 49.763611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891037, 39.618271, 50.030296>,  <38.929550, 38.997334, 49.674786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891037, 39.618271, 50.030296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568478, 39.391590, 50.097900>,  <38.374943, 39.255581, 50.138462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568478, 39.391590, 50.097900>,  <38.891037, 39.618271, 50.030296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568478, 39.391590, 50.097900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053296, 0.214993, 0.975160,
		-0.588962, 0.795379, -0.143168,
		-0.806402, -0.566702, 0.169013,
		38.326557, 39.221581, 50.148605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513699, 39.941273, 50.457211>,  <38.891037, 39.618271, 50.030296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513699, 39.941273, 50.457211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358093, 39.577328, 50.514927>,  <38.264732, 39.358959, 50.549557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358093, 39.577328, 50.514927>,  <38.513699, 39.941273, 50.457211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358093, 39.577328, 50.514927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135943, 0.211610, 0.967854,
		-0.911147, 0.356891, -0.206008,
		-0.389012, -0.909863, 0.144291,
		38.241390, 39.304367, 50.558216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897697, 40.045189, 50.818558>,  <38.513699, 39.941273, 50.457211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897697, 40.045189, 50.818558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023926, 39.677334, 50.912090>,  <38.099663, 39.456619, 50.968208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023926, 39.677334, 50.912090>,  <37.897697, 40.045189, 50.818558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023926, 39.677334, 50.912090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002762, 0.245527, 0.969386,
		-0.948898, -0.306557, 0.074941,
		0.315572, -0.919641, 0.233827,
		38.118599, 39.401440, 50.982239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483837, 39.935028, 51.370365>,  <37.897697, 40.045189, 50.818558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483837, 39.935028, 51.370365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773315, 39.659042, 51.376221>,  <37.947002, 39.493450, 51.379734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773315, 39.659042, 51.376221>,  <37.483837, 39.935028, 51.370365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773315, 39.659042, 51.376221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021563, -0.001403, 0.999767,
		-0.689781, -0.723843, -0.015893,
		0.723697, -0.689963, 0.014640,
		37.990425, 39.452053, 51.380611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327713, 40.721695, 51.574356>,  <37.483837, 39.935028, 51.370365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327713, 40.721695, 51.574356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424374, 40.918655, 51.908813>,  <37.482368, 41.036831, 52.109489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424374, 40.918655, 51.908813>,  <37.327713, 40.721695, 51.574356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424374, 40.918655, 51.908813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783424, 0.607456, -0.131319,
		-0.572585, -0.623325, 0.532553,
		0.241648, 0.492406, 0.836148,
		37.496868, 41.066376, 52.159657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727791, 40.636707, 52.018913>,  <37.327713, 40.721695, 51.574356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727791, 40.636707, 52.018913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956970, 40.944569, 52.131599>,  <37.094479, 41.129284, 52.199211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956970, 40.944569, 52.131599>,  <36.727791, 40.636707, 52.018913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956970, 40.944569, 52.131599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809061, 0.586047, 0.044374,
		-0.130945, -0.253348, 0.958472,
		0.572952, 0.769651, 0.281714,
		37.128857, 41.175465, 52.216114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376247, 40.624966, 52.363277>,  <36.727791, 40.636707, 52.018913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376247, 40.624966, 52.363277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410721, 40.390503, 52.685516>,  <37.431404, 40.249825, 52.878860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410721, 40.390503, 52.685516>,  <37.376247, 40.624966, 52.363277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410721, 40.390503, 52.685516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024935, 0.809625, 0.586418,
		-0.995967, -0.030450, 0.084391,
		0.086182, -0.586157, 0.805601,
		37.436577, 40.214657, 52.927197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789494, 40.751015, 52.813263>,  <37.376247, 40.624966, 52.363277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789494, 40.751015, 52.813263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112633, 40.614609, 53.005554>,  <37.306515, 40.532764, 53.120930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112633, 40.614609, 53.005554>,  <36.789494, 40.751015, 52.813263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112633, 40.614609, 53.005554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070883, 0.865916, 0.495140,
		-0.585116, -0.365922, 0.723699,
		0.807846, -0.341012, 0.480724,
		37.354988, 40.512306, 53.149773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153614, 40.429604, 52.731544>,  <36.789494, 40.751015, 52.813263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153614, 40.429604, 52.731544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824829, 40.611317, 52.594131>,  <35.627560, 40.720345, 52.511684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824829, 40.611317, 52.594131>,  <36.153614, 40.429604, 52.731544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824829, 40.611317, 52.594131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047411, -0.546495, -0.836119,
		-0.567574, -0.703540, 0.427657,
		-0.821956, 0.454284, -0.343532,
		35.578239, 40.747601, 52.491074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776707, 39.946301, 52.304707>,  <36.153614, 40.429604, 52.731544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776707, 39.946301, 52.304707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589447, 40.270050, 52.162865>,  <35.477089, 40.464302, 52.077759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589447, 40.270050, 52.162865>,  <35.776707, 39.946301, 52.304707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589447, 40.270050, 52.162865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059911, -0.429444, -0.901104,
		-0.881615, -0.400608, 0.249536,
		-0.468151, 0.809377, -0.354604,
		35.449001, 40.512863, 52.056484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222401, 39.678043, 51.941231>,  <35.776707, 39.946301, 52.304707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222401, 39.678043, 51.941231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.279255, 40.041328, 51.783775>,  <35.313366, 40.259300, 51.689301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.279255, 40.041328, 51.783775>,  <35.222401, 39.678043, 51.941231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279255, 40.041328, 51.783775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010686, -0.399066, -0.916860,
		-0.989789, 0.126113, -0.066428,
		0.142137, 0.908208, -0.393643,
		35.321896, 40.313789, 51.665684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745796, 39.760307, 51.485050>,  <35.222401, 39.678043, 51.941231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745796, 39.760307, 51.485050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028591, 40.021248, 51.375786>,  <35.198269, 40.177811, 51.310226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028591, 40.021248, 51.375786>,  <34.745796, 39.760307, 51.485050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028591, 40.021248, 51.375786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100312, -0.474833, -0.874340,
		-0.700080, 0.590743, -0.401137,
		0.706984, 0.652347, -0.273162,
		35.240685, 40.216953, 51.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514996, 39.973038, 50.853634>,  <34.745796, 39.760307, 51.485050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514996, 39.973038, 50.853634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897247, 40.089928, 50.838825>,  <35.126598, 40.160061, 50.829941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897247, 40.089928, 50.838825>,  <34.514996, 39.973038, 50.853634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897247, 40.089928, 50.838825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119539, -0.499598, -0.857970,
		-0.269216, 0.815479, -0.512365,
		0.955632, 0.292227, -0.037019,
		35.183937, 40.177597, 50.827721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715279, 40.502403, 50.295357>,  <34.514996, 39.973038, 50.853634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715279, 40.502403, 50.295357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057358, 40.308754, 50.369400>,  <35.262604, 40.192566, 50.413826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057358, 40.308754, 50.369400>,  <34.715279, 40.502403, 50.295357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057358, 40.308754, 50.369400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009109, -0.343052, -0.939272,
		0.518223, 0.804949, -0.288967,
		0.855197, -0.484120, 0.185109,
		35.313915, 40.163517, 50.424934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216557, 40.563194, 49.756645>,  <34.715279, 40.502403, 50.295357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216557, 40.563194, 49.756645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.347961, 40.234188, 49.942356>,  <35.426804, 40.036785, 50.053783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.347961, 40.234188, 49.942356>,  <35.216557, 40.563194, 49.756645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347961, 40.234188, 49.942356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087019, -0.463112, -0.882018,
		0.940484, 0.330151, -0.080562,
		0.328508, -0.822513, 0.464279,
		35.446514, 39.987434, 50.081638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751217, 40.462860, 49.370071>,  <35.216557, 40.563194, 49.756645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751217, 40.462860, 49.370071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645531, 40.128216, 49.562019>,  <35.582119, 39.927429, 49.677189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645531, 40.128216, 49.562019>,  <35.751217, 40.462860, 49.370071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645531, 40.128216, 49.562019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132760, -0.524357, -0.841085,
		0.955284, -0.158517, 0.249610,
		-0.264211, -0.836613, 0.479865,
		35.566269, 39.877232, 49.705978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243057, 40.138847, 49.120529>,  <35.751217, 40.462860, 49.370071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243057, 40.138847, 49.120529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942127, 39.903847, 49.239758>,  <35.761570, 39.762844, 49.311295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942127, 39.903847, 49.239758>,  <36.243057, 40.138847, 49.120529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942127, 39.903847, 49.239758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235133, -0.662108, -0.711566,
		0.615401, -0.465244, 0.636263,
		-0.752326, -0.587505, 0.298067,
		35.716431, 39.727596, 49.329178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506634, 39.398891, 49.051502>,  <36.243057, 40.138847, 49.120529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506634, 39.398891, 49.051502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107964, 39.367481, 49.060188>,  <35.868763, 39.348633, 49.065399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107964, 39.367481, 49.060188>,  <36.506634, 39.398891, 49.051502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107964, 39.367481, 49.060188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025475, -0.553516, -0.832449,
		0.077392, -0.829128, 0.553676,
		-0.996675, -0.078530, 0.021715,
		35.808960, 39.343922, 49.066704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431332, 38.700428, 49.027210>,  <36.506634, 39.398891, 49.051502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431332, 38.700428, 49.027210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096970, 38.883492, 48.906006>,  <35.896355, 38.993332, 48.833282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096970, 38.883492, 48.906006>,  <36.431332, 38.700428, 49.027210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096970, 38.883492, 48.906006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040141, -0.601541, -0.797833,
		-0.547409, -0.654747, 0.521200,
		-0.835902, 0.457662, -0.303007,
		35.846199, 39.020790, 48.815105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112015, 38.148003, 48.701210>,  <36.431332, 38.700428, 49.027210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112015, 38.148003, 48.701210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914249, 38.475105, 48.583344>,  <35.795589, 38.671368, 48.512623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914249, 38.475105, 48.583344>,  <36.112015, 38.148003, 48.701210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914249, 38.475105, 48.583344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144618, -0.411655, -0.899792,
		-0.857114, -0.402252, 0.321789,
		-0.494409, 0.817761, -0.294663,
		35.765926, 38.720432, 48.494946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415260, 37.979824, 48.462788>,  <36.112015, 38.148003, 48.701210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415260, 37.979824, 48.462788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489044, 38.325886, 48.276245>,  <35.533314, 38.533524, 48.164322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489044, 38.325886, 48.276245>,  <35.415260, 37.979824, 48.462788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489044, 38.325886, 48.276245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281156, -0.408217, -0.868510,
		-0.941768, 0.291321, 0.167944,
		0.184458, 0.865153, -0.466353,
		35.544380, 38.585430, 48.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860516, 38.171246, 48.012329>,  <35.415260, 37.979824, 48.462788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860516, 38.171246, 48.012329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159073, 38.392086, 47.863693>,  <35.338207, 38.524590, 47.774513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159073, 38.392086, 47.863693>,  <34.860516, 38.171246, 48.012329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159073, 38.392086, 47.863693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193069, -0.354702, -0.914828,
		-0.636881, 0.754566, -0.158154,
		0.746396, 0.552102, -0.371587,
		35.382992, 38.557716, 47.752216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600807, 38.508717, 47.514065>,  <34.860516, 38.171246, 48.012329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600807, 38.508717, 47.514065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986511, 38.534588, 47.411293>,  <35.217934, 38.550110, 47.349628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986511, 38.534588, 47.411293>,  <34.600807, 38.508717, 47.514065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986511, 38.534588, 47.411293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254751, -0.040068, -0.966176,
		-0.072784, 0.997101, -0.022160,
		0.964264, 0.064677, -0.256929,
		35.275791, 38.553989, 47.334213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504299, 38.796684, 46.990784>,  <34.600807, 38.508717, 47.514065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504299, 38.796684, 46.990784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884220, 38.688046, 46.928673>,  <35.112171, 38.622864, 46.891407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884220, 38.688046, 46.928673>,  <34.504299, 38.796684, 46.990784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884220, 38.688046, 46.928673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166751, -0.019546, -0.985805,
		0.264704, 0.962213, -0.063853,
		0.949803, -0.271594, -0.155276,
		35.169163, 38.606567, 46.882092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770466, 39.208782, 46.384415>,  <34.504299, 38.796684, 46.990784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770466, 39.208782, 46.384415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004505, 38.888012, 46.432720>,  <35.144928, 38.695549, 46.461704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004505, 38.888012, 46.432720>,  <34.770466, 39.208782, 46.384415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004505, 38.888012, 46.432720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037164, -0.175275, -0.983818,
		0.810112, 0.571140, -0.132355,
		0.585096, -0.801921, 0.120767,
		35.180035, 38.647434, 46.468948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278889, 39.237469, 45.831352>,  <34.770466, 39.208782, 46.384415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278889, 39.237469, 45.831352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231415, 38.862999, 45.963707>,  <35.202930, 38.638317, 46.043121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231415, 38.862999, 45.963707>,  <35.278889, 39.237469, 45.831352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231415, 38.862999, 45.963707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015869, -0.331413, -0.943352,
		0.992806, -0.117210, 0.024477,
		-0.118682, -0.936177, 0.330889,
		35.195808, 38.582146, 46.062973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688488, 38.778316, 45.321232>,  <35.278889, 39.237469, 45.831352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688488, 38.778316, 45.321232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454945, 38.519508, 45.517384>,  <35.314819, 38.364223, 45.635075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454945, 38.519508, 45.517384>,  <35.688488, 38.778316, 45.321232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454945, 38.519508, 45.517384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189967, -0.478380, -0.857360,
		0.789317, -0.593733, 0.156394,
		-0.583859, -0.647019, 0.490383,
		35.279785, 38.325401, 45.664497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.478195, 38.686199, 28.887938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281498, 39.034180, 28.873137>,  <43.163479, 39.242970, 28.864256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281498, 39.034180, 28.873137>,  <43.478195, 38.686199, 28.887938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281498, 39.034180, 28.873137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312271, -0.136527, 0.940132,
		0.812818, 0.473859, 0.338797,
		-0.491745, 0.869953, -0.037000,
		43.133976, 39.295166, 28.862036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648872, 38.970764, 29.505768>,  <43.478195, 38.686199, 28.887938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648872, 38.970764, 29.505768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300472, 39.115982, 29.373367>,  <43.091434, 39.203114, 29.293926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300472, 39.115982, 29.373367>,  <43.648872, 38.970764, 29.505768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300472, 39.115982, 29.373367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386217, -0.089568, 0.918049,
		0.303647, 0.927456, 0.218228,
		-0.870996, 0.363047, -0.331003,
		43.039173, 39.224895, 29.274067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533237, 39.514561, 29.873432>,  <43.648872, 38.970764, 29.505768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533237, 39.514561, 29.873432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165161, 39.417511, 29.750551>,  <42.944313, 39.359280, 29.676823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165161, 39.417511, 29.750551>,  <43.533237, 39.514561, 29.873432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165161, 39.417511, 29.750551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338822, 0.100593, 0.935458,
		-0.196065, 0.964890, -0.174773,
		-0.920195, -0.242627, -0.307203,
		42.889103, 39.344723, 29.658390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036442, 40.087742, 29.988688>,  <43.533237, 39.514561, 29.873432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036442, 40.087742, 29.988688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851196, 39.733341, 29.997828>,  <42.740047, 39.520699, 30.003311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851196, 39.733341, 29.997828>,  <43.036442, 40.087742, 29.988688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851196, 39.733341, 29.997828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273993, 0.167642, 0.947008,
		-0.842884, 0.432312, -0.320396,
		-0.463115, -0.886004, 0.022852,
		42.712261, 39.467541, 30.004683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856438, 40.100155, 30.615252>,  <43.036442, 40.087742, 29.988688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856438, 40.100155, 30.615252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.709755, 39.740715, 30.518883>,  <42.621746, 39.525051, 30.461061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.709755, 39.740715, 30.518883>,  <42.856438, 40.100155, 30.615252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709755, 39.740715, 30.518883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246969, -0.155647, 0.956441,
		-0.896959, 0.410230, -0.164851,
		-0.366702, -0.898602, -0.240923,
		42.599743, 39.471134, 30.446606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160149, 40.123440, 30.994200>,  <42.856438, 40.100155, 30.615252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160149, 40.123440, 30.994200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295418, 39.755581, 30.914303>,  <42.376579, 39.534866, 30.866365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295418, 39.755581, 30.914303>,  <42.160149, 40.123440, 30.994200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295418, 39.755581, 30.914303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179095, -0.271258, 0.945698,
		-0.923887, -0.284033, -0.256435,
		0.338169, -0.919644, -0.199743,
		42.396870, 39.479687, 30.854380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669102, 39.569008, 31.289633>,  <42.160149, 40.123440, 30.994200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669102, 39.569008, 31.289633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008770, 39.361763, 31.248697>,  <42.212570, 39.237415, 31.224136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008770, 39.361763, 31.248697>,  <41.669102, 39.569008, 31.289633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008770, 39.361763, 31.248697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114946, -0.370456, 0.921710,
		-0.515461, -0.770924, -0.374134,
		0.849169, -0.518111, -0.102341,
		42.263519, 39.206329, 31.217995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666492, 38.903618, 31.670944>,  <41.669102, 39.569008, 31.289633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666492, 38.903618, 31.670944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056393, 38.970039, 31.611223>,  <42.290333, 39.009892, 31.575392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056393, 38.970039, 31.611223>,  <41.666492, 38.903618, 31.670944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056393, 38.970039, 31.611223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207460, -0.426072, 0.880581,
		0.082609, -0.889320, -0.449763,
		0.974750, 0.166052, -0.149301,
		42.348816, 39.019855, 31.566433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904865, 38.262077, 31.886312>,  <41.666492, 38.903618, 31.670944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904865, 38.262077, 31.886312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.221664, 38.506001, 31.898144>,  <42.411743, 38.652355, 31.905243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.221664, 38.506001, 31.898144>,  <41.904865, 38.262077, 31.886312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221664, 38.506001, 31.898144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362278, -0.508404, 0.781204,
		0.491425, -0.607994, -0.623575,
		0.791995, 0.609811, 0.029579,
		42.459263, 38.688942, 31.907017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537041, 37.868622, 32.026966>,  <41.904865, 38.262077, 31.886312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537041, 37.868622, 32.026966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612720, 38.246468, 32.134224>,  <42.658127, 38.473175, 32.198578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612720, 38.246468, 32.134224>,  <42.537041, 37.868622, 32.026966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612720, 38.246468, 32.134224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559579, -0.328118, 0.761058,
		0.806893, 0.006059, -0.590667,
		0.189197, 0.944618, 0.268146,
		42.669479, 38.529854, 32.214668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272003, 37.909130, 32.036339>,  <42.537041, 37.868622, 32.026966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272003, 37.909130, 32.036339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094082, 38.186481, 32.263100>,  <42.987328, 38.352894, 32.399155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094082, 38.186481, 32.263100>,  <43.272003, 37.909130, 32.036339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094082, 38.186481, 32.263100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589307, -0.250062, 0.768236,
		0.674439, 0.675791, -0.297386,
		-0.444803, 0.693380, 0.566900,
		42.960640, 38.394497, 32.433170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753304, 38.088108, 32.401459>,  <43.272003, 37.909130, 32.036339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753304, 38.088108, 32.401459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443066, 38.228401, 32.611389>,  <43.256924, 38.312576, 32.737347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443066, 38.228401, 32.611389>,  <43.753304, 38.088108, 32.401459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443066, 38.228401, 32.611389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490236, -0.189082, 0.850833,
		0.397649, 0.917189, -0.025290,
		-0.775593, 0.350731, 0.524827,
		43.210388, 38.333622, 32.768837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035122, 38.559856, 32.963268>,  <43.753304, 38.088108, 32.401459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035122, 38.559856, 32.963268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672920, 38.437778, 33.081200>,  <43.455601, 38.364532, 33.151958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672920, 38.437778, 33.081200>,  <44.035122, 38.559856, 32.963268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672920, 38.437778, 33.081200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333088, -0.080739, 0.939432,
		-0.262905, 0.948861, 0.174766,
		-0.905502, -0.305194, 0.294828,
		43.401268, 38.346222, 33.169647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994389, 38.624481, 33.717754>,  <44.035122, 38.559856, 32.963268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994389, 38.624481, 33.717754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686859, 38.382957, 33.633537>,  <43.502342, 38.238045, 33.583008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686859, 38.382957, 33.633537>,  <43.994389, 38.624481, 33.717754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686859, 38.382957, 33.633537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058824, -0.394636, 0.916952,
		-0.636755, 0.692586, 0.338923,
		-0.768819, -0.603810, -0.210546,
		43.456215, 38.201813, 33.570374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548603, 38.558910, 34.373234>,  <43.994389, 38.624481, 33.717754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548603, 38.558910, 34.373234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430542, 38.247303, 34.151958>,  <43.359703, 38.060337, 34.019196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430542, 38.247303, 34.151958>,  <43.548603, 38.558910, 34.373234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430542, 38.247303, 34.151958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033213, -0.570264, 0.820790,
		-0.954872, 0.260633, 0.142442,
		-0.295155, -0.779018, -0.553186,
		43.341995, 38.013599, 33.986004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892788, 38.216774, 34.684479>,  <43.548603, 38.558910, 34.373234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892788, 38.216774, 34.684479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041355, 37.927753, 34.451252>,  <43.130497, 37.754341, 34.311317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041355, 37.927753, 34.451252>,  <42.892788, 38.216774, 34.684479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041355, 37.927753, 34.451252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145518, -0.665532, 0.732046,
		-0.916990, -0.187052, -0.352338,
		0.371423, -0.722551, -0.583066,
		43.152782, 37.710987, 34.276333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362396, 37.587746, 34.676781>,  <42.892788, 38.216774, 34.684479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362396, 37.587746, 34.676781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734364, 37.476185, 34.580898>,  <42.957546, 37.409248, 34.523369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734364, 37.476185, 34.580898>,  <42.362396, 37.587746, 34.676781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734364, 37.476185, 34.580898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023264, -0.695121, 0.718516,
		-0.367020, -0.662588, -0.652897,
		0.929922, -0.278899, -0.239709,
		43.013340, 37.392513, 34.508984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315205, 36.869358, 34.665260>,  <42.362396, 37.587746, 34.676781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315205, 36.869358, 34.665260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711063, 36.922272, 34.687565>,  <42.948578, 36.954018, 34.700947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711063, 36.922272, 34.687565>,  <42.315205, 36.869358, 34.665260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711063, 36.922272, 34.687565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049514, -0.679132, 0.732344,
		0.134744, -0.721998, -0.678647,
		0.989642, 0.132281, 0.055760,
		43.007957, 36.961956, 34.704292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581230, 36.241512, 34.537079>,  <42.315205, 36.869358, 34.665260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581230, 36.241512, 34.537079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880733, 36.428436, 34.725117>,  <43.060436, 36.540592, 34.837940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880733, 36.428436, 34.725117>,  <42.581230, 36.241512, 34.537079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880733, 36.428436, 34.725117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192072, -0.831739, 0.520882,
		0.634410, -0.299721, -0.712525,
		0.748754, 0.467309, 0.470095,
		43.105358, 36.568630, 34.866146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078510, 35.756111, 34.509014>,  <42.581230, 36.241512, 34.537079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078510, 35.756111, 34.509014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207096, 36.017822, 34.782829>,  <43.284248, 36.174847, 34.947117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207096, 36.017822, 34.782829>,  <43.078510, 35.756111, 34.509014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207096, 36.017822, 34.782829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168658, -0.750907, 0.638509,
		0.931782, -0.089804, -0.351736,
		0.321461, 0.654274, 0.684536,
		43.303535, 36.214104, 34.988190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705280, 35.470608, 34.768162>,  <43.078510, 35.756111, 34.509014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705280, 35.470608, 34.768162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515049, 35.700935, 35.034172>,  <43.400909, 35.839134, 35.193779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515049, 35.700935, 35.034172>,  <43.705280, 35.470608, 34.768162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515049, 35.700935, 35.034172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028408, -0.745541, 0.665854,
		0.879217, 0.335555, 0.338202,
		-0.475574, 0.575822, 0.665025,
		43.372375, 35.873680, 35.233681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061913, 35.523922, 35.415577>,  <43.705280, 35.470608, 34.768162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061913, 35.523922, 35.415577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664871, 35.545338, 35.459175>,  <43.426647, 35.558186, 35.485332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664871, 35.545338, 35.459175>,  <44.061913, 35.523922, 35.415577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664871, 35.545338, 35.459175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041824, -0.691913, 0.720768,
		0.114001, 0.719993, 0.684554,
		-0.992600, 0.053537, 0.108992,
		43.367092, 35.561398, 35.491871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499859, 35.012211, 35.112122>,  <44.061913, 35.523922, 35.415577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499859, 35.012211, 35.112122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668968, 34.892513, 34.769958>,  <44.770432, 34.820694, 34.564663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668968, 34.892513, 34.769958>,  <44.499859, 35.012211, 35.112122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668968, 34.892513, 34.769958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712224, 0.473938, -0.517803,
		0.560360, 0.828151, -0.012764,
		0.422770, -0.299247, -0.855404,
		44.795799, 34.802738, 34.513336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507496, 35.615406, 34.573235>,  <44.499859, 35.012211, 35.112122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507496, 35.615406, 34.573235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579517, 35.286789, 34.356850>,  <44.622730, 35.089619, 34.227016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579517, 35.286789, 34.356850>,  <44.507496, 35.615406, 34.573235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579517, 35.286789, 34.356850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527919, 0.383329, -0.757866,
		0.829988, 0.422045, -0.364688,
		0.180057, -0.821546, -0.540964,
		44.633533, 35.040325, 34.194561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380066, 35.932053, 33.926815>,  <44.507496, 35.615406, 34.573235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380066, 35.932053, 33.926815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382229, 35.540577, 33.844700>,  <44.383526, 35.305691, 33.795429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382229, 35.540577, 33.844700>,  <44.380066, 35.932053, 33.926815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382229, 35.540577, 33.844700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370602, 0.188711, -0.909419,
		0.928776, 0.081001, -0.361682,
		0.005410, -0.978687, -0.205289,
		44.383850, 35.246971, 33.783112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583874, 35.888145, 33.264061>,  <44.380066, 35.932053, 33.926815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583874, 35.888145, 33.264061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422951, 35.528545, 33.333290>,  <44.326397, 35.312786, 33.374828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422951, 35.528545, 33.333290>,  <44.583874, 35.888145, 33.264061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422951, 35.528545, 33.333290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566497, 0.095940, -0.818460,
		0.719188, -0.427318, -0.547876,
		-0.402305, -0.898997, 0.173075,
		44.302258, 35.258846, 33.385212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668438, 35.427856, 32.557442>,  <44.583874, 35.888145, 33.264061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668438, 35.427856, 32.557442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368778, 35.290871, 32.784245>,  <44.188984, 35.208679, 32.920326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368778, 35.290871, 32.784245>,  <44.668438, 35.427856, 32.557442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368778, 35.290871, 32.784245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631301, 0.109929, -0.767707,
		0.200585, -0.933077, -0.298553,
		-0.749149, -0.342467, 0.567002,
		44.144032, 35.188133, 32.954346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214478, 35.180817, 32.073883>,  <44.668438, 35.427856, 32.557442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214478, 35.180817, 32.073883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969715, 35.164352, 32.389828>,  <43.822857, 35.154472, 32.579395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969715, 35.164352, 32.389828>,  <44.214478, 35.180817, 32.073883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969715, 35.164352, 32.389828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788756, 0.105817, -0.605530,
		-0.058658, -0.993534, -0.097213,
		-0.611901, -0.041158, 0.789862,
		43.786144, 35.152004, 32.626785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706886, 34.723549, 31.929276>,  <44.214478, 35.180817, 32.073883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706886, 34.723549, 31.929276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539875, 34.971638, 32.194908>,  <43.439671, 35.120491, 32.354286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539875, 34.971638, 32.194908>,  <43.706886, 34.723549, 31.929276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539875, 34.971638, 32.194908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750778, 0.176221, -0.636615,
		-0.511866, -0.764378, 0.392071,
		-0.417524, 0.620220, 0.664080,
		43.414619, 35.157703, 32.394131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093037, 34.513161, 31.835693>,  <43.706886, 34.723549, 31.929276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093037, 34.513161, 31.835693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059574, 34.869560, 32.014187>,  <43.039497, 35.083401, 32.121284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059574, 34.869560, 32.014187>,  <43.093037, 34.513161, 31.835693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059574, 34.869560, 32.014187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888594, 0.135974, -0.438077,
		-0.451002, -0.433166, 0.780362,
		-0.083652, 0.890999, 0.446233,
		43.034477, 35.136860, 32.148056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465694, 34.506737, 31.936367>,  <43.093037, 34.513161, 31.835693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465694, 34.506737, 31.936367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.560741, 34.895203, 31.944237>,  <42.617767, 35.128281, 31.948959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.560741, 34.895203, 31.944237>,  <42.465694, 34.506737, 31.936367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560741, 34.895203, 31.944237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838465, 0.215291, -0.500626,
		-0.490424, 0.102459, 0.865440,
		0.237615, 0.971160, 0.019675,
		42.632027, 35.186550, 31.950140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814346, 34.803959, 32.095303>,  <42.465694, 34.506737, 31.936367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814346, 34.803959, 32.095303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.048813, 35.075634, 31.918619>,  <42.189495, 35.238640, 31.812609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.048813, 35.075634, 31.918619>,  <41.814346, 34.803959, 32.095303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048813, 35.075634, 31.918619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774378, 0.309374, -0.551929,
		-0.238209, 0.665576, 0.707294,
		0.586169, 0.679187, -0.441712,
		42.224663, 35.279388, 31.786106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557907, 35.534718, 32.208454>,  <41.814346, 34.803959, 32.095303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557907, 35.534718, 32.208454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780113, 35.519978, 31.876177>,  <41.913437, 35.511131, 31.676811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780113, 35.519978, 31.876177>,  <41.557907, 35.534718, 32.208454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780113, 35.519978, 31.876177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773674, 0.343159, -0.532607,
		0.304688, 0.938554, 0.162117,
		0.555512, -0.036853, -0.830691,
		41.946766, 35.508923, 31.626970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107861, 35.809151, 31.698988>,  <41.557907, 35.534718, 32.208454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107861, 35.809151, 31.698988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400551, 35.703590, 31.447611>,  <41.576164, 35.640255, 31.296785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400551, 35.703590, 31.447611>,  <41.107861, 35.809151, 31.698988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400551, 35.703590, 31.447611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471200, 0.470349, -0.746151,
		0.492495, 0.842098, 0.219817,
		0.731724, -0.263898, -0.628441,
		41.620068, 35.624420, 31.259079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185585, 36.403873, 31.191788>,  <41.107861, 35.809151, 31.698988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185585, 36.403873, 31.191788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341812, 36.086205, 31.005568>,  <41.435551, 35.895603, 30.893835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341812, 36.086205, 31.005568>,  <41.185585, 36.403873, 31.191788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341812, 36.086205, 31.005568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356174, 0.335969, -0.871932,
		0.848878, 0.506369, -0.151645,
		0.390571, -0.794176, -0.465552,
		41.458984, 35.847950, 30.865902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568138, 36.682331, 30.555325>,  <41.185585, 36.403873, 31.191788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568138, 36.682331, 30.555325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.525455, 36.292568, 30.476189>,  <41.499844, 36.058712, 30.428707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.525455, 36.292568, 30.476189>,  <41.568138, 36.682331, 30.555325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525455, 36.292568, 30.476189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210851, 0.216628, -0.953212,
		0.971676, -0.060001, -0.228572,
		-0.106709, -0.974409, -0.197841,
		41.493443, 36.000244, 30.416836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858986, 36.517223, 29.981041>,  <41.568138, 36.682331, 30.555325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858986, 36.517223, 29.981041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659142, 36.173061, 29.940853>,  <41.539234, 35.966564, 29.916740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659142, 36.173061, 29.940853>,  <41.858986, 36.517223, 29.981041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659142, 36.173061, 29.940853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117462, 0.182197, -0.976221,
		0.858250, -0.475927, -0.192092,
		-0.499609, -0.860406, -0.100467,
		41.509258, 35.914940, 29.910713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093704, 36.203762, 29.334768>,  <41.858986, 36.517223, 29.981041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093704, 36.203762, 29.334768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735893, 36.054295, 29.432909>,  <41.521206, 35.964615, 29.491795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735893, 36.054295, 29.432909>,  <42.093704, 36.203762, 29.334768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735893, 36.054295, 29.432909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361629, 0.282263, -0.888567,
		0.262771, -0.883574, -0.387619,
		-0.894525, -0.373664, 0.245356,
		41.467537, 35.942192, 29.506516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776913, 35.804993, 28.761568>,  <42.093704, 36.203762, 29.334768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776913, 35.804993, 28.761568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.473568, 35.925114, 28.992985>,  <41.291561, 35.997185, 29.131834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.473568, 35.925114, 28.992985>,  <41.776913, 35.804993, 28.761568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473568, 35.925114, 28.992985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568949, 0.128187, -0.812321,
		-0.318104, -0.945191, 0.073646,
		-0.758358, 0.300304, 0.578542,
		41.246059, 36.015205, 29.166548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241535, 35.547726, 28.543549>,  <41.776913, 35.804993, 28.761568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241535, 35.547726, 28.543549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058964, 35.847588, 28.735250>,  <40.949421, 36.027504, 28.850271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058964, 35.847588, 28.735250>,  <41.241535, 35.547726, 28.543549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058964, 35.847588, 28.735250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679374, 0.054193, -0.731788,
		-0.574561, -0.659606, 0.484561,
		-0.456432, 0.749655, 0.479257,
		40.922035, 36.072483, 28.879028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604603, 35.466557, 28.352594>,  <41.241535, 35.547726, 28.543549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604603, 35.466557, 28.352594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584339, 35.821621, 28.535677>,  <40.572182, 36.034660, 28.645527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584339, 35.821621, 28.535677>,  <40.604603, 35.466557, 28.352594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584339, 35.821621, 28.535677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577304, 0.347945, -0.738684,
		-0.814956, -0.301656, 0.494823,
		-0.050657, 0.887659, 0.457707,
		40.569141, 36.087917, 28.672989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950176, 35.650574, 28.308273>,  <40.604603, 35.466557, 28.352594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950176, 35.650574, 28.308273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138512, 35.998692, 28.366108>,  <40.251511, 36.207561, 28.400808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138512, 35.998692, 28.366108>,  <39.950176, 35.650574, 28.308273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138512, 35.998692, 28.366108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500516, 0.398473, -0.768573,
		-0.726496, 0.289504, 0.623210,
		0.470837, 0.870292, 0.144588,
		40.279762, 36.259781, 28.409485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.982620, 39.116726, 40.664413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871376, 38.775639, 40.841286>,  <37.804630, 38.570984, 40.947407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871376, 38.775639, 40.841286>,  <37.982620, 39.116726, 40.664413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871376, 38.775639, 40.841286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078249, -0.438696, -0.895222,
		0.957357, -0.283570, 0.055282,
		-0.278110, -0.852721, 0.442178,
		37.787941, 38.519821, 40.973938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320648, 38.572411, 40.326435>,  <37.982620, 39.116726, 40.664413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320648, 38.572411, 40.326435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004749, 38.401562, 40.502560>,  <37.815212, 38.299053, 40.608234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004749, 38.401562, 40.502560>,  <38.320648, 38.572411, 40.326435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004749, 38.401562, 40.502560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180854, -0.523760, -0.832447,
		0.586171, -0.737052, 0.336390,
		-0.789744, -0.427119, 0.440312,
		37.767826, 38.273426, 40.634655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454453, 37.863506, 40.248470>,  <38.320648, 38.572411, 40.326435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454453, 37.863506, 40.248470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059498, 37.891960, 40.305038>,  <37.822525, 37.909035, 40.338978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059498, 37.891960, 40.305038>,  <38.454453, 37.863506, 40.248470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059498, 37.891960, 40.305038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158303, -0.445514, -0.881168,
		0.000321, -0.892444, 0.451157,
		-0.987391, 0.071137, 0.141420,
		37.763279, 37.913300, 40.347466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138481, 37.194801, 40.056877>,  <38.454453, 37.863506, 40.248470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138481, 37.194801, 40.056877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808369, 37.420666, 40.060215>,  <37.610302, 37.556183, 40.062218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808369, 37.420666, 40.060215>,  <38.138481, 37.194801, 40.056877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808369, 37.420666, 40.060215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361572, -0.517001, -0.775871,
		-0.433788, -0.643330, 0.630836,
		-0.825284, 0.564656, 0.008341,
		37.560783, 37.590061, 40.062717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628109, 36.774269, 40.222412>,  <38.138481, 37.194801, 40.056877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628109, 36.774269, 40.222412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459614, 37.078957, 40.025501>,  <37.358517, 37.261768, 39.907356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459614, 37.078957, 40.025501>,  <37.628109, 36.774269, 40.222412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459614, 37.078957, 40.025501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325193, -0.633546, -0.702047,
		-0.846645, -0.135644, 0.514580,
		-0.421239, 0.761722, -0.492278,
		37.333241, 37.307472, 39.877819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951698, 36.591537, 40.133179>,  <37.628109, 36.774269, 40.222412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951698, 36.591537, 40.133179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044285, 36.862926, 39.854298>,  <37.099838, 37.025761, 39.686970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044285, 36.862926, 39.854298>,  <36.951698, 36.591537, 40.133179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044285, 36.862926, 39.854298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311473, -0.627259, -0.713814,
		-0.921633, 0.382384, 0.066138,
		0.231466, 0.678475, -0.697205,
		37.113724, 37.066467, 39.645138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369648, 36.608967, 39.678352>,  <36.951698, 36.591537, 40.133179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369648, 36.608967, 39.678352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635433, 36.806541, 39.454021>,  <36.794903, 36.925087, 39.319424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635433, 36.806541, 39.454021>,  <36.369648, 36.608967, 39.678352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635433, 36.806541, 39.454021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417263, -0.377371, -0.826730,
		-0.619989, 0.783340, -0.044647,
		0.664459, 0.493933, -0.560825,
		36.834770, 36.954723, 39.285774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042961, 36.928596, 39.049545>,  <36.369648, 36.608967, 39.678352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042961, 36.928596, 39.049545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428310, 36.886482, 38.950886>,  <36.659519, 36.861214, 38.891689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428310, 36.886482, 38.950886>,  <36.042961, 36.928596, 39.049545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428310, 36.886482, 38.950886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266750, -0.281292, -0.921802,
		0.027669, 0.953829, -0.299072,
		0.963369, -0.105283, -0.246651,
		36.717319, 36.854897, 38.876892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111633, 37.111416, 38.357483>,  <36.042961, 36.928596, 39.049545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111633, 37.111416, 38.357483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425472, 36.870895, 38.417938>,  <36.613773, 36.726582, 38.454212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425472, 36.870895, 38.417938>,  <36.111633, 37.111416, 38.357483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425472, 36.870895, 38.417938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165663, -0.438223, -0.883468,
		0.597468, 0.668126, -0.443441,
		0.784594, -0.601306, 0.151141,
		36.660851, 36.690502, 38.463280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463516, 36.923527, 37.669853>,  <36.111633, 37.111416, 38.357483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463516, 36.923527, 37.669853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581749, 36.635578, 37.921066>,  <36.652687, 36.462811, 38.071793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581749, 36.635578, 37.921066>,  <36.463516, 36.923527, 37.669853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581749, 36.635578, 37.921066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029140, -0.650303, -0.759116,
		0.954872, 0.242683, -0.171242,
		0.295583, -0.719869, 0.628028,
		36.670425, 36.419617, 38.109474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029335, 36.665462, 37.268867>,  <36.463516, 36.923527, 37.669853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029335, 36.665462, 37.268867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915833, 36.388420, 37.534134>,  <36.847733, 36.222195, 37.693295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915833, 36.388420, 37.534134>,  <37.029335, 36.665462, 37.268867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915833, 36.388420, 37.534134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057140, -0.702574, -0.709313,
		0.957193, -0.163378, 0.238934,
		-0.283755, -0.692602, 0.663164,
		36.830708, 36.180641, 37.733082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556362, 36.117928, 37.076054>,  <37.029335, 36.665462, 37.268867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556362, 36.117928, 37.076054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249920, 35.969257, 37.285789>,  <37.066055, 35.880054, 37.411633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249920, 35.969257, 37.285789>,  <37.556362, 36.117928, 37.076054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249920, 35.969257, 37.285789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090769, -0.745084, -0.660765,
		0.636270, -0.553812, 0.537078,
		-0.766108, -0.371675, 0.524343,
		37.020088, 35.857754, 37.443092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373814, 36.096478, 37.030190>,  <37.556362, 36.117928, 37.076054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373814, 36.096478, 37.030190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605625, 36.344959, 36.819191>,  <38.744713, 36.494049, 36.692593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605625, 36.344959, 36.819191>,  <38.373814, 36.096478, 37.030190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605625, 36.344959, 36.819191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769549, 0.630171, -0.103337,
		0.268220, 0.465821, 0.843249,
		0.579528, 0.621204, -0.527497,
		38.779484, 36.531319, 36.660942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113041, 36.287697, 37.199871>,  <38.373814, 36.096478, 37.030190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113041, 36.287697, 37.199871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024982, 36.110123, 37.547310>,  <38.972149, 36.003578, 37.755772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024982, 36.110123, 37.547310>,  <39.113041, 36.287697, 37.199871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024982, 36.110123, 37.547310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724126, 0.522248, 0.450444,
		-0.653590, 0.728135, 0.206495,
		-0.220142, -0.443934, 0.868597,
		38.958939, 35.976944, 37.807888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766685, 35.845619, 36.939743>,  <39.113041, 36.287697, 37.199871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766685, 35.845619, 36.939743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903969, 35.473667, 36.886787>,  <39.986340, 35.250496, 36.855015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903969, 35.473667, 36.886787>,  <39.766685, 35.845619, 36.939743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903969, 35.473667, 36.886787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258474, -0.229010, 0.938481,
		-0.902993, -0.287879, -0.318949,
		0.343212, -0.929882, -0.132385,
		40.006931, 35.194702, 36.847073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384865, 35.497887, 37.430069>,  <39.766685, 35.845619, 36.939743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384865, 35.497887, 37.430069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657745, 35.226330, 37.321472>,  <39.821472, 35.063396, 37.256313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657745, 35.226330, 37.321472>,  <39.384865, 35.497887, 37.430069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657745, 35.226330, 37.321472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121455, -0.471376, 0.873529,
		-0.721007, -0.562948, -0.404028,
		0.682200, -0.678892, -0.271493,
		39.862404, 35.022663, 37.240025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053837, 34.874039, 37.656311>,  <39.384865, 35.497887, 37.430069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053837, 34.874039, 37.656311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447880, 34.805794, 37.647839>,  <39.684307, 34.764847, 37.642757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447880, 34.805794, 37.647839>,  <39.053837, 34.874039, 37.656311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447880, 34.805794, 37.647839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050314, -0.403877, 0.913429,
		-0.164399, -0.898762, -0.406447,
		0.985110, -0.170616, -0.021177,
		39.743412, 34.754608, 37.641487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227047, 34.135612, 37.663723>,  <39.053837, 34.874039, 37.656311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227047, 34.135612, 37.663723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539783, 34.315350, 37.836613>,  <39.727425, 34.423191, 37.940346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539783, 34.315350, 37.836613>,  <39.227047, 34.135612, 37.663723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539783, 34.315350, 37.836613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231382, -0.434629, 0.870379,
		0.578959, -0.780504, -0.235838,
		0.781837, 0.449345, 0.432227,
		39.774334, 34.450153, 37.966282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565239, 33.600960, 38.031639>,  <39.227047, 34.135612, 37.663723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565239, 33.600960, 38.031639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671787, 33.954449, 38.185566>,  <39.735714, 34.166542, 38.277920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671787, 33.954449, 38.185566>,  <39.565239, 33.600960, 38.031639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671787, 33.954449, 38.185566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060486, -0.383125, 0.921714,
		0.961972, -0.268791, -0.048599,
		0.266368, 0.883723, 0.384813,
		39.751698, 34.219566, 38.301010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791527, 33.378025, 38.682232>,  <39.565239, 33.600960, 38.031639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791527, 33.378025, 38.682232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763611, 33.773933, 38.732014>,  <39.746861, 34.011478, 38.761883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763611, 33.773933, 38.732014>,  <39.791527, 33.378025, 38.682232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763611, 33.773933, 38.732014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002361, -0.124594, 0.992205,
		0.997559, 0.069539, 0.006359,
		-0.069789, 0.989768, 0.124454,
		39.742676, 34.070866, 38.769348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315090, 33.517212, 39.099308>,  <39.791527, 33.378025, 38.682232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315090, 33.517212, 39.099308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038372, 33.802200, 39.146286>,  <39.872341, 33.973194, 39.174473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038372, 33.802200, 39.146286>,  <40.315090, 33.517212, 39.099308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038372, 33.802200, 39.146286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022849, -0.140962, 0.989751,
		0.721728, 0.687392, 0.081238,
		-0.691799, 0.712475, 0.117443,
		39.830833, 34.015942, 39.181519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574623, 33.926014, 39.627922>,  <40.315090, 33.517212, 39.099308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574623, 33.926014, 39.627922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184689, 34.013382, 39.610058>,  <39.950729, 34.065804, 39.599339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184689, 34.013382, 39.610058>,  <40.574623, 33.926014, 39.627922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184689, 34.013382, 39.610058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045054, 0.003178, 0.998979,
		0.218341, 0.975849, 0.006743,
		-0.974832, 0.218422, -0.044660,
		39.892239, 34.078907, 39.596661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595398, 34.430305, 40.089584>,  <40.574623, 33.926014, 39.627922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595398, 34.430305, 40.089584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218262, 34.302490, 40.051746>,  <39.991982, 34.225800, 40.029045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218262, 34.302490, 40.051746>,  <40.595398, 34.430305, 40.089584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218262, 34.302490, 40.051746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127402, 0.083332, 0.988344,
		-0.307933, 0.943901, -0.119278,
		-0.942839, -0.319540, -0.094594,
		39.935410, 34.206627, 40.023369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135799, 34.917416, 40.401779>,  <40.595398, 34.430305, 40.089584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135799, 34.917416, 40.401779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956406, 34.560116, 40.414200>,  <39.848770, 34.345734, 40.421650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956406, 34.560116, 40.414200>,  <40.135799, 34.917416, 40.401779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956406, 34.560116, 40.414200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295404, 0.180922, 0.938085,
		-0.843565, 0.411540, -0.345010,
		-0.448480, -0.893253, 0.031049,
		39.821861, 34.292141, 40.423515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441799, 35.030201, 40.547493>,  <40.135799, 34.917416, 40.401779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441799, 35.030201, 40.547493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504051, 34.646759, 40.642876>,  <39.541401, 34.416695, 40.700104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504051, 34.646759, 40.642876>,  <39.441799, 35.030201, 40.547493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504051, 34.646759, 40.642876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352393, 0.171637, 0.919978,
		-0.922821, -0.227204, -0.311094,
		0.155627, -0.958603, 0.238455,
		39.550739, 34.359177, 40.714413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829903, 34.957458, 40.852676>,  <39.441799, 35.030201, 40.547493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829903, 34.957458, 40.852676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091293, 34.673798, 40.958569>,  <39.248127, 34.503601, 41.022106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091293, 34.673798, 40.958569>,  <38.829903, 34.957458, 40.852676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091293, 34.673798, 40.958569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179146, 0.194910, 0.964322,
		-0.735445, -0.677584, 0.000327,
		0.653473, -0.709148, 0.264732,
		39.287334, 34.461052, 41.037987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750862, 34.879845, 41.499878>,  <38.829903, 34.957458, 40.852676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750862, 34.879845, 41.499878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092075, 34.671146, 41.503963>,  <39.296803, 34.545925, 41.506413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092075, 34.671146, 41.503963>,  <38.750862, 34.879845, 41.499878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092075, 34.671146, 41.503963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204341, 0.351966, 0.913436,
		-0.480179, -0.777108, 0.406855,
		0.853037, -0.521750, 0.010212,
		39.347988, 34.514622, 41.507027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761745, 34.433128, 42.133614>,  <38.750862, 34.879845, 41.499878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761745, 34.433128, 42.133614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131214, 34.513359, 42.003021>,  <39.352898, 34.561497, 41.924664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131214, 34.513359, 42.003021>,  <38.761745, 34.433128, 42.133614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131214, 34.513359, 42.003021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242271, 0.354418, 0.903157,
		0.296858, -0.913323, 0.278776,
		0.923677, 0.200571, -0.326483,
		39.408318, 34.573532, 41.905075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866096, 33.651493, 42.396652>,  <38.761745, 34.433128, 42.133614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866096, 33.651493, 42.396652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651169, 33.354225, 42.556145>,  <38.522213, 33.175865, 42.651840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651169, 33.354225, 42.556145>,  <38.866096, 33.651493, 42.396652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651169, 33.354225, 42.556145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432278, -0.163265, -0.886837,
		0.724168, -0.648880, -0.233529,
		-0.537323, -0.743169, 0.398728,
		38.489971, 33.131275, 42.675762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031956, 33.063980, 41.938251>,  <38.866096, 33.651493, 42.396652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031956, 33.063980, 41.938251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686314, 33.004215, 42.130501>,  <38.478928, 32.968357, 42.245850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686314, 33.004215, 42.130501>,  <39.031956, 33.063980, 41.938251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686314, 33.004215, 42.130501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440312, -0.238191, -0.865673,
		0.243825, -0.959656, 0.140033,
		-0.864103, -0.149415, 0.480626,
		38.427082, 32.959393, 42.274689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719536, 32.726479, 41.462704>,  <39.031956, 33.063980, 41.938251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719536, 32.726479, 41.462704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404324, 32.798351, 41.698235>,  <38.215195, 32.841476, 41.839554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404324, 32.798351, 41.698235>,  <38.719536, 32.726479, 41.462704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404324, 32.798351, 41.698235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612486, -0.132251, -0.779340,
		-0.062162, -0.974794, 0.214272,
		-0.788033, 0.179684, 0.588827,
		38.167915, 32.852257, 41.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188709, 32.230885, 41.337040>,  <38.719536, 32.726479, 41.462704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188709, 32.230885, 41.337040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985855, 32.539658, 41.490368>,  <37.864143, 32.724922, 41.582367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985855, 32.539658, 41.490368>,  <38.188709, 32.230885, 41.337040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985855, 32.539658, 41.490368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525813, 0.075285, -0.847262,
		-0.682886, -0.631233, 0.367711,
		-0.507136, 0.771931, 0.383322,
		37.833714, 32.771236, 41.605366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420609, 32.107777, 41.311680>,  <38.188709, 32.230885, 41.337040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420609, 32.107777, 41.311680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468395, 32.502651, 41.354000>,  <37.497066, 32.739574, 41.379395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468395, 32.502651, 41.354000>,  <37.420609, 32.107777, 41.311680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468395, 32.502651, 41.354000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605414, 0.156894, -0.780293,
		-0.786894, 0.029164, 0.616399,
		0.119466, 0.987185, 0.105802,
		37.504234, 32.798805, 41.385742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711281, 32.306938, 41.309982>,  <37.420609, 32.107777, 41.311680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711281, 32.306938, 41.309982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950340, 32.615894, 41.223988>,  <37.093777, 32.801270, 41.172390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950340, 32.615894, 41.223988>,  <36.711281, 32.306938, 41.309982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950340, 32.615894, 41.223988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456515, 0.107406, -0.883209,
		-0.659095, 0.625996, 0.416801,
		0.597652, 0.772395, -0.214986,
		37.129635, 32.847614, 41.159492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284168, 32.904343, 41.027439>,  <36.711281, 32.306938, 41.309982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284168, 32.904343, 41.027439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665031, 32.944092, 40.911842>,  <36.893551, 32.967941, 40.842484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665031, 32.944092, 40.911842>,  <36.284168, 32.904343, 41.027439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665031, 32.944092, 40.911842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302378, 0.169445, -0.938006,
		-0.044244, 0.980517, 0.191387,
		0.952161, 0.099372, -0.288990,
		36.950680, 32.973904, 40.825146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190159, 33.376949, 40.577969>,  <36.284168, 32.904343, 41.027439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190159, 33.376949, 40.577969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564251, 33.259270, 40.499180>,  <36.788704, 33.188663, 40.451904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564251, 33.259270, 40.499180>,  <36.190159, 33.376949, 40.577969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564251, 33.259270, 40.499180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184507, 0.069846, -0.980346,
		0.302173, 0.953189, 0.011040,
		0.935227, -0.294197, -0.196976,
		36.844818, 33.171009, 40.440086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470509, 33.886028, 40.081211>,  <36.190159, 33.376949, 40.577969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470509, 33.886028, 40.081211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693859, 33.556244, 40.044376>,  <36.827869, 33.358372, 40.022278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693859, 33.556244, 40.044376>,  <36.470509, 33.886028, 40.081211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693859, 33.556244, 40.044376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128311, 0.023833, -0.991448,
		0.819607, 0.565414, -0.092480,
		0.558374, -0.824463, -0.092083,
		36.861370, 33.308907, 40.016750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880882, 34.036411, 39.475700>,  <36.470509, 33.886028, 40.081211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880882, 34.036411, 39.475700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913292, 33.642151, 39.534924>,  <36.932739, 33.405594, 39.570457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913292, 33.642151, 39.534924>,  <36.880882, 34.036411, 39.475700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913292, 33.642151, 39.534924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207493, -0.161971, -0.964734,
		0.974875, 0.047448, -0.217640,
		0.081026, -0.985654, 0.148056,
		36.937599, 33.346455, 39.579342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326260, 33.745773, 38.930153>,  <36.880882, 34.036411, 39.475700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326260, 33.745773, 38.930153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078510, 33.453083, 39.043957>,  <36.929859, 33.277470, 39.112240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078510, 33.453083, 39.043957>,  <37.326260, 33.745773, 38.930153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078510, 33.453083, 39.043957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123593, -0.266992, -0.955741,
		0.775304, -0.627127, 0.074932,
		-0.619377, -0.731729, 0.284509,
		36.892696, 33.233566, 39.129311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409767, 33.289501, 38.383270>,  <37.326260, 33.745773, 38.930153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409767, 33.289501, 38.383270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085392, 33.155785, 38.575371>,  <36.890766, 33.075554, 38.690632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085392, 33.155785, 38.575371>,  <37.409767, 33.289501, 38.383270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085392, 33.155785, 38.575371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400055, -0.282206, -0.871961,
		0.427014, -0.899228, 0.095118,
		-0.810935, -0.334287, 0.480247,
		36.842110, 33.055500, 38.719444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.218857, 33.329990, 46.068394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.831158, 33.263485, 46.140957>,  <39.598537, 33.223583, 46.184494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.831158, 33.263485, 46.140957>,  <40.218857, 33.329990, 46.068394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831158, 33.263485, 46.140957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102771, -0.396339, -0.912334,
		0.223590, -0.902924, 0.367064,
		-0.969250, -0.166265, 0.181412,
		39.540382, 33.213604, 46.195381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017639, 32.612129, 45.776394>,  <40.218857, 33.329990, 46.068394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017639, 32.612129, 45.776394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699234, 32.853008, 45.800797>,  <39.508190, 32.997536, 45.815437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699234, 32.853008, 45.800797>,  <40.017639, 32.612129, 45.776394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699234, 32.853008, 45.800797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259874, -0.248989, -0.932990,
		-0.546656, -0.758524, 0.354694,
		-0.796010, 0.602200, 0.061009,
		39.460430, 33.033669, 45.819099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477451, 32.238319, 45.622208>,  <40.017639, 32.612129, 45.776394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477451, 32.238319, 45.622208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318256, 32.601017, 45.566460>,  <39.222740, 32.818634, 45.533012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318256, 32.601017, 45.566460>,  <39.477451, 32.238319, 45.622208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318256, 32.601017, 45.566460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401871, -0.308887, -0.862026,
		-0.824684, -0.287068, 0.487327,
		-0.397990, 0.906742, -0.139370,
		39.198860, 32.873039, 45.524651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877571, 32.101044, 45.297684>,  <39.477451, 32.238319, 45.622208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877571, 32.101044, 45.297684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930965, 32.482571, 45.190037>,  <38.963001, 32.711487, 45.125450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930965, 32.482571, 45.190037>,  <38.877571, 32.101044, 45.297684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930965, 32.482571, 45.190037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365082, -0.205122, -0.908097,
		-0.921356, 0.219465, 0.320839,
		0.133484, 0.953813, -0.269114,
		38.971012, 32.768715, 45.109303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219883, 32.344624, 44.921001>,  <38.877571, 32.101044, 45.297684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219883, 32.344624, 44.921001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519226, 32.593174, 44.828178>,  <38.698833, 32.742302, 44.772484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519226, 32.593174, 44.828178>,  <38.219883, 32.344624, 44.921001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519226, 32.593174, 44.828178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233181, -0.081068, -0.969048,
		-0.620952, 0.779311, 0.084224,
		0.748362, 0.621371, -0.232060,
		38.743736, 32.779587, 44.758560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831882, 32.790085, 44.494480>,  <38.219883, 32.344624, 44.921001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831882, 32.790085, 44.494480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217339, 32.854984, 44.409557>,  <38.448612, 32.893925, 44.358604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217339, 32.854984, 44.409557>,  <37.831882, 32.790085, 44.494480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217339, 32.854984, 44.409557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253262, 0.301280, -0.919287,
		-0.085187, 0.939631, 0.331417,
		0.963640, 0.162246, -0.212307,
		38.506432, 32.903660, 44.345863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798740, 33.368996, 44.179653>,  <37.831882, 32.790085, 44.494480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798740, 33.368996, 44.179653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156105, 33.220993, 44.077747>,  <38.370525, 33.132191, 44.016605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156105, 33.220993, 44.077747>,  <37.798740, 33.368996, 44.179653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156105, 33.220993, 44.077747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182659, 0.218920, -0.958493,
		0.410421, 0.902868, 0.128002,
		0.893415, -0.370005, -0.254766,
		38.424129, 33.109993, 44.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082539, 33.831429, 43.647598>,  <37.798740, 33.368996, 44.179653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082539, 33.831429, 43.647598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270489, 33.478882, 43.627914>,  <38.383259, 33.267353, 43.616104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270489, 33.478882, 43.627914>,  <38.082539, 33.831429, 43.647598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270489, 33.478882, 43.627914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128953, -0.013382, -0.991560,
		0.873265, 0.472251, -0.119942,
		0.469871, -0.881362, -0.049213,
		38.411449, 33.214474, 43.613152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572845, 33.916912, 43.109501>,  <38.082539, 33.831429, 43.647598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572845, 33.916912, 43.109501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.553600, 33.517437, 43.116531>,  <38.542053, 33.277752, 43.120750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.553600, 33.517437, 43.116531>,  <38.572845, 33.916912, 43.109501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553600, 33.517437, 43.116531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209417, -0.007120, -0.977801,
		0.976642, -0.050725, -0.208799,
		-0.048113, -0.998687, 0.017577,
		38.539165, 33.217831, 43.121803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228390, 34.164536, 42.732475>,  <38.572845, 33.916912, 43.109501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228390, 34.164536, 42.732475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449829, 34.385258, 42.482983>,  <39.582691, 34.517693, 42.333286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449829, 34.385258, 42.482983>,  <39.228390, 34.164536, 42.732475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449829, 34.385258, 42.482983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492193, 0.387371, 0.779544,
		0.671774, -0.738549, -0.057149,
		0.553594, 0.551806, -0.623734,
		39.615906, 34.550800, 42.295864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861816, 33.985031, 42.921947>,  <39.228390, 34.164536, 42.732475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861816, 33.985031, 42.921947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873611, 34.334476, 42.727657>,  <39.880688, 34.544144, 42.611084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873611, 34.334476, 42.727657>,  <39.861816, 33.985031, 42.921947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873611, 34.334476, 42.727657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527756, 0.399075, 0.749808,
		0.848884, -0.278454, -0.449288,
		0.029487, 0.873615, -0.485724,
		39.882458, 34.596561, 42.581940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508339, 34.285683, 43.099445>,  <39.861816, 33.985031, 42.921947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508339, 34.285683, 43.099445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266037, 34.579967, 42.978264>,  <40.120655, 34.756538, 42.905556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266037, 34.579967, 42.978264>,  <40.508339, 34.285683, 43.099445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266037, 34.579967, 42.978264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249008, 0.536933, 0.806039,
		0.755679, 0.412828, -0.508451,
		-0.605759, 0.735715, -0.302951,
		40.084309, 34.800682, 42.887379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859406, 34.826332, 43.046089>,  <40.508339, 34.285683, 43.099445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859406, 34.826332, 43.046089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497330, 34.974602, 43.129261>,  <40.280087, 35.063564, 43.179165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497330, 34.974602, 43.129261>,  <40.859406, 34.826332, 43.046089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497330, 34.974602, 43.129261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367969, 0.438673, 0.819857,
		0.212685, 0.818637, -0.533478,
		-0.905187, 0.370675, 0.207934,
		40.225773, 35.085804, 43.191643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944130, 35.525764, 43.157597>,  <40.859406, 34.826332, 43.046089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944130, 35.525764, 43.157597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601070, 35.464130, 43.353844>,  <40.395237, 35.427151, 43.471592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601070, 35.464130, 43.353844>,  <40.944130, 35.525764, 43.157597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601070, 35.464130, 43.353844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339828, 0.546227, 0.765606,
		-0.385953, 0.823343, -0.416108,
		-0.857646, -0.154083, 0.490614,
		40.343777, 35.417904, 43.501026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877659, 36.130928, 43.555313>,  <40.944130, 35.525764, 43.157597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877659, 36.130928, 43.555313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.590717, 35.889011, 43.693661>,  <40.418552, 35.743862, 43.776669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.590717, 35.889011, 43.693661>,  <40.877659, 36.130928, 43.555313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590717, 35.889011, 43.693661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072761, 0.558760, 0.826131,
		-0.692895, 0.567466, -0.444836,
		-0.717358, -0.604789, 0.345872,
		40.375511, 35.707573, 43.797424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405205, 36.491367, 43.860428>,  <40.877659, 36.130928, 43.555313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405205, 36.491367, 43.860428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339367, 36.134415, 44.028503>,  <40.299866, 35.920242, 44.129349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.339367, 36.134415, 44.028503>,  <40.405205, 36.491367, 43.860428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339367, 36.134415, 44.028503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195483, 0.447065, 0.872880,
		-0.966796, 0.061531, -0.248030,
		-0.164594, -0.892383, 0.420192,
		40.289989, 35.866699, 44.154560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064663, 36.692810, 44.386742>,  <40.405205, 36.491367, 43.860428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064663, 36.692810, 44.386742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109570, 36.307232, 44.483242>,  <40.136513, 36.075886, 44.541142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109570, 36.307232, 44.483242>,  <40.064663, 36.692810, 44.386742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109570, 36.307232, 44.483242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186707, 0.217995, 0.957924,
		-0.975980, -0.152586, -0.155502,
		0.112267, -0.963948, 0.241248,
		40.143250, 36.018047, 44.555614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398869, 36.430103, 44.744919>,  <40.064663, 36.692810, 44.386742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398869, 36.430103, 44.744919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726463, 36.221581, 44.840836>,  <39.923019, 36.096466, 44.898388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726463, 36.221581, 44.840836>,  <39.398869, 36.430103, 44.744919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726463, 36.221581, 44.840836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151242, 0.207008, 0.966578,
		-0.553526, -0.827879, 0.090692,
		0.818984, -0.521310, 0.239794,
		39.972160, 36.065189, 44.912773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231796, 36.012627, 45.350452>,  <39.398869, 36.430103, 44.744919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231796, 36.012627, 45.350452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631538, 36.026932, 45.350880>,  <39.871384, 36.035515, 45.351135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631538, 36.026932, 45.350880>,  <39.231796, 36.012627, 45.350452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631538, 36.026932, 45.350880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012494, 0.320950, 0.947014,
		0.033528, -0.946420, 0.321192,
		0.999360, 0.035765, 0.001064,
		39.931347, 36.037663, 45.351200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435047, 35.632294, 45.915764>,  <39.231796, 36.012627, 45.350452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435047, 35.632294, 45.915764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.754375, 35.858089, 45.831833>,  <39.945972, 35.993568, 45.781475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.754375, 35.858089, 45.831833>,  <39.435047, 35.632294, 45.915764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754375, 35.858089, 45.831833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065048, 0.265560, 0.961897,
		0.598708, -0.781553, 0.175283,
		0.798322, 0.564494, -0.209832,
		39.993874, 36.027439, 45.768883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946323, 35.496609, 46.501583>,  <39.435047, 35.632294, 45.915764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946323, 35.496609, 46.501583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072769, 35.837341, 46.334511>,  <40.148636, 36.041779, 46.234268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072769, 35.837341, 46.334511>,  <39.946323, 35.496609, 46.501583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072769, 35.837341, 46.334511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036426, 0.450832, 0.891865,
		0.948021, -0.266718, 0.173543,
		0.316116, 0.851829, -0.417683,
		40.167603, 36.092892, 46.209206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604107, 35.853493, 46.938869>,  <39.946323, 35.496609, 46.501583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604107, 35.853493, 46.938869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.403328, 36.138195, 46.742317>,  <40.282860, 36.309017, 46.624386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.403328, 36.138195, 46.742317>,  <40.604107, 35.853493, 46.938869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403328, 36.138195, 46.742317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124201, 0.502932, 0.855356,
		0.855932, 0.490376, -0.164047,
		-0.501951, 0.711752, -0.491381,
		40.252743, 36.351719, 46.594902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988934, 36.499027, 46.946930>,  <40.604107, 35.853493, 46.938869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988934, 36.499027, 46.946930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596535, 36.571320, 46.918667>,  <40.361095, 36.614693, 46.901711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.596535, 36.571320, 46.918667>,  <40.988934, 36.499027, 46.946930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596535, 36.571320, 46.918667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010624, 0.413584, 0.910404,
		0.193755, 0.892349, -0.407643,
		-0.980992, 0.180726, -0.070654,
		40.302238, 36.625538, 46.897472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.678204, 37.581352, 47.431572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992191, 37.333698, 47.440472>,  <33.180584, 37.185104, 47.445812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992191, 37.333698, 47.440472>,  <32.678204, 37.581352, 47.431572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992191, 37.333698, 47.440472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077154, -0.133326, -0.988065,
		0.614711, 0.773884, -0.152425,
		0.784970, -0.619135, 0.022249,
		33.227684, 37.147957, 47.447147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999798, 37.736115, 46.860939>,  <32.678204, 37.581352, 47.431572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999798, 37.736115, 46.860939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126240, 37.376453, 46.982006>,  <33.202106, 37.160656, 47.054646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.126240, 37.376453, 46.982006>,  <32.999798, 37.736115, 46.860939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126240, 37.376453, 46.982006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092132, -0.346611, -0.933473,
		0.944240, 0.267191, -0.192406,
		0.316105, -0.899149, 0.302667,
		33.221073, 37.106709, 47.072807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435318, 37.495144, 46.343731>,  <32.999798, 37.736115, 46.860939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435318, 37.495144, 46.343731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357193, 37.162891, 46.552311>,  <33.310318, 36.963539, 46.677460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357193, 37.162891, 46.552311>,  <33.435318, 37.495144, 46.343731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357193, 37.162891, 46.552311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130854, -0.504861, -0.853225,
		0.971972, -0.234881, -0.010084,
		-0.195315, -0.830630, 0.521446,
		33.298599, 36.913704, 46.708744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776066, 36.964401, 45.986015>,  <33.435318, 37.495144, 46.343731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776066, 36.964401, 45.986015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535313, 36.732121, 46.205296>,  <33.390862, 36.592751, 46.336864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535313, 36.732121, 46.205296>,  <33.776066, 36.964401, 45.986015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535313, 36.732121, 46.205296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206901, -0.549632, -0.809381,
		0.771320, -0.600572, 0.210663,
		-0.601879, -0.580705, 0.548201,
		33.354748, 36.557911, 46.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890217, 36.366619, 45.859730>,  <33.776066, 36.964401, 45.986015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890217, 36.366619, 45.859730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518017, 36.310009, 45.994869>,  <33.294697, 36.276043, 46.075951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518017, 36.310009, 45.994869>,  <33.890217, 36.366619, 45.859730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518017, 36.310009, 45.994869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194020, -0.591890, -0.782319,
		0.310686, -0.793496, 0.523295,
		-0.930500, -0.141526, 0.337846,
		33.238865, 36.267551, 46.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760410, 35.642262, 45.746647>,  <33.890217, 36.366619, 45.859730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760410, 35.642262, 45.746647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387699, 35.779831, 45.793144>,  <33.164074, 35.862373, 45.821045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387699, 35.779831, 45.793144>,  <33.760410, 35.642262, 45.746647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387699, 35.779831, 45.793144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314302, -0.603953, -0.732431,
		-0.181694, -0.718997, 0.670843,
		-0.931773, 0.343925, 0.116248,
		33.108166, 35.883007, 45.828018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380955, 35.087196, 45.647499>,  <33.760410, 35.642262, 45.746647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380955, 35.087196, 45.647499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124878, 35.386200, 45.576645>,  <32.971230, 35.565601, 45.534130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124878, 35.386200, 45.576645>,  <33.380955, 35.087196, 45.647499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124878, 35.386200, 45.576645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410178, -0.527579, -0.743918,
		-0.649542, -0.403594, 0.644366,
		-0.640195, 0.747511, -0.177139,
		32.932819, 35.610455, 45.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837364, 34.803310, 45.432468>,  <33.380955, 35.087196, 45.647499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837364, 34.803310, 45.432468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780743, 35.174065, 45.293415>,  <32.746769, 35.396515, 45.209984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780743, 35.174065, 45.293415>,  <32.837364, 34.803310, 45.432468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780743, 35.174065, 45.293415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229528, -0.372334, -0.899269,
		-0.962953, -0.047503, 0.265451,
		-0.141555, 0.926882, -0.347637,
		32.738277, 35.452129, 45.189125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306786, 34.654072, 45.006882>,  <32.837364, 34.803310, 45.432468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306786, 34.654072, 45.006882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433243, 35.012585, 44.882477>,  <32.509117, 35.227692, 44.807835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433243, 35.012585, 44.882477>,  <32.306786, 34.654072, 45.006882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433243, 35.012585, 44.882477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086991, -0.299056, -0.950262,
		-0.944716, 0.327470, -0.016574,
		0.316139, 0.896286, -0.311010,
		32.528084, 35.281471, 44.789173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839664, 34.895226, 44.497272>,  <32.306786, 34.654072, 45.006882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839664, 34.895226, 44.497272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182411, 35.089283, 44.427521>,  <32.388062, 35.205719, 44.385670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.182411, 35.089283, 44.427521>,  <31.839664, 34.895226, 44.497272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182411, 35.089283, 44.427521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110004, -0.158407, -0.981227,
		-0.503662, 0.859965, -0.082366,
		0.856868, 0.485146, -0.174383,
		32.439472, 35.234825, 44.375206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770361, 35.340050, 43.897568>,  <31.839664, 34.895226, 44.497272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770361, 35.340050, 43.897568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168453, 35.307457, 43.919014>,  <32.407310, 35.287903, 43.931881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168453, 35.307457, 43.919014>,  <31.770361, 35.340050, 43.897568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168453, 35.307457, 43.919014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058197, 0.054922, -0.996793,
		0.078273, 0.995161, 0.059402,
		0.995232, -0.081479, 0.053617,
		32.467022, 35.283012, 43.935101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879885, 35.767921, 43.357395>,  <31.770361, 35.340050, 43.897568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879885, 35.767921, 43.357395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229439, 35.579185, 43.404202>,  <32.439171, 35.465942, 43.432285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229439, 35.579185, 43.404202>,  <31.879885, 35.767921, 43.357395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229439, 35.579185, 43.404202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109377, -0.043702, -0.993039,
		0.473670, 0.880600, 0.013417,
		0.873884, -0.471840, 0.117018,
		32.491604, 35.437634, 43.439308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470497, 36.084915, 43.001183>,  <31.879885, 35.767921, 43.357395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470497, 36.084915, 43.001183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562420, 35.697670, 43.041065>,  <32.617573, 35.465324, 43.064995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562420, 35.697670, 43.041065>,  <32.470497, 36.084915, 43.001183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562420, 35.697670, 43.041065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001906, -0.102002, -0.994782,
		0.973234, 0.228801, -0.021596,
		0.229810, -0.968114, 0.099708,
		32.631363, 35.407234, 43.070976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028912, 35.941044, 42.501835>,  <32.470497, 36.084915, 43.001183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028912, 35.941044, 42.501835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838547, 35.602238, 42.596561>,  <32.724327, 35.398956, 42.653397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838547, 35.602238, 42.596561>,  <33.028912, 35.941044, 42.501835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838547, 35.602238, 42.596561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117396, -0.205674, -0.971554,
		0.871624, -0.490173, -0.001553,
		-0.475910, -0.847012, 0.236815,
		32.695774, 35.348133, 42.667606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703827, 35.916618, 42.628300>,  <33.028912, 35.941044, 42.501835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703827, 35.916618, 42.628300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978092, 36.199276, 42.558426>,  <34.142651, 36.368870, 42.516502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.978092, 36.199276, 42.558426>,  <33.703827, 35.916618, 42.628300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978092, 36.199276, 42.558426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045238, 0.280887, 0.958674,
		0.726511, -0.649426, 0.224561,
		0.685665, 0.706646, -0.174689,
		34.183792, 36.411270, 42.506020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265484, 35.825649, 43.195415>,  <33.703827, 35.916618, 42.628300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265484, 35.825649, 43.195415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.306450, 36.197002, 43.052517>,  <34.331032, 36.419815, 42.966778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.306450, 36.197002, 43.052517>,  <34.265484, 35.825649, 43.195415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306450, 36.197002, 43.052517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150193, 0.340585, 0.928140,
		0.983338, -0.148714, -0.104554,
		0.102418, 0.928378, -0.357246,
		34.337173, 36.475517, 42.945343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891808, 36.105301, 43.468136>,  <34.265484, 35.825649, 43.195415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891808, 36.105301, 43.468136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677032, 36.428093, 43.369770>,  <34.548168, 36.621769, 43.310749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677032, 36.428093, 43.369770>,  <34.891808, 36.105301, 43.468136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677032, 36.428093, 43.369770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299722, 0.454963, 0.838556,
		0.788582, 0.376548, -0.486158,
		-0.536940, 0.806982, -0.245916,
		34.515949, 36.670189, 43.295994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262337, 36.738934, 43.666878>,  <34.891808, 36.105301, 43.468136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262337, 36.738934, 43.666878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889633, 36.880531, 43.634609>,  <34.666012, 36.965488, 43.615250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889633, 36.880531, 43.634609>,  <35.262337, 36.738934, 43.666878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889633, 36.880531, 43.634609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172344, 0.626796, 0.759884,
		0.319559, 0.694128, -0.645033,
		-0.931762, 0.353995, -0.080670,
		34.610104, 36.986729, 43.610409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340649, 37.470390, 43.629112>,  <35.262337, 36.738934, 43.666878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340649, 37.470390, 43.629112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.954170, 37.403893, 43.707935>,  <34.722282, 37.363995, 43.755230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.954170, 37.403893, 43.707935>,  <35.340649, 37.470390, 43.629112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954170, 37.403893, 43.707935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047012, 0.637917, 0.768669,
		-0.253498, 0.751947, -0.608535,
		-0.966193, -0.166247, 0.197061,
		34.664310, 37.354019, 43.767056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211124, 38.001675, 43.910984>,  <35.340649, 37.470390, 43.629112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211124, 38.001675, 43.910984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920845, 37.755600, 44.034214>,  <34.746677, 37.607956, 44.108150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920845, 37.755600, 44.034214>,  <35.211124, 38.001675, 43.910984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920845, 37.755600, 44.034214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074216, 0.375163, 0.923983,
		-0.684000, 0.693395, -0.226597,
		-0.725697, -0.615188, 0.308072,
		34.703136, 37.571045, 44.126637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759083, 38.471577, 44.114536>,  <35.211124, 38.001675, 43.910984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759083, 38.471577, 44.114536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730011, 38.102829, 44.266781>,  <34.712570, 37.881580, 44.358128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730011, 38.102829, 44.266781>,  <34.759083, 38.471577, 44.114536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730011, 38.102829, 44.266781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016533, 0.380457, 0.924651,
		-0.997218, 0.073492, -0.012408,
		-0.072675, -0.921874, 0.380614,
		34.708210, 37.826267, 44.380966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283997, 38.514763, 44.649723>,  <34.759083, 38.471577, 44.114536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283997, 38.514763, 44.649723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.442734, 38.167820, 44.769855>,  <34.537975, 37.959652, 44.841934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.442734, 38.167820, 44.769855>,  <34.283997, 38.514763, 44.649723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442734, 38.167820, 44.769855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148217, 0.383461, 0.911586,
		-0.905841, -0.317241, 0.280731,
		0.396842, -0.867361, 0.300334,
		34.561787, 37.907612, 44.859955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914383, 38.290230, 45.329082>,  <34.283997, 38.514763, 44.649723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914383, 38.290230, 45.329082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266712, 38.109600, 45.272179>,  <34.478107, 38.001221, 45.238037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266712, 38.109600, 45.272179>,  <33.914383, 38.290230, 45.329082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266712, 38.109600, 45.272179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359038, 0.441223, 0.822444,
		-0.308624, -0.775502, 0.550770,
		0.880819, -0.451573, -0.142263,
		34.530956, 37.974129, 45.229500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032894, 38.012691, 45.988403>,  <33.914383, 38.290230, 45.329082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032894, 38.012691, 45.988403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.392723, 37.990528, 45.815109>,  <34.608620, 37.977230, 45.711132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.392723, 37.990528, 45.815109>,  <34.032894, 38.012691, 45.988403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392723, 37.990528, 45.815109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433897, 0.226819, 0.871944,
		0.049951, -0.972360, 0.228083,
		0.899577, -0.055410, -0.433234,
		34.662598, 37.973904, 45.685139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464893, 37.632294, 46.412251>,  <34.032894, 38.012691, 45.988403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464893, 37.632294, 46.412251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728943, 37.812416, 46.171764>,  <34.887371, 37.920490, 46.027473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728943, 37.812416, 46.171764>,  <34.464893, 37.632294, 46.412251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728943, 37.812416, 46.171764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613873, 0.137859, 0.777274,
		0.432894, -0.882168, -0.185426,
		0.660123, 0.450305, -0.601217,
		34.926979, 37.947506, 45.991398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191177, 37.333309, 46.505409>,  <34.464893, 37.632294, 46.412251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191177, 37.333309, 46.505409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205799, 37.717667, 46.395611>,  <35.214573, 37.948280, 46.329731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205799, 37.717667, 46.395611>,  <35.191177, 37.333309, 46.505409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205799, 37.717667, 46.395611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562663, 0.207211, 0.800296,
		0.825877, -0.183700, -0.533086,
		0.036553, 0.960894, -0.274492,
		35.216766, 38.005936, 46.313263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855865, 37.603676, 46.671623>,  <35.191177, 37.333309, 46.505409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855865, 37.603676, 46.671623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662056, 37.948803, 46.613956>,  <35.545769, 38.155880, 46.579357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662056, 37.948803, 46.613956>,  <35.855865, 37.603676, 46.671623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662056, 37.948803, 46.613956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495582, 0.406549, 0.767539,
		0.720856, 0.300445, -0.624579,
		-0.484526, 0.862815, -0.144168,
		35.516697, 38.207649, 46.570705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312744, 38.083469, 46.777443>,  <35.855865, 37.603676, 46.671623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312744, 38.083469, 46.777443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975380, 38.295055, 46.815083>,  <35.772961, 38.422009, 46.837666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975380, 38.295055, 46.815083>,  <36.312744, 38.083469, 46.777443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975380, 38.295055, 46.815083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302974, 0.323627, 0.896366,
		0.443694, 0.784514, -0.433213,
		-0.843411, 0.528965, 0.094096,
		35.722355, 38.453743, 46.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587421, 38.692612, 46.339745>,  <36.312744, 38.083469, 46.777443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587421, 38.692612, 46.339745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861118, 38.983189, 46.314137>,  <37.025337, 39.157536, 46.298771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.861118, 38.983189, 46.314137>,  <36.587421, 38.692612, 46.339745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861118, 38.983189, 46.314137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066106, -0.025641, -0.997483,
		-0.726251, 0.686753, 0.030477,
		0.684243, 0.726438, -0.064021,
		37.066391, 39.201118, 46.294930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369255, 39.084972, 45.808338>,  <36.587421, 38.692612, 46.339745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369255, 39.084972, 45.808338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745277, 39.213383, 45.854362>,  <36.970890, 39.290428, 45.881977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745277, 39.213383, 45.854362>,  <36.369255, 39.084972, 45.808338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745277, 39.213383, 45.854362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139117, -0.052941, -0.988860,
		-0.311357, 0.945590, -0.094428,
		0.940055, 0.321025, 0.115064,
		37.027294, 39.309689, 45.888882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506157, 39.687023, 45.350758>,  <36.369255, 39.084972, 45.808338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506157, 39.687023, 45.350758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872036, 39.548176, 45.433544>,  <37.091564, 39.464867, 45.483215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872036, 39.548176, 45.433544>,  <36.506157, 39.687023, 45.350758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872036, 39.548176, 45.433544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189445, -0.084082, -0.978285,
		0.356979, 0.934046, -0.011151,
		0.914700, -0.347114, 0.206966,
		37.146446, 39.444042, 45.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930786, 40.108799, 45.050716>,  <36.506157, 39.687023, 45.350758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930786, 40.108799, 45.050716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.141747, 39.770779, 45.085892>,  <37.268322, 39.567966, 45.106998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.141747, 39.770779, 45.085892>,  <36.930786, 40.108799, 45.050716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141747, 39.770779, 45.085892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125351, -0.024981, -0.991798,
		0.840317, 0.534101, 0.092753,
		0.527403, -0.845052, 0.087943,
		37.299969, 39.517262, 45.112274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568081, 40.181347, 44.632065>,  <36.930786, 40.108799, 45.050716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568081, 40.181347, 44.632065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.514645, 39.787384, 44.676079>,  <37.482582, 39.551006, 44.702488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.514645, 39.787384, 44.676079>,  <37.568081, 40.181347, 44.632065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514645, 39.787384, 44.676079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130365, -0.127533, -0.983230,
		0.982425, -0.117004, 0.145435,
		-0.133590, -0.984909, 0.110038,
		37.474567, 39.491913, 44.709091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258347, 39.787708, 44.405666>,  <37.568081, 40.181347, 44.632065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258347, 39.787708, 44.405666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962509, 39.518764, 44.393448>,  <37.785007, 39.357399, 44.386116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962509, 39.518764, 44.393448>,  <38.258347, 39.787708, 44.405666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962509, 39.518764, 44.393448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214455, -0.192392, -0.957598,
		0.637974, -0.714784, 0.286483,
		-0.739593, -0.672361, -0.030548,
		37.740631, 39.317055, 44.384285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516136, 39.293243, 44.015865>,  <38.258347, 39.787708, 44.405666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516136, 39.293243, 44.015865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123348, 39.218662, 44.028393>,  <37.887676, 39.173916, 44.035908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123348, 39.218662, 44.028393>,  <38.516136, 39.293243, 44.015865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123348, 39.218662, 44.028393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036681, -0.350392, -0.935885,
		0.185469, -0.917857, 0.350912,
		-0.981965, -0.186450, 0.031319,
		37.828758, 39.162727, 44.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478939, 38.640961, 43.864262>,  <38.516136, 39.293243, 44.015865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478939, 38.640961, 43.864262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.120663, 38.799400, 43.783428>,  <37.905697, 38.894463, 43.734928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.120663, 38.799400, 43.783428>,  <38.478939, 38.640961, 43.864262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120663, 38.799400, 43.783428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023278, -0.412065, -0.910857,
		-0.444067, -0.820551, 0.359863,
		-0.895691, 0.396105, -0.202085,
		37.851955, 38.918232, 43.722805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972870, 38.174324, 43.575447>,  <38.478939, 38.640961, 43.864262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972870, 38.174324, 43.575447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836327, 38.534451, 43.467445>,  <37.754398, 38.750526, 43.402645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836327, 38.534451, 43.467445>,  <37.972870, 38.174324, 43.575447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836327, 38.534451, 43.467445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280811, -0.371823, -0.884812,
		-0.897005, -0.226221, 0.379745,
		-0.341361, 0.900317, -0.270002,
		37.733917, 38.804546, 43.386444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366592, 38.012238, 43.372971>,  <37.972870, 38.174324, 43.575447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366592, 38.012238, 43.372971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.425362, 38.375854, 43.216991>,  <37.460625, 38.594025, 43.123405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.425362, 38.375854, 43.216991>,  <37.366592, 38.012238, 43.372971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425362, 38.375854, 43.216991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333785, -0.325537, -0.884654,
		-0.931129, 0.260134, 0.255595,
		0.146922, 0.909041, -0.389946,
		37.469437, 38.648567, 43.100006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913445, 37.980171, 42.797539>,  <37.366592, 38.012238, 43.372971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913445, 37.980171, 42.797539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124504, 38.310680, 42.718685>,  <37.251141, 38.508984, 42.671371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124504, 38.310680, 42.718685>,  <36.913445, 37.980171, 42.797539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124504, 38.310680, 42.718685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167087, -0.126582, -0.977782,
		-0.832865, 0.548869, 0.071267,
		0.527654, 0.826268, -0.197135,
		37.282799, 38.558559, 42.659546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492950, 38.466251, 42.292515>,  <36.913445, 37.980171, 42.797539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492950, 38.466251, 42.292515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.888744, 38.522968, 42.281120>,  <37.126221, 38.556999, 42.274284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.888744, 38.522968, 42.281120>,  <36.492950, 38.466251, 42.292515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888744, 38.522968, 42.281120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053951, 0.179149, -0.982342,
		-0.134186, 0.973550, 0.184915,
		0.989486, 0.141792, -0.028484,
		37.185589, 38.565506, 42.272575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523888, 38.964046, 41.805538>,  <36.492950, 38.466251, 42.292515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523888, 38.964046, 41.805538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887741, 38.798256, 41.816681>,  <37.106052, 38.698780, 41.823364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887741, 38.798256, 41.816681>,  <36.523888, 38.964046, 41.805538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887741, 38.798256, 41.816681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015715, -0.032672, -0.999343,
		0.415115, 0.909473, -0.023207,
		0.909633, -0.414477, 0.027855,
		37.160629, 38.673912, 41.825039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874794, 39.237858, 41.252640>,  <36.523888, 38.964046, 41.805538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874794, 39.237858, 41.252640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.060364, 38.896187, 41.346577>,  <37.171707, 38.691185, 41.402939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.060364, 38.896187, 41.346577>,  <36.874794, 39.237858, 41.252640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060364, 38.896187, 41.346577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195870, -0.159625, -0.967551,
		0.863949, 0.494870, 0.093254,
		0.463926, -0.854180, 0.234838,
		37.199543, 38.639935, 41.417027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.211096, 39.429447, 41.203285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232084, 39.699017, 40.908508>,  <27.244678, 39.860756, 40.731644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232084, 39.699017, 40.908508>,  <27.211096, 39.429447, 41.203285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232084, 39.699017, 40.908508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447396, -0.643888, -0.620681,
		-0.892795, 0.362272, 0.267722,
		0.052473, 0.673919, -0.736939,
		27.247826, 39.901192, 40.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597860, 39.316799, 40.929886>,  <27.211096, 39.429447, 41.203285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597860, 39.316799, 40.929886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876749, 39.450333, 40.676132>,  <27.044083, 39.530453, 40.523880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876749, 39.450333, 40.676132>,  <26.597860, 39.316799, 40.929886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876749, 39.450333, 40.676132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215025, -0.746803, -0.629324,
		-0.683849, 0.575185, -0.448903,
		0.697220, 0.333837, -0.634379,
		27.085915, 39.550484, 40.485817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259956, 39.394878, 40.362518>,  <26.597860, 39.316799, 40.929886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259956, 39.394878, 40.362518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648691, 39.342300, 40.284286>,  <26.881933, 39.310753, 40.237347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648691, 39.342300, 40.284286>,  <26.259956, 39.394878, 40.362518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648691, 39.342300, 40.284286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228898, -0.723790, -0.650948,
		-0.055995, 0.677384, -0.733495,
		0.971839, -0.131446, -0.195580,
		26.940243, 39.302868, 40.225613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293610, 39.178932, 39.637657>,  <26.259956, 39.394878, 40.362518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293610, 39.178932, 39.637657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662340, 39.089214, 39.764103>,  <26.883579, 39.035385, 39.839970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662340, 39.089214, 39.764103>,  <26.293610, 39.178932, 39.637657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662340, 39.089214, 39.764103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012499, -0.832340, -0.554125,
		0.387397, 0.506857, -0.770078,
		0.921828, -0.224292, 0.316110,
		26.938889, 39.021927, 39.858936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610485, 38.934177, 39.112766>,  <26.293610, 39.178932, 39.637657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610485, 38.934177, 39.112766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841770, 38.782883, 39.401932>,  <26.980541, 38.692104, 39.575432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841770, 38.782883, 39.401932>,  <26.610485, 38.934177, 39.112766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841770, 38.782883, 39.401932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072163, -0.858867, -0.507089,
		0.812690, 0.345372, -0.469312,
		0.578211, -0.378239, 0.722916,
		27.015234, 38.669411, 39.618805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206451, 38.636345, 38.774189>,  <26.610485, 38.934177, 39.112766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206451, 38.636345, 38.774189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209705, 38.489616, 39.146290>,  <27.211657, 38.401577, 39.369553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.209705, 38.489616, 39.146290>,  <27.206451, 38.636345, 38.774189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209705, 38.489616, 39.146290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079980, -0.927544, -0.365056,
		0.996763, -0.071433, -0.036883,
		0.008134, -0.366825, 0.930255,
		27.212145, 38.379570, 39.425365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644621, 38.146812, 38.745590>,  <27.206451, 38.636345, 38.774189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644621, 38.146812, 38.745590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399492, 38.066643, 39.051342>,  <27.252415, 38.018543, 39.234795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399492, 38.066643, 39.051342>,  <27.644621, 38.146812, 38.745590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399492, 38.066643, 39.051342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193212, -0.899940, -0.390866,
		0.766236, -0.387219, 0.512780,
		-0.612822, -0.200421, 0.764382,
		27.215645, 38.006516, 39.280655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904448, 37.622395, 39.055531>,  <27.644621, 38.146812, 38.745590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904448, 37.622395, 39.055531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520302, 37.613293, 39.166656>,  <27.289814, 37.607834, 39.233334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520302, 37.613293, 39.166656>,  <27.904448, 37.622395, 39.055531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520302, 37.613293, 39.166656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090577, -0.917105, -0.388219,
		0.263620, -0.397996, 0.878695,
		-0.960364, -0.022753, 0.277816,
		27.232193, 37.606468, 39.250000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862457, 36.980858, 39.258141>,  <27.904448, 37.622395, 39.055531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862457, 36.980858, 39.258141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477859, 37.089901, 39.244217>,  <27.247101, 37.155327, 39.235863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477859, 37.089901, 39.244217>,  <27.862457, 36.980858, 39.258141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477859, 37.089901, 39.244217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220383, -0.840482, -0.494997,
		-0.164195, -0.468266, 0.868197,
		-0.961494, 0.272612, -0.034805,
		27.189411, 37.171684, 39.233776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481812, 36.493645, 39.574261>,  <27.862457, 36.980858, 39.258141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481812, 36.493645, 39.574261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194004, 36.653893, 39.347351>,  <27.021320, 36.750042, 39.211205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194004, 36.653893, 39.347351>,  <27.481812, 36.493645, 39.574261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194004, 36.653893, 39.347351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089361, -0.863458, -0.496442,
		-0.688701, -0.306507, 0.657073,
		-0.719518, 0.400617, -0.567275,
		26.978149, 36.774078, 39.177170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978731, 35.997066, 39.512589>,  <27.481812, 36.493645, 39.574261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978731, 35.997066, 39.512589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896566, 36.237488, 39.203644>,  <26.847267, 36.381741, 39.018276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896566, 36.237488, 39.203644>,  <26.978731, 35.997066, 39.512589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896566, 36.237488, 39.203644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230067, -0.796733, -0.558825,
		-0.951249, 0.062905, 0.301941,
		-0.205414, 0.601049, -0.772364,
		26.834942, 36.417801, 38.971935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202566, 35.845322, 39.318783>,  <26.978731, 35.997066, 39.512589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202566, 35.845322, 39.318783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387033, 36.015923, 39.007545>,  <26.497713, 36.118282, 38.820805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387033, 36.015923, 39.007545>,  <26.202566, 35.845322, 39.318783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387033, 36.015923, 39.007545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514813, -0.585613, -0.626119,
		-0.722699, 0.689316, -0.050498,
		0.461166, 0.426499, -0.778090,
		26.525383, 36.143871, 38.774117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630783, 36.082100, 38.931160>,  <26.202566, 35.845322, 39.318783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630783, 36.082100, 38.931160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.958393, 36.023384, 38.709297>,  <26.154959, 35.988155, 38.576180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.958393, 36.023384, 38.709297>,  <25.630783, 36.082100, 38.931160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958393, 36.023384, 38.709297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545027, -0.501115, -0.672182,
		-0.179278, 0.852840, -0.490432,
		0.819027, -0.146791, -0.554660,
		26.204102, 35.979347, 38.542900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307360, 36.061390, 38.330978>,  <25.630783, 36.082100, 38.931160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307360, 36.061390, 38.330978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673885, 35.914764, 38.266483>,  <25.893801, 35.826790, 38.227787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673885, 35.914764, 38.266483>,  <25.307360, 36.061390, 38.330978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673885, 35.914764, 38.266483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372323, -0.631574, -0.680066,
		0.147455, 0.683187, -0.715201,
		0.916315, -0.366565, -0.161238,
		25.948780, 35.804794, 38.218113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417723, 35.969620, 37.586296>,  <25.307360, 36.061390, 38.330978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417723, 35.969620, 37.586296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.676538, 35.717346, 37.757679>,  <25.831829, 35.565983, 37.860508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.676538, 35.717346, 37.757679>,  <25.417723, 35.969620, 37.586296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676538, 35.717346, 37.757679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223706, -0.694247, -0.684088,
		0.728899, 0.346784, -0.590294,
		0.647041, -0.630683, 0.428458,
		25.870651, 35.528141, 37.886215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897820, 35.747364, 37.068253>,  <25.417723, 35.969620, 37.586296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897820, 35.747364, 37.068253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.899578, 35.476334, 37.362431>,  <25.900633, 35.313717, 37.538937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.899578, 35.476334, 37.362431>,  <25.897820, 35.747364, 37.068253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899578, 35.476334, 37.362431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176871, -0.724380, -0.666326,
		0.984224, -0.127149, -0.123027,
		0.004396, -0.677574, 0.735442,
		25.900896, 35.273060, 37.583061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313431, 35.231842, 36.831059>,  <25.897820, 35.747364, 37.068253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313431, 35.231842, 36.831059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091190, 35.057690, 37.114395>,  <25.957846, 34.953197, 37.284397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091190, 35.057690, 37.114395>,  <26.313431, 35.231842, 36.831059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091190, 35.057690, 37.114395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313479, -0.679377, -0.663458,
		0.770090, -0.590670, 0.240980,
		-0.555601, -0.435380, 0.708344,
		25.924511, 34.927074, 37.326897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543068, 34.511356, 36.829357>,  <26.313431, 35.231842, 36.831059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543068, 34.511356, 36.829357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186840, 34.517517, 37.011192>,  <25.973103, 34.521214, 37.120293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186840, 34.517517, 37.011192>,  <26.543068, 34.511356, 36.829357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186840, 34.517517, 37.011192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314664, -0.742533, -0.591297,
		0.328438, -0.669633, 0.666124,
		-0.890570, 0.015401, 0.454585,
		25.919668, 34.522137, 37.147568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457754, 33.842823, 37.074512>,  <26.543068, 34.511356, 36.829357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457754, 33.842823, 37.074512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089123, 33.994194, 37.039909>,  <25.867945, 34.085018, 37.019150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089123, 33.994194, 37.039909>,  <26.457754, 33.842823, 37.074512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089123, 33.994194, 37.039909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267738, -0.780990, -0.564244,
		-0.281087, -0.496835, 0.821064,
		-0.921578, 0.378431, -0.086505,
		25.812649, 34.107723, 37.013958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034172, 33.699665, 37.503956>,  <26.457754, 33.842823, 37.074512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034172, 33.699665, 37.503956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239779, 33.519440, 37.211987>,  <27.363142, 33.411304, 37.036804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239779, 33.519440, 37.211987>,  <27.034172, 33.699665, 37.503956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239779, 33.519440, 37.211987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759002, 0.635345, 0.142313,
		0.399631, -0.627162, 0.668553,
		0.514015, -0.450561, -0.729920,
		27.393984, 33.384270, 36.993011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710720, 33.897449, 37.685951>,  <27.034172, 33.699665, 37.503956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710720, 33.897449, 37.685951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749220, 33.764820, 37.310547>,  <27.772320, 33.685242, 37.085304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749220, 33.764820, 37.310547>,  <27.710720, 33.897449, 37.685951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749220, 33.764820, 37.310547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816816, 0.565138, -0.115889,
		0.568812, -0.755434, 0.325227,
		0.096251, -0.331569, -0.938508,
		27.778095, 33.665348, 37.028996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380741, 34.071541, 37.586182>,  <27.710720, 33.897449, 37.685951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380741, 34.071541, 37.586182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257822, 33.992863, 37.213757>,  <28.184071, 33.945656, 36.990303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.257822, 33.992863, 37.213757>,  <28.380741, 34.071541, 37.586182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257822, 33.992863, 37.213757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593555, 0.725138, -0.349095,
		0.743815, -0.659914, -0.106082,
		-0.307297, -0.196697, -0.931064,
		28.165632, 33.933853, 36.934437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952585, 33.979218, 37.116535>,  <28.380741, 34.071541, 37.586182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952585, 33.979218, 37.116535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.631046, 34.092239, 36.907158>,  <28.438124, 34.160053, 36.781532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.631046, 34.092239, 36.907158>,  <28.952585, 33.979218, 37.116535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631046, 34.092239, 36.907158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524384, 0.752028, -0.399342,
		0.280808, -0.595495, -0.752683,
		-0.803845, 0.282557, -0.523444,
		28.389893, 34.177006, 36.750126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219269, 34.236732, 36.393005>,  <28.952585, 33.979218, 37.116535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219269, 34.236732, 36.393005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860653, 34.401299, 36.458679>,  <28.645483, 34.500038, 36.498085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860653, 34.401299, 36.458679>,  <29.219269, 34.236732, 36.393005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860653, 34.401299, 36.458679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314098, 0.851790, -0.419280,
		-0.312350, -0.324330, -0.892887,
		-0.896538, 0.411416, 0.164185,
		28.591692, 34.524723, 36.507935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018312, 34.693157, 35.795994>,  <29.219269, 34.236732, 36.393005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018312, 34.693157, 35.795994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808712, 34.813000, 36.114906>,  <28.682953, 34.884903, 36.306255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808712, 34.813000, 36.114906>,  <29.018312, 34.693157, 35.795994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808712, 34.813000, 36.114906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345191, 0.930467, -0.122780,
		-0.778632, 0.210878, -0.590984,
		-0.524000, 0.299603, 0.797284,
		28.651512, 34.902882, 36.354092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588238, 35.243240, 35.543644>,  <29.018312, 34.693157, 35.795994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588238, 35.243240, 35.543644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604023, 35.284256, 35.941223>,  <28.613493, 35.308865, 36.179771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604023, 35.284256, 35.941223>,  <28.588238, 35.243240, 35.543644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604023, 35.284256, 35.941223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411657, 0.904715, -0.109680,
		-0.910484, 0.413492, -0.006511,
		0.039462, 0.102542, 0.993946,
		28.615862, 35.315018, 36.239407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415260, 35.914513, 35.688164>,  <28.588238, 35.243240, 35.543644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415260, 35.914513, 35.688164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602345, 35.805882, 36.024612>,  <28.714596, 35.740704, 36.226482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602345, 35.805882, 36.024612>,  <28.415260, 35.914513, 35.688164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602345, 35.805882, 36.024612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335005, 0.935093, 0.115640,
		-0.817935, 0.227695, 0.528334,
		0.467711, -0.271581, 0.841125,
		28.742659, 35.724407, 36.276951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123201, 36.327099, 36.204342>,  <28.415260, 35.914513, 35.688164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123201, 36.327099, 36.204342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467371, 36.182861, 36.348366>,  <28.673874, 36.096321, 36.434780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467371, 36.182861, 36.348366>,  <28.123201, 36.327099, 36.204342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467371, 36.182861, 36.348366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344916, 0.932239, 0.109374,
		-0.375102, 0.030083, 0.926495,
		0.860425, -0.360590, 0.360061,
		28.725498, 36.074684, 36.456383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302769, 36.657211, 36.896809>,  <28.123201, 36.327099, 36.204342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302769, 36.657211, 36.896809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628881, 36.536079, 36.699383>,  <28.824549, 36.463402, 36.580925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628881, 36.536079, 36.699383>,  <28.302769, 36.657211, 36.896809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628881, 36.536079, 36.699383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425950, 0.891038, 0.156901,
		0.392274, -0.338153, 0.855438,
		0.815284, -0.302826, -0.493567,
		28.873466, 36.445232, 36.551311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713488, 36.934879, 37.378750>,  <28.302769, 36.657211, 36.896809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713488, 36.934879, 37.378750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905357, 36.848408, 37.038589>,  <29.020479, 36.796524, 36.834492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905357, 36.848408, 37.038589>,  <28.713488, 36.934879, 37.378750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905357, 36.848408, 37.038589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545769, 0.832390, 0.096243,
		0.687058, -0.510287, 0.517260,
		0.479674, -0.216180, -0.850399,
		29.049259, 36.783554, 36.783470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389118, 37.045681, 37.569687>,  <28.713488, 36.934879, 37.378750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389118, 37.045681, 37.569687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.368330, 37.079819, 37.171688>,  <29.355858, 37.100300, 36.932888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.368330, 37.079819, 37.171688>,  <29.389118, 37.045681, 37.569687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368330, 37.079819, 37.171688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328192, 0.942461, 0.063697,
		0.943180, -0.323240, -0.076989,
		-0.051970, 0.085345, -0.994995,
		29.352739, 37.105423, 36.873188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961411, 37.348145, 37.403141>,  <29.389118, 37.045681, 37.569687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961411, 37.348145, 37.403141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756069, 37.419163, 37.067299>,  <29.632864, 37.461773, 36.865791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756069, 37.419163, 37.067299>,  <29.961411, 37.348145, 37.403141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756069, 37.419163, 37.067299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439838, 0.894528, -0.079764,
		0.736891, -0.410239, -0.537303,
		-0.513355, 0.177549, -0.839609,
		29.602062, 37.472427, 36.815414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412271, 37.704327, 36.899590>,  <29.961411, 37.348145, 37.403141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412271, 37.704327, 36.899590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051655, 37.823631, 36.774200>,  <29.835285, 37.895214, 36.698967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051655, 37.823631, 36.774200>,  <30.412271, 37.704327, 36.899590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051655, 37.823631, 36.774200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380140, 0.892012, -0.244556,
		0.206680, -0.339641, -0.917566,
		-0.901542, 0.298259, -0.313472,
		29.781193, 37.913109, 36.680161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591408, 38.017281, 36.331825>,  <30.412271, 37.704327, 36.899590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591408, 38.017281, 36.331825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227716, 38.162853, 36.412682>,  <30.009502, 38.250195, 36.461193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227716, 38.162853, 36.412682>,  <30.591408, 38.017281, 36.331825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227716, 38.162853, 36.412682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271635, 0.886592, -0.374392,
		-0.315466, -0.285500, -0.904970,
		-0.909228, 0.363929, 0.202138,
		29.954948, 38.272034, 36.473324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467241, 38.466717, 35.766560>,  <30.591408, 38.017281, 36.331825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467241, 38.466717, 35.766560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.206131, 38.572235, 36.050613>,  <30.049465, 38.635544, 36.221046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.206131, 38.572235, 36.050613>,  <30.467241, 38.466717, 35.766560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206131, 38.572235, 36.050613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145204, 0.963601, -0.224473,
		-0.743504, -0.043416, -0.667321,
		-0.652777, 0.263794, 0.710137,
		30.010298, 38.651375, 36.263653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162540, 38.905712, 35.459137>,  <30.467241, 38.466717, 35.766560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162540, 38.905712, 35.459137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057882, 38.987732, 35.836391>,  <29.995087, 39.036942, 36.062744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057882, 38.987732, 35.836391>,  <30.162540, 38.905712, 35.459137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057882, 38.987732, 35.836391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290327, 0.948636, -0.125700,
		-0.920463, 0.240928, -0.307736,
		-0.261645, 0.205046, 0.943132,
		29.979389, 39.049248, 36.119331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629940, 39.468189, 35.437412>,  <30.162540, 38.905712, 35.459137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629940, 39.468189, 35.437412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812658, 39.467022, 35.793240>,  <29.922289, 39.466324, 36.006737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812658, 39.467022, 35.793240>,  <29.629940, 39.468189, 35.437412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812658, 39.467022, 35.793240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237584, 0.964070, -0.118840,
		-0.857258, 0.265633, 0.441076,
		0.456796, -0.002916, 0.889567,
		29.949697, 39.466148, 36.060108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361437, 40.034653, 35.761024>,  <29.629940, 39.468189, 35.437412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361437, 40.034653, 35.761024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707073, 39.934780, 35.935841>,  <29.914455, 39.874855, 36.040730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707073, 39.934780, 35.935841>,  <29.361437, 40.034653, 35.761024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707073, 39.934780, 35.935841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287655, 0.957488, -0.021718,
		-0.413038, 0.144483, 0.899180,
		0.864092, -0.249683, 0.437040,
		29.966301, 39.859875, 36.066952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351681, 40.538681, 36.330662>,  <29.361437, 40.034653, 35.761024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351681, 40.538681, 36.330662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725933, 40.400692, 36.300762>,  <29.950485, 40.317898, 36.282822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.725933, 40.400692, 36.300762>,  <29.351681, 40.538681, 36.330662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725933, 40.400692, 36.300762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352535, 0.902666, 0.246805,
		-0.017665, -0.257271, 0.966178,
		0.935632, -0.344971, -0.074752,
		30.006622, 40.297199, 36.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576723, 40.724892, 36.988365>,  <29.351681, 40.538681, 36.330662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576723, 40.724892, 36.988365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878323, 40.669453, 36.731529>,  <30.059282, 40.636189, 36.577427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878323, 40.669453, 36.731529>,  <29.576723, 40.724892, 36.988365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878323, 40.669453, 36.731529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395496, 0.876240, 0.275293,
		0.524470, -0.461514, 0.715497,
		0.753998, -0.138594, -0.642089,
		30.104523, 40.627876, 36.538902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173960, 41.046223, 37.306038>,  <29.576723, 40.724892, 36.988365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173960, 41.046223, 37.306038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283741, 41.002792, 36.923859>,  <30.349609, 40.976734, 36.694550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283741, 41.002792, 36.923859>,  <30.173960, 41.046223, 37.306038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283741, 41.002792, 36.923859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513618, 0.856549, 0.050204,
		0.812940, -0.504515, 0.290848,
		0.274455, -0.108572, -0.955451,
		30.366077, 40.970222, 36.637222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905775, 41.151897, 37.325691>,  <30.173960, 41.046223, 37.306038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905775, 41.151897, 37.325691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738760, 41.212227, 36.967270>,  <30.638552, 41.248425, 36.752216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738760, 41.212227, 36.967270>,  <30.905775, 41.151897, 37.325691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738760, 41.212227, 36.967270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288250, 0.957180, 0.026797,
		0.861728, -0.247099, -0.443133,
		-0.417536, 0.150825, -0.896055,
		30.613499, 41.257473, 36.698452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.025082, 37.379879, 46.840900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.648750, 37.273537, 46.924957>,  <40.422951, 37.209732, 46.975391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.648750, 37.273537, 46.924957>,  <41.025082, 37.379879, 46.840900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648750, 37.273537, 46.924957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042484, 0.522689, 0.851464,
		-0.336209, 0.810010, -0.480466,
		-0.940829, -0.265858, 0.210145,
		40.366501, 37.193779, 46.987999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680904, 37.930275, 47.117519>,  <41.025082, 37.379879, 46.840900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680904, 37.930275, 47.117519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.458275, 37.633755, 47.267555>,  <40.324696, 37.455841, 47.357578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.458275, 37.633755, 47.267555>,  <40.680904, 37.930275, 47.117519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458275, 37.633755, 47.267555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051087, 0.481169, 0.875138,
		-0.829226, 0.467916, -0.305678,
		-0.556574, -0.741304, 0.375093,
		40.291302, 37.411366, 47.380085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206120, 38.299984, 47.567257>,  <40.680904, 37.930275, 47.117519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206120, 38.299984, 47.567257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128513, 37.917187, 47.653526>,  <40.081947, 37.687508, 47.705288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128513, 37.917187, 47.653526>,  <40.206120, 38.299984, 47.567257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128513, 37.917187, 47.653526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243902, 0.260002, 0.934297,
		-0.950194, 0.128670, -0.283859,
		-0.194019, -0.956997, 0.215669,
		40.070309, 37.630089, 47.718227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609306, 38.352779, 47.978889>,  <40.206120, 38.299984, 47.567257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609306, 38.352779, 47.978889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816402, 38.023155, 48.070869>,  <39.940659, 37.825382, 48.126057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816402, 38.023155, 48.070869>,  <39.609306, 38.352779, 47.978889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816402, 38.023155, 48.070869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002218, 0.270066, 0.962839,
		-0.855536, -0.497990, 0.141652,
		0.517739, -0.824057, 0.229946,
		39.971725, 37.775936, 48.139854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267990, 38.078594, 48.582169>,  <39.609306, 38.352779, 47.978889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267990, 38.078594, 48.582169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632984, 37.915440, 48.594791>,  <39.851982, 37.817547, 48.602367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.632984, 37.915440, 48.594791>,  <39.267990, 38.078594, 48.582169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632984, 37.915440, 48.594791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077518, 0.248132, 0.965620,
		-0.401698, -0.878667, 0.258035,
		0.912485, -0.407890, 0.031561,
		39.906731, 37.793072, 48.604259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226910, 37.548687, 49.167675>,  <39.267990, 38.078594, 48.582169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226910, 37.548687, 49.167675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615662, 37.607941, 49.094448>,  <39.848911, 37.643494, 49.050514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615662, 37.607941, 49.094448>,  <39.226910, 37.548687, 49.167675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615662, 37.607941, 49.094448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180908, 0.028012, 0.983101,
		0.150757, -0.988571, 0.000426,
		0.971877, 0.148132, -0.183063,
		39.907227, 37.652382, 49.039528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608727, 37.015221, 49.565193>,  <39.226910, 37.548687, 49.167675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608727, 37.015221, 49.565193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871208, 37.312145, 49.510963>,  <40.028698, 37.490299, 49.478428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871208, 37.312145, 49.510963>,  <39.608727, 37.015221, 49.565193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871208, 37.312145, 49.510963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323153, -0.114092, 0.939444,
		0.681889, -0.660274, -0.314746,
		0.656201, 0.742308, -0.135571,
		40.068069, 37.534836, 49.470291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104359, 36.781094, 49.960526>,  <39.608727, 37.015221, 49.565193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104359, 36.781094, 49.960526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.191986, 37.169018, 49.917690>,  <40.244564, 37.401772, 49.891991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.191986, 37.169018, 49.917690>,  <40.104359, 36.781094, 49.960526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191986, 37.169018, 49.917690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232454, 0.054713, 0.971067,
		0.947614, -0.237625, -0.213451,
		0.219071, 0.969815, -0.107084,
		40.257706, 37.459961, 49.885567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751457, 36.990616, 50.220886>,  <40.104359, 36.781094, 49.960526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751457, 36.990616, 50.220886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547844, 37.334824, 50.228779>,  <40.425674, 37.541348, 50.233513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547844, 37.334824, 50.228779>,  <40.751457, 36.990616, 50.220886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547844, 37.334824, 50.228779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316213, 0.165634, 0.934117,
		0.800559, 0.481736, -0.356421,
		-0.509033, 0.860521, 0.019731,
		40.395134, 37.592979, 50.234699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213150, 37.307507, 50.594975>,  <40.751457, 36.990616, 50.220886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213150, 37.307507, 50.594975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866837, 37.506172, 50.619431>,  <40.659046, 37.625370, 50.634102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866837, 37.506172, 50.619431>,  <41.213150, 37.307507, 50.594975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866837, 37.506172, 50.619431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222386, 0.272432, 0.936123,
		0.448282, 0.824079, -0.346319,
		-0.865787, 0.496663, 0.061138,
		40.607101, 37.655170, 50.637772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363480, 37.958698, 50.879391>,  <41.213150, 37.307507, 50.594975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363480, 37.958698, 50.879391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.973824, 37.898331, 50.946655>,  <40.740032, 37.862110, 50.987015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.973824, 37.898331, 50.946655>,  <41.363480, 37.958698, 50.879391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973824, 37.898331, 50.946655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111141, 0.327931, 0.938141,
		-0.196728, 0.932569, -0.302677,
		-0.974138, -0.150919, 0.168160,
		40.681583, 37.853054, 50.997105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150021, 38.580708, 51.356945>,  <41.363480, 37.958698, 50.879391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150021, 38.580708, 51.356945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.864666, 38.302773, 51.393341>,  <40.693451, 38.136013, 51.415180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.864666, 38.302773, 51.393341>,  <41.150021, 38.580708, 51.356945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864666, 38.302773, 51.393341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055928, 0.185882, 0.980979,
		-0.698531, 0.694733, -0.171467,
		-0.713391, -0.694834, 0.090989,
		40.650650, 38.094322, 51.420639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607647, 38.800861, 51.819775>,  <41.150021, 38.580708, 51.356945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607647, 38.800861, 51.819775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614704, 38.401073, 51.830715>,  <40.618938, 38.161201, 51.837280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614704, 38.401073, 51.830715>,  <40.607647, 38.800861, 51.819775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614704, 38.401073, 51.830715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015865, 0.027636, 0.999492,
		-0.999718, -0.017203, 0.016344,
		0.017646, -0.999470, 0.027355,
		40.619999, 38.101231, 51.838921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982857, 38.919891, 52.062027>,  <40.607647, 38.800861, 51.819775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982857, 38.919891, 52.062027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937374, 39.138767, 51.730328>,  <39.910084, 39.270092, 51.531307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.937374, 39.138767, 51.730328>,  <39.982857, 38.919891, 52.062027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937374, 39.138767, 51.730328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347689, -0.803798, -0.482722,
		-0.930690, 0.233433, 0.281647,
		-0.113704, 0.547190, -0.829249,
		39.903263, 39.302925, 51.481552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414742, 38.793491, 51.620461>,  <39.982857, 38.919891, 52.062027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414742, 38.793491, 51.620461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686913, 38.943012, 51.368336>,  <39.850216, 39.032726, 51.217060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686913, 38.943012, 51.368336>,  <39.414742, 38.793491, 51.620461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686913, 38.943012, 51.368336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252347, -0.687999, -0.680425,
		-0.687999, 0.622036, -0.373803,
		0.680425, 0.373803, -0.630311,
		39.891041, 39.055153, 51.179241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752087, 38.453770, 51.621204>,  <39.414742, 38.793491, 51.620461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752087, 38.453770, 51.621204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541954, 38.779758, 51.523346>,  <38.415874, 38.975349, 51.464630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541954, 38.779758, 51.523346>,  <38.752087, 38.453770, 51.621204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541954, 38.779758, 51.523346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196627, -0.396007, -0.896948,
		-0.827868, -0.423089, 0.368279,
		-0.525331, 0.814969, -0.244651,
		38.384354, 39.024250, 51.449951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151466, 38.207115, 51.279575>,  <38.752087, 38.453770, 51.621204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151466, 38.207115, 51.279575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.135246, 38.595848, 51.186710>,  <38.125515, 38.829086, 51.130993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.135246, 38.595848, 51.186710>,  <38.151466, 38.207115, 51.279575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135246, 38.595848, 51.186710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264661, -0.234504, -0.935395,
		-0.963489, 0.023510, 0.266716,
		-0.040554, 0.971831, -0.232164,
		38.123081, 38.887398, 51.117062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423428, 38.348118, 50.927830>,  <38.151466, 38.207115, 51.279575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423428, 38.348118, 50.927830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689842, 38.618958, 50.802654>,  <37.849693, 38.781460, 50.727551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689842, 38.618958, 50.802654>,  <37.423428, 38.348118, 50.927830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689842, 38.618958, 50.802654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320581, -0.118969, -0.939720,
		-0.673513, 0.726213, 0.137827,
		0.666039, 0.677098, -0.312937,
		37.889652, 38.822086, 50.708775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117889, 38.614594, 50.412159>,  <37.423428, 38.348118, 50.927830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117889, 38.614594, 50.412159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458527, 38.801918, 50.317951>,  <37.662910, 38.914314, 50.261425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458527, 38.801918, 50.317951>,  <37.117889, 38.614594, 50.412159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458527, 38.801918, 50.317951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352288, 0.178579, -0.918696,
		-0.388178, 0.865328, 0.317058,
		0.851593, 0.468313, -0.235524,
		37.714005, 38.942413, 50.247295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028034, 39.250740, 50.025040>,  <37.117889, 38.614594, 50.412159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028034, 39.250740, 50.025040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.422153, 39.232018, 49.959324>,  <37.658627, 39.220783, 49.919895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.422153, 39.232018, 49.959324>,  <37.028034, 39.250740, 50.025040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422153, 39.232018, 49.959324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155840, 0.147673, -0.976681,
		0.069974, 0.987928, 0.138208,
		0.985301, -0.046804, -0.164292,
		37.717743, 39.217976, 49.910038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186684, 39.895397, 49.772343>,  <37.028034, 39.250740, 50.025040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186684, 39.895397, 49.772343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454102, 39.627163, 49.643742>,  <37.614552, 39.466221, 49.566582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454102, 39.627163, 49.643742>,  <37.186684, 39.895397, 49.772343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454102, 39.627163, 49.643742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254360, 0.200058, -0.946191,
		0.698823, 0.714346, -0.036823,
		0.668541, -0.670586, -0.321507,
		37.654663, 39.425987, 49.547291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560734, 40.294960, 49.255421>,  <37.186684, 39.895397, 49.772343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560734, 40.294960, 49.255421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687656, 39.920975, 49.191967>,  <37.763809, 39.696583, 49.153893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687656, 39.920975, 49.191967>,  <37.560734, 40.294960, 49.255421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687656, 39.920975, 49.191967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064223, 0.188084, -0.980051,
		0.946145, 0.300791, 0.119727,
		0.317309, -0.934960, -0.158637,
		37.782848, 39.640488, 49.144375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179550, 40.307117, 48.749611>,  <37.560734, 40.294960, 49.255421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179550, 40.307117, 48.749611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996796, 39.951885, 48.729355>,  <37.887142, 39.738747, 48.717201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996796, 39.951885, 48.729355>,  <38.179550, 40.307117, 48.749611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996796, 39.951885, 48.729355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032949, 0.040000, -0.998656,
		0.888917, -0.457937, 0.010986,
		-0.456882, -0.888084, -0.050645,
		37.859730, 39.685459, 48.714161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474106, 39.996048, 48.227306>,  <38.179550, 40.307117, 48.749611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474106, 39.996048, 48.227306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.148754, 39.764420, 48.249508>,  <37.953541, 39.625443, 48.262829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.148754, 39.764420, 48.249508>,  <38.474106, 39.996048, 48.227306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148754, 39.764420, 48.249508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108703, 0.057567, -0.992406,
		0.571482, -0.813240, -0.109771,
		-0.813383, -0.579074, 0.055503,
		37.904739, 39.590698, 48.266159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505600, 39.600773, 47.708469>,  <38.474106, 39.996048, 48.227306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505600, 39.600773, 47.708469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114460, 39.578381, 47.789139>,  <37.879776, 39.564945, 47.837540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114460, 39.578381, 47.789139>,  <38.505600, 39.600773, 47.708469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114460, 39.578381, 47.789139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197314, -0.074767, -0.977485,
		0.069797, -0.995629, 0.062065,
		-0.977853, -0.055979, 0.201669,
		37.821106, 39.561588, 47.849640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306465, 39.010822, 47.343437>,  <38.505600, 39.600773, 47.708469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306465, 39.010822, 47.343437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982788, 39.232735, 47.420830>,  <37.788582, 39.365883, 47.467266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.982788, 39.232735, 47.420830>,  <38.306465, 39.010822, 47.343437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982788, 39.232735, 47.420830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362117, -0.211582, -0.907802,
		-0.462693, -0.804645, 0.372105,
		-0.809189, 0.554779, 0.193478,
		37.740032, 39.399170, 47.478874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855598, 38.697311, 46.998714>,  <38.306465, 39.010822, 47.343437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855598, 38.697311, 46.998714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675079, 39.048786, 47.061001>,  <37.566769, 39.259670, 47.098373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675079, 39.048786, 47.061001>,  <37.855598, 38.697311, 46.998714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675079, 39.048786, 47.061001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370921, -0.026001, -0.928301,
		-0.811633, -0.476697, 0.337656,
		-0.451298, 0.878683, 0.155713,
		37.539688, 39.312389, 47.107716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123249, 38.602665, 46.779171>,  <37.855598, 38.697311, 46.998714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123249, 38.602665, 46.779171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232761, 38.982979, 46.721123>,  <37.298470, 39.211166, 46.686295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232761, 38.982979, 46.721123>,  <37.123249, 38.602665, 46.779171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232761, 38.982979, 46.721123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323765, -0.050970, -0.944764,
		-0.905659, 0.305646, 0.293874,
		0.273784, 0.950780, -0.145119,
		37.314896, 39.268211, 46.677586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502277, 38.720127, 47.076164>,  <37.123249, 38.602665, 46.779171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502277, 38.720127, 47.076164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111523, 38.665611, 47.142040>,  <35.877071, 38.632904, 47.181564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111523, 38.665611, 47.142040>,  <36.502277, 38.720127, 47.076164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111523, 38.665611, 47.142040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100861, 0.385396, 0.917222,
		-0.188475, 0.912631, -0.362742,
		-0.976885, -0.136287, 0.164687,
		35.818459, 38.624725, 47.191444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212219, 39.405998, 47.208904>,  <36.502277, 38.720127, 47.076164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212219, 39.405998, 47.208904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969414, 39.132950, 47.371658>,  <35.823730, 38.969120, 47.469311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969414, 39.132950, 47.371658>,  <36.212219, 39.405998, 47.208904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969414, 39.132950, 47.371658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013601, 0.503004, 0.864177,
		-0.794573, 0.530103, -0.296047,
		-0.607016, -0.682626, 0.406884,
		35.787308, 38.928162, 47.493725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704315, 39.764534, 47.572769>,  <36.212219, 39.405998, 47.208904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704315, 39.764534, 47.572769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710793, 39.403114, 47.744041>,  <35.714680, 39.186264, 47.846806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710793, 39.403114, 47.744041>,  <35.704315, 39.764534, 47.572769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710793, 39.403114, 47.744041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155216, 0.420774, 0.893788,
		-0.987748, -0.080931, -0.133433,
		0.016190, -0.903548, 0.428181,
		35.715649, 39.132050, 47.872498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148090, 39.819084, 47.943726>,  <35.704315, 39.764534, 47.572769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148090, 39.819084, 47.943726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339825, 39.510464, 48.111031>,  <35.454865, 39.325291, 48.211414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339825, 39.510464, 48.111031>,  <35.148090, 39.819084, 47.943726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339825, 39.510464, 48.111031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184427, 0.377388, 0.907505,
		-0.858034, -0.512139, 0.038601,
		0.479337, -0.771551, 0.418264,
		35.483627, 39.278999, 48.236511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678280, 39.555023, 48.495930>,  <35.148090, 39.819084, 47.943726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678280, 39.555023, 48.495930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024841, 39.379265, 48.590816>,  <35.232780, 39.273811, 48.647747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024841, 39.379265, 48.590816>,  <34.678280, 39.555023, 48.495930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024841, 39.379265, 48.590816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112706, 0.290716, 0.950148,
		-0.486452, -0.849951, 0.202356,
		0.866408, -0.439394, 0.237214,
		35.284763, 39.247448, 48.661980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592640, 39.022339, 49.006241>,  <34.678280, 39.555023, 48.495930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592640, 39.022339, 49.006241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974686, 39.136185, 49.039116>,  <35.203911, 39.204494, 49.058842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974686, 39.136185, 49.039116>,  <34.592640, 39.022339, 49.006241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974686, 39.136185, 49.039116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221565, 0.502131, 0.835927,
		0.196648, -0.816614, 0.542652,
		0.955112, 0.284616, 0.082190,
		35.261219, 39.221569, 49.063774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713520, 38.855640, 49.699215>,  <34.592640, 39.022339, 49.006241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713520, 38.855640, 49.699215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015827, 39.100090, 49.605122>,  <35.197212, 39.246761, 49.548664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015827, 39.100090, 49.605122>,  <34.713520, 38.855640, 49.699215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015827, 39.100090, 49.605122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020533, 0.381171, 0.924276,
		0.654515, -0.693710, 0.300626,
		0.755770, 0.611126, -0.235238,
		35.242558, 39.283428, 49.534550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841434, 38.162010, 49.835175>,  <34.713520, 38.855640, 49.699215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841434, 38.162010, 49.835175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525578, 37.950428, 49.959538>,  <34.336063, 37.823479, 50.034157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525578, 37.950428, 49.959538>,  <34.841434, 38.162010, 49.835175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525578, 37.950428, 49.959538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241506, -0.197873, -0.950011,
		0.564036, -0.825258, 0.028503,
		-0.789644, -0.528957, 0.310912,
		34.288685, 37.791740, 50.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994541, 37.573971, 49.492897>,  <34.841434, 38.162010, 49.835175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994541, 37.573971, 49.492897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602947, 37.603676, 49.568863>,  <34.367989, 37.621498, 49.614441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602947, 37.603676, 49.568863>,  <34.994541, 37.573971, 49.492897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602947, 37.603676, 49.568863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201862, -0.220968, -0.954162,
		-0.028892, -0.972449, 0.231316,
		-0.978988, 0.074262, 0.189916,
		34.309250, 37.625954, 49.625839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695465, 37.067562, 49.106544>,  <34.994541, 37.573971, 49.492897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695465, 37.067562, 49.106544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367962, 37.286755, 49.175079>,  <34.171459, 37.418270, 49.216202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367962, 37.286755, 49.175079>,  <34.695465, 37.067562, 49.106544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367962, 37.286755, 49.175079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440516, -0.408188, -0.799580,
		-0.368208, -0.730143, 0.575599,
		-0.818760, 0.547972, 0.171341,
		34.122334, 37.451149, 49.226479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135944, 36.591400, 49.011322>,  <34.695465, 37.067562, 49.106544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135944, 36.591400, 49.011322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993324, 36.962799, 48.969814>,  <33.907753, 37.185638, 48.944908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993324, 36.962799, 48.969814>,  <34.135944, 36.591400, 49.011322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993324, 36.962799, 48.969814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514743, -0.287922, -0.807552,
		-0.779686, -0.234518, 0.580596,
		-0.356552, 0.928494, -0.103772,
		33.886360, 37.241348, 48.938683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406227, 36.503933, 48.891239>,  <34.135944, 36.591400, 49.011322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406227, 36.503933, 48.891239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488422, 36.873543, 48.762268>,  <33.537739, 37.095306, 48.684883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488422, 36.873543, 48.762268>,  <33.406227, 36.503933, 48.891239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488422, 36.873543, 48.762268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365657, -0.233111, -0.901085,
		-0.907783, 0.303061, 0.289973,
		0.205487, 0.924020, -0.322431,
		33.550068, 37.150749, 48.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788090, 36.740116, 48.599243>,  <33.406227, 36.503933, 48.891239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788090, 36.740116, 48.599243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079025, 36.966267, 48.443642>,  <33.253586, 37.101959, 48.350281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079025, 36.966267, 48.443642>,  <32.788090, 36.740116, 48.599243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079025, 36.966267, 48.443642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395012, -0.118621, -0.910986,
		-0.561195, 0.816258, 0.137053,
		0.727342, 0.565378, -0.389001,
		33.297226, 37.135880, 48.326942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470760, 37.102379, 48.007645>,  <32.788090, 36.740116, 48.599243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470760, 37.102379, 48.007645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864601, 37.083454, 47.940338>,  <33.100906, 37.072098, 47.899952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864601, 37.083454, 47.940338>,  <32.470760, 37.102379, 48.007645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864601, 37.083454, 47.940338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174772, -0.282507, -0.943210,
		-0.002910, 0.958098, -0.286427,
		0.984605, -0.047315, -0.168271,
		33.159981, 37.069260, 47.889858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.468040, 35.048630, 52.701363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.203663, 34.965580, 52.989822>,  <38.045036, 34.915749, 53.162899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.203663, 34.965580, 52.989822>,  <38.468040, 35.048630, 52.701363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203663, 34.965580, 52.989822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580131, -0.750939, 0.315496,
		0.476032, 0.626883, 0.616775,
		-0.660940, -0.207624, 0.721145,
		38.005383, 34.903294, 53.206165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017551, 35.493172, 52.276871>,  <38.468040, 35.048630, 52.701363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017551, 35.493172, 52.276871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.307812, 35.732338, 52.140682>,  <38.481968, 35.875839, 52.058968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.307812, 35.732338, 52.140682>,  <38.017551, 35.493172, 52.276871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307812, 35.732338, 52.140682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031366, -0.523062, -0.851717,
		-0.687345, 0.607373, -0.398317,
		0.725654, 0.597917, -0.340473,
		38.525509, 35.911713, 52.038540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811314, 35.885414, 51.607986>,  <38.017551, 35.493172, 52.276871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811314, 35.885414, 51.607986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.207466, 35.832504, 51.624264>,  <38.445156, 35.800758, 51.634029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.207466, 35.832504, 51.624264>,  <37.811314, 35.885414, 51.607986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207466, 35.832504, 51.624264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015229, -0.396443, -0.917933,
		0.137552, 0.908481, -0.394643,
		0.990378, -0.132273, 0.040696,
		38.504578, 35.792824, 51.636471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053715, 36.127186, 50.935638>,  <37.811314, 35.885414, 51.607986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053715, 36.127186, 50.935638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.331139, 35.886623, 51.094280>,  <38.497593, 35.742287, 51.189465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.331139, 35.886623, 51.094280>,  <38.053715, 36.127186, 50.935638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331139, 35.886623, 51.094280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061741, -0.498881, -0.864469,
		0.717750, 0.624046, -0.308872,
		0.693558, -0.601403, 0.396601,
		38.539207, 35.706203, 51.213261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472755, 36.019173, 50.380234>,  <38.053715, 36.127186, 50.935638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472755, 36.019173, 50.380234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.602543, 35.731758, 50.626301>,  <38.680416, 35.559311, 50.773941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.602543, 35.731758, 50.626301>,  <38.472755, 36.019173, 50.380234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602543, 35.731758, 50.626301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255870, -0.559434, -0.788394,
		0.910632, 0.413212, 0.002331,
		0.324470, -0.718533, 0.615167,
		38.699883, 35.516197, 50.810852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087933, 35.857452, 50.047100>,  <38.472755, 36.019173, 50.380234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087933, 35.857452, 50.047100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.008530, 35.559986, 50.302460>,  <38.960888, 35.381508, 50.455677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.008530, 35.559986, 50.302460>,  <39.087933, 35.857452, 50.047100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008530, 35.559986, 50.302460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310198, -0.665551, -0.678836,
		0.929715, 0.063275, 0.362802,
		-0.198510, -0.743665, 0.638401,
		38.948978, 35.336887, 50.493980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681404, 35.475365, 50.143612>,  <39.087933, 35.857452, 50.047100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681404, 35.475365, 50.143612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.385242, 35.220535, 50.229351>,  <39.207546, 35.067638, 50.280796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.385242, 35.220535, 50.229351>,  <39.681404, 35.475365, 50.143612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385242, 35.220535, 50.229351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386457, -0.664377, -0.639730,
		0.549963, -0.390820, 0.738106,
		-0.740400, -0.637074, 0.214347,
		39.163124, 35.029411, 50.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060757, 34.807568, 50.134838>,  <39.681404, 35.475365, 50.143612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060757, 34.807568, 50.134838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.665569, 34.764526, 50.090389>,  <39.428459, 34.738701, 50.063721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.665569, 34.764526, 50.090389>,  <40.060757, 34.807568, 50.134838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665569, 34.764526, 50.090389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154679, -0.680756, -0.715993,
		0.001397, -0.724564, 0.689206,
		-0.987964, -0.107606, -0.111124,
		39.369179, 34.732246, 50.057053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930126, 34.024017, 50.103905>,  <40.060757, 34.807568, 50.134838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930126, 34.024017, 50.103905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608433, 34.198944, 49.942928>,  <39.415417, 34.303902, 49.846344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608433, 34.198944, 49.942928>,  <39.930126, 34.024017, 50.103905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608433, 34.198944, 49.942928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005957, -0.683050, -0.730347,
		-0.594280, -0.584974, 0.551938,
		-0.804236, 0.437319, -0.402438,
		39.367161, 34.330139, 49.822197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448288, 33.494392, 49.835464>,  <39.930126, 34.024017, 50.103905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448288, 33.494392, 49.835464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.318497, 33.810898, 49.628155>,  <39.240620, 34.000801, 49.503769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.318497, 33.810898, 49.628155>,  <39.448288, 33.494392, 49.835464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318497, 33.810898, 49.628155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036458, -0.537054, -0.842759,
		-0.945189, -0.292356, 0.145417,
		-0.324483, 0.791265, -0.518277,
		39.221153, 34.048279, 49.472672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909733, 33.176334, 49.307236>,  <39.448288, 33.494392, 49.835464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909733, 33.176334, 49.307236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.000961, 33.537834, 49.162342>,  <39.055698, 33.754734, 49.075405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.000961, 33.537834, 49.162342>,  <38.909733, 33.176334, 49.307236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000961, 33.537834, 49.162342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057255, -0.358945, -0.931601,
		-0.971958, 0.233215, -0.030122,
		0.228076, 0.903753, -0.362232,
		39.069386, 33.808960, 49.053673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308689, 33.376022, 48.888725>,  <38.909733, 33.176334, 49.307236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308689, 33.376022, 48.888725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630974, 33.574600, 48.759495>,  <38.824345, 33.693745, 48.681957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630974, 33.574600, 48.759495>,  <38.308689, 33.376022, 48.888725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630974, 33.574600, 48.759495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112748, -0.406939, -0.906470,
		-0.581483, 0.766777, -0.271901,
		0.805708, 0.496441, -0.323080,
		38.872684, 33.723534, 48.662571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560337, 33.564957, 48.608829>,  <38.308689, 33.376022, 48.888725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560337, 33.564957, 48.608829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.223774, 33.350075, 48.585365>,  <37.021835, 33.221146, 48.571285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.223774, 33.350075, 48.585365>,  <37.560337, 33.564957, 48.608829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223774, 33.350075, 48.585365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373180, 0.499103, 0.782070,
		-0.390851, 0.679934, -0.620424,
		-0.841411, -0.537202, -0.058663,
		36.971352, 33.188915, 48.567768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953159, 34.010769, 48.474754>,  <37.560337, 33.564957, 48.608829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953159, 34.010769, 48.474754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.828548, 33.686172, 48.672516>,  <36.753784, 33.491413, 48.791172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.828548, 33.686172, 48.672516>,  <36.953159, 34.010769, 48.474754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828548, 33.686172, 48.672516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258936, 0.573095, 0.777505,
		-0.914279, 0.114193, -0.388657,
		-0.311523, -0.811494, 0.494400,
		36.735092, 33.442726, 48.820835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217140, 34.082783, 48.720623>,  <36.953159, 34.010769, 48.474754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217140, 34.082783, 48.720623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.394478, 33.809132, 48.952286>,  <36.500881, 33.644943, 49.091282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.394478, 33.809132, 48.952286>,  <36.217140, 34.082783, 48.720623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394478, 33.809132, 48.952286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178617, 0.565737, 0.805008,
		-0.878375, -0.460341, 0.128619,
		0.443343, -0.684126, 0.579154,
		36.527481, 33.603893, 49.126034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689869, 33.961849, 49.201992>,  <36.217140, 34.082783, 48.720623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689869, 33.961849, 49.201992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.021759, 33.815727, 49.370800>,  <36.220894, 33.728054, 49.472084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.021759, 33.815727, 49.370800>,  <35.689869, 33.961849, 49.201992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021759, 33.815727, 49.370800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246971, 0.437768, 0.864503,
		-0.500558, -0.821528, 0.273007,
		0.829727, -0.365309, 0.422022,
		36.270676, 33.706135, 49.497406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474201, 33.672066, 49.795750>,  <35.689869, 33.961849, 49.201992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474201, 33.672066, 49.795750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.857101, 33.733532, 49.893780>,  <36.086842, 33.770412, 49.952599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.857101, 33.733532, 49.893780>,  <35.474201, 33.672066, 49.795750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857101, 33.733532, 49.893780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287021, 0.399194, 0.870783,
		0.035978, -0.903898, 0.426233,
		0.957249, 0.153667, 0.245076,
		36.144276, 33.779633, 49.967304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583580, 33.393230, 50.465591>,  <35.474201, 33.672066, 49.795750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583580, 33.393230, 50.465591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888382, 33.647198, 50.414646>,  <36.071262, 33.799580, 50.384079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888382, 33.647198, 50.414646>,  <35.583580, 33.393230, 50.465591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888382, 33.647198, 50.414646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064421, 0.270035, 0.960693,
		0.644354, -0.723851, 0.246671,
		0.762009, 0.634917, -0.127367,
		36.116985, 33.837673, 50.376434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936543, 33.268211, 51.086327>,  <35.583580, 33.393230, 50.465591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936543, 33.268211, 51.086327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.049381, 33.619411, 50.931648>,  <36.117085, 33.830132, 50.838840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.049381, 33.619411, 50.931648>,  <35.936543, 33.268211, 51.086327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049381, 33.619411, 50.931648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129851, 0.434300, 0.891360,
		0.950558, -0.201238, 0.236524,
		0.282098, 0.878002, -0.386697,
		36.134010, 33.882812, 50.815639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326801, 33.588654, 51.601254>,  <35.936543, 33.268211, 51.086327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326801, 33.588654, 51.601254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.239117, 33.899876, 51.365768>,  <36.186508, 34.086609, 51.224476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.239117, 33.899876, 51.365768>,  <36.326801, 33.588654, 51.601254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239117, 33.899876, 51.365768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072923, 0.614766, 0.785331,
		0.972949, 0.129219, -0.191499,
		-0.219207, 0.778052, -0.588713,
		36.173355, 34.133293, 51.189156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537636, 34.150238, 52.003811>,  <36.326801, 33.588654, 51.601254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537636, 34.150238, 52.003811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.283649, 34.297218, 51.731987>,  <36.131256, 34.385406, 51.568893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.283649, 34.297218, 51.731987>,  <36.537636, 34.150238, 52.003811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283649, 34.297218, 51.731987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363273, 0.634303, 0.682417,
		0.681798, 0.680177, -0.269278,
		-0.634969, 0.367449, -0.679556,
		36.093159, 34.407452, 51.528122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461948, 34.867802, 52.025768>,  <36.537636, 34.150238, 52.003811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461948, 34.867802, 52.025768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.104332, 34.817760, 51.853703>,  <35.889763, 34.787735, 51.750465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.104332, 34.817760, 51.853703>,  <36.461948, 34.867802, 52.025768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104332, 34.817760, 51.853703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420040, 0.567914, 0.707841,
		0.155742, 0.813525, -0.560287,
		-0.894042, -0.125103, -0.430161,
		35.836121, 34.780231, 51.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206276, 35.519650, 51.960503>,  <36.461948, 34.867802, 52.025768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206276, 35.519650, 51.960503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.895866, 35.267982, 51.942947>,  <35.709621, 35.116982, 51.932415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.895866, 35.267982, 51.942947>,  <36.206276, 35.519650, 51.960503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895866, 35.267982, 51.942947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479926, 0.543932, 0.688338,
		-0.409211, 0.555231, -0.724061,
		-0.776027, -0.629171, -0.043887,
		35.663059, 35.079231, 51.929783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626244, 35.969067, 52.025932>,  <36.206276, 35.519650, 51.960503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626244, 35.969067, 52.025932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.471256, 35.608597, 52.103649>,  <35.378265, 35.392315, 52.150280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.471256, 35.608597, 52.103649>,  <35.626244, 35.969067, 52.025932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471256, 35.608597, 52.103649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531311, 0.390530, 0.751795,
		-0.753378, 0.188064, -0.630122,
		-0.387467, -0.901176, 0.194296,
		35.355015, 35.338245, 52.161938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914497, 36.075245, 52.220917>,  <35.626244, 35.969067, 52.025932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914497, 36.075245, 52.220917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.945889, 35.699753, 52.355160>,  <34.964722, 35.474457, 52.435703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.945889, 35.699753, 52.355160>,  <34.914497, 36.075245, 52.220917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945889, 35.699753, 52.355160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643953, 0.209257, 0.735892,
		-0.761030, -0.273863, -0.588075,
		0.078475, -0.938728, 0.335606,
		34.969433, 35.418133, 52.455841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220867, 35.791492, 52.316181>,  <34.914497, 36.075245, 52.220917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220867, 35.791492, 52.316181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457645, 35.592659, 52.569954>,  <34.599712, 35.473358, 52.722218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457645, 35.592659, 52.569954>,  <34.220867, 35.791492, 52.316181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457645, 35.592659, 52.569954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626173, 0.211966, 0.750319,
		-0.507452, -0.841412, -0.185791,
		0.591946, -0.497088, 0.634432,
		34.635231, 35.443531, 52.760284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923401, 36.410423, 52.475479>,  <34.220867, 35.791492, 52.316181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923401, 36.410423, 52.475479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.942497, 36.780952, 52.624962>,  <33.953957, 37.003269, 52.714649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.942497, 36.780952, 52.624962>,  <33.923401, 36.410423, 52.475479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942497, 36.780952, 52.624962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026603, 0.375176, -0.926572,
		-0.998506, 0.034293, 0.042554,
		0.047740, 0.926319, 0.373703,
		33.956818, 37.058849, 52.737072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350216, 36.704739, 52.245270>,  <33.923401, 36.410423, 52.475479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350216, 36.704739, 52.245270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643948, 36.967140, 52.315025>,  <33.820187, 37.124580, 52.356880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643948, 36.967140, 52.315025>,  <33.350216, 36.704739, 52.245270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643948, 36.967140, 52.315025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048688, 0.307155, -0.950413,
		-0.677044, 0.689426, 0.257493,
		0.734330, 0.656009, 0.174391,
		33.864246, 37.163944, 52.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186527, 37.355553, 51.887272>,  <33.350216, 36.704739, 52.245270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186527, 37.355553, 51.887272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578186, 37.423740, 51.931480>,  <33.813179, 37.464653, 51.958008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578186, 37.423740, 51.931480>,  <33.186527, 37.355553, 51.887272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578186, 37.423740, 51.931480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036423, 0.387910, -0.920977,
		-0.199876, 0.905795, 0.373611,
		0.979144, 0.170474, 0.110526,
		33.871929, 37.474884, 51.964638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280193, 37.986916, 51.699242>,  <33.186527, 37.355553, 51.887272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280193, 37.986916, 51.699242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.652878, 37.846210, 51.663048>,  <33.876488, 37.761787, 51.641331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.652878, 37.846210, 51.663048>,  <33.280193, 37.986916, 51.699242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652878, 37.846210, 51.663048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038549, 0.343485, -0.938367,
		0.361159, 0.870795, 0.333587,
		0.931707, -0.351759, -0.090485,
		33.932388, 37.740685, 51.635902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521488, 38.445744, 51.363735>,  <33.280193, 37.986916, 51.699242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521488, 38.445744, 51.363735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.783237, 38.150528, 51.297897>,  <33.940289, 37.973396, 51.258396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.783237, 38.150528, 51.297897>,  <33.521488, 38.445744, 51.363735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783237, 38.150528, 51.297897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162975, 0.074895, -0.983783,
		0.738401, 0.670585, -0.071273,
		0.654372, -0.738043, -0.164591,
		33.979549, 37.929115, 51.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090916, 38.662350, 50.855862>,  <33.521488, 38.445744, 51.363735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090916, 38.662350, 50.855862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102985, 38.262814, 50.870911>,  <34.110226, 38.023094, 50.879940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102985, 38.262814, 50.870911>,  <34.090916, 38.662350, 50.855862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102985, 38.262814, 50.870911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045106, -0.038965, -0.998222,
		0.998527, 0.028422, -0.046229,
		0.030172, -0.998836, 0.037625,
		34.112038, 37.963161, 50.882198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503868, 38.584778, 50.316086>,  <34.090916, 38.662350, 50.855862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503868, 38.584778, 50.316086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359322, 38.217098, 50.378670>,  <34.272594, 37.996490, 50.416218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359322, 38.217098, 50.378670>,  <34.503868, 38.584778, 50.316086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359322, 38.217098, 50.378670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141568, -0.111763, -0.983599,
		0.921613, -0.377593, -0.089742,
		-0.361370, -0.919202, 0.156457,
		34.250912, 37.941338, 50.425606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282852, 38.766983, 50.274632>,  <34.503868, 38.584778, 50.316086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282852, 38.766983, 50.274632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380741, 39.120087, 50.114204>,  <35.439472, 39.331947, 50.017948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380741, 39.120087, 50.114204>,  <35.282852, 38.766983, 50.274632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380741, 39.120087, 50.114204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095262, 0.389750, 0.915981,
		0.964903, -0.262365, 0.011286,
		0.244719, 0.882757, -0.401064,
		35.454159, 39.384914, 49.993885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890553, 38.979439, 50.676979>,  <35.282852, 38.766983, 50.274632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890553, 38.979439, 50.676979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762428, 39.309162, 50.490257>,  <35.685555, 39.506996, 50.378223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762428, 39.309162, 50.490257>,  <35.890553, 38.979439, 50.676979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762428, 39.309162, 50.490257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217187, 0.543548, 0.810793,
		0.922079, 0.158322, -0.353135,
		-0.320312, 0.824312, -0.466808,
		35.666336, 39.556458, 50.350216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475674, 39.595078, 50.786526>,  <35.890553, 38.979439, 50.676979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475674, 39.595078, 50.786526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.123035, 39.750591, 50.679470>,  <35.911453, 39.843899, 50.615238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.123035, 39.750591, 50.679470>,  <36.475674, 39.595078, 50.786526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123035, 39.750591, 50.679470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031577, 0.614342, 0.788408,
		0.470942, 0.686608, -0.553880,
		-0.881599, 0.388784, -0.267638,
		35.858555, 39.867226, 50.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475739, 40.320835, 50.899345>,  <36.475674, 39.595078, 50.786526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475739, 40.320835, 50.899345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077316, 40.308044, 50.866230>,  <35.838264, 40.300369, 50.846359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077316, 40.308044, 50.866230>,  <36.475739, 40.320835, 50.899345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077316, 40.308044, 50.866230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085211, 0.605234, 0.791474,
		0.024801, 0.795405, -0.605571,
		-0.996054, -0.031972, -0.082788,
		35.778500, 40.298454, 50.841393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217140, 41.025734, 50.985027>,  <36.475739, 40.320835, 50.899345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217140, 41.025734, 50.985027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.919540, 40.777065, 51.083000>,  <35.740982, 40.627865, 51.141785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.919540, 40.777065, 51.083000>,  <36.217140, 41.025734, 50.985027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919540, 40.777065, 51.083000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093903, 0.460208, 0.882831,
		-0.661554, 0.633822, -0.400770,
		-0.743995, -0.621674, 0.244935,
		35.696342, 40.590565, 51.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637348, 41.457890, 51.214741>,  <36.217140, 41.025734, 50.985027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637348, 41.457890, 51.214741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.543095, 41.099503, 51.365326>,  <35.486542, 40.884472, 51.455677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.543095, 41.099503, 51.365326>,  <35.637348, 41.457890, 51.214741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543095, 41.099503, 51.365326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408075, 0.442784, 0.798384,
		-0.882015, 0.034504, -0.469957,
		-0.235637, -0.895964, 0.376462,
		35.472404, 40.830715, 51.478264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935276, 41.531082, 51.551918>,  <35.637348, 41.457890, 51.214741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935276, 41.531082, 51.551918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.114326, 41.214123, 51.717682>,  <35.221756, 41.023949, 51.817139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.114326, 41.214123, 51.717682>,  <34.935276, 41.531082, 51.551918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114326, 41.214123, 51.717682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305362, 0.300118, 0.903705,
		-0.840466, -0.531068, -0.107628,
		0.447628, -0.792399, 0.414407,
		35.248615, 40.976402, 51.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454491, 41.283573, 52.023109>,  <34.935276, 41.531082, 51.551918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454491, 41.283573, 52.023109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789581, 41.115196, 52.162266>,  <34.990635, 41.014172, 52.245758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789581, 41.115196, 52.162266>,  <34.454491, 41.283573, 52.023109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789581, 41.115196, 52.162266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219244, 0.324205, 0.920230,
		-0.500150, -0.847171, 0.179306,
		0.837724, -0.420942, 0.347888,
		35.040897, 40.988914, 52.266632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229969, 40.992634, 52.521484>,  <34.454491, 41.283573, 52.023109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229969, 40.992634, 52.521484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617805, 41.064934, 52.587475>,  <34.850506, 41.108315, 52.627071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617805, 41.064934, 52.587475>,  <34.229969, 40.992634, 52.521484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617805, 41.064934, 52.587475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214069, 0.299742, 0.929693,
		0.118595, -0.936740, 0.329322,
		0.969593, 0.180754, 0.164979,
		34.908684, 41.119160, 52.636967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.776337, 35.681770, 37.601482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172188, 35.630508, 37.627449>,  <34.409698, 35.599751, 37.643028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172188, 35.630508, 37.627449>,  <33.776337, 35.681770, 37.601482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172188, 35.630508, 37.627449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087915, -0.182874, 0.979198,
		-0.113619, -0.974748, -0.192244,
		0.989627, -0.128157, 0.064917,
		34.469074, 35.592060, 37.646923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828007, 35.293217, 38.131050>,  <33.776337, 35.681770, 37.601482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828007, 35.293217, 38.131050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190964, 35.450436, 38.071507>,  <34.408737, 35.544769, 38.035782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190964, 35.450436, 38.071507>,  <33.828007, 35.293217, 38.131050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190964, 35.450436, 38.071507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119022, 0.099372, 0.987906,
		0.403090, -0.914132, 0.043387,
		0.907387, 0.393051, -0.148857,
		34.463181, 35.568352, 38.026848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156750, 35.000629, 38.683014>,  <33.828007, 35.293217, 38.131050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156750, 35.000629, 38.683014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378536, 35.314384, 38.571796>,  <34.511608, 35.502636, 38.505066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378536, 35.314384, 38.571796>,  <34.156750, 35.000629, 38.683014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378536, 35.314384, 38.571796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202414, 0.196957, 0.959289,
		0.807216, -0.588171, -0.049566,
		0.554464, 0.784387, -0.278041,
		34.544876, 35.549702, 38.488384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697975, 35.032253, 39.201515>,  <34.156750, 35.000629, 38.683014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697975, 35.032253, 39.201515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709072, 35.401062, 39.047054>,  <34.715729, 35.622345, 38.954380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709072, 35.401062, 39.047054>,  <34.697975, 35.032253, 39.201515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709072, 35.401062, 39.047054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101042, 0.381734, 0.918733,
		0.994495, -0.064501, -0.082574,
		0.027738, 0.922019, -0.386150,
		34.717392, 35.677670, 38.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403175, 35.341232, 39.350136>,  <34.697975, 35.032253, 39.201515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403175, 35.341232, 39.350136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113636, 35.613964, 39.307873>,  <34.939915, 35.777603, 39.282516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113636, 35.613964, 39.307873>,  <35.403175, 35.341232, 39.350136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113636, 35.613964, 39.307873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201395, 0.355256, 0.912816,
		0.659915, 0.639459, -0.394466,
		-0.723845, 0.681825, -0.105654,
		34.896481, 35.818512, 39.276176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699379, 35.890213, 39.664345>,  <35.403175, 35.341232, 39.350136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699379, 35.890213, 39.664345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307053, 35.968166, 39.662643>,  <35.071655, 36.014938, 39.661625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307053, 35.968166, 39.662643>,  <35.699379, 35.890213, 39.664345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307053, 35.968166, 39.662643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057076, 0.307960, 0.949686,
		0.186388, 0.931225, -0.313176,
		-0.980817, 0.194885, -0.004250,
		35.012806, 36.026630, 39.661369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558769, 36.570904, 40.000484>,  <35.699379, 35.890213, 39.664345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558769, 36.570904, 40.000484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208420, 36.379272, 40.023537>,  <34.998211, 36.264294, 40.037369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208420, 36.379272, 40.023537>,  <35.558769, 36.570904, 40.000484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208420, 36.379272, 40.023537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062240, 0.230599, 0.971056,
		-0.478505, 0.846938, -0.231794,
		-0.875876, -0.479083, 0.057629,
		34.945656, 36.235546, 40.040825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197033, 37.002941, 40.357643>,  <35.558769, 36.570904, 40.000484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197033, 37.002941, 40.357643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988876, 36.661896, 40.376564>,  <34.863983, 36.457268, 40.387917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988876, 36.661896, 40.376564>,  <35.197033, 37.002941, 40.357643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988876, 36.661896, 40.376564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292909, 0.230259, 0.928000,
		-0.802120, 0.469068, -0.369564,
		-0.520391, -0.852617, 0.047301,
		34.832760, 36.406109, 40.390755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591572, 37.230579, 40.586933>,  <35.197033, 37.002941, 40.357643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591572, 37.230579, 40.586933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600357, 36.841454, 40.679142>,  <34.605629, 36.607979, 40.734467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600357, 36.841454, 40.679142>,  <34.591572, 37.230579, 40.586933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600357, 36.841454, 40.679142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347624, 0.208759, 0.914099,
		-0.937377, -0.100216, -0.333589,
		0.021968, -0.972819, 0.230523,
		34.606949, 36.549606, 40.748299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926392, 37.110603, 40.907104>,  <34.591572, 37.230579, 40.586933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926392, 37.110603, 40.907104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185497, 36.839222, 41.045727>,  <34.340961, 36.676392, 41.128902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185497, 36.839222, 41.045727>,  <33.926392, 37.110603, 40.907104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185497, 36.839222, 41.045727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352322, 0.136551, 0.925863,
		-0.675481, -0.721838, -0.150583,
		0.647761, -0.678457, 0.346557,
		34.379826, 36.635685, 41.149693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554890, 36.910328, 41.501572>,  <33.926392, 37.110603, 40.907104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554890, 36.910328, 41.501572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901810, 36.718792, 41.555981>,  <34.109962, 36.603870, 41.588627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901810, 36.718792, 41.555981>,  <33.554890, 36.910328, 41.501572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901810, 36.718792, 41.555981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190473, -0.066767, 0.979419,
		-0.459900, -0.875361, -0.149112,
		0.867302, -0.478837, 0.136027,
		34.161999, 36.575142, 41.596790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417114, 36.294891, 41.968369>,  <33.554890, 36.910328, 41.501572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417114, 36.294891, 41.968369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800724, 36.404022, 41.998940>,  <34.030888, 36.469501, 42.017284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800724, 36.404022, 41.998940>,  <33.417114, 36.294891, 41.968369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800724, 36.404022, 41.998940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067942, -0.040440, 0.996869,
		0.275064, -0.961213, -0.020247,
		0.959022, 0.272828, 0.076430,
		34.088432, 36.485870, 42.021870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184875, 35.532490, 41.843395>,  <33.417114, 36.294891, 41.968369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184875, 35.532490, 41.843395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910961, 35.325256, 42.048393>,  <32.746613, 35.200916, 42.171394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910961, 35.325256, 42.048393>,  <33.184875, 35.532490, 41.843395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910961, 35.325256, 42.048393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324691, -0.412692, -0.851035,
		0.652410, -0.749184, 0.114391,
		-0.684790, -0.518082, 0.512497,
		32.705524, 35.169830, 42.202141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221844, 34.828712, 41.506161>,  <33.184875, 35.532490, 41.843395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221844, 34.828712, 41.506161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866879, 34.887424, 41.680954>,  <32.653900, 34.922653, 41.785828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866879, 34.887424, 41.680954>,  <33.221844, 34.828712, 41.506161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866879, 34.887424, 41.680954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460777, -0.310260, -0.831519,
		0.013523, -0.939251, 0.342964,
		-0.887413, 0.146785, 0.436981,
		32.600655, 34.931461, 41.812050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862404, 34.211315, 41.422287>,  <33.221844, 34.828712, 41.506161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862404, 34.211315, 41.422287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571251, 34.478580, 41.483929>,  <32.396557, 34.638939, 41.520912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571251, 34.478580, 41.483929>,  <32.862404, 34.211315, 41.422287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571251, 34.478580, 41.483929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494134, -0.355300, -0.793470,
		-0.475412, -0.653701, 0.588777,
		-0.727884, 0.668160, 0.154102,
		32.352886, 34.679028, 41.530159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212132, 33.742367, 41.226059>,  <32.862404, 34.211315, 41.422287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212132, 33.742367, 41.226059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073933, 34.116928, 41.250633>,  <31.991013, 34.341667, 41.265377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073933, 34.116928, 41.250633>,  <32.212132, 33.742367, 41.226059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073933, 34.116928, 41.250633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677001, -0.203384, -0.707322,
		-0.649845, -0.285971, 0.704217,
		-0.345500, 0.936405, 0.061435,
		31.970284, 34.397850, 41.269062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532671, 33.666252, 41.362015>,  <32.212132, 33.742367, 41.226059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532671, 33.666252, 41.362015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532461, 34.036591, 41.210854>,  <31.532335, 34.258793, 41.120155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532461, 34.036591, 41.210854>,  <31.532671, 33.666252, 41.362015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532461, 34.036591, 41.210854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661212, -0.283827, -0.694435,
		-0.750198, 0.249510, 0.612329,
		-0.000527, 0.925844, -0.377906,
		31.532303, 34.314342, 41.097481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862698, 33.879848, 41.331566>,  <31.532671, 33.666252, 41.362015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862698, 33.879848, 41.331566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067984, 34.070808, 41.046272>,  <31.191154, 34.185383, 40.875095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067984, 34.070808, 41.046272>,  <30.862698, 33.879848, 41.331566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067984, 34.070808, 41.046272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680781, -0.279611, -0.677019,
		-0.522637, 0.833010, 0.181505,
		0.513213, 0.477401, -0.713233,
		31.221947, 34.214027, 40.832302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369228, 34.215427, 40.944134>,  <30.862698, 33.879848, 41.331566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369228, 34.215427, 40.944134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688753, 34.194904, 40.704376>,  <30.880468, 34.182590, 40.560524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688753, 34.194904, 40.704376>,  <30.369228, 34.215427, 40.944134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688753, 34.194904, 40.704376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599535, -0.150020, -0.786163,
		-0.049587, 0.987351, -0.150596,
		0.798811, -0.051304, -0.599391,
		30.928396, 34.179512, 40.524559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156078, 34.520832, 40.322197>,  <30.369228, 34.215427, 40.944134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156078, 34.520832, 40.322197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474102, 34.298367, 40.225399>,  <30.664917, 34.164886, 40.167320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474102, 34.298367, 40.225399>,  <30.156078, 34.520832, 40.322197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474102, 34.298367, 40.225399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439100, -0.252549, -0.862213,
		0.418417, 0.791770, -0.445003,
		0.795059, -0.556165, -0.241995,
		30.712620, 34.131516, 40.152802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267696, 34.659035, 39.583645>,  <30.156078, 34.520832, 40.322197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267696, 34.659035, 39.583645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495409, 34.335712, 39.643730>,  <30.632036, 34.141720, 39.679779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495409, 34.335712, 39.643730>,  <30.267696, 34.659035, 39.583645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495409, 34.335712, 39.643730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127229, -0.267119, -0.955228,
		0.812239, 0.524681, -0.254905,
		0.569280, -0.808305, 0.150210,
		30.666193, 34.093220, 39.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824928, 34.633732, 39.017483>,  <30.267696, 34.659035, 39.583645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824928, 34.633732, 39.017483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746395, 34.262463, 39.143944>,  <30.699276, 34.039703, 39.219822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746395, 34.262463, 39.143944>,  <30.824928, 34.633732, 39.017483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746395, 34.262463, 39.143944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163784, -0.286860, -0.943868,
		0.966762, -0.237092, -0.095700,
		-0.196331, -0.928170, 0.316157,
		30.687496, 33.984013, 39.238792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185749, 34.219219, 38.604843>,  <30.824928, 34.633732, 39.017483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185749, 34.219219, 38.604843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887333, 33.995731, 38.749760>,  <30.708282, 33.861637, 38.836708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887333, 33.995731, 38.749760>,  <31.185749, 34.219219, 38.604843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887333, 33.995731, 38.749760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165740, -0.371139, -0.913666,
		0.644946, -0.741677, 0.184282,
		-0.746040, -0.558722, 0.362291,
		30.663521, 33.828114, 38.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267418, 33.601089, 38.322308>,  <31.185749, 34.219219, 38.604843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267418, 33.601089, 38.322308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889223, 33.566338, 38.447853>,  <30.662306, 33.545486, 38.523178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889223, 33.566338, 38.447853>,  <31.267418, 33.601089, 38.322308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889223, 33.566338, 38.447853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261841, -0.370250, -0.891265,
		0.193636, -0.924861, 0.327319,
		-0.945487, -0.086876, 0.313860,
		30.605577, 33.540276, 38.542011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066883, 32.901524, 38.212322>,  <31.267418, 33.601089, 38.322308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066883, 32.901524, 38.212322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730377, 33.115311, 38.244854>,  <30.528473, 33.243584, 38.264374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730377, 33.115311, 38.244854>,  <31.066883, 32.901524, 38.212322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730377, 33.115311, 38.244854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467251, -0.643151, -0.606657,
		-0.271933, -0.548360, 0.790793,
		-0.841266, 0.534469, 0.081328,
		30.477997, 33.275650, 38.269253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561337, 32.679775, 38.638542>,  <31.066883, 32.901524, 38.212322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561337, 32.679775, 38.638542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917297, 32.851067, 38.575691>,  <32.130875, 32.953842, 38.537979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917297, 32.851067, 38.575691>,  <31.561337, 32.679775, 38.638542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917297, 32.851067, 38.575691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090409, 0.172052, 0.980930,
		0.447101, -0.887139, 0.114393,
		0.889903, 0.428233, -0.157130,
		32.184269, 32.979538, 38.528553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003475, 32.376057, 39.035690>,  <31.561337, 32.679775, 38.638542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003475, 32.376057, 39.035690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180016, 32.730152, 38.976959>,  <32.285938, 32.942612, 38.941719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180016, 32.730152, 38.976959>,  <32.003475, 32.376057, 39.035690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180016, 32.730152, 38.976959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284621, 0.017076, 0.958488,
		0.851000, -0.464820, -0.244421,
		0.441351, 0.885240, -0.146829,
		32.312420, 32.995724, 38.932911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738838, 32.058781, 39.239208>,  <32.003475, 32.376057, 39.035690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738838, 32.058781, 39.239208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594688, 32.088364, 39.611156>,  <32.508198, 32.106113, 39.834324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594688, 32.088364, 39.611156>,  <32.738838, 32.058781, 39.239208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594688, 32.088364, 39.611156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107629, 0.986898, -0.120203,
		-0.926578, -0.143399, -0.347693,
		-0.360374, 0.073955, 0.929872,
		32.486576, 32.110550, 39.890118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225121, 31.827320, 39.668266>,  <32.738838, 32.058781, 39.239208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225121, 31.827320, 39.668266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581684, 31.974022, 39.561771>,  <33.795624, 32.062042, 39.497875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581684, 31.974022, 39.561771>,  <33.225121, 31.827320, 39.668266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581684, 31.974022, 39.561771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437145, -0.540855, 0.718596,
		0.119554, -0.756946, -0.642448,
		0.891410, 0.366753, -0.266234,
		33.849106, 32.084049, 39.481903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605156, 31.224035, 39.548683>,  <33.225121, 31.827320, 39.668266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605156, 31.224035, 39.548683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865631, 31.525154, 39.587162>,  <34.021915, 31.705826, 39.610249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865631, 31.525154, 39.587162>,  <33.605156, 31.224035, 39.548683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865631, 31.525154, 39.587162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555744, -0.559327, 0.615062,
		0.516822, -0.347060, -0.782589,
		0.651186, 0.752796, 0.096196,
		34.060986, 31.750994, 39.616020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312515, 30.918798, 39.471325>,  <33.605156, 31.224035, 39.548683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312515, 30.918798, 39.471325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352219, 31.259506, 39.677097>,  <34.376041, 31.463932, 39.800560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352219, 31.259506, 39.677097>,  <34.312515, 30.918798, 39.471325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352219, 31.259506, 39.677097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595516, -0.465024, 0.655067,
		0.797188, 0.241328, -0.553400,
		0.099258, 0.851770, 0.514427,
		34.381996, 31.515038, 39.831425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000858, 30.915592, 39.743473>,  <34.312515, 30.918798, 39.471325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000858, 30.915592, 39.743473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829723, 31.202951, 39.962875>,  <34.727043, 31.375366, 40.094517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829723, 31.202951, 39.962875>,  <35.000858, 30.915592, 39.743473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829723, 31.202951, 39.962875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522027, -0.299011, 0.798799,
		0.737865, 0.628091, -0.247095,
		-0.427835, 0.718397, 0.548510,
		34.701374, 31.418470, 40.127430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520733, 31.222994, 40.038322>,  <35.000858, 30.915592, 39.743473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520733, 31.222994, 40.038322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214798, 31.313881, 40.279449>,  <35.031235, 31.368414, 40.424126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214798, 31.313881, 40.279449>,  <35.520733, 31.222994, 40.038322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214798, 31.313881, 40.279449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549788, -0.257507, 0.794621,
		0.335782, 0.939182, 0.072030,
		-0.764842, 0.227218, 0.602817,
		34.985344, 31.382046, 40.460293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813236, 31.832775, 40.582439>,  <35.520733, 31.222994, 40.038322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813236, 31.832775, 40.582439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489414, 31.625902, 40.693539>,  <35.295120, 31.501778, 40.760197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489414, 31.625902, 40.693539>,  <35.813236, 31.832775, 40.582439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489414, 31.625902, 40.693539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429528, -0.199339, 0.880778,
		-0.400158, 0.832337, 0.383521,
		-0.809555, -0.517183, 0.277745,
		35.246548, 31.470747, 40.776863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510071, 32.135246, 41.229355>,  <35.813236, 31.832775, 40.582439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510071, 32.135246, 41.229355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398613, 31.751198, 41.220142>,  <35.331738, 31.520769, 41.214615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398613, 31.751198, 41.220142>,  <35.510071, 32.135246, 41.229355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398613, 31.751198, 41.220142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038428, -0.035108, 0.998644,
		-0.959625, 0.277384, 0.046678,
		-0.278646, -0.960118, -0.023031,
		35.315018, 31.463163, 41.213234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112057, 32.092468, 41.813641>,  <35.510071, 32.135246, 41.229355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112057, 32.092468, 41.813641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219784, 31.719198, 41.718441>,  <35.284420, 31.495235, 41.661324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219784, 31.719198, 41.718441>,  <35.112057, 32.092468, 41.813641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219784, 31.719198, 41.718441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244577, -0.172750, 0.954117,
		-0.931476, -0.315172, 0.181709,
		0.269321, -0.933179, -0.237996,
		35.300579, 31.439245, 41.647041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774292, 31.639511, 42.262501>,  <35.112057, 32.092468, 41.813641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774292, 31.639511, 42.262501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091320, 31.437786, 42.125381>,  <35.281536, 31.316751, 42.043110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091320, 31.437786, 42.125381>,  <34.774292, 31.639511, 42.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091320, 31.437786, 42.125381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361672, -0.063836, 0.930117,
		-0.490951, -0.861159, 0.131801,
		0.792565, -0.504312, -0.342797,
		35.329090, 31.286493, 42.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893677, 31.178881, 42.793152>,  <34.774292, 31.639511, 42.262501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893677, 31.178881, 42.793152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233002, 31.185986, 42.581470>,  <35.436596, 31.190248, 42.454460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233002, 31.185986, 42.581470>,  <34.893677, 31.178881, 42.793152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233002, 31.185986, 42.581470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528884, 0.019813, 0.848463,
		0.025543, -0.999646, 0.007422,
		0.848310, 0.017747, -0.529203,
		35.487495, 31.191315, 42.422710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306808, 30.726997, 43.069183>,  <34.893677, 31.178881, 42.793152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306808, 30.726997, 43.069183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584969, 30.950323, 42.888203>,  <35.751865, 31.084318, 42.779613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584969, 30.950323, 42.888203>,  <35.306808, 30.726997, 43.069183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584969, 30.950323, 42.888203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574835, -0.054327, 0.816464,
		0.431263, -0.827849, -0.358717,
		0.695397, 0.558314, -0.452448,
		35.793587, 31.117817, 42.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972801, 30.352652, 43.225437>,  <35.306808, 30.726997, 43.069183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972801, 30.352652, 43.225437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078793, 30.717230, 43.099545>,  <36.142387, 30.935976, 43.024010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078793, 30.717230, 43.099545>,  <35.972801, 30.352652, 43.225437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078793, 30.717230, 43.099545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502714, 0.147952, 0.851698,
		0.822840, -0.383900, -0.418992,
		0.264976, 0.911444, -0.314733,
		36.158287, 30.990664, 43.005123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713009, 30.391455, 43.206135>,  <35.972801, 30.352652, 43.225437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713009, 30.391455, 43.206135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530178, 30.742659, 43.262962>,  <36.420479, 30.953381, 43.297058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530178, 30.742659, 43.262962>,  <36.713009, 30.391455, 43.206135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530178, 30.742659, 43.262962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405878, 0.063775, 0.911700,
		0.791420, 0.474376, -0.385514,
		-0.457075, 0.878009, 0.142065,
		36.393055, 31.006062, 43.305580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040928, 30.659044, 43.815254>,  <36.713009, 30.391455, 43.206135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040928, 30.659044, 43.815254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792267, 30.968054, 43.763477>,  <36.643070, 31.153460, 43.732410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792267, 30.968054, 43.763477>,  <37.040928, 30.659044, 43.815254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792267, 30.968054, 43.763477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201703, 0.317560, 0.926537,
		0.756879, 0.549874, -0.353232,
		-0.621651, 0.772525, -0.129443,
		36.605770, 31.199812, 43.724644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409592, 31.323637, 43.920357>,  <37.040928, 30.659044, 43.815254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409592, 31.323637, 43.920357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018322, 31.381462, 43.980057>,  <36.783562, 31.416157, 44.015877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018322, 31.381462, 43.980057>,  <37.409592, 31.323637, 43.920357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018322, 31.381462, 43.980057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193081, 0.366985, 0.909968,
		0.076774, 0.918925, -0.386887,
		-0.978175, 0.144562, 0.149252,
		36.724869, 31.424831, 44.024834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358723, 31.956619, 44.244423>,  <37.409592, 31.323637, 43.920357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358723, 31.956619, 44.244423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006268, 31.793533, 44.340229>,  <36.794796, 31.695683, 44.397713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006268, 31.793533, 44.340229>,  <37.358723, 31.956619, 44.244423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006268, 31.793533, 44.340229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052536, 0.418983, 0.906473,
		-0.469936, 0.811309, -0.347761,
		-0.881136, -0.407714, 0.239518,
		36.741928, 31.671219, 44.412083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927261, 32.511707, 44.527657>,  <37.358723, 31.956619, 44.244423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927261, 32.511707, 44.527657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745583, 32.178551, 44.654144>,  <36.636574, 31.978657, 44.730038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745583, 32.178551, 44.654144>,  <36.927261, 32.511707, 44.527657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745583, 32.178551, 44.654144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100222, 0.400463, 0.910816,
		-0.885246, 0.381997, -0.265363,
		-0.454197, -0.832891, 0.316224,
		36.609325, 31.928684, 44.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263248, 32.702747, 44.756813>,  <36.927261, 32.511707, 44.527657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263248, 32.702747, 44.756813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376652, 32.359661, 44.928368>,  <36.444695, 32.153809, 45.031300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376652, 32.359661, 44.928368>,  <36.263248, 32.702747, 44.756813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376652, 32.359661, 44.928368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007425, 0.445261, 0.895370,
		-0.958940, -0.257032, 0.119868,
		0.283511, -0.857716, 0.428888,
		36.461704, 32.102345, 45.057034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785919, 32.569439, 45.303516>,  <36.263248, 32.702747, 44.756813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785919, 32.569439, 45.303516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106094, 32.347271, 45.393688>,  <36.298199, 32.213970, 45.447792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106094, 32.347271, 45.393688>,  <35.785919, 32.569439, 45.303516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106094, 32.347271, 45.393688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056919, 0.303947, 0.950987,
		-0.596711, -0.774034, 0.211676,
		0.800435, -0.555416, 0.225426,
		36.346226, 32.180645, 45.461315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663319, 32.340714, 45.905415>,  <35.785919, 32.569439, 45.303516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663319, 32.340714, 45.905415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058559, 32.279465, 45.899567>,  <36.295704, 32.242718, 45.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058559, 32.279465, 45.899567>,  <35.663319, 32.340714, 45.905415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058559, 32.279465, 45.899567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061491, 0.306079, 0.950018,
		-0.140989, -0.939612, 0.311852,
		0.988099, -0.153118, -0.014624,
		36.354988, 32.233528, 45.895180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824444, 32.054501, 46.525276>,  <35.663319, 32.340714, 45.905415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824444, 32.054501, 46.525276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189629, 32.161716, 46.402210>,  <36.408737, 32.226048, 46.328369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189629, 32.161716, 46.402210>,  <35.824444, 32.054501, 46.525276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189629, 32.161716, 46.402210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228860, 0.287881, 0.929918,
		0.337834, -0.919388, 0.201478,
		0.912958, 0.268047, -0.307667,
		36.463516, 32.242130, 46.309910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367374, 31.636862, 46.827679>,  <35.824444, 32.054501, 46.525276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367374, 31.636862, 46.827679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564358, 31.975637, 46.747501>,  <36.682549, 32.178902, 46.699394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564358, 31.975637, 46.747501>,  <36.367374, 31.636862, 46.827679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564358, 31.975637, 46.747501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148513, 0.145150, 0.978200,
		0.857569, -0.511494, -0.054301,
		0.492462, 0.846939, -0.200440,
		36.712097, 32.229717, 46.687370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955738, 31.618776, 47.331699>,  <36.367374, 31.636862, 46.827679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955738, 31.618776, 47.331699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937969, 32.002377, 47.219742>,  <36.927307, 32.232536, 47.152569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937969, 32.002377, 47.219742>,  <36.955738, 31.618776, 47.331699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937969, 32.002377, 47.219742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144077, 0.283392, 0.948120,
		0.988569, 0.001796, -0.150760,
		-0.044427, 0.959002, -0.279894,
		36.924641, 32.290077, 47.135773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567745, 31.928623, 47.556244>,  <36.955738, 31.618776, 47.331699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567745, 31.928623, 47.556244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310169, 32.234333, 47.542191>,  <37.155624, 32.417759, 47.533760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310169, 32.234333, 47.542191>,  <37.567745, 31.928623, 47.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310169, 32.234333, 47.542191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218316, 0.227566, 0.948974,
		0.733270, 0.603408, -0.313391,
		-0.643936, 0.764272, -0.035134,
		37.116989, 32.463615, 47.531651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701614, 32.369328, 48.097511>,  <37.567745, 31.928623, 47.556244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701614, 32.369328, 48.097511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376751, 32.567795, 47.974735>,  <37.181835, 32.686874, 47.901070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376751, 32.567795, 47.974735>,  <37.701614, 32.369328, 48.097511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376751, 32.567795, 47.974735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045450, 0.470692, 0.881126,
		0.581667, 0.729562, -0.359725,
		-0.812156, 0.496173, -0.306945,
		37.133102, 32.716648, 47.882652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842831, 33.005081, 48.255028>,  <37.701614, 32.369328, 48.097511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842831, 33.005081, 48.255028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445271, 32.961376, 48.249104>,  <37.206734, 32.935154, 48.245548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445271, 32.961376, 48.249104>,  <37.842831, 33.005081, 48.255028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445271, 32.961376, 48.249104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045623, 0.285255, 0.957365,
		-0.100383, 0.952203, -0.288501,
		-0.993902, -0.109266, -0.014808,
		37.147099, 32.928596, 48.244659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124645, 33.675068, 48.172668>,  <37.842831, 33.005081, 48.255028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124645, 33.675068, 48.172668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523117, 33.706360, 48.188221>,  <38.762199, 33.725136, 48.197552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523117, 33.706360, 48.188221>,  <38.124645, 33.675068, 48.172668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523117, 33.706360, 48.188221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051017, -0.159703, -0.985846,
		-0.070911, 0.984061, -0.163083,
		0.996177, 0.078227, 0.038879,
		38.821972, 33.729828, 48.199886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458344, 34.232033, 47.754490>,  <38.124645, 33.675068, 48.172668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458344, 34.232033, 47.754490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729103, 33.939060, 47.783768>,  <38.891560, 33.763275, 47.801334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729103, 33.939060, 47.783768>,  <38.458344, 34.232033, 47.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729103, 33.939060, 47.783768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113634, 0.005732, -0.993506,
		0.727255, 0.680817, 0.087109,
		0.676895, -0.732431, 0.073195,
		38.932171, 33.719330, 47.805725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884018, 34.431541, 47.209824>,  <38.458344, 34.232033, 47.754490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884018, 34.431541, 47.209824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991253, 34.059910, 47.311756>,  <39.055595, 33.836929, 47.372917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991253, 34.059910, 47.311756>,  <38.884018, 34.431541, 47.209824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991253, 34.059910, 47.311756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396562, -0.134646, -0.908080,
		0.877991, 0.344502, 0.332341,
		0.268087, -0.929080, 0.254834,
		39.071678, 33.781185, 47.388206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552223, 34.302929, 46.947685>,  <38.884018, 34.431541, 47.209824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552223, 34.302929, 46.947685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413479, 33.932114, 47.004658>,  <39.330231, 33.709625, 47.038841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413479, 33.932114, 47.004658>,  <39.552223, 34.302929, 46.947685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413479, 33.932114, 47.004658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198170, -0.220873, -0.954958,
		0.916741, -0.303016, 0.260324,
		-0.346866, -0.927037, 0.142435,
		39.309418, 33.654003, 47.047390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052608, 33.864441, 46.797276>,  <39.552223, 34.302929, 46.947685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052608, 33.864441, 46.797276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721802, 33.644413, 46.750854>,  <39.523315, 33.512398, 46.723003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721802, 33.644413, 46.750854>,  <40.052608, 33.864441, 46.797276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721802, 33.644413, 46.750854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234622, -0.150124, -0.960425,
		0.510874, -0.821517, 0.253213,
		-0.827019, -0.550066, -0.116051,
		39.473698, 33.479393, 46.716038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
