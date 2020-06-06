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
	<24.705671, 35.098785, 34.602043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509697, 35.167645, 34.943878>,  <24.392113, 35.208961, 35.148979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509697, 35.167645, 34.943878>,  <24.705671, 35.098785, 34.602043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509697, 35.167645, 34.943878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838988, 0.359367, 0.408601,
		-0.236773, 0.917181, -0.320496,
		-0.489937, 0.172147, 0.854592,
		24.362717, 35.219288, 35.200256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312256, 35.085186, 34.102715>,  <24.705671, 35.098785, 34.602043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312256, 35.085186, 34.102715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706806, 35.026077, 34.131622>,  <25.943537, 34.990612, 34.148968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706806, 35.026077, 34.131622>,  <25.312256, 35.085186, 34.102715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706806, 35.026077, 34.131622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126143, 0.397536, -0.908875,
		0.105575, 0.905610, 0.410761,
		0.986378, -0.147769, 0.072266,
		26.002720, 34.981747, 34.153301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490728, 34.776382, 33.455811>,  <25.312256, 35.085186, 34.102715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490728, 34.776382, 33.455811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859468, 34.919796, 33.396961>,  <26.080711, 35.005844, 33.361652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859468, 34.919796, 33.396961>,  <25.490728, 34.776382, 33.455811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859468, 34.919796, 33.396961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313717, -0.913254, -0.259901,
		-0.227543, 0.193435, -0.954362,
		0.921849, 0.358538, -0.147120,
		26.136023, 35.027359, 33.352825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779911, 34.493835, 32.801785>,  <25.490728, 34.776382, 33.455811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779911, 34.493835, 32.801785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070744, 34.611969, 33.049698>,  <26.245243, 34.682850, 33.198444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070744, 34.611969, 33.049698>,  <25.779911, 34.493835, 32.801785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070744, 34.611969, 33.049698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336904, -0.940062, 0.052717,
		0.598204, 0.170478, -0.783000,
		0.727082, 0.295332, 0.619784,
		26.288868, 34.700569, 33.235634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561243, 34.500381, 32.576767>,  <25.779911, 34.493835, 32.801785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561243, 34.500381, 32.576767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544926, 34.440315, 32.971893>,  <26.535135, 34.404274, 33.208969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544926, 34.440315, 32.971893>,  <26.561243, 34.500381, 32.576767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544926, 34.440315, 32.971893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446888, -0.886987, -0.116385,
		0.893660, 0.436696, 0.103289,
		-0.040791, -0.150167, 0.987819,
		26.532688, 34.395264, 33.268238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216503, 34.162369, 32.636086>,  <26.561243, 34.500381, 32.576767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216503, 34.162369, 32.636086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960972, 34.081558, 32.933025>,  <26.807653, 34.033073, 33.111191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960972, 34.081558, 32.933025>,  <27.216503, 34.162369, 32.636086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960972, 34.081558, 32.933025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297738, -0.954641, -0.003584,
		0.709402, 0.218736, 0.670003,
		-0.638828, -0.202028, 0.742350,
		26.769323, 34.020950, 33.155731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901329, 33.803333, 32.848087>,  <27.216503, 34.162369, 32.636086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901329, 33.803333, 32.848087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616421, 33.595547, 33.036903>,  <27.445475, 33.470875, 33.150192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616421, 33.595547, 33.036903>,  <27.901329, 33.803333, 32.848087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616421, 33.595547, 33.036903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642341, -0.211302, 0.736716,
		-0.282959, 0.827951, 0.484181,
		-0.712273, -0.519470, 0.472037,
		27.402739, 33.439705, 33.178513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472437, 34.042610, 33.578331>,  <27.901329, 33.803333, 32.848087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472437, 34.042610, 33.578331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573505, 33.662304, 33.506550>,  <27.634146, 33.434120, 33.463482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573505, 33.662304, 33.506550>,  <27.472437, 34.042610, 33.578331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573505, 33.662304, 33.506550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641856, 0.025926, 0.766387,
		-0.724001, -0.308826, 0.616805,
		0.252672, -0.950765, -0.179451,
		27.649307, 33.377075, 33.452713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719051, 33.868420, 34.235985>,  <27.472437, 34.042610, 33.578331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719051, 33.868420, 34.235985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843456, 33.594975, 33.971882>,  <27.918100, 33.430908, 33.813419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843456, 33.594975, 33.971882>,  <27.719051, 33.868420, 34.235985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843456, 33.594975, 33.971882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868437, -0.077823, 0.489653,
		-0.386117, -0.725682, 0.569473,
		0.311014, -0.683615, -0.660258,
		27.936760, 33.389889, 33.773804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981649, 33.148914, 34.611191>,  <27.719051, 33.868420, 34.235985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981649, 33.148914, 34.611191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146917, 33.276997, 34.270191>,  <28.246078, 33.353848, 34.065590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146917, 33.276997, 34.270191>,  <27.981649, 33.148914, 34.611191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146917, 33.276997, 34.270191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851097, 0.197209, 0.486563,
		0.323922, -0.926594, -0.191047,
		0.413170, 0.320208, -0.852501,
		28.270868, 33.373058, 34.014442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629532, 32.764332, 34.496059>,  <27.981649, 33.148914, 34.611191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629532, 32.764332, 34.496059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633297, 33.115681, 34.304909>,  <28.635555, 33.326492, 34.190216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633297, 33.115681, 34.304909>,  <28.629532, 32.764332, 34.496059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633297, 33.115681, 34.304909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818307, 0.267898, 0.508532,
		0.574705, -0.395837, -0.716259,
		0.009411, 0.878376, -0.477878,
		28.636120, 33.379192, 34.161545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240215, 32.959858, 33.980034>,  <28.629532, 32.764332, 34.496059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240215, 32.959858, 33.980034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071733, 33.286495, 34.137905>,  <28.970644, 33.482475, 34.232628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071733, 33.286495, 34.137905>,  <29.240215, 32.959858, 33.980034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071733, 33.286495, 34.137905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776584, 0.099922, 0.622039,
		0.468514, 0.568504, -0.676238,
		-0.421203, 0.816590, 0.394676,
		28.945372, 33.531471, 34.256310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750856, 33.467995, 33.828197>,  <29.240215, 32.959858, 33.980034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750856, 33.467995, 33.828197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506620, 33.518730, 34.140888>,  <29.360079, 33.549171, 34.328503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506620, 33.518730, 34.140888>,  <29.750856, 33.467995, 33.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506620, 33.518730, 34.140888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791801, 0.078727, 0.605684,
		0.015282, 0.988794, -0.148502,
		-0.610588, 0.126840, 0.781725,
		29.323444, 33.556782, 34.375404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050289, 34.036884, 34.229622>,  <29.750856, 33.467995, 33.828197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050289, 34.036884, 34.229622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829386, 33.810719, 34.474674>,  <29.696844, 33.675018, 34.621708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829386, 33.810719, 34.474674>,  <30.050289, 34.036884, 34.229622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829386, 33.810719, 34.474674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636376, 0.188807, 0.747915,
		-0.538550, 0.802907, 0.255545,
		-0.552258, -0.565413, 0.612634,
		29.663708, 33.641094, 34.658463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694933, 34.320496, 34.610699>,  <30.050289, 34.036884, 34.229622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694933, 34.320496, 34.610699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697361, 34.236118, 35.001690>,  <30.698818, 34.185490, 35.236286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697361, 34.236118, 35.001690>,  <30.694933, 34.320496, 34.610699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697361, 34.236118, 35.001690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958814, -0.278814, -0.054216,
		0.283972, -0.936891, -0.203950,
		0.006069, -0.210946, 0.977479,
		30.699183, 34.172836, 35.294933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587915, 33.611187, 34.711903>,  <30.694933, 34.320496, 34.610699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587915, 33.611187, 34.711903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457731, 33.794125, 35.042942>,  <30.379622, 33.903885, 35.241566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457731, 33.794125, 35.042942>,  <30.587915, 33.611187, 34.711903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457731, 33.794125, 35.042942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915737, -0.370522, -0.155367,
		0.235587, -0.808426, 0.539394,
		-0.325460, 0.457340, 0.827596,
		30.360094, 33.931328, 35.291222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132618, 33.206734, 35.221954>,  <30.587915, 33.611187, 34.711903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132618, 33.206734, 35.221954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045067, 33.587639, 35.307079>,  <29.992537, 33.816181, 35.358154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045067, 33.587639, 35.307079>,  <30.132618, 33.206734, 35.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045067, 33.587639, 35.307079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966421, -0.181472, -0.181932,
		-0.134627, -0.245488, 0.960006,
		-0.218876, 0.952262, 0.212813,
		29.979404, 33.873318, 35.370922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625196, 33.139820, 35.748306>,  <30.132618, 33.206734, 35.221954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625196, 33.139820, 35.748306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627831, 33.470615, 35.523434>,  <29.629412, 33.669090, 35.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627831, 33.470615, 35.523434>,  <29.625196, 33.139820, 35.748306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627831, 33.470615, 35.523434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868767, -0.273661, -0.412739,
		-0.495177, 0.491124, 0.716656,
		0.006585, 0.826986, -0.562183,
		29.629807, 33.718712, 35.354778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947304, 33.484596, 35.821568>,  <29.625196, 33.139820, 35.748306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947304, 33.484596, 35.821568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105530, 33.550915, 35.460228>,  <29.200466, 33.590706, 35.243423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105530, 33.550915, 35.460228>,  <28.947304, 33.484596, 35.821568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105530, 33.550915, 35.460228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836864, -0.340168, -0.428887,
		-0.378399, 0.925633, 0.004190,
		0.395567, 0.165797, -0.903348,
		29.224199, 33.600655, 35.189224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508797, 33.798168, 35.386829>,  <28.947304, 33.484596, 35.821568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508797, 33.798168, 35.386829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760122, 33.730145, 35.083172>,  <28.910917, 33.689331, 34.900978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760122, 33.730145, 35.083172>,  <28.508797, 33.798168, 35.386829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760122, 33.730145, 35.083172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773048, -0.026983, -0.633773,
		0.087293, 0.985065, -0.148416,
		0.628312, -0.170057, -0.759147,
		28.948616, 33.679127, 34.855427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099129, 34.321457, 35.183502>,  <28.508797, 33.798168, 35.386829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099129, 34.321457, 35.183502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053665, 34.249748, 35.574387>,  <29.026388, 34.206722, 35.808918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053665, 34.249748, 35.574387>,  <29.099129, 34.321457, 35.183502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053665, 34.249748, 35.574387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993343, -0.001937, 0.115178,
		-0.018756, 0.983798, 0.178300,
		-0.113657, -0.179273, 0.977212,
		29.019567, 34.195965, 35.867550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511705, 34.846729, 35.511303>,  <29.099129, 34.321457, 35.183502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511705, 34.846729, 35.511303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454817, 34.488350, 35.679611>,  <29.420683, 34.273323, 35.780598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454817, 34.488350, 35.679611>,  <29.511705, 34.846729, 35.511303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454817, 34.488350, 35.679611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988383, -0.151562, 0.011355,
		0.053599, 0.417497, 0.907096,
		-0.142222, -0.895949, 0.420770,
		29.412149, 34.219566, 35.805843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015932, 35.005772, 35.938396>,  <29.511705, 34.846729, 35.511303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015932, 35.005772, 35.938396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962267, 34.618874, 35.852203>,  <29.930069, 34.386734, 35.800488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962267, 34.618874, 35.852203>,  <30.015932, 35.005772, 35.938396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962267, 34.618874, 35.852203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988151, -0.146940, 0.044343,
		-0.074554, -0.206983, 0.975500,
		-0.134162, -0.967247, -0.215485,
		29.922018, 34.328701, 35.787560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225573, 34.481911, 36.485565>,  <30.015932, 35.005772, 35.938396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225573, 34.481911, 36.485565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257568, 34.323483, 36.119675>,  <30.276766, 34.228424, 35.900139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257568, 34.323483, 36.119675>,  <30.225573, 34.481911, 36.485565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257568, 34.323483, 36.119675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994370, -0.032274, 0.100930,
		-0.069498, -0.917652, 0.391259,
		0.079991, -0.396071, -0.914729,
		30.281565, 34.204662, 35.845257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645805, 33.970203, 36.557369>,  <30.225573, 34.481911, 36.485565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645805, 33.970203, 36.557369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671406, 34.060173, 36.168461>,  <30.686766, 34.114155, 35.935116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671406, 34.060173, 36.168461>,  <30.645805, 33.970203, 36.557369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671406, 34.060173, 36.168461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994123, -0.099616, 0.042394,
		-0.087319, -0.969270, -0.229982,
		0.064001, 0.224929, -0.972271,
		30.690605, 34.127651, 35.876778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128557, 33.455292, 36.241871>,  <30.645805, 33.970203, 36.557369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128557, 33.455292, 36.241871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093626, 33.791664, 36.028252>,  <31.072668, 33.993488, 35.900082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093626, 33.791664, 36.028252>,  <31.128557, 33.455292, 36.241871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093626, 33.791664, 36.028252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995430, 0.052870, -0.079521,
		-0.038637, -0.538551, -0.841707,
		-0.087328, 0.840932, -0.534047,
		31.067429, 34.043945, 35.868038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450596, 33.363026, 35.608807>,  <31.128557, 33.455292, 36.241871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450596, 33.363026, 35.608807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446127, 33.756084, 35.682865>,  <31.443445, 33.991920, 35.727299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446127, 33.756084, 35.682865>,  <31.450596, 33.363026, 35.608807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446127, 33.756084, 35.682865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988025, 0.039341, -0.149192,
		-0.153887, 0.181260, -0.971321,
		-0.011171, 0.982648, 0.185143,
		31.442776, 34.050880, 35.738407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758274, 33.553398, 35.017574>,  <31.450596, 33.363026, 35.608807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758274, 33.553398, 35.017574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801876, 33.785976, 35.340073>,  <31.828037, 33.925526, 35.533573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801876, 33.785976, 35.340073>,  <31.758274, 33.553398, 35.017574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801876, 33.785976, 35.340073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993952, -0.052842, -0.096271,
		-0.013373, 0.811864, -0.583693,
		0.109003, 0.581450, 0.806247,
		31.834578, 33.960411, 35.581947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315285, 34.040558, 34.911457>,  <31.758274, 33.553398, 35.017574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315285, 34.040558, 34.911457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246704, 33.956066, 35.296371>,  <32.205555, 33.905373, 35.527321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246704, 33.956066, 35.296371>,  <32.315285, 34.040558, 34.911457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246704, 33.956066, 35.296371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946043, -0.307909, 0.100968,
		0.274967, 0.927671, 0.252624,
		-0.171451, -0.211231, 0.962282,
		32.195271, 33.892696, 35.585056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739304, 34.507084, 35.370117>,  <32.315285, 34.040558, 34.911457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739304, 34.507084, 35.370117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385983, 34.559856, 35.190178>,  <32.173988, 34.591518, 35.082214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385983, 34.559856, 35.190178>,  <32.739304, 34.507084, 35.370117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385983, 34.559856, 35.190178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214354, -0.967061, 0.137278,
		-0.416923, 0.217686, 0.882490,
		-0.883305, 0.131931, -0.449852,
		32.120991, 34.599434, 35.055222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046291, 35.098843, 35.832127>,  <32.739304, 34.507084, 35.370117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046291, 35.098843, 35.832127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392017, 35.196892, 36.007797>,  <33.599453, 35.255722, 36.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392017, 35.196892, 36.007797>,  <33.046291, 35.098843, 35.832127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392017, 35.196892, 36.007797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101881, -0.940425, 0.324377,
		0.492522, -0.235621, -0.837798,
		0.864316, 0.245118, 0.439175,
		33.651314, 35.270428, 36.139549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474850, 34.620033, 35.549355>,  <33.046291, 35.098843, 35.832127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474850, 34.620033, 35.549355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610882, 34.769192, 35.894676>,  <33.692501, 34.858685, 36.101868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610882, 34.769192, 35.894676>,  <33.474850, 34.620033, 35.549355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610882, 34.769192, 35.894676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056413, -0.908280, 0.414543,
		0.938703, -0.189679, -0.287853,
		0.340081, 0.372894, 0.863305,
		33.712906, 34.881062, 36.153667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080803, 34.222725, 35.744076>,  <33.474850, 34.620033, 35.549355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080803, 34.222725, 35.744076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861614, 34.368046, 36.045471>,  <33.730103, 34.455238, 36.226307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861614, 34.368046, 36.045471>,  <34.080803, 34.222725, 35.744076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861614, 34.368046, 36.045471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003278, -0.899821, 0.436247,
		0.836491, 0.241520, 0.491884,
		-0.547970, 0.363305, 0.753484,
		33.697224, 34.477036, 36.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684875, 34.536968, 36.137218>,  <34.080803, 34.222725, 35.744076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684875, 34.536968, 36.137218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059174, 34.399075, 36.107475>,  <35.283752, 34.316338, 36.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059174, 34.399075, 36.107475>,  <34.684875, 34.536968, 36.137218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059174, 34.399075, 36.107475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061001, 0.365895, -0.928655,
		0.347351, 0.864452, 0.363415,
		0.935749, -0.344738, -0.074362,
		35.339897, 34.295654, 36.085167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286358, 34.980801, 35.963760>,  <34.684875, 34.536968, 36.137218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286358, 34.980801, 35.963760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307194, 34.604671, 35.829254>,  <35.319695, 34.378994, 35.748550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307194, 34.604671, 35.829254>,  <35.286358, 34.980801, 35.963760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307194, 34.604671, 35.829254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119822, 0.328402, -0.936907,
		0.991428, 0.089098, -0.095565,
		0.052093, -0.940326, -0.336263,
		35.322823, 34.322575, 35.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611393, 35.012878, 35.402321>,  <35.286358, 34.980801, 35.963760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611393, 35.012878, 35.402321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419716, 34.662285, 35.383785>,  <35.304710, 34.451927, 35.372665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419716, 34.662285, 35.383785>,  <35.611393, 35.012878, 35.402321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419716, 34.662285, 35.383785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354501, 0.241566, -0.903313,
		0.802933, -0.416437, -0.426472,
		-0.479194, -0.876485, -0.046335,
		35.275959, 34.399338, 35.369884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871578, 34.557377, 35.880138>,  <35.611393, 35.012878, 35.402321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871578, 34.557377, 35.880138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083858, 34.256886, 36.037121>,  <36.211227, 34.076591, 36.131310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083858, 34.256886, 36.037121>,  <35.871578, 34.557377, 35.880138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083858, 34.256886, 36.037121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213603, -0.329548, -0.919658,
		0.820202, 0.571893, -0.014428,
		0.530700, -0.751224, 0.392454,
		36.243069, 34.031517, 36.154858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447941, 34.560383, 35.511391>,  <35.871578, 34.557377, 35.880138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447941, 34.560383, 35.511391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399822, 34.190113, 35.654861>,  <36.370953, 33.967949, 35.740944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399822, 34.190113, 35.654861>,  <36.447941, 34.560383, 35.511391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399822, 34.190113, 35.654861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059170, -0.367343, -0.928201,
		0.990973, -0.090435, 0.098962,
		-0.120295, -0.925678, 0.358676,
		36.363735, 33.912411, 35.762463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999943, 34.053139, 35.154522>,  <36.447941, 34.560383, 35.511391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999943, 34.053139, 35.154522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666180, 33.865742, 35.270649>,  <36.465923, 33.753304, 35.340324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666180, 33.865742, 35.270649>,  <36.999943, 34.053139, 35.154522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666180, 33.865742, 35.270649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043814, -0.468692, -0.882274,
		0.549408, -0.748894, 0.370552,
		-0.834405, -0.468493, 0.290315,
		36.415859, 33.725193, 35.357742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051754, 33.373203, 34.995426>,  <36.999943, 34.053139, 35.154522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051754, 33.373203, 34.995426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668282, 33.486340, 34.983173>,  <36.438198, 33.554222, 34.975822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668282, 33.486340, 34.983173>,  <37.051754, 33.373203, 34.995426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668282, 33.486340, 34.983173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102581, -0.444087, -0.890092,
		-0.265354, -0.850170, 0.454750,
		-0.958678, 0.282839, -0.030629,
		36.380676, 33.571190, 34.973984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582382, 33.015488, 34.580124>,  <37.051754, 33.373203, 34.995426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582382, 33.015488, 34.580124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249893, 32.813755, 34.673687>,  <37.050400, 32.692715, 34.729824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249893, 32.813755, 34.673687>,  <37.582382, 33.015488, 34.580124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249893, 32.813755, 34.673687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074300, -0.316195, -0.945780,
		0.550949, -0.803536, 0.225357,
		-0.831225, -0.504332, 0.233910,
		37.000526, 32.662457, 34.743858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291641, 32.841240, 34.296665>,  <37.582382, 33.015488, 34.580124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291641, 32.841240, 34.296665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020824, 33.118790, 34.198559>,  <37.858334, 33.285320, 34.139694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020824, 33.118790, 34.198559>,  <38.291641, 32.841240, 34.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020824, 33.118790, 34.198559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694039, 0.712841, 0.100832,
		0.244801, -0.101957, -0.964198,
		-0.677039, 0.693875, -0.245266,
		37.817711, 33.326954, 34.124977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744080, 33.225071, 33.745110>,  <38.291641, 32.841240, 34.296665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744080, 33.225071, 33.745110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493534, 33.446838, 33.964306>,  <38.343208, 33.579899, 34.095821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493534, 33.446838, 33.964306>,  <38.744080, 33.225071, 33.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493534, 33.446838, 33.964306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704261, 0.703838, 0.092884,
		-0.334198, 0.444106, -0.831313,
		-0.626361, 0.554420, 0.547988,
		38.305626, 33.613163, 34.128704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816235, 33.902615, 33.618221>,  <38.744080, 33.225071, 33.745110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816235, 33.902615, 33.618221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699436, 33.861820, 33.998608>,  <38.629356, 33.837345, 34.226841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699436, 33.861820, 33.998608>,  <38.816235, 33.902615, 33.618221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699436, 33.861820, 33.998608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751891, 0.590033, 0.294144,
		-0.591100, 0.800912, -0.095605,
		-0.291993, -0.101984, 0.950967,
		38.611839, 33.831226, 34.283897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449341, 34.541668, 33.820343>,  <38.816235, 33.902615, 33.618221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449341, 34.541668, 33.820343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659210, 34.326557, 34.084316>,  <38.785133, 34.197491, 34.242699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659210, 34.326557, 34.084316>,  <38.449341, 34.541668, 33.820343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659210, 34.326557, 34.084316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668426, 0.740300, 0.071846,
		-0.527184, 0.403419, 0.747883,
		0.524674, -0.537781, 0.659931,
		38.816612, 34.165222, 34.282295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644470, 34.884106, 34.434013>,  <38.449341, 34.541668, 33.820343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644470, 34.884106, 34.434013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936150, 34.623627, 34.349911>,  <39.111156, 34.467339, 34.299450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936150, 34.623627, 34.349911>,  <38.644470, 34.884106, 34.434013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936150, 34.623627, 34.349911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640043, 0.757753, -0.127103,
		0.242090, -0.041889, 0.969349,
		0.729203, -0.651196, -0.210255,
		39.154911, 34.428268, 34.286835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299618, 35.016785, 34.874752>,  <38.644470, 34.884106, 34.434013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299618, 35.016785, 34.874752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341911, 34.886097, 34.499077>,  <39.367287, 34.807686, 34.273670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341911, 34.886097, 34.499077>,  <39.299618, 35.016785, 34.874752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341911, 34.886097, 34.499077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761352, 0.634152, -0.134888,
		0.639658, -0.700790, 0.315802,
		0.105738, -0.326719, -0.939188,
		39.373634, 34.788082, 34.217319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982807, 34.740929, 34.822453>,  <39.299618, 35.016785, 34.874752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982807, 34.740929, 34.822453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789898, 34.935528, 34.531044>,  <39.674152, 35.052288, 34.356201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789898, 34.935528, 34.531044>,  <39.982807, 34.740929, 34.822453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789898, 34.935528, 34.531044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785737, 0.607930, -0.114186,
		0.387336, -0.627491, -0.675444,
		-0.482274, 0.486493, -0.728517,
		39.645214, 35.081474, 34.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460098, 34.251652, 34.934322>,  <39.982807, 34.740929, 34.822453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460098, 34.251652, 34.934322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689926, 34.159939, 35.248596>,  <40.827824, 34.104912, 35.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689926, 34.159939, 35.248596>,  <40.460098, 34.251652, 34.934322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689926, 34.159939, 35.248596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234762, -0.873455, -0.426572,
		0.784064, 0.429544, -0.448034,
		0.574569, -0.229278, 0.785685,
		40.862297, 34.091156, 35.484303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155125, 33.927696, 34.761681>,  <40.460098, 34.251652, 34.934322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155125, 33.927696, 34.761681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050068, 33.767616, 35.112873>,  <40.987034, 33.671570, 35.323589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050068, 33.767616, 35.112873>,  <41.155125, 33.927696, 34.761681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050068, 33.767616, 35.112873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013658, -0.911381, -0.411337,
		0.964797, -0.096043, 0.244832,
		-0.262642, -0.400201, 0.877986,
		40.971275, 33.647556, 35.376270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489552, 33.293118, 34.708466>,  <41.155125, 33.927696, 34.761681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489552, 33.293118, 34.708466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323460, 33.234467, 35.067596>,  <41.223804, 33.199276, 35.283073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323460, 33.234467, 35.067596>,  <41.489552, 33.293118, 34.708466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323460, 33.234467, 35.067596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128911, -0.986450, -0.101483,
		0.900538, 0.073601, 0.428503,
		-0.415228, -0.146628, 0.897823,
		41.198891, 33.190479, 35.336945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889545, 32.757244, 35.139214>,  <41.489552, 33.293118, 34.708466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889545, 32.757244, 35.139214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501377, 32.730885, 35.232109>,  <41.268475, 32.715069, 35.287846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501377, 32.730885, 35.232109>,  <41.889545, 32.757244, 35.139214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501377, 32.730885, 35.232109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047209, -0.995251, -0.085124,
		0.236743, -0.071642, 0.968927,
		-0.970424, -0.065894, 0.232237,
		41.210251, 32.711117, 35.301781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836197, 32.340496, 35.751728>,  <41.889545, 32.757244, 35.139214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836197, 32.340496, 35.751728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484215, 32.276817, 35.572693>,  <41.273026, 32.238609, 35.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484215, 32.276817, 35.572693>,  <41.836197, 32.340496, 35.751728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484215, 32.276817, 35.572693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104199, -0.983914, 0.145104,
		-0.463485, 0.081048, 0.882390,
		-0.879957, -0.159198, -0.447585,
		41.220226, 32.229057, 35.438419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545300, 31.909372, 36.111755>,  <41.836197, 32.340496, 35.751728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545300, 31.909372, 36.111755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372429, 31.854328, 35.755264>,  <41.268707, 31.821302, 35.541370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372429, 31.854328, 35.755264>,  <41.545300, 31.909372, 36.111755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372429, 31.854328, 35.755264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135410, -0.986986, 0.086731,
		-0.891562, -0.083197, 0.445191,
		-0.432181, -0.137610, -0.891225,
		41.242775, 31.813046, 35.487896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127583, 31.290718, 36.187733>,  <41.545300, 31.909372, 36.111755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127583, 31.290718, 36.187733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152370, 31.337416, 35.791241>,  <41.167244, 31.365435, 35.553345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152370, 31.337416, 35.791241>,  <41.127583, 31.290718, 36.187733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152370, 31.337416, 35.791241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086894, -0.988734, -0.121882,
		-0.994288, 0.093685, -0.051128,
		0.061971, 0.116743, -0.991227,
		41.170963, 31.372438, 35.493874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561344, 30.958889, 35.863541>,  <41.127583, 31.290718, 36.187733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561344, 30.958889, 35.863541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858799, 30.970575, 35.596363>,  <41.037270, 30.977587, 35.436054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858799, 30.970575, 35.596363>,  <40.561344, 30.958889, 35.863541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858799, 30.970575, 35.596363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077375, -0.996093, 0.042571,
		-0.664095, -0.083340, -0.742989,
		0.743634, 0.029218, -0.667948,
		41.081890, 30.979342, 35.395977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480682, 30.344759, 35.326195>,  <40.561344, 30.958889, 35.863541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480682, 30.344759, 35.326195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858158, 30.472969, 35.293407>,  <41.084644, 30.549894, 35.273735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858158, 30.472969, 35.293407>,  <40.480682, 30.344759, 35.326195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858158, 30.472969, 35.293407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328000, -0.938813, 0.105103,
		-0.043267, -0.126070, -0.991077,
		0.943687, 0.320526, -0.081970,
		41.141266, 30.569126, 35.268818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760567, 29.865047, 34.947674>,  <40.480682, 30.344759, 35.326195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760567, 29.865047, 34.947674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069996, 30.031658, 35.138710>,  <41.255653, 30.131624, 35.253330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069996, 30.031658, 35.138710>,  <40.760567, 29.865047, 34.947674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069996, 30.031658, 35.138710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446688, -0.892980, 0.055291,
		0.449506, 0.170561, -0.876843,
		0.773572, 0.416529, 0.477587,
		41.302067, 30.156616, 35.281986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242466, 29.642414, 34.468468>,  <40.760567, 29.865047, 34.947674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242466, 29.642414, 34.468468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413239, 29.703356, 34.825012>,  <41.515701, 29.739922, 35.038937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413239, 29.703356, 34.825012>,  <41.242466, 29.642414, 34.468468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413239, 29.703356, 34.825012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613815, -0.772664, -0.161929,
		0.664050, 0.616261, -0.423391,
		0.426930, 0.152355, 0.891358,
		41.541317, 29.749062, 35.092419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993572, 29.469397, 34.384586>,  <41.242466, 29.642414, 34.468468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993572, 29.469397, 34.384586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974842, 29.469238, 34.784149>,  <41.963604, 29.469143, 35.023888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974842, 29.469238, 34.784149>,  <41.993572, 29.469397, 34.384586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974842, 29.469238, 34.784149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579022, -0.814870, 0.026820,
		0.813966, 0.579643, 0.038384,
		-0.046824, -0.000395, 0.998903,
		41.960796, 29.469120, 35.083820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646908, 29.456066, 34.565781>,  <41.993572, 29.469397, 34.384586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646908, 29.456066, 34.565781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422585, 29.291792, 34.853344>,  <42.287991, 29.193228, 35.025883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422585, 29.291792, 34.853344>,  <42.646908, 29.456066, 34.565781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422585, 29.291792, 34.853344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483304, -0.867396, -0.118492,
		0.672243, 0.281001, 0.684929,
		-0.560808, -0.410685, 0.718910,
		42.254341, 29.168587, 35.069016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960751, 28.652214, 34.706810>,  <42.646908, 29.456066, 34.565781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960751, 28.652214, 34.706810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656200, 28.830099, 34.518112>,  <42.473473, 28.936831, 34.404892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656200, 28.830099, 34.518112>,  <42.960751, 28.652214, 34.706810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656200, 28.830099, 34.518112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150293, -0.586755, -0.795695,
		-0.630657, -0.676718, 0.379901,
		-0.761370, 0.444714, -0.471747,
		42.427788, 28.963512, 34.376587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009880, 28.298117, 34.135571>,  <42.960751, 28.652214, 34.706810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009880, 28.298117, 34.135571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677258, 28.510933, 34.071766>,  <42.477684, 28.638622, 34.033482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677258, 28.510933, 34.071766>,  <43.009880, 28.298117, 34.135571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677258, 28.510933, 34.071766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027620, -0.326434, -0.944816,
		-0.554752, -0.781263, 0.286144,
		-0.831557, 0.532042, -0.159512,
		42.427792, 28.670546, 34.023914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684135, 27.912212, 33.728951>,  <43.009880, 28.298117, 34.135571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684135, 27.912212, 33.728951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519501, 28.273973, 33.683960>,  <42.420719, 28.491030, 33.656963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519501, 28.273973, 33.683960>,  <42.684135, 27.912212, 33.728951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519501, 28.273973, 33.683960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082571, -0.159917, -0.983671,
		-0.907621, -0.395582, 0.140497,
		-0.411590, 0.904401, -0.112481,
		42.396023, 28.545294, 33.650215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941757, 28.022202, 33.454224>,  <42.684135, 27.912212, 33.728951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941757, 28.022202, 33.454224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218624, 28.293253, 33.354851>,  <42.384747, 28.455883, 33.295227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218624, 28.293253, 33.354851>,  <41.941757, 28.022202, 33.454224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218624, 28.293253, 33.354851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095407, -0.255294, -0.962145,
		-0.715399, 0.689672, -0.112057,
		0.692171, 0.677627, -0.248437,
		42.426277, 28.496540, 33.280319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607483, 28.612295, 32.976353>,  <41.941757, 28.022202, 33.454224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607483, 28.612295, 32.976353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982773, 28.508347, 32.884964>,  <42.207947, 28.445976, 32.830132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982773, 28.508347, 32.884964>,  <41.607483, 28.612295, 32.976353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982773, 28.508347, 32.884964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307699, -0.324526, -0.894430,
		0.158293, 0.909477, -0.384441,
		0.938224, -0.259874, -0.228475,
		42.264240, 28.430384, 32.816422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403141, 28.009954, 32.552734>,  <41.607483, 28.612295, 32.976353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403141, 28.009954, 32.552734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123943, 28.287365, 32.481373>,  <40.956425, 28.453812, 32.438557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123943, 28.287365, 32.481373>,  <41.403141, 28.009954, 32.552734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123943, 28.287365, 32.481373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155047, -0.389578, -0.907849,
		-0.699119, -0.606010, 0.379452,
		-0.697992, 0.693528, -0.178402,
		40.914547, 28.495422, 32.427853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939960, 27.564058, 32.281017>,  <41.403141, 28.009954, 32.552734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939960, 27.564058, 32.281017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859737, 27.930939, 32.143314>,  <40.811604, 28.151068, 32.060692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859737, 27.930939, 32.143314>,  <40.939960, 27.564058, 32.281017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859737, 27.930939, 32.143314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169312, -0.378562, -0.909958,
		-0.964940, -0.124214, 0.231218,
		-0.200560, 0.917203, -0.344259,
		40.799568, 28.206100, 32.040035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323135, 27.426237, 31.865606>,  <40.939960, 27.564058, 32.281017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323135, 27.426237, 31.865606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485687, 27.770311, 31.742361>,  <40.583218, 27.976755, 31.668413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485687, 27.770311, 31.742361>,  <40.323135, 27.426237, 31.865606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485687, 27.770311, 31.742361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123912, -0.282214, -0.951316,
		-0.905261, 0.424778, -0.008099,
		0.406383, 0.860186, -0.308112,
		40.607601, 28.028366, 31.649927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856869, 27.766882, 31.365412>,  <40.323135, 27.426237, 31.865606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856869, 27.766882, 31.365412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201656, 27.954821, 31.289244>,  <40.408527, 28.067585, 31.243544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201656, 27.954821, 31.289244>,  <39.856869, 27.766882, 31.365412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201656, 27.954821, 31.289244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179653, -0.068143, -0.981367,
		-0.474069, 0.880113, 0.025673,
		0.861965, 0.469848, -0.190420,
		40.460247, 28.095776, 31.232119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686146, 28.411697, 30.964689>,  <39.856869, 27.766882, 31.365412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686146, 28.411697, 30.964689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053635, 28.275743, 30.884272>,  <40.274128, 28.194170, 30.836021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053635, 28.275743, 30.884272>,  <39.686146, 28.411697, 30.964689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053635, 28.275743, 30.884272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246960, -0.097259, -0.964133,
		0.308143, 0.935424, -0.173293,
		0.918727, -0.339887, -0.201042,
		40.329254, 28.173777, 30.823959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817036, 28.656076, 30.278749>,  <39.686146, 28.411697, 30.964689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817036, 28.656076, 30.278749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117950, 28.397547, 30.329863>,  <40.298500, 28.242428, 30.360531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117950, 28.397547, 30.329863>,  <39.817036, 28.656076, 30.278749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117950, 28.397547, 30.329863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009603, -0.183174, -0.983034,
		0.658767, 0.740749, -0.131592,
		0.752286, -0.646326, 0.127783,
		40.343636, 28.203650, 30.368198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269882, 28.828999, 29.800310>,  <39.817036, 28.656076, 30.278749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269882, 28.828999, 29.800310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338188, 28.440762, 29.868181>,  <40.379169, 28.207819, 29.908903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338188, 28.440762, 29.868181>,  <40.269882, 28.828999, 29.800310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338188, 28.440762, 29.868181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080700, -0.157851, -0.984160,
		0.982002, 0.181749, 0.051372,
		0.170761, -0.970593, 0.169678,
		40.389416, 28.149584, 29.919085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531326, 28.673243, 29.129984>,  <40.269882, 28.828999, 29.800310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531326, 28.673243, 29.129984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478924, 28.316790, 29.303749>,  <40.447483, 28.102917, 29.408009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478924, 28.316790, 29.303749>,  <40.531326, 28.673243, 29.129984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478924, 28.316790, 29.303749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225145, -0.453485, -0.862358,
		0.965477, -0.015170, 0.260045,
		-0.131009, -0.891135, 0.434414,
		40.439621, 28.049450, 29.434072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245289, 28.397715, 28.952938>,  <40.531326, 28.673243, 29.129984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245289, 28.397715, 28.952938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948620, 28.139681, 29.026461>,  <40.770618, 27.984859, 29.070574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948620, 28.139681, 29.026461>,  <41.245289, 28.397715, 28.952938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948620, 28.139681, 29.026461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097138, -0.374432, -0.922153,
		0.663689, -0.666082, 0.340369,
		-0.741674, -0.645085, 0.183805,
		40.726116, 27.946156, 29.081602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505669, 27.781872, 28.706663>,  <41.245289, 28.397715, 28.952938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505669, 27.781872, 28.706663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112926, 27.717001, 28.745968>,  <40.877281, 27.678078, 28.769550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112926, 27.717001, 28.745968>,  <41.505669, 27.781872, 28.706663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112926, 27.717001, 28.745968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046048, -0.298775, -0.953212,
		0.183947, -0.940443, 0.285886,
		-0.981857, -0.162176, 0.098264,
		40.818371, 27.668348, 28.775448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336941, 27.130791, 28.369020>,  <41.505669, 27.781872, 28.706663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336941, 27.130791, 28.369020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971382, 27.292408, 28.384716>,  <40.752048, 27.389378, 28.394133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971382, 27.292408, 28.384716>,  <41.336941, 27.130791, 28.369020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971382, 27.292408, 28.384716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062463, -0.044456, -0.997057,
		-0.401111, -0.913659, 0.065866,
		-0.913897, 0.404044, 0.039239,
		40.697212, 27.413622, 28.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944427, 26.656960, 27.895933>,  <41.336941, 27.130791, 28.369020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944427, 26.656960, 27.895933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786240, 27.018711, 27.960062>,  <40.691326, 27.235762, 27.998539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786240, 27.018711, 27.960062>,  <40.944427, 26.656960, 27.895933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786240, 27.018711, 27.960062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168359, 0.100218, -0.980618,
		-0.902916, -0.414799, 0.112627,
		-0.395472, 0.904378, 0.160323,
		40.667599, 27.290024, 28.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329376, 26.672529, 27.576818>,  <40.944427, 26.656960, 27.895933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329376, 26.672529, 27.576818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383110, 27.068863, 27.571144>,  <40.415348, 27.306664, 27.567739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383110, 27.068863, 27.571144>,  <40.329376, 26.672529, 27.576818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383110, 27.068863, 27.571144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222685, 0.016235, -0.974755,
		-0.965591, 0.134101, 0.222825,
		0.134333, 0.990835, -0.014186,
		40.423409, 27.366114, 27.566889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839695, 26.921736, 27.116184>,  <40.329376, 26.672529, 27.576818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839695, 26.921736, 27.116184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070595, 27.248095, 27.129425>,  <40.209133, 27.443909, 27.137369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070595, 27.248095, 27.129425>,  <39.839695, 26.921736, 27.116184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070595, 27.248095, 27.129425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137296, 0.136941, -0.981018,
		-0.804942, 0.561749, 0.191069,
		0.577251, 0.815896, 0.033103,
		40.243771, 27.492863, 27.139357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427818, 27.432554, 26.823727>,  <39.839695, 26.921736, 27.116184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427818, 27.432554, 26.823727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812359, 27.539701, 26.798248>,  <40.043083, 27.603989, 26.782961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812359, 27.539701, 26.798248>,  <39.427818, 27.432554, 26.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812359, 27.539701, 26.798248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190639, 0.480644, -0.855943,
		-0.198663, 0.835002, 0.513132,
		0.961348, 0.267867, -0.063698,
		40.100761, 27.620062, 26.779139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404694, 28.111126, 26.513855>,  <39.427818, 27.432554, 26.823727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404694, 28.111126, 26.513855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783352, 27.997528, 26.452909>,  <40.010548, 27.929369, 26.416342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783352, 27.997528, 26.452909>,  <39.404694, 28.111126, 26.513855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783352, 27.997528, 26.452909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033458, 0.383614, -0.922887,
		0.320545, 0.878742, 0.353644,
		0.946642, -0.283995, -0.152366,
		40.067345, 27.912329, 26.407200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718998, 28.701281, 26.230583>,  <39.404694, 28.111126, 26.513855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718998, 28.701281, 26.230583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970036, 28.404781, 26.135355>,  <40.120659, 28.226881, 26.078218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970036, 28.404781, 26.135355>,  <39.718998, 28.701281, 26.230583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970036, 28.404781, 26.135355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184197, 0.155735, -0.970473,
		0.756437, 0.652915, -0.038797,
		0.627595, -0.741248, -0.238069,
		40.158314, 28.182407, 26.063934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174622, 28.997869, 25.683651>,  <39.718998, 28.701281, 26.230583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174622, 28.997869, 25.683651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201752, 28.601171, 25.640118>,  <40.218029, 28.363153, 25.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201752, 28.601171, 25.640118>,  <40.174622, 28.997869, 25.683651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201752, 28.601171, 25.640118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033542, 0.106756, -0.993719,
		0.997133, 0.071046, -0.026025,
		0.067821, -0.991744, -0.108833,
		40.222099, 28.303648, 25.607468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510563, 28.929565, 25.169613>,  <40.174622, 28.997869, 25.683651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510563, 28.929565, 25.169613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383354, 28.550467, 25.179743>,  <40.307030, 28.323008, 25.185822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383354, 28.550467, 25.179743>,  <40.510563, 28.929565, 25.169613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383354, 28.550467, 25.179743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329308, 0.085374, -0.940355,
		0.889055, -0.307392, -0.339251,
		-0.318021, -0.947746, 0.025325,
		40.287949, 28.266144, 25.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755974, 28.591276, 24.560877>,  <40.510563, 28.929565, 25.169613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755974, 28.591276, 24.560877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426758, 28.392784, 24.671410>,  <40.229229, 28.273689, 24.737730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426758, 28.392784, 24.671410>,  <40.755974, 28.591276, 24.560877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426758, 28.392784, 24.671410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299992, -0.033332, -0.953359,
		0.482297, -0.867551, -0.121431,
		-0.823040, -0.496230, 0.276334,
		40.179844, 28.243916, 24.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639481, 27.979427, 24.122433>,  <40.755974, 28.591276, 24.560877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639481, 27.979427, 24.122433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282146, 28.082008, 24.270041>,  <40.067745, 28.143557, 24.358604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282146, 28.082008, 24.270041>,  <40.639481, 27.979427, 24.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282146, 28.082008, 24.270041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367223, 0.056708, -0.928403,
		-0.259020, -0.964891, 0.043517,
		-0.893340, 0.256455, 0.369018,
		40.014145, 28.158945, 24.380747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090145, 27.580332, 23.676949>,  <40.639481, 27.979427, 24.122433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090145, 27.580332, 23.676949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902199, 27.878683, 23.865793>,  <39.789433, 28.057693, 23.979099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902199, 27.878683, 23.865793>,  <40.090145, 27.580332, 23.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902199, 27.878683, 23.865793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466730, 0.244041, -0.850063,
		-0.749260, -0.619763, 0.233459,
		-0.469864, 0.745880, 0.472112,
		39.761238, 28.102448, 24.007427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341633, 27.555897, 23.378284>,  <40.090145, 27.580332, 23.676949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341633, 27.555897, 23.378284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370312, 27.918108, 23.545557>,  <39.387520, 28.135435, 23.645920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370312, 27.918108, 23.545557>,  <39.341633, 27.555897, 23.378284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370312, 27.918108, 23.545557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340929, 0.416257, -0.842910,
		-0.937351, -0.082136, 0.338566,
		0.071697, 0.905530, 0.418181,
		39.391819, 28.189768, 23.671011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714615, 27.855215, 23.304113>,  <39.341633, 27.555897, 23.378284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714615, 27.855215, 23.304113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969238, 28.161112, 23.344034>,  <39.122013, 28.344650, 23.367987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969238, 28.161112, 23.344034>,  <38.714615, 27.855215, 23.304113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969238, 28.161112, 23.344034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426138, 0.456626, -0.780961,
		-0.642807, 0.454598, 0.616555,
		0.636558, 0.764744, 0.099801,
		39.160206, 28.390535, 23.373974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275295, 28.418015, 23.447178>,  <38.714615, 27.855215, 23.304113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275295, 28.418015, 23.447178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623760, 28.552525, 23.304075>,  <38.832840, 28.633230, 23.218212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623760, 28.552525, 23.304075>,  <38.275295, 28.418015, 23.447178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623760, 28.552525, 23.304075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489496, 0.537999, -0.686259,
		-0.038298, 0.772966, 0.633291,
		0.871165, 0.336275, -0.357759,
		38.885109, 28.653408, 23.196747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067490, 29.001627, 23.155018>,  <38.275295, 28.418015, 23.447178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067490, 29.001627, 23.155018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434139, 28.972885, 22.997721>,  <38.654129, 28.955641, 22.903343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434139, 28.972885, 22.997721>,  <38.067490, 29.001627, 23.155018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434139, 28.972885, 22.997721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261661, 0.635853, -0.726102,
		0.302217, 0.768458, 0.564036,
		0.916623, -0.071854, -0.393241,
		38.709126, 28.951328, 22.879747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178955, 29.628735, 22.978388>,  <38.067490, 29.001627, 23.155018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178955, 29.628735, 22.978388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446175, 29.430937, 22.755968>,  <38.606506, 29.312258, 22.622517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446175, 29.430937, 22.755968>,  <38.178955, 29.628735, 22.978388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446175, 29.430937, 22.755968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133757, 0.655285, -0.743445,
		0.732001, 0.571030, 0.371617,
		0.668044, -0.494496, -0.556049,
		38.646587, 29.282587, 22.589153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528385, 30.118221, 22.701365>,  <38.178955, 29.628735, 22.978388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528385, 30.118221, 22.701365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603043, 29.801182, 22.469175>,  <38.647839, 29.610958, 22.329863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603043, 29.801182, 22.469175>,  <38.528385, 30.118221, 22.701365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603043, 29.801182, 22.469175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173720, 0.554917, -0.813566,
		0.966946, 0.252689, -0.034118,
		0.186646, -0.792601, -0.580471,
		38.659035, 29.563402, 22.295034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947720, 30.347683, 22.063917>,  <38.528385, 30.118221, 22.701365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947720, 30.347683, 22.063917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808292, 29.994659, 21.937685>,  <38.724636, 29.782845, 21.861946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808292, 29.994659, 21.937685>,  <38.947720, 30.347683, 22.063917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808292, 29.994659, 21.937685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363097, 0.437554, -0.822622,
		0.864096, -0.172152, -0.472971,
		-0.348567, -0.882558, -0.315581,
		38.703724, 29.729893, 21.843010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297321, 30.225477, 21.409998>,  <38.947720, 30.347683, 22.063917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297321, 30.225477, 21.409998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945496, 30.037006, 21.436384>,  <38.734398, 29.923923, 21.452217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945496, 30.037006, 21.436384>,  <39.297321, 30.225477, 21.409998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945496, 30.037006, 21.436384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333101, 0.510857, -0.792508,
		0.339713, -0.719038, -0.606283,
		-0.879567, -0.471179, 0.065967,
		38.681625, 29.895653, 21.456175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281712, 29.715538, 20.787838>,  <39.297321, 30.225477, 21.409998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281712, 29.715538, 20.787838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920246, 29.842310, 20.903046>,  <38.703369, 29.918373, 20.972170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920246, 29.842310, 20.903046>,  <39.281712, 29.715538, 20.787838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920246, 29.842310, 20.903046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140076, 0.416815, -0.898133,
		-0.404696, -0.851951, -0.332265,
		-0.903659, 0.316929, 0.288021,
		38.649147, 29.937389, 20.989452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890759, 29.608244, 20.183739>,  <39.281712, 29.715538, 20.787838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890759, 29.608244, 20.183739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705929, 29.873400, 20.419388>,  <38.595032, 30.032494, 20.560778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705929, 29.873400, 20.419388>,  <38.890759, 29.608244, 20.183739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705929, 29.873400, 20.419388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285423, 0.517788, -0.806492,
		-0.839656, -0.540807, -0.050052,
		-0.462073, 0.662890, 0.589122,
		38.567307, 30.072268, 20.596125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348923, 29.778322, 19.831579>,  <38.890759, 29.608244, 20.183739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348923, 29.778322, 19.831579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310944, 30.083138, 20.087793>,  <38.288158, 30.266026, 20.241522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310944, 30.083138, 20.087793>,  <38.348923, 29.778322, 19.831579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310944, 30.083138, 20.087793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076795, 0.635919, -0.767926,
		-0.992516, -0.122101, -0.001857,
		-0.094946, 0.762036, 0.640536,
		38.282459, 30.311749, 20.279955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862072, 30.210590, 19.455133>,  <38.348923, 29.778322, 19.831579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862072, 30.210590, 19.455133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017731, 30.438745, 19.744471>,  <38.111126, 30.575640, 19.918072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017731, 30.438745, 19.744471>,  <37.862072, 30.210590, 19.455133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017731, 30.438745, 19.744471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029671, 0.792589, -0.609033,
		-0.920699, 0.215539, 0.325355,
		0.389143, 0.570390, 0.723341,
		38.134472, 30.609863, 19.961473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400986, 30.764038, 19.495085>,  <37.862072, 30.210590, 19.455133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400986, 30.764038, 19.495085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759800, 30.883698, 19.625216>,  <37.975090, 30.955494, 19.703295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759800, 30.883698, 19.625216>,  <37.400986, 30.764038, 19.495085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759800, 30.883698, 19.625216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017316, 0.759328, -0.650478,
		-0.441619, 0.577869, 0.686324,
		0.897036, 0.299148, 0.325327,
		38.028912, 30.973442, 19.722815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313873, 31.474503, 19.683668>,  <37.400986, 30.764038, 19.495085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313873, 31.474503, 19.683668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702023, 31.404510, 19.617027>,  <37.934914, 31.362514, 19.577042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702023, 31.404510, 19.617027>,  <37.313873, 31.474503, 19.683668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702023, 31.404510, 19.617027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021796, 0.750142, -0.660918,
		0.240626, 0.637706, 0.731731,
		0.970373, -0.174982, -0.166604,
		37.993134, 31.352016, 19.567045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619671, 32.118141, 19.550898>,  <37.313873, 31.474503, 19.683668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619671, 32.118141, 19.550898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849922, 31.845716, 19.369879>,  <37.988075, 31.682261, 19.261267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849922, 31.845716, 19.369879>,  <37.619671, 32.118141, 19.550898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849922, 31.845716, 19.369879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048586, 0.580944, -0.812492,
		0.816264, 0.445709, 0.367501,
		0.575633, -0.681063, -0.452548,
		38.022614, 31.641397, 19.234114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068642, 32.580280, 19.234524>,  <37.619671, 32.118141, 19.550898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068642, 32.580280, 19.234524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116673, 32.216793, 19.074619>,  <38.145489, 31.998699, 18.978678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116673, 32.216793, 19.074619>,  <38.068642, 32.580280, 19.234524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116673, 32.216793, 19.074619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028061, 0.405619, -0.913611,
		0.992368, 0.098482, 0.074203,
		0.120073, -0.908721, -0.399760,
		38.152695, 31.944176, 18.954691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646858, 32.694275, 18.842588>,  <38.068642, 32.580280, 19.234524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646858, 32.694275, 18.842588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431084, 32.381824, 18.716824>,  <38.301620, 32.194355, 18.641365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431084, 32.381824, 18.716824>,  <38.646858, 32.694275, 18.842588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431084, 32.381824, 18.716824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018779, 0.362144, -0.931933,
		0.841819, -0.508620, -0.180684,
		-0.539433, -0.781126, -0.314412,
		38.269253, 32.147488, 18.622499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835457, 32.830437, 18.194899>,  <38.646858, 32.694275, 18.842588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835457, 32.830437, 18.194899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536373, 32.565868, 18.171404>,  <38.356922, 32.407127, 18.157307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536373, 32.565868, 18.171404>,  <38.835457, 32.830437, 18.194899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536373, 32.565868, 18.171404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296650, 0.411866, -0.861606,
		0.594076, -0.626809, -0.504167,
		-0.747712, -0.661421, -0.058737,
		38.312061, 32.367443, 18.153784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842381, 32.485394, 17.461378>,  <38.835457, 32.830437, 18.194899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842381, 32.485394, 17.461378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479515, 32.470722, 17.629047>,  <38.261795, 32.461918, 17.729649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479515, 32.470722, 17.629047>,  <38.842381, 32.485394, 17.461378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479515, 32.470722, 17.629047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371913, 0.535846, -0.757991,
		-0.196807, -0.843519, -0.499743,
		-0.907164, -0.036683, 0.419173,
		38.207367, 32.459717, 17.754799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505905, 32.277023, 16.869432>,  <38.842381, 32.485394, 17.461378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505905, 32.277023, 16.869432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219219, 32.400391, 17.119614>,  <38.047207, 32.474411, 17.269722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219219, 32.400391, 17.119614>,  <38.505905, 32.277023, 16.869432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219219, 32.400391, 17.119614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527085, 0.347672, -0.775439,
		-0.456613, -0.885439, -0.086619,
		-0.716719, 0.308420, 0.625453,
		38.004204, 32.492916, 17.307249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851887, 31.998423, 16.634150>,  <38.505905, 32.277023, 16.869432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851887, 31.998423, 16.634150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780109, 32.306358, 16.879147>,  <37.737045, 32.491119, 17.026144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780109, 32.306358, 16.879147>,  <37.851887, 31.998423, 16.634150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780109, 32.306358, 16.879147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708933, 0.330467, -0.623061,
		-0.682066, -0.546018, 0.486467,
		-0.179441, 0.769842, 0.612491,
		37.726276, 32.537312, 17.062893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217922, 32.162762, 16.450937>,  <37.851887, 31.998423, 16.634150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217922, 32.162762, 16.450937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321701, 32.493214, 16.651016>,  <37.383968, 32.691486, 16.771063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321701, 32.493214, 16.651016>,  <37.217922, 32.162762, 16.450937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321701, 32.493214, 16.651016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601450, 0.543450, -0.585594,
		-0.755608, -0.148910, 0.637873,
		0.259451, 0.826128, 0.500197,
		37.399536, 32.741051, 16.801075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576077, 32.523079, 16.634714>,  <37.217922, 32.162762, 16.450937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576077, 32.523079, 16.634714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892216, 32.757557, 16.563471>,  <37.081898, 32.898243, 16.520725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892216, 32.757557, 16.563471>,  <36.576077, 32.523079, 16.634714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892216, 32.757557, 16.563471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576776, 0.613900, -0.538939,
		-0.206584, 0.528678, 0.823300,
		0.790349, 0.586196, -0.178107,
		37.129322, 32.933414, 16.510038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419872, 33.310760, 16.792048>,  <36.576077, 32.523079, 16.634714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419872, 33.310760, 16.792048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695160, 33.242252, 16.510048>,  <36.860332, 33.201145, 16.340849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695160, 33.242252, 16.510048>,  <36.419872, 33.310760, 16.792048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695160, 33.242252, 16.510048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413843, 0.705461, -0.575377,
		0.595895, 0.687742, 0.414631,
		0.688217, -0.171272, -0.704998,
		36.901627, 33.190872, 16.298548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750237, 34.030922, 16.550516>,  <36.419872, 33.310760, 16.792048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750237, 34.030922, 16.550516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709747, 33.741444, 16.277454>,  <36.685452, 33.567757, 16.113617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709747, 33.741444, 16.277454>,  <36.750237, 34.030922, 16.550516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709747, 33.741444, 16.277454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495782, 0.631599, -0.596056,
		0.862528, 0.278112, -0.422729,
		-0.101225, -0.723696, -0.682655,
		36.679379, 33.524334, 16.072659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881794, 34.147099, 15.891021>,  <36.750237, 34.030922, 16.550516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881794, 34.147099, 15.891021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622379, 33.892086, 15.724671>,  <36.466728, 33.739079, 15.624862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622379, 33.892086, 15.724671>,  <36.881794, 34.147099, 15.891021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622379, 33.892086, 15.724671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065724, 0.497412, -0.865021,
		0.758340, -0.588332, -0.280690,
		-0.648537, -0.637532, -0.415875,
		36.427818, 33.700825, 15.599909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126228, 33.702812, 15.249196>,  <36.881794, 34.147099, 15.891021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126228, 33.702812, 15.249196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434460, 33.955494, 15.215344>,  <37.619396, 34.107101, 15.195034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434460, 33.955494, 15.215344>,  <37.126228, 33.702812, 15.249196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434460, 33.955494, 15.215344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092705, 0.242461, 0.965722,
		0.630569, -0.736317, 0.245397,
		0.770577, 0.631703, -0.084628,
		37.665634, 34.145004, 15.189956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434963, 33.673424, 15.873856>,  <37.126228, 33.702812, 15.249196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434963, 33.673424, 15.873856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618061, 33.977402, 15.689268>,  <37.727921, 34.159790, 15.578516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618061, 33.977402, 15.689268>,  <37.434963, 33.673424, 15.873856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618061, 33.977402, 15.689268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067837, 0.487672, 0.870388,
		0.886491, -0.429722, 0.171678,
		0.457747, 0.759944, -0.461468,
		37.755386, 34.205383, 15.550828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047958, 33.826118, 16.229904>,  <37.434963, 33.673424, 15.873856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047958, 33.826118, 16.229904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932182, 34.158966, 16.040674>,  <37.862717, 34.358673, 15.927135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932182, 34.158966, 16.040674>,  <38.047958, 33.826118, 16.229904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932182, 34.158966, 16.040674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155854, 0.528607, 0.834436,
		0.944421, 0.167792, -0.282691,
		-0.289444, 0.832118, -0.473076,
		37.845348, 34.408600, 15.898751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579769, 34.344944, 16.184082>,  <38.047958, 33.826118, 16.229904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579769, 34.344944, 16.184082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203743, 34.476967, 16.218332>,  <37.978127, 34.556179, 16.238882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203743, 34.476967, 16.218332>,  <38.579769, 34.344944, 16.184082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203743, 34.476967, 16.218332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230626, 0.430478, 0.872640,
		0.251160, 0.840090, -0.480799,
		-0.940069, 0.330057, 0.085627,
		37.921722, 34.575985, 16.244020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519432, 35.122559, 16.289007>,  <38.579769, 34.344944, 16.184082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519432, 35.122559, 16.289007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204884, 34.969467, 16.482973>,  <38.016155, 34.877613, 16.599352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204884, 34.969467, 16.482973>,  <38.519432, 35.122559, 16.289007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204884, 34.969467, 16.482973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217173, 0.563581, 0.797002,
		-0.578327, 0.732047, -0.360062,
		-0.786367, -0.382732, 0.484915,
		37.968975, 34.854649, 16.628448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196827, 35.695911, 16.684845>,  <38.519432, 35.122559, 16.289007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196827, 35.695911, 16.684845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090210, 35.350208, 16.855495>,  <38.026237, 35.142788, 16.957886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090210, 35.350208, 16.855495>,  <38.196827, 35.695911, 16.684845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090210, 35.350208, 16.855495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148892, 0.400404, 0.904162,
		-0.952252, 0.304522, 0.021955,
		-0.266547, -0.864259, 0.426626,
		38.010246, 35.090931, 16.983482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925793, 35.911575, 17.276291>,  <38.196827, 35.695911, 16.684845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925793, 35.911575, 17.276291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999710, 35.525967, 17.352715>,  <38.044060, 35.294601, 17.398569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999710, 35.525967, 17.352715>,  <37.925793, 35.911575, 17.276291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999710, 35.525967, 17.352715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017167, 0.191212, 0.981398,
		-0.982627, -0.184639, 0.018786,
		0.184797, -0.964026, 0.191060,
		38.055149, 35.236759, 17.410032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513699, 35.726418, 17.868551>,  <37.925793, 35.911575, 17.276291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513699, 35.726418, 17.868551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808567, 35.456211, 17.862259>,  <37.985489, 35.294086, 17.858484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808567, 35.456211, 17.862259>,  <37.513699, 35.726418, 17.868551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808567, 35.456211, 17.862259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141602, 0.131678, 0.981127,
		-0.660698, -0.725489, 0.192725,
		0.737175, -0.675519, -0.015731,
		38.029720, 35.253555, 17.857540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359833, 35.339146, 18.423264>,  <37.513699, 35.726418, 17.868551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359833, 35.339146, 18.423264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754276, 35.320423, 18.359526>,  <37.990944, 35.309189, 18.321283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754276, 35.320423, 18.359526>,  <37.359833, 35.339146, 18.423264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754276, 35.320423, 18.359526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159312, -0.004455, 0.987218,
		-0.046926, -0.998894, 0.003065,
		0.986112, -0.046814, -0.159345,
		38.050110, 35.306381, 18.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534126, 34.864227, 18.932013>,  <37.359833, 35.339146, 18.423264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534126, 34.864227, 18.932013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874660, 35.044716, 18.824959>,  <38.078979, 35.153011, 18.760727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874660, 35.044716, 18.824959>,  <37.534126, 34.864227, 18.932013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874660, 35.044716, 18.824959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293957, 0.012263, 0.955740,
		0.434535, -0.892326, -0.122200,
		0.851333, 0.451224, -0.267635,
		38.130062, 35.180084, 18.744669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060059, 34.395473, 19.030468>,  <37.534126, 34.864227, 18.932013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060059, 34.395473, 19.030468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201328, 34.769058, 19.052311>,  <38.286091, 34.993210, 19.065416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201328, 34.769058, 19.052311>,  <38.060059, 34.395473, 19.030468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201328, 34.769058, 19.052311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228111, -0.142576, 0.963139,
		0.907320, -0.327703, -0.263401,
		0.353178, 0.933961, 0.054609,
		38.307281, 35.049248, 19.068693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543781, 34.327068, 19.367720>,  <38.060059, 34.395473, 19.030468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543781, 34.327068, 19.367720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588688, 34.724098, 19.386421>,  <38.615631, 34.962318, 19.397642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588688, 34.724098, 19.386421>,  <38.543781, 34.327068, 19.367720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588688, 34.724098, 19.386421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317535, -0.080419, 0.944830,
		0.941577, -0.091230, -0.324207,
		0.112269, 0.992578, 0.046752,
		38.622368, 35.021870, 19.400446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222504, 34.441940, 19.811085>,  <38.543781, 34.327068, 19.367720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222504, 34.441940, 19.811085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988834, 34.766495, 19.819094>,  <38.848633, 34.961227, 19.823900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988834, 34.766495, 19.819094>,  <39.222504, 34.441940, 19.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988834, 34.766495, 19.819094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221366, 0.135544, 0.965725,
		0.780857, 0.568584, -0.258793,
		-0.584174, 0.811381, 0.020025,
		38.813583, 35.009911, 19.825102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603275, 34.991261, 20.092821>,  <39.222504, 34.441940, 19.811085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603275, 34.991261, 20.092821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226513, 35.087704, 20.186359>,  <39.000454, 35.145569, 20.242483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226513, 35.087704, 20.186359>,  <39.603275, 34.991261, 20.092821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226513, 35.087704, 20.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269679, 0.127843, 0.954426,
		0.200220, 0.962042, -0.185436,
		-0.941905, 0.241103, 0.233846,
		38.943943, 35.160034, 20.256514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669346, 35.571453, 20.680479>,  <39.603275, 34.991261, 20.092821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669346, 35.571453, 20.680479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286495, 35.455582, 20.679821>,  <39.056786, 35.386059, 20.679426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286495, 35.455582, 20.679821>,  <39.669346, 35.571453, 20.680479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286495, 35.455582, 20.679821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025395, -0.089553, 0.995658,
		-0.288570, 0.952925, 0.093070,
		-0.957122, -0.289680, -0.001643,
		38.999359, 35.368679, 20.679329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436504, 35.881588, 21.339710>,  <39.669346, 35.571453, 20.680479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436504, 35.881588, 21.339710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144897, 35.626717, 21.239679>,  <38.969933, 35.473793, 21.179661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144897, 35.626717, 21.239679>,  <39.436504, 35.881588, 21.339710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144897, 35.626717, 21.239679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122573, -0.237917, 0.963520,
		-0.673429, 0.733078, 0.095345,
		-0.729020, -0.637175, -0.250075,
		38.926193, 35.435562, 21.164658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884201, 36.038490, 21.884550>,  <39.436504, 35.881588, 21.339710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884201, 36.038490, 21.884550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798199, 35.674698, 21.742214>,  <38.746597, 35.456425, 21.656813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798199, 35.674698, 21.742214>,  <38.884201, 36.038490, 21.884550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798199, 35.674698, 21.742214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062526, -0.350794, 0.934363,
		-0.974608, 0.223146, 0.018558,
		-0.215009, -0.909478, -0.355839,
		38.733696, 35.401855, 21.635462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342506, 35.805538, 22.368845>,  <38.884201, 36.038490, 21.884550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342506, 35.805538, 22.368845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512608, 35.491619, 22.188509>,  <38.614670, 35.303268, 22.080307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512608, 35.491619, 22.188509>,  <38.342506, 35.805538, 22.368845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512608, 35.491619, 22.188509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046174, -0.516291, 0.855168,
		-0.903895, -0.342846, -0.255792,
		0.425254, -0.784793, -0.450842,
		38.640182, 35.256180, 22.053257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052750, 35.217648, 22.623669>,  <38.342506, 35.805538, 22.368845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052750, 35.217648, 22.623669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367981, 35.043610, 22.449484>,  <38.557117, 34.939186, 22.344973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367981, 35.043610, 22.449484>,  <38.052750, 35.217648, 22.623669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367981, 35.043610, 22.449484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061990, -0.647714, 0.759358,
		-0.612448, -0.625426, -0.483476,
		0.788077, -0.435097, -0.435461,
		38.604404, 34.913078, 22.318846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908424, 34.549305, 22.457312>,  <38.052750, 35.217648, 22.623669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908424, 34.549305, 22.457312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304459, 34.580860, 22.503813>,  <38.542080, 34.599792, 22.531713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304459, 34.580860, 22.503813>,  <37.908424, 34.549305, 22.457312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304459, 34.580860, 22.503813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039755, -0.636350, 0.770375,
		0.134750, -0.767356, -0.626903,
		0.990082, 0.078886, 0.116255,
		38.601482, 34.604527, 22.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163620, 33.872875, 22.589394>,  <37.908424, 34.549305, 22.457312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163620, 33.872875, 22.589394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467640, 34.100651, 22.714659>,  <38.650051, 34.237316, 22.789818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467640, 34.100651, 22.714659>,  <38.163620, 33.872875, 22.589394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467640, 34.100651, 22.714659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084636, -0.564518, 0.821070,
		0.644333, -0.597547, -0.477255,
		0.760047, 0.569436, 0.313163,
		38.695656, 34.271481, 22.808607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442360, 33.347324, 22.996748>,  <38.163620, 33.872875, 22.589394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442360, 33.347324, 22.996748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652279, 33.676182, 23.084990>,  <38.778229, 33.873497, 23.137934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652279, 33.676182, 23.084990>,  <38.442360, 33.347324, 22.996748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652279, 33.676182, 23.084990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030986, -0.277438, 0.960244,
		0.850665, -0.497094, -0.171073,
		0.524794, 0.822147, 0.220604,
		38.809715, 33.922825, 23.151171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993656, 33.095238, 23.406189>,  <38.442360, 33.347324, 22.996748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993656, 33.095238, 23.406189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936905, 33.483864, 23.482004>,  <38.902855, 33.717041, 23.527493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936905, 33.483864, 23.482004>,  <38.993656, 33.095238, 23.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936905, 33.483864, 23.482004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092034, -0.177698, 0.979772,
		0.985597, 0.156451, -0.064206,
		-0.141877, 0.971569, 0.189538,
		38.894341, 33.775333, 23.538866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548840, 33.376087, 23.941236>,  <38.993656, 33.095238, 23.406189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548840, 33.376087, 23.941236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236881, 33.625446, 23.963634>,  <39.049706, 33.775063, 23.977074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236881, 33.625446, 23.963634>,  <39.548840, 33.376087, 23.941236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236881, 33.625446, 23.963634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021564, -0.116172, 0.992995,
		0.625535, 0.773227, 0.104045,
		-0.779898, 0.623397, 0.055996,
		39.002911, 33.812466, 23.980433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697151, 34.027855, 24.397961>,  <39.548840, 33.376087, 23.941236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697151, 34.027855, 24.397961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301258, 33.970856, 24.402243>,  <39.063721, 33.936657, 24.404812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301258, 33.970856, 24.402243>,  <39.697151, 34.027855, 24.397961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301258, 33.970856, 24.402243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039601, -0.201538, 0.978680,
		-0.137307, 0.969059, 0.205113,
		-0.989737, -0.142502, 0.010703,
		39.004337, 33.928104, 24.405453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487591, 34.331711, 25.008160>,  <39.697151, 34.027855, 24.397961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487591, 34.331711, 25.008160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164871, 34.116604, 24.910280>,  <38.971241, 33.987537, 24.851553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164871, 34.116604, 24.910280>,  <39.487591, 34.331711, 25.008160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164871, 34.116604, 24.910280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032603, -0.373010, 0.927254,
		-0.589925, 0.756086, 0.283412,
		-0.806799, -0.537771, -0.244699,
		38.922832, 33.955273, 24.836870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929592, 34.568851, 25.474560>,  <39.487591, 34.331711, 25.008160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929592, 34.568851, 25.474560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839329, 34.204155, 25.337267>,  <38.785172, 33.985336, 25.254890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839329, 34.204155, 25.337267>,  <38.929592, 34.568851, 25.474560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839329, 34.204155, 25.337267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088805, -0.331602, 0.939231,
		-0.970152, 0.242422, -0.006140,
		-0.225654, -0.911741, -0.343232,
		38.771633, 33.930634, 25.234297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288017, 34.348156, 25.846996>,  <38.929592, 34.568851, 25.474560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288017, 34.348156, 25.846996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467075, 34.017971, 25.709459>,  <38.574509, 33.819859, 25.626938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467075, 34.017971, 25.709459>,  <38.288017, 34.348156, 25.846996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467075, 34.017971, 25.709459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091709, -0.424870, 0.900596,
		-0.889498, -0.371612, -0.265892,
		0.447642, -0.825463, -0.343841,
		38.601368, 33.770332, 25.606306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963383, 33.844002, 26.235107>,  <38.288017, 34.348156, 25.846996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963383, 33.844002, 26.235107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274887, 33.647434, 26.079144>,  <38.461792, 33.529491, 25.985565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274887, 33.647434, 26.079144>,  <37.963383, 33.844002, 26.235107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274887, 33.647434, 26.079144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137908, -0.472234, 0.870619,
		-0.611969, -0.731780, -0.299988,
		0.778765, -0.491421, -0.389911,
		38.508518, 33.500008, 25.962170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846123, 33.022636, 26.149694>,  <37.963383, 33.844002, 26.235107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846123, 33.022636, 26.149694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232105, 33.121933, 26.183701>,  <38.463696, 33.181511, 26.204105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232105, 33.121933, 26.183701>,  <37.846123, 33.022636, 26.149694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232105, 33.121933, 26.183701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044465, -0.474009, 0.879396,
		0.258604, -0.844802, -0.468438,
		0.964960, 0.248244, 0.085016,
		38.521595, 33.196407, 26.209206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226852, 32.377529, 26.394270>,  <37.846123, 33.022636, 26.149694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226852, 32.377529, 26.394270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520504, 32.645184, 26.440414>,  <38.696693, 32.805775, 26.468102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520504, 32.645184, 26.440414>,  <38.226852, 32.377529, 26.394270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520504, 32.645184, 26.440414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241547, -0.416141, 0.876631,
		0.634593, -0.615696, -0.467130,
		0.734130, 0.669137, 0.115361,
		38.740742, 32.845924, 26.475023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895782, 31.962038, 26.495483>,  <38.226852, 32.377529, 26.394270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895782, 31.962038, 26.495483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933125, 32.329144, 26.649879>,  <38.955532, 32.549408, 26.742517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933125, 32.329144, 26.649879>,  <38.895782, 31.962038, 26.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933125, 32.329144, 26.649879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302756, -0.395495, 0.867135,
		0.948485, 0.035908, -0.314782,
		0.093358, 0.917766, 0.385993,
		38.961132, 32.604473, 26.765676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487099, 31.961033, 26.783939>,  <38.895782, 31.962038, 26.495483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487099, 31.961033, 26.783939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322884, 32.267708, 26.981384>,  <39.224354, 32.451714, 27.099852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322884, 32.267708, 26.981384>,  <39.487099, 31.961033, 26.783939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322884, 32.267708, 26.981384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381994, -0.346938, 0.856572,
		0.827973, 0.540211, -0.150438,
		-0.410537, 0.766685, 0.493613,
		39.199722, 32.497715, 27.129469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008255, 32.066006, 27.261387>,  <39.487099, 31.961033, 26.783939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008255, 32.066006, 27.261387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672108, 32.227470, 27.406076>,  <39.470421, 32.324348, 27.492889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672108, 32.227470, 27.406076>,  <40.008255, 32.066006, 27.261387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672108, 32.227470, 27.406076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194167, -0.398877, 0.896212,
		0.506047, 0.823381, 0.256826,
		-0.840366, 0.403659, 0.361724,
		39.419998, 32.348568, 27.514593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233917, 32.483650, 27.883001>,  <40.008255, 32.066006, 27.261387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233917, 32.483650, 27.883001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839706, 32.431164, 27.925913>,  <39.603180, 32.399670, 27.951660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839706, 32.431164, 27.925913>,  <40.233917, 32.483650, 27.883001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839706, 32.431164, 27.925913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119889, -0.092288, 0.988489,
		-0.119810, 0.987048, 0.106685,
		-0.985532, -0.131221, 0.107280,
		39.544048, 32.391796, 27.958097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130146, 32.884464, 28.417257>,  <40.233917, 32.483650, 27.883001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130146, 32.884464, 28.417257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793659, 32.668297, 28.424349>,  <39.591766, 32.538597, 28.428604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793659, 32.668297, 28.424349>,  <40.130146, 32.884464, 28.417257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793659, 32.668297, 28.424349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198688, -0.278450, 0.939675,
		-0.502877, 0.793989, 0.341609,
		-0.841212, -0.540414, 0.017730,
		39.541294, 32.506172, 28.429668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796844, 32.957146, 29.166714>,  <40.130146, 32.884464, 28.417257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796844, 32.957146, 29.166714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627350, 32.642536, 28.987015>,  <39.525654, 32.453770, 28.879194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627350, 32.642536, 28.987015>,  <39.796844, 32.957146, 29.166714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627350, 32.642536, 28.987015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005931, -0.498375, 0.866941,
		-0.905767, 0.364689, 0.215844,
		-0.423735, -0.786527, -0.449248,
		39.500229, 32.406578, 28.852240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134598, 32.885811, 29.404449>,  <39.796844, 32.957146, 29.166714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134598, 32.885811, 29.404449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294353, 32.534225, 29.300211>,  <39.390209, 32.323273, 29.237667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294353, 32.534225, 29.300211>,  <39.134598, 32.885811, 29.404449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294353, 32.534225, 29.300211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089467, -0.320263, 0.943094,
		-0.912405, -0.353349, -0.206548,
		0.399391, -0.878963, -0.260596,
		39.414169, 32.270538, 29.222033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706566, 32.300377, 29.847828>,  <39.134598, 32.885811, 29.404449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706566, 32.300377, 29.847828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068378, 32.155746, 29.757412>,  <39.285465, 32.068970, 29.703163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068378, 32.155746, 29.757412>,  <38.706566, 32.300377, 29.847828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068378, 32.155746, 29.757412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060224, -0.416457, 0.907159,
		-0.422161, -0.834155, -0.354917,
		0.904518, -0.361592, -0.226048,
		39.339737, 32.047276, 29.689600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667770, 31.570230, 29.942871>,  <38.706566, 32.300377, 29.847828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667770, 31.570230, 29.942871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061771, 31.628189, 29.905415>,  <39.298172, 31.662964, 29.882940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061771, 31.628189, 29.905415>,  <38.667770, 31.570230, 29.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061771, 31.628189, 29.905415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167354, -0.670663, 0.722637,
		0.041904, -0.727473, -0.684855,
		0.985006, 0.144894, -0.093642,
		39.357273, 31.671658, 29.877321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923210, 30.951183, 30.146841>,  <38.667770, 31.570230, 29.942871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923210, 30.951183, 30.146841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256187, 31.172827, 30.147690>,  <39.455975, 31.305813, 30.148199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256187, 31.172827, 30.147690>,  <38.923210, 30.951183, 30.146841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256187, 31.172827, 30.147690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346539, -0.523587, 0.778311,
		0.432380, -0.647162, -0.627876,
		0.832441, 0.554109, 0.002122,
		39.505920, 31.339060, 30.148327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365623, 30.495895, 30.381516>,  <38.923210, 30.951183, 30.146841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365623, 30.495895, 30.381516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556793, 30.844759, 30.423325>,  <39.671494, 31.054077, 30.448410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556793, 30.844759, 30.423325>,  <39.365623, 30.495895, 30.381516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556793, 30.844759, 30.423325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448931, -0.344797, 0.824364,
		0.755016, -0.347060, -0.556327,
		0.477924, 0.872161, 0.104522,
		39.700169, 31.106407, 30.454681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123428, 30.374950, 30.425703>,  <39.365623, 30.495895, 30.381516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123428, 30.374950, 30.425703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038307, 30.721434, 30.606544>,  <39.987236, 30.929323, 30.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038307, 30.721434, 30.606544>,  <40.123428, 30.374950, 30.425703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038307, 30.721434, 30.606544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507229, -0.297539, 0.808819,
		0.835125, 0.401440, -0.376048,
		-0.212804, 0.866208, 0.452105,
		39.974464, 30.981297, 30.742176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735199, 30.802971, 30.610386>,  <40.123428, 30.374950, 30.425703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735199, 30.802971, 30.610386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457722, 30.932053, 30.867960>,  <40.291237, 31.009502, 31.022505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457722, 30.932053, 30.867960>,  <40.735199, 30.802971, 30.610386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457722, 30.932053, 30.867960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612431, -0.206282, 0.763135,
		0.379101, 0.923747, -0.054539,
		-0.693693, 0.322706, 0.643933,
		40.249615, 31.028864, 31.061140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085701, 31.373768, 31.031227>,  <40.735199, 30.802971, 30.610386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085701, 31.373768, 31.031227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763206, 31.235409, 31.223200>,  <40.569710, 31.152393, 31.338383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763206, 31.235409, 31.223200>,  <41.085701, 31.373768, 31.031227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763206, 31.235409, 31.223200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527039, -0.051467, 0.848281,
		-0.268717, 0.936860, 0.223796,
		-0.806239, -0.345896, 0.479932,
		40.521336, 31.131639, 31.367180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579350, 31.963692, 31.195692>,  <41.085701, 31.373768, 31.031227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579350, 31.963692, 31.195692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969803, 31.925812, 31.273859>,  <42.204075, 31.903084, 31.320759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969803, 31.925812, 31.273859>,  <41.579350, 31.963692, 31.195692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969803, 31.925812, 31.273859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216685, 0.483940, -0.847850,
		-0.014277, 0.869962, 0.492912,
		0.976137, -0.094702, 0.195417,
		42.262646, 31.897402, 31.332483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794155, 32.592487, 31.144026>,  <41.579350, 31.963692, 31.195692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794155, 32.592487, 31.144026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106167, 32.350334, 31.080687>,  <42.293373, 32.205044, 31.042683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106167, 32.350334, 31.080687>,  <41.794155, 32.592487, 31.144026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106167, 32.350334, 31.080687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118484, 0.391367, -0.912575,
		0.614425, 0.693072, 0.377005,
		0.780028, -0.605378, -0.158347,
		42.340176, 32.168720, 31.033182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291912, 33.084076, 30.872581>,  <41.794155, 32.592487, 31.144026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291912, 33.084076, 30.872581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418259, 32.722908, 30.755987>,  <42.494068, 32.506207, 30.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418259, 32.722908, 30.755987>,  <42.291912, 33.084076, 30.872581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418259, 32.722908, 30.755987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210833, 0.366328, -0.906286,
		0.925082, 0.224813, 0.306076,
		0.315869, -0.902919, -0.291486,
		42.513020, 32.452034, 30.668541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941864, 33.215626, 30.510208>,  <42.291912, 33.084076, 30.872581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941864, 33.215626, 30.510208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793713, 32.876263, 30.358934>,  <42.704823, 32.672646, 30.268169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793713, 32.876263, 30.358934>,  <42.941864, 33.215626, 30.510208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793713, 32.876263, 30.358934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280397, 0.286028, -0.916278,
		0.885548, -0.445414, 0.131951,
		-0.370381, -0.848407, -0.378185,
		42.682598, 32.621742, 30.245480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484463, 32.909958, 30.049477>,  <42.941864, 33.215626, 30.510208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484463, 32.909958, 30.049477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136307, 32.753597, 29.929735>,  <42.927414, 32.659782, 29.857891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136307, 32.753597, 29.929735>,  <43.484463, 32.909958, 30.049477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136307, 32.753597, 29.929735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144441, 0.378524, -0.914252,
		0.470693, -0.838998, -0.273003,
		-0.870394, -0.390899, -0.299355,
		42.875187, 32.636330, 29.839930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582558, 32.754356, 29.379425>,  <43.484463, 32.909958, 30.049477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582558, 32.754356, 29.379425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183044, 32.744984, 29.396769>,  <42.943336, 32.739361, 29.407175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183044, 32.744984, 29.396769>,  <43.582558, 32.754356, 29.379425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183044, 32.744984, 29.396769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049246, 0.508640, -0.859570,
		-0.001913, -0.860660, -0.509176,
		-0.998785, -0.023431, 0.043357,
		42.883408, 32.737953, 29.409775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462460, 32.593441, 28.695642>,  <43.582558, 32.754356, 29.379425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462460, 32.593441, 28.695642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100033, 32.706253, 28.821814>,  <42.882576, 32.773941, 28.897516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100033, 32.706253, 28.821814>,  <43.462460, 32.593441, 28.695642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100033, 32.706253, 28.821814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182653, 0.411741, -0.892808,
		-0.381671, -0.866562, -0.321554,
		-0.906071, 0.282026, 0.315430,
		42.828213, 32.790859, 28.916443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951923, 32.544090, 28.139399>,  <43.462460, 32.593441, 28.695642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951923, 32.544090, 28.139399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762642, 32.795315, 28.386497>,  <42.649071, 32.946049, 28.534756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762642, 32.795315, 28.386497>,  <42.951923, 32.544090, 28.139399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762642, 32.795315, 28.386497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461361, 0.420691, -0.781131,
		-0.750481, -0.654640, 0.090690,
		-0.473207, 0.628065, 0.617746,
		42.620678, 32.983734, 28.571821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193733, 32.514889, 27.995874>,  <42.951923, 32.544090, 28.139399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193733, 32.514889, 27.995874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252449, 32.869499, 28.171389>,  <42.287678, 33.082264, 28.276697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252449, 32.869499, 28.171389>,  <42.193733, 32.514889, 27.995874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252449, 32.869499, 28.171389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300833, 0.462588, -0.833974,
		-0.942312, -0.009582, 0.334598,
		0.146790, 0.886522, 0.438785,
		42.296486, 33.135456, 28.303024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599388, 32.980450, 27.859316>,  <42.193733, 32.514889, 27.995874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599388, 32.980450, 27.859316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871246, 33.256104, 27.959862>,  <42.034359, 33.421494, 28.020189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871246, 33.256104, 27.959862>,  <41.599388, 32.980450, 27.859316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871246, 33.256104, 27.959862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201941, 0.505204, -0.839041,
		-0.705199, 0.519487, 0.482522,
		0.679643, 0.689132, 0.251364,
		42.075138, 33.462845, 28.035271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296452, 33.568634, 27.908857>,  <41.599388, 32.980450, 27.859316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296452, 33.568634, 27.908857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681709, 33.621922, 27.815386>,  <41.912865, 33.653893, 27.759302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681709, 33.621922, 27.815386>,  <41.296452, 33.568634, 27.908857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681709, 33.621922, 27.815386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268478, 0.529430, -0.804751,
		0.016508, 0.837829, 0.545684,
		0.963144, 0.133219, -0.233679,
		41.970654, 33.661888, 27.745283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287678, 34.297806, 27.794804>,  <41.296452, 33.568634, 27.908857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287678, 34.297806, 27.794804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621624, 34.146877, 27.634491>,  <41.821991, 34.056320, 27.538303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621624, 34.146877, 27.634491>,  <41.287678, 34.297806, 27.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621624, 34.146877, 27.634491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222824, 0.434119, -0.872863,
		0.503336, 0.818029, 0.278356,
		0.834867, -0.377319, -0.400784,
		41.872086, 34.033680, 27.514256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502625, 34.810234, 27.394110>,  <41.287678, 34.297806, 27.794804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502625, 34.810234, 27.394110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674423, 34.479134, 27.249687>,  <41.777504, 34.280472, 27.163034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674423, 34.479134, 27.249687>,  <41.502625, 34.810234, 27.394110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674423, 34.479134, 27.249687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114114, 0.346858, -0.930949,
		0.895828, 0.441043, 0.054517,
		0.429499, -0.827750, -0.361055,
		41.803272, 34.230808, 27.141371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858425, 35.067284, 26.834332>,  <41.502625, 34.810234, 27.394110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858425, 35.067284, 26.834332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870716, 34.674381, 26.760319>,  <41.878090, 34.438641, 26.715912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870716, 34.674381, 26.760319>,  <41.858425, 35.067284, 26.834332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870716, 34.674381, 26.760319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034480, 0.183968, -0.982327,
		0.998933, 0.036562, -0.028216,
		0.030726, -0.982252, -0.185032,
		41.879932, 34.379707, 26.704809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374481, 34.872120, 26.335579>,  <41.858425, 35.067284, 26.834332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374481, 34.872120, 26.335579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114838, 34.568237, 26.320131>,  <41.959049, 34.385906, 26.310862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114838, 34.568237, 26.320131>,  <42.374481, 34.872120, 26.335579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114838, 34.568237, 26.320131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128544, 0.159587, -0.978779,
		0.749752, -0.630375, -0.201246,
		-0.649114, -0.759710, -0.038620,
		41.920105, 34.340324, 26.308546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624924, 34.404385, 25.804819>,  <42.374481, 34.872120, 26.335579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624924, 34.404385, 25.804819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236752, 34.312565, 25.834688>,  <42.003849, 34.257473, 25.852610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236752, 34.312565, 25.834688>,  <42.624924, 34.404385, 25.804819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236752, 34.312565, 25.834688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048803, -0.116389, -0.992004,
		0.236403, -0.966313, 0.101745,
		-0.970429, -0.229548, 0.074674,
		41.945621, 34.243702, 25.857090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555016, 33.743835, 25.389042>,  <42.624924, 34.404385, 25.804819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555016, 33.743835, 25.389042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185219, 33.891411, 25.427418>,  <41.963341, 33.979958, 25.450443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185219, 33.891411, 25.427418>,  <42.555016, 33.743835, 25.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185219, 33.891411, 25.427418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111770, -0.021723, -0.993497,
		-0.364455, -0.929200, 0.061319,
		-0.924489, 0.368938, 0.095940,
		41.907871, 34.002090, 25.456200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988243, 33.259922, 25.071428>,  <42.555016, 33.743835, 25.389042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988243, 33.259922, 25.071428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798866, 33.612156, 25.079710>,  <41.685242, 33.823498, 25.084679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798866, 33.612156, 25.079710>,  <41.988243, 33.259922, 25.071428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798866, 33.612156, 25.079710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257759, -0.116028, -0.959217,
		-0.842268, -0.459467, 0.281911,
		-0.473438, 0.880583, 0.020705,
		41.656834, 33.876331, 25.085922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534641, 33.302715, 24.562832>,  <41.988243, 33.259922, 25.071428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534641, 33.302715, 24.562832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513649, 33.695801, 24.633842>,  <41.501053, 33.931652, 24.676449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513649, 33.695801, 24.633842>,  <41.534641, 33.302715, 24.562832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513649, 33.695801, 24.633842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165034, 0.166794, -0.972082,
		-0.984891, -0.080314, 0.153428,
		-0.052480, 0.982715, 0.177528,
		41.497906, 33.990616, 24.687101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941093, 33.588123, 24.230503>,  <41.534641, 33.302715, 24.562832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941093, 33.588123, 24.230503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203148, 33.889927, 24.246037>,  <41.360382, 34.071011, 24.255356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203148, 33.889927, 24.246037>,  <40.941093, 33.588123, 24.230503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203148, 33.889927, 24.246037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096037, 0.134151, -0.986296,
		-0.749379, 0.642433, 0.160348,
		0.655140, 0.754509, 0.038833,
		41.399689, 34.116280, 24.257687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607925, 34.124748, 23.810768>,  <40.941093, 33.588123, 24.230503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607925, 34.124748, 23.810768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992874, 34.229786, 23.838715>,  <41.223843, 34.292809, 23.855482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992874, 34.229786, 23.838715>,  <40.607925, 34.124748, 23.810768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992874, 34.229786, 23.838715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007278, 0.281934, -0.959406,
		-0.271632, 0.922799, 0.273237,
		0.962374, 0.262595, 0.069866,
		41.281586, 34.308563, 23.859674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624550, 34.824375, 23.550638>,  <40.607925, 34.124748, 23.810768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624550, 34.824375, 23.550638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982800, 34.647053, 23.536001>,  <41.197750, 34.540657, 23.527220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982800, 34.647053, 23.536001>,  <40.624550, 34.824375, 23.550638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982800, 34.647053, 23.536001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082081, 0.245554, -0.965902,
		0.437178, 0.862079, 0.256311,
		0.895622, -0.443309, -0.036591,
		41.251488, 34.514061, 23.525024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931442, 35.293049, 23.146049>,  <40.624550, 34.824375, 23.550638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931442, 35.293049, 23.146049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153133, 34.961033, 23.121199>,  <41.286148, 34.761822, 23.106287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153133, 34.961033, 23.121199>,  <40.931442, 35.293049, 23.146049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153133, 34.961033, 23.121199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150935, 0.173622, -0.973177,
		0.818567, 0.529983, 0.221508,
		0.554226, -0.830044, -0.062128,
		41.319401, 34.712021, 23.102560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449764, 35.449009, 22.671713>,  <40.931442, 35.293049, 23.146049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449764, 35.449009, 22.671713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429989, 35.049599, 22.680635>,  <41.418121, 34.809952, 22.685989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429989, 35.049599, 22.680635>,  <41.449764, 35.449009, 22.671713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429989, 35.049599, 22.680635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014543, -0.021610, -0.999661,
		0.998671, -0.049750, -0.013453,
		-0.049442, -0.998528, 0.022305,
		41.415157, 34.750042, 22.687326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916451, 35.250690, 22.170612>,  <41.449764, 35.449009, 22.671713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916451, 35.250690, 22.170612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682674, 34.929058, 22.214214>,  <41.542408, 34.736076, 22.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682674, 34.929058, 22.214214>,  <41.916451, 35.250690, 22.170612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682674, 34.929058, 22.214214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110634, -0.054122, -0.992387,
		0.803863, -0.592046, -0.057328,
		-0.584436, -0.804085, 0.109007,
		41.507343, 34.687832, 22.246916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277935, 34.639641, 21.870121>,  <41.916451, 35.250690, 22.170612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277935, 34.639641, 21.870121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892723, 34.536190, 21.900269>,  <41.661594, 34.474121, 21.918356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892723, 34.536190, 21.900269>,  <42.277935, 34.639641, 21.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892723, 34.536190, 21.900269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008281, -0.251224, -0.967894,
		0.269254, -0.932738, 0.239796,
		-0.963034, -0.258623, 0.075368,
		41.603813, 34.458603, 21.922878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199650, 34.337841, 21.279308>,  <42.277935, 34.639641, 21.870121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199650, 34.337841, 21.279308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820415, 34.345440, 21.406284>,  <41.592873, 34.349998, 21.482470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820415, 34.345440, 21.406284>,  <42.199650, 34.337841, 21.279308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820415, 34.345440, 21.406284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316108, -0.165204, -0.934229,
		0.034692, -0.986076, 0.162634,
		-0.948089, 0.018999, 0.317438,
		41.535988, 34.351139, 21.501516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882519, 33.715179, 21.102840>,  <42.199650, 34.337841, 21.279308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882519, 33.715179, 21.102840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607613, 34.002365, 21.147011>,  <41.442669, 34.174675, 21.173513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607613, 34.002365, 21.147011>,  <41.882519, 33.715179, 21.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607613, 34.002365, 21.147011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318980, -0.161708, -0.933864,
		-0.652626, -0.677035, 0.340152,
		-0.687264, 0.717966, 0.110426,
		41.401432, 34.217754, 21.180138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384583, 33.437927, 20.706747>,  <41.882519, 33.715179, 21.102840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384583, 33.437927, 20.706747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292641, 33.825718, 20.740885>,  <41.237476, 34.058392, 20.761368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292641, 33.825718, 20.740885>,  <41.384583, 33.437927, 20.706747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292641, 33.825718, 20.740885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205236, 0.037436, -0.977996,
		-0.951340, -0.242308, 0.190367,
		-0.229850, 0.969477, 0.085345,
		41.223686, 34.116562, 20.766489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827385, 33.480316, 20.262167>,  <41.384583, 33.437927, 20.706747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827385, 33.480316, 20.262167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939392, 33.861309, 20.310118>,  <41.006596, 34.089905, 20.338888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939392, 33.861309, 20.310118>,  <40.827385, 33.480316, 20.262167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939392, 33.861309, 20.310118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211955, 0.183132, -0.959968,
		-0.936303, 0.243403, 0.253164,
		0.280021, 0.952480, 0.119876,
		41.023399, 34.147053, 20.346081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340752, 33.855980, 19.803511>,  <40.827385, 33.480316, 20.262167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340752, 33.855980, 19.803511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628590, 34.121300, 19.885691>,  <40.801292, 34.280491, 19.934999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628590, 34.121300, 19.885691>,  <40.340752, 33.855980, 19.803511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628590, 34.121300, 19.885691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122200, 0.412219, -0.902852,
		-0.683556, 0.624582, 0.377687,
		0.719596, 0.663304, 0.205451,
		40.844467, 34.320290, 19.947327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094501, 34.473667, 19.648092>,  <40.340752, 33.855980, 19.803511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094501, 34.473667, 19.648092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489616, 34.500687, 19.591930>,  <40.726685, 34.516899, 19.558233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489616, 34.500687, 19.591930>,  <40.094501, 34.473667, 19.648092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489616, 34.500687, 19.591930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155236, 0.349527, -0.923976,
		-0.013334, 0.934488, 0.355744,
		0.987787, 0.067544, -0.140406,
		40.785954, 34.520950, 19.549809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075867, 35.026848, 19.245960>,  <40.094501, 34.473667, 19.648092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075867, 35.026848, 19.245960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439163, 34.864185, 19.206495>,  <40.657139, 34.766590, 19.182816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439163, 34.864185, 19.206495>,  <40.075867, 35.026848, 19.245960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439163, 34.864185, 19.206495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062595, 0.365159, -0.928838,
		0.413742, 0.837432, 0.357106,
		0.908240, -0.406653, -0.098662,
		40.711636, 34.742191, 19.176897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404415, 35.433701, 18.740147>,  <40.075867, 35.026848, 19.245960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404415, 35.433701, 18.740147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662048, 35.127720, 18.741415>,  <40.816628, 34.944134, 18.742176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662048, 35.127720, 18.741415>,  <40.404415, 35.433701, 18.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662048, 35.127720, 18.741415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179823, 0.147378, -0.972596,
		0.743520, 0.627003, 0.232479,
		0.644083, -0.764949, 0.003171,
		40.855274, 34.898235, 18.742367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104290, 35.655693, 18.357893>,  <40.404415, 35.433701, 18.740147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104290, 35.655693, 18.357893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059277, 35.258801, 18.336685>,  <41.032269, 35.020664, 18.323961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059277, 35.258801, 18.336685>,  <41.104290, 35.655693, 18.357893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059277, 35.258801, 18.336685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238320, 0.024847, -0.970869,
		0.964645, -0.121889, 0.233673,
		-0.112532, -0.992233, -0.053017,
		41.025517, 34.961132, 18.320780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634441, 35.513863, 17.869244>,  <41.104290, 35.655693, 18.357893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634441, 35.513863, 17.869244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399986, 35.190460, 17.848206>,  <41.259315, 34.996418, 17.835583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399986, 35.190460, 17.848206>,  <41.634441, 35.513863, 17.869244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399986, 35.190460, 17.848206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045694, 0.031822, -0.998449,
		0.808925, -0.587627, 0.018292,
		-0.586133, -0.808506, -0.052593,
		41.224148, 34.947906, 17.832428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984806, 35.041481, 17.378204>,  <41.634441, 35.513863, 17.869244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984806, 35.041481, 17.378204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599648, 34.937855, 17.408445>,  <41.368553, 34.875679, 17.426590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599648, 34.937855, 17.408445>,  <41.984806, 35.041481, 17.378204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599648, 34.937855, 17.408445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091145, 0.048495, -0.994656,
		0.254012, -0.964642, -0.070308,
		-0.962896, -0.259063, 0.075604,
		41.310780, 34.860134, 17.431128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887943, 34.429588, 16.852304>,  <41.984806, 35.041481, 17.378204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887943, 34.429588, 16.852304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527771, 34.583645, 16.933187>,  <41.311668, 34.676079, 16.981718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527771, 34.583645, 16.933187>,  <41.887943, 34.429588, 16.852304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527771, 34.583645, 16.933187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276314, -0.147387, -0.949699,
		-0.335965, -0.911013, 0.239132,
		-0.900432, 0.385141, 0.202209,
		41.257641, 34.699188, 16.993851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286404, 34.558743, 16.186218>,  <41.887943, 34.429588, 16.852304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286404, 34.558743, 16.186218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649925, 34.397892, 16.141726>,  <42.868038, 34.301380, 16.115030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649925, 34.397892, 16.141726>,  <42.286404, 34.558743, 16.186218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649925, 34.397892, 16.141726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161234, -0.584368, 0.795310,
		-0.384816, -0.704845, -0.595911,
		0.908802, -0.402129, -0.111229,
		42.922565, 34.277252, 16.108356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230244, 33.861290, 16.339725>,  <42.286404, 34.558743, 16.186218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230244, 33.861290, 16.339725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618786, 33.938316, 16.395428>,  <42.851910, 33.984531, 16.428848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618786, 33.938316, 16.395428>,  <42.230244, 33.861290, 16.339725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618786, 33.938316, 16.395428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052524, -0.397524, 0.916087,
		0.231761, -0.897159, -0.376022,
		0.971354, 0.192563, 0.139253,
		42.910191, 33.996086, 16.437204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520950, 33.228424, 16.616394>,  <42.230244, 33.861290, 16.339725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520950, 33.228424, 16.616394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737923, 33.547657, 16.721340>,  <42.868107, 33.739197, 16.784307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737923, 33.547657, 16.721340>,  <42.520950, 33.228424, 16.616394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737923, 33.547657, 16.721340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010488, -0.318710, 0.947794,
		0.840035, -0.511361, -0.181248,
		0.542431, 0.798081, 0.262365,
		42.900650, 33.787083, 16.800049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064999, 32.983227, 17.016935>,  <42.520950, 33.228424, 16.616394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064999, 32.983227, 17.016935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074852, 33.368156, 17.125250>,  <43.080765, 33.599113, 17.190239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074852, 33.368156, 17.125250>,  <43.064999, 32.983227, 17.016935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074852, 33.368156, 17.125250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053140, -0.271746, 0.960901,
		0.998283, -0.009276, -0.057831,
		0.024629, 0.962324, 0.270787,
		43.082241, 33.656853, 17.206486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697449, 33.021885, 17.517042>,  <43.064999, 32.983227, 17.016935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697449, 33.021885, 17.517042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453045, 33.329964, 17.590212>,  <43.306400, 33.514812, 17.634113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453045, 33.329964, 17.590212>,  <43.697449, 33.021885, 17.517042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453045, 33.329964, 17.590212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162926, -0.103776, 0.981165,
		0.774674, 0.629307, -0.062077,
		-0.611012, 0.770197, 0.182923,
		43.269741, 33.561024, 17.645088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112530, 33.446281, 17.965141>,  <43.697449, 33.021885, 17.517042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112530, 33.446281, 17.965141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730152, 33.556686, 18.005117>,  <43.500725, 33.622929, 18.029102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730152, 33.556686, 18.005117>,  <44.112530, 33.446281, 17.965141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730152, 33.556686, 18.005117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140715, 0.132077, 0.981201,
		0.257626, 0.952035, -0.165097,
		-0.955944, 0.276014, 0.099939,
		43.443371, 33.639492, 18.035099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139580, 33.845776, 18.457262>,  <44.112530, 33.446281, 17.965141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139580, 33.845776, 18.457262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744015, 33.787319, 18.446772>,  <43.506676, 33.752247, 18.440477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744015, 33.787319, 18.446772>,  <44.139580, 33.845776, 18.457262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744015, 33.787319, 18.446772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048835, 0.153362, 0.986963,
		-0.140213, 0.977304, -0.158799,
		-0.988916, -0.146140, -0.026224,
		43.447338, 33.743477, 18.438904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757526, 34.440689, 18.796547>,  <44.139580, 33.845776, 18.457262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757526, 34.440689, 18.796547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576000, 34.084438, 18.808170>,  <43.467087, 33.870689, 18.815145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576000, 34.084438, 18.808170>,  <43.757526, 34.440689, 18.796547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576000, 34.084438, 18.808170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061639, 0.001159, 0.998098,
		-0.888963, 0.454740, 0.054372,
		-0.453812, -0.890624, 0.029060,
		43.439857, 33.817249, 18.816889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236038, 34.545940, 19.223009>,  <43.757526, 34.440689, 18.796547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236038, 34.545940, 19.223009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281006, 34.148914, 19.204386>,  <43.307987, 33.910698, 19.193211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281006, 34.148914, 19.204386>,  <43.236038, 34.545940, 19.223009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281006, 34.148914, 19.204386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075402, -0.055243, 0.995622,
		-0.990796, -0.108415, -0.081052,
		0.112418, -0.992569, -0.046560,
		43.314732, 33.851143, 19.190418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785172, 34.312572, 19.730246>,  <43.236038, 34.545940, 19.223009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785172, 34.312572, 19.730246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009396, 33.989590, 19.656733>,  <43.143932, 33.795799, 19.612625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009396, 33.989590, 19.656733>,  <42.785172, 34.312572, 19.730246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009396, 33.989590, 19.656733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116608, -0.296685, 0.947829,
		-0.819861, -0.509887, -0.260467,
		0.560563, -0.807461, -0.183784,
		43.177563, 33.747353, 19.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366489, 33.718086, 19.986088>,  <42.785172, 34.312572, 19.730246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366489, 33.718086, 19.986088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747952, 33.598263, 19.974665>,  <42.976830, 33.526371, 19.967812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747952, 33.598263, 19.974665>,  <42.366489, 33.718086, 19.986088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747952, 33.598263, 19.974665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045501, -0.237366, 0.970354,
		-0.297455, -0.924080, -0.239995,
		0.953651, -0.299557, -0.028559,
		43.034046, 33.508396, 19.966097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402592, 33.028412, 20.364481>,  <42.366489, 33.718086, 19.986088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402592, 33.028412, 20.364481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761669, 33.203308, 20.386280>,  <42.977116, 33.308247, 20.399361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761669, 33.203308, 20.386280>,  <42.402592, 33.028412, 20.364481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761669, 33.203308, 20.386280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134750, -0.390182, 0.910824,
		0.419514, -0.810295, -0.409182,
		0.897692, 0.437241, 0.054500,
		43.030975, 33.334480, 20.402630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779797, 32.523964, 20.685392>,  <42.402592, 33.028412, 20.364481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779797, 32.523964, 20.685392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015736, 32.845966, 20.710829>,  <43.157299, 33.039165, 20.726091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015736, 32.845966, 20.710829>,  <42.779797, 32.523964, 20.685392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015736, 32.845966, 20.710829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347316, -0.324006, 0.879995,
		0.729004, -0.496980, -0.470706,
		0.589851, 0.805004, 0.063592,
		43.192692, 33.087467, 20.729906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383327, 32.257286, 21.073662>,  <42.779797, 32.523964, 20.685392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383327, 32.257286, 21.073662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421951, 32.654835, 21.095179>,  <43.445126, 32.893364, 21.108089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421951, 32.654835, 21.095179>,  <43.383327, 32.257286, 21.073662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421951, 32.654835, 21.095179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529197, -0.097034, 0.842933,
		0.842988, -0.052922, -0.535323,
		0.096555, 0.993873, 0.053792,
		43.450916, 32.952995, 21.111317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086773, 32.393219, 21.450598>,  <43.383327, 32.257286, 21.073662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086773, 32.393219, 21.450598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874657, 32.726654, 21.512461>,  <43.747387, 32.926716, 21.549578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874657, 32.726654, 21.512461>,  <44.086773, 32.393219, 21.450598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874657, 32.726654, 21.512461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260797, -0.013184, 0.965304,
		0.806705, 0.552229, -0.210406,
		-0.530295, 0.833588, 0.154655,
		43.715569, 32.976730, 21.558857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591709, 32.797554, 21.869942>,  <44.086773, 32.393219, 21.450598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591709, 32.797554, 21.869942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222942, 32.933567, 21.944178>,  <44.001682, 33.015175, 21.988720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222942, 32.933567, 21.944178>,  <44.591709, 32.797554, 21.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222942, 32.933567, 21.944178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277976, 0.247008, 0.928287,
		0.269805, 0.907395, -0.322242,
		-0.921919, 0.340032, 0.185590,
		43.946365, 33.035576, 21.999855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620857, 33.322163, 22.336258>,  <44.591709, 32.797554, 21.869942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620857, 33.322163, 22.336258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230404, 33.238594, 22.359970>,  <43.996132, 33.188454, 22.374197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230404, 33.238594, 22.359970>,  <44.620857, 33.322163, 22.336258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230404, 33.238594, 22.359970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023203, 0.171077, 0.984984,
		-0.215929, 0.962852, -0.162146,
		-0.976133, -0.208924, 0.059282,
		43.937565, 33.175919, 22.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256363, 33.973797, 22.624325>,  <44.620857, 33.322163, 22.336258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256363, 33.973797, 22.624325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066219, 33.629730, 22.698238>,  <43.952133, 33.423290, 22.742586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066219, 33.629730, 22.698238>,  <44.256363, 33.973797, 22.624325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066219, 33.629730, 22.698238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099160, 0.261078, 0.960211,
		-0.874184, 0.438125, -0.209401,
		-0.475362, -0.860166, 0.184785,
		43.923611, 33.371681, 22.753674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779442, 34.156696, 23.150404>,  <44.256363, 33.973797, 22.624325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779442, 34.156696, 23.150404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761517, 33.757179, 23.158379>,  <43.750763, 33.517467, 23.163164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761517, 33.757179, 23.158379>,  <43.779442, 34.156696, 23.150404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761517, 33.757179, 23.158379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064671, 0.022817, 0.997646,
		-0.996900, 0.043420, -0.065616,
		-0.044815, -0.998797, 0.019939,
		43.748074, 33.457539, 23.164360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230797, 34.005085, 23.648540>,  <43.779442, 34.156696, 23.150404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230797, 34.005085, 23.648540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413452, 33.652809, 23.598167>,  <43.523045, 33.441444, 23.567944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413452, 33.652809, 23.598167>,  <43.230797, 34.005085, 23.648540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413452, 33.652809, 23.598167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222168, -0.249952, 0.942425,
		-0.861465, -0.402371, -0.309801,
		0.456640, -0.880694, -0.125931,
		43.550446, 33.388599, 23.560389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900158, 33.700066, 24.197287>,  <43.230797, 34.005085, 23.648540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900158, 33.700066, 24.197287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232868, 33.487919, 24.131720>,  <43.432495, 33.360630, 24.092379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232868, 33.487919, 24.131720>,  <42.900158, 33.700066, 24.197287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232868, 33.487919, 24.131720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017758, -0.320559, 0.947062,
		-0.554833, -0.784829, -0.276050,
		0.831772, -0.530364, -0.163920,
		43.482399, 33.328812, 24.082544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741249, 33.019909, 24.512911>,  <42.900158, 33.700066, 24.197287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741249, 33.019909, 24.512911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135448, 33.081795, 24.485020>,  <43.371967, 33.118927, 24.468285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135448, 33.081795, 24.485020>,  <42.741249, 33.019909, 24.512911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135448, 33.081795, 24.485020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128469, -0.411700, 0.902219,
		0.110878, -0.898091, -0.425604,
		0.985495, 0.154713, -0.069728,
		43.431099, 33.128208, 24.464102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974018, 32.414623, 24.807119>,  <42.741249, 33.019909, 24.512911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974018, 32.414623, 24.807119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264465, 32.689651, 24.807222>,  <43.438732, 32.854668, 24.807283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264465, 32.689651, 24.807222>,  <42.974018, 32.414623, 24.807119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264465, 32.689651, 24.807222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200734, -0.212344, 0.956356,
		0.657615, -0.694376, -0.292206,
		0.726118, 0.687569, 0.000256,
		43.482300, 32.895924, 24.807299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533321, 32.057362, 25.163752>,  <42.974018, 32.414623, 24.807119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533321, 32.057362, 25.163752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666672, 32.433426, 25.191900>,  <43.746681, 32.659065, 25.208790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666672, 32.433426, 25.191900>,  <43.533321, 32.057362, 25.163752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666672, 32.433426, 25.191900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449856, -0.224221, 0.864496,
		0.828547, -0.256545, -0.497689,
		0.333374, 0.940165, 0.070370,
		43.766685, 32.715477, 25.213011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245552, 32.079388, 25.457218>,  <43.533321, 32.057362, 25.163752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245552, 32.079388, 25.457218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124546, 32.452248, 25.536797>,  <44.051945, 32.675964, 25.584543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124546, 32.452248, 25.536797>,  <44.245552, 32.079388, 25.457218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124546, 32.452248, 25.536797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393297, -0.068049, 0.916890,
		0.868218, 0.355615, -0.346026,
		-0.302513, 0.932152, 0.198944,
		44.033791, 32.731892, 25.596479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793373, 32.401741, 25.730904>,  <44.245552, 32.079388, 25.457218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793373, 32.401741, 25.730904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476894, 32.613430, 25.853497>,  <44.287006, 32.740444, 25.927053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476894, 32.613430, 25.853497>,  <44.793373, 32.401741, 25.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476894, 32.613430, 25.853497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354253, -0.011907, 0.935074,
		0.498508, 0.848402, -0.178057,
		-0.791198, 0.529218, 0.306484,
		44.239536, 32.772194, 25.945442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956818, 33.066643, 26.165089>,  <44.793373, 32.401741, 25.730904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956818, 33.066643, 26.165089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584629, 32.981773, 26.284565>,  <44.361317, 32.930851, 26.356251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584629, 32.981773, 26.284565>,  <44.956818, 33.066643, 26.165089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584629, 32.981773, 26.284565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315863, -0.051464, 0.947408,
		-0.185639, 0.975877, 0.114902,
		-0.930467, -0.212169, 0.298689,
		44.305489, 32.918121, 26.374172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968964, 33.473152, 26.744408>,  <44.956818, 33.066643, 26.165089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968964, 33.473152, 26.744408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672394, 33.208656, 26.790102>,  <44.494453, 33.049957, 26.817518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672394, 33.208656, 26.790102>,  <44.968964, 33.473152, 26.744408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672394, 33.208656, 26.790102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302139, -0.176957, 0.936695,
		-0.599165, 0.729005, 0.330987,
		-0.741426, -0.661240, 0.114234,
		44.449966, 33.010284, 26.824371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908405, 33.462437, 27.462042>,  <44.968964, 33.473152, 26.744408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908405, 33.462437, 27.462042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706375, 33.130230, 27.368122>,  <44.585155, 32.930904, 27.311769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706375, 33.130230, 27.368122>,  <44.908405, 33.462437, 27.462042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706375, 33.130230, 27.368122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332209, -0.438172, 0.835250,
		-0.796575, 0.343865, 0.497218,
		-0.505080, -0.830519, -0.234801,
		44.554852, 32.881073, 27.297682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529655, 33.180496, 28.118332>,  <44.908405, 33.462437, 27.462042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529655, 33.180496, 28.118332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556576, 32.878609, 27.857296>,  <44.572727, 32.697475, 27.700674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556576, 32.878609, 27.857296>,  <44.529655, 33.180496, 28.118332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556576, 32.878609, 27.857296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295968, -0.609534, 0.735440,
		-0.952824, -0.242639, 0.182352,
		0.067297, -0.754715, -0.652592,
		44.576763, 32.652195, 27.661518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313118, 32.672153, 28.438269>,  <44.529655, 33.180496, 28.118332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313118, 32.672153, 28.438269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508209, 32.466938, 28.155733>,  <44.625263, 32.343807, 27.986212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508209, 32.466938, 28.155733>,  <44.313118, 32.672153, 28.438269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508209, 32.466938, 28.155733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190733, -0.726925, 0.659697,
		-0.851906, -0.456473, -0.256686,
		0.487726, -0.513042, -0.706337,
		44.654526, 32.313026, 27.943832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198215, 32.095821, 28.641535>,  <44.313118, 32.672153, 28.438269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198215, 32.095821, 28.641535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500668, 32.062527, 28.381893>,  <44.682140, 32.042549, 28.226109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500668, 32.062527, 28.381893>,  <44.198215, 32.095821, 28.641535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500668, 32.062527, 28.381893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342424, -0.794939, 0.500817,
		-0.557684, -0.600953, -0.572577,
		0.756131, -0.083233, -0.649105,
		44.727509, 32.037556, 28.187162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309856, 31.400732, 28.819599>,  <44.198215, 32.095821, 28.641535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309856, 31.400732, 28.819599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627792, 31.498543, 28.597454>,  <44.818554, 31.557230, 28.464167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627792, 31.498543, 28.597454>,  <44.309856, 31.400732, 28.819599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627792, 31.498543, 28.597454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571750, -0.608391, 0.550420,
		-0.203285, -0.755027, -0.623385,
		0.794844, 0.244528, -0.555364,
		44.866245, 31.571901, 28.430845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620438, 30.809391, 28.463228>,  <44.309856, 31.400732, 28.819599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620438, 30.809391, 28.463228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902515, 31.086983, 28.521318>,  <45.071762, 31.253538, 28.556173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902515, 31.086983, 28.521318>,  <44.620438, 30.809391, 28.463228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902515, 31.086983, 28.521318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522745, -0.647285, 0.554760,
		0.478997, -0.315297, -0.819237,
		0.705195, 0.693981, 0.145227,
		45.114075, 31.295177, 28.564886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244312, 30.454870, 28.565208>,  <44.620438, 30.809391, 28.463228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244312, 30.454870, 28.565208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315575, 30.814291, 28.725641>,  <45.358334, 31.029943, 28.821901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315575, 30.814291, 28.725641>,  <45.244312, 30.454870, 28.565208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315575, 30.814291, 28.725641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522173, -0.431810, 0.735443,
		0.834023, 0.078408, -0.546129,
		0.178160, 0.898550, 0.401082,
		45.369022, 31.083857, 28.845966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870094, 30.323824, 28.822889>,  <45.244312, 30.454870, 28.565208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870094, 30.323824, 28.822889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699833, 30.633989, 29.009462>,  <45.597675, 30.820089, 29.121407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699833, 30.633989, 29.009462>,  <45.870094, 30.323824, 28.822889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699833, 30.633989, 29.009462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496688, -0.230660, 0.836718,
		0.756389, 0.587819, -0.286958,
		-0.425649, 0.775413, 0.466431,
		45.572140, 30.866613, 29.149391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420300, 30.485315, 29.234203>,  <45.870094, 30.323824, 28.822889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420300, 30.485315, 29.234203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088249, 30.650690, 29.383850>,  <45.889019, 30.749914, 29.473639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088249, 30.650690, 29.383850>,  <46.420300, 30.485315, 29.234203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088249, 30.650690, 29.383850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375902, -0.080596, 0.923148,
		0.411816, 0.906959, -0.088507,
		-0.830124, 0.413437, 0.374118,
		45.839211, 30.774721, 29.496086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683899, 31.025278, 29.616911>,  <46.420300, 30.485315, 29.234203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683899, 31.025278, 29.616911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319553, 30.928316, 29.750519>,  <46.100945, 30.870138, 29.830683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319553, 30.928316, 29.750519>,  <46.683899, 31.025278, 29.616911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319553, 30.928316, 29.750519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408134, -0.408880, 0.816238,
		-0.061288, 0.879805, 0.471368,
		-0.910862, -0.242407, 0.334019,
		46.046295, 30.855595, 29.850725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719948, 31.114960, 30.350611>,  <46.683899, 31.025278, 29.616911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719948, 31.114960, 30.350611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381031, 30.905918, 30.312696>,  <46.177681, 30.780493, 30.289948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381031, 30.905918, 30.312696>,  <46.719948, 31.114960, 30.350611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381031, 30.905918, 30.312696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276742, -0.586706, 0.761046,
		-0.453337, 0.618595, 0.641736,
		-0.847290, -0.522605, -0.094784,
		46.126842, 30.749136, 30.284262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498402, 31.049128, 31.019072>,  <46.719948, 31.114960, 30.350611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498402, 31.049128, 31.019072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332771, 30.748156, 30.814177>,  <46.233395, 30.567572, 30.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332771, 30.748156, 30.814177>,  <46.498402, 31.049128, 31.019072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332771, 30.748156, 30.814177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170451, -0.616891, 0.768370,
		-0.894141, 0.230851, 0.383692,
		-0.414075, -0.752432, -0.512239,
		46.208549, 30.522427, 30.660505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852215, 30.847399, 31.285774>,  <46.498402, 31.049128, 31.019072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852215, 30.847399, 31.285774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056705, 30.554842, 31.105232>,  <46.179398, 30.379309, 30.996908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056705, 30.554842, 31.105232>,  <45.852215, 30.847399, 31.285774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056705, 30.554842, 31.105232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098293, -0.471965, 0.876121,
		-0.853809, -0.492258, -0.169388,
		0.511223, -0.731390, -0.451353,
		46.210072, 30.335424, 30.969826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775097, 30.304838, 31.751081>,  <45.852215, 30.847399, 31.285774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775097, 30.304838, 31.751081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085690, 30.198763, 31.522434>,  <46.272045, 30.135118, 31.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085690, 30.198763, 31.522434>,  <45.775097, 30.304838, 31.751081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085690, 30.198763, 31.522434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320197, -0.615243, 0.720382,
		-0.542718, -0.742396, -0.392817,
		0.776487, -0.265185, -0.571616,
		46.318634, 30.119207, 31.350948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813358, 29.545027, 31.746971>,  <45.775097, 30.304838, 31.751081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813358, 29.545027, 31.746971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166042, 29.698404, 31.637018>,  <46.377651, 29.790430, 31.571047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166042, 29.698404, 31.637018>,  <45.813358, 29.545027, 31.746971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166042, 29.698404, 31.637018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469213, -0.651809, 0.595806,
		0.049285, -0.654307, -0.754622,
		0.881709, 0.383443, -0.274884,
		46.430553, 29.813437, 31.554552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329071, 29.046135, 31.820515>,  <45.813358, 29.545027, 31.746971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329071, 29.046135, 31.820515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552315, 29.377981, 31.826773>,  <46.686260, 29.577089, 31.830528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.552315, 29.377981, 31.826773>,  <46.329071, 29.046135, 31.820515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552315, 29.377981, 31.826773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574488, -0.399946, 0.714148,
		0.598727, -0.389586, -0.699820,
		0.558112, 0.829618, 0.015646,
		46.719749, 29.626867, 31.831467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112240, 28.889479, 31.627092>,  <46.329071, 29.046135, 31.820515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112240, 28.889479, 31.627092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.063957, 29.210661, 31.860567>,  <47.034988, 29.403370, 32.000652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.063957, 29.210661, 31.860567>,  <47.112240, 28.889479, 31.627092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063957, 29.210661, 31.860567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608516, -0.404705, 0.682585,
		0.784307, 0.437577, -0.439761,
		-0.120710, 0.802958, 0.583685,
		47.027744, 29.451548, 32.035671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214211, 28.622194, 32.284676>,  <47.112240, 28.889479, 31.627092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214211, 28.622194, 32.284676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151180, 28.947590, 32.508606>,  <47.113361, 29.142826, 32.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151180, 28.947590, 32.508606>,  <47.214211, 28.622194, 32.284676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151180, 28.947590, 32.508606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273356, -0.580691, 0.766860,
		0.948919, -0.032194, 0.313874,
		-0.157575, 0.813487, 0.559829,
		47.103909, 29.191637, 32.676556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450596, 28.357927, 33.016346>,  <47.214211, 28.622194, 32.284676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450596, 28.357927, 33.016346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196365, 28.665792, 33.040569>,  <47.043827, 28.850512, 33.055103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.196365, 28.665792, 33.040569>,  <47.450596, 28.357927, 33.016346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.196365, 28.665792, 33.040569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293596, -0.313495, 0.903063,
		0.714037, 0.556183, 0.425218,
		-0.635573, 0.769663, 0.060554,
		47.005695, 28.896690, 33.058735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551224, 28.841412, 33.528564>,  <47.450596, 28.357927, 33.016346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551224, 28.841412, 33.528564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.158981, 28.813438, 33.455334>,  <46.923634, 28.796656, 33.411396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.158981, 28.813438, 33.455334>,  <47.551224, 28.841412, 33.528564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.158981, 28.813438, 33.455334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147113, -0.354524, 0.923402,
		-0.129480, 0.932428, 0.337361,
		-0.980608, -0.069932, -0.183076,
		46.864799, 28.792459, 33.400410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202507, 28.637836, 34.140682>,  <47.551224, 28.841412, 33.528564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202507, 28.637836, 34.140682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150440, 28.284941, 33.959702>,  <47.119202, 28.073202, 33.851112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150440, 28.284941, 33.959702>,  <47.202507, 28.637836, 34.140682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150440, 28.284941, 33.959702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364008, -0.466986, 0.805867,
		-0.922255, -0.059798, 0.381929,
		-0.130166, -0.882240, -0.452447,
		47.111389, 28.020269, 33.823967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778328, 28.205553, 34.602257>,  <47.202507, 28.637836, 34.140682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778328, 28.205553, 34.602257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.036572, 28.011320, 34.366493>,  <47.191517, 27.894781, 34.225037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.036572, 28.011320, 34.366493>,  <46.778328, 28.205553, 34.602257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.036572, 28.011320, 34.366493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233797, -0.609073, 0.757871,
		-0.727002, -0.627088, -0.279693,
		0.645606, -0.485583, -0.589409,
		47.230255, 27.865646, 34.189671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752602, 27.452005, 34.668167>,  <46.778328, 28.205553, 34.602257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752602, 27.452005, 34.668167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118580, 27.527288, 34.525364>,  <47.338165, 27.572458, 34.439682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118580, 27.527288, 34.525364>,  <46.752602, 27.452005, 34.668167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118580, 27.527288, 34.525364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402394, -0.493263, 0.771213,
		-0.030954, -0.849276, -0.527041,
		0.914943, 0.188206, -0.357012,
		47.393063, 27.583750, 34.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378578, 27.414673, 35.341797>,  <46.752602, 27.452005, 34.668167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378578, 27.414673, 35.341797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442238, 27.248936, 35.700237>,  <46.480434, 27.149492, 35.915302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442238, 27.248936, 35.700237>,  <46.378578, 27.414673, 35.341797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442238, 27.248936, 35.700237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089558, 0.909983, 0.404859,
		-0.983184, 0.015819, 0.181932,
		0.159151, -0.414345, 0.896097,
		46.489983, 27.124632, 35.969067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553043, 27.473003, 35.378128>,  <46.378578, 27.414673, 35.341797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553043, 27.473003, 35.378128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456615, 27.605865, 35.013371>,  <45.398758, 27.685583, 34.794514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456615, 27.605865, 35.013371>,  <45.553043, 27.473003, 35.378128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456615, 27.605865, 35.013371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046030, -0.942466, -0.331119,
		-0.969416, -0.037848, 0.242489,
		-0.241070, 0.332154, -0.911899,
		45.384293, 27.705511, 34.739799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847870, 27.202286, 35.128277>,  <45.553043, 27.473003, 35.378128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847870, 27.202286, 35.128277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123096, 27.288424, 34.851097>,  <45.288235, 27.340107, 34.684788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123096, 27.288424, 34.851097>,  <44.847870, 27.202286, 35.128277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123096, 27.288424, 34.851097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033031, -0.963256, -0.266547,
		-0.724891, 0.160515, -0.669902,
		0.688071, 0.215345, -0.692954,
		45.329517, 27.353027, 34.643211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537395, 27.703861, 34.697113>,  <44.847870, 27.202286, 35.128277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537395, 27.703861, 34.697113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326069, 27.962452, 34.917274>,  <44.199272, 28.117607, 35.049370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326069, 27.962452, 34.917274>,  <44.537395, 27.703861, 34.697113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326069, 27.962452, 34.917274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506844, 0.279941, -0.815317,
		-0.681165, -0.709717, 0.179765,
		-0.528321, 0.646479, 0.550402,
		44.167572, 28.156395, 35.082394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735786, 27.779139, 34.645031>,  <44.537395, 27.703861, 34.697113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735786, 27.779139, 34.645031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918983, 28.129539, 34.705505>,  <44.028904, 28.339781, 34.741791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918983, 28.129539, 34.705505>,  <43.735786, 27.779139, 34.645031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918983, 28.129539, 34.705505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334618, 0.327447, -0.883634,
		-0.823572, 0.354112, 0.443096,
		0.457996, 0.876004, 0.151184,
		44.056381, 28.392342, 34.750862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142715, 27.785614, 34.957191>,  <43.735786, 27.779139, 34.645031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142715, 27.785614, 34.957191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826473, 27.641539, 35.155266>,  <42.636726, 27.555094, 35.274109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826473, 27.641539, 35.155266>,  <43.142715, 27.785614, 34.957191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826473, 27.641539, 35.155266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421573, 0.906693, -0.013569,
		-0.444091, -0.219484, -0.868683,
		-0.790607, -0.360187, 0.495182,
		42.589291, 27.533482, 35.303822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481232, 27.891577, 34.563480>,  <43.142715, 27.785614, 34.957191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481232, 27.891577, 34.563480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446941, 27.885807, 34.961967>,  <42.426365, 27.882345, 35.201057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446941, 27.885807, 34.961967>,  <42.481232, 27.891577, 34.563480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446941, 27.885807, 34.961967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295594, 0.955243, -0.011609,
		-0.951459, -0.295470, -0.086155,
		-0.085729, -0.014422, 0.996214,
		42.421223, 27.881481, 35.260830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764996, 28.085648, 34.804695>,  <42.481232, 27.891577, 34.563480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764996, 28.085648, 34.804695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021584, 28.178696, 35.097107>,  <42.175537, 28.234524, 35.272552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021584, 28.178696, 35.097107>,  <41.764996, 28.085648, 34.804695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021584, 28.178696, 35.097107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427385, 0.899704, 0.088735,
		-0.637069, -0.369352, 0.676552,
		0.641471, 0.232618, 0.731029,
		42.214024, 28.248482, 35.316414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564777, 28.190666, 35.493473>,  <41.764996, 28.085648, 34.804695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564777, 28.190666, 35.493473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885178, 28.428595, 35.466393>,  <42.077419, 28.571352, 35.450146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885178, 28.428595, 35.466393>,  <41.564777, 28.190666, 35.493473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885178, 28.428595, 35.466393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593876, 0.803772, 0.035517,
		0.075540, 0.011755, 0.997074,
		0.801002, 0.594821, -0.067698,
		42.125477, 28.607040, 35.446083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630051, 28.698202, 36.112366>,  <41.564777, 28.190666, 35.493473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630051, 28.698202, 36.112366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799072, 28.838461, 35.778061>,  <41.900486, 28.922617, 35.577477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799072, 28.838461, 35.778061>,  <41.630051, 28.698202, 36.112366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799072, 28.838461, 35.778061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479925, 0.868804, 0.121864,
		0.768843, 0.349609, 0.535400,
		0.422553, 0.350646, -0.835761,
		41.925838, 28.943655, 35.527332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670647, 29.401775, 36.324337>,  <41.630051, 28.698202, 36.112366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670647, 29.401775, 36.324337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782932, 29.428288, 35.941338>,  <41.850304, 29.444195, 35.711536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782932, 29.428288, 35.941338>,  <41.670647, 29.401775, 36.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782932, 29.428288, 35.941338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362599, 0.931005, -0.041855,
		0.888663, 0.358938, 0.285378,
		0.280712, 0.066283, -0.957501,
		41.867146, 29.448172, 35.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068966, 30.020243, 36.246674>,  <41.670647, 29.401775, 36.324337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068966, 30.020243, 36.246674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924423, 29.956163, 35.879250>,  <41.837700, 29.917715, 35.658794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924423, 29.956163, 35.879250>,  <42.068966, 30.020243, 36.246674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924423, 29.956163, 35.879250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155940, 0.981639, -0.109853,
		0.919296, 0.103545, -0.379701,
		-0.361355, -0.160198, -0.918564,
		41.816017, 29.908104, 35.603680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256432, 30.612108, 35.981888>,  <42.068966, 30.020243, 36.246674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256432, 30.612108, 35.981888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983582, 30.472252, 35.724998>,  <41.819870, 30.388338, 35.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983582, 30.472252, 35.724998>,  <42.256432, 30.612108, 35.981888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983582, 30.472252, 35.724998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171514, 0.930279, -0.324291,
		0.710832, -0.111058, -0.694539,
		-0.682130, -0.349640, -0.642223,
		41.778942, 30.367359, 35.532330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424725, 30.829605, 35.243858>,  <42.256432, 30.612108, 35.981888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424725, 30.829605, 35.243858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034065, 30.762733, 35.297821>,  <41.799667, 30.722610, 35.330200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034065, 30.762733, 35.297821>,  <42.424725, 30.829605, 35.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034065, 30.762733, 35.297821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208413, 0.889645, -0.406319,
		-0.052094, -0.424950, -0.903717,
		-0.976652, -0.167180, 0.134910,
		41.741070, 30.712580, 35.338295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099815, 31.107498, 34.621277>,  <42.424725, 30.829605, 35.243858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099815, 31.107498, 34.621277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820751, 31.072889, 34.905750>,  <41.653313, 31.052124, 35.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820751, 31.072889, 34.905750>,  <42.099815, 31.107498, 34.621277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820751, 31.072889, 34.905750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418986, 0.854497, -0.307060,
		-0.581141, -0.512200, -0.632397,
		-0.697657, -0.086520, 0.711188,
		41.611454, 31.046934, 35.119106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484570, 31.201477, 34.209507>,  <42.099815, 31.107498, 34.621277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484570, 31.201477, 34.209507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457001, 31.268934, 34.602814>,  <41.440460, 31.309408, 34.838799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457001, 31.268934, 34.602814>,  <41.484570, 31.201477, 34.209507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457001, 31.268934, 34.602814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311677, 0.932633, -0.181806,
		-0.947686, -0.318991, -0.011712,
		-0.068918, 0.168644, 0.983265,
		41.436325, 31.319527, 34.897793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028698, 31.672991, 34.226200>,  <41.484570, 31.201477, 34.209507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028698, 31.672991, 34.226200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088844, 31.699730, 34.620747>,  <41.124931, 31.715773, 34.857475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088844, 31.699730, 34.620747>,  <41.028698, 31.672991, 34.226200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088844, 31.699730, 34.620747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390703, 0.920513, -0.002824,
		-0.908153, -0.384952, 0.164533,
		0.150367, 0.066848, 0.986368,
		41.133953, 31.719784, 34.916656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513496, 32.205280, 34.483429>,  <41.028698, 31.672991, 34.226200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513496, 32.205280, 34.483429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764065, 32.141113, 34.788551>,  <40.914406, 32.102612, 34.971622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764065, 32.141113, 34.788551>,  <40.513496, 32.205280, 34.483429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764065, 32.141113, 34.788551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323526, 0.836816, 0.441667,
		-0.709178, -0.523454, 0.472295,
		0.626416, -0.160421, 0.762803,
		40.951988, 32.092987, 35.017391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067188, 32.572174, 34.873508>,  <40.513496, 32.205280, 34.483429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067188, 32.572174, 34.873508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410942, 32.463818, 35.046978>,  <40.617195, 32.398804, 35.151058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410942, 32.463818, 35.046978>,  <40.067188, 32.572174, 34.873508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410942, 32.463818, 35.046978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029904, 0.820055, 0.571503,
		-0.510451, -0.504110, 0.696644,
		0.859387, -0.270891, 0.433673,
		40.668758, 32.382549, 35.177078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972076, 32.626274, 35.527988>,  <40.067188, 32.572174, 34.873508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972076, 32.626274, 35.527988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366505, 32.663261, 35.472683>,  <40.603161, 32.685455, 35.439499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366505, 32.663261, 35.472683>,  <39.972076, 32.626274, 35.527988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366505, 32.663261, 35.472683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018990, 0.888389, 0.458698,
		0.165250, -0.449682, 0.877769,
		0.986069, 0.092469, -0.138267,
		40.662327, 32.691002, 35.431202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168148, 33.042885, 36.096298>,  <39.972076, 32.626274, 35.527988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168148, 33.042885, 36.096298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493462, 33.058235, 35.864059>,  <40.688648, 33.067444, 35.724716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493462, 33.058235, 35.864059>,  <40.168148, 33.042885, 36.096298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493462, 33.058235, 35.864059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293520, 0.834508, 0.466308,
		0.502408, -0.549658, 0.667429,
		0.813285, 0.038373, -0.580599,
		40.737446, 33.069748, 35.689880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738995, 33.205177, 36.519627>,  <40.168148, 33.042885, 36.096298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738995, 33.205177, 36.519627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843052, 33.340904, 36.158031>,  <40.905487, 33.422340, 35.941074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843052, 33.340904, 36.158031>,  <40.738995, 33.205177, 36.519627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843052, 33.340904, 36.158031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251050, 0.880251, 0.402656,
		0.932361, -0.331694, 0.143809,
		0.260147, 0.339317, -0.903984,
		40.921097, 33.442699, 35.886837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316437, 33.605282, 36.602276>,  <40.738995, 33.205177, 36.519627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316437, 33.605282, 36.602276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188915, 33.757893, 36.255219>,  <41.112404, 33.849461, 36.046986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188915, 33.757893, 36.255219>,  <41.316437, 33.605282, 36.602276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188915, 33.757893, 36.255219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275370, 0.913204, 0.300382,
		0.906939, -0.143161, -0.396190,
		-0.318799, 0.381527, -0.867643,
		41.093277, 33.872349, 35.994926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813545, 34.019070, 36.385593>,  <41.316437, 33.605282, 36.602276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813545, 34.019070, 36.385593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500629, 34.152386, 36.175095>,  <41.312878, 34.232376, 36.048794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500629, 34.152386, 36.175095>,  <41.813545, 34.019070, 36.385593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500629, 34.152386, 36.175095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218304, 0.937930, 0.269499,
		0.583404, 0.095946, -0.806495,
		-0.782294, 0.333288, -0.526247,
		41.265942, 34.252373, 36.017220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991001, 34.475670, 35.787926>,  <41.813545, 34.019070, 36.385593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991001, 34.475670, 35.787926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646645, 34.565617, 35.970486>,  <41.440029, 34.619587, 36.080021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646645, 34.565617, 35.970486>,  <41.991001, 34.475670, 35.787926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646645, 34.565617, 35.970486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337074, 0.924004, 0.180548,
		-0.381117, 0.309273, -0.871264,
		-0.860890, 0.224870, 0.456401,
		41.388378, 34.633080, 36.107407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666420, 34.929119, 35.305092>,  <41.991001, 34.475670, 35.787926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666420, 34.929119, 35.305092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557487, 34.979767, 35.686626>,  <41.492126, 35.010155, 35.915546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557487, 34.979767, 35.686626>,  <41.666420, 34.929119, 35.305092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557487, 34.979767, 35.686626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523334, 0.851349, 0.036408,
		-0.807438, 0.509090, -0.298113,
		-0.272334, 0.126616, 0.953836,
		41.475788, 35.017750, 35.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620701, 35.601795, 35.342098>,  <41.666420, 34.929119, 35.305092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620701, 35.601795, 35.342098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730438, 35.473644, 35.704777>,  <41.796280, 35.396755, 35.922382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730438, 35.473644, 35.704777>,  <41.620701, 35.601795, 35.342098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730438, 35.473644, 35.704777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586751, 0.802784, 0.106118,
		-0.761877, 0.502891, 0.408220,
		0.274347, -0.320373, 0.906695,
		41.812744, 35.377533, 35.976784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506958, 36.218143, 35.855068>,  <41.620701, 35.601795, 35.342098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506958, 36.218143, 35.855068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796776, 35.959183, 35.949654>,  <41.970665, 35.803806, 36.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796776, 35.959183, 35.949654>,  <41.506958, 36.218143, 35.855068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796776, 35.959183, 35.949654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655733, 0.753146, 0.052772,
		-0.212257, 0.116822, 0.970206,
		0.724542, -0.647397, 0.236465,
		42.014137, 35.764965, 36.020592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245281, 36.539558, 36.567268>,  <41.506958, 36.218143, 35.855068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245281, 36.539558, 36.567268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930458, 36.761574, 36.674953>,  <40.741566, 36.894783, 36.739563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930458, 36.761574, 36.674953>,  <41.245281, 36.539558, 36.567268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930458, 36.761574, 36.674953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609441, 0.767181, 0.200035,
		-0.095504, 0.321506, -0.942079,
		-0.787058, 0.555037, 0.269208,
		40.694340, 36.928085, 36.755714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193386, 37.173256, 36.205452>,  <41.245281, 36.539558, 36.567268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193386, 37.173256, 36.205452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964806, 37.231197, 36.528553>,  <40.827656, 37.265961, 36.722412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964806, 37.231197, 36.528553>,  <41.193386, 37.173256, 36.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964806, 37.231197, 36.528553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555006, 0.793267, 0.250392,
		-0.604492, 0.591393, -0.533707,
		-0.571453, 0.144850, 0.807750,
		40.793369, 37.274651, 36.770878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155922, 37.866119, 36.343418>,  <41.193386, 37.173256, 36.205452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155922, 37.866119, 36.343418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101318, 37.704651, 36.705284>,  <41.068554, 37.607769, 36.922401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101318, 37.704651, 36.705284>,  <41.155922, 37.866119, 36.343418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101318, 37.704651, 36.705284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502511, 0.758781, 0.414409,
		-0.853726, 0.511173, 0.099269,
		-0.136511, -0.403676, 0.904660,
		41.060364, 37.583549, 36.976681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773354, 38.341007, 36.771317>,  <41.155922, 37.866119, 36.343418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773354, 38.341007, 36.771317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055405, 38.153435, 36.984070>,  <41.224636, 38.040894, 37.111721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055405, 38.153435, 36.984070>,  <40.773354, 38.341007, 36.771317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055405, 38.153435, 36.984070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448178, 0.876010, 0.178167,
		-0.549486, 0.112751, 0.827860,
		0.705125, -0.468929, 0.531888,
		41.266941, 38.012756, 37.143635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723339, 38.467827, 37.526821>,  <40.773354, 38.341007, 36.771317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723339, 38.467827, 37.526821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099789, 38.390408, 37.415951>,  <41.325657, 38.343956, 37.349430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099789, 38.390408, 37.415951>,  <40.723339, 38.467827, 37.526821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099789, 38.390408, 37.415951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269553, 0.924447, 0.269700,
		0.204030, -0.328534, 0.922192,
		0.941123, -0.193553, -0.277172,
		41.382126, 38.332340, 37.332798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186859, 38.487644, 38.137794>,  <40.723339, 38.467827, 37.526821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186859, 38.487644, 38.137794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394161, 38.569164, 37.805557>,  <41.518543, 38.618076, 37.606216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394161, 38.569164, 37.805557>,  <41.186859, 38.487644, 38.137794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394161, 38.569164, 37.805557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239951, 0.897531, 0.369949,
		0.820876, -0.391028, 0.416245,
		0.518253, 0.203804, -0.830589,
		41.549637, 38.630306, 37.556381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934868, 38.583057, 38.226196>,  <41.186859, 38.487644, 38.137794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934868, 38.583057, 38.226196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789589, 38.774952, 37.906712>,  <41.702423, 38.890087, 37.715019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789589, 38.774952, 37.906712>,  <41.934868, 38.583057, 38.226196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789589, 38.774952, 37.906712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328644, 0.868117, 0.371975,
		0.871827, -0.127394, -0.472958,
		-0.363196, 0.479732, -0.798715,
		41.680630, 38.918873, 37.667095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692341, 39.285248, 38.535362>,  <41.934868, 38.583057, 38.226196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692341, 39.285248, 38.535362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881012, 39.567905, 38.324394>,  <41.994213, 39.737499, 38.197811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881012, 39.567905, 38.324394>,  <41.692341, 39.285248, 38.535362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881012, 39.567905, 38.324394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187613, -0.664867, -0.723017,
		-0.861583, 0.242077, -0.446176,
		0.471673, 0.706647, -0.527422,
		42.022514, 39.779900, 38.166168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453453, 39.439018, 37.840115>,  <41.692341, 39.285248, 38.535362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453453, 39.439018, 37.840115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847122, 39.495361, 37.883141>,  <42.083324, 39.529167, 37.908955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847122, 39.495361, 37.883141>,  <41.453453, 39.439018, 37.840115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847122, 39.495361, 37.883141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177225, -0.787107, -0.590808,
		0.001441, 0.600518, -0.799610,
		0.984169, 0.140859, 0.107561,
		42.142372, 39.537621, 37.915409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606251, 39.621479, 37.213379>,  <41.453453, 39.439018, 37.840115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606251, 39.621479, 37.213379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873638, 39.440449, 37.449455>,  <42.034069, 39.331829, 37.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873638, 39.440449, 37.449455>,  <41.606251, 39.621479, 37.213379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873638, 39.440449, 37.449455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023943, -0.780035, -0.625278,
		0.743355, 0.432109, -0.510593,
		0.668469, -0.452578, 0.590189,
		42.074181, 39.304676, 37.626511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158607, 39.423649, 36.788250>,  <41.606251, 39.621479, 37.213379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158607, 39.423649, 36.788250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111217, 39.190670, 37.109924>,  <42.082783, 39.050884, 37.302929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111217, 39.190670, 37.109924>,  <42.158607, 39.423649, 36.788250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111217, 39.190670, 37.109924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254430, -0.765048, -0.591580,
		0.959807, -0.274698, -0.057552,
		-0.118476, -0.582445, 0.804190,
		42.075676, 39.015938, 37.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427906, 38.676781, 36.622734>,  <42.158607, 39.423649, 36.788250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427906, 38.676781, 36.622734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194187, 38.633194, 36.944412>,  <42.053955, 38.607044, 37.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194187, 38.633194, 36.944412>,  <42.427906, 38.676781, 36.622734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194187, 38.633194, 36.944412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368969, -0.846936, -0.382834,
		0.722816, -0.520410, 0.454655,
		-0.584294, -0.108965, 0.804194,
		42.018898, 38.600506, 37.185669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604771, 38.049820, 37.011547>,  <42.427906, 38.676781, 36.622734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604771, 38.049820, 37.011547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222527, 38.129948, 37.097977>,  <41.993179, 38.178024, 37.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222527, 38.129948, 37.097977>,  <42.604771, 38.049820, 37.011547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222527, 38.129948, 37.097977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244842, -0.947830, -0.204134,
		0.163911, -0.247976, 0.954799,
		-0.955608, 0.200315, 0.216074,
		41.935844, 38.190041, 37.162800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400669, 37.538788, 37.271694>,  <42.604771, 38.049820, 37.011547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400669, 37.538788, 37.271694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052834, 37.721321, 37.196251>,  <41.844131, 37.830841, 37.150986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052834, 37.721321, 37.196251>,  <42.400669, 37.538788, 37.271694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052834, 37.721321, 37.196251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426511, -0.886645, -0.178745,
		-0.248794, -0.074992, 0.965649,
		-0.869592, 0.456330, -0.188607,
		41.791958, 37.858219, 37.139668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261230, 37.063904, 37.868542>,  <42.400669, 37.538788, 37.271694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261230, 37.063904, 37.868542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629539, 36.908661, 37.852787>,  <42.850525, 36.815514, 37.843334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629539, 36.908661, 37.852787>,  <42.261230, 37.063904, 37.868542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629539, 36.908661, 37.852787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330584, -0.722700, -0.606975,
		0.207110, 0.571905, -0.793745,
		0.920771, -0.388110, -0.039384,
		42.905769, 36.792229, 37.840973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258812, 36.397038, 37.363682>,  <42.261230, 37.063904, 37.868542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258812, 36.397038, 37.363682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648399, 36.409359, 37.453506>,  <42.882153, 36.416752, 37.507401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648399, 36.409359, 37.453506>,  <42.258812, 36.397038, 37.363682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648399, 36.409359, 37.453506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170168, -0.753838, -0.634642,
		0.149737, 0.656338, -0.739459,
		0.973972, 0.030803, 0.224566,
		42.940590, 36.418598, 37.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700424, 36.423706, 36.752945>,  <42.258812, 36.397038, 37.363682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700424, 36.423706, 36.752945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932064, 36.252110, 37.030247>,  <43.071049, 36.149151, 37.196629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932064, 36.252110, 37.030247>,  <42.700424, 36.423706, 36.752945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932064, 36.252110, 37.030247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301310, -0.677523, -0.670950,
		0.757532, 0.597433, -0.263094,
		0.579100, -0.428994, 0.693259,
		43.105793, 36.123413, 37.238224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443455, 36.397697, 36.494747>,  <42.700424, 36.423706, 36.752945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443455, 36.397697, 36.494747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323574, 36.107491, 36.742554>,  <43.251644, 35.933365, 36.891235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323574, 36.107491, 36.742554>,  <43.443455, 36.397697, 36.494747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323574, 36.107491, 36.742554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014507, -0.652754, -0.757431,
		0.953922, -0.218019, 0.206159,
		-0.299705, -0.725521, 0.619513,
		43.233662, 35.889835, 36.928410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018623, 35.980228, 36.565838>,  <43.443455, 36.397697, 36.494747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018623, 35.980228, 36.565838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690521, 35.767727, 36.650650>,  <43.493660, 35.640224, 36.701538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690521, 35.767727, 36.650650>,  <44.018623, 35.980228, 36.565838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690521, 35.767727, 36.650650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219411, -0.634552, -0.741082,
		0.528249, -0.561350, 0.637055,
		-0.820251, -0.531253, 0.212035,
		43.444447, 35.608353, 36.714260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192768, 35.313572, 36.804432>,  <44.018623, 35.980228, 36.565838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192768, 35.313572, 36.804432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837170, 35.327419, 36.621788>,  <43.623810, 35.335728, 36.512203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837170, 35.327419, 36.621788>,  <44.192768, 35.313572, 36.804432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837170, 35.327419, 36.621788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300978, -0.707322, -0.639615,
		-0.345110, -0.706043, 0.618387,
		-0.888994, 0.034617, -0.456607,
		43.570473, 35.337803, 36.484806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342346, 34.838097, 36.226856>,  <44.192768, 35.313572, 36.804432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342346, 34.838097, 36.226856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952408, 34.899109, 36.161861>,  <43.718445, 34.935719, 36.122864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952408, 34.899109, 36.161861>,  <44.342346, 34.838097, 36.226856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952408, 34.899109, 36.161861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022020, -0.659599, -0.751295,
		-0.221775, -0.735977, 0.639651,
		-0.974849, 0.152533, -0.162489,
		43.659954, 34.944870, 36.113113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050793, 34.909073, 36.366505>,  <44.342346, 34.838097, 36.226856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050793, 34.909073, 36.366505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289974, 34.671261, 36.581535>,  <45.433483, 34.528572, 36.710552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289974, 34.671261, 36.581535>,  <45.050793, 34.909073, 36.366505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289974, 34.671261, 36.581535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793875, 0.531776, -0.294920,
		-0.110532, 0.603117, 0.789957,
		0.597951, -0.594529, 0.537578,
		45.469360, 34.492901, 36.742809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518654, 35.330498, 36.829212>,  <45.050793, 34.909073, 36.366505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518654, 35.330498, 36.829212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679028, 34.978832, 36.726196>,  <45.775253, 34.767834, 36.664387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679028, 34.978832, 36.726196>,  <45.518654, 35.330498, 36.829212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679028, 34.978832, 36.726196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884912, 0.444398, -0.139432,
		0.237032, -0.171994, 0.956156,
		0.400933, -0.879163, -0.257536,
		45.799309, 34.715084, 36.648937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236160, 35.326653, 37.028133>,  <45.518654, 35.330498, 36.829212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236160, 35.326653, 37.028133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230942, 35.039059, 36.750172>,  <46.227810, 34.866501, 36.583397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230942, 35.039059, 36.750172>,  <46.236160, 35.326653, 37.028133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230942, 35.039059, 36.750172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767144, 0.438545, -0.468153,
		0.641342, -0.539198, 0.545845,
		-0.013049, -0.718988, -0.694900,
		46.227028, 34.823360, 36.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.901268, 35.108860, 36.971733>,  <46.236160, 35.326653, 37.028133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.901268, 35.108860, 36.971733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728378, 35.029629, 36.619835>,  <46.624645, 34.982090, 36.408695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728378, 35.029629, 36.619835>,  <46.901268, 35.108860, 36.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728378, 35.029629, 36.619835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770677, 0.425422, -0.474419,
		0.468234, -0.883052, -0.031223,
		-0.432220, -0.198076, -0.879745,
		46.598713, 34.970207, 36.355911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447296, 35.039028, 36.596485>,  <46.901268, 35.108860, 36.971733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447296, 35.039028, 36.596485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162018, 35.079838, 36.319084>,  <46.990852, 35.104324, 36.152645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162018, 35.079838, 36.319084>,  <47.447296, 35.039028, 36.596485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162018, 35.079838, 36.319084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678985, 0.346358, -0.647314,
		0.174157, -0.932538, -0.316295,
		-0.713196, 0.102025, -0.693500,
		46.948059, 35.110447, 36.111034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657494, 34.731155, 36.018227>,  <47.447296, 35.039028, 36.596485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657494, 34.731155, 36.018227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417957, 35.034798, 35.916134>,  <47.274235, 35.216984, 35.854877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417957, 35.034798, 35.916134>,  <47.657494, 34.731155, 36.018227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417957, 35.034798, 35.916134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659319, 0.286375, -0.695189,
		-0.454632, -0.584587, -0.671988,
		-0.598839, 0.759110, -0.255234,
		47.238304, 35.262531, 35.839565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466187, 34.788937, 35.249630>,  <47.657494, 34.731155, 36.018227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466187, 34.788937, 35.249630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800480, 34.895016, 35.057289>,  <48.001057, 34.958664, 34.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800480, 34.895016, 35.057289>,  <47.466187, 34.788937, 35.249630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800480, 34.895016, 35.057289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536845, 0.210367, -0.817033,
		-0.115524, 0.940964, 0.318184,
		0.835734, 0.265202, -0.480849,
		48.051201, 34.974575, 34.913033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.866093, 28.519350, 22.277895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.479256, 28.462229, 22.362125>,  <42.247154, 28.427956, 22.412663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.479256, 28.462229, 22.362125>,  <42.866093, 28.519350, 22.277895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479256, 28.462229, 22.362125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234712, -0.181278, 0.955012,
		-0.098205, 0.973009, 0.208830,
		-0.967092, -0.142801, 0.210574,
		42.189129, 28.419388, 22.425297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820808, 28.812214, 22.898508>,  <42.866093, 28.519350, 22.277895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820808, 28.812214, 22.898508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.508812, 28.563253, 22.872478>,  <42.321613, 28.413877, 22.856861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.508812, 28.563253, 22.872478>,  <42.820808, 28.812214, 22.898508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508812, 28.563253, 22.872478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153434, -0.291017, 0.944334,
		-0.606694, 0.726584, 0.322487,
		-0.779987, -0.622403, -0.065075,
		42.274815, 28.376532, 22.852957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534771, 28.962694, 23.489569>,  <42.820808, 28.812214, 22.898508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534771, 28.962694, 23.489569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.398014, 28.608461, 23.363802>,  <42.315960, 28.395922, 23.288342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.398014, 28.608461, 23.363802>,  <42.534771, 28.962694, 23.489569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398014, 28.608461, 23.363802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201940, -0.395995, 0.895772,
		-0.917786, 0.242763, 0.314221,
		-0.341890, -0.885581, -0.314415,
		42.295448, 28.342787, 23.269478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810574, 28.787092, 23.834713>,  <42.534771, 28.962694, 23.489569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810574, 28.787092, 23.834713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.000130, 28.459589, 23.705061>,  <42.113865, 28.263086, 23.627270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.000130, 28.459589, 23.705061>,  <41.810574, 28.787092, 23.834713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000130, 28.459589, 23.705061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148668, -0.288413, 0.945894,
		-0.867944, -0.496438, -0.014952,
		0.473890, -0.818760, -0.324131,
		42.142296, 28.213961, 23.607822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468414, 28.220385, 24.208605>,  <41.810574, 28.787092, 23.834713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468414, 28.220385, 24.208605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.818295, 28.062334, 24.096344>,  <42.028225, 27.967503, 24.028988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.818295, 28.062334, 24.096344>,  <41.468414, 28.220385, 24.208605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818295, 28.062334, 24.096344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097848, -0.423177, 0.900748,
		-0.474677, -0.815349, -0.331492,
		0.874704, -0.395129, -0.280653,
		42.080708, 27.943796, 24.012148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379066, 27.447803, 24.422066>,  <41.468414, 28.220385, 24.208605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379066, 27.447803, 24.422066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.766552, 27.535408, 24.375374>,  <41.999043, 27.587971, 24.347359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.766552, 27.535408, 24.375374>,  <41.379066, 27.447803, 24.422066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766552, 27.535408, 24.375374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195128, -0.381506, 0.903537,
		0.153353, -0.898046, -0.412306,
		0.968714, 0.219013, -0.116728,
		42.057167, 27.601112, 24.340355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633625, 26.912991, 24.838873>,  <41.379066, 27.447803, 24.422066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633625, 26.912991, 24.838873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.936729, 27.165277, 24.771942>,  <42.118591, 27.316648, 24.731783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.936729, 27.165277, 24.771942>,  <41.633625, 26.912991, 24.838873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936729, 27.165277, 24.771942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317938, -0.132932, 0.938746,
		0.569840, -0.764543, -0.301259,
		0.757759, 0.630717, -0.167328,
		42.164059, 27.354492, 24.721745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287262, 26.553673, 24.938133>,  <41.633625, 26.912991, 24.838873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287262, 26.553673, 24.938133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.343853, 26.943439, 25.007986>,  <42.377808, 27.177299, 25.049898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.343853, 26.943439, 25.007986>,  <42.287262, 26.553673, 24.938133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343853, 26.943439, 25.007986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231077, -0.204038, 0.951300,
		0.962595, -0.094233, -0.254031,
		0.141476, 0.974417, 0.174631,
		42.386295, 27.235765, 25.060375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850101, 26.524317, 25.376003>,  <42.287262, 26.553673, 24.938133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850101, 26.524317, 25.376003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.752220, 26.911463, 25.399179>,  <42.693489, 27.143751, 25.413086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.752220, 26.911463, 25.399179>,  <42.850101, 26.524317, 25.376003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752220, 26.911463, 25.399179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427792, 0.054146, 0.902254,
		0.870122, 0.245573, -0.427295,
		-0.244706, 0.967865, 0.057940,
		42.678810, 27.201822, 25.416561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478527, 26.953959, 25.524862>,  <42.850101, 26.524317, 25.376003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478527, 26.953959, 25.524862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.158539, 27.159105, 25.649446>,  <42.966545, 27.282192, 25.724197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.158539, 27.159105, 25.649446>,  <43.478527, 26.953959, 25.524862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158539, 27.159105, 25.649446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460472, 0.191920, 0.866679,
		0.384714, 0.836741, -0.389692,
		-0.799975, 0.512866, 0.311462,
		42.918545, 27.312965, 25.742886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768848, 27.540022, 25.978054>,  <43.478527, 26.953959, 25.524862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768848, 27.540022, 25.978054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.384563, 27.481607, 26.072456>,  <43.153992, 27.446558, 26.129097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.384563, 27.481607, 26.072456>,  <43.768848, 27.540022, 25.978054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384563, 27.481607, 26.072456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206400, 0.192535, 0.959338,
		-0.185539, 0.970362, -0.154829,
		-0.960716, -0.146038, 0.236005,
		43.096348, 27.437796, 26.143257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608116, 28.141119, 26.347826>,  <43.768848, 27.540022, 25.978054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608116, 28.141119, 26.347826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.305248, 27.898916, 26.445850>,  <43.123528, 27.753593, 26.504665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.305248, 27.898916, 26.445850>,  <43.608116, 28.141119, 26.347826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305248, 27.898916, 26.445850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114948, 0.245800, 0.962481,
		-0.643026, 0.756930, -0.116510,
		-0.757169, -0.605508, 0.245063,
		43.078098, 27.717264, 26.519369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151829, 28.455448, 26.788336>,  <43.608116, 28.141119, 26.347826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151829, 28.455448, 26.788336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.064415, 28.079435, 26.893089>,  <43.011967, 27.853828, 26.955942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.064415, 28.079435, 26.893089>,  <43.151829, 28.455448, 26.788336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064415, 28.079435, 26.893089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071121, 0.252316, 0.965028,
		-0.973234, 0.229520, 0.011715,
		-0.218537, -0.940031, 0.261885,
		42.998856, 27.797426, 26.971655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599106, 28.539438, 27.365795>,  <43.151829, 28.455448, 26.788336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599106, 28.539438, 27.365795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.721874, 28.159279, 27.385956>,  <42.795536, 27.931183, 27.398052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.721874, 28.159279, 27.385956>,  <42.599106, 28.539438, 27.365795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721874, 28.159279, 27.385956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073637, 0.076513, 0.994346,
		-0.948883, -0.301472, 0.093468,
		0.306919, -0.950400, 0.050403,
		42.813950, 27.874159, 27.401077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110069, 28.178610, 27.792072>,  <42.599106, 28.539438, 27.365795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110069, 28.178610, 27.792072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.462982, 27.991343, 27.811647>,  <42.674728, 27.878983, 27.823393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.462982, 27.991343, 27.811647>,  <42.110069, 28.178610, 27.792072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462982, 27.991343, 27.811647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086801, -0.059627, 0.994440,
		-0.462649, -0.881624, -0.093245,
		0.882282, -0.468170, 0.048940,
		42.727669, 27.850891, 27.826330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108471, 27.574207, 28.162954>,  <42.110069, 28.178610, 27.792072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108471, 27.574207, 28.162954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.504791, 27.628216, 28.159420>,  <42.742584, 27.660620, 28.157299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.504791, 27.628216, 28.159420>,  <42.108471, 27.574207, 28.162954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504791, 27.628216, 28.159420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024102, -0.111858, 0.993432,
		0.133146, -0.984509, -0.114084,
		0.990803, 0.135021, -0.008835,
		42.802032, 27.668722, 28.156769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279549, 27.180555, 28.791470>,  <42.108471, 27.574207, 28.162954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279549, 27.180555, 28.791470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.610264, 27.381880, 28.690989>,  <42.808693, 27.502674, 28.630701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.610264, 27.381880, 28.690989>,  <42.279549, 27.180555, 28.791470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610264, 27.381880, 28.690989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187825, 0.173927, 0.966680,
		0.530230, -0.846421, 0.049266,
		0.826787, 0.503310, -0.251201,
		42.858299, 27.532873, 28.615629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699833, 26.912027, 29.251814>,  <42.279549, 27.180555, 28.791470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699833, 26.912027, 29.251814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.873188, 27.254280, 29.138628>,  <42.977200, 27.459631, 29.070717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.873188, 27.254280, 29.138628>,  <42.699833, 26.912027, 29.251814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873188, 27.254280, 29.138628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260954, 0.181388, 0.948157,
		0.862600, -0.484760, -0.144670,
		0.433387, 0.855632, -0.282965,
		43.003204, 27.510969, 29.053738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166157, 26.909796, 29.773924>,  <42.699833, 26.912027, 29.251814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166157, 26.909796, 29.773924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.126011, 27.279560, 29.626741>,  <43.101925, 27.501419, 29.538431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.126011, 27.279560, 29.626741>,  <43.166157, 26.909796, 29.773924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126011, 27.279560, 29.626741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218695, 0.381277, 0.898221,
		0.970618, 0.009678, -0.240430,
		-0.100364, 0.924410, -0.367958,
		43.095901, 27.556883, 29.516354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736805, 27.200031, 29.939127>,  <43.166157, 26.909796, 29.773924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736805, 27.200031, 29.939127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.480869, 27.500254, 29.873072>,  <43.327309, 27.680387, 29.833439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.480869, 27.500254, 29.873072>,  <43.736805, 27.200031, 29.939127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480869, 27.500254, 29.873072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348181, 0.474676, 0.808364,
		0.685112, 0.459723, -0.565045,
		-0.639838, 0.750558, -0.165140,
		43.288918, 27.725422, 29.823530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040802, 27.881134, 29.834415>,  <43.736805, 27.200031, 29.939127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040802, 27.881134, 29.834415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.689774, 27.959112, 30.009624>,  <43.479156, 28.005899, 30.114750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.689774, 27.959112, 30.009624>,  <44.040802, 27.881134, 29.834415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689774, 27.959112, 30.009624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477626, 0.434979, 0.763326,
		-0.041724, 0.879084, -0.474836,
		-0.877572, 0.194945, 0.438023,
		43.426502, 28.017595, 30.141031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557423, 28.236988, 30.283594>,  <44.040802, 27.881134, 29.834415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557423, 28.236988, 30.283594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.895409, 28.446306, 30.327776>,  <45.098198, 28.571898, 30.354284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.895409, 28.446306, 30.327776>,  <44.557423, 28.236988, 30.283594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895409, 28.446306, 30.327776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128914, 0.001158, -0.991655,
		-0.519057, 0.852150, -0.066482,
		0.844962, 0.523296, 0.110455,
		45.148899, 28.603294, 30.360912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622585, 28.692024, 29.766861>,  <44.557423, 28.236988, 30.283594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622585, 28.692024, 29.766861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.012932, 28.652788, 29.844893>,  <45.247139, 28.629246, 29.891710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.012932, 28.652788, 29.844893>,  <44.622585, 28.692024, 29.766861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012932, 28.652788, 29.844893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208809, 0.158018, -0.965106,
		0.063842, 0.982552, 0.174687,
		0.975870, -0.098091, 0.195077,
		45.305695, 28.623362, 29.903416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856613, 29.260668, 29.394329>,  <44.622585, 28.692024, 29.766861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856613, 29.260668, 29.394329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.158985, 29.008993, 29.466660>,  <45.340408, 28.857988, 29.510057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.158985, 29.008993, 29.466660>,  <44.856613, 29.260668, 29.394329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158985, 29.008993, 29.466660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308064, 0.098161, -0.946288,
		0.577643, 0.771030, 0.268033,
		0.755926, -0.629188, 0.180825,
		45.385761, 28.820236, 29.520906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441624, 29.599922, 29.079914>,  <44.856613, 29.260668, 29.394329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441624, 29.599922, 29.079914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.518417, 29.209368, 29.119545>,  <45.564495, 28.975035, 29.143324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.518417, 29.209368, 29.119545>,  <45.441624, 29.599922, 29.079914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518417, 29.209368, 29.119545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413374, -0.011108, -0.910494,
		0.890092, 0.215755, 0.401479,
		0.191984, -0.976384, 0.099075,
		45.576012, 28.916452, 29.149267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987354, 29.577055, 28.741270>,  <45.441624, 29.599922, 29.079914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987354, 29.577055, 28.741270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.866581, 29.195726, 28.739695>,  <45.794117, 28.966928, 28.738750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.866581, 29.195726, 28.739695>,  <45.987354, 29.577055, 28.741270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866581, 29.195726, 28.739695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388161, -0.119161, -0.913855,
		0.870729, -0.277449, 0.406021,
		-0.301930, -0.953322, -0.003938,
		45.776001, 28.909729, 28.738514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524475, 29.113400, 28.525026>,  <45.987354, 29.577055, 28.741270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524475, 29.113400, 28.525026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.204189, 28.887089, 28.446283>,  <46.012016, 28.751303, 28.399038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.204189, 28.887089, 28.446283>,  <46.524475, 29.113400, 28.525026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204189, 28.887089, 28.446283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266076, -0.041475, -0.963059,
		0.536713, -0.823514, 0.183750,
		-0.800714, -0.565778, -0.196857,
		45.963974, 28.717356, 28.387226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752365, 28.630814, 28.031345>,  <46.524475, 29.113400, 28.525026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752365, 28.630814, 28.031345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.358364, 28.580645, 27.983965>,  <46.121964, 28.550543, 27.955538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.358364, 28.580645, 27.983965>,  <46.752365, 28.630814, 28.031345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358364, 28.580645, 27.983965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113257, 0.047780, -0.992416,
		0.130132, -0.990952, -0.032859,
		-0.985007, -0.125424, -0.118450,
		46.062862, 28.543018, 27.948429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734875, 28.073969, 27.557051>,  <46.752365, 28.630814, 28.031345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734875, 28.073969, 27.557051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.385101, 28.267990, 27.553320>,  <46.175236, 28.384403, 27.551081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.385101, 28.267990, 27.553320>,  <46.734875, 28.073969, 27.557051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385101, 28.267990, 27.553320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120620, 0.198748, -0.972600,
		-0.469909, -0.851600, -0.232299,
		-0.874435, 0.485053, -0.009327,
		46.122772, 28.413506, 27.550522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401253, 27.744305, 27.085091>,  <46.734875, 28.073969, 27.557051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401253, 27.744305, 27.085091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.216267, 28.096912, 27.123152>,  <46.105274, 28.308477, 27.145988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.216267, 28.096912, 27.123152>,  <46.401253, 27.744305, 27.085091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216267, 28.096912, 27.123152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108146, 0.050432, -0.992855,
		-0.880018, -0.469450, 0.072010,
		-0.462464, 0.881518, 0.095151,
		46.077526, 28.361368, 27.151697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799774, 27.715963, 26.592720>,  <46.401253, 27.744305, 27.085091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799774, 27.715963, 26.592720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.867260, 28.103558, 26.664942>,  <45.907753, 28.336115, 26.708275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.867260, 28.103558, 26.664942>,  <45.799774, 27.715963, 26.592720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867260, 28.103558, 26.664942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096602, 0.198555, -0.975317,
		-0.980919, 0.147110, 0.127106,
		0.168717, 0.968986, 0.180555,
		45.917873, 28.394253, 26.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407089, 27.981945, 26.144724>,  <45.799774, 27.715963, 26.592720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407089, 27.981945, 26.144724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.613728, 28.318924, 26.205923>,  <45.737713, 28.521111, 26.242641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.613728, 28.318924, 26.205923>,  <45.407089, 27.981945, 26.144724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613728, 28.318924, 26.205923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208278, 0.296960, -0.931899,
		-0.830510, 0.449551, 0.328873,
		0.516598, 0.842448, 0.152996,
		45.768707, 28.571659, 26.251822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023731, 28.425751, 25.897539>,  <45.407089, 27.981945, 26.144724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023731, 28.425751, 25.897539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.371910, 28.622162, 25.911518>,  <45.580818, 28.740009, 25.919905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.371910, 28.622162, 25.911518>,  <45.023731, 28.425751, 25.897539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371910, 28.622162, 25.911518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166951, 0.361243, -0.917405,
		-0.463095, 0.792714, 0.396419,
		0.870443, 0.491028, 0.034946,
		45.633041, 28.769470, 25.922001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842422, 29.060163, 25.600056>,  <45.023731, 28.425751, 25.897539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842422, 29.060163, 25.600056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.242184, 29.062225, 25.586428>,  <45.482040, 29.063463, 25.578251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.242184, 29.062225, 25.586428>,  <44.842422, 29.060163, 25.600056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242184, 29.062225, 25.586428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033862, 0.330097, -0.943339,
		0.006382, 0.943933, 0.330076,
		0.999406, 0.005156, -0.034070,
		45.542007, 29.063772, 25.576206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089088, 29.777702, 25.255091>,  <44.842422, 29.060163, 25.600056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089088, 29.777702, 25.255091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.362076, 29.486572, 25.228235>,  <45.525867, 29.311895, 25.212122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.362076, 29.486572, 25.228235>,  <45.089088, 29.777702, 25.255091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362076, 29.486572, 25.228235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026936, 0.066751, -0.997406,
		0.730417, 0.682508, 0.025951,
		0.682469, -0.727824, -0.067141,
		45.566818, 29.268225, 25.208094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575943, 30.083595, 24.758850>,  <45.089088, 29.777702, 25.255091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575943, 30.083595, 24.758850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.646503, 29.689871, 24.760311>,  <45.688839, 29.453636, 24.761187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.646503, 29.689871, 24.760311>,  <45.575943, 30.083595, 24.758850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646503, 29.689871, 24.760311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255939, -0.049449, -0.965427,
		0.950462, 0.169368, -0.260647,
		0.176401, -0.984312, 0.003652,
		45.699425, 29.394577, 24.761406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972713, 29.917587, 24.110962>,  <45.575943, 30.083595, 24.758850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972713, 29.917587, 24.110962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.779785, 29.602098, 24.263424>,  <45.664028, 29.412806, 24.354900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.779785, 29.602098, 24.263424>,  <45.972713, 29.917587, 24.110962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779785, 29.602098, 24.263424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405852, -0.184395, -0.895144,
		0.776303, -0.586443, -0.231166,
		-0.482325, -0.788722, 0.381155,
		45.635086, 29.365482, 24.377771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137592, 29.553238, 23.626774>,  <45.972713, 29.917587, 24.110962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137592, 29.553238, 23.626774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.856091, 29.341293, 23.816080>,  <45.687191, 29.214127, 23.929665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.856091, 29.341293, 23.816080>,  <46.137592, 29.553238, 23.626774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856091, 29.341293, 23.816080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383659, -0.277224, -0.880882,
		0.597945, -0.801496, -0.008188,
		-0.703753, -0.529860, 0.473266,
		45.644966, 29.182335, 23.958059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107990, 28.771523, 23.407249>,  <46.137592, 29.553238, 23.626774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107990, 28.771523, 23.407249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.746338, 28.881910, 23.537714>,  <45.529346, 28.948143, 23.615993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.746338, 28.881910, 23.537714>,  <46.107990, 28.771523, 23.407249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746338, 28.881910, 23.537714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395657, -0.252729, -0.882940,
		-0.161234, -0.927345, 0.337690,
		-0.904135, 0.275969, 0.326162,
		45.475098, 28.964701, 23.635563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683098, 28.199570, 23.181040>,  <46.107990, 28.771523, 23.407249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683098, 28.199570, 23.181040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.419037, 28.489588, 23.259529>,  <45.260601, 28.663599, 23.306622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.419037, 28.489588, 23.259529>,  <45.683098, 28.199570, 23.181040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419037, 28.489588, 23.259529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411737, -0.130813, -0.901865,
		-0.628224, -0.676164, 0.384885,
		-0.660157, 0.725045, 0.196222,
		45.220989, 28.707102, 23.318396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.966843, 27.839640, 22.980322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.915791, 28.236210, 22.991556>,  <44.885159, 28.474152, 22.998297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.915791, 28.236210, 22.991556>,  <44.966843, 27.839640, 22.980322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915791, 28.236210, 22.991556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488590, -0.038203, -0.871677,
		-0.863128, -0.124976, 0.489276,
		-0.127631, 0.991424, 0.028088,
		44.877502, 28.533638, 22.999983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182789, 27.938845, 22.828335>,  <44.966843, 27.839640, 22.980322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182789, 27.938845, 22.828335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.357094, 28.289440, 22.746479>,  <44.461678, 28.499798, 22.697365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.357094, 28.289440, 22.746479>,  <44.182789, 27.938845, 22.828335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357094, 28.289440, 22.746479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642218, 0.143490, -0.752972,
		-0.630607, 0.459541, 0.625425,
		0.435764, 0.876489, -0.204640,
		44.487823, 28.552387, 22.685087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590389, 28.415863, 22.656433>,  <44.182789, 27.938845, 22.828335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590389, 28.415863, 22.656433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.924778, 28.574034, 22.504225>,  <44.125412, 28.668936, 22.412899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.924778, 28.574034, 22.504225>,  <43.590389, 28.415863, 22.656433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924778, 28.574034, 22.504225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435410, 0.055869, -0.898497,
		-0.334029, 0.916798, 0.218877,
		0.835968, 0.395425, -0.380521,
		44.175568, 28.692661, 22.390068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387993, 29.049755, 22.377134>,  <43.590389, 28.415863, 22.656433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387993, 29.049755, 22.377134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.736275, 28.971889, 22.196478>,  <43.945244, 28.925171, 22.088083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.736275, 28.971889, 22.196478>,  <43.387993, 29.049755, 22.377134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736275, 28.971889, 22.196478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360321, 0.372527, -0.855215,
		0.334729, 0.907375, 0.254219,
		0.870704, -0.194665, -0.451642,
		43.997486, 28.913490, 22.060986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580246, 29.685110, 22.126118>,  <43.387993, 29.049755, 22.377134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580246, 29.685110, 22.126118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.788338, 29.409235, 21.924648>,  <43.913193, 29.243710, 21.803766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.788338, 29.409235, 21.924648>,  <43.580246, 29.685110, 22.126118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788338, 29.409235, 21.924648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247123, 0.442966, -0.861807,
		0.817491, 0.572807, 0.060006,
		0.520230, -0.689690, -0.503675,
		43.944408, 29.202328, 21.773546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929356, 30.086624, 21.671791>,  <43.580246, 29.685110, 22.126118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929356, 30.086624, 21.671791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.942276, 29.714674, 21.525211>,  <43.950027, 29.491503, 21.437263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.942276, 29.714674, 21.525211>,  <43.929356, 30.086624, 21.671791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942276, 29.714674, 21.525211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264164, 0.345662, -0.900408,
		0.963937, 0.125884, -0.234476,
		0.032298, -0.929877, -0.366451,
		43.951965, 29.435711, 21.415276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228245, 30.216537, 21.065813>,  <43.929356, 30.086624, 21.671791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228245, 30.216537, 21.065813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.063572, 29.852785, 21.042011>,  <43.964767, 29.634533, 21.027729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.063572, 29.852785, 21.042011>,  <44.228245, 30.216537, 21.065813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063572, 29.852785, 21.042011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389417, 0.234574, -0.890690,
		0.823937, -0.343510, -0.450699,
		-0.411683, -0.909382, -0.059506,
		43.940067, 29.579971, 21.024160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446297, 30.012487, 20.399305>,  <44.228245, 30.216537, 21.065813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446297, 30.012487, 20.399305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.127960, 29.797407, 20.510672>,  <43.936958, 29.668360, 20.577492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.127960, 29.797407, 20.510672>,  <44.446297, 30.012487, 20.399305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127960, 29.797407, 20.510672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382247, 0.089537, -0.919712,
		0.469601, -0.838369, -0.276791,
		-0.795841, -0.537700, 0.278417,
		43.889206, 29.636097, 20.594196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506760, 29.499802, 19.960424>,  <44.446297, 30.012487, 20.399305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506760, 29.499802, 19.960424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138355, 29.568176, 20.100439>,  <43.917313, 29.609201, 20.184448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.138355, 29.568176, 20.100439>,  <44.506760, 29.499802, 19.960424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138355, 29.568176, 20.100439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352939, 0.014114, -0.935540,
		-0.164859, -0.985181, 0.047332,
		-0.921008, 0.170937, 0.350036,
		43.862053, 29.619457, 20.205450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003506, 28.955481, 19.660202>,  <44.506760, 29.499802, 19.960424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003506, 28.955481, 19.660202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.794296, 29.281034, 19.761431>,  <43.668770, 29.476366, 19.822168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.794296, 29.281034, 19.761431>,  <44.003506, 28.955481, 19.660202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794296, 29.281034, 19.761431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467876, -0.025976, -0.883412,
		-0.712421, -0.580448, 0.394382,
		-0.523019, 0.813883, 0.253072,
		43.637390, 29.525200, 19.837353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311092, 28.842104, 19.419565>,  <44.003506, 28.955481, 19.660202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311092, 28.842104, 19.419565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323349, 29.238895, 19.468620>,  <43.330704, 29.476971, 19.498055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323349, 29.238895, 19.468620>,  <43.311092, 28.842104, 19.419565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323349, 29.238895, 19.468620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556394, 0.118856, -0.822374,
		-0.830354, -0.043040, 0.555572,
		0.030638, 0.991978, 0.122640,
		43.332539, 29.536489, 19.505413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625008, 29.113504, 19.351688>,  <43.311092, 28.842104, 19.419565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625008, 29.113504, 19.351688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.861530, 29.423346, 19.261942>,  <43.003445, 29.609251, 19.208094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.861530, 29.423346, 19.261942>,  <42.625008, 29.113504, 19.351688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861530, 29.423346, 19.261942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504944, 0.138691, -0.851937,
		-0.628797, 0.617052, 0.473141,
		0.591310, 0.774604, -0.224368,
		43.038921, 29.655727, 19.194632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317265, 29.397184, 18.832901>,  <42.625008, 29.113504, 19.351688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317265, 29.397184, 18.832901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.643398, 29.628599, 18.823730>,  <42.839077, 29.767448, 18.818228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.643398, 29.628599, 18.823730>,  <42.317265, 29.397184, 18.832901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643398, 29.628599, 18.823730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210165, 0.258828, -0.942783,
		-0.539502, 0.773500, 0.332620,
		0.815333, 0.578538, -0.022924,
		42.887997, 29.802160, 18.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147507, 30.127333, 18.693592>,  <42.317265, 29.397184, 18.832901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147507, 30.127333, 18.693592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.522533, 30.067533, 18.567974>,  <42.747547, 30.031654, 18.492603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.522533, 30.067533, 18.567974>,  <42.147507, 30.127333, 18.693592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522533, 30.067533, 18.567974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230923, 0.407636, -0.883464,
		0.260090, 0.900824, 0.347663,
		0.937565, -0.149497, -0.314043,
		42.803802, 30.022684, 18.473761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481735, 30.828743, 18.546354>,  <42.147507, 30.127333, 18.693592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481735, 30.828743, 18.546354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.708286, 30.571877, 18.339727>,  <42.844215, 30.417757, 18.215752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.708286, 30.571877, 18.339727>,  <42.481735, 30.828743, 18.546354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708286, 30.571877, 18.339727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220330, 0.485994, -0.845733,
		0.794148, 0.592820, 0.133768,
		0.566378, -0.642164, -0.516567,
		42.878201, 30.379227, 18.184757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986889, 31.324484, 18.213514>,  <42.481735, 30.828743, 18.546354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986889, 31.324484, 18.213514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.972507, 30.981438, 18.008301>,  <42.963879, 30.775610, 17.885172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.972507, 30.981438, 18.008301>,  <42.986889, 31.324484, 18.213514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972507, 30.981438, 18.008301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035284, 0.514137, -0.856982,
		0.998730, -0.012713, -0.048748,
		-0.035958, -0.857614, -0.513036,
		42.961720, 30.724154, 17.854389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484020, 31.424616, 17.616865>,  <42.986889, 31.324484, 18.213514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484020, 31.424616, 17.616865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256138, 31.111147, 17.517834>,  <43.119408, 30.923065, 17.458414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256138, 31.111147, 17.517834>,  <43.484020, 31.424616, 17.616865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256138, 31.111147, 17.517834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049056, 0.268283, -0.962090,
		0.820385, -0.560251, -0.114398,
		-0.569703, -0.783673, -0.247579,
		43.085228, 30.876045, 17.443560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851479, 31.107817, 17.142233>,  <43.484020, 31.424616, 17.616865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851479, 31.107817, 17.142233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470989, 30.996618, 17.088736>,  <43.242695, 30.929899, 17.056637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470989, 30.996618, 17.088736>,  <43.851479, 31.107817, 17.142233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470989, 30.996618, 17.088736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002967, 0.425269, -0.905062,
		0.308480, -0.861315, -0.403703,
		-0.951226, -0.277996, -0.133742,
		43.185623, 30.913219, 17.048613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829796, 30.919432, 16.457281>,  <43.851479, 31.107817, 17.142233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829796, 30.919432, 16.457281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.448513, 30.988041, 16.556864>,  <43.219742, 31.029207, 16.616613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.448513, 30.988041, 16.556864>,  <43.829796, 30.919432, 16.457281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448513, 30.988041, 16.556864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169183, 0.379824, -0.909456,
		-0.250553, -0.909018, -0.333031,
		-0.953205, 0.171524, 0.248956,
		43.162552, 31.039497, 16.631550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397446, 30.581272, 15.942311>,  <43.829796, 30.919432, 16.457281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397446, 30.581272, 15.942311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.180473, 30.877680, 16.100636>,  <43.050289, 31.055525, 16.195631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.180473, 30.877680, 16.100636>,  <43.397446, 30.581272, 15.942311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180473, 30.877680, 16.100636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112871, 0.402592, -0.908394,
		-0.832486, -0.537413, -0.134737,
		-0.542427, 0.741018, 0.395811,
		43.017746, 31.099985, 16.219379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835426, 30.716206, 15.452449>,  <43.397446, 30.581272, 15.942311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835426, 30.716206, 15.452449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850311, 31.055946, 15.663055>,  <42.859241, 31.259790, 15.789419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850311, 31.055946, 15.663055>,  <42.835426, 30.716206, 15.452449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850311, 31.055946, 15.663055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297998, 0.512340, -0.805422,
		-0.953841, -0.126928, 0.272171,
		0.037213, 0.849351, 0.526515,
		42.861477, 31.310751, 15.821010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140022, 31.072929, 15.395782>,  <42.835426, 30.716206, 15.452449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140022, 31.072929, 15.395782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390732, 31.368502, 15.494687>,  <42.541157, 31.545845, 15.554030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.390732, 31.368502, 15.494687>,  <42.140022, 31.072929, 15.395782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390732, 31.368502, 15.494687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274660, 0.506474, -0.817341,
		-0.729190, 0.444373, 0.520399,
		0.626773, 0.738929, 0.247264,
		42.578762, 31.590181, 15.568866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568756, 30.911697, 14.894326>,  <42.140022, 31.072929, 15.395782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568756, 30.911697, 14.894326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408127, 31.233000, 14.718365>,  <41.311749, 31.425781, 14.612787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408127, 31.233000, 14.718365>,  <41.568756, 30.911697, 14.894326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408127, 31.233000, 14.718365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890753, -0.454199, -0.016214,
		-0.212828, 0.385335, 0.897898,
		-0.401577, 0.803256, -0.439904,
		41.287655, 31.473976, 14.586393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888371, 31.236027, 15.275717>,  <41.568756, 30.911697, 14.894326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888371, 31.236027, 15.275717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.905781, 31.234737, 14.876098>,  <40.916225, 31.233963, 14.636327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.905781, 31.234737, 14.876098>,  <40.888371, 31.236027, 15.275717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905781, 31.234737, 14.876098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763452, -0.645111, -0.031179,
		-0.644396, 0.764082, -0.030538,
		0.043523, -0.003222, -0.999047,
		40.918839, 31.233770, 14.576384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220245, 31.317396, 15.287159>,  <40.888371, 31.236027, 15.275717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220245, 31.317396, 15.287159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899757, 31.093287, 15.371193>,  <39.707462, 30.958820, 15.421613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.899757, 31.093287, 15.371193>,  <40.220245, 31.317396, 15.287159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899757, 31.093287, 15.371193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214719, 0.058503, 0.974922,
		-0.558514, 0.826239, 0.073428,
		-0.801223, -0.560274, 0.210084,
		39.659389, 30.925205, 15.434218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763790, 31.706663, 15.688733>,  <40.220245, 31.317396, 15.287159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763790, 31.706663, 15.688733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673698, 31.324905, 15.767120>,  <39.619644, 31.095850, 15.814153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.673698, 31.324905, 15.767120>,  <39.763790, 31.706663, 15.688733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673698, 31.324905, 15.767120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060666, 0.214484, 0.974842,
		-0.972415, 0.207676, -0.106208,
		-0.225231, -0.954394, 0.195968,
		39.606129, 31.038588, 15.825911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354031, 31.688747, 16.109703>,  <39.763790, 31.706663, 15.688733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354031, 31.688747, 16.109703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481243, 31.314161, 16.168882>,  <39.557571, 31.089409, 16.204390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481243, 31.314161, 16.168882>,  <39.354031, 31.688747, 16.109703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481243, 31.314161, 16.168882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052050, 0.173064, 0.983534,
		-0.946650, -0.305094, 0.103783,
		0.318032, -0.936465, 0.147951,
		39.576653, 31.033222, 16.213268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243618, 31.661589, 16.870028>,  <39.354031, 31.688747, 16.109703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243618, 31.661589, 16.870028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431854, 31.321566, 16.775412>,  <39.544796, 31.117552, 16.718641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.431854, 31.321566, 16.775412>,  <39.243618, 31.661589, 16.870028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431854, 31.321566, 16.775412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165849, -0.178088, 0.969938,
		-0.866626, -0.495671, 0.057174,
		0.470588, -0.850056, -0.236542,
		39.573032, 31.066549, 16.704449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173267, 31.108942, 17.333271>,  <39.243618, 31.661589, 16.870028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173267, 31.108942, 17.333271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487652, 30.942165, 17.150658>,  <39.676285, 30.842100, 17.041090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487652, 30.942165, 17.150658>,  <39.173267, 31.108942, 17.333271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487652, 30.942165, 17.150658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329823, -0.341812, 0.879989,
		-0.522952, -0.842214, -0.131136,
		0.785963, -0.416940, -0.456533,
		39.723442, 30.817083, 17.013699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213421, 30.409250, 17.447758>,  <39.173267, 31.108942, 17.333271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213421, 30.409250, 17.447758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587063, 30.530333, 17.372057>,  <39.811249, 30.602982, 17.326635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587063, 30.530333, 17.372057>,  <39.213421, 30.409250, 17.447758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587063, 30.530333, 17.372057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318165, -0.465445, 0.825913,
		0.161922, -0.831703, -0.531085,
		0.934105, 0.302706, -0.189253,
		39.867294, 30.621145, 17.315281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669209, 29.845276, 17.497435>,  <39.213421, 30.409250, 17.447758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669209, 29.845276, 17.497435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.882450, 30.174391, 17.576252>,  <40.010395, 30.371861, 17.623543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.882450, 30.174391, 17.576252>,  <39.669209, 29.845276, 17.497435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882450, 30.174391, 17.576252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422088, -0.460488, 0.780892,
		0.733244, -0.333124, -0.592774,
		0.533100, 0.822788, 0.197042,
		40.042381, 30.421227, 17.635365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193295, 29.530977, 17.815781>,  <39.669209, 29.845276, 17.497435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193295, 29.530977, 17.815781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264053, 29.916620, 17.894983>,  <40.306511, 30.148006, 17.942505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264053, 29.916620, 17.894983>,  <40.193295, 29.530977, 17.815781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264053, 29.916620, 17.894983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431812, -0.256808, 0.864632,
		0.884446, -0.067451, -0.461741,
		0.176899, 0.964106, 0.198007,
		40.317123, 30.205853, 17.954386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837837, 29.552992, 18.012798>,  <40.193295, 29.530977, 17.815781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837837, 29.552992, 18.012798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.671257, 29.886452, 18.157904>,  <40.571308, 30.086529, 18.244967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.671257, 29.886452, 18.157904>,  <40.837837, 29.552992, 18.012798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671257, 29.886452, 18.157904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242063, -0.282937, 0.928091,
		0.876344, 0.474312, -0.083968,
		-0.416446, 0.833652, 0.362763,
		40.546322, 30.136547, 18.266733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372860, 29.991449, 18.418186>,  <40.837837, 29.552992, 18.012798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372860, 29.991449, 18.418186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015442, 30.103024, 18.558914>,  <40.800991, 30.169968, 18.643351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015442, 30.103024, 18.558914>,  <41.372860, 29.991449, 18.418186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015442, 30.103024, 18.558914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239271, -0.367214, 0.898834,
		0.379908, 0.887327, 0.261381,
		-0.893543, 0.278933, 0.351820,
		40.747379, 30.186703, 18.664459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454296, 30.394178, 18.920465>,  <41.372860, 29.991449, 18.418186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454296, 30.394178, 18.920465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.097733, 30.223179, 18.980639>,  <40.883793, 30.120579, 19.016743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.097733, 30.223179, 18.980639>,  <41.454296, 30.394178, 18.920465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097733, 30.223179, 18.980639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301114, -0.310619, 0.901580,
		-0.338696, 0.848977, 0.405615,
		-0.891412, -0.427498, 0.150433,
		40.830307, 30.094929, 19.025768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340393, 30.423624, 19.570431>,  <41.454296, 30.394178, 18.920465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340393, 30.423624, 19.570431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061977, 30.145609, 19.498367>,  <40.894928, 29.978800, 19.455130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061977, 30.145609, 19.498367>,  <41.340393, 30.423624, 19.570431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061977, 30.145609, 19.498367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172661, -0.405577, 0.897605,
		-0.696939, 0.593658, 0.402302,
		-0.696034, -0.695038, -0.180160,
		40.853168, 29.937098, 19.444319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105534, 30.360588, 20.208126>,  <41.340393, 30.423624, 19.570431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105534, 30.360588, 20.208126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973251, 30.029436, 20.026907>,  <40.893883, 29.830746, 19.918177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973251, 30.029436, 20.026907>,  <41.105534, 30.360588, 20.208126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973251, 30.029436, 20.026907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019260, -0.485878, 0.873815,
		-0.943539, 0.280246, 0.176625,
		-0.330701, -0.827880, -0.453047,
		40.874043, 29.781073, 19.890993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584980, 30.051674, 20.611450>,  <41.105534, 30.360588, 20.208126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584980, 30.051674, 20.611450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.708126, 29.751137, 20.377972>,  <40.782013, 29.570814, 20.237885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.708126, 29.751137, 20.377972>,  <40.584980, 30.051674, 20.611450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708126, 29.751137, 20.377972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134563, -0.572944, 0.808473,
		-0.941868, -0.327442, -0.075283,
		0.307861, -0.751344, -0.583699,
		40.800484, 29.525734, 20.202862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300678, 29.513758, 20.869562>,  <40.584980, 30.051674, 20.611450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300678, 29.513758, 20.869562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.601349, 29.363316, 20.652849>,  <40.781750, 29.273050, 20.522821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.601349, 29.363316, 20.652849>,  <40.300678, 29.513758, 20.869562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601349, 29.363316, 20.652849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223350, -0.627768, 0.745669,
		-0.620546, -0.681517, -0.387888,
		0.751690, -0.376088, -0.541775,
		40.826851, 29.250484, 20.490314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305386, 28.797245, 20.994156>,  <40.300678, 29.513758, 20.869562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305386, 28.797245, 20.994156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669567, 28.906410, 20.869841>,  <40.888077, 28.971909, 20.795252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.669567, 28.906410, 20.869841>,  <40.305386, 28.797245, 20.994156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669567, 28.906410, 20.869841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409972, -0.496076, 0.765397,
		0.054711, -0.824274, -0.563542,
		0.910456, 0.272912, -0.310788,
		40.942703, 28.988283, 20.776604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703678, 28.147200, 21.075607>,  <40.305386, 28.797245, 20.994156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703678, 28.147200, 21.075607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973495, 28.441425, 21.050528>,  <41.135387, 28.617962, 21.035480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973495, 28.441425, 21.050528>,  <40.703678, 28.147200, 21.075607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973495, 28.441425, 21.050528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547934, -0.441940, 0.710252,
		0.494728, -0.513452, -0.701150,
		0.674546, 0.735566, -0.062698,
		41.175858, 28.662094, 21.031717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301140, 27.791412, 21.164930>,  <40.703678, 28.147200, 21.075607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301140, 27.791412, 21.164930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.415970, 28.164412, 21.252594>,  <41.484867, 28.388212, 21.305193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.415970, 28.164412, 21.252594>,  <41.301140, 27.791412, 21.164930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415970, 28.164412, 21.252594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517131, -0.343456, 0.783973,
		0.806326, -0.111729, -0.580824,
		0.287079, 0.932499, 0.219159,
		41.502094, 28.444160, 21.318342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066467, 27.820902, 21.242188>,  <41.301140, 27.791412, 21.164930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066467, 27.820902, 21.242188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.903095, 28.120829, 21.450401>,  <41.805073, 28.300785, 21.575329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.903095, 28.120829, 21.450401>,  <42.066467, 27.820902, 21.242188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903095, 28.120829, 21.450401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554247, -0.249382, 0.794115,
		0.725254, 0.612846, -0.313729,
		-0.408432, 0.749819, 0.520534,
		41.780567, 28.345774, 21.606562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607021, 28.023050, 21.688173>,  <42.066467, 27.820902, 21.242188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607021, 28.023050, 21.688173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.287151, 28.185894, 21.864710>,  <42.095230, 28.283600, 21.970631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.287151, 28.185894, 21.864710>,  <42.607021, 28.023050, 21.688173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287151, 28.185894, 21.864710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359780, -0.263581, 0.895033,
		0.480704, 0.874521, 0.064310,
		-0.799676, 0.407109, 0.441340,
		42.047249, 28.308027, 21.997112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.773739, 28.735739, 25.566721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396286, 28.867626, 25.555147>,  <46.169815, 28.946758, 25.548203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396286, 28.867626, 25.555147>,  <46.773739, 28.735739, 25.566721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396286, 28.867626, 25.555147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026611, 0.011558, 0.999579,
		0.329914, 0.944008, -0.002133,
		-0.943636, 0.329718, -0.028934,
		46.113194, 28.966541, 25.546467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807777, 29.322500, 25.985622>,  <46.773739, 28.735739, 25.566721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.807777, 29.322500, 25.985622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.433132, 29.183983, 25.964323>,  <46.208344, 29.100872, 25.951544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.433132, 29.183983, 25.964323>,  <46.807777, 29.322500, 25.985622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433132, 29.183983, 25.964323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020720, -0.096962, 0.995072,
		-0.349748, 0.933102, 0.083641,
		-0.936615, -0.346291, -0.053246,
		46.152149, 29.080095, 25.948349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462292, 29.693520, 26.443871>,  <46.807777, 29.322500, 25.985622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462292, 29.693520, 26.443871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.264240, 29.351254, 26.383625>,  <46.145409, 29.145895, 26.347477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.264240, 29.351254, 26.383625>,  <46.462292, 29.693520, 26.443871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264240, 29.351254, 26.383625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016602, -0.164007, 0.986320,
		-0.868659, 0.490859, 0.066999,
		-0.495132, -0.855663, -0.150615,
		46.115700, 29.094555, 26.338440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990517, 29.679310, 26.939953>,  <46.462292, 29.693520, 26.443871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990517, 29.679310, 26.939953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949181, 29.285912, 26.880547>,  <45.924381, 29.049873, 26.844902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949181, 29.285912, 26.880547>,  <45.990517, 29.679310, 26.939953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949181, 29.285912, 26.880547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408153, -0.094235, 0.908037,
		-0.907046, 0.154452, -0.391679,
		-0.103338, -0.983496, -0.148515,
		45.918179, 28.990862, 26.835993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387672, 29.507040, 27.223408>,  <45.990517, 29.679310, 26.939953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387672, 29.507040, 27.223408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.567253, 29.151230, 27.189484>,  <45.674999, 28.937744, 27.169128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.567253, 29.151230, 27.189484>,  <45.387672, 29.507040, 27.223408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567253, 29.151230, 27.189484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355668, -0.264962, 0.896268,
		-0.819722, -0.372215, -0.435329,
		0.448950, -0.889523, -0.084811,
		45.701939, 28.884373, 27.164040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932774, 28.953880, 27.451071>,  <45.387672, 29.507040, 27.223408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932774, 28.953880, 27.451071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.296806, 28.792477, 27.488888>,  <45.515224, 28.695635, 27.511578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.296806, 28.792477, 27.488888>,  <44.932774, 28.953880, 27.451071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296806, 28.792477, 27.488888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211040, -0.254877, 0.943663,
		-0.356682, -0.878758, -0.317115,
		0.910077, -0.403511, 0.094543,
		45.569828, 28.671425, 27.517250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784130, 28.418255, 27.906839>,  <44.932774, 28.953880, 27.451071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784130, 28.418255, 27.906839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181469, 28.461575, 27.922483>,  <45.419872, 28.487566, 27.931870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181469, 28.461575, 27.922483>,  <44.784130, 28.418255, 27.906839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181469, 28.461575, 27.922483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020419, -0.168599, 0.985473,
		0.113320, -0.979717, -0.165266,
		0.993349, 0.108299, 0.039110,
		45.479473, 28.494064, 27.934216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003654, 27.901228, 28.376629>,  <44.784130, 28.418255, 27.906839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003654, 27.901228, 28.376629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310623, 28.157335, 28.363256>,  <45.494804, 28.311001, 28.355232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310623, 28.157335, 28.363256>,  <45.003654, 27.901228, 28.376629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310623, 28.157335, 28.363256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037348, 0.007410, 0.999275,
		0.640054, -0.768114, -0.018226,
		0.767422, 0.640271, -0.033430,
		45.540852, 28.349417, 28.353228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567741, 27.590618, 28.761429>,  <45.003654, 27.901228, 28.376629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567741, 27.590618, 28.761429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.629101, 27.985878, 28.763430>,  <45.665916, 28.223034, 28.764629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.629101, 27.985878, 28.763430>,  <45.567741, 27.590618, 28.761429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629101, 27.985878, 28.763430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023318, -0.001440, 0.999727,
		0.987889, -0.153474, 0.022821,
		0.153399, 0.988152, 0.005002,
		45.675121, 28.282324, 28.764931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028904, 27.685659, 29.270880>,  <45.567741, 27.590618, 28.761429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028904, 27.685659, 29.270880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890999, 28.058926, 29.230192>,  <45.808258, 28.282885, 29.205780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890999, 28.058926, 29.230192>,  <46.028904, 27.685659, 29.270880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890999, 28.058926, 29.230192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060363, 0.130177, 0.989652,
		0.936748, 0.335051, -0.101208,
		-0.344759, 0.933164, -0.101719,
		45.787571, 28.338875, 29.199677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360901, 27.963243, 29.777239>,  <46.028904, 27.685659, 29.270880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360901, 27.963243, 29.777239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059998, 28.209503, 29.683363>,  <45.879456, 28.357260, 29.627037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059998, 28.209503, 29.683363>,  <46.360901, 27.963243, 29.777239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059998, 28.209503, 29.683363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089685, 0.257203, 0.962186,
		0.652732, 0.744864, -0.138269,
		-0.752262, 0.615649, -0.234688,
		45.834320, 28.394197, 29.612957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491993, 28.474037, 30.239428>,  <46.360901, 27.963243, 29.777239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491993, 28.474037, 30.239428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121082, 28.565252, 30.120665>,  <45.898537, 28.619982, 30.049406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121082, 28.565252, 30.120665>,  <46.491993, 28.474037, 30.239428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121082, 28.565252, 30.120665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157400, 0.482110, 0.861856,
		0.339678, 0.845913, -0.411157,
		-0.927278, 0.228037, -0.296909,
		45.842899, 28.633663, 30.031591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317253, 29.242018, 30.398464>,  <46.491993, 28.474037, 30.239428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317253, 29.242018, 30.398464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978115, 29.030836, 30.418144>,  <45.774632, 28.904127, 30.429953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978115, 29.030836, 30.418144>,  <46.317253, 29.242018, 30.398464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978115, 29.030836, 30.418144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224230, 0.441082, 0.869004,
		-0.480494, 0.725750, -0.492353,
		-0.847848, -0.527952, 0.049202,
		45.723763, 28.872450, 30.432905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391476, 29.715229, 29.776363>,  <46.317253, 29.242018, 30.398464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391476, 29.715229, 29.776363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.284958, 29.769800, 30.158039>,  <46.221046, 29.802544, 30.387045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.284958, 29.769800, 30.158039>,  <46.391476, 29.715229, 29.776363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284958, 29.769800, 30.158039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728465, 0.619780, -0.291911,
		-0.631212, -0.772826, -0.065658,
		-0.266290, 0.136428, 0.954189,
		46.205070, 29.810728, 30.444296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762016, 29.489843, 29.877970>,  <46.391476, 29.715229, 29.776363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762016, 29.489843, 29.877970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864067, 29.791914, 30.119503>,  <45.925297, 29.973156, 30.264423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864067, 29.791914, 30.119503>,  <45.762016, 29.489843, 29.877970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864067, 29.791914, 30.119503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637074, 0.601071, -0.482545,
		-0.727355, -0.261576, 0.634455,
		0.255131, 0.755176, 0.603835,
		45.940605, 30.018467, 30.300653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151627, 29.906591, 30.044050>,  <45.762016, 29.489843, 29.877970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151627, 29.906591, 30.044050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.448048, 30.162663, 30.125055>,  <45.625900, 30.316305, 30.173658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.448048, 30.162663, 30.125055>,  <45.151627, 29.906591, 30.044050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448048, 30.162663, 30.125055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412925, 0.672340, -0.614372,
		-0.529466, 0.371659, 0.762585,
		0.741053, 0.640179, 0.202514,
		45.670364, 30.354715, 30.185810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808624, 30.499397, 30.214016>,  <45.151627, 29.906591, 30.044050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808624, 30.499397, 30.214016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176601, 30.608496, 30.101360>,  <45.397388, 30.673956, 30.033768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176601, 30.608496, 30.101360>,  <44.808624, 30.499397, 30.214016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176601, 30.608496, 30.101360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391895, 0.660634, -0.640298,
		0.011421, 0.699408, 0.714632,
		0.919939, 0.272748, -0.281640,
		45.452583, 30.690321, 30.016869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771168, 31.255003, 30.063139>,  <44.808624, 30.499397, 30.214016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771168, 31.255003, 30.063139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095535, 31.099619, 29.888090>,  <45.290154, 31.006388, 29.783060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095535, 31.099619, 29.888090>,  <44.771168, 31.255003, 30.063139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095535, 31.099619, 29.888090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080070, 0.667170, -0.740589,
		0.579659, 0.635596, 0.509914,
		0.810915, -0.388461, -0.437624,
		45.338810, 30.983080, 29.756804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095352, 31.853720, 29.822229>,  <44.771168, 31.255003, 30.063139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095352, 31.853720, 29.822229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273617, 31.556425, 29.622633>,  <45.380573, 31.378048, 29.502876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273617, 31.556425, 29.622633>,  <45.095352, 31.853720, 29.822229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273617, 31.556425, 29.622633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114917, 0.600289, -0.791484,
		0.887797, 0.295389, 0.352934,
		0.445658, -0.743235, -0.498990,
		45.407314, 31.333454, 29.472937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665524, 32.207306, 29.394770>,  <45.095352, 31.853720, 29.822229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665524, 32.207306, 29.394770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557976, 31.862513, 29.222870>,  <45.493446, 31.655636, 29.119730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.557976, 31.862513, 29.222870>,  <45.665524, 32.207306, 29.394770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557976, 31.862513, 29.222870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243841, 0.492563, -0.835418,
		0.931799, -0.119830, -0.342625,
		-0.268872, -0.861988, -0.429750,
		45.477314, 31.603916, 29.093945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885220, 32.294216, 28.757671>,  <45.665524, 32.207306, 29.394770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885220, 32.294216, 28.757671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646576, 31.977831, 28.703363>,  <45.503387, 31.788000, 28.670778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646576, 31.977831, 28.703363>,  <45.885220, 32.294216, 28.757671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646576, 31.977831, 28.703363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354482, 0.411510, -0.839644,
		0.719997, -0.452813, -0.525894,
		-0.596612, -0.790961, -0.135772,
		45.467590, 31.740543, 28.662632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959919, 32.132687, 27.996853>,  <45.885220, 32.294216, 28.757671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959919, 32.132687, 27.996853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625805, 31.941885, 28.106224>,  <45.425335, 31.827404, 28.171846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.625805, 31.941885, 28.106224>,  <45.959919, 32.132687, 27.996853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625805, 31.941885, 28.106224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447966, 0.302094, -0.841467,
		0.318802, -0.825341, -0.466023,
		-0.835280, -0.477023, 0.273417,
		45.375217, 31.798784, 28.188251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747086, 31.641323, 27.449095>,  <45.959919, 32.132687, 27.996853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747086, 31.641323, 27.449095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440086, 31.782364, 27.663242>,  <45.255886, 31.866989, 27.791731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440086, 31.782364, 27.663242>,  <45.747086, 31.641323, 27.449095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440086, 31.782364, 27.663242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385792, 0.412919, -0.825022,
		-0.511968, -0.839744, -0.180884,
		-0.767498, 0.352602, 0.535368,
		45.209839, 31.888144, 27.823853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361572, 31.853012, 26.991880>,  <45.747086, 31.641323, 27.449095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361572, 31.853012, 26.991880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121475, 31.967035, 27.290796>,  <44.977417, 32.035450, 27.470146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121475, 31.967035, 27.290796>,  <45.361572, 31.853012, 26.991880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121475, 31.967035, 27.290796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568790, 0.504731, -0.649403,
		-0.562300, -0.814854, -0.140824,
		-0.600247, 0.285060, 0.747291,
		44.941402, 32.052555, 27.514984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664417, 31.565672, 26.866146>,  <45.361572, 31.853012, 26.991880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664417, 31.565672, 26.866146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657040, 31.903366, 27.080406>,  <44.652615, 32.105984, 27.208963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.657040, 31.903366, 27.080406>,  <44.664417, 31.565672, 26.866146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657040, 31.903366, 27.080406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655947, 0.394115, -0.643744,
		-0.754581, -0.363231, 0.546507,
		-0.018441, 0.844237, 0.535652,
		44.651508, 32.156639, 27.241102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925224, 31.792223, 27.023811>,  <44.664417, 31.565672, 26.866146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925224, 31.792223, 27.023811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125576, 32.130657, 27.096764>,  <44.245785, 32.333717, 27.140535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125576, 32.130657, 27.096764>,  <43.925224, 31.792223, 27.023811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125576, 32.130657, 27.096764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624078, 0.499049, -0.601229,
		-0.599708, 0.187322, 0.777985,
		0.500876, 0.846085, 0.182380,
		44.275841, 32.384483, 27.151478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485222, 32.242687, 27.083160>,  <43.925224, 31.792223, 27.023811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485222, 32.242687, 27.083160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779251, 32.499325, 26.995504>,  <43.955669, 32.653309, 26.942911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779251, 32.499325, 26.995504>,  <43.485222, 32.242687, 27.083160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779251, 32.499325, 26.995504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614069, 0.493031, -0.616312,
		-0.287379, 0.587602, 0.756397,
		0.735073, 0.641595, -0.219142,
		43.999775, 32.691803, 26.929762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100990, 32.860538, 26.839643>,  <43.485222, 32.242687, 27.083160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100990, 32.860538, 26.839643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471947, 32.871223, 26.690386>,  <43.694519, 32.877636, 26.600832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471947, 32.871223, 26.690386>,  <43.100990, 32.860538, 26.839643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471947, 32.871223, 26.690386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354592, 0.380658, -0.854028,
		0.119226, 0.924330, 0.362491,
		0.927389, 0.026715, -0.373145,
		43.750164, 32.879238, 26.578442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968769, 33.541157, 27.070229>,  <43.100990, 32.860538, 26.839643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968769, 33.541157, 27.070229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657501, 33.743793, 27.218721>,  <42.470741, 33.865376, 27.307817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657501, 33.743793, 27.218721>,  <42.968769, 33.541157, 27.070229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657501, 33.743793, 27.218721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330419, -0.172447, 0.927947,
		0.534107, 0.844765, -0.033193,
		-0.778173, 0.506591, 0.371231,
		42.424049, 33.895771, 27.330091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200546, 34.089127, 27.636570>,  <42.968769, 33.541157, 27.070229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200546, 34.089127, 27.636570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.823128, 33.969055, 27.692579>,  <42.596676, 33.897011, 27.726185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.823128, 33.969055, 27.692579>,  <43.200546, 34.089127, 27.636570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823128, 33.969055, 27.692579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199113, -0.176204, 0.964005,
		-0.264700, 0.937468, 0.226026,
		-0.943551, -0.300177, 0.140021,
		42.540062, 33.879002, 27.734585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021553, 34.228973, 28.337782>,  <43.200546, 34.089127, 27.636570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021553, 34.228973, 28.337782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704113, 34.004314, 28.244190>,  <42.513649, 33.869518, 28.188036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704113, 34.004314, 28.244190>,  <43.021553, 34.228973, 28.337782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704113, 34.004314, 28.244190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039413, -0.431202, 0.901394,
		-0.607158, 0.706127, 0.364340,
		-0.793603, -0.561649, -0.233977,
		42.466034, 33.835819, 28.173998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517136, 34.288311, 28.861475>,  <43.021553, 34.228973, 28.337782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517136, 34.288311, 28.861475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469925, 33.938797, 28.672764>,  <42.441601, 33.729088, 28.559536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469925, 33.938797, 28.672764>,  <42.517136, 34.288311, 28.861475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469925, 33.938797, 28.672764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003031, -0.474781, 0.880099,
		-0.993006, 0.105303, 0.053388,
		-0.118025, -0.873782, -0.471779,
		42.434517, 33.676662, 28.531231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259979, 33.862411, 29.432417>,  <42.517136, 34.288311, 28.861475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259979, 33.862411, 29.432417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347599, 33.576569, 29.166677>,  <42.400169, 33.405064, 29.007235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347599, 33.576569, 29.166677>,  <42.259979, 33.862411, 29.432417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347599, 33.576569, 29.166677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049844, -0.671798, 0.739055,
		-0.974440, -0.195003, -0.111538,
		0.219048, -0.714606, -0.664347,
		42.413315, 33.362186, 28.967373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815651, 33.321526, 29.571056>,  <42.259979, 33.862411, 29.432417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815651, 33.321526, 29.571056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101101, 33.137867, 29.359425>,  <42.272373, 33.027672, 29.232445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101101, 33.137867, 29.359425>,  <41.815651, 33.321526, 29.571056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101101, 33.137867, 29.359425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037984, -0.728787, 0.683686,
		-0.699492, -0.507995, -0.502644,
		0.713630, -0.459141, -0.529077,
		42.315189, 33.000126, 29.200701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617355, 32.632603, 29.457596>,  <41.815651, 33.321526, 29.571056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617355, 32.632603, 29.457596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.016678, 32.639442, 29.435329>,  <42.256271, 32.643547, 29.421968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.016678, 32.639442, 29.435329>,  <41.617355, 32.632603, 29.457596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016678, 32.639442, 29.435329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048153, -0.779915, 0.624030,
		-0.032747, -0.625651, -0.779415,
		0.998303, 0.017096, -0.055667,
		42.316170, 32.644569, 29.418629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798893, 31.985744, 29.510542>,  <41.617355, 32.632603, 29.457596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798893, 31.985744, 29.510542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.129513, 32.192898, 29.598728>,  <42.327885, 32.317188, 29.651640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.129513, 32.192898, 29.598728>,  <41.798893, 31.985744, 29.510542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129513, 32.192898, 29.598728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169477, -0.602501, 0.779917,
		0.536736, -0.607280, -0.585769,
		0.826554, 0.517884, 0.220464,
		42.377480, 32.348263, 29.664867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267761, 31.496105, 29.762161>,  <41.798893, 31.985744, 29.510542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267761, 31.496105, 29.762161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421047, 31.832523, 29.914892>,  <42.513020, 32.034374, 30.006531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421047, 31.832523, 29.914892>,  <42.267761, 31.496105, 29.762161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421047, 31.832523, 29.914892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240068, -0.489873, 0.838088,
		0.891916, -0.229501, -0.389634,
		0.383213, 0.841043, 0.381829,
		42.536011, 32.084835, 30.029442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804943, 31.283270, 30.177811>,  <42.267761, 31.496105, 29.762161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804943, 31.283270, 30.177811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715527, 31.642582, 30.329134>,  <42.661877, 31.858170, 30.419928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715527, 31.642582, 30.329134>,  <42.804943, 31.283270, 30.177811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715527, 31.642582, 30.329134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091355, -0.367114, 0.925679,
		0.970404, 0.241487, 0.000002,
		-0.223540, 0.898282, 0.378310,
		42.648464, 31.912067, 30.442627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383133, 31.500732, 30.672178>,  <42.804943, 31.283270, 30.177811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383133, 31.500732, 30.672178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056168, 31.698956, 30.789654>,  <42.859989, 31.817890, 30.860140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056168, 31.698956, 30.789654>,  <43.383133, 31.500732, 30.672178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056168, 31.698956, 30.789654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066766, -0.424895, 0.902777,
		0.572167, 0.757552, 0.314229,
		-0.817415, 0.495559, 0.293689,
		42.810944, 31.847624, 30.877760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436386, 31.487743, 31.413961>,  <43.383133, 31.500732, 30.672178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436386, 31.487743, 31.413961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047760, 31.560247, 31.353020>,  <42.814587, 31.603750, 31.316454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047760, 31.560247, 31.353020>,  <43.436386, 31.487743, 31.413961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047760, 31.560247, 31.353020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200507, -0.287512, 0.936554,
		0.125957, 0.940469, 0.315679,
		-0.971561, 0.181262, -0.152356,
		42.756290, 31.614626, 31.307312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.476463, 34.824665, 24.002510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103355, 34.686672, 23.960705>,  <41.879490, 34.603878, 23.935621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103355, 34.686672, 23.960705>,  <42.476463, 34.824665, 24.002510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103355, 34.686672, 23.960705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109064, -0.006243, 0.994015,
		-0.343566, 0.938590, -0.031801,
		-0.932774, -0.344978, -0.104511,
		41.823524, 34.583179, 23.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078514, 35.210648, 24.374662>,  <42.476463, 34.824665, 24.002510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078514, 35.210648, 24.374662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849831, 34.883839, 24.344667>,  <41.712620, 34.687752, 24.326670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849831, 34.883839, 24.344667>,  <42.078514, 35.210648, 24.374662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849831, 34.883839, 24.344667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116472, -0.009653, 0.993147,
		-0.812146, 0.576527, -0.089641,
		-0.571711, -0.817021, -0.074989,
		41.678318, 34.638733, 24.322170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764923, 35.159805, 24.979300>,  <42.078514, 35.210648, 24.374662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764923, 35.159805, 24.979300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622795, 34.805264, 24.860554>,  <41.537518, 34.592537, 24.789307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622795, 34.805264, 24.860554>,  <41.764923, 35.159805, 24.979300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622795, 34.805264, 24.860554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130880, -0.267286, 0.954688,
		-0.925538, 0.378070, -0.021035,
		-0.355316, -0.886353, -0.296865,
		41.516201, 34.539356, 24.771494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107750, 35.042660, 25.242676>,  <41.764923, 35.159805, 24.979300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107750, 35.042660, 25.242676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287098, 34.688522, 25.193464>,  <41.394707, 34.476040, 25.163937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287098, 34.688522, 25.193464>,  <41.107750, 35.042660, 25.242676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287098, 34.688522, 25.193464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021821, -0.126757, 0.991694,
		-0.893583, -0.447327, -0.037515,
		0.448367, -0.885342, -0.123029,
		41.421608, 34.422920, 25.156555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726498, 34.564781, 25.544350>,  <41.107750, 35.042660, 25.242676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726498, 34.564781, 25.544350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089241, 34.399040, 25.513565>,  <41.306889, 34.299595, 25.495094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089241, 34.399040, 25.513565>,  <40.726498, 34.564781, 25.544350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089241, 34.399040, 25.513565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013932, -0.153042, 0.988122,
		-0.421206, -0.897158, -0.133014,
		0.906858, -0.414350, -0.076961,
		41.361298, 34.274734, 25.490477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697796, 33.989330, 26.026714>,  <40.726498, 34.564781, 25.544350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697796, 33.989330, 26.026714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086937, 34.065781, 25.974525>,  <41.320423, 34.111652, 25.943213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086937, 34.065781, 25.974525>,  <40.697796, 33.989330, 26.026714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086937, 34.065781, 25.974525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169699, -0.205882, 0.963750,
		0.157339, -0.959730, -0.232728,
		0.972855, 0.191130, -0.130472,
		41.378792, 34.123119, 25.935383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091824, 33.388275, 26.212135>,  <40.697796, 33.989330, 26.026714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091824, 33.388275, 26.212135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356678, 33.685528, 26.250763>,  <41.515591, 33.863880, 26.273939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356678, 33.685528, 26.250763>,  <41.091824, 33.388275, 26.212135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356678, 33.685528, 26.250763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210696, -0.308281, 0.927669,
		0.719154, -0.593897, -0.360700,
		0.662137, 0.743135, 0.096570,
		41.555321, 33.908466, 26.279734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806423, 33.084911, 26.462738>,  <41.091824, 33.388275, 26.212135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806423, 33.084911, 26.462738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843662, 33.477505, 26.529697>,  <41.866005, 33.713062, 26.569874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843662, 33.477505, 26.529697>,  <41.806423, 33.084911, 26.462738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843662, 33.477505, 26.529697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359526, -0.189921, 0.913603,
		0.928480, -0.024866, -0.370549,
		0.093093, 0.981484, 0.167398,
		41.871590, 33.771950, 26.579916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522728, 33.208416, 26.567408>,  <41.806423, 33.084911, 26.462738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522728, 33.208416, 26.567408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293716, 33.472309, 26.762123>,  <42.156311, 33.630646, 26.878952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293716, 33.472309, 26.762123>,  <42.522728, 33.208416, 26.567408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293716, 33.472309, 26.762123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451757, -0.241625, 0.858797,
		0.684198, 0.711596, -0.159703,
		-0.572528, 0.659734, 0.486788,
		42.121960, 33.670231, 26.908159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247044, 33.585220, 26.321386>,  <42.522728, 33.208416, 26.567408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247044, 33.585220, 26.321386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548157, 33.340576, 26.224018>,  <43.728825, 33.193790, 26.165598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548157, 33.340576, 26.224018>,  <43.247044, 33.585220, 26.321386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548157, 33.340576, 26.224018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067972, 0.295589, -0.952894,
		0.654752, 0.733866, 0.180942,
		0.752781, -0.611611, -0.243420,
		43.773991, 33.157093, 26.150991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559402, 33.926636, 25.808718>,  <43.247044, 33.585220, 26.321386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559402, 33.926636, 25.808718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710495, 33.561611, 25.746046>,  <43.801151, 33.342594, 25.708443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710495, 33.561611, 25.746046>,  <43.559402, 33.926636, 25.808718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710495, 33.561611, 25.746046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072129, 0.139699, -0.987563,
		0.923103, 0.384332, -0.013054,
		0.377728, -0.912564, -0.156678,
		43.823814, 33.287842, 25.699043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023224, 34.018700, 25.285322>,  <43.559402, 33.926636, 25.808718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023224, 34.018700, 25.285322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917671, 33.633289, 25.267519>,  <43.854340, 33.402042, 25.256838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917671, 33.633289, 25.267519>,  <44.023224, 34.018700, 25.285322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917671, 33.633289, 25.267519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035815, 0.036323, -0.998698,
		0.963891, -0.265129, 0.024924,
		-0.263878, -0.963529, -0.044507,
		43.838509, 33.344231, 25.254168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497829, 33.685295, 24.873737>,  <44.023224, 34.018700, 25.285322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497829, 33.685295, 24.873737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175514, 33.449234, 24.854010>,  <43.982124, 33.307598, 24.842173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175514, 33.449234, 24.854010>,  <44.497829, 33.685295, 24.873737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175514, 33.449234, 24.854010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087924, 0.201573, -0.975519,
		0.585645, -0.781722, -0.214313,
		-0.805785, -0.590151, -0.049318,
		43.933781, 33.272190, 24.839214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670231, 33.193314, 24.347137>,  <44.497829, 33.685295, 24.873737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670231, 33.193314, 24.347137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272312, 33.164909, 24.376356>,  <44.033562, 33.147869, 24.393887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272312, 33.164909, 24.376356>,  <44.670231, 33.193314, 24.347137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272312, 33.164909, 24.376356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077744, 0.065830, -0.994798,
		0.065830, -0.995301, -0.071008,
		0.994798, 0.071008, -0.073046,
		43.973873, 33.143608, 24.398270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574806, 32.640198, 23.942451>,  <44.670231, 33.193314, 24.347137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574806, 32.640198, 23.942451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243065, 32.859661, 23.984661>,  <44.044018, 32.991341, 24.009987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243065, 32.859661, 23.984661>,  <44.574806, 32.640198, 23.942451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243065, 32.859661, 23.984661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101083, 0.038407, -0.994136,
		-0.549498, -0.835161, 0.023607,
		-0.829358, 0.548663, 0.105525,
		43.994259, 33.024261, 24.016319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168945, 32.277714, 23.513515>,  <44.574806, 32.640198, 23.942451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168945, 32.277714, 23.513515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950809, 32.612251, 23.535883>,  <43.819927, 32.812973, 23.549303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950809, 32.612251, 23.535883>,  <44.168945, 32.277714, 23.513515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950809, 32.612251, 23.535883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238405, -0.090803, -0.966911,
		-0.803595, -0.540629, 0.248908,
		-0.545343, 0.836346, 0.055920,
		43.787209, 32.863155, 23.552658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548893, 32.207779, 23.299713>,  <44.168945, 32.277714, 23.513515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548893, 32.207779, 23.299713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597397, 32.602898, 23.260609>,  <43.626499, 32.839970, 23.237146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597397, 32.602898, 23.260609>,  <43.548893, 32.207779, 23.299713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597397, 32.602898, 23.260609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237359, -0.066773, -0.969124,
		-0.963824, 0.140722, 0.226366,
		0.121262, 0.987795, -0.097759,
		43.633774, 32.899235, 23.231281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979633, 32.461700, 23.026882>,  <43.548893, 32.207779, 23.299713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979633, 32.461700, 23.026882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267521, 32.724113, 22.935987>,  <43.440254, 32.881561, 22.881451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267521, 32.724113, 22.935987>,  <42.979633, 32.461700, 23.026882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267521, 32.724113, 22.935987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207408, -0.109190, -0.972142,
		-0.662566, 0.746795, 0.057480,
		0.719714, 0.656030, -0.227237,
		43.483437, 32.920921, 22.867817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726562, 32.889034, 22.534666>,  <42.979633, 32.461700, 23.026882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726562, 32.889034, 22.534666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098305, 33.023968, 22.474661>,  <43.321350, 33.104927, 22.438658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098305, 33.023968, 22.474661>,  <42.726562, 32.889034, 22.534666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098305, 33.023968, 22.474661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173474, 0.040326, -0.984012,
		-0.325892, 0.940521, 0.095996,
		0.929355, 0.337335, -0.150014,
		43.377110, 33.125168, 22.429657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683529, 33.463623, 22.071814>,  <42.726562, 32.889034, 22.534666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683529, 33.463623, 22.071814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064770, 33.343334, 22.058165>,  <43.293514, 33.271160, 22.049974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064770, 33.343334, 22.058165>,  <42.683529, 33.463623, 22.071814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064770, 33.343334, 22.058165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033346, 0.216397, -0.975736,
		0.300811, 0.928836, 0.216276,
		0.953101, -0.300724, -0.034122,
		43.350700, 33.253117, 22.047928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110111, 34.031410, 21.847622>,  <42.683529, 33.463623, 22.071814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110111, 34.031410, 21.847622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280704, 33.685543, 21.741444>,  <43.383060, 33.478024, 21.677736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280704, 33.685543, 21.741444>,  <43.110111, 34.031410, 21.847622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280704, 33.685543, 21.741444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138314, 0.227676, -0.963864,
		0.893857, 0.447788, -0.022495,
		0.426485, -0.864667, -0.265445,
		43.408649, 33.426144, 21.661810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536606, 34.177765, 21.307215>,  <43.110111, 34.031410, 21.847622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536606, 34.177765, 21.307215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504623, 33.785290, 21.236929>,  <43.485432, 33.549805, 21.194757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504623, 33.785290, 21.236929>,  <43.536606, 34.177765, 21.307215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504623, 33.785290, 21.236929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186902, 0.187908, -0.964240,
		0.979119, -0.044260, -0.198411,
		-0.079960, -0.981189, -0.175712,
		43.480637, 33.490932, 21.184216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950665, 34.111210, 20.813179>,  <43.536606, 34.177765, 21.307215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950665, 34.111210, 20.813179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703583, 33.796932, 20.799810>,  <43.555332, 33.608364, 20.791790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703583, 33.796932, 20.799810>,  <43.950665, 34.111210, 20.813179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703583, 33.796932, 20.799810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132375, 0.145775, -0.980422,
		0.775187, -0.601190, -0.194053,
		-0.617708, -0.785698, -0.033420,
		43.518269, 33.561222, 20.789783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.156738, 28.618835, 21.582926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.330284, 28.971418, 21.657543>,  <38.434410, 29.182968, 21.702314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.330284, 28.971418, 21.657543>,  <38.156738, 28.618835, 21.582926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330284, 28.971418, 21.657543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641410, -0.447577, 0.623111,
		0.632738, -0.150693, -0.759562,
		0.433861, 0.881457, 0.186543,
		38.460442, 29.235855, 21.713507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897278, 28.548586, 21.527641>,  <38.156738, 28.618835, 21.582926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897278, 28.548586, 21.527641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802021, 28.845383, 21.778316>,  <38.744865, 29.023460, 21.928722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802021, 28.845383, 21.778316>,  <38.897278, 28.548586, 21.527641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802021, 28.845383, 21.778316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460699, -0.481741, 0.745441,
		0.855012, 0.466235, -0.227112,
		-0.238141, 0.741991, 0.626688,
		38.730579, 29.067980, 21.966324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416508, 28.468039, 21.921085>,  <38.897278, 28.548586, 21.527641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416508, 28.468039, 21.921085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184391, 28.724892, 22.121456>,  <39.045120, 28.879004, 22.241678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184391, 28.724892, 22.121456>,  <39.416508, 28.468039, 21.921085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184391, 28.724892, 22.121456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408373, -0.302736, 0.861152,
		0.704621, 0.704285, -0.086553,
		-0.580294, 0.642132, 0.500925,
		39.010303, 28.917532, 22.271734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881115, 28.881033, 22.296785>,  <39.416508, 28.468039, 21.921085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881115, 28.881033, 22.296785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527058, 28.895716, 22.482330>,  <39.314621, 28.904526, 22.593657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.527058, 28.895716, 22.482330>,  <39.881115, 28.881033, 22.296785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527058, 28.895716, 22.482330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438142, -0.269912, 0.857426,
		0.156677, 0.962185, 0.222828,
		-0.885146, 0.036708, 0.463863,
		39.261513, 28.906729, 22.621489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009109, 29.237116, 22.918215>,  <39.881115, 28.881033, 22.296785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009109, 29.237116, 22.918215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.663105, 29.052896, 22.997858>,  <39.455502, 28.942364, 23.045645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.663105, 29.052896, 22.997858>,  <40.009109, 29.237116, 22.918215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663105, 29.052896, 22.997858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312587, -0.184239, 0.931851,
		-0.392480, 0.868303, 0.303331,
		-0.865014, -0.460550, 0.199110,
		39.403603, 28.914732, 23.057590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943348, 29.406385, 23.629881>,  <40.009109, 29.237116, 22.918215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943348, 29.406385, 23.629881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699860, 29.100882, 23.543964>,  <39.553768, 28.917580, 23.492414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699860, 29.100882, 23.543964>,  <39.943348, 29.406385, 23.629881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699860, 29.100882, 23.543964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180028, -0.396631, 0.900152,
		-0.772693, 0.509269, 0.378934,
		-0.608716, -0.763760, -0.214792,
		39.517246, 28.871754, 23.479527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442276, 29.430735, 24.109150>,  <39.943348, 29.406385, 23.629881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442276, 29.430735, 24.109150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454525, 29.049276, 23.989403>,  <39.461872, 28.820402, 23.917555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454525, 29.049276, 23.989403>,  <39.442276, 29.430735, 24.109150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454525, 29.049276, 23.989403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178079, -0.289514, 0.940462,
		-0.983539, -0.082109, 0.160960,
		0.030620, -0.953645, -0.299370,
		39.463711, 28.763184, 23.899591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007790, 29.034916, 24.508341>,  <39.442276, 29.430735, 24.109150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007790, 29.034916, 24.508341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246346, 28.750179, 24.359962>,  <39.389481, 28.579338, 24.270935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246346, 28.750179, 24.359962>,  <39.007790, 29.034916, 24.508341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246346, 28.750179, 24.359962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163899, -0.344398, 0.924407,
		-0.785785, -0.612103, -0.088725,
		0.596389, -0.711842, -0.370946,
		39.425262, 28.536627, 24.248678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866585, 28.434704, 24.891445>,  <39.007790, 29.034916, 24.508341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866585, 28.434704, 24.891445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234692, 28.369436, 24.749184>,  <39.455555, 28.330276, 24.663826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234692, 28.369436, 24.749184>,  <38.866585, 28.434704, 24.891445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234692, 28.369436, 24.749184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304580, -0.271902, 0.912853,
		-0.245644, -0.948392, -0.200527,
		0.920266, -0.163160, -0.355653,
		39.510773, 28.320486, 24.642487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069958, 27.745869, 25.135700>,  <38.866585, 28.434704, 24.891445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069958, 27.745869, 25.135700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418201, 27.900078, 25.013451>,  <39.627148, 27.992603, 24.940100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418201, 27.900078, 25.013451>,  <39.069958, 27.745869, 25.135700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418201, 27.900078, 25.013451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418377, -0.253339, 0.872227,
		0.258838, -0.887237, -0.381854,
		0.870611, 0.385524, -0.305626,
		39.679386, 28.015736, 24.921762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572971, 27.187550, 25.250626>,  <39.069958, 27.745869, 25.135700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572971, 27.187550, 25.250626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.769569, 27.535719, 25.239347>,  <39.887527, 27.744621, 25.232580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.769569, 27.535719, 25.239347>,  <39.572971, 27.187550, 25.250626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769569, 27.535719, 25.239347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355670, -0.171070, 0.918822,
		0.794940, -0.461626, -0.393664,
		0.491497, 0.870423, -0.028196,
		39.917019, 27.796846, 25.230888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195087, 27.036592, 25.350183>,  <39.572971, 27.187550, 25.250626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195087, 27.036592, 25.350183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194370, 27.416304, 25.475956>,  <40.193939, 27.644131, 25.551420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194370, 27.416304, 25.475956>,  <40.195087, 27.036592, 25.350183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194370, 27.416304, 25.475956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500263, -0.271407, 0.822238,
		0.865872, 0.158776, -0.474401,
		-0.001796, 0.949278, 0.314434,
		40.193832, 27.701088, 25.570286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826488, 27.116076, 25.781715>,  <40.195087, 27.036592, 25.350183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826488, 27.116076, 25.781715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.629025, 27.456083, 25.855221>,  <40.510548, 27.660088, 25.899324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.629025, 27.456083, 25.855221>,  <40.826488, 27.116076, 25.781715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629025, 27.456083, 25.855221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269324, -0.051487, 0.961672,
		0.826900, 0.524232, -0.203513,
		-0.493661, 0.850018, 0.183763,
		40.480927, 27.711088, 25.910349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258022, 27.633223, 26.047598>,  <40.826488, 27.116076, 25.781715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258022, 27.633223, 26.047598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.889969, 27.709877, 26.184200>,  <40.669136, 27.755871, 26.266161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.889969, 27.709877, 26.184200>,  <41.258022, 27.633223, 26.047598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889969, 27.709877, 26.184200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307141, -0.187824, 0.932945,
		0.242930, 0.963326, 0.113964,
		-0.920136, 0.191638, 0.341505,
		40.613930, 27.767368, 26.286652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885330, 28.059462, 26.175667>,  <41.258022, 27.633223, 26.047598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885330, 28.059462, 26.175667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.196106, 27.835506, 26.060501>,  <42.382572, 27.701134, 25.991402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.196106, 27.835506, 26.060501>,  <41.885330, 28.059462, 26.175667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196106, 27.835506, 26.060501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218173, 0.189542, -0.957327,
		0.590569, 0.806596, 0.025109,
		0.776936, -0.559889, -0.287915,
		42.429188, 27.667540, 25.974127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166100, 28.364754, 25.586185>,  <41.885330, 28.059462, 26.175667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166100, 28.364754, 25.586185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.343094, 28.009480, 25.536650>,  <42.449291, 27.796316, 25.506927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.343094, 28.009480, 25.536650>,  <42.166100, 28.364754, 25.586185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343094, 28.009480, 25.536650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161441, 0.056944, -0.985238,
		0.882125, 0.455945, -0.118193,
		0.442484, -0.888184, -0.123840,
		42.475838, 27.743025, 25.499498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759464, 28.513718, 25.153990>,  <42.166100, 28.364754, 25.586185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759464, 28.513718, 25.153990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.612774, 28.142012, 25.136196>,  <42.524757, 27.918987, 25.125521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.612774, 28.142012, 25.136196>,  <42.759464, 28.513718, 25.153990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612774, 28.142012, 25.136196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102705, 0.087961, -0.990815,
		0.924642, -0.358790, -0.127698,
		-0.366727, -0.929264, -0.044483,
		42.502754, 27.863232, 25.122850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106396, 28.239115, 24.636951>,  <42.759464, 28.513718, 25.153990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106396, 28.239115, 24.636951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.813606, 27.968878, 24.672262>,  <42.637932, 27.806736, 24.693449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.813606, 27.968878, 24.672262>,  <43.106396, 28.239115, 24.636951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813606, 27.968878, 24.672262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075972, -0.047829, -0.995962,
		0.677088, -0.735721, -0.016317,
		-0.731970, -0.675594, 0.088279,
		42.594017, 27.766199, 24.698746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297714, 27.872993, 24.094118>,  <43.106396, 28.239115, 24.636951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297714, 27.872993, 24.094118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.919468, 27.774612, 24.179264>,  <42.692520, 27.715584, 24.230350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.919468, 27.774612, 24.179264>,  <43.297714, 27.872993, 24.094118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919468, 27.774612, 24.179264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205966, -0.053747, -0.977082,
		0.251757, -0.967791, 0.000166,
		-0.945620, -0.245953, 0.212863,
		42.635780, 27.700827, 24.243122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053417, 27.279268, 23.642435>,  <43.297714, 27.872993, 24.094118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053417, 27.279268, 23.642435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.752808, 27.513689, 23.763603>,  <42.572441, 27.654341, 23.836304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.752808, 27.513689, 23.763603>,  <43.053417, 27.279268, 23.642435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752808, 27.513689, 23.763603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379406, -0.008316, -0.925193,
		-0.539690, -0.810233, 0.228600,
		-0.751522, 0.586050, 0.302919,
		42.527351, 27.689505, 23.854479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593166, 27.028738, 23.255610>,  <43.053417, 27.279268, 23.642435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593166, 27.028738, 23.255610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.471344, 27.396605, 23.354774>,  <42.398251, 27.617325, 23.414274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.471344, 27.396605, 23.354774>,  <42.593166, 27.028738, 23.255610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471344, 27.396605, 23.354774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332332, 0.141323, -0.932514,
		-0.892636, -0.366395, 0.262593,
		-0.304559, 0.919664, 0.247915,
		42.379978, 27.672504, 23.429150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924469, 27.123320, 23.015825>,  <42.593166, 27.028738, 23.255610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924469, 27.123320, 23.015825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.011749, 27.506680, 23.089424>,  <42.064117, 27.736696, 23.133583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.011749, 27.506680, 23.089424>,  <41.924469, 27.123320, 23.015825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011749, 27.506680, 23.089424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413756, 0.261610, -0.871990,
		-0.883851, 0.114141, 0.453628,
		0.218203, 0.958401, 0.183998,
		42.077209, 27.794199, 23.144623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345543, 27.449959, 22.895685>,  <41.924469, 27.123320, 23.015825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345543, 27.449959, 22.895685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639412, 27.718924, 22.859642>,  <41.815735, 27.880302, 22.838017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.639412, 27.718924, 22.859642>,  <41.345543, 27.449959, 22.895685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639412, 27.718924, 22.859642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479544, 0.420752, -0.770068,
		-0.479891, 0.608957, 0.631566,
		0.734671, 0.672413, -0.090106,
		41.859814, 27.920647, 22.832611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922783, 28.039455, 22.797485>,  <41.345543, 27.449959, 22.895685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922783, 28.039455, 22.797485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288952, 28.141846, 22.673246>,  <41.508656, 28.203279, 22.598703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288952, 28.141846, 22.673246>,  <40.922783, 28.039455, 22.797485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288952, 28.141846, 22.673246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394710, 0.420001, -0.817192,
		-0.078728, 0.870676, 0.485516,
		0.915427, 0.255974, -0.310599,
		41.563580, 28.218637, 22.580067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975021, 28.762669, 22.558580>,  <40.922783, 28.039455, 22.797485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975021, 28.762669, 22.558580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.308430, 28.618010, 22.391506>,  <41.508472, 28.531214, 22.291262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.308430, 28.618010, 22.391506>,  <40.975021, 28.762669, 22.558580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308430, 28.618010, 22.391506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209441, 0.492744, -0.844593,
		0.511258, 0.791463, 0.334966,
		0.833516, -0.361650, -0.417684,
		41.558483, 28.509514, 22.266201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246361, 29.355675, 22.226820>,  <40.975021, 28.762669, 22.558580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246361, 29.355675, 22.226820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.427517, 29.062834, 22.023287>,  <41.536213, 28.887129, 21.901167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.427517, 29.062834, 22.023287>,  <41.246361, 29.355675, 22.226820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427517, 29.062834, 22.023287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188273, 0.479315, -0.857211,
		0.871459, 0.484025, 0.079243,
		0.452894, -0.732104, -0.508832,
		41.563385, 28.843203, 21.870638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763355, 29.641096, 21.684879>,  <41.246361, 29.355675, 22.226820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763355, 29.641096, 21.684879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692848, 29.264254, 21.570782>,  <41.650543, 29.038147, 21.502323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.692848, 29.264254, 21.570782>,  <41.763355, 29.641096, 21.684879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692848, 29.264254, 21.570782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328899, 0.329493, -0.885020,
		0.927769, -0.062182, -0.367937,
		-0.176265, -0.942108, -0.285242,
		41.639969, 28.981621, 21.485209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202518, 29.436785, 21.099295>,  <41.763355, 29.641096, 21.684879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202518, 29.436785, 21.099295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.864525, 29.222914, 21.095005>,  <41.661728, 29.094591, 21.092432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.864525, 29.222914, 21.095005>,  <42.202518, 29.436785, 21.099295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864525, 29.222914, 21.095005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254666, 0.419936, -0.871090,
		0.470258, -0.733329, -0.491005,
		-0.844987, -0.534680, -0.010725,
		41.611027, 29.062510, 21.091787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833851, 29.047634, 20.958334>,  <42.202518, 29.436785, 21.099295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833851, 29.047634, 20.958334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.164700, 29.232395, 20.830259>,  <43.363209, 29.343252, 20.753414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.164700, 29.232395, 20.830259>,  <42.833851, 29.047634, 20.958334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164700, 29.232395, 20.830259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534988, -0.472499, 0.700380,
		0.172220, -0.750594, -0.637926,
		0.827120, 0.461902, -0.320184,
		43.412834, 29.370966, 20.734203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242973, 28.490324, 20.877541>,  <42.833851, 29.047634, 20.958334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242973, 28.490324, 20.877541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.480671, 28.809969, 20.913965>,  <43.623291, 29.001757, 20.935820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.480671, 28.809969, 20.913965>,  <43.242973, 28.490324, 20.877541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480671, 28.809969, 20.913965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449743, -0.424019, 0.786090,
		0.666786, -0.426177, -0.611367,
		0.594245, 0.799113, 0.091060,
		43.658943, 29.049704, 20.941282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971516, 28.258844, 20.803381>,  <43.242973, 28.490324, 20.877541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971516, 28.258844, 20.803381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.999073, 28.612616, 20.988008>,  <44.015606, 28.824879, 21.098785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.999073, 28.612616, 20.988008>,  <43.971516, 28.258844, 20.803381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999073, 28.612616, 20.988008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430616, -0.443708, 0.785934,
		0.899902, 0.144614, -0.411416,
		0.068892, 0.884426, 0.461567,
		44.019741, 28.877943, 21.126478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695724, 28.338129, 21.124411>,  <43.971516, 28.258844, 20.803381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695724, 28.338129, 21.124411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.475872, 28.614016, 21.312962>,  <44.343960, 28.779549, 21.426092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.475872, 28.614016, 21.312962>,  <44.695724, 28.338129, 21.124411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475872, 28.614016, 21.312962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484853, -0.196128, 0.852321,
		0.680311, 0.697011, -0.226613,
		-0.549631, 0.689717, 0.471376,
		44.310982, 28.820930, 21.454374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160534, 28.745354, 21.494610>,  <44.695724, 28.338129, 21.124411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160534, 28.745354, 21.494610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.801113, 28.782343, 21.666216>,  <44.585461, 28.804537, 21.769180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.801113, 28.782343, 21.666216>,  <45.160534, 28.745354, 21.494610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801113, 28.782343, 21.666216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423559, -0.073237, 0.902903,
		0.114915, 0.993018, 0.026639,
		-0.898550, 0.092474, 0.429017,
		44.531548, 28.810085, 21.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281784, 29.254025, 21.887903>,  <45.160534, 28.745354, 21.494610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281784, 29.254025, 21.887903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.954121, 29.072361, 22.028030>,  <44.757523, 28.963364, 22.112106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.954121, 29.072361, 22.028030>,  <45.281784, 29.254025, 21.887903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954121, 29.072361, 22.028030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333087, 0.120562, 0.935157,
		-0.466945, 0.882726, 0.052515,
		-0.819155, -0.454159, 0.350320,
		44.708374, 28.936113, 22.133127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072884, 29.661020, 22.445948>,  <45.281784, 29.254025, 21.887903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072884, 29.661020, 22.445948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.922195, 29.296230, 22.510925>,  <44.831783, 29.077356, 22.549911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.922195, 29.296230, 22.510925>,  <45.072884, 29.661020, 22.445948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922195, 29.296230, 22.510925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105904, 0.131813, 0.985601,
		-0.920254, 0.388499, 0.046925,
		-0.376719, -0.911973, 0.162445,
		44.809181, 29.022638, 22.559658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678425, 29.816425, 23.013050>,  <45.072884, 29.661020, 22.445948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678425, 29.816425, 23.013050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.713848, 29.418077, 23.021059>,  <44.735100, 29.179070, 23.025864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.713848, 29.418077, 23.021059>,  <44.678425, 29.816425, 23.013050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713848, 29.418077, 23.021059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293767, 0.045318, 0.954802,
		-0.951766, -0.078670, 0.296567,
		0.088555, -0.995870, 0.020022,
		44.740414, 29.119316, 23.027065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326664, 29.612991, 23.651587>,  <44.678425, 29.816425, 23.013050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326664, 29.612991, 23.651587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.604179, 29.345854, 23.543777>,  <44.770687, 29.185572, 23.479092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.604179, 29.345854, 23.543777>,  <44.326664, 29.612991, 23.651587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604179, 29.345854, 23.543777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404422, 0.051628, 0.913114,
		-0.595904, -0.742507, 0.305910,
		0.693787, -0.667845, -0.269521,
		44.812317, 29.145500, 23.462921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286968, 28.979086, 24.108629>,  <44.326664, 29.612991, 23.651587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286968, 28.979086, 24.108629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.662296, 28.992018, 23.970928>,  <44.887493, 28.999777, 23.888308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.662296, 28.992018, 23.970928>,  <44.286968, 28.979086, 24.108629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662296, 28.992018, 23.970928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345410, -0.132937, 0.928988,
		-0.015730, -0.990597, -0.135905,
		0.938320, 0.032330, -0.344253,
		44.943790, 29.001717, 23.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700531, 28.411793, 24.519800>,  <44.286968, 28.979086, 24.108629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700531, 28.411793, 24.519800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.970757, 28.659906, 24.360371>,  <45.132893, 28.808775, 24.264713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.970757, 28.659906, 24.360371>,  <44.700531, 28.411793, 24.519800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970757, 28.659906, 24.360371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524685, -0.024662, 0.850939,
		0.517994, -0.783990, -0.342114,
		0.675565, 0.620284, -0.398573,
		45.173428, 28.845991, 24.240799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160591, 28.239061, 24.889690>,  <44.700531, 28.411793, 24.519800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160591, 28.239061, 24.889690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.324154, 28.562284, 24.720062>,  <45.422291, 28.756218, 24.618284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.324154, 28.562284, 24.720062>,  <45.160591, 28.239061, 24.889690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324154, 28.562284, 24.720062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629038, 0.087084, 0.772482,
		0.661139, -0.582632, -0.472689,
		0.408909, 0.808057, -0.424072,
		45.446827, 28.804701, 24.592840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970512, 28.143734, 24.657562>,  <45.160591, 28.239061, 24.889690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970512, 28.143734, 24.657562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.878727, 28.528316, 24.718159>,  <45.823654, 28.759066, 24.754517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.878727, 28.528316, 24.718159>,  <45.970512, 28.143734, 24.657562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878727, 28.528316, 24.718159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506652, -0.014905, 0.862022,
		0.831054, 0.274555, -0.483704,
		-0.229463, 0.961456, 0.151491,
		45.809887, 28.816753, 24.763605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496277, 28.369345, 25.011707>,  <45.970512, 28.143734, 24.657562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496277, 28.369345, 25.011707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.212097, 28.643368, 25.076145>,  <46.041588, 28.807781, 25.114807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.212097, 28.643368, 25.076145>,  <46.496277, 28.369345, 25.011707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212097, 28.643368, 25.076145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057089, -0.172050, 0.983433,
		0.701426, 0.707879, 0.083124,
		-0.710453, 0.685059, 0.161092,
		45.998962, 28.848886, 25.124474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.318329, 33.601658, 20.318491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929321, 33.513653, 20.348944>,  <43.695915, 33.460850, 20.367216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929321, 33.513653, 20.348944>,  <44.318329, 33.601658, 20.318491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929321, 33.513653, 20.348944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077079, -0.004293, -0.997016,
		0.219688, -0.975486, -0.012784,
		-0.972520, -0.220018, 0.076133,
		43.637566, 33.447647, 20.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265282, 33.068142, 19.809160>,  <44.318329, 33.601658, 20.318491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265282, 33.068142, 19.809160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.905285, 33.222507, 19.890244>,  <43.689289, 33.315128, 19.938894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.905285, 33.222507, 19.890244>,  <44.265282, 33.068142, 19.809160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905285, 33.222507, 19.890244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168969, 0.119824, -0.978311,
		-0.401832, -0.914721, -0.042633,
		-0.899989, 0.385913, 0.202708,
		43.635288, 33.338280, 19.951056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889080, 32.670097, 19.459557>,  <44.265282, 33.068142, 19.809160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889080, 32.670097, 19.459557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.652153, 32.989990, 19.498743>,  <43.509998, 33.181927, 19.522255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.652153, 32.989990, 19.498743>,  <43.889080, 32.670097, 19.459557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652153, 32.989990, 19.498743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252344, -0.068658, -0.965199,
		-0.765171, -0.596423, 0.242474,
		-0.592314, 0.799729, 0.097968,
		43.474457, 33.229908, 19.528133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377258, 32.527737, 19.003622>,  <43.889080, 32.670097, 19.459557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377258, 32.527737, 19.003622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.347111, 32.922157, 19.062979>,  <43.329021, 33.158810, 19.098593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.347111, 32.922157, 19.062979>,  <43.377258, 32.527737, 19.003622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347111, 32.922157, 19.062979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274783, 0.122515, -0.953669,
		-0.958548, -0.112651, 0.261717,
		-0.075368, 0.986052, 0.148391,
		43.324501, 33.217972, 19.107496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605145, 32.758137, 18.850349>,  <43.377258, 32.527737, 19.003622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605145, 32.758137, 18.850349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866917, 33.059879, 18.829720>,  <43.023979, 33.240925, 18.817341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866917, 33.059879, 18.829720>,  <42.605145, 32.758137, 18.850349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866917, 33.059879, 18.829720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271100, 0.170418, -0.947345,
		-0.705848, 0.633957, 0.316034,
		0.654434, 0.754358, -0.051577,
		43.063248, 33.286186, 18.814247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251080, 33.304405, 18.397570>,  <42.605145, 32.758137, 18.850349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251080, 33.304405, 18.397570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.623329, 33.449299, 18.418449>,  <42.846680, 33.536236, 18.430977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.623329, 33.449299, 18.418449>,  <42.251080, 33.304405, 18.397570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623329, 33.449299, 18.418449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084333, 0.351046, -0.932553,
		-0.356130, 0.863453, 0.357240,
		0.930623, 0.362237, 0.052200,
		42.902515, 33.557968, 18.434109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235680, 34.074390, 18.258652>,  <42.251080, 33.304405, 18.397570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235680, 34.074390, 18.258652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.607639, 33.942448, 18.193558>,  <42.830814, 33.863281, 18.154501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.607639, 33.942448, 18.193558>,  <42.235680, 34.074390, 18.258652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607639, 33.942448, 18.193558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030877, 0.370871, -0.928171,
		0.366515, 0.868131, 0.334687,
		0.929900, -0.329855, -0.162735,
		42.886608, 33.843491, 18.144737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475044, 34.583355, 17.916399>,  <42.235680, 34.074390, 18.258652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475044, 34.583355, 17.916399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.722000, 34.276768, 17.845564>,  <42.870174, 34.092815, 17.803062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.722000, 34.276768, 17.845564>,  <42.475044, 34.583355, 17.916399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722000, 34.276768, 17.845564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030429, 0.201680, -0.978979,
		0.786069, 0.609800, 0.101192,
		0.617389, -0.766466, -0.177090,
		42.907215, 34.046829, 17.792437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052895, 34.879696, 17.543711>,  <42.475044, 34.583355, 17.916399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052895, 34.879696, 17.543711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.082443, 34.492630, 17.447237>,  <43.100174, 34.260391, 17.389353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.082443, 34.492630, 17.447237>,  <43.052895, 34.879696, 17.543711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082443, 34.492630, 17.447237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142173, 0.249593, -0.957857,
		0.987081, 0.036471, 0.156014,
		0.073874, -0.967664, -0.241184,
		43.104607, 34.202332, 17.374882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706337, 34.769379, 17.127012>,  <43.052895, 34.879696, 17.543711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706337, 34.769379, 17.127012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.468246, 34.462585, 17.031137>,  <43.325394, 34.278511, 16.973614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.468246, 34.462585, 17.031137>,  <43.706337, 34.769379, 17.127012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468246, 34.462585, 17.031137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268433, 0.091357, -0.958957,
		0.757397, -0.635135, 0.151504,
		-0.595226, -0.766979, -0.239685,
		43.289680, 34.232491, 16.959232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137390, 34.309650, 16.667318>,  <43.706337, 34.769379, 17.127012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137390, 34.309650, 16.667318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.753147, 34.219856, 16.601795>,  <43.522602, 34.165977, 16.562481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.753147, 34.219856, 16.601795>,  <44.137390, 34.309650, 16.667318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753147, 34.219856, 16.601795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116346, 0.210426, -0.970662,
		0.252377, -0.951485, -0.176018,
		-0.960609, -0.224494, -0.163808,
		43.464966, 34.152508, 16.552652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116699, 33.770859, 16.197441>,  <44.137390, 34.309650, 16.667318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116699, 33.770859, 16.197441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.752586, 33.930931, 16.155039>,  <43.534119, 34.026974, 16.129597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.752586, 33.930931, 16.155039>,  <44.116699, 33.770859, 16.197441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752586, 33.930931, 16.155039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081928, -0.076855, -0.993670,
		-0.405799, -0.913206, 0.037174,
		-0.910283, 0.400184, -0.106005,
		43.479500, 34.050987, 16.123238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739708, 33.403076, 15.653442>,  <44.116699, 33.770859, 16.197441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739708, 33.403076, 15.653442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.587078, 33.772198, 15.674749>,  <43.495499, 33.993671, 15.687533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.587078, 33.772198, 15.674749>,  <43.739708, 33.403076, 15.653442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587078, 33.772198, 15.674749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046914, 0.076889, -0.995935,
		-0.923145, -0.377529, -0.072632,
		-0.381579, 0.922800, 0.053268,
		43.472603, 34.049038, 15.690730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425320, 32.619164, 15.445439>,  <43.739708, 33.403076, 15.653442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425320, 32.619164, 15.445439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.159973, 32.320946, 15.419775>,  <43.000767, 32.142017, 15.404377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.159973, 32.320946, 15.419775>,  <43.425320, 32.619164, 15.445439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159973, 32.320946, 15.419775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160023, -0.225095, 0.961106,
		-0.730987, 0.627295, 0.268623,
		-0.663363, -0.745542, -0.064160,
		42.960964, 32.097282, 15.400527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331612, 32.445679, 16.168163>,  <43.425320, 32.619164, 15.445439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331612, 32.445679, 16.168163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101704, 32.183220, 15.972568>,  <42.963757, 32.025745, 15.855210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101704, 32.183220, 15.972568>,  <43.331612, 32.445679, 16.168163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101704, 32.183220, 15.972568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034865, -0.577381, 0.815730,
		-0.817569, 0.485909, 0.308987,
		-0.574774, -0.656143, -0.488990,
		42.929272, 31.986378, 15.825871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796490, 32.349388, 16.591797>,  <43.331612, 32.445679, 16.168163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796490, 32.349388, 16.591797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.805943, 32.039429, 16.339140>,  <42.811615, 31.853453, 16.187546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.805943, 32.039429, 16.339140>,  <42.796490, 32.349388, 16.591797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805943, 32.039429, 16.339140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128896, -0.628909, 0.766720,
		-0.991376, 0.063298, -0.114744,
		0.023632, -0.774898, -0.631644,
		42.813030, 31.806959, 16.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151241, 31.928183, 16.716013>,  <42.796490, 32.349388, 16.591797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151241, 31.928183, 16.716013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.448528, 31.704582, 16.568960>,  <42.626900, 31.570421, 16.480728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.448528, 31.704582, 16.568960>,  <42.151241, 31.928183, 16.716013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448528, 31.704582, 16.568960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133291, -0.662171, 0.737403,
		-0.655621, -0.499062, -0.566655,
		0.743233, -0.558986, -0.367613,
		42.671494, 31.536882, 16.458672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904221, 31.268629, 16.876146>,  <42.151241, 31.928183, 16.716013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904221, 31.268629, 16.876146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.287544, 31.183615, 16.799761>,  <42.517540, 31.132607, 16.753929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.287544, 31.183615, 16.799761>,  <41.904221, 31.268629, 16.876146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287544, 31.183615, 16.799761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018314, -0.712661, 0.701269,
		-0.285136, -0.668538, -0.686844,
		0.958312, -0.212536, -0.190961,
		42.575039, 31.119854, 16.742472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980507, 30.538870, 16.847645>,  <41.904221, 31.268629, 16.876146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980507, 30.538870, 16.847645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.360222, 30.654968, 16.895994>,  <42.588051, 30.724628, 16.925005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.360222, 30.654968, 16.895994>,  <41.980507, 30.538870, 16.847645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360222, 30.654968, 16.895994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135727, -0.725082, 0.675155,
		0.283606, -0.624510, -0.727705,
		0.949287, 0.290248, 0.120875,
		42.645008, 30.742043, 16.932257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326881, 29.957777, 16.909664>,  <41.980507, 30.538870, 16.847645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326881, 29.957777, 16.909664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.569305, 30.226511, 17.079998>,  <42.714760, 30.387751, 17.182199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.569305, 30.226511, 17.079998>,  <42.326881, 29.957777, 16.909664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569305, 30.226511, 17.079998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130911, -0.612306, 0.779708,
		0.784575, -0.416800, -0.459041,
		0.606056, 0.671833, 0.425836,
		42.751122, 30.428061, 17.207748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994179, 29.619719, 17.129501>,  <42.326881, 29.957777, 16.909664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994179, 29.619719, 17.129501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.003345, 29.949467, 17.355736>,  <43.008846, 30.147316, 17.491476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.003345, 29.949467, 17.355736>,  <42.994179, 29.619719, 17.129501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003345, 29.949467, 17.355736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290352, -0.546837, 0.785280,
		0.956646, 0.146220, -0.251891,
		0.022919, 0.824372, 0.565584,
		43.010220, 30.196777, 17.525412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499401, 29.404726, 17.558147>,  <42.994179, 29.619719, 17.129501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499401, 29.404726, 17.558147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320744, 29.713360, 17.739328>,  <43.213551, 29.898540, 17.848038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320744, 29.713360, 17.739328>,  <43.499401, 29.404726, 17.558147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320744, 29.713360, 17.739328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418862, -0.267031, 0.867899,
		0.790612, 0.577363, -0.203921,
		-0.446640, 0.771587, 0.452953,
		43.186752, 29.944836, 17.875214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974770, 29.708776, 18.057863>,  <43.499401, 29.404726, 17.558147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974770, 29.708776, 18.057863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.612450, 29.817802, 18.187622>,  <43.395058, 29.883217, 18.265476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.612450, 29.817802, 18.187622>,  <43.974770, 29.708776, 18.057863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612450, 29.817802, 18.187622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314097, -0.081893, 0.945852,
		0.284371, 0.958646, -0.011432,
		-0.905802, 0.272563, 0.324396,
		43.340710, 29.899572, 18.284941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037411, 30.282059, 18.596857>,  <43.974770, 29.708776, 18.057863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037411, 30.282059, 18.596857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674000, 30.130682, 18.667700>,  <43.455956, 30.039856, 18.710205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674000, 30.130682, 18.667700>,  <44.037411, 30.282059, 18.596857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674000, 30.130682, 18.667700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099632, 0.215434, 0.971422,
		-0.405780, 0.900206, -0.158022,
		-0.908524, -0.378440, 0.177108,
		43.401443, 30.017151, 18.720833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893017, 30.634604, 19.149044>,  <44.037411, 30.282059, 18.596857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893017, 30.634604, 19.149044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.595379, 30.367456, 19.142452>,  <43.416794, 30.207169, 19.138496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.595379, 30.367456, 19.142452>,  <43.893017, 30.634604, 19.149044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595379, 30.367456, 19.142452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042638, 0.022859, 0.998829,
		-0.666708, 0.743930, -0.045486,
		-0.744099, -0.667866, -0.016480,
		43.372150, 30.167097, 19.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392670, 30.823189, 19.713839>,  <43.893017, 30.634604, 19.149044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392670, 30.823189, 19.713839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346748, 30.431948, 19.644396>,  <43.319195, 30.197203, 19.602730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346748, 30.431948, 19.644396>,  <43.392670, 30.823189, 19.713839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346748, 30.431948, 19.644396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085118, -0.183804, 0.979271,
		-0.989735, 0.097646, 0.104355,
		-0.114803, -0.978101, -0.173606,
		43.312309, 30.138517, 19.592314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814056, 30.508976, 20.178173>,  <43.392670, 30.823189, 19.713839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814056, 30.508976, 20.178173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.071434, 30.218563, 20.081131>,  <43.225861, 30.044315, 20.022905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.071434, 30.218563, 20.081131>,  <42.814056, 30.508976, 20.178173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071434, 30.218563, 20.081131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147514, -0.193386, 0.969970,
		-0.751148, -0.659905, -0.017332,
		0.643440, -0.726035, -0.242607,
		43.264465, 30.000753, 20.008348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644978, 29.772146, 20.596338>,  <42.814056, 30.508976, 20.178173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644978, 29.772146, 20.596338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.032990, 29.743870, 20.503347>,  <43.265797, 29.726904, 20.447554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.032990, 29.743870, 20.503347>,  <42.644978, 29.772146, 20.596338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032990, 29.743870, 20.503347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191207, -0.368318, 0.909825,
		-0.149942, -0.927008, -0.343762,
		0.970029, -0.070692, -0.232477,
		43.323997, 29.722662, 20.433603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085747, 29.325468, 20.345673>,  <42.644978, 29.772146, 20.596338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085747, 29.325468, 20.345673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725296, 29.192896, 20.457474>,  <41.509026, 29.113352, 20.524553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725296, 29.192896, 20.457474>,  <42.085747, 29.325468, 20.345673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725296, 29.192896, 20.457474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367542, 0.242048, -0.897956,
		0.229950, -0.911905, -0.339929,
		-0.901130, -0.331423, 0.279505,
		41.454956, 29.093466, 20.541325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805607, 28.965052, 19.737234>,  <42.085747, 29.325468, 20.345673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805607, 28.965052, 19.737234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.495865, 29.036304, 19.980097>,  <41.310020, 29.079056, 20.125814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.495865, 29.036304, 19.980097>,  <41.805607, 28.965052, 19.737234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495865, 29.036304, 19.980097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594447, 0.123966, -0.794522,
		-0.216797, -0.976166, 0.009897,
		-0.774359, 0.178133, 0.607155,
		41.263557, 29.089745, 20.162243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158226, 28.490904, 19.486315>,  <41.805607, 28.965052, 19.737234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158226, 28.490904, 19.486315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.049534, 28.821547, 19.683445>,  <40.984318, 29.019932, 19.801723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.049534, 28.821547, 19.683445>,  <41.158226, 28.490904, 19.486315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049534, 28.821547, 19.683445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508183, 0.311630, -0.802893,
		-0.817258, -0.468619, 0.335389,
		-0.271733, 0.826609, 0.492827,
		40.968014, 29.069529, 19.831293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442966, 28.580706, 19.371040>,  <41.158226, 28.490904, 19.486315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442966, 28.580706, 19.371040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.584663, 28.936918, 19.485209>,  <40.669682, 29.150646, 19.553709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.584663, 28.936918, 19.485209>,  <40.442966, 28.580706, 19.371040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584663, 28.936918, 19.485209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562444, 0.446730, -0.695764,
		-0.747106, 0.085938, 0.659126,
		0.354244, 0.890532, 0.285420,
		40.690937, 29.204079, 19.570835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955429, 29.042030, 19.213179>,  <40.442966, 28.580706, 19.371040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955429, 29.042030, 19.213179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.230255, 29.322205, 19.290462>,  <40.395153, 29.490309, 19.336832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.230255, 29.322205, 19.290462>,  <39.955429, 29.042030, 19.213179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230255, 29.322205, 19.290462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420764, 0.600338, -0.680112,
		-0.592363, 0.385989, 0.707191,
		0.687069, 0.700434, 0.193208,
		40.436375, 29.532335, 19.348425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596035, 29.717680, 19.222721>,  <39.955429, 29.042030, 19.213179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596035, 29.717680, 19.222721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.975830, 29.829679, 19.166042>,  <40.203705, 29.896879, 19.132036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.975830, 29.829679, 19.166042>,  <39.596035, 29.717680, 19.222721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975830, 29.829679, 19.166042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309435, 0.760226, -0.571232,
		-0.052225, 0.586222, 0.808465,
		0.949485, 0.280000, -0.141695,
		40.260677, 29.913679, 19.123533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569611, 30.484751, 19.054758>,  <39.596035, 29.717680, 19.222721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569611, 30.484751, 19.054758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.948582, 30.415888, 18.946875>,  <40.175964, 30.374571, 18.882145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.948582, 30.415888, 18.946875>,  <39.569611, 30.484751, 19.054758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948582, 30.415888, 18.946875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092605, 0.659312, -0.746145,
		0.306278, 0.731894, 0.608708,
		0.947427, -0.172158, -0.269710,
		40.232811, 30.364241, 18.865961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279819, 31.143660, 19.400557>,  <39.569611, 30.484751, 19.054758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279819, 31.143660, 19.400557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889603, 31.216185, 19.450266>,  <38.655472, 31.259701, 19.480091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889603, 31.216185, 19.450266>,  <39.279819, 31.143660, 19.400557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889603, 31.216185, 19.450266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016802, -0.502185, 0.864597,
		0.219172, 0.845538, 0.486856,
		-0.975542, 0.181315, 0.124272,
		38.596939, 31.270578, 19.487547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209526, 31.254467, 20.077925>,  <39.279819, 31.143660, 19.400557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209526, 31.254467, 20.077925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832550, 31.168642, 19.975338>,  <38.606365, 31.117147, 19.913786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832550, 31.168642, 19.975338>,  <39.209526, 31.254467, 20.077925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832550, 31.168642, 19.975338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168771, -0.356897, 0.918771,
		-0.288665, 0.909169, 0.300142,
		-0.942438, -0.214562, -0.256465,
		38.549820, 31.104273, 19.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846676, 31.378332, 20.733685>,  <39.209526, 31.254467, 20.077925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846676, 31.378332, 20.733685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629047, 31.125858, 20.512562>,  <38.498470, 30.974375, 20.379889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629047, 31.125858, 20.512562>,  <38.846676, 31.378332, 20.733685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629047, 31.125858, 20.512562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209835, -0.535563, 0.818011,
		-0.812377, 0.561054, 0.158939,
		-0.544070, -0.631182, -0.552808,
		38.465828, 30.936504, 20.346720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170536, 31.274202, 21.153206>,  <38.846676, 31.378332, 20.733685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170536, 31.274202, 21.153206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214043, 30.981018, 20.884598>,  <38.240147, 30.805107, 20.723433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214043, 30.981018, 20.884598>,  <38.170536, 31.274202, 21.153206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214043, 30.981018, 20.884598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199314, -0.677890, 0.707629,
		-0.973881, 0.056880, -0.219819,
		0.108763, -0.732960, -0.671521,
		38.246674, 30.761129, 20.683142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863560, 30.819254, 21.463459>,  <38.170536, 31.274202, 21.153206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863560, 30.819254, 21.463459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059563, 30.594816, 21.196604>,  <38.177162, 30.460154, 21.036491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059563, 30.594816, 21.196604>,  <37.863560, 30.819254, 21.463459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059563, 30.594816, 21.196604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029159, -0.754332, 0.655845,
		-0.871233, -0.340819, -0.353264,
		0.490003, -0.561093, -0.667137,
		38.206562, 30.426489, 20.996462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447491, 30.156927, 21.556206>,  <37.863560, 30.819254, 21.463459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447491, 30.156927, 21.556206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.799232, 30.096853, 21.375458>,  <38.010277, 30.060808, 21.267010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.799232, 30.096853, 21.375458>,  <37.447491, 30.156927, 21.556206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799232, 30.096853, 21.375458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170860, -0.786246, 0.593822,
		-0.444462, -0.599384, -0.665726,
		0.879352, -0.150185, -0.451868,
		38.063038, 30.051798, 21.239897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524723, 29.387749, 21.629776>,  <37.447491, 30.156927, 21.556206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524723, 29.387749, 21.629776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891056, 29.527941, 21.551374>,  <38.110855, 29.612055, 21.504333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891056, 29.527941, 21.551374>,  <37.524723, 29.387749, 21.629776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891056, 29.527941, 21.551374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389077, -0.653691, 0.649081,
		0.099362, -0.670710, -0.735034,
		0.915831, 0.350479, -0.196006,
		38.165806, 29.633085, 21.492573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.073956, 35.201614, 17.205580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438358, 35.054810, 17.130356>,  <40.657001, 34.966724, 17.085222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438358, 35.054810, 17.130356>,  <40.073956, 35.201614, 17.205580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438358, 35.054810, 17.130356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012388, -0.431462, 0.902046,
		-0.412211, -0.824097, -0.388517,
		0.911004, -0.367020, -0.188063,
		40.711658, 34.944706, 17.073938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064671, 34.532803, 17.411060>,  <40.073956, 35.201614, 17.205580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064671, 34.532803, 17.411060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447575, 34.645306, 17.438032>,  <40.677319, 34.712807, 17.454216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447575, 34.645306, 17.438032>,  <40.064671, 34.532803, 17.411060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447575, 34.645306, 17.438032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061525, -0.425813, 0.902717,
		0.282612, -0.859985, -0.424918,
		0.957259, 0.281262, 0.067430,
		40.734753, 34.729683, 17.458261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447090, 33.933239, 17.749125>,  <40.064671, 34.532803, 17.411060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447090, 33.933239, 17.749125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.673138, 34.261677, 17.781233>,  <40.808765, 34.458740, 17.800497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.673138, 34.261677, 17.781233>,  <40.447090, 33.933239, 17.749125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673138, 34.261677, 17.781233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192418, -0.225789, 0.954984,
		0.802259, -0.524231, -0.285591,
		0.565116, 0.821098, 0.080270,
		40.842674, 34.508007, 17.805313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924274, 33.733501, 18.282217>,  <40.447090, 33.933239, 17.749125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924274, 33.733501, 18.282217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.983105, 34.129116, 18.287420>,  <41.018402, 34.366486, 18.290543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.983105, 34.129116, 18.287420>,  <40.924274, 33.733501, 18.282217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983105, 34.129116, 18.287420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075556, -0.024349, 0.996844,
		0.986235, -0.145631, -0.078309,
		0.147078, 0.989039, 0.013010,
		41.027229, 34.425827, 18.291323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550335, 33.834515, 18.606241>,  <40.924274, 33.733501, 18.282217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550335, 33.834515, 18.606241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.354973, 34.178871, 18.663279>,  <41.237755, 34.385483, 18.697500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.354973, 34.178871, 18.663279>,  <41.550335, 33.834515, 18.606241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354973, 34.178871, 18.663279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183000, -0.058727, 0.981357,
		0.853212, 0.505395, -0.128860,
		-0.488405, 0.860887, 0.142594,
		41.208450, 34.437138, 18.706057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915951, 34.195438, 19.060839>,  <41.550335, 33.834515, 18.606241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915951, 34.195438, 19.060839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562725, 34.378624, 19.101768>,  <41.350788, 34.488533, 19.126328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562725, 34.378624, 19.101768>,  <41.915951, 34.195438, 19.060839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562725, 34.378624, 19.101768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012275, -0.195445, 0.980638,
		0.469093, 0.867221, 0.166969,
		-0.883063, 0.457961, 0.102327,
		41.297806, 34.516014, 19.132467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061253, 34.545795, 19.676607>,  <41.915951, 34.195438, 19.060839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061253, 34.545795, 19.676607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.668987, 34.584614, 19.608637>,  <41.433628, 34.607906, 19.567854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.668987, 34.584614, 19.608637>,  <42.061253, 34.545795, 19.676607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668987, 34.584614, 19.608637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170877, -0.001503, 0.985291,
		0.095363, 0.995279, 0.018057,
		-0.980667, 0.097046, -0.169927,
		41.374786, 34.613728, 19.557659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805023, 35.147732, 19.987658>,  <42.061253, 34.545795, 19.676607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805023, 35.147732, 19.987658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.509266, 34.878483, 19.981922>,  <41.331810, 34.716934, 19.978481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.509266, 34.878483, 19.981922>,  <41.805023, 35.147732, 19.987658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509266, 34.878483, 19.981922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019839, -0.043069, 0.998875,
		-0.672980, 0.738278, 0.045198,
		-0.739394, -0.673120, -0.014338,
		41.287449, 34.676548, 19.977621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431454, 35.375862, 20.431282>,  <41.805023, 35.147732, 19.987658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431454, 35.375862, 20.431282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.298923, 34.999142, 20.408533>,  <41.219406, 34.773109, 20.394884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.298923, 34.999142, 20.408533>,  <41.431454, 35.375862, 20.431282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298923, 34.999142, 20.408533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023851, -0.068620, 0.997358,
		-0.943216, 0.329090, 0.045199,
		-0.331322, -0.941802, -0.056874,
		41.199528, 34.716602, 20.391470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926750, 35.360516, 20.893724>,  <41.431454, 35.375862, 20.431282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926750, 35.360516, 20.893724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032856, 34.977699, 20.846889>,  <41.096519, 34.748009, 20.818789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.032856, 34.977699, 20.846889>,  <40.926750, 35.360516, 20.893724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032856, 34.977699, 20.846889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116804, -0.152443, 0.981386,
		-0.957074, -0.246652, -0.152224,
		0.265267, -0.957039, -0.117090,
		41.112434, 34.690586, 20.811762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370430, 35.077137, 21.297400>,  <40.926750, 35.360516, 20.893724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370430, 35.077137, 21.297400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684505, 34.831291, 21.267111>,  <40.872952, 34.683784, 21.248938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.684505, 34.831291, 21.267111>,  <40.370430, 35.077137, 21.297400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684505, 34.831291, 21.267111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025018, -0.090694, 0.995564,
		-0.618755, -0.783597, -0.055835,
		0.785186, -0.614613, -0.075722,
		40.920063, 34.646908, 21.244394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312565, 34.778034, 21.923862>,  <40.370430, 35.077137, 21.297400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312565, 34.778034, 21.923862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666809, 34.638786, 21.800896>,  <40.879356, 34.555237, 21.727116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666809, 34.638786, 21.800896>,  <40.312565, 34.778034, 21.923862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666809, 34.638786, 21.800896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274348, -0.141953, 0.951095,
		-0.374736, -0.926640, -0.030209,
		0.885611, -0.348122, -0.307417,
		40.932491, 34.534351, 21.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675125, 34.615326, 21.719532>,  <40.312565, 34.778034, 21.923862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675125, 34.615326, 21.719532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.335911, 34.665169, 21.925564>,  <39.132381, 34.695072, 22.049183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.335911, 34.665169, 21.925564>,  <39.675125, 34.615326, 21.719532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335911, 34.665169, 21.925564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476754, 0.245004, -0.844203,
		-0.231389, -0.961481, -0.148367,
		-0.848036, 0.124605, 0.515081,
		39.081501, 34.702549, 22.080088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183727, 34.170464, 21.525515>,  <39.675125, 34.615326, 21.719532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183727, 34.170464, 21.525515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006016, 34.502300, 21.660801>,  <38.899387, 34.701405, 21.741974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006016, 34.502300, 21.660801>,  <39.183727, 34.170464, 21.525515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006016, 34.502300, 21.660801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176894, 0.288858, -0.940888,
		-0.878252, -0.477844, 0.018417,
		-0.444278, 0.829594, 0.338217,
		38.872734, 34.751179, 21.762266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560070, 34.177437, 21.198599>,  <39.183727, 34.170464, 21.525515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560070, 34.177437, 21.198599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.639259, 34.551846, 21.314999>,  <38.686771, 34.776489, 21.384838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.639259, 34.551846, 21.314999>,  <38.560070, 34.177437, 21.198599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639259, 34.551846, 21.314999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148009, 0.322015, -0.935093,
		-0.968969, 0.142050, 0.202288,
		0.197970, 0.936017, 0.290998,
		38.698650, 34.832649, 21.402298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028046, 34.562893, 20.959637>,  <38.560070, 34.177437, 21.198599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028046, 34.562893, 20.959637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327221, 34.824306, 21.006073>,  <38.506725, 34.981155, 21.033936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327221, 34.824306, 21.006073>,  <38.028046, 34.562893, 20.959637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327221, 34.824306, 21.006073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247025, 0.436395, -0.865181,
		-0.616089, 0.618425, 0.487837,
		0.747939, 0.653537, 0.116092,
		38.551601, 35.020367, 21.040901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714268, 34.985359, 20.687037>,  <38.028046, 34.562893, 20.959637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714268, 34.985359, 20.687037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.095097, 35.107677, 20.690012>,  <38.323593, 35.181068, 20.691797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.095097, 35.107677, 20.690012>,  <37.714268, 34.985359, 20.687037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095097, 35.107677, 20.690012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058734, 0.206617, -0.976658,
		-0.300192, 0.929408, 0.214674,
		0.952069, 0.305793, 0.007437,
		38.380718, 35.199417, 20.692244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764225, 35.591465, 20.333929>,  <37.714268, 34.985359, 20.687037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764225, 35.591465, 20.333929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148773, 35.484009, 20.309917>,  <38.379501, 35.419533, 20.295511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.148773, 35.484009, 20.309917>,  <37.764225, 35.591465, 20.333929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148773, 35.484009, 20.309917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004076, 0.204153, -0.978930,
		0.275239, 0.941356, 0.195171,
		0.961367, -0.268644, -0.060027,
		38.437183, 35.403416, 20.291910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094574, 36.138210, 19.866781>,  <37.764225, 35.591465, 20.333929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094574, 36.138210, 19.866781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322552, 35.809681, 19.857101>,  <38.459339, 35.612564, 19.851294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322552, 35.809681, 19.857101>,  <38.094574, 36.138210, 19.866781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322552, 35.809681, 19.857101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012665, 0.038228, -0.999189,
		0.821586, 0.569176, 0.032190,
		0.569944, -0.821327, -0.024199,
		38.493534, 35.563282, 19.849842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554703, 36.300682, 19.396135>,  <38.094574, 36.138210, 19.866781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554703, 36.300682, 19.396135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.602600, 35.903561, 19.397116>,  <38.631340, 35.665287, 19.397705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.602600, 35.903561, 19.397116>,  <38.554703, 36.300682, 19.396135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602600, 35.903561, 19.397116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184571, -0.024689, -0.982509,
		0.975497, 0.117197, -0.186199,
		0.119744, -0.992802, 0.002453,
		38.638523, 35.605721, 19.397852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063442, 36.145042, 18.864870>,  <38.554703, 36.300682, 19.396135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063442, 36.145042, 18.864870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852028, 35.811649, 18.929317>,  <38.725182, 35.611614, 18.967985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852028, 35.811649, 18.929317>,  <39.063442, 36.145042, 18.864870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852028, 35.811649, 18.929317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058325, -0.153691, -0.986396,
		0.846906, -0.530741, 0.032618,
		-0.528534, -0.833483, 0.161117,
		38.693466, 35.561604, 18.977652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271542, 35.666584, 18.481125>,  <39.063442, 36.145042, 18.864870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271542, 35.666584, 18.481125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918961, 35.491776, 18.552734>,  <38.707413, 35.386890, 18.595699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918961, 35.491776, 18.552734>,  <39.271542, 35.666584, 18.481125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918961, 35.491776, 18.552734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044134, -0.301188, -0.952543,
		0.470202, -0.847524, 0.246196,
		-0.881455, -0.437022, 0.179024,
		38.654526, 35.360668, 18.606441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296974, 35.041275, 18.063883>,  <39.271542, 35.666584, 18.481125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296974, 35.041275, 18.063883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.915730, 35.117111, 18.158230>,  <38.686981, 35.162613, 18.214838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.915730, 35.117111, 18.158230>,  <39.296974, 35.041275, 18.063883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915730, 35.117111, 18.158230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283059, -0.282838, -0.916450,
		-0.107041, -0.940243, 0.323242,
		-0.953111, 0.189594, 0.235869,
		38.629795, 35.173988, 18.228991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009769, 34.436058, 17.741589>,  <39.296974, 35.041275, 18.063883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009769, 34.436058, 17.741589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.692123, 34.670361, 17.806412>,  <38.501534, 34.810944, 17.845306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.692123, 34.670361, 17.806412>,  <39.009769, 34.436058, 17.741589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692123, 34.670361, 17.806412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335005, -0.199395, -0.920876,
		-0.507097, -0.785576, 0.354575,
		-0.794119, 0.585758, 0.162059,
		38.453888, 34.846088, 17.855030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386497, 34.030121, 17.682371>,  <39.009769, 34.436058, 17.741589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386497, 34.030121, 17.682371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.293377, 34.411930, 17.607874>,  <38.237503, 34.641018, 17.563175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.293377, 34.411930, 17.607874>,  <38.386497, 34.030121, 17.682371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293377, 34.411930, 17.607874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384683, -0.266267, -0.883811,
		-0.893209, -0.134107, 0.429177,
		-0.232801, 0.954525, -0.186243,
		38.223537, 34.698288, 17.552002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709064, 33.975395, 17.513807>,  <38.386497, 34.030121, 17.682371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709064, 33.975395, 17.513807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792179, 34.337955, 17.366692>,  <37.842049, 34.555492, 17.278421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792179, 34.337955, 17.366692>,  <37.709064, 33.975395, 17.513807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792179, 34.337955, 17.366692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490279, -0.228854, -0.840983,
		-0.846434, 0.355065, 0.396835,
		0.207787, 0.906397, -0.367791,
		37.854515, 34.609875, 17.256355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372837, 33.519505, 17.879709>,  <37.709064, 33.975395, 17.513807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372837, 33.519505, 17.879709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455437, 33.220097, 17.627657>,  <37.504997, 33.040451, 17.476425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455437, 33.220097, 17.627657>,  <37.372837, 33.519505, 17.879709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455437, 33.220097, 17.627657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042271, -0.636588, 0.770045,
		-0.977532, -0.185654, -0.099817,
		0.206504, -0.748524, -0.630133,
		37.517387, 32.995541, 17.438618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989376, 32.876305, 17.968775>,  <37.372837, 33.519505, 17.879709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989376, 32.876305, 17.968775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320499, 32.749226, 17.783821>,  <37.519173, 32.672977, 17.672848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320499, 32.749226, 17.783821>,  <36.989376, 32.876305, 17.968775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320499, 32.749226, 17.783821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171557, -0.641368, 0.747807,
		-0.534133, -0.698368, -0.476429,
		0.827811, -0.317694, -0.462385,
		37.568844, 32.653919, 17.645105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016228, 32.367485, 18.264601>,  <36.989376, 32.876305, 17.968775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016228, 32.367485, 18.264601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373478, 32.366482, 18.084677>,  <37.587826, 32.365879, 17.976723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.373478, 32.366482, 18.084677>,  <37.016228, 32.367485, 18.264601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373478, 32.366482, 18.084677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338700, -0.654283, 0.676163,
		-0.296001, -0.756246, -0.583504,
		0.893121, -0.002512, -0.449809,
		37.641415, 32.365726, 17.949734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209393, 31.581392, 18.199011>,  <37.016228, 32.367485, 18.264601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209393, 31.581392, 18.199011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.532074, 31.817358, 18.185005>,  <37.725685, 31.958937, 18.176601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.532074, 31.817358, 18.185005>,  <37.209393, 31.581392, 18.199011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532074, 31.817358, 18.185005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402773, -0.505504, 0.763046,
		0.432433, -0.629657, -0.645394,
		0.806707, 0.589914, -0.035013,
		37.774086, 31.994331, 18.174501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613838, 31.044714, 18.218164>,  <37.209393, 31.581392, 18.199011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613838, 31.044714, 18.218164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790680, 31.366791, 18.376257>,  <37.896786, 31.560038, 18.471111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790680, 31.366791, 18.376257>,  <37.613838, 31.044714, 18.218164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790680, 31.366791, 18.376257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365202, -0.564045, 0.740595,
		0.819249, -0.183083, -0.543427,
		0.442108, 0.805192, 0.395230,
		37.923313, 31.608349, 18.494825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175953, 30.723440, 18.511206>,  <37.613838, 31.044714, 18.218164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175953, 30.723440, 18.511206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185314, 31.103199, 18.636490>,  <38.190933, 31.331055, 18.711660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185314, 31.103199, 18.636490>,  <38.175953, 30.723440, 18.511206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185314, 31.103199, 18.636490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367249, -0.299558, 0.880564,
		0.929828, 0.094415, -0.355677,
		0.023408, 0.949395, 0.313211,
		38.192337, 31.388018, 18.730453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954533, 30.904539, 18.720671>,  <38.175953, 30.723440, 18.511206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954533, 30.904539, 18.720671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675888, 31.130560, 18.897511>,  <38.508701, 31.266172, 19.003614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675888, 31.130560, 18.897511>,  <38.954533, 30.904539, 18.720671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675888, 31.130560, 18.897511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314361, -0.313516, 0.896039,
		0.644913, 0.763168, 0.040768,
		-0.696609, 0.565051, 0.442101,
		38.466904, 31.300076, 19.030140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688835, 31.049320, 18.571850>,  <38.954533, 30.904539, 18.720671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688835, 31.049320, 18.571850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001179, 30.809582, 18.501369>,  <40.188583, 30.665739, 18.459082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.001179, 30.809582, 18.501369>,  <39.688835, 31.049320, 18.571850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001179, 30.809582, 18.501369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057178, 0.349437, -0.935213,
		0.622088, 0.720193, 0.307130,
		0.780857, -0.599346, -0.176202,
		40.235435, 30.629778, 18.448509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344326, 31.458881, 18.246471>,  <39.688835, 31.049320, 18.571850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344326, 31.458881, 18.246471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349785, 31.073673, 18.138840>,  <40.353062, 30.842548, 18.074261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.349785, 31.073673, 18.138840>,  <40.344326, 31.458881, 18.246471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349785, 31.073673, 18.138840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127119, 0.268589, -0.954830,
		0.991794, -0.021174, 0.126084,
		0.013648, -0.963022, -0.269077,
		40.353878, 30.784767, 18.058117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869148, 31.429548, 17.646288>,  <40.344326, 31.458881, 18.246471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869148, 31.429548, 17.646288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613747, 31.121702, 17.645380>,  <40.460506, 30.936995, 17.644836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613747, 31.121702, 17.645380>,  <40.869148, 31.429548, 17.646288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613747, 31.121702, 17.645380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120978, 0.103278, -0.987268,
		0.760050, -0.630101, -0.159050,
		-0.638505, -0.769615, -0.002268,
		40.422195, 30.890818, 17.644699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069008, 30.980368, 17.018688>,  <40.869148, 31.429548, 17.646288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069008, 30.980368, 17.018688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.695389, 30.876186, 17.116440>,  <40.471218, 30.813679, 17.175091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.695389, 30.876186, 17.116440>,  <41.069008, 30.980368, 17.018688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695389, 30.876186, 17.116440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240147, -0.048471, -0.969526,
		0.264360, -0.964270, -0.017272,
		-0.934047, -0.260452, 0.244380,
		40.415176, 30.798052, 17.189754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904106, 30.512085, 16.522249>,  <41.069008, 30.980368, 17.018688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904106, 30.512085, 16.522249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.543915, 30.594387, 16.675512>,  <40.327801, 30.643768, 16.767469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.543915, 30.594387, 16.675512>,  <40.904106, 30.512085, 16.522249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543915, 30.594387, 16.675512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407653, -0.092357, -0.908454,
		-0.151532, -0.974236, 0.167042,
		-0.900476, 0.205755, 0.383155,
		40.273773, 30.656113, 16.790459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382530, 30.206919, 16.190004>,  <40.904106, 30.512085, 16.522249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382530, 30.206919, 16.190004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.125889, 30.456118, 16.368988>,  <39.971905, 30.605637, 16.476377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.125889, 30.456118, 16.368988>,  <40.382530, 30.206919, 16.190004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125889, 30.456118, 16.368988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551101, 0.031341, -0.833850,
		-0.533511, -0.781595, 0.323227,
		-0.641602, 0.622999, 0.447458,
		39.933407, 30.643017, 16.503225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851475, 29.814884, 16.393309>,  <40.382530, 30.206919, 16.190004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851475, 29.814884, 16.393309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.755146, 30.196997, 16.324677>,  <39.697350, 30.426266, 16.283497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.755146, 30.196997, 16.324677>,  <39.851475, 29.814884, 16.393309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755146, 30.196997, 16.324677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447654, -0.266178, -0.853672,
		-0.861169, -0.128773, 0.491737,
		-0.240819, 0.955284, -0.171578,
		39.682899, 30.483582, 16.273203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194534, 29.773382, 16.019922>,  <39.851475, 29.814884, 16.393309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194534, 29.773382, 16.019922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.328762, 30.147705, 15.976729>,  <39.409298, 30.372299, 15.950813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.328762, 30.147705, 15.976729>,  <39.194534, 29.773382, 16.019922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328762, 30.147705, 15.976729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394018, 0.035314, -0.918424,
		-0.855653, 0.350742, 0.380575,
		0.335569, 0.935806, -0.107982,
		39.429432, 30.428448, 15.944335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756126, 30.055960, 15.625490>,  <39.194534, 29.773382, 16.019922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756126, 30.055960, 15.625490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.078682, 30.283892, 15.562199>,  <39.272213, 30.420650, 15.524224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.078682, 30.283892, 15.562199>,  <38.756126, 30.055960, 15.625490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078682, 30.283892, 15.562199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178901, -0.019972, -0.983665,
		-0.563681, 0.821521, 0.085838,
		0.806386, 0.569829, -0.158228,
		39.320599, 30.454840, 15.514730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.511578, 27.993639, 30.870907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.790474, 28.191523, 30.663401>,  <42.957813, 28.310253, 30.538897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.790474, 28.191523, 30.663401>,  <42.511578, 27.993639, 30.870907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790474, 28.191523, 30.663401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394220, -0.339799, -0.853889,
		-0.598703, 0.799874, -0.041898,
		0.697241, 0.494709, -0.518766,
		42.999645, 28.339935, 30.507771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320129, 28.381962, 30.307941>,  <42.511578, 27.993639, 30.870907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320129, 28.381962, 30.307941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.701927, 28.316362, 30.208311>,  <42.931007, 28.277002, 30.148533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.701927, 28.316362, 30.208311>,  <42.320129, 28.381962, 30.307941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701927, 28.316362, 30.208311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294021, -0.377865, -0.877935,
		0.049863, 0.911220, -0.408891,
		0.954498, -0.163999, -0.249076,
		42.988277, 28.267162, 30.133589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372162, 28.654480, 29.656717>,  <42.320129, 28.381962, 30.307941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372162, 28.654480, 29.656717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.681274, 28.401978, 29.683035>,  <42.866741, 28.250477, 29.698826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.681274, 28.401978, 29.683035>,  <42.372162, 28.654480, 29.656717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681274, 28.401978, 29.683035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162650, -0.297182, -0.940866,
		0.613478, 0.716381, -0.332330,
		0.772780, -0.631254, 0.065795,
		42.913109, 28.212601, 29.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871826, 28.750074, 29.030512>,  <42.372162, 28.654480, 29.656717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871826, 28.750074, 29.030512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.967842, 28.393240, 29.183645>,  <43.025452, 28.179140, 29.275526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.967842, 28.393240, 29.183645>,  <42.871826, 28.750074, 29.030512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967842, 28.393240, 29.183645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004657, -0.393303, -0.919397,
		0.970752, 0.222476, -0.090255,
		0.240041, -0.892086, 0.382836,
		43.039856, 28.125614, 29.298496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474476, 28.654367, 28.711102>,  <42.871826, 28.750074, 29.030512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474476, 28.654367, 28.711102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.345619, 28.292147, 28.821518>,  <43.268307, 28.074814, 28.887768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.345619, 28.292147, 28.821518>,  <43.474476, 28.654367, 28.711102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345619, 28.292147, 28.821518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100882, -0.322760, -0.941089,
		0.941302, -0.275314, 0.195328,
		-0.322139, -0.905554, 0.276040,
		43.248978, 28.020481, 28.904329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912228, 28.275799, 28.495852>,  <43.474476, 28.654367, 28.711102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912228, 28.275799, 28.495852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.589054, 28.041147, 28.518158>,  <43.395149, 27.900356, 28.531542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.589054, 28.041147, 28.518158>,  <43.912228, 28.275799, 28.495852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589054, 28.041147, 28.518158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130929, -0.270976, -0.953640,
		0.574544, -0.763177, 0.295737,
		-0.807934, -0.586629, 0.055765,
		43.346672, 27.865158, 28.534887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076290, 27.747284, 28.087486>,  <43.912228, 28.275799, 28.495852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076290, 27.747284, 28.087486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.679066, 27.715748, 28.122404>,  <43.440731, 27.696825, 28.143354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.679066, 27.715748, 28.122404>,  <44.076290, 27.747284, 28.087486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679066, 27.715748, 28.122404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054410, -0.350072, -0.935141,
		0.104288, -0.933399, 0.343352,
		-0.993057, -0.078842, 0.087295,
		43.381149, 27.692095, 28.148592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799339, 27.115520, 27.688316>,  <44.076290, 27.747284, 28.087486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799339, 27.115520, 27.688316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.496784, 27.373507, 27.731949>,  <43.315250, 27.528297, 27.758129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.496784, 27.373507, 27.731949>,  <43.799339, 27.115520, 27.688316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496784, 27.373507, 27.731949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262018, -0.145941, -0.953964,
		-0.599353, -0.750148, 0.279380,
		-0.756388, 0.644964, 0.109082,
		43.269867, 27.566996, 27.764673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290356, 26.628429, 27.519543>,  <43.799339, 27.115520, 27.688316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290356, 26.628429, 27.519543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.157394, 27.004265, 27.486843>,  <43.077618, 27.229765, 27.467224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.157394, 27.004265, 27.486843>,  <43.290356, 26.628429, 27.519543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157394, 27.004265, 27.486843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311227, -0.191099, -0.930923,
		-0.890305, -0.284003, 0.355948,
		-0.332406, 0.939587, -0.081747,
		43.057671, 27.286140, 27.462318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755859, 26.541267, 27.118660>,  <43.290356, 26.628429, 27.519543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755859, 26.541267, 27.118660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.823429, 26.934582, 27.091480>,  <42.863972, 27.170570, 27.075172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.823429, 26.934582, 27.091480>,  <42.755859, 26.541267, 27.118660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823429, 26.934582, 27.091480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383508, 0.002061, -0.923535,
		-0.907958, 0.182063, 0.377446,
		0.168920, 0.983285, -0.067952,
		42.874104, 27.229567, 27.071095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180382, 26.880306, 26.796677>,  <42.755859, 26.541267, 27.118660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180382, 26.880306, 26.796677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.461994, 27.153542, 26.718977>,  <42.630962, 27.317482, 26.672358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.461994, 27.153542, 26.718977>,  <42.180382, 26.880306, 26.796677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461994, 27.153542, 26.718977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378148, 0.129059, -0.916705,
		-0.601119, 0.718844, 0.349170,
		0.704031, 0.683087, -0.194249,
		42.673203, 27.358467, 26.660702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860107, 27.463955, 26.646849>,  <42.180382, 26.880306, 26.796677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860107, 27.463955, 26.646849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.221298, 27.496733, 26.478125>,  <42.438011, 27.516399, 26.376890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.221298, 27.496733, 26.478125>,  <41.860107, 27.463955, 26.646849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221298, 27.496733, 26.478125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429694, 0.173039, -0.886239,
		0.000365, 0.981500, 0.191462,
		0.902974, 0.081947, -0.421808,
		42.492191, 27.521317, 26.351582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334625, 27.960449, 26.712921>,  <41.860107, 27.463955, 26.646849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334625, 27.960449, 26.712921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.940365, 27.894127, 26.725611>,  <40.703808, 27.854334, 26.733225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.940365, 27.894127, 26.725611>,  <41.334625, 27.960449, 26.712921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940365, 27.894127, 26.725611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049132, -0.101959, 0.993575,
		-0.161506, 0.980873, 0.108642,
		-0.985648, -0.165807, 0.031725,
		40.644669, 27.844385, 26.735128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074345, 28.433186, 27.322453>,  <41.334625, 27.960449, 26.712921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074345, 28.433186, 27.322453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.792389, 28.157734, 27.254427>,  <40.623215, 27.992462, 27.213612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.792389, 28.157734, 27.254427>,  <41.074345, 28.433186, 27.322453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792389, 28.157734, 27.254427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020992, -0.219401, 0.975409,
		-0.709007, 0.691125, 0.140197,
		-0.704889, -0.688628, -0.170065,
		40.580921, 27.951145, 27.203407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520855, 28.674280, 27.739801>,  <41.074345, 28.433186, 27.322453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520855, 28.674280, 27.739801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484135, 28.283562, 27.662405>,  <40.462101, 28.049129, 27.615967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484135, 28.283562, 27.662405>,  <40.520855, 28.674280, 27.739801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484135, 28.283562, 27.662405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051494, -0.198707, 0.978705,
		-0.994445, 0.079883, 0.068540,
		-0.091801, -0.976798, -0.193490,
		40.456593, 27.990522, 27.604359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078705, 28.398304, 28.174179>,  <40.520855, 28.674280, 27.739801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078705, 28.398304, 28.174179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.243767, 28.039610, 28.110199>,  <40.342804, 27.824394, 28.071812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.243767, 28.039610, 28.110199>,  <40.078705, 28.398304, 28.174179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243767, 28.039610, 28.110199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127838, -0.230874, 0.964549,
		-0.901874, -0.377574, -0.209907,
		0.412651, -0.896736, -0.159951,
		40.367561, 27.770590, 28.062214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510170, 27.994913, 28.421143>,  <40.078705, 28.398304, 28.174179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510170, 27.994913, 28.421143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868156, 27.816479, 28.418629>,  <40.082951, 27.709417, 28.417120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868156, 27.816479, 28.418629>,  <39.510170, 27.994913, 28.421143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868156, 27.816479, 28.418629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008253, -0.030640, 0.999496,
		-0.446055, -0.894465, -0.031103,
		0.894968, -0.446087, -0.006285,
		40.136646, 27.682653, 28.416742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544579, 27.400745, 28.868561>,  <39.510170, 27.994913, 28.421143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544579, 27.400745, 28.868561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932655, 27.496166, 28.851521>,  <40.165501, 27.553419, 28.841295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932655, 27.496166, 28.851521>,  <39.544579, 27.400745, 28.868561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932655, 27.496166, 28.851521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053792, -0.040594, 0.997727,
		0.236280, -0.970281, -0.052216,
		0.970195, 0.238552, -0.042602,
		40.223713, 27.567732, 28.838739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836781, 26.965248, 29.278435>,  <39.544579, 27.400745, 28.868561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836781, 26.965248, 29.278435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.114918, 27.246845, 29.220619>,  <40.281799, 27.415804, 29.185930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.114918, 27.246845, 29.220619>,  <39.836781, 26.965248, 29.278435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114918, 27.246845, 29.220619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190879, 0.012988, 0.981528,
		0.692867, -0.710087, -0.125346,
		0.695342, 0.703994, -0.144540,
		40.323521, 27.458044, 29.177258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168579, 26.863632, 29.940704>,  <39.836781, 26.965248, 29.278435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168579, 26.863632, 29.940704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.297123, 27.208290, 29.783581>,  <40.374249, 27.415085, 29.689306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.297123, 27.208290, 29.783581>,  <40.168579, 26.863632, 29.940704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297123, 27.208290, 29.783581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198181, 0.344430, 0.917656,
		0.925987, -0.372745, -0.060075,
		0.321360, 0.861643, -0.392809,
		40.393532, 27.466784, 29.665739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742832, 26.958048, 30.265062>,  <40.168579, 26.863632, 29.940704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742832, 26.958048, 30.265062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.634232, 27.324207, 30.146177>,  <40.569073, 27.543903, 30.074846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.634232, 27.324207, 30.146177>,  <40.742832, 26.958048, 30.265062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634232, 27.324207, 30.146177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177364, 0.351112, 0.919382,
		0.945954, 0.196899, -0.257686,
		-0.271502, 0.915396, -0.297213,
		40.552780, 27.598825, 30.057013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242371, 27.310289, 30.487274>,  <40.742832, 26.958048, 30.265062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242371, 27.310289, 30.487274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.941284, 27.571407, 30.453165>,  <40.760632, 27.728079, 30.432699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.941284, 27.571407, 30.453165>,  <41.242371, 27.310289, 30.487274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941284, 27.571407, 30.453165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196967, 0.346902, 0.916986,
		0.628186, 0.673437, -0.389699,
		-0.752719, 0.652796, -0.085274,
		40.715469, 27.767246, 30.427584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560715, 27.921652, 30.463211>,  <41.242371, 27.310289, 30.487274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560715, 27.921652, 30.463211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184982, 27.980761, 30.587029>,  <40.959541, 28.016226, 30.661320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184982, 27.980761, 30.587029>,  <41.560715, 27.921652, 30.463211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184982, 27.980761, 30.587029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342277, 0.462663, 0.817796,
		-0.022369, 0.874132, -0.485173,
		-0.939333, 0.147770, 0.309544,
		40.903183, 28.025091, 30.679892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646854, 28.481112, 30.967287>,  <41.560715, 27.921652, 30.463211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646854, 28.481112, 30.967287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.267570, 28.374039, 31.035698>,  <41.040001, 28.309795, 31.076744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.267570, 28.374039, 31.035698>,  <41.646854, 28.481112, 30.967287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267570, 28.374039, 31.035698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063841, 0.366826, 0.928096,
		-0.311174, 0.890945, -0.330738,
		-0.948206, -0.267684, 0.171026,
		40.983109, 28.293734, 31.087006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256710, 29.034977, 31.072222>,  <41.646854, 28.481112, 30.967287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256710, 29.034977, 31.072222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.066521, 28.741810, 31.266851>,  <40.952408, 28.565908, 31.383629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.066521, 28.741810, 31.266851>,  <41.256710, 29.034977, 31.072222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066521, 28.741810, 31.266851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020057, 0.561982, 0.826906,
		-0.879501, 0.383413, -0.281908,
		-0.475474, -0.732919, 0.486574,
		40.923878, 28.521935, 31.412823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780659, 29.442118, 31.566385>,  <41.256710, 29.034977, 31.072222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780659, 29.442118, 31.566385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.817337, 29.067652, 31.702141>,  <40.839344, 28.842972, 31.783594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.817337, 29.067652, 31.702141>,  <40.780659, 29.442118, 31.566385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817337, 29.067652, 31.702141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149888, 0.349917, 0.924712,
		-0.984442, -0.033919, 0.172405,
		0.091693, -0.936166, 0.339389,
		40.844845, 28.786802, 31.803957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586079, 30.119843, 31.830374>,  <40.780659, 29.442118, 31.566385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586079, 30.119843, 31.830374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605190, 30.455072, 32.047756>,  <40.616657, 30.656210, 32.178185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.605190, 30.455072, 32.047756>,  <40.586079, 30.119843, 31.830374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605190, 30.455072, 32.047756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741537, 0.394279, -0.542833,
		-0.669209, -0.377056, 0.640303,
		0.047780, 0.838077, 0.543456,
		40.619526, 30.706495, 32.210793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852833, 30.371632, 32.049690>,  <40.586079, 30.119843, 31.830374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852833, 30.371632, 32.049690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.108234, 30.673578, 31.989704>,  <40.261475, 30.854746, 31.953712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.108234, 30.673578, 31.989704>,  <39.852833, 30.371632, 32.049690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108234, 30.673578, 31.989704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662769, 0.440273, -0.605720,
		-0.391212, 0.486147, 0.781418,
		0.638506, 0.754865, -0.149963,
		40.299786, 30.900038, 31.944715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351349, 30.854332, 31.948664>,  <39.852833, 30.371632, 32.049690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351349, 30.854332, 31.948664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702473, 30.971695, 31.797211>,  <39.913147, 31.042112, 31.706339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702473, 30.971695, 31.797211>,  <39.351349, 30.854332, 31.948664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702473, 30.971695, 31.797211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461850, 0.308743, -0.831488,
		-0.127066, 0.904759, 0.406528,
		0.877809, 0.293409, -0.378633,
		39.965816, 31.059717, 31.683620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261612, 31.553286, 31.672575>,  <39.351349, 30.854332, 31.948664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261612, 31.553286, 31.672575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.578762, 31.389740, 31.491829>,  <39.769051, 31.291613, 31.383381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.578762, 31.389740, 31.491829>,  <39.261612, 31.553286, 31.672575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578762, 31.389740, 31.491829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281631, 0.411714, -0.866704,
		0.540402, 0.814447, 0.211289,
		0.792875, -0.408863, -0.451864,
		39.816624, 31.267080, 31.356270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666603, 32.079826, 31.278349>,  <39.261612, 31.553286, 31.672575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666603, 32.079826, 31.278349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.754932, 31.724596, 31.117073>,  <39.807930, 31.511457, 31.020308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.754932, 31.724596, 31.117073>,  <39.666603, 32.079826, 31.278349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754932, 31.724596, 31.117073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170497, 0.371877, -0.912490,
		0.960295, 0.270244, -0.069294,
		0.220826, -0.888074, -0.403188,
		39.821178, 31.458174, 30.996117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131512, 32.270271, 30.786366>,  <39.666603, 32.079826, 31.278349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131512, 32.270271, 30.786366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.005577, 31.903860, 30.686958>,  <39.930016, 31.684011, 30.627314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.005577, 31.903860, 30.686958>,  <40.131512, 32.270271, 30.786366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005577, 31.903860, 30.686958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071870, 0.284089, -0.956101,
		0.946420, -0.283159, -0.155278,
		-0.314841, -0.916032, -0.248516,
		39.911125, 31.629051, 30.612404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575310, 32.142403, 30.284395>,  <40.131512, 32.270271, 30.786366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575310, 32.142403, 30.284395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.276089, 31.883436, 30.226061>,  <40.096558, 31.728056, 30.191061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.276089, 31.883436, 30.226061>,  <40.575310, 32.142403, 30.284395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276089, 31.883436, 30.226061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002617, 0.216871, -0.976197,
		0.663635, -0.730627, -0.160536,
		-0.748052, -0.647418, -0.145835,
		40.051674, 31.689211, 30.182310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621960, 31.682558, 29.642708>,  <40.575310, 32.142403, 30.284395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621960, 31.682558, 29.642708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.234737, 31.714512, 29.737780>,  <40.002403, 31.733685, 29.794823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.234737, 31.714512, 29.737780>,  <40.621960, 31.682558, 29.642708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234737, 31.714512, 29.737780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217291, 0.205763, -0.954173,
		-0.125128, -0.975336, -0.181831,
		-0.968054, 0.079883, 0.237679,
		39.944321, 31.738476, 29.809084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322315, 31.342688, 29.123512>,  <40.621960, 31.682558, 29.642708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322315, 31.342688, 29.123512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.016712, 31.530838, 29.300167>,  <39.833351, 31.643728, 29.406160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.016712, 31.530838, 29.300167>,  <40.322315, 31.342688, 29.123512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016712, 31.530838, 29.300167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418749, 0.159260, -0.894028,
		-0.490865, -0.867976, 0.075294,
		-0.764003, 0.470376, 0.441639,
		39.787510, 31.671951, 29.432659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649166, 31.049711, 28.916254>,  <40.322315, 31.342688, 29.123512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649166, 31.049711, 28.916254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575665, 31.434015, 28.999371>,  <39.531563, 31.664597, 29.049240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575665, 31.434015, 28.999371>,  <39.649166, 31.049711, 28.916254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575665, 31.434015, 28.999371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437139, 0.109467, -0.892707,
		-0.880423, -0.254872, 0.399870,
		-0.183753, 0.960759, 0.207792,
		39.520538, 31.722242, 29.061708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115944, 31.225750, 28.428127>,  <39.649166, 31.049711, 28.916254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115944, 31.225750, 28.428127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229271, 31.590372, 28.547325>,  <39.297268, 31.809145, 28.618843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229271, 31.590372, 28.547325>,  <39.115944, 31.225750, 28.428127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229271, 31.590372, 28.547325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305208, 0.380271, -0.873065,
		-0.909164, 0.156405, 0.385952,
		0.283318, 0.911554, 0.297992,
		39.314266, 31.863838, 28.636723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565922, 31.643578, 28.313623>,  <39.115944, 31.225750, 28.428127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565922, 31.643578, 28.313623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866989, 31.901529, 28.366726>,  <39.047630, 32.056301, 28.398588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866989, 31.901529, 28.366726>,  <38.565922, 31.643578, 28.313623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866989, 31.901529, 28.366726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240000, 0.456488, -0.856749,
		-0.613099, 0.612986, 0.498355,
		0.752668, 0.644877, 0.132756,
		39.092789, 32.094994, 28.406553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315071, 32.350193, 28.288044>,  <38.565922, 31.643578, 28.313623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315071, 32.350193, 28.288044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700333, 32.349968, 28.180468>,  <38.931492, 32.349831, 28.115921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700333, 32.349968, 28.180468>,  <38.315071, 32.350193, 28.288044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700333, 32.349968, 28.180468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239826, 0.450739, -0.859836,
		0.121708, 0.892655, 0.433997,
		0.963157, -0.000565, -0.268941,
		38.989281, 32.349800, 28.099785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439369, 32.980679, 28.058325>,  <38.315071, 32.350193, 28.288044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439369, 32.980679, 28.058325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733284, 32.775066, 27.881300>,  <38.909634, 32.651699, 27.775085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733284, 32.775066, 27.881300>,  <38.439369, 32.980679, 28.058325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733284, 32.775066, 27.881300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151924, 0.511164, -0.845949,
		0.661069, 0.688825, 0.297501,
		0.734783, -0.514033, -0.442564,
		38.953720, 32.620857, 27.748531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802830, 33.564095, 27.695335>,  <38.439369, 32.980679, 28.058325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802830, 33.564095, 27.695335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.906006, 33.223385, 27.512932>,  <38.967911, 33.018959, 27.403490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.906006, 33.223385, 27.512932>,  <38.802830, 33.564095, 27.695335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906006, 33.223385, 27.512932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113334, 0.442049, -0.889802,
		0.959490, 0.281201, 0.017489,
		0.257944, -0.851774, -0.456011,
		38.983391, 32.967854, 27.376129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144604, 33.873219, 27.214998>,  <38.802830, 33.564095, 27.695335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144604, 33.873219, 27.214998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114288, 33.498653, 27.077953>,  <39.096100, 33.273914, 26.995726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114288, 33.498653, 27.077953>,  <39.144604, 33.873219, 27.214998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114288, 33.498653, 27.077953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043233, 0.340193, -0.939361,
		0.996186, -0.086003, 0.014702,
		-0.075786, -0.936415, -0.342614,
		39.091553, 33.217728, 26.975170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685375, 33.659637, 26.777412>,  <39.144604, 33.873219, 27.214998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685375, 33.659637, 26.777412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394913, 33.407219, 26.668255>,  <39.220634, 33.255768, 26.602760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394913, 33.407219, 26.668255>,  <39.685375, 33.659637, 26.777412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394913, 33.407219, 26.668255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060236, 0.336999, -0.939576,
		0.684882, -0.698720, -0.206703,
		-0.726160, -0.631048, -0.272893,
		39.177063, 33.217903, 26.586388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829857, 33.344742, 26.195724>,  <39.685375, 33.659637, 26.777412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829857, 33.344742, 26.195724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432545, 33.298454, 26.195988>,  <39.194157, 33.270679, 26.196146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432545, 33.298454, 26.195988>,  <39.829857, 33.344742, 26.195724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432545, 33.298454, 26.195988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036999, 0.312199, -0.949296,
		0.109649, -0.942943, -0.314383,
		-0.993281, -0.115721, 0.000656,
		39.134560, 33.263737, 26.196184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634338, 32.947376, 25.638483>,  <39.829857, 33.344742, 26.195724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634338, 32.947376, 25.638483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271198, 33.086048, 25.732819>,  <39.053314, 33.169250, 25.789419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271198, 33.086048, 25.732819>,  <39.634338, 32.947376, 25.638483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271198, 33.086048, 25.732819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210996, 0.108327, -0.971466,
		-0.362334, -0.931708, -0.025197,
		-0.907852, 0.346678, 0.235838,
		38.998844, 33.190052, 25.803570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135098, 32.694065, 25.105391>,  <39.634338, 32.947376, 25.638483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135098, 32.694065, 25.105391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.982105, 33.025433, 25.269062>,  <38.890312, 33.224255, 25.367266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.982105, 33.025433, 25.269062>,  <39.135098, 32.694065, 25.105391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982105, 33.025433, 25.269062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317237, 0.298188, -0.900247,
		-0.867798, -0.474129, 0.148756,
		-0.382476, 0.828423, 0.409178,
		38.867363, 33.273960, 25.391815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372990, 32.707775, 24.936785>,  <39.135098, 32.694065, 25.105391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372990, 32.707775, 24.936785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516685, 33.072968, 25.014151>,  <38.602905, 33.292084, 25.060570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.516685, 33.072968, 25.014151>,  <38.372990, 32.707775, 24.936785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516685, 33.072968, 25.014151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246333, 0.292666, -0.923941,
		-0.900147, 0.284274, 0.330035,
		0.359243, 0.912981, 0.193417,
		38.624458, 33.346863, 25.072176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917107, 33.217155, 24.645557>,  <38.372990, 32.707775, 24.936785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917107, 33.217155, 24.645557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.226166, 33.465107, 24.700352>,  <38.411602, 33.613876, 24.733229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.226166, 33.465107, 24.700352>,  <37.917107, 33.217155, 24.645557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226166, 33.465107, 24.700352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122671, 0.357502, -0.925821,
		-0.622866, 0.698532, 0.352264,
		0.772651, 0.619875, 0.136986,
		38.457962, 33.651070, 24.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705883, 33.791832, 24.389240>,  <37.917107, 33.217155, 24.645557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705883, 33.791832, 24.389240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103558, 33.833706, 24.399382>,  <38.342163, 33.858829, 24.405466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103558, 33.833706, 24.399382>,  <37.705883, 33.791832, 24.389240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103558, 33.833706, 24.399382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023883, 0.443775, -0.895820,
		-0.105032, 0.890002, 0.443693,
		0.994182, 0.104686, 0.025354,
		38.401814, 33.865112, 24.406988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941071, 34.544247, 24.126812>,  <37.705883, 33.791832, 24.389240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941071, 34.544247, 24.126812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.276741, 34.330845, 24.084566>,  <38.478142, 34.202805, 24.059219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.276741, 34.330845, 24.084566>,  <37.941071, 34.544247, 24.126812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276741, 34.330845, 24.084566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160521, 0.428508, -0.889164,
		0.519632, 0.729212, 0.445233,
		0.839175, -0.533508, -0.105613,
		38.528492, 34.170792, 24.052883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464203, 34.947639, 23.838921>,  <37.941071, 34.544247, 24.126812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464203, 34.947639, 23.838921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.615688, 34.587650, 23.752552>,  <38.706581, 34.371658, 23.700731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.615688, 34.587650, 23.752552>,  <38.464203, 34.947639, 23.838921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615688, 34.587650, 23.752552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375823, 0.362738, -0.852747,
		0.845772, 0.241801, 0.475606,
		0.378716, -0.899974, -0.215919,
		38.729301, 34.317657, 23.687777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234394, 35.026363, 23.639065>,  <38.464203, 34.947639, 23.838921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234394, 35.026363, 23.639065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062038, 34.702904, 23.478857>,  <38.958626, 34.508827, 23.382732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062038, 34.702904, 23.478857>,  <39.234394, 35.026363, 23.639065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062038, 34.702904, 23.478857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269047, 0.308531, -0.912372,
		0.861365, -0.500888, 0.084624,
		-0.430887, -0.808653, -0.400520,
		38.932774, 34.460308, 23.358702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777359, 34.878864, 23.195314>,  <39.234394, 35.026363, 23.639065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777359, 34.878864, 23.195314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.426605, 34.710476, 23.102478>,  <39.216152, 34.609444, 23.046776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.426605, 34.710476, 23.102478>,  <39.777359, 34.878864, 23.195314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426605, 34.710476, 23.102478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185870, 0.148344, -0.971312,
		0.443321, -0.894863, -0.051835,
		-0.876880, -0.420968, -0.232092,
		39.163540, 34.584187, 23.032850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901367, 34.597420, 22.500288>,  <39.777359, 34.878864, 23.195314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901367, 34.597420, 22.500288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503792, 34.633175, 22.525894>,  <39.265247, 34.654629, 22.541258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503792, 34.633175, 22.525894>,  <39.901367, 34.597420, 22.500288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503792, 34.633175, 22.525894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048664, 0.164408, -0.985191,
		-0.098592, -0.982333, -0.159061,
		-0.993938, 0.089392, 0.064014,
		39.205612, 34.659992, 22.545099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368740, 34.081318, 22.199249>,  <39.901367, 34.597420, 22.500288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368740, 34.081318, 22.199249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.746399, 34.167137, 22.099209>,  <40.972996, 34.218628, 22.039185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.746399, 34.167137, 22.099209>,  <40.368740, 34.081318, 22.199249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746399, 34.167137, 22.099209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271503, -0.076394, 0.959401,
		0.186734, -0.973721, -0.130379,
		0.944149, 0.214551, -0.250102,
		41.029644, 34.231503, 22.024178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867008, 33.596565, 22.416000>,  <40.368740, 34.081318, 22.199249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867008, 33.596565, 22.416000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053867, 33.948235, 22.378437>,  <41.165985, 34.159237, 22.355900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053867, 33.948235, 22.378437>,  <40.867008, 33.596565, 22.416000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053867, 33.948235, 22.378437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489763, -0.168874, 0.855344,
		0.736140, -0.445567, -0.509478,
		0.467151, 0.879176, -0.093908,
		41.194012, 34.211987, 22.350266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572414, 33.485386, 22.568073>,  <40.867008, 33.596565, 22.416000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572414, 33.485386, 22.568073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523830, 33.877758, 22.628777>,  <41.494678, 34.113182, 22.665197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523830, 33.877758, 22.628777>,  <41.572414, 33.485386, 22.568073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523830, 33.877758, 22.628777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553681, -0.059938, 0.830569,
		0.823824, 0.184904, -0.535840,
		-0.121459, 0.980927, 0.151756,
		41.487392, 34.172035, 22.674303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064117, 33.680744, 22.994776>,  <41.572414, 33.485386, 22.568073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064117, 33.680744, 22.994776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.832096, 34.004349, 23.032804>,  <41.692883, 34.198513, 23.055622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.832096, 34.004349, 23.032804>,  <42.064117, 33.680744, 22.994776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832096, 34.004349, 23.032804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201512, 0.029429, 0.979044,
		0.789262, 0.587053, -0.180096,
		-0.580051, 0.809013, 0.095071,
		41.658081, 34.247051, 23.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470505, 34.029041, 23.470438>,  <42.064117, 33.680744, 22.994776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470505, 34.029041, 23.470438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.096062, 34.169197, 23.482697>,  <41.871395, 34.253288, 23.490051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.096062, 34.169197, 23.482697>,  <42.470505, 34.029041, 23.470438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096062, 34.169197, 23.482697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008123, -0.065578, 0.997814,
		0.351629, 0.934307, 0.058542,
		-0.936104, 0.350385, 0.030649,
		41.815231, 34.274311, 23.491892>
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
