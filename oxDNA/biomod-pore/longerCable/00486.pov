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
	<24.675716, 35.319462, 35.441338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507584, 35.102013, 35.150738>,  <24.406704, 34.971542, 34.976379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507584, 35.102013, 35.150738>,  <24.675716, 35.319462, 35.441338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507584, 35.102013, 35.150738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012261, 0.797188, -0.603607,
		0.907288, -0.262622, -0.328418,
		-0.420331, -0.543619, -0.726499,
		24.381485, 34.938927, 34.932789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322983, 35.460720, 35.110970>,  <24.675716, 35.319462, 35.441338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322983, 35.460720, 35.110970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454670, 35.089245, 35.042671>,  <25.533682, 34.866360, 35.001690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454670, 35.089245, 35.042671>,  <25.322983, 35.460720, 35.110970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454670, 35.089245, 35.042671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355134, 0.045777, -0.933694,
		0.874926, 0.368028, -0.314738,
		0.329218, -0.928687, -0.170750,
		25.553434, 34.810638, 34.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908375, 35.369743, 34.528870>,  <25.322983, 35.460720, 35.110970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908375, 35.369743, 34.528870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693079, 35.032673, 34.534424>,  <25.563902, 34.830429, 34.537758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693079, 35.032673, 34.534424>,  <25.908375, 35.369743, 34.528870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693079, 35.032673, 34.534424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126051, 0.064198, -0.989944,
		0.833311, -0.534579, -0.140774,
		-0.538241, -0.842676, 0.013888,
		25.531607, 34.779869, 34.538589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057808, 35.223717, 33.838600>,  <25.908375, 35.369743, 34.528870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057808, 35.223717, 33.838600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814770, 34.930824, 33.961674>,  <25.668947, 34.755089, 34.035519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814770, 34.930824, 33.961674>,  <26.057808, 35.223717, 33.838600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814770, 34.930824, 33.961674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210668, -0.224933, -0.951327,
		0.765799, -0.642840, -0.017590,
		-0.607595, -0.732230, 0.307680,
		25.632492, 34.711155, 34.053978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270094, 34.570709, 33.571251>,  <26.057808, 35.223717, 33.838600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270094, 34.570709, 33.571251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873003, 34.572514, 33.619373>,  <25.634748, 34.573597, 33.648247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873003, 34.572514, 33.619373>,  <26.270094, 34.570709, 33.571251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873003, 34.572514, 33.619373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120090, -0.107178, -0.986961,
		0.008448, -0.994230, 0.106940,
		-0.992727, 0.004504, 0.120302,
		25.575186, 34.573868, 33.655464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956812, 33.888424, 33.443081>,  <26.270094, 34.570709, 33.571251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956812, 33.888424, 33.443081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698345, 34.186420, 33.376808>,  <25.543264, 34.365219, 33.337044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698345, 34.186420, 33.376808>,  <25.956812, 33.888424, 33.443081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698345, 34.186420, 33.376808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177354, -0.064565, -0.982027,
		-0.742303, -0.663937, -0.090408,
		-0.646167, 0.744996, -0.165678,
		25.504496, 34.409920, 33.327106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374556, 33.728558, 32.999279>,  <25.956812, 33.888424, 33.443081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374556, 33.728558, 32.999279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502523, 34.106735, 32.974682>,  <25.579304, 34.333641, 32.959923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502523, 34.106735, 32.974682>,  <25.374556, 33.728558, 32.999279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502523, 34.106735, 32.974682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181134, -0.124745, -0.975515,
		-0.929969, 0.300945, -0.211161,
		0.319918, 0.945447, -0.061498,
		25.598499, 34.390369, 32.956234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838430, 33.998146, 32.590622>,  <25.374556, 33.728558, 32.999279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838430, 33.998146, 32.590622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196627, 34.173016, 32.557213>,  <25.411545, 34.277935, 32.537167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196627, 34.173016, 32.557213>,  <24.838430, 33.998146, 32.590622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196627, 34.173016, 32.557213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035540, -0.257288, -0.965681,
		-0.443655, 0.861792, -0.245936,
		0.895493, 0.437170, -0.083519,
		25.465275, 34.304165, 32.532158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924185, 34.186325, 31.865732>,  <24.838430, 33.998146, 32.590622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924185, 34.186325, 31.865732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300491, 34.203487, 32.000263>,  <25.526276, 34.213783, 32.080982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300491, 34.203487, 32.000263>,  <24.924185, 34.186325, 31.865732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300491, 34.203487, 32.000263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314529, -0.480851, -0.818446,
		0.126609, 0.875752, -0.465864,
		0.940767, 0.042905, 0.336329,
		25.582722, 34.216358, 32.101162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310667, 34.304600, 31.287243>,  <24.924185, 34.186325, 31.865732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310667, 34.304600, 31.287243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583155, 34.179447, 31.551985>,  <25.746647, 34.104355, 31.710829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583155, 34.179447, 31.551985>,  <25.310667, 34.304600, 31.287243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583155, 34.179447, 31.551985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473695, -0.500921, -0.724355,
		0.558172, 0.806960, -0.193027,
		0.681217, -0.312879, 0.661854,
		25.787519, 34.085583, 31.750542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970314, 34.455101, 31.012859>,  <25.310667, 34.304600, 31.287243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970314, 34.455101, 31.012859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000154, 34.146156, 31.265175>,  <26.018059, 33.960789, 31.416565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000154, 34.146156, 31.265175>,  <25.970314, 34.455101, 31.012859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000154, 34.146156, 31.265175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481065, -0.526209, -0.701199,
		0.873505, 0.355762, 0.332298,
		0.074602, -0.772358, 0.630791,
		26.022535, 33.914448, 31.454412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203814, 34.612576, 30.425661>,  <25.970314, 34.455101, 31.012859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203814, 34.612576, 30.425661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932913, 34.803795, 30.201944>,  <25.770372, 34.918526, 30.067715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932913, 34.803795, 30.201944>,  <26.203814, 34.612576, 30.425661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932913, 34.803795, 30.201944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713150, 0.613485, -0.339194,
		0.180966, -0.628577, -0.756401,
		-0.677250, 0.478045, -0.559290,
		25.729738, 34.947208, 30.034157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376617, 33.940323, 30.074373>,  <26.203814, 34.612576, 30.425661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376617, 33.940323, 30.074373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383261, 33.553135, 30.174578>,  <26.387247, 33.320820, 30.234699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383261, 33.553135, 30.174578>,  <26.376617, 33.940323, 30.074373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383261, 33.553135, 30.174578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065556, 0.251059, 0.965750,
		-0.997711, 0.000383, 0.067626,
		0.016609, -0.967972, 0.250509,
		26.388243, 33.262745, 30.249731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796215, 33.647522, 30.439663>,  <26.376617, 33.940323, 30.074373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796215, 33.647522, 30.439663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082682, 33.404503, 30.577063>,  <26.254562, 33.258690, 30.659502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082682, 33.404503, 30.577063>,  <25.796215, 33.647522, 30.439663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082682, 33.404503, 30.577063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300474, 0.175823, 0.937444,
		-0.629938, -0.774577, -0.056634,
		0.716165, -0.607549, 0.343498,
		26.297531, 33.222237, 30.680113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580416, 33.069481, 30.951855>,  <25.796215, 33.647522, 30.439663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580416, 33.069481, 30.951855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970366, 33.087559, 31.039103>,  <26.204336, 33.098404, 31.091452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970366, 33.087559, 31.039103>,  <25.580416, 33.069481, 30.951855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970366, 33.087559, 31.039103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218075, 0.393236, 0.893201,
		-0.045408, -0.918326, 0.393211,
		0.974875, 0.045191, 0.218120,
		26.262829, 33.101116, 31.104538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676659, 32.970638, 31.754757>,  <25.580416, 33.069481, 30.951855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676659, 32.970638, 31.754757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999149, 33.179588, 31.643677>,  <26.192644, 33.304958, 31.577028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999149, 33.179588, 31.643677>,  <25.676659, 32.970638, 31.754757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999149, 33.179588, 31.643677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158149, 0.642621, 0.749685,
		0.570075, -0.560499, 0.600712,
		0.806228, 0.522378, -0.277700,
		26.241018, 33.336304, 31.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245438, 32.933842, 32.311451>,  <25.676659, 32.970638, 31.754757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245438, 32.933842, 32.311451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196840, 33.256393, 32.079937>,  <26.167683, 33.449924, 31.941027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196840, 33.256393, 32.079937>,  <26.245438, 32.933842, 32.311451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196840, 33.256393, 32.079937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034144, 0.579368, 0.814350,
		0.992005, 0.118700, -0.042856,
		-0.121493, 0.806376, -0.578789,
		26.160393, 33.498306, 31.906300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592798, 33.511967, 32.561798>,  <26.245438, 32.933842, 32.311451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592798, 33.511967, 32.561798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358185, 33.699791, 32.297829>,  <26.217417, 33.812485, 32.139446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358185, 33.699791, 32.297829>,  <26.592798, 33.511967, 32.561798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358185, 33.699791, 32.297829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249389, 0.670499, 0.698739,
		0.770575, 0.574410, -0.276166,
		-0.586532, 0.469558, -0.659921,
		26.182226, 33.840660, 32.099854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819824, 34.209602, 32.502129>,  <26.592798, 33.511967, 32.561798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819824, 34.209602, 32.502129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432297, 34.189034, 32.405178>,  <26.199780, 34.176693, 32.347008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432297, 34.189034, 32.405178>,  <26.819824, 34.209602, 32.502129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432297, 34.189034, 32.405178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171791, 0.844320, 0.507555,
		0.178540, 0.533367, -0.826827,
		-0.968820, -0.051422, -0.242373,
		26.141651, 34.173607, 32.332466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575203, 34.868454, 32.215458>,  <26.819824, 34.209602, 32.502129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575203, 34.868454, 32.215458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242872, 34.685818, 32.342739>,  <26.043474, 34.576237, 32.419106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242872, 34.685818, 32.342739>,  <26.575203, 34.868454, 32.215458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242872, 34.685818, 32.342739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269025, 0.830014, 0.488572,
		-0.487189, 0.320315, -0.812432,
		-0.830826, -0.456591, 0.318201,
		25.993624, 34.548840, 32.438198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001318, 35.431351, 32.254589>,  <26.575203, 34.868454, 32.215458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001318, 35.431351, 32.254589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876513, 35.124123, 32.478275>,  <25.801628, 34.939785, 32.612488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876513, 35.124123, 32.478275>,  <26.001318, 35.431351, 32.254589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876513, 35.124123, 32.478275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563473, 0.623505, 0.541977,
		-0.764947, -0.145997, -0.627328,
		-0.312016, -0.768066, 0.559214,
		25.782907, 34.893703, 32.646038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211849, 35.349525, 32.294060>,  <26.001318, 35.431351, 32.254589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211849, 35.349525, 32.294060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416775, 35.212437, 32.609039>,  <25.539730, 35.130184, 32.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416775, 35.212437, 32.609039>,  <25.211849, 35.349525, 32.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416775, 35.212437, 32.609039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615241, 0.493260, 0.614958,
		-0.599176, -0.799523, 0.041849,
		0.512316, -0.342721, 0.787449,
		25.570469, 35.109619, 32.845272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824751, 34.973961, 32.724892>,  <25.211849, 35.349525, 32.294060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824751, 34.973961, 32.724892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099199, 35.160110, 32.948555>,  <25.263868, 35.271801, 33.082752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099199, 35.160110, 32.948555>,  <24.824751, 34.973961, 32.724892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099199, 35.160110, 32.948555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727487, 0.439564, 0.526826,
		-0.000615, -0.768250, 0.640150,
		0.686121, 0.465376, 0.559162,
		25.305037, 35.299725, 33.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.435556, 35.073902, 33.358810>,  <24.824751, 34.973961, 32.724892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.435556, 35.073902, 33.358810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754429, 34.832561, 33.350094>,  <24.945751, 34.687759, 33.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754429, 34.832561, 33.350094>,  <24.435556, 35.073902, 33.358810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754429, 34.832561, 33.350094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065210, 0.050161, 0.996610,
		-0.600210, -0.795898, 0.079332,
		0.797179, -0.603348, -0.021793,
		24.993584, 34.651558, 33.343555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.323616, 34.599888, 33.890049>,  <24.435556, 35.073902, 33.358810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.323616, 34.599888, 33.890049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714268, 34.577244, 33.807110>,  <24.948658, 34.563656, 33.757347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714268, 34.577244, 33.807110>,  <24.323616, 34.599888, 33.890049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714268, 34.577244, 33.807110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208022, 0.006149, 0.978105,
		-0.054100, -0.998377, 0.017782,
		0.976627, -0.056615, -0.207352,
		25.007256, 34.560261, 33.744904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491377, 34.027424, 34.223576>,  <24.323616, 34.599888, 33.890049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491377, 34.027424, 34.223576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830502, 34.237396, 34.193478>,  <25.033976, 34.363380, 34.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830502, 34.237396, 34.193478>,  <24.491377, 34.027424, 34.223576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830502, 34.237396, 34.193478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249029, -0.268829, 0.930438,
		0.468189, -0.807574, -0.358640,
		0.847811, 0.524933, -0.075247,
		25.084845, 34.394875, 34.170902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052891, 33.556335, 34.593155>,  <24.491377, 34.027424, 34.223576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052891, 33.556335, 34.593155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219969, 33.919346, 34.575596>,  <25.320215, 34.137154, 34.565060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219969, 33.919346, 34.575596>,  <25.052891, 33.556335, 34.593155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219969, 33.919346, 34.575596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384636, -0.132844, 0.913459,
		0.823157, -0.398432, -0.404555,
		0.417694, 0.907526, -0.043900,
		25.345278, 34.191605, 34.562428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702572, 33.535095, 34.802425>,  <25.052891, 33.556335, 34.593155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702572, 33.535095, 34.802425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583200, 33.908871, 34.880154>,  <25.511578, 34.133137, 34.926792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583200, 33.908871, 34.880154>,  <25.702572, 33.535095, 34.802425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583200, 33.908871, 34.880154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319212, -0.094158, 0.942994,
		0.899469, 0.343448, -0.270185,
		-0.298429, 0.934440, 0.194325,
		25.493671, 34.189201, 34.938450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237946, 33.862896, 35.150486>,  <25.702572, 33.535095, 34.802425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237946, 33.862896, 35.150486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861191, 33.985786, 35.204830>,  <25.635138, 34.059521, 35.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861191, 33.985786, 35.204830>,  <26.237946, 33.862896, 35.150486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861191, 33.985786, 35.204830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099573, -0.130923, 0.986380,
		0.320833, 0.942586, 0.092723,
		-0.941887, 0.307230, 0.135860,
		25.578625, 34.077957, 35.245586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861622, 34.198681, 35.546879>,  <26.237946, 33.862896, 35.150486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861622, 34.198681, 35.546879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223581, 34.201370, 35.717110>,  <27.440756, 34.202984, 35.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223581, 34.201370, 35.717110>,  <26.861622, 34.198681, 35.546879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223581, 34.201370, 35.717110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056255, 0.989214, -0.135243,
		-0.421898, 0.146322, 0.894758,
		0.904896, 0.006724, 0.425579,
		27.495050, 34.203388, 35.844784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995110, 34.869217, 35.184292>,  <26.861622, 34.198681, 35.546879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995110, 34.869217, 35.184292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048395, 35.137329, 35.476311>,  <27.080366, 35.298199, 35.651524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048395, 35.137329, 35.476311>,  <26.995110, 34.869217, 35.184292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048395, 35.137329, 35.476311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102739, 0.741986, -0.662497,
		-0.985748, 0.013249, 0.167706,
		0.133213, 0.670285, 0.730050,
		27.088360, 35.338413, 35.695324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277111, 35.562260, 35.200993>,  <26.995110, 34.869217, 35.184292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277111, 35.562260, 35.200993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445240, 35.887451, 35.039799>,  <27.546118, 36.082565, 34.943085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445240, 35.887451, 35.039799>,  <27.277111, 35.562260, 35.200993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445240, 35.887451, 35.039799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205679, 0.347194, 0.914960,
		0.883756, -0.467464, -0.021279,
		0.420323, 0.812978, -0.402982,
		27.571337, 36.131344, 34.918903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862177, 35.505154, 35.558189>,  <27.277111, 35.562260, 35.200993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862177, 35.505154, 35.558189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791706, 35.875092, 35.423363>,  <27.749424, 36.097054, 35.342464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791706, 35.875092, 35.423363>,  <27.862177, 35.505154, 35.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791706, 35.875092, 35.423363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180046, 0.366926, 0.912660,
		0.967753, 0.100101, -0.231159,
		-0.176177, 0.924849, -0.337070,
		27.738853, 36.152546, 35.322243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447979, 35.911541, 35.668560>,  <27.862177, 35.505154, 35.558189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447979, 35.911541, 35.668560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121553, 36.142654, 35.662750>,  <27.925699, 36.281322, 35.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121553, 36.142654, 35.662750>,  <28.447979, 35.911541, 35.668560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121553, 36.142654, 35.662750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256365, 0.384387, 0.886862,
		0.517997, 0.720010, -0.461806,
		-0.816061, 0.577782, -0.014526,
		27.876736, 36.315990, 35.658394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405056, 36.682938, 35.415749>,  <28.447979, 35.911541, 35.668560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405056, 36.682938, 35.415749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068668, 36.898392, 35.395164>,  <27.866837, 37.027664, 35.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068668, 36.898392, 35.395164>,  <28.405056, 36.682938, 35.415749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068668, 36.898392, 35.395164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208817, 0.410818, 0.887482,
		0.499167, 0.735598, -0.457960,
		-0.840968, 0.538632, -0.051461,
		27.816378, 37.059982, 35.379726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488216, 37.365993, 35.460674>,  <28.405056, 36.682938, 35.415749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488216, 37.365993, 35.460674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133148, 37.282368, 35.624790>,  <27.920107, 37.232193, 35.723259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133148, 37.282368, 35.624790>,  <28.488216, 37.365993, 35.460674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133148, 37.282368, 35.624790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318494, 0.364754, 0.874937,
		-0.332575, 0.907329, -0.257194,
		-0.887668, -0.209067, 0.410287,
		27.866848, 37.219646, 35.747875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156807, 37.989864, 35.828300>,  <28.488216, 37.365993, 35.460674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156807, 37.989864, 35.828300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021763, 37.648151, 35.986401>,  <27.940737, 37.443123, 36.081261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021763, 37.648151, 35.986401>,  <28.156807, 37.989864, 35.828300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021763, 37.648151, 35.986401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217503, 0.337735, 0.915766,
		-0.915812, 0.395140, 0.071786,
		-0.337611, -0.854283, 0.395246,
		27.920479, 37.391865, 36.104973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752892, 38.226814, 36.327271>,  <28.156807, 37.989864, 35.828300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752892, 38.226814, 36.327271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843473, 37.848648, 36.420998>,  <27.897821, 37.621746, 36.477234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843473, 37.848648, 36.420998>,  <27.752892, 38.226814, 36.327271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843473, 37.848648, 36.420998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228637, 0.285438, 0.930726,
		-0.946807, -0.157193, 0.280795,
		0.226453, -0.945418, 0.234315,
		27.911409, 37.565022, 36.491291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475208, 37.947781, 37.048367>,  <27.752892, 38.226814, 36.327271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475208, 37.947781, 37.048367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792852, 37.732761, 36.934925>,  <27.983438, 37.603748, 36.866859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792852, 37.732761, 36.934925>,  <27.475208, 37.947781, 37.048367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792852, 37.732761, 36.934925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440953, 0.188449, 0.877523,
		-0.418266, -0.821906, 0.386683,
		0.794112, -0.537547, -0.283601,
		28.031086, 37.571499, 36.849846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707823, 38.251862, 37.661106>,  <27.475208, 37.947781, 37.048367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707823, 38.251862, 37.661106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970131, 38.001064, 37.829319>,  <28.127516, 37.850586, 37.930248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970131, 38.001064, 37.829319>,  <27.707823, 38.251862, 37.661106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970131, 38.001064, 37.829319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143119, -0.650168, -0.746190,
		0.741270, 0.429143, -0.516095,
		0.655771, -0.626991, 0.420532,
		28.166862, 37.812965, 37.955479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473003, 38.202419, 37.424049>,  <27.707823, 38.251862, 37.661106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473003, 38.202419, 37.424049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257116, 37.892666, 37.556133>,  <28.127584, 37.706814, 37.635384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257116, 37.892666, 37.556133>,  <28.473003, 38.202419, 37.424049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257116, 37.892666, 37.556133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084667, -0.440184, -0.893907,
		0.837576, -0.454502, 0.303141,
		-0.539720, -0.774381, 0.330206,
		28.095200, 37.660351, 37.655193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809845, 37.552006, 37.322216>,  <28.473003, 38.202419, 37.424049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809845, 37.552006, 37.322216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417017, 37.483261, 37.353214>,  <28.181320, 37.442017, 37.371811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417017, 37.483261, 37.353214>,  <28.809845, 37.552006, 37.322216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417017, 37.483261, 37.353214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014755, -0.479861, -0.877220,
		0.187943, -0.860347, 0.473793,
		-0.982069, -0.171859, 0.077492,
		28.122396, 37.431705, 37.376461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708654, 36.896400, 37.218044>,  <28.809845, 37.552006, 37.322216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708654, 36.896400, 37.218044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354742, 37.061619, 37.131741>,  <28.142395, 37.160751, 37.079960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354742, 37.061619, 37.131741>,  <28.708654, 36.896400, 37.218044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354742, 37.061619, 37.131741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050062, -0.544568, -0.837222,
		-0.463309, -0.729957, 0.502501,
		-0.884782, 0.413048, -0.215760,
		28.089308, 37.185532, 37.067013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222301, 36.378738, 37.006969>,  <28.708654, 36.896400, 37.218044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222301, 36.378738, 37.006969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101606, 36.721092, 36.838963>,  <28.029188, 36.926506, 36.738159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101606, 36.721092, 36.838963>,  <28.222301, 36.378738, 37.006969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101606, 36.721092, 36.838963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269938, -0.499222, -0.823353,
		-0.914378, -0.135058, 0.381670,
		-0.301739, 0.855883, -0.420020,
		28.011086, 36.977856, 36.712955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583475, 36.370346, 36.692642>,  <28.222301, 36.378738, 37.006969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583475, 36.370346, 36.692642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730949, 36.687309, 36.498257>,  <27.819435, 36.877487, 36.381626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730949, 36.687309, 36.498257>,  <27.583475, 36.370346, 36.692642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730949, 36.687309, 36.498257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473104, -0.290054, -0.831890,
		-0.800151, 0.536619, 0.267952,
		0.368687, 0.792407, -0.485964,
		27.841555, 36.925030, 36.352467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965218, 36.669399, 36.311520>,  <27.583475, 36.370346, 36.692642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965218, 36.669399, 36.311520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315390, 36.752335, 36.136871>,  <27.525492, 36.802094, 36.032082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315390, 36.752335, 36.136871>,  <26.965218, 36.669399, 36.311520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315390, 36.752335, 36.136871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306428, -0.460525, -0.833078,
		-0.373801, 0.863093, -0.339623,
		0.875428, 0.207335, -0.436620,
		27.578018, 36.814533, 36.005886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841612, 37.044979, 35.613289>,  <26.965218, 36.669399, 36.311520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841612, 37.044979, 35.613289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191292, 36.850754, 35.614288>,  <27.401100, 36.734219, 35.614887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191292, 36.850754, 35.614288>,  <26.841612, 37.044979, 35.613289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191292, 36.850754, 35.614288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097237, -0.180099, -0.978831,
		0.475730, 0.855451, -0.204657,
		0.874200, -0.485559, 0.002497,
		27.453552, 36.705086, 35.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327915, 37.355701, 35.082024>,  <26.841612, 37.044979, 35.613289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327915, 37.355701, 35.082024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445936, 36.980938, 35.157009>,  <27.516748, 36.756081, 35.202000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445936, 36.980938, 35.157009>,  <27.327915, 37.355701, 35.082024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445936, 36.980938, 35.157009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034634, -0.206559, -0.977821,
		0.954853, 0.282016, -0.093395,
		0.295052, -0.936910, 0.187467,
		27.534452, 36.699863, 35.213249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003839, 37.307804, 34.685108>,  <27.327915, 37.355701, 35.082024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003839, 37.307804, 34.685108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842442, 36.945274, 34.735332>,  <27.745604, 36.727757, 34.765465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842442, 36.945274, 34.735332>,  <28.003839, 37.307804, 34.685108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842442, 36.945274, 34.735332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116953, -0.187185, -0.975338,
		0.907477, -0.378858, 0.181525,
		-0.403493, -0.906327, 0.125558,
		27.721394, 36.673378, 34.772999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531408, 36.738464, 34.645100>,  <28.003839, 37.307804, 34.685108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531408, 36.738464, 34.645100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164808, 36.656712, 34.507549>,  <27.944847, 36.607658, 34.425018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164808, 36.656712, 34.507549>,  <28.531408, 36.738464, 34.645100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164808, 36.656712, 34.507549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363836, -0.068578, -0.928935,
		0.166279, -0.976485, 0.137215,
		-0.916501, -0.204386, -0.343878,
		27.889858, 36.595394, 34.404385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496107, 36.086597, 34.515144>,  <28.531408, 36.738464, 34.645100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496107, 36.086597, 34.515144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220175, 36.260654, 34.283703>,  <28.054615, 36.365089, 34.144836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220175, 36.260654, 34.283703>,  <28.496107, 36.086597, 34.515144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220175, 36.260654, 34.283703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446355, -0.373607, -0.813133,
		-0.570000, -0.819187, 0.063497,
		-0.689831, 0.435144, -0.578605,
		28.013226, 36.391197, 34.110123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574739, 35.792786, 33.907959>,  <28.496107, 36.086597, 34.515144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574739, 35.792786, 33.907959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287010, 36.039776, 33.780651>,  <28.114372, 36.187969, 33.704266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287010, 36.039776, 33.780651>,  <28.574739, 35.792786, 33.907959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287010, 36.039776, 33.780651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269670, -0.174018, -0.947098,
		-0.640196, -0.767098, -0.041340,
		-0.719324, 0.617477, -0.318269,
		28.071213, 36.225018, 33.685169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279409, 35.526215, 33.354164>,  <28.574739, 35.792786, 33.907959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279409, 35.526215, 33.354164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156366, 35.901966, 33.293568>,  <28.082541, 36.127415, 33.257210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156366, 35.901966, 33.293568>,  <28.279409, 35.526215, 33.354164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156366, 35.901966, 33.293568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046975, -0.174007, -0.983623,
		-0.950353, -0.295455, 0.097653,
		-0.307609, 0.939376, -0.151489,
		28.064083, 36.183781, 33.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521120, 35.534412, 33.026344>,  <28.279409, 35.526215, 33.354164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521120, 35.534412, 33.026344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764187, 35.839775, 32.938755>,  <27.910027, 36.022991, 32.886200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764187, 35.839775, 32.938755>,  <27.521120, 35.534412, 33.026344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764187, 35.839775, 32.938755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172701, -0.142107, -0.974669,
		-0.775186, 0.630094, 0.045487,
		0.607669, 0.763405, -0.218977,
		27.946487, 36.068798, 32.873062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352406, 36.038475, 32.378014>,  <27.521120, 35.534412, 33.026344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352406, 36.038475, 32.378014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743006, 36.089752, 32.447308>,  <27.977365, 36.120518, 32.488884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743006, 36.089752, 32.447308>,  <27.352406, 36.038475, 32.378014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743006, 36.089752, 32.447308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178496, -0.030634, -0.983464,
		-0.120768, 0.991276, -0.052797,
		0.976501, 0.128195, 0.173239,
		28.035955, 36.128212, 32.499279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571529, 36.786842, 32.265865>,  <27.352406, 36.038475, 32.378014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571529, 36.786842, 32.265865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765200, 36.439472, 32.223145>,  <27.881403, 36.231049, 32.197510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765200, 36.439472, 32.223145>,  <27.571529, 36.786842, 32.265865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765200, 36.439472, 32.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233365, -0.010525, -0.972332,
		0.843275, 0.495706, -0.207757,
		0.484177, -0.868427, -0.106805,
		27.910452, 36.178944, 32.191105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928797, 36.875298, 31.602007>,  <27.571529, 36.786842, 32.265865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928797, 36.875298, 31.602007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897285, 36.481724, 31.666090>,  <27.878378, 36.245579, 31.704540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897285, 36.481724, 31.666090>,  <27.928797, 36.875298, 31.602007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897285, 36.481724, 31.666090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074035, -0.166038, -0.983337,
		0.994139, -0.065604, 0.085925,
		-0.078777, -0.983935, 0.160208,
		27.873652, 36.186543, 31.714153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421350, 36.554256, 31.175558>,  <27.928797, 36.875298, 31.602007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421350, 36.554256, 31.175558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183218, 36.247452, 31.271282>,  <28.040339, 36.063370, 31.328716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183218, 36.247452, 31.271282>,  <28.421350, 36.554256, 31.175558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183218, 36.247452, 31.271282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026473, -0.278955, -0.959939,
		0.803044, -0.577817, 0.145765,
		-0.595331, -0.767015, 0.239309,
		28.004618, 36.017349, 31.343075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754700, 35.898781, 30.925957>,  <28.421350, 36.554256, 31.175558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754700, 35.898781, 30.925957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355030, 35.910641, 30.914812>,  <28.115229, 35.917759, 30.908125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355030, 35.910641, 30.914812>,  <28.754700, 35.898781, 30.925957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355030, 35.910641, 30.914812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025501, -0.077190, -0.996690,
		-0.031699, -0.996575, 0.076370,
		-0.999172, 0.029647, -0.027861,
		28.055279, 35.919537, 30.906454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533546, 35.197594, 30.624172>,  <28.754700, 35.898781, 30.925957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533546, 35.197594, 30.624172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281809, 35.505852, 30.584108>,  <28.130766, 35.690807, 30.560070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281809, 35.505852, 30.584108>,  <28.533546, 35.197594, 30.624172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281809, 35.505852, 30.584108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074474, -0.188097, -0.979323,
		-0.773552, -0.608870, 0.175770,
		-0.629342, 0.770647, -0.100157,
		28.093006, 35.737045, 30.554062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986292, 35.013218, 30.290434>,  <28.533546, 35.197594, 30.624172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986292, 35.013218, 30.290434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085930, 35.394093, 30.219675>,  <28.145712, 35.622616, 30.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085930, 35.394093, 30.219675>,  <27.986292, 35.013218, 30.290434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085930, 35.394093, 30.219675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127827, -0.213383, -0.968570,
		-0.960007, 0.218651, -0.174867,
		0.249093, 0.952187, -0.176899,
		28.160658, 35.679749, 30.166605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632885, 35.215862, 29.702827>,  <27.986292, 35.013218, 30.290434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632885, 35.215862, 29.702827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966812, 35.433136, 29.738667>,  <28.167170, 35.563499, 29.760170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966812, 35.433136, 29.738667>,  <27.632885, 35.215862, 29.702827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966812, 35.433136, 29.738667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219176, -0.178636, -0.959193,
		-0.505013, 0.820390, -0.268181,
		0.834820, 0.543184, 0.089596,
		28.217258, 35.596092, 29.765545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750990, 35.726875, 29.184883>,  <27.632885, 35.215862, 29.702827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750990, 35.726875, 29.184883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115711, 35.619522, 29.309198>,  <28.334543, 35.555111, 29.383787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115711, 35.619522, 29.309198>,  <27.750990, 35.726875, 29.184883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115711, 35.619522, 29.309198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201711, -0.366510, -0.908286,
		0.357671, 0.890867, -0.280050,
		0.911802, -0.268379, 0.310788,
		28.389252, 35.539009, 29.402435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325424, 36.008041, 28.765471>,  <27.750990, 35.726875, 29.184883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325424, 36.008041, 28.765471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441801, 35.658012, 28.920181>,  <28.511627, 35.447994, 29.013008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441801, 35.658012, 28.920181>,  <28.325424, 36.008041, 28.765471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441801, 35.658012, 28.920181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320753, -0.291652, -0.901142,
		0.901371, 0.386241, 0.195829,
		0.290944, -0.875075, 0.386775,
		28.529085, 35.395489, 29.036213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028919, 35.890862, 28.645700>,  <28.325424, 36.008041, 28.765471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028919, 35.890862, 28.645700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835497, 35.541088, 28.661356>,  <28.719442, 35.331223, 28.670750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835497, 35.541088, 28.661356>,  <29.028919, 35.890862, 28.645700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835497, 35.541088, 28.661356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384017, -0.252115, -0.888240,
		0.786577, -0.414484, 0.457710,
		-0.483557, -0.874437, 0.039139,
		28.690430, 35.278755, 28.673098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455177, 35.412796, 28.529699>,  <29.028919, 35.890862, 28.645700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455177, 35.412796, 28.529699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080984, 35.327656, 28.416866>,  <28.856468, 35.276573, 28.349167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080984, 35.327656, 28.416866>,  <29.455177, 35.412796, 28.529699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080984, 35.327656, 28.416866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284127, 0.021569, -0.958544,
		0.210112, -0.976847, 0.040300,
		-0.935481, -0.212852, -0.282080,
		28.800341, 35.263802, 28.332243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523428, 34.827316, 28.088623>,  <29.455177, 35.412796, 28.529699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523428, 34.827316, 28.088623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197554, 35.027813, 27.971973>,  <29.002029, 35.148109, 27.901983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197554, 35.027813, 27.971973>,  <29.523428, 34.827316, 28.088623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197554, 35.027813, 27.971973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317028, -0.036111, -0.947728,
		-0.485573, -0.864552, -0.129489,
		-0.814685, 0.501243, -0.291622,
		28.953148, 35.178185, 27.884487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233429, 34.459652, 27.585695>,  <29.523428, 34.827316, 28.088623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233429, 34.459652, 27.585695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161329, 34.849895, 27.535574>,  <29.118069, 35.084042, 27.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161329, 34.849895, 27.535574>,  <29.233429, 34.459652, 27.585695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161329, 34.849895, 27.535574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561527, -0.002530, -0.827455,
		-0.807588, -0.219508, -0.547374,
		-0.180249, 0.975608, -0.125303,
		29.107254, 35.142578, 27.497984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051601, 34.571426, 26.944677>,  <29.233429, 34.459652, 27.585695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051601, 34.571426, 26.944677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144264, 34.949268, 27.037676>,  <29.199862, 35.175972, 27.093475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144264, 34.949268, 27.037676>,  <29.051601, 34.571426, 26.944677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144264, 34.949268, 27.037676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291422, 0.160637, -0.943011,
		-0.928121, 0.286211, -0.238066,
		0.231658, 0.944605, 0.232498,
		29.213762, 35.232651, 27.107426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854273, 35.050316, 26.302395>,  <29.051601, 34.571426, 26.944677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854273, 35.050316, 26.302395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114866, 35.258694, 26.523006>,  <29.271223, 35.383720, 26.655373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114866, 35.258694, 26.523006>,  <28.854273, 35.050316, 26.302395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114866, 35.258694, 26.523006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404908, 0.376020, -0.833461,
		-0.641573, 0.766306, 0.034037,
		0.651485, 0.520945, 0.551528,
		29.310312, 35.414978, 26.688465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857893, 35.748116, 26.054619>,  <28.854273, 35.050316, 26.302395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857893, 35.748116, 26.054619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205513, 35.698982, 26.246313>,  <29.414085, 35.669502, 26.361330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205513, 35.698982, 26.246313>,  <28.857893, 35.748116, 26.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205513, 35.698982, 26.246313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471960, 0.496325, -0.728640,
		-0.148356, 0.859403, 0.489302,
		0.869048, -0.122833, 0.479237,
		29.466227, 35.662132, 26.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152893, 36.364334, 25.875645>,  <28.857893, 35.748116, 26.054619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152893, 36.364334, 25.875645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435619, 36.116249, 26.011730>,  <29.605255, 35.967400, 26.093382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435619, 36.116249, 26.011730>,  <29.152893, 36.364334, 25.875645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435619, 36.116249, 26.011730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610757, 0.292392, -0.735855,
		0.356911, 0.727903, 0.585467,
		0.706817, -0.620213, 0.340214,
		29.647665, 35.930183, 26.113794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799620, 36.695148, 25.915714>,  <29.152893, 36.364334, 25.875645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799620, 36.695148, 25.915714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911421, 36.311905, 25.890715>,  <29.978502, 36.081959, 25.875715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911421, 36.311905, 25.890715>,  <29.799620, 36.695148, 25.915714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911421, 36.311905, 25.890715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608289, 0.227065, -0.760543,
		0.742874, 0.174557, 0.646272,
		0.279504, -0.958108, -0.062499,
		29.995272, 36.024471, 25.871965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485432, 36.758694, 25.868019>,  <29.799620, 36.695148, 25.915714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485432, 36.758694, 25.868019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412878, 36.384403, 25.747017>,  <30.369345, 36.159828, 25.674416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412878, 36.384403, 25.747017>,  <30.485432, 36.758694, 25.868019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412878, 36.384403, 25.747017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483404, 0.183040, -0.856047,
		0.856399, -0.301506, 0.419135,
		-0.181385, -0.935730, -0.302505,
		30.358463, 36.103683, 25.656265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163668, 36.511585, 25.614105>,  <30.485432, 36.758694, 25.868019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163668, 36.511585, 25.614105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912521, 36.253197, 25.440435>,  <30.761833, 36.098164, 25.336233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912521, 36.253197, 25.440435>,  <31.163668, 36.511585, 25.614105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912521, 36.253197, 25.440435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510271, 0.079590, -0.856323,
		0.587713, -0.759205, 0.279646,
		-0.627868, -0.645967, -0.434176,
		30.724161, 36.059406, 25.310183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592115, 35.949787, 25.166946>,  <31.163668, 36.511585, 25.614105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592115, 35.949787, 25.166946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222361, 35.944691, 25.014448>,  <31.000507, 35.941631, 24.922949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222361, 35.944691, 25.014448>,  <31.592115, 35.949787, 25.166946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222361, 35.944691, 25.014448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381424, -0.016985, -0.924244,
		0.005304, -0.999775, 0.020562,
		-0.924385, -0.012745, -0.381248,
		30.945045, 35.940868, 24.900074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613577, 35.507652, 24.602301>,  <31.592115, 35.949787, 25.166946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613577, 35.507652, 24.602301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275394, 35.715347, 24.552349>,  <31.072485, 35.839966, 24.522377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275394, 35.715347, 24.552349>,  <31.613577, 35.507652, 24.602301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275394, 35.715347, 24.552349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139663, -0.010729, -0.990141,
		-0.515459, -0.854562, -0.063448,
		-0.845456, 0.519239, -0.124881,
		31.021757, 35.871120, 24.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223492, 35.147182, 24.055328>,  <31.613577, 35.507652, 24.602301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223492, 35.147182, 24.055328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144814, 35.538570, 24.080362>,  <31.097607, 35.773403, 24.095383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144814, 35.538570, 24.080362>,  <31.223492, 35.147182, 24.055328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144814, 35.538570, 24.080362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185449, 0.099807, -0.977572,
		-0.962767, -0.180677, -0.201087,
		-0.196695, 0.978465, 0.062584,
		31.085806, 35.832111, 24.099138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269415, 35.366089, 23.393579>,  <31.223492, 35.147182, 24.055328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269415, 35.366089, 23.393579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196676, 35.725113, 23.554235>,  <31.153032, 35.940529, 23.650629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196676, 35.725113, 23.554235>,  <31.269415, 35.366089, 23.393579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196676, 35.725113, 23.554235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173101, 0.431292, -0.885451,
		-0.967971, -0.091493, -0.233798,
		-0.181847, 0.897561, 0.401641,
		31.142122, 35.994381, 23.674728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852768, 35.649845, 22.941790>,  <31.269415, 35.366089, 23.393579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852768, 35.649845, 22.941790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996941, 35.972420, 23.129297>,  <31.083445, 36.165966, 23.241802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996941, 35.972420, 23.129297>,  <30.852768, 35.649845, 22.941790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996941, 35.972420, 23.129297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066855, 0.478923, -0.875307,
		-0.930386, 0.346830, 0.118706,
		0.360433, 0.806438, 0.468770,
		31.105070, 36.214352, 23.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492363, 36.243050, 22.677851>,  <30.852768, 35.649845, 22.941790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492363, 36.243050, 22.677851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845907, 36.380123, 22.805201>,  <31.058033, 36.462368, 22.881611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845907, 36.380123, 22.805201>,  <30.492363, 36.243050, 22.677851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845907, 36.380123, 22.805201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136851, 0.461414, -0.876567,
		-0.447287, 0.818331, 0.360928,
		0.883859, 0.342683, 0.318374,
		31.111065, 36.482929, 22.900713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515514, 36.891174, 22.452736>,  <30.492363, 36.243050, 22.677851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515514, 36.891174, 22.452736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908272, 36.841850, 22.510256>,  <31.143927, 36.812256, 22.544767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908272, 36.841850, 22.510256>,  <30.515514, 36.891174, 22.452736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908272, 36.841850, 22.510256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189170, 0.598623, -0.778373,
		0.009896, 0.791484, 0.611110,
		0.981894, -0.123307, 0.143801,
		31.202841, 36.804859, 22.553396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762156, 37.541100, 22.395010>,  <30.515514, 36.891174, 22.452736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762156, 37.541100, 22.395010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076694, 37.296215, 22.361887>,  <31.265417, 37.149284, 22.342012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076694, 37.296215, 22.361887>,  <30.762156, 37.541100, 22.395010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076694, 37.296215, 22.361887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354615, 0.557057, -0.750956,
		0.505871, 0.561148, 0.655139,
		0.786347, -0.612210, -0.082808,
		31.312599, 37.112553, 22.337044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544962, 37.927860, 22.405895>,  <30.762156, 37.541100, 22.395010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544962, 37.927860, 22.405895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572107, 37.586880, 22.198540>,  <31.588394, 37.382294, 22.074127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572107, 37.586880, 22.198540>,  <31.544962, 37.927860, 22.405895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572107, 37.586880, 22.198540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311310, 0.511738, -0.800756,
		0.947882, -0.107036, 0.300105,
		0.067866, -0.852448, -0.518389,
		31.592466, 37.331146, 22.043022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161743, 38.053814, 21.947601>,  <31.544962, 37.927860, 22.405895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161743, 38.053814, 21.947601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990896, 37.739120, 21.769335>,  <31.888388, 37.550304, 21.662374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990896, 37.739120, 21.769335>,  <32.161743, 38.053814, 21.947601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990896, 37.739120, 21.769335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289346, 0.348044, -0.891708,
		0.856651, -0.509814, 0.078984,
		-0.427115, -0.786737, -0.445665,
		31.862762, 37.503098, 21.635635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620430, 37.852242, 21.480055>,  <32.161743, 38.053814, 21.947601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620430, 37.852242, 21.480055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272091, 37.698017, 21.358089>,  <32.063087, 37.605484, 21.284910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272091, 37.698017, 21.358089>,  <32.620430, 37.852242, 21.480055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272091, 37.698017, 21.358089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134369, 0.409963, -0.902150,
		0.472836, -0.826604, -0.305206,
		-0.870845, -0.385559, -0.304916,
		32.010838, 37.582352, 21.266615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722069, 37.534264, 20.917467>,  <32.620430, 37.852242, 21.480055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722069, 37.534264, 20.917467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324055, 37.546978, 20.879745>,  <32.085247, 37.554607, 20.857113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324055, 37.546978, 20.879745>,  <32.722069, 37.534264, 20.917467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324055, 37.546978, 20.879745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097320, 0.112704, -0.988851,
		-0.020807, -0.993120, -0.115238,
		-0.995035, 0.031790, -0.094305,
		32.025543, 37.556515, 20.851454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598545, 37.046764, 20.388815>,  <32.722069, 37.534264, 20.917467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598545, 37.046764, 20.388815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255730, 37.252712, 20.396736>,  <32.050041, 37.376282, 20.401489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255730, 37.252712, 20.396736>,  <32.598545, 37.046764, 20.388815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255730, 37.252712, 20.396736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000587, 0.039407, -0.999223,
		-0.515251, -0.856362, -0.034076,
		-0.857039, 0.514870, 0.019802,
		31.998617, 37.407173, 20.402678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989851, 36.613476, 20.022690>,  <32.598545, 37.046764, 20.388815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989851, 36.613476, 20.022690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898846, 37.002987, 20.023029>,  <31.844242, 37.236694, 20.023233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898846, 37.002987, 20.023029>,  <31.989851, 36.613476, 20.022690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898846, 37.002987, 20.023029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026179, -0.005246, -0.999644,
		-0.973424, -0.227452, 0.026686,
		-0.227511, 0.973775, 0.000848,
		31.830593, 37.295120, 20.023283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464973, 36.655254, 19.580437>,  <31.989851, 36.613476, 20.022690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464973, 36.655254, 19.580437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584883, 37.036037, 19.605452>,  <31.656828, 37.264507, 19.620461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584883, 37.036037, 19.605452>,  <31.464973, 36.655254, 19.580437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584883, 37.036037, 19.605452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164184, 0.116053, -0.979579,
		-0.939776, 0.283385, 0.191086,
		0.299774, 0.951958, 0.062536,
		31.674814, 37.321625, 19.624212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081312, 36.987656, 19.057955>,  <31.464973, 36.655254, 19.580437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081312, 36.987656, 19.057955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346882, 37.276016, 19.137455>,  <31.506224, 37.449032, 19.185156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346882, 37.276016, 19.137455>,  <31.081312, 36.987656, 19.057955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346882, 37.276016, 19.137455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046032, 0.304675, -0.951343,
		-0.746382, 0.622471, 0.235466,
		0.663924, 0.720904, 0.198751,
		31.546059, 37.492287, 19.197081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782633, 37.576401, 18.858747>,  <31.081312, 36.987656, 19.057955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782633, 37.576401, 18.858747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181417, 37.605999, 18.848978>,  <31.420689, 37.623756, 18.843117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181417, 37.605999, 18.848978>,  <30.782633, 37.576401, 18.858747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181417, 37.605999, 18.848978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044005, 0.275988, -0.960153,
		-0.064306, 0.958309, 0.278405,
		0.996960, 0.073995, -0.024422,
		31.480505, 37.628197, 18.841652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922434, 38.185200, 18.499117>,  <30.782633, 37.576401, 18.858747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922434, 38.185200, 18.499117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265572, 37.981060, 18.474949>,  <31.471455, 37.858578, 18.460447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265572, 37.981060, 18.474949>,  <30.922434, 38.185200, 18.499117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265572, 37.981060, 18.474949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063662, 0.222196, -0.972921,
		0.509951, 0.830769, 0.223099,
		0.857844, -0.510345, -0.060421,
		31.522924, 37.827957, 18.456823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403858, 38.677200, 18.488499>,  <30.922434, 38.185200, 18.499117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403858, 38.677200, 18.488499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549818, 38.337410, 18.336060>,  <31.637394, 38.133537, 18.244596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549818, 38.337410, 18.336060>,  <31.403858, 38.677200, 18.488499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549818, 38.337410, 18.336060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159489, 0.460304, -0.873318,
		0.917285, 0.257893, 0.303447,
		0.364900, -0.849477, -0.381098,
		31.659288, 38.082565, 18.221729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911100, 38.877708, 18.137268>,  <31.403858, 38.677200, 18.488499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911100, 38.877708, 18.137268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901255, 38.505241, 17.991762>,  <31.895348, 38.281761, 17.904459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901255, 38.505241, 17.991762>,  <31.911100, 38.877708, 18.137268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901255, 38.505241, 17.991762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222530, 0.349644, -0.910071,
		0.974615, -0.103348, 0.198606,
		-0.024613, -0.931165, -0.363766,
		31.893871, 38.225891, 17.882633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513195, 38.833103, 17.865427>,  <31.911100, 38.877708, 18.137268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513195, 38.833103, 17.865427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289219, 38.565022, 17.670576>,  <32.154831, 38.404175, 17.553665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289219, 38.565022, 17.670576>,  <32.513195, 38.833103, 17.865427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289219, 38.565022, 17.670576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374576, 0.319652, -0.870354,
		0.739023, -0.669816, 0.072054,
		-0.559945, -0.670201, -0.487128,
		32.121235, 38.363960, 17.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918747, 38.596603, 17.357677>,  <32.513195, 38.833103, 17.865427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918747, 38.596603, 17.357677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534794, 38.565022, 17.250051>,  <32.304420, 38.546074, 17.185476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534794, 38.565022, 17.250051>,  <32.918747, 38.596603, 17.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534794, 38.565022, 17.250051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210883, 0.429180, -0.878256,
		0.184815, -0.899762, -0.395313,
		-0.959881, -0.078950, -0.269063,
		32.246830, 38.541336, 17.169333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965412, 38.402573, 16.683748>,  <32.918747, 38.596603, 17.357677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965412, 38.402573, 16.683748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585346, 38.523594, 16.713795>,  <32.357307, 38.596207, 16.731823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585346, 38.523594, 16.713795>,  <32.965412, 38.402573, 16.683748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585346, 38.523594, 16.713795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119860, 0.577004, -0.807899,
		-0.287776, -0.758635, -0.584515,
		-0.950168, 0.302554, 0.075118,
		32.300297, 38.614361, 16.736330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583973, 38.201153, 16.052719>,  <32.965412, 38.402573, 16.683748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583973, 38.201153, 16.052719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412548, 38.518215, 16.226168>,  <32.309692, 38.708454, 16.330236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412548, 38.518215, 16.226168>,  <32.583973, 38.201153, 16.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412548, 38.518215, 16.226168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033162, 0.493406, -0.869167,
		-0.902905, -0.358109, -0.237740,
		-0.428559, 0.792659, 0.433623,
		32.283981, 38.756012, 16.356255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175781, 38.446751, 15.490376>,  <32.583973, 38.201153, 16.052719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175781, 38.446751, 15.490376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192116, 38.749775, 15.750969>,  <32.201916, 38.931591, 15.907325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192116, 38.749775, 15.750969>,  <32.175781, 38.446751, 15.490376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192116, 38.749775, 15.750969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142349, 0.649788, -0.746668,
		-0.988974, -0.062247, 0.134374,
		0.040836, 0.757563, 0.651484,
		32.204369, 38.977043, 15.946414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742676, 38.927635, 15.288294>,  <32.175781, 38.446751, 15.490376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742676, 38.927635, 15.288294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952675, 39.162251, 15.534984>,  <32.078674, 39.303020, 15.682998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952675, 39.162251, 15.534984>,  <31.742676, 38.927635, 15.288294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952675, 39.162251, 15.534984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148213, 0.650543, -0.744867,
		-0.838098, 0.482462, 0.254602,
		0.524999, 0.586537, 0.616726,
		32.110176, 39.338211, 15.720001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464577, 39.643131, 15.176589>,  <31.742676, 38.927635, 15.288294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464577, 39.643131, 15.176589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819918, 39.702946, 15.350244>,  <32.033123, 39.738834, 15.454436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819918, 39.702946, 15.350244>,  <31.464577, 39.643131, 15.176589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819918, 39.702946, 15.350244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138024, 0.814797, -0.563076,
		-0.437930, 0.560130, 0.703187,
		0.888350, 0.149531, 0.434136,
		32.086422, 39.747807, 15.480484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480331, 40.330959, 15.252438>,  <31.464577, 39.643131, 15.176589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480331, 40.330959, 15.252438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864393, 40.221676, 15.275973>,  <32.094830, 40.156105, 15.290094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864393, 40.221676, 15.275973>,  <31.480331, 40.330959, 15.252438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864393, 40.221676, 15.275973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252397, 0.757278, -0.602350,
		0.120011, 0.593199, 0.796061,
		0.960153, -0.273212, 0.058840,
		32.152439, 40.139713, 15.293625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753616, 41.025570, 15.267269>,  <31.480331, 40.330959, 15.252438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753616, 41.025570, 15.267269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096443, 40.822372, 15.232907>,  <32.302139, 40.700455, 15.212290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096443, 40.822372, 15.232907>,  <31.753616, 41.025570, 15.267269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096443, 40.822372, 15.232907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339190, 0.681860, -0.648087,
		0.387800, 0.526316, 0.756706,
		0.857066, -0.507995, -0.085904,
		32.353561, 40.669975, 15.207136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289730, 41.495945, 15.421507>,  <31.753616, 41.025570, 15.267269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289730, 41.495945, 15.421507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465229, 41.219173, 15.192162>,  <32.570526, 41.053112, 15.054555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465229, 41.219173, 15.192162>,  <32.289730, 41.495945, 15.421507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465229, 41.219173, 15.192162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378242, 0.720975, -0.580627,
		0.815130, 0.037876, 0.578038,
		0.438743, -0.691925, -0.573362,
		32.596851, 41.011597, 15.020153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946678, 41.659252, 15.287469>,  <32.289730, 41.495945, 15.421507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946678, 41.659252, 15.287469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880268, 41.411594, 14.980459>,  <32.840424, 41.263000, 14.796253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880268, 41.411594, 14.980459>,  <32.946678, 41.659252, 15.287469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880268, 41.411594, 14.980459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381919, 0.677211, -0.628906,
		0.909161, -0.397545, 0.124032,
		-0.166023, -0.619147, -0.767524,
		32.830460, 41.225849, 14.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521236, 41.629845, 14.923547>,  <32.946678, 41.659252, 15.287469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521236, 41.629845, 14.923547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231941, 41.525070, 14.667949>,  <33.058365, 41.462204, 14.514590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231941, 41.525070, 14.667949>,  <33.521236, 41.629845, 14.923547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231941, 41.525070, 14.667949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393514, 0.604055, -0.693011,
		0.567515, -0.752666, -0.333798,
		-0.723238, -0.261940, -0.638995,
		33.014969, 41.446487, 14.476251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848782, 41.321533, 14.306769>,  <33.521236, 41.629845, 14.923547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848782, 41.321533, 14.306769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478928, 41.411022, 14.183477>,  <33.257015, 41.464714, 14.109502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478928, 41.411022, 14.183477>,  <33.848782, 41.321533, 14.306769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478928, 41.411022, 14.183477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378216, 0.444111, -0.812230,
		-0.044822, -0.867592, -0.495253,
		-0.924632, 0.223718, -0.308231,
		33.201538, 41.478138, 14.091008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885487, 41.262463, 13.605745>,  <33.848782, 41.321533, 14.306769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885487, 41.262463, 13.605745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578804, 41.514999, 13.652324>,  <33.394794, 41.666523, 13.680271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578804, 41.514999, 13.652324>,  <33.885487, 41.262463, 13.605745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578804, 41.514999, 13.652324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313960, 0.526943, -0.789785,
		-0.559988, -0.568975, -0.602229,
		-0.766709, 0.631346, 0.116447,
		33.348793, 41.704403, 13.687258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570026, 41.410320, 12.917289>,  <33.885487, 41.262463, 13.605745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570026, 41.410320, 12.917289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438671, 41.720169, 13.133481>,  <33.359859, 41.906078, 13.263197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438671, 41.720169, 13.133481>,  <33.570026, 41.410320, 12.917289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438671, 41.720169, 13.133481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082892, 0.593642, -0.800449,
		-0.940898, -0.218057, -0.259156,
		-0.328389, 0.774623, 0.540481,
		33.340153, 41.952557, 13.295626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051064, 41.733540, 12.577294>,  <33.570026, 41.410320, 12.917289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051064, 41.733540, 12.577294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225536, 42.018093, 12.797724>,  <33.330219, 42.188824, 12.929981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225536, 42.018093, 12.797724>,  <33.051064, 41.733540, 12.577294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225536, 42.018093, 12.797724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065948, 0.636023, -0.768847,
		-0.897439, 0.299014, 0.324335,
		0.436181, 0.711382, 0.551073,
		33.356392, 42.231506, 12.963046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691360, 42.415989, 12.695462>,  <33.051064, 41.733540, 12.577294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691360, 42.415989, 12.695462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085117, 42.485725, 12.705125>,  <33.321369, 42.527569, 12.710922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085117, 42.485725, 12.705125>,  <32.691360, 42.415989, 12.695462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085117, 42.485725, 12.705125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093683, 0.635182, -0.766660,
		-0.149007, 0.752428, 0.641599,
		0.984388, 0.174344, 0.024157,
		33.380432, 42.538029, 12.712372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737778, 43.119385, 12.691366>,  <32.691360, 42.415989, 12.695462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737778, 43.119385, 12.691366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072777, 42.947987, 12.555724>,  <33.273777, 42.845146, 12.474339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072777, 42.947987, 12.555724>,  <32.737778, 43.119385, 12.691366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072777, 42.947987, 12.555724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136613, 0.436677, -0.889185,
		0.529094, 0.791014, 0.307176,
		0.837494, -0.428498, -0.339106,
		33.324024, 42.819439, 12.453993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327175, 43.249290, 13.347580>,  <32.737778, 43.119385, 12.691366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327175, 43.249290, 13.347580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095253, 43.570091, 13.405011>,  <31.956099, 43.762573, 13.439470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095253, 43.570091, 13.405011>,  <32.327175, 43.249290, 13.347580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095253, 43.570091, 13.405011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076225, 0.228847, -0.970474,
		-0.811179, -0.551746, -0.193820,
		-0.579810, 0.802002, 0.143579,
		31.921310, 43.810692, 13.448085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831055, 43.190407, 12.829593>,  <32.327175, 43.249290, 13.347580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831055, 43.190407, 12.829593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851976, 43.566784, 12.963387>,  <31.864531, 43.792610, 13.043665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851976, 43.566784, 12.963387>,  <31.831055, 43.190407, 12.829593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851976, 43.566784, 12.963387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167769, 0.321906, -0.931789,
		-0.984438, 0.104854, -0.141024,
		0.052306, 0.940947, 0.334488,
		31.867668, 43.849068, 13.063734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321991, 43.737785, 12.558826>,  <31.831055, 43.190407, 12.829593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321991, 43.737785, 12.558826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670881, 43.906773, 12.657407>,  <31.880215, 44.008167, 12.716556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670881, 43.906773, 12.657407>,  <31.321991, 43.737785, 12.558826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670881, 43.906773, 12.657407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069918, 0.391011, -0.917726,
		-0.484080, 0.817696, 0.311512,
		0.872226, 0.422472, 0.246452,
		31.932549, 44.033516, 12.731342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419329, 44.572266, 12.616925>,  <31.321991, 43.737785, 12.558826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419329, 44.572266, 12.616925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728281, 44.383778, 12.446569>,  <31.913652, 44.270687, 12.344356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728281, 44.383778, 12.446569>,  <31.419329, 44.572266, 12.616925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728281, 44.383778, 12.446569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060257, 0.613140, -0.787673,
		0.632294, 0.634047, 0.445184,
		0.772382, -0.471216, -0.425890,
		31.959995, 44.242413, 12.318802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899944, 45.028049, 12.538966>,  <31.419329, 44.572266, 12.616925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899944, 45.028049, 12.538966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960411, 44.756798, 12.251274>,  <31.996691, 44.594048, 12.078659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960411, 44.756798, 12.251274>,  <31.899944, 45.028049, 12.538966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960411, 44.756798, 12.251274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273425, 0.727890, -0.628820,
		0.949940, -0.101598, 0.295451,
		0.151169, -0.678126, -0.719231,
		32.005760, 44.553360, 12.035504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785671, 45.105991, 13.335239>,  <31.899944, 45.028049, 12.538966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785671, 45.105991, 13.335239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770239, 44.716118, 13.247152>,  <31.760979, 44.482193, 13.194300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770239, 44.716118, 13.247152>,  <31.785671, 45.105991, 13.335239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770239, 44.716118, 13.247152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273663, -0.201650, 0.940450,
		-0.961051, 0.096549, -0.258956,
		-0.038581, -0.974688, -0.220218,
		31.758665, 44.423710, 13.181087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115103, 44.826492, 13.640812>,  <31.785671, 45.105991, 13.335239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115103, 44.826492, 13.640812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369442, 44.524235, 13.577938>,  <31.522045, 44.342880, 13.540214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369442, 44.524235, 13.577938>,  <31.115103, 44.826492, 13.640812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369442, 44.524235, 13.577938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079281, -0.266524, 0.960562,
		-0.767732, -0.598310, -0.229377,
		0.635848, -0.755639, -0.157185,
		31.560196, 44.297543, 13.530783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872492, 44.276417, 14.084390>,  <31.115103, 44.826492, 13.640812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872492, 44.276417, 14.084390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252684, 44.175537, 14.011743>,  <31.480799, 44.115009, 13.968154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252684, 44.175537, 14.011743>,  <30.872492, 44.276417, 14.084390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252684, 44.175537, 14.011743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106160, -0.285765, 0.952401,
		-0.292124, -0.924510, -0.244835,
		0.950470, -0.252228, -0.181625,
		31.537827, 44.099876, 13.957257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022167, 43.625275, 14.263675>,  <30.872492, 44.276417, 14.084390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022167, 43.625275, 14.263675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389616, 43.781261, 14.289166>,  <31.610085, 43.874855, 14.304461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389616, 43.781261, 14.289166>,  <31.022167, 43.625275, 14.263675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389616, 43.781261, 14.289166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137213, -0.466062, 0.874047,
		0.370554, -0.794172, -0.481643,
		0.918620, 0.389969, 0.063730,
		31.665201, 43.898251, 14.308286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280163, 43.039379, 14.559621>,  <31.022167, 43.625275, 14.263675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280163, 43.039379, 14.559621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544744, 43.337921, 14.589116>,  <31.703493, 43.517044, 14.606813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544744, 43.337921, 14.589116>,  <31.280163, 43.039379, 14.559621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544744, 43.337921, 14.589116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319798, -0.369614, 0.872419,
		0.678386, -0.553484, -0.483164,
		0.661454, 0.746352, 0.073738,
		31.743181, 43.561829, 14.611238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758009, 42.698624, 14.845821>,  <31.280163, 43.039379, 14.559621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758009, 42.698624, 14.845821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909964, 43.064148, 14.903286>,  <32.001137, 43.283463, 14.937764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909964, 43.064148, 14.903286>,  <31.758009, 42.698624, 14.845821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909964, 43.064148, 14.903286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489974, -0.330507, 0.806654,
		0.784608, -0.236049, -0.573298,
		0.379888, 0.913809, 0.143661,
		32.023930, 43.338291, 14.946384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460983, 42.513268, 15.091161>,  <31.758009, 42.698624, 14.845821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460983, 42.513268, 15.091161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364738, 42.890045, 15.184846>,  <32.306992, 43.116112, 15.241057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364738, 42.890045, 15.184846>,  <32.460983, 42.513268, 15.091161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364738, 42.890045, 15.184846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299999, -0.157318, 0.940878,
		0.923097, 0.296647, -0.244730,
		-0.240608, 0.941940, 0.234214,
		32.292557, 43.172626, 15.255110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987869, 42.705528, 15.554074>,  <32.460983, 42.513268, 15.091161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987869, 42.705528, 15.554074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670532, 42.937332, 15.628662>,  <32.480129, 43.076416, 15.673414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670532, 42.937332, 15.628662>,  <32.987869, 42.705528, 15.554074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670532, 42.937332, 15.628662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096111, -0.183231, 0.978360,
		0.601140, 0.794097, 0.089667,
		-0.793343, 0.579513, 0.186469,
		32.432529, 43.111187, 15.684603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177433, 43.192860, 15.947757>,  <32.987869, 42.705528, 15.554074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177433, 43.192860, 15.947757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785069, 43.217358, 16.021570>,  <32.549648, 43.232056, 16.065859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785069, 43.217358, 16.021570>,  <33.177433, 43.192860, 15.947757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785069, 43.217358, 16.021570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179767, -0.075927, 0.980775,
		0.074079, 0.995230, 0.063469,
		-0.980916, 0.061246, 0.184534,
		32.490795, 43.235733, 16.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086582, 43.774879, 16.491711>,  <33.177433, 43.192860, 15.947757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086582, 43.774879, 16.491711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765602, 43.536255, 16.497375>,  <32.573013, 43.393082, 16.500774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765602, 43.536255, 16.497375>,  <33.086582, 43.774879, 16.491711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765602, 43.536255, 16.497375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127478, -0.148190, 0.980709,
		-0.582950, 0.788771, 0.194962,
		-0.802446, -0.596557, 0.014164,
		32.524868, 43.357288, 16.501625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731026, 43.887867, 17.142038>,  <33.086582, 43.774879, 16.491711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731026, 43.887867, 17.142038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569881, 43.545448, 17.012495>,  <32.473194, 43.339996, 16.934769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569881, 43.545448, 17.012495>,  <32.731026, 43.887867, 17.142038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569881, 43.545448, 17.012495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165261, -0.279991, 0.945671,
		-0.900218, 0.434495, -0.028674,
		-0.402861, -0.856049, -0.323858,
		32.449024, 43.288635, 16.915339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040810, 43.838528, 17.512016>,  <32.731026, 43.887867, 17.142038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040810, 43.838528, 17.512016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150227, 43.473843, 17.389414>,  <32.215878, 43.255032, 17.315851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150227, 43.473843, 17.389414>,  <32.040810, 43.838528, 17.512016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150227, 43.473843, 17.389414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048236, -0.305258, 0.951047,
		-0.960649, -0.274940, -0.039524,
		0.273546, -0.911716, -0.306507,
		32.232292, 43.200329, 17.297462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553446, 43.296425, 17.839321>,  <32.040810, 43.838528, 17.512016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553446, 43.296425, 17.839321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875570, 43.088318, 17.725622>,  <32.068844, 42.963455, 17.657404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875570, 43.088318, 17.725622>,  <31.553446, 43.296425, 17.839321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875570, 43.088318, 17.725622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035559, -0.520981, 0.852827,
		-0.591784, -0.676685, -0.438052,
		0.805312, -0.520266, -0.284246,
		32.117165, 42.932240, 17.640348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367832, 42.544132, 17.913725>,  <31.553446, 43.296425, 17.839321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367832, 42.544132, 17.913725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767467, 42.553490, 17.899466>,  <32.007248, 42.559105, 17.890909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767467, 42.553490, 17.899466>,  <31.367832, 42.544132, 17.913725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767467, 42.553490, 17.899466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042360, -0.639539, 0.767591,
		-0.004844, -0.768403, -0.639948,
		0.999091, 0.023390, -0.035648,
		32.067196, 42.560505, 17.888771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611990, 41.859432, 17.894558>,  <31.367832, 42.544132, 17.913725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611990, 41.859432, 17.894558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926567, 42.069798, 18.024130>,  <32.115314, 42.196014, 18.101873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926567, 42.069798, 18.024130>,  <31.611990, 41.859432, 17.894558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926567, 42.069798, 18.024130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128909, -0.652642, 0.746620,
		0.604063, -0.545416, -0.581059,
		0.786442, 0.525909, 0.323928,
		32.162498, 42.227570, 18.121307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111271, 41.507038, 18.065073>,  <31.611990, 41.859432, 17.894558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111271, 41.507038, 18.065073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265381, 41.811951, 18.273109>,  <32.357845, 41.994900, 18.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265381, 41.811951, 18.273109>,  <32.111271, 41.507038, 18.065073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265381, 41.811951, 18.273109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083615, -0.590117, 0.802976,
		0.919007, -0.265877, -0.291093,
		0.385272, 0.762281, 0.520090,
		32.380962, 42.040634, 18.429136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798489, 41.364475, 18.308825>,  <32.111271, 41.507038, 18.065073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798489, 41.364475, 18.308825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664055, 41.639091, 18.566725>,  <32.583397, 41.803864, 18.721466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664055, 41.639091, 18.566725>,  <32.798489, 41.364475, 18.308825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664055, 41.639091, 18.566725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063214, -0.666585, 0.742743,
		0.939709, 0.290379, 0.180627,
		-0.336081, 0.686545, 0.644753,
		32.563232, 41.845055, 18.760151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258072, 41.353313, 18.877394>,  <32.798489, 41.364475, 18.308825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258072, 41.353313, 18.877394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916374, 41.512844, 19.010788>,  <32.711357, 41.608562, 19.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916374, 41.512844, 19.010788>,  <33.258072, 41.353313, 18.877394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916374, 41.512844, 19.010788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061928, -0.558842, 0.826959,
		0.516178, 0.727073, 0.452687,
		-0.854240, 0.398824, 0.333488,
		32.660103, 41.632492, 19.110834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282524, 41.112038, 19.568216>,  <33.258072, 41.353313, 18.877394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282524, 41.112038, 19.568216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914780, 41.269005, 19.557013>,  <32.694134, 41.363186, 19.550291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914780, 41.269005, 19.557013>,  <33.282524, 41.112038, 19.568216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914780, 41.269005, 19.557013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176933, -0.348829, 0.920333,
		0.351386, 0.851073, 0.390131,
		-0.919360, 0.392419, -0.028010,
		32.638973, 41.386730, 19.548609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204712, 41.452194, 20.224564>,  <33.282524, 41.112038, 19.568216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204712, 41.452194, 20.224564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837784, 41.357994, 20.096153>,  <32.617626, 41.301476, 20.019108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837784, 41.357994, 20.096153>,  <33.204712, 41.452194, 20.224564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837784, 41.357994, 20.096153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239342, -0.318169, 0.917324,
		-0.318169, 0.918318, 0.235499,
		-0.917324, -0.235499, -0.321024,
		32.562588, 41.287346, 19.999846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756611, 41.673656, 20.763020>,  <33.204712, 41.452194, 20.224564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756611, 41.673656, 20.763020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535812, 41.425526, 20.540129>,  <32.403332, 41.276649, 20.406395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535812, 41.425526, 20.540129>,  <32.756611, 41.673656, 20.763020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535812, 41.425526, 20.540129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448789, -0.342198, 0.825523,
		-0.702773, 0.705761, -0.089503,
		-0.551995, -0.620323, -0.557226,
		32.370213, 41.239429, 20.372961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129799, 41.755878, 20.946999>,  <32.756611, 41.673656, 20.763020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129799, 41.755878, 20.946999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105450, 41.393265, 20.779911>,  <32.090839, 41.175697, 20.679659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105450, 41.393265, 20.779911>,  <32.129799, 41.755878, 20.946999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105450, 41.393265, 20.779911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485536, -0.338752, 0.805917,
		-0.872095, 0.251876, -0.419534,
		-0.060873, -0.906535, -0.417719,
		32.087189, 41.121304, 20.654594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508707, 41.575413, 21.236288>,  <32.129799, 41.755878, 20.946999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508707, 41.575413, 21.236288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686480, 41.240772, 21.108177>,  <31.793144, 41.039989, 21.031311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686480, 41.240772, 21.108177>,  <31.508707, 41.575413, 21.236288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686480, 41.240772, 21.108177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439848, -0.515256, 0.735558,
		-0.780393, -0.186033, -0.596974,
		0.444432, -0.836602, -0.320276,
		31.819809, 40.989792, 21.012094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962368, 41.187576, 21.174631>,  <31.508707, 41.575413, 21.236288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962368, 41.187576, 21.174631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261698, 40.922245, 21.175888>,  <31.441296, 40.763046, 21.176641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261698, 40.922245, 21.175888>,  <30.962368, 41.187576, 21.174631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261698, 40.922245, 21.175888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509177, -0.571373, 0.643640,
		-0.425148, -0.483252, -0.765322,
		0.748324, -0.663326, 0.003143,
		31.486195, 40.723248, 21.176830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656605, 40.438755, 21.116262>,  <30.962368, 41.187576, 21.174631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656605, 40.438755, 21.116262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005245, 40.443722, 21.312286>,  <31.214430, 40.446701, 21.429901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005245, 40.443722, 21.312286>,  <30.656605, 40.438755, 21.116262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005245, 40.443722, 21.312286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405520, -0.543429, 0.735009,
		0.275441, -0.839363, -0.468617,
		0.871600, 0.012418, 0.490061,
		31.266726, 40.447449, 21.459305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770388, 39.697567, 21.254919>,  <30.656605, 40.438755, 21.116262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770388, 39.697567, 21.254919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992979, 39.899536, 21.518852>,  <31.126534, 40.020718, 21.677212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992979, 39.899536, 21.518852>,  <30.770388, 39.697567, 21.254919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992979, 39.899536, 21.518852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197044, -0.691298, 0.695184,
		0.807158, -0.516872, -0.285201,
		0.556480, 0.504926, 0.659833,
		31.159924, 40.051014, 21.716803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910173, 39.163406, 21.751528>,  <30.770388, 39.697567, 21.254919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910173, 39.163406, 21.751528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050724, 39.487267, 21.939573>,  <31.135056, 39.681583, 22.052401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050724, 39.487267, 21.939573>,  <30.910173, 39.163406, 21.751528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050724, 39.487267, 21.939573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008304, -0.499417, 0.866322,
		0.936197, -0.308310, -0.168761,
		0.351378, 0.809646, 0.470113,
		31.156137, 39.730160, 22.080606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511900, 38.948051, 22.160273>,  <30.910173, 39.163406, 21.751528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511900, 38.948051, 22.160273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357962, 39.282394, 22.316854>,  <31.265598, 39.483002, 22.410805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357962, 39.282394, 22.316854>,  <31.511900, 38.948051, 22.160273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357962, 39.282394, 22.316854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042977, -0.407434, 0.912223,
		0.921981, 0.367887, 0.120876,
		-0.384843, 0.835857, 0.391457,
		31.242508, 39.533150, 22.434292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910433, 39.228619, 22.794405>,  <31.511900, 38.948051, 22.160273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910433, 39.228619, 22.794405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558687, 39.411785, 22.846609>,  <31.347639, 39.521683, 22.877932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558687, 39.411785, 22.846609>,  <31.910433, 39.228619, 22.794405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558687, 39.411785, 22.846609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042709, -0.348844, 0.936207,
		0.474228, 0.817694, 0.326319,
		-0.879366, 0.457912, 0.130509,
		31.294878, 39.549160, 22.885761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941616, 39.587711, 23.473372>,  <31.910433, 39.228619, 22.794405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941616, 39.587711, 23.473372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555010, 39.516502, 23.399450>,  <31.323046, 39.473778, 23.355099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555010, 39.516502, 23.399450>,  <31.941616, 39.587711, 23.473372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555010, 39.516502, 23.399450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129144, -0.284854, 0.949831,
		-0.221732, 0.941895, 0.252327,
		-0.966518, -0.178022, -0.184801,
		31.265055, 39.463097, 23.344009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666771, 39.800892, 24.102840>,  <31.941616, 39.587711, 23.473372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666771, 39.800892, 24.102840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377146, 39.604794, 23.908773>,  <31.203371, 39.487133, 23.792334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377146, 39.604794, 23.908773>,  <31.666771, 39.800892, 24.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377146, 39.604794, 23.908773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455284, -0.188682, 0.870124,
		-0.518119, 0.850915, -0.086585,
		-0.724064, -0.490248, -0.485168,
		31.159927, 39.457718, 23.763224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025959, 40.060936, 24.395992>,  <31.666771, 39.800892, 24.102840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025959, 40.060936, 24.395992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922327, 39.716560, 24.220879>,  <30.860147, 39.509933, 24.115810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922327, 39.716560, 24.220879>,  <31.025959, 40.060936, 24.395992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922327, 39.716560, 24.220879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533208, -0.250439, 0.808065,
		-0.805336, 0.442785, -0.394177,
		-0.259082, -0.860943, -0.437784,
		30.844603, 39.458279, 24.089544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237354, 39.944550, 24.310032>,  <31.025959, 40.060936, 24.395992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237354, 39.944550, 24.310032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430447, 39.595623, 24.341122>,  <30.546303, 39.386269, 24.359776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430447, 39.595623, 24.341122>,  <30.237354, 39.944550, 24.310032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430447, 39.595623, 24.341122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600850, -0.265319, 0.754046,
		-0.637142, -0.410703, -0.652206,
		0.482732, -0.872313, 0.077725,
		30.575266, 39.333931, 24.364439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710051, 39.637764, 24.488285>,  <30.237354, 39.944550, 24.310032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710051, 39.637764, 24.488285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002321, 39.381851, 24.583609>,  <30.177683, 39.228302, 24.640802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002321, 39.381851, 24.583609>,  <29.710051, 39.637764, 24.488285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002321, 39.381851, 24.583609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534741, -0.319294, 0.782370,
		-0.424459, -0.699091, -0.575419,
		0.730676, -0.639784, 0.238305,
		30.221525, 39.189919, 24.655100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374933, 38.922874, 24.675640>,  <29.710051, 39.637764, 24.488285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374933, 38.922874, 24.675640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744900, 38.882122, 24.822147>,  <29.966879, 38.857670, 24.910051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744900, 38.882122, 24.822147>,  <29.374933, 38.922874, 24.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744900, 38.882122, 24.822147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364453, -0.511796, 0.777971,
		0.108195, -0.853045, -0.510498,
		0.924915, -0.101880, 0.366268,
		30.022375, 38.851559, 24.932028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445095, 38.220211, 24.799706>,  <29.374933, 38.922874, 24.675640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445095, 38.220211, 24.799706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699211, 38.437977, 25.018803>,  <29.851681, 38.568634, 25.150261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699211, 38.437977, 25.018803>,  <29.445095, 38.220211, 24.799706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699211, 38.437977, 25.018803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337273, -0.442462, 0.830948,
		0.694734, -0.712631, -0.097476,
		0.635289, 0.544411, 0.547745,
		29.889797, 38.601299, 25.183126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767496, 37.696136, 25.288073>,  <29.445095, 38.220211, 24.799706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767496, 37.696136, 25.288073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843668, 38.050125, 25.458042>,  <29.889372, 38.262520, 25.560024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843668, 38.050125, 25.458042>,  <29.767496, 37.696136, 25.288073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843668, 38.050125, 25.458042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234840, -0.379212, 0.895013,
		0.953198, -0.270228, 0.135613,
		0.190431, 0.884972, 0.424925,
		29.900797, 38.315617, 25.585520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166134, 37.488121, 25.834108>,  <29.767496, 37.696136, 25.288073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166134, 37.488121, 25.834108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038265, 37.853161, 25.936064>,  <29.961544, 38.072186, 25.997238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038265, 37.853161, 25.936064>,  <30.166134, 37.488121, 25.834108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038265, 37.853161, 25.936064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212973, -0.331325, 0.919166,
		0.923283, 0.239548, 0.300275,
		-0.319673, 0.912601, 0.254889,
		29.942364, 38.126942, 26.012531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433525, 37.545227, 26.490467>,  <30.166134, 37.488121, 25.834108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433525, 37.545227, 26.490467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170355, 37.846451, 26.487932>,  <30.012453, 38.027184, 26.486412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170355, 37.846451, 26.487932>,  <30.433525, 37.545227, 26.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170355, 37.846451, 26.487932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185355, -0.153771, 0.970566,
		0.729918, 0.639733, 0.240753,
		-0.657924, 0.753058, -0.006338,
		29.972979, 38.072369, 26.486031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493473, 38.124561, 27.106281>,  <30.433525, 37.545227, 26.490467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493473, 38.124561, 27.106281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110579, 38.113365, 26.991104>,  <29.880842, 38.106647, 26.921997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110579, 38.113365, 26.991104>,  <30.493473, 38.124561, 27.106281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110579, 38.113365, 26.991104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264794, -0.316138, 0.911011,
		-0.116532, 0.948300, 0.295207,
		-0.957238, -0.027993, -0.287945,
		29.823406, 38.104969, 26.904720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153343, 38.445328, 27.710678>,  <30.493473, 38.124561, 27.106281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153343, 38.445328, 27.710678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880074, 38.246086, 27.497072>,  <29.716112, 38.126541, 27.368908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880074, 38.246086, 27.497072>,  <30.153343, 38.445328, 27.710678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880074, 38.246086, 27.497072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299706, -0.475599, 0.827032,
		-0.665922, 0.725052, 0.175632,
		-0.683172, -0.498101, -0.534015,
		29.675121, 38.096657, 27.336868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087053, 39.141262, 27.328583>,  <30.153343, 38.445328, 27.710678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087053, 39.141262, 27.328583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264753, 39.354012, 27.616959>,  <30.371374, 39.481663, 27.789984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264753, 39.354012, 27.616959>,  <30.087053, 39.141262, 27.328583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264753, 39.354012, 27.616959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181680, 0.734501, -0.653835,
		-0.877288, 0.421446, 0.229671,
		0.444250, 0.531875, 0.720938,
		30.398027, 39.513573, 27.833241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842377, 39.833775, 27.205341>,  <30.087053, 39.141262, 27.328583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842377, 39.833775, 27.205341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206978, 39.810780, 27.368242>,  <30.425739, 39.796982, 27.465982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206978, 39.810780, 27.368242>,  <29.842377, 39.833775, 27.205341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206978, 39.810780, 27.368242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369519, 0.549257, -0.749515,
		-0.180598, 0.833674, 0.521893,
		0.911504, -0.057488, 0.407253,
		30.480429, 39.793533, 27.490417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111944, 40.471786, 27.231352>,  <29.842377, 39.833775, 27.205341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111944, 40.471786, 27.231352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454741, 40.273426, 27.287428>,  <30.660418, 40.154411, 27.321074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454741, 40.273426, 27.287428>,  <30.111944, 40.471786, 27.231352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454741, 40.273426, 27.287428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461980, 0.618747, -0.635395,
		0.228347, 0.609293, 0.759355,
		0.856990, -0.495897, 0.140192,
		30.711838, 40.124657, 27.329485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572245, 41.011509, 27.187408>,  <30.111944, 40.471786, 27.231352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572245, 41.011509, 27.187408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762812, 40.665009, 27.127234>,  <30.877151, 40.457108, 27.091129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762812, 40.665009, 27.127234>,  <30.572245, 41.011509, 27.187408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762812, 40.665009, 27.127234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624670, 0.453903, -0.635421,
		0.618718, 0.208754, 0.757370,
		0.476419, -0.866253, -0.150435,
		30.905737, 40.405132, 27.082104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229248, 41.181084, 27.385702>,  <30.572245, 41.011509, 27.187408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229248, 41.181084, 27.385702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290926, 40.879341, 27.130461>,  <31.327932, 40.698296, 26.977316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290926, 40.879341, 27.130461>,  <31.229248, 41.181084, 27.385702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290926, 40.879341, 27.130461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537750, 0.605867, -0.586302,
		0.828884, -0.252735, 0.499074,
		0.154194, -0.754354, -0.638102,
		31.337185, 40.653034, 26.939030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000519, 41.116051, 27.268234>,  <31.229248, 41.181084, 27.385702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000519, 41.116051, 27.268234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812592, 40.911629, 26.980318>,  <31.699835, 40.788975, 26.807568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812592, 40.911629, 26.980318>,  <32.000519, 41.116051, 27.268234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812592, 40.911629, 26.980318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544780, 0.473740, -0.691943,
		0.694613, -0.717213, 0.055841,
		-0.469816, -0.511054, -0.719790,
		31.671646, 40.758312, 26.764381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609428, 40.883919, 26.800634>,  <32.000519, 41.116051, 27.268234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609428, 40.883919, 26.800634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254242, 40.892982, 26.616892>,  <32.041130, 40.898422, 26.506647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254242, 40.892982, 26.616892>,  <32.609428, 40.883919, 26.800634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254242, 40.892982, 26.616892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425013, 0.422087, -0.800753,
		0.175742, -0.906272, -0.384430,
		-0.887963, 0.022662, -0.459356,
		31.987852, 40.899780, 26.479086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718174, 40.557728, 26.145365>,  <32.609428, 40.883919, 26.800634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718174, 40.557728, 26.145365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384693, 40.770683, 26.086712>,  <32.184605, 40.898457, 26.051519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384693, 40.770683, 26.086712>,  <32.718174, 40.557728, 26.145365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384693, 40.770683, 26.086712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393288, 0.386053, -0.834439,
		-0.387638, -0.753343, -0.531236,
		-0.833703, 0.532389, -0.146632,
		32.134583, 40.930401, 26.042723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600216, 40.506138, 25.438581>,  <32.718174, 40.557728, 26.145365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600216, 40.506138, 25.438581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392078, 40.828426, 25.551764>,  <32.267197, 41.021797, 25.619673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392078, 40.828426, 25.551764>,  <32.600216, 40.506138, 25.438581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392078, 40.828426, 25.551764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247855, 0.459577, -0.852852,
		-0.817200, -0.373640, -0.438838,
		-0.520339, 0.805718, 0.282958,
		32.235977, 41.070141, 25.636650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118687, 40.707432, 24.931980>,  <32.600216, 40.506138, 25.438581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118687, 40.707432, 24.931980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180843, 41.056416, 25.117310>,  <32.218136, 41.265804, 25.228508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180843, 41.056416, 25.117310>,  <32.118687, 40.707432, 24.931980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180843, 41.056416, 25.117310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068559, 0.458365, -0.886116,
		-0.985471, 0.169460, 0.011411,
		0.155392, 0.872459, 0.463323,
		32.227463, 41.318153, 25.256306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991358, 41.100414, 24.366331>,  <32.118687, 40.707432, 24.931980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991358, 41.100414, 24.366331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121281, 41.369949, 24.631794>,  <32.199234, 41.531670, 24.791071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121281, 41.369949, 24.631794>,  <31.991358, 41.100414, 24.366331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121281, 41.369949, 24.631794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181388, 0.644293, -0.742956,
		-0.928223, 0.361698, 0.087046,
		0.324809, 0.673840, 0.663656,
		32.218723, 41.572102, 24.830891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674778, 41.790653, 24.167837>,  <31.991358, 41.100414, 24.366331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674778, 41.790653, 24.167837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000629, 41.843285, 24.393782>,  <32.196140, 41.874863, 24.529348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000629, 41.843285, 24.393782>,  <31.674778, 41.790653, 24.167837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000629, 41.843285, 24.393782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324424, 0.703925, -0.631853,
		-0.480761, 0.697979, 0.530749,
		0.814628, 0.131582, 0.564861,
		32.245018, 41.882759, 24.563240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760839, 42.465530, 24.275805>,  <31.674778, 41.790653, 24.167837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760839, 42.465530, 24.275805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117870, 42.285751, 24.290222>,  <32.332088, 42.177883, 24.298874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117870, 42.285751, 24.290222>,  <31.760839, 42.465530, 24.275805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117870, 42.285751, 24.290222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329024, 0.594584, -0.733631,
		0.308297, 0.666683, 0.678592,
		0.892578, -0.449449, 0.036046,
		32.385643, 42.150917, 24.301037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288429, 42.958469, 24.512711>,  <31.760839, 42.465530, 24.275805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288429, 42.958469, 24.512711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458981, 42.658680, 24.310133>,  <32.561314, 42.478806, 24.188587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458981, 42.658680, 24.310133>,  <32.288429, 42.958469, 24.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458981, 42.658680, 24.310133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427149, 0.660360, -0.617631,
		0.797334, 0.047020, 0.601703,
		0.426381, -0.749476, -0.506443,
		32.586895, 42.433838, 24.158199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044266, 43.173306, 24.367071>,  <32.288429, 42.958469, 24.512711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044266, 43.173306, 24.367071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953667, 42.881802, 24.108582>,  <32.899307, 42.706898, 23.953487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953667, 42.881802, 24.108582>,  <33.044266, 43.173306, 24.367071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953667, 42.881802, 24.108582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433265, 0.518829, -0.736952,
		0.872342, -0.446905, 0.198232,
		-0.226499, -0.728761, -0.646224,
		32.885715, 42.663174, 23.914715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642750, 43.162167, 23.883018>,  <33.044266, 43.173306, 24.367071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642750, 43.162167, 23.883018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349716, 42.974545, 23.685711>,  <33.173897, 42.861973, 23.567327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349716, 42.974545, 23.685711>,  <33.642750, 43.162167, 23.883018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349716, 42.974545, 23.685711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348974, 0.363371, -0.863816,
		0.584418, -0.804952, -0.102509,
		-0.732579, -0.469057, -0.493268,
		33.129944, 42.833828, 23.537731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993534, 42.782738, 23.388485>,  <33.642750, 43.162167, 23.883018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993534, 42.782738, 23.388485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615993, 42.818443, 23.261251>,  <33.389469, 42.839867, 23.184912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615993, 42.818443, 23.261251>,  <33.993534, 42.782738, 23.388485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615993, 42.818443, 23.261251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329578, 0.187795, -0.925263,
		-0.022856, -0.978144, -0.206669,
		-0.943852, 0.089261, -0.318082,
		33.332836, 42.845222, 23.165827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874866, 42.379128, 22.853092>,  <33.993534, 42.782738, 23.388485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874866, 42.379128, 22.853092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589882, 42.652325, 22.788696>,  <33.418892, 42.816242, 22.750059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589882, 42.652325, 22.788696>,  <33.874866, 42.379128, 22.853092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589882, 42.652325, 22.788696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315354, 0.106693, -0.942957,
		-0.626857, -0.722590, -0.291400,
		-0.712462, 0.682994, -0.160990,
		33.376144, 42.857224, 22.740398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603367, 42.232750, 22.215506>,  <33.874866, 42.379128, 22.853092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603367, 42.232750, 22.215506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510178, 42.617149, 22.275106>,  <33.454262, 42.847790, 22.310867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510178, 42.617149, 22.275106>,  <33.603367, 42.232750, 22.215506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510178, 42.617149, 22.275106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262053, 0.209589, -0.942019,
		-0.936509, -0.180422, -0.300662,
		-0.232976, 0.961000, 0.149002,
		33.440285, 42.905449, 22.319807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331242, 42.328217, 21.559147>,  <33.603367, 42.232750, 22.215506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331242, 42.328217, 21.559147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381817, 42.696091, 21.707840>,  <33.412163, 42.916817, 21.797056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381817, 42.696091, 21.707840>,  <33.331242, 42.328217, 21.559147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381817, 42.696091, 21.707840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287832, 0.324606, -0.900990,
		-0.949298, 0.220914, -0.223674,
		0.126436, 0.919689, 0.371734,
		33.419746, 42.971996, 21.819361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999496, 42.837254, 21.036854>,  <33.331242, 42.328217, 21.559147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999496, 42.837254, 21.036854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218498, 43.085899, 21.260937>,  <33.349899, 43.235088, 21.395386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218498, 43.085899, 21.260937>,  <32.999496, 42.837254, 21.036854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218498, 43.085899, 21.260937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214858, 0.542589, -0.812055,
		-0.808751, 0.564967, 0.163509,
		0.547502, 0.621619, 0.560207,
		33.382748, 43.272385, 21.428999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777649, 43.537899, 20.884790>,  <32.999496, 42.837254, 21.036854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777649, 43.537899, 20.884790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161739, 43.540150, 20.996454>,  <33.392193, 43.541500, 21.063452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161739, 43.540150, 20.996454>,  <32.777649, 43.537899, 20.884790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161739, 43.540150, 20.996454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251370, 0.417826, -0.873060,
		-0.121551, 0.908509, 0.399795,
		0.960228, 0.005625, 0.279159,
		33.449806, 43.541836, 21.080202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081844, 44.058914, 20.551405>,  <32.777649, 43.537899, 20.884790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081844, 44.058914, 20.551405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419064, 43.864166, 20.642822>,  <33.621395, 43.747318, 20.697672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419064, 43.864166, 20.642822>,  <33.081844, 44.058914, 20.551405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419064, 43.864166, 20.642822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357254, 0.189273, -0.914629,
		0.402046, 0.852722, 0.333501,
		0.843047, -0.486868, 0.228542,
		33.671978, 43.718105, 20.711386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498310, 44.471954, 20.167162>,  <33.081844, 44.058914, 20.551405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498310, 44.471954, 20.167162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685776, 44.128086, 20.248482>,  <33.798256, 43.921764, 20.297274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685776, 44.128086, 20.248482>,  <33.498310, 44.471954, 20.167162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685776, 44.128086, 20.248482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581598, 0.127049, -0.803494,
		0.664908, 0.494805, 0.559523,
		0.468660, -0.859666, 0.203302,
		33.826374, 43.870186, 20.309473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226082, 44.580864, 20.195421>,  <33.498310, 44.471954, 20.167162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226082, 44.580864, 20.195421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173595, 44.195137, 20.103449>,  <34.142105, 43.963699, 20.048265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173595, 44.195137, 20.103449>,  <34.226082, 44.580864, 20.195421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173595, 44.195137, 20.103449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467133, 0.144431, -0.872311,
		0.874397, -0.221867, 0.431515,
		-0.131213, -0.964321, -0.229931,
		34.134232, 43.905842, 20.034470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876682, 44.431499, 19.777334>,  <34.226082, 44.580864, 20.195421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876682, 44.431499, 19.777334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646011, 44.117146, 19.688047>,  <34.507610, 43.928532, 19.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646011, 44.117146, 19.688047>,  <34.876682, 44.431499, 19.777334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646011, 44.117146, 19.688047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369011, -0.006799, -0.929400,
		0.728885, -0.618333, 0.293922,
		-0.576677, -0.785887, -0.223216,
		34.473007, 43.881378, 19.621082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353062, 44.011368, 19.416468>,  <34.876682, 44.431499, 19.777334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353062, 44.011368, 19.416468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992275, 43.867245, 19.321283>,  <34.775803, 43.780769, 19.264172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992275, 43.867245, 19.321283>,  <35.353062, 44.011368, 19.416468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992275, 43.867245, 19.321283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300209, -0.127170, -0.945358,
		0.310362, -0.924123, 0.222872,
		-0.901970, -0.360312, -0.237962,
		34.721684, 43.759151, 19.249895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428070, 43.503578, 18.956686>,  <35.353062, 44.011368, 19.416468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428070, 43.503578, 18.956686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052246, 43.632210, 18.909674>,  <34.826752, 43.709389, 18.881466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052246, 43.632210, 18.909674>,  <35.428070, 43.503578, 18.956686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052246, 43.632210, 18.909674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090950, -0.096517, -0.991167,
		-0.330084, -0.941950, 0.061435,
		-0.939559, 0.321581, -0.117529,
		34.770378, 43.728683, 18.874414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021015, 42.973412, 18.552580>,  <35.428070, 43.503578, 18.956686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021015, 42.973412, 18.552580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848003, 43.328568, 18.489876>,  <34.744198, 43.541660, 18.452253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848003, 43.328568, 18.489876>,  <35.021015, 42.973412, 18.552580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848003, 43.328568, 18.489876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093263, -0.216991, -0.971708,
		-0.896784, -0.405672, 0.176662,
		-0.432528, 0.887888, -0.156760,
		34.718246, 43.594933, 18.442848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399773, 42.892555, 18.226089>,  <35.021015, 42.973412, 18.552580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399773, 42.892555, 18.226089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451492, 43.279305, 18.138062>,  <34.482525, 43.511356, 18.085245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451492, 43.279305, 18.138062>,  <34.399773, 42.892555, 18.226089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451492, 43.279305, 18.138062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237975, -0.185189, -0.953453,
		-0.962626, 0.175654, 0.206147,
		0.129302, 0.966877, -0.220069,
		34.490284, 43.569366, 18.072041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966812, 42.961826, 17.830589>,  <34.399773, 42.892555, 18.226089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966812, 42.961826, 17.830589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195404, 43.278622, 17.744644>,  <34.332558, 43.468700, 17.693077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195404, 43.278622, 17.744644>,  <33.966812, 42.961826, 17.830589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195404, 43.278622, 17.744644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078838, -0.207631, -0.975025,
		-0.816821, 0.574146, -0.056218,
		0.571479, 0.791989, -0.214861,
		34.366848, 43.516220, 17.680185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655979, 43.226585, 17.242373>,  <33.966812, 42.961826, 17.830589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655979, 43.226585, 17.242373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027878, 43.373859, 17.243446>,  <34.251019, 43.462223, 17.244091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027878, 43.373859, 17.243446>,  <33.655979, 43.226585, 17.242373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027878, 43.373859, 17.243446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015161, 0.045567, -0.998846,
		-0.367887, 0.928633, 0.047948,
		0.929747, 0.368190, 0.002685,
		34.306801, 43.484318, 17.244251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772469, 43.587112, 16.580801>,  <33.655979, 43.226585, 17.242373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772469, 43.587112, 16.580801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155441, 43.607067, 16.694529>,  <34.385223, 43.619041, 16.762764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155441, 43.607067, 16.694529>,  <33.772469, 43.587112, 16.580801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155441, 43.607067, 16.694529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281757, 0.052616, -0.958042,
		-0.062757, 0.997368, 0.036319,
		0.957431, 0.049891, 0.284318,
		34.442669, 43.622036, 16.779823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126469, 44.213974, 16.319996>,  <33.772469, 43.587112, 16.580801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126469, 44.213974, 16.319996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393345, 43.920216, 16.369841>,  <34.553471, 43.743961, 16.399748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393345, 43.920216, 16.369841>,  <34.126469, 44.213974, 16.319996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393345, 43.920216, 16.369841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367735, 0.179252, -0.912491,
		0.647788, 0.654628, 0.389657,
		0.667189, -0.734391, 0.124612,
		34.593502, 43.699898, 16.407225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720924, 44.432312, 15.949503>,  <34.126469, 44.213974, 16.319996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720924, 44.432312, 15.949503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799320, 44.043800, 16.003473>,  <34.846355, 43.810692, 16.035856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799320, 44.043800, 16.003473>,  <34.720924, 44.432312, 15.949503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799320, 44.043800, 16.003473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351700, -0.058817, -0.934263,
		0.915367, 0.230555, 0.330072,
		0.195985, -0.971280, 0.134926,
		34.858116, 43.752415, 16.043951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324692, 44.339806, 15.597118>,  <34.720924, 44.432312, 15.949503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324692, 44.339806, 15.597118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185368, 43.967247, 15.639396>,  <35.101772, 43.743710, 15.664762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185368, 43.967247, 15.639396>,  <35.324692, 44.339806, 15.597118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185368, 43.967247, 15.639396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297567, -0.216788, -0.929762,
		0.888894, -0.292396, 0.352664,
		-0.348312, -0.931401, 0.105694,
		35.080875, 43.687828, 15.671103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789867, 43.850147, 15.272708>,  <35.324692, 44.339806, 15.597118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789867, 43.850147, 15.272708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474571, 43.604549, 15.289129>,  <35.285393, 43.457191, 15.298982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474571, 43.604549, 15.289129>,  <35.789867, 43.850147, 15.272708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474571, 43.604549, 15.289129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157771, -0.266128, -0.950939,
		0.594794, -0.743094, 0.306644,
		-0.788243, -0.613992, 0.041053,
		35.238098, 43.420353, 15.301445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008045, 43.162224, 14.994081>,  <35.789867, 43.850147, 15.272708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008045, 43.162224, 14.994081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617207, 43.211018, 14.924340>,  <35.382702, 43.240292, 14.882495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617207, 43.211018, 14.924340>,  <36.008045, 43.162224, 14.994081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617207, 43.211018, 14.924340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157930, -0.133415, -0.978396,
		-0.142618, -0.983523, 0.111093,
		-0.977097, 0.121992, -0.174355,
		35.324078, 43.247612, 14.872034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622269, 43.559063, 15.359848>,  <36.008045, 43.162224, 14.994081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622269, 43.559063, 15.359848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891476, 43.269070, 15.301280>,  <37.053001, 43.095074, 15.266139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891476, 43.269070, 15.301280>,  <36.622269, 43.559063, 15.359848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891476, 43.269070, 15.301280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070077, -0.134571, 0.988423,
		-0.736298, -0.675488, -0.039764,
		0.673019, -0.724988, -0.146421,
		37.093380, 43.051575, 15.257354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399456, 42.938354, 15.706717>,  <36.622269, 43.559063, 15.359848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399456, 42.938354, 15.706717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788738, 42.860973, 15.657008>,  <37.022308, 42.814545, 15.627183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788738, 42.860973, 15.657008>,  <36.399456, 42.938354, 15.706717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788738, 42.860973, 15.657008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045517, -0.367682, 0.928837,
		-0.225380, -0.909607, -0.349025,
		0.973207, -0.193455, -0.124271,
		37.080700, 42.802937, 15.619727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530045, 42.254749, 15.857741>,  <36.399456, 42.938354, 15.706717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530045, 42.254749, 15.857741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870621, 42.456463, 15.915350>,  <37.074966, 42.577492, 15.949915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870621, 42.456463, 15.915350>,  <36.530045, 42.254749, 15.857741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870621, 42.456463, 15.915350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076533, -0.391150, 0.917139,
		0.518833, -0.769869, -0.371636,
		0.851443, 0.504285, 0.144021,
		37.126053, 42.607750, 15.958556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932632, 41.802792, 16.167679>,  <36.530045, 42.254749, 15.857741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932632, 41.802792, 16.167679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111759, 42.151699, 16.246275>,  <37.219234, 42.361042, 16.293432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111759, 42.151699, 16.246275>,  <36.932632, 41.802792, 16.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111759, 42.151699, 16.246275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015314, -0.212244, 0.977097,
		0.893996, -0.440566, -0.081687,
		0.447814, 0.872269, 0.196492,
		37.246105, 42.413380, 16.305223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463062, 41.654106, 16.636669>,  <36.932632, 41.802792, 16.167679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463062, 41.654106, 16.636669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397312, 42.045200, 16.688833>,  <37.357861, 42.279858, 16.720131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397312, 42.045200, 16.688833>,  <37.463062, 41.654106, 16.636669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397312, 42.045200, 16.688833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006274, -0.133240, 0.991064,
		0.986378, 0.162089, 0.028036,
		-0.164376, 0.977739, 0.130408,
		37.348000, 42.338524, 16.727955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922848, 41.738316, 17.132154>,  <37.463062, 41.654106, 16.636669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922848, 41.738316, 17.132154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700294, 42.069637, 17.158539>,  <37.566765, 42.268429, 17.174370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700294, 42.069637, 17.158539>,  <37.922848, 41.738316, 17.132154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700294, 42.069637, 17.158539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162948, -0.186603, 0.968828,
		0.814793, 0.528290, 0.238793,
		-0.556381, 0.828305, 0.065959,
		37.533379, 42.318130, 17.178326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183609, 42.144211, 17.657616>,  <37.922848, 41.738316, 17.132154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183609, 42.144211, 17.657616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805210, 42.262138, 17.603689>,  <37.578171, 42.332893, 17.571333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805210, 42.262138, 17.603689>,  <38.183609, 42.144211, 17.657616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805210, 42.262138, 17.603689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122410, 0.060228, 0.990650,
		0.300183, 0.953653, -0.020887,
		-0.945995, 0.294820, -0.134816,
		37.521412, 42.350586, 17.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082825, 42.718220, 18.264221>,  <38.183609, 42.144211, 17.657616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082825, 42.718220, 18.264221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739143, 42.565685, 18.127779>,  <37.532936, 42.474163, 18.045914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739143, 42.565685, 18.127779>,  <38.082825, 42.718220, 18.264221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739143, 42.565685, 18.127779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352987, -0.040799, 0.934738,
		-0.370371, 0.923534, -0.099554,
		-0.859201, -0.381341, -0.341106,
		37.481384, 42.451283, 18.025448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655067, 43.067554, 18.681101>,  <38.082825, 42.718220, 18.264221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655067, 43.067554, 18.681101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477570, 42.741119, 18.533001>,  <37.371071, 42.545258, 18.444141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477570, 42.741119, 18.533001>,  <37.655067, 43.067554, 18.681101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477570, 42.741119, 18.533001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360484, -0.215702, 0.907482,
		-0.820452, 0.536161, -0.198471,
		-0.443746, -0.816091, -0.370250,
		37.344444, 42.496292, 18.421926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846661, 43.090427, 18.907589>,  <37.655067, 43.067554, 18.681101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846661, 43.090427, 18.907589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952106, 42.710392, 18.840862>,  <37.015373, 42.482368, 18.800825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952106, 42.710392, 18.840862>,  <36.846661, 43.090427, 18.907589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952106, 42.710392, 18.840862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363615, -0.258053, 0.895094,
		-0.893470, -0.175306, -0.413496,
		0.263619, -0.950093, -0.166819,
		37.031193, 42.425365, 18.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319622, 42.700687, 19.116306>,  <36.846661, 43.090427, 18.907589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319622, 42.700687, 19.116306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611240, 42.426907, 19.117990>,  <36.786209, 42.262638, 19.119001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611240, 42.426907, 19.117990>,  <36.319622, 42.700687, 19.116306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611240, 42.426907, 19.117990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301895, -0.316025, 0.899437,
		-0.614294, -0.656999, -0.437029,
		0.729042, -0.684456, 0.004212,
		36.829952, 42.221569, 19.119255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044113, 42.024792, 19.295862>,  <36.319622, 42.700687, 19.116306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044113, 42.024792, 19.295862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430759, 41.994377, 19.393740>,  <36.662746, 41.976128, 19.452467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430759, 41.994377, 19.393740>,  <36.044113, 42.024792, 19.295862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430759, 41.994377, 19.393740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255229, -0.370291, 0.893164,
		0.022693, -0.925798, -0.377336,
		0.966614, -0.076038, 0.244694,
		36.720745, 41.971565, 19.467148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163486, 41.296291, 19.290642>,  <36.044113, 42.024792, 19.295862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163486, 41.296291, 19.290642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397121, 41.504528, 19.539742>,  <36.537304, 41.629471, 19.689201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397121, 41.504528, 19.539742>,  <36.163486, 41.296291, 19.290642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397121, 41.504528, 19.539742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388459, -0.494374, 0.777621,
		0.712698, -0.696114, -0.086529,
		0.584090, 0.520596, 0.622751,
		36.572350, 41.660706, 19.726566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212181, 40.895504, 19.985376>,  <36.163486, 41.296291, 19.290642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212181, 40.895504, 19.985376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356976, 41.254559, 20.085947>,  <36.443851, 41.469990, 20.146290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356976, 41.254559, 20.085947>,  <36.212181, 40.895504, 19.985376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356976, 41.254559, 20.085947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239143, -0.171270, 0.955760,
		0.900987, -0.406098, 0.152666,
		0.361986, 0.897636, 0.251428,
		36.465572, 41.523849, 20.161375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575455, 40.868191, 20.675156>,  <36.212181, 40.895504, 19.985376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575455, 40.868191, 20.675156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449097, 41.246014, 20.639322>,  <36.373280, 41.472706, 20.617823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449097, 41.246014, 20.639322>,  <36.575455, 40.868191, 20.675156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449097, 41.246014, 20.639322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295095, -0.008077, 0.955434,
		0.901736, 0.328256, 0.281285,
		-0.315899, 0.944554, -0.089583,
		36.354328, 41.529381, 20.612448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965504, 41.228024, 21.149441>,  <36.575455, 40.868191, 20.675156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965504, 41.228024, 21.149441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662132, 41.480846, 21.085827>,  <36.480110, 41.632542, 21.047659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662132, 41.480846, 21.085827>,  <36.965504, 41.228024, 21.149441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662132, 41.480846, 21.085827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111153, 0.114997, 0.987127,
		0.642210, 0.766341, -0.016962,
		-0.758427, 0.632058, -0.159033,
		36.434605, 41.670464, 21.038116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054379, 41.735600, 21.657448>,  <36.965504, 41.228024, 21.149441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054379, 41.735600, 21.657448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678371, 41.787415, 21.531218>,  <36.452766, 41.818504, 21.455481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678371, 41.787415, 21.531218>,  <37.054379, 41.735600, 21.657448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678371, 41.787415, 21.531218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303761, 0.103107, 0.947153,
		0.155233, 0.986199, -0.057573,
		-0.940017, 0.129541, -0.315574,
		36.396366, 41.826279, 21.436544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776318, 42.085945, 22.184851>,  <37.054379, 41.735600, 21.657448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776318, 42.085945, 22.184851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438568, 41.993454, 21.991535>,  <36.235920, 41.937958, 21.875546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438568, 41.993454, 21.991535>,  <36.776318, 42.085945, 22.184851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438568, 41.993454, 21.991535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531841, 0.252869, 0.808210,
		-0.064673, 0.939463, -0.336492,
		-0.844371, -0.231229, -0.483291,
		36.185257, 41.924084, 21.846548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294487, 42.465309, 22.414963>,  <36.776318, 42.085945, 22.184851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294487, 42.465309, 22.414963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065578, 42.173012, 22.266092>,  <35.928234, 41.997635, 22.176769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065578, 42.173012, 22.266092>,  <36.294487, 42.465309, 22.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065578, 42.173012, 22.266092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417791, -0.130727, 0.899089,
		-0.705658, 0.670017, -0.230487,
		-0.572274, -0.730744, -0.372176,
		35.893898, 41.953789, 22.154440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476864, 42.556656, 22.611187>,  <36.294487, 42.465309, 22.414963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476864, 42.556656, 22.611187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522499, 42.170895, 22.515764>,  <35.549881, 41.939438, 22.458509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522499, 42.170895, 22.515764>,  <35.476864, 42.556656, 22.611187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522499, 42.170895, 22.515764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438958, -0.264349, 0.858740,
		-0.891235, 0.006747, -0.453492,
		0.114086, -0.964403, -0.238559,
		35.556725, 41.881573, 22.444197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906387, 42.290287, 22.811413>,  <35.476864, 42.556656, 22.611187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906387, 42.290287, 22.811413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158344, 41.979816, 22.800255>,  <35.309521, 41.793533, 22.793560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158344, 41.979816, 22.800255>,  <34.906387, 42.290287, 22.811413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158344, 41.979816, 22.800255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348065, -0.314210, 0.883246,
		-0.694322, -0.546642, -0.468080,
		0.629895, -0.776179, -0.027896,
		35.347313, 41.746964, 22.791885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471992, 41.699467, 22.999409>,  <34.906387, 42.290287, 22.811413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471992, 41.699467, 22.999409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846863, 41.572983, 23.058338>,  <35.071785, 41.497093, 23.093697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846863, 41.572983, 23.058338>,  <34.471992, 41.699467, 22.999409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846863, 41.572983, 23.058338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268364, -0.383693, 0.883606,
		-0.222880, -0.867635, -0.444449,
		0.937180, -0.316212, 0.147325,
		35.128017, 41.478119, 23.102535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357147, 41.068943, 23.341095>,  <34.471992, 41.699467, 22.999409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357147, 41.068943, 23.341095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735104, 41.181580, 23.407898>,  <34.961876, 41.249161, 23.447981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735104, 41.181580, 23.407898>,  <34.357147, 41.068943, 23.341095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735104, 41.181580, 23.407898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096531, -0.247816, 0.963986,
		0.312840, -0.926980, -0.206975,
		0.944888, 0.281594, 0.167009,
		35.018570, 41.266056, 23.458000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646915, 40.492893, 23.677097>,  <34.357147, 41.068943, 23.341095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646915, 40.492893, 23.677097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867901, 40.812630, 23.771610>,  <35.000492, 41.004471, 23.828318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867901, 40.812630, 23.771610>,  <34.646915, 40.492893, 23.677097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867901, 40.812630, 23.771610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187068, -0.157337, 0.969665,
		0.812271, -0.579910, 0.062608,
		0.552468, 0.799343, 0.236282,
		35.033642, 41.052433, 23.842495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099152, 40.256565, 24.160753>,  <34.646915, 40.492893, 23.677097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099152, 40.256565, 24.160753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065220, 40.651688, 24.212975>,  <35.044861, 40.888760, 24.244307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065220, 40.651688, 24.212975>,  <35.099152, 40.256565, 24.160753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065220, 40.651688, 24.212975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006532, -0.130472, 0.991431,
		0.996374, 0.084956, 0.004616,
		-0.084831, 0.987805, 0.130553,
		35.039772, 40.948029, 24.252140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593445, 40.445847, 24.690273>,  <35.099152, 40.256565, 24.160753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593445, 40.445847, 24.690273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331104, 40.747395, 24.674595>,  <35.173698, 40.928326, 24.665188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331104, 40.747395, 24.674595>,  <35.593445, 40.445847, 24.690273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331104, 40.747395, 24.674595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052709, 0.006066, 0.998591,
		0.753047, 0.656994, 0.035758,
		-0.655851, 0.753872, -0.039198,
		35.134350, 40.973557, 24.662836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858337, 40.925713, 25.114561>,  <35.593445, 40.445847, 24.690273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858337, 40.925713, 25.114561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472134, 41.029228, 25.103067>,  <35.240414, 41.091339, 25.096170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472134, 41.029228, 25.103067>,  <35.858337, 40.925713, 25.114561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472134, 41.029228, 25.103067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038228, -0.031726, 0.998765,
		0.257557, 0.965413, 0.040524,
		-0.965506, 0.258789, -0.028735,
		35.182480, 41.106865, 25.094446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817822, 41.364773, 25.645805>,  <35.858337, 40.925713, 25.114561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817822, 41.364773, 25.645805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458313, 41.205555, 25.572296>,  <35.242607, 41.110023, 25.528191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458313, 41.205555, 25.572296>,  <35.817822, 41.364773, 25.645805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458313, 41.205555, 25.572296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135706, -0.146002, 0.979932,
		-0.416886, 0.905674, 0.077206,
		-0.898771, -0.398043, -0.183771,
		35.188683, 41.086143, 25.517164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412666, 41.744263, 26.079359>,  <35.817822, 41.364773, 25.645805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412666, 41.744263, 26.079359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182610, 41.426979, 25.999331>,  <35.044575, 41.236610, 25.951313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182610, 41.426979, 25.999331>,  <35.412666, 41.744263, 26.079359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182610, 41.426979, 25.999331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086732, -0.184064, 0.979080,
		-0.813442, 0.580463, 0.037067,
		-0.575143, -0.793211, -0.200071,
		35.010067, 41.189014, 25.939310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834679, 41.875202, 26.524567>,  <35.412666, 41.744263, 26.079359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834679, 41.875202, 26.524567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894863, 41.496773, 26.409815>,  <34.930973, 41.269714, 26.340963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894863, 41.496773, 26.409815>,  <34.834679, 41.875202, 26.524567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894863, 41.496773, 26.409815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011949, -0.291901, 0.956374,
		-0.988543, -0.140473, -0.055226,
		0.150466, -0.946076, -0.286878,
		34.940002, 41.212952, 26.323751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407238, 41.650917, 27.066401>,  <34.834679, 41.875202, 26.524567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407238, 41.650917, 27.066401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635487, 41.352375, 26.929375>,  <34.772434, 41.173252, 26.847158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635487, 41.352375, 26.929375>,  <34.407238, 41.650917, 27.066401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635487, 41.352375, 26.929375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021279, -0.430444, 0.902366,
		-0.820938, -0.507619, -0.261502,
		0.570621, -0.746351, -0.342567,
		34.806671, 41.128471, 26.826605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249626, 41.221951, 27.536905>,  <34.407238, 41.650917, 27.066401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249626, 41.221951, 27.536905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547565, 41.028809, 27.352705>,  <34.726330, 40.912926, 27.242186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547565, 41.028809, 27.352705>,  <34.249626, 41.221951, 27.536905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547565, 41.028809, 27.352705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147333, -0.554105, 0.819305,
		-0.650767, -0.678103, -0.341583,
		0.744846, -0.482850, -0.460501,
		34.771019, 40.883953, 27.214556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111977, 40.470844, 27.588108>,  <34.249626, 41.221951, 27.536905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111977, 40.470844, 27.588108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503506, 40.534660, 27.536791>,  <34.738422, 40.572948, 27.506001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503506, 40.534660, 27.536791>,  <34.111977, 40.470844, 27.588108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503506, 40.534660, 27.536791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199460, -0.601951, 0.773221,
		0.046134, -0.782433, -0.621023,
		0.978819, 0.159541, -0.128294,
		34.797150, 40.582523, 27.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490471, 39.736050, 27.607353>,  <34.111977, 40.470844, 27.588108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490471, 39.736050, 27.607353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749969, 40.026432, 27.698668>,  <34.905670, 40.200661, 27.753456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749969, 40.026432, 27.698668>,  <34.490471, 39.736050, 27.607353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749969, 40.026432, 27.698668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182514, -0.439650, 0.879430,
		0.738791, -0.528865, -0.417720,
		0.648751, 0.725954, 0.228284,
		34.944595, 40.244217, 27.767153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180416, 39.399883, 27.541698>,  <34.490471, 39.736050, 27.607353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180416, 39.399883, 27.541698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186665, 39.716393, 27.786201>,  <35.190414, 39.906300, 27.932903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186665, 39.716393, 27.786201>,  <35.180416, 39.399883, 27.541698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186665, 39.716393, 27.786201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348410, -0.577326, 0.738448,
		0.937212, 0.201437, -0.284704,
		0.015617, 0.791276, 0.611259,
		35.191349, 39.953777, 27.969580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573128, 39.186470, 28.024986>,  <35.180416, 39.399883, 27.541698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573128, 39.186470, 28.024986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484219, 39.525402, 28.217909>,  <35.430874, 39.728764, 28.333662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484219, 39.525402, 28.217909>,  <35.573128, 39.186470, 28.024986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484219, 39.525402, 28.217909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444095, -0.352399, 0.823768,
		0.867971, 0.397294, -0.297967,
		-0.222275, 0.847333, 0.482308,
		35.417538, 39.779602, 28.362602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124332, 39.551285, 28.289347>,  <35.573128, 39.186470, 28.024986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124332, 39.551285, 28.289347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850113, 39.689003, 28.545935>,  <35.685581, 39.771633, 28.699888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850113, 39.689003, 28.545935>,  <36.124332, 39.551285, 28.289347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850113, 39.689003, 28.545935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456151, -0.483580, 0.747046,
		0.567408, 0.804742, 0.174465,
		-0.685547, 0.344297, 0.641471,
		35.644447, 39.792294, 28.738377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437389, 39.594044, 28.881702>,  <36.124332, 39.551285, 28.289347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437389, 39.594044, 28.881702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066555, 39.658333, 29.017159>,  <35.844055, 39.696907, 29.098433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066555, 39.658333, 29.017159>,  <36.437389, 39.594044, 28.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066555, 39.658333, 29.017159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238178, -0.445011, 0.863271,
		0.289449, 0.880983, 0.374282,
		-0.927087, 0.160727, 0.338639,
		35.788429, 39.706551, 29.118750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563274, 39.799095, 29.478991>,  <36.437389, 39.594044, 28.881702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563274, 39.799095, 29.478991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187672, 39.661674, 29.485165>,  <35.962311, 39.579224, 29.488869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187672, 39.661674, 29.485165>,  <36.563274, 39.799095, 29.478991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187672, 39.661674, 29.485165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196726, -0.499813, 0.843496,
		-0.282067, 0.795086, 0.536913,
		-0.939009, -0.343547, 0.015433,
		35.905968, 39.558609, 29.489794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248589, 39.856297, 30.090164>,  <36.563274, 39.799095, 29.478991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248589, 39.856297, 30.090164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012531, 39.570084, 29.940638>,  <35.870895, 39.398354, 29.850922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012531, 39.570084, 29.940638>,  <36.248589, 39.856297, 30.090164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012531, 39.570084, 29.940638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071181, -0.507362, 0.858788,
		-0.804153, 0.480201, 0.350350,
		-0.590145, -0.715535, -0.373815,
		35.835487, 39.355423, 29.828493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831738, 39.661461, 30.608574>,  <36.248589, 39.856297, 30.090164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831738, 39.661461, 30.608574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888885, 39.357212, 30.355261>,  <35.923176, 39.174664, 30.203274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888885, 39.357212, 30.355261>,  <35.831738, 39.661461, 30.608574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888885, 39.357212, 30.355261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008810, -0.640797, 0.767659,
		-0.989702, -0.104097, -0.098253,
		0.142871, -0.760620, -0.633282,
		35.931747, 39.129025, 30.165276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290653, 39.142250, 30.654274>,  <35.831738, 39.661461, 30.608574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290653, 39.142250, 30.654274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648144, 38.990456, 30.558571>,  <35.862637, 38.899380, 30.501150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648144, 38.990456, 30.558571>,  <35.290653, 39.142250, 30.654274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648144, 38.990456, 30.558571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124818, -0.301920, 0.945127,
		-0.430899, -0.874548, -0.222467,
		0.893726, -0.379486, -0.239256,
		35.916264, 38.876610, 30.486794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371819, 38.415401, 30.694403>,  <35.290653, 39.142250, 30.654274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371819, 38.415401, 30.694403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716846, 38.604950, 30.765303>,  <35.923862, 38.718678, 30.807842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716846, 38.604950, 30.765303>,  <35.371819, 38.415401, 30.694403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716846, 38.604950, 30.765303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133314, -0.125075, 0.983150,
		0.488051, -0.871669, -0.044713,
		0.862574, 0.473867, 0.177249,
		35.975620, 38.747108, 30.818478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679092, 38.063683, 31.383762>,  <35.371819, 38.415401, 30.694403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679092, 38.063683, 31.383762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900383, 38.390739, 31.320009>,  <36.033157, 38.586975, 31.281757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900383, 38.390739, 31.320009>,  <35.679092, 38.063683, 31.383762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900383, 38.390739, 31.320009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045763, 0.161207, 0.985859,
		0.831773, -0.552696, 0.051766,
		0.553226, 0.817642, -0.159380,
		36.066349, 38.636032, 31.272196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337364, 37.991444, 31.734808>,  <35.679092, 38.063683, 31.383762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337364, 37.991444, 31.734808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175716, 38.354996, 31.693590>,  <36.078728, 38.573128, 31.668859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175716, 38.354996, 31.693590>,  <36.337364, 37.991444, 31.734808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175716, 38.354996, 31.693590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079240, 0.147018, 0.985955,
		0.911266, 0.390281, -0.131433,
		-0.404123, 0.908882, -0.103046,
		36.054478, 38.627659, 31.662676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799767, 38.473049, 31.986692>,  <36.337364, 37.991444, 31.734808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799767, 38.473049, 31.986692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427570, 38.607246, 32.045525>,  <36.204254, 38.687763, 32.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427570, 38.607246, 32.045525>,  <36.799767, 38.473049, 31.986692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427570, 38.607246, 32.045525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181240, 0.072705, 0.980748,
		0.318337, 0.939234, -0.128455,
		-0.930491, 0.335489, 0.147082,
		36.148422, 38.707893, 32.089649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718891, 39.228836, 32.288158>,  <36.799767, 38.473049, 31.986692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718891, 39.228836, 32.288158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418377, 38.996986, 32.414394>,  <36.238068, 38.857876, 32.490135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418377, 38.996986, 32.414394>,  <36.718891, 39.228836, 32.288158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418377, 38.996986, 32.414394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289928, 0.139713, 0.946796,
		-0.592881, 0.802815, 0.063086,
		-0.751288, -0.579627, 0.315592,
		36.192989, 38.823097, 32.509071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172749, 39.633759, 32.753471>,  <36.718891, 39.228836, 32.288158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172749, 39.633759, 32.753471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254543, 39.246555, 32.811638>,  <36.303619, 39.014233, 32.846539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254543, 39.246555, 32.811638>,  <36.172749, 39.633759, 32.753471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254543, 39.246555, 32.811638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434341, 0.222858, 0.872744,
		-0.877230, -0.115306, 0.466017,
		0.204488, -0.968008, 0.145415,
		36.315891, 38.956154, 32.855263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832165, 39.316296, 33.435154>,  <36.172749, 39.633759, 32.753471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832165, 39.316296, 33.435154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170841, 39.154755, 33.296577>,  <36.374046, 39.057831, 33.213432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170841, 39.154755, 33.296577>,  <35.832165, 39.316296, 33.435154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170841, 39.154755, 33.296577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449175, 0.193467, 0.872246,
		-0.285238, -0.894131, 0.345208,
		0.846689, -0.403857, -0.346437,
		36.424847, 39.033596, 33.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997551, 38.764656, 33.864193>,  <35.832165, 39.316296, 33.435154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997551, 38.764656, 33.864193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337471, 38.920746, 33.722450>,  <36.541424, 39.014400, 33.637405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337471, 38.920746, 33.722450>,  <35.997551, 38.764656, 33.864193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337471, 38.920746, 33.722450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333271, 0.123064, 0.934765,
		0.408380, -0.912456, -0.025473,
		0.849798, 0.390229, -0.354352,
		36.592411, 39.037815, 33.616146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407936, 38.106693, 33.722794>,  <35.997551, 38.764656, 33.864193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407936, 38.106693, 33.722794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802063, 38.086784, 33.657463>,  <37.038540, 38.074841, 33.618263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802063, 38.086784, 33.657463>,  <36.407936, 38.106693, 33.722794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802063, 38.086784, 33.657463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112344, -0.531377, 0.839653,
		-0.128578, -0.845672, -0.517983,
		0.985316, -0.049768, -0.163330,
		37.097656, 38.071854, 33.608463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671108, 37.400925, 33.626392>,  <36.407936, 38.106693, 33.722794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671108, 37.400925, 33.626392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950699, 37.636963, 33.787991>,  <37.118454, 37.778587, 33.884949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950699, 37.636963, 33.787991>,  <36.671108, 37.400925, 33.626392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950699, 37.636963, 33.787991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128398, -0.659287, 0.740847,
		0.703522, -0.465964, -0.536595,
		0.698978, 0.590100, 0.403994,
		37.160393, 37.813992, 33.909187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356720, 37.054173, 33.741821>,  <36.671108, 37.400925, 33.626392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356720, 37.054173, 33.741821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327099, 37.354477, 34.004387>,  <37.309326, 37.534660, 34.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327099, 37.354477, 34.004387>,  <37.356720, 37.054173, 33.741821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327099, 37.354477, 34.004387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255378, -0.621993, 0.740207,
		0.964001, 0.222451, -0.145665,
		-0.074057, 0.750759, 0.656411,
		37.304882, 37.579704, 34.201309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008949, 37.082001, 34.032669>,  <37.356720, 37.054173, 33.741821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008949, 37.082001, 34.032669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715275, 37.224518, 34.263847>,  <37.539070, 37.310028, 34.402554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715275, 37.224518, 34.263847>,  <38.008949, 37.082001, 34.032669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715275, 37.224518, 34.263847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218244, -0.682216, 0.697818,
		0.642915, 0.638463, 0.423115,
		-0.734186, 0.356296, 0.577948,
		37.495018, 37.331406, 34.437233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268600, 37.220081, 34.740906>,  <38.008949, 37.082001, 34.032669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268600, 37.220081, 34.740906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874535, 37.162720, 34.778591>,  <37.638096, 37.128304, 34.801205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874535, 37.162720, 34.778591>,  <38.268600, 37.220081, 34.740906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874535, 37.162720, 34.778591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166912, -0.673652, 0.719953,
		-0.039776, 0.725002, 0.687598,
		-0.985169, -0.143405, 0.094217,
		37.578983, 37.119698, 34.806858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198246, 37.179874, 35.448212>,  <38.268600, 37.220081, 34.740906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198246, 37.179874, 35.448212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848957, 37.029358, 35.324348>,  <37.639385, 36.939049, 35.250031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848957, 37.029358, 35.324348>,  <38.198246, 37.179874, 35.448212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848957, 37.029358, 35.324348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052770, -0.704705, 0.707535,
		-0.484462, 0.601492, 0.635219,
		-0.873219, -0.376295, -0.309662,
		37.586990, 36.916470, 35.231449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563499, 37.223251, 35.985909>,  <38.198246, 37.179874, 35.448212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563499, 37.223251, 35.985909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507229, 36.921726, 35.729168>,  <37.473469, 36.740810, 35.575123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507229, 36.921726, 35.729168>,  <37.563499, 37.223251, 35.985909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507229, 36.921726, 35.729168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024186, -0.650724, 0.758929,
		-0.989760, 0.091238, 0.109771,
		-0.140674, -0.753813, -0.641854,
		37.465027, 36.695583, 35.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043823, 36.920345, 36.281429>,  <37.563499, 37.223251, 35.985909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043823, 36.920345, 36.281429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191959, 36.653423, 36.022957>,  <37.280842, 36.493271, 35.867874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191959, 36.653423, 36.022957>,  <37.043823, 36.920345, 36.281429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191959, 36.653423, 36.022957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043949, -0.707453, 0.705393,
		-0.927855, -0.232839, -0.291328,
		0.370343, -0.667306, -0.646180,
		37.303062, 36.453232, 35.829102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630306, 36.280930, 36.369083>,  <37.043823, 36.920345, 36.281429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630306, 36.280930, 36.369083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974564, 36.164314, 36.202087>,  <37.181118, 36.094345, 36.101891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974564, 36.164314, 36.202087>,  <36.630306, 36.280930, 36.369083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974564, 36.164314, 36.202087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048898, -0.768773, 0.637649,
		-0.506853, -0.569204, -0.647385,
		0.860645, -0.291538, -0.417488,
		37.232758, 36.076855, 36.076839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511490, 35.634365, 35.994785>,  <36.630306, 36.280930, 36.369083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511490, 35.634365, 35.994785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893566, 35.675526, 36.105801>,  <37.122810, 35.700222, 36.172409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893566, 35.675526, 36.105801>,  <36.511490, 35.634365, 35.994785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893566, 35.675526, 36.105801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049345, -0.869155, 0.492071,
		0.291857, -0.483716, -0.825129,
		0.955188, 0.102899, 0.277538,
		37.180122, 35.706394, 36.189060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777973, 34.868973, 35.960548>,  <36.511490, 35.634365, 35.994785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777973, 34.868973, 35.960548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976574, 35.112728, 36.207817>,  <37.095734, 35.258980, 36.356178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976574, 35.112728, 36.207817>,  <36.777973, 34.868973, 35.960548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976574, 35.112728, 36.207817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125947, -0.654037, 0.745904,
		0.858851, -0.448198, -0.247978,
		0.496500, 0.609388, 0.618169,
		37.125523, 35.295544, 36.393269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435410, 34.584759, 36.304810>,  <36.777973, 34.868973, 35.960548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435410, 34.584759, 36.304810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271427, 34.846004, 36.559486>,  <37.173038, 35.002750, 36.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271427, 34.846004, 36.559486>,  <37.435410, 34.584759, 36.304810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271427, 34.846004, 36.559486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062041, -0.716398, 0.694928,
		0.909991, 0.245391, 0.334214,
		-0.409959, 0.653113, 0.636692,
		37.148438, 35.041939, 36.750492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691753, 34.673958, 37.024448>,  <37.435410, 34.584759, 36.304810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691753, 34.673958, 37.024448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302990, 34.760273, 37.062031>,  <37.069733, 34.812061, 37.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302990, 34.760273, 37.062031>,  <37.691753, 34.673958, 37.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302990, 34.760273, 37.062031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129725, -0.824269, 0.551137,
		0.196376, 0.523466, 0.829108,
		-0.971909, 0.215786, 0.093960,
		37.011417, 34.825008, 37.090218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816776, 35.341591, 37.517200>,  <37.691753, 34.673958, 37.024448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816776, 35.341591, 37.517200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693314, 35.348633, 37.136795>,  <37.619236, 35.352856, 36.908554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693314, 35.348633, 37.136795>,  <37.816776, 35.341591, 37.517200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693314, 35.348633, 37.136795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775776, 0.573861, 0.262402,
		0.550367, 0.818764, -0.163468,
		-0.308653, 0.017603, -0.951012,
		37.600719, 35.353912, 36.851490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941689, 35.852001, 36.908554>,  <37.816776, 35.341591, 37.517200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941689, 35.852001, 36.908554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793968, 35.564266, 36.673210>,  <37.705334, 35.391624, 36.532005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793968, 35.564266, 36.673210>,  <37.941689, 35.852001, 36.908554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793968, 35.564266, 36.673210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049525, 0.647450, -0.760498,
		0.927989, -0.251716, -0.274730,
		-0.369303, -0.719339, -0.588360,
		37.683178, 35.348465, 36.496704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349751, 35.826340, 36.212471>,  <37.941689, 35.852001, 36.908554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349751, 35.826340, 36.212471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975456, 35.695580, 36.159496>,  <37.750881, 35.617123, 36.127712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975456, 35.695580, 36.159496>,  <38.349751, 35.826340, 36.212471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975456, 35.695580, 36.159496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046837, 0.487331, -0.871960,
		0.349583, -0.809720, -0.471323,
		-0.935734, -0.326898, -0.132438,
		37.694736, 35.597511, 36.119766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317711, 35.693832, 35.512295>,  <38.349751, 35.826340, 36.212471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317711, 35.693832, 35.512295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957561, 35.790718, 35.656887>,  <37.741474, 35.848850, 35.743641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957561, 35.790718, 35.656887>,  <38.317711, 35.693832, 35.512295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957561, 35.790718, 35.656887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170494, 0.567940, -0.805218,
		-0.400330, -0.786624, -0.470062,
		-0.900371, 0.242210, 0.361478,
		37.687450, 35.863380, 35.765331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826332, 35.622204, 34.932053>,  <38.317711, 35.693832, 35.512295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826332, 35.622204, 34.932053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667099, 35.860855, 35.210781>,  <37.571560, 36.004047, 35.378017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667099, 35.860855, 35.210781>,  <37.826332, 35.622204, 34.932053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667099, 35.860855, 35.210781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380824, 0.583575, -0.717226,
		-0.834566, -0.550885, -0.005103,
		-0.398087, 0.596628, 0.696822,
		37.547672, 36.039845, 35.419827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154972, 35.769562, 34.751102>,  <37.826332, 35.622204, 34.932053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154972, 35.769562, 34.751102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277290, 36.064770, 34.991707>,  <37.350681, 36.241894, 35.136070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277290, 36.064770, 34.991707>,  <37.154972, 35.769562, 34.751102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277290, 36.064770, 34.991707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449541, 0.668835, -0.592092,
		-0.839288, -0.089347, 0.536295,
		0.305791, 0.738022, 0.601510,
		37.369026, 36.286175, 35.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765293, 36.257545, 34.534241>,  <37.154972, 35.769562, 34.751102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765293, 36.257545, 34.534241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014446, 36.468796, 34.765102>,  <37.163937, 36.595547, 34.903622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014446, 36.468796, 34.765102>,  <36.765293, 36.257545, 34.534241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014446, 36.468796, 34.765102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338106, 0.847022, -0.410168,
		-0.705482, 0.060345, 0.706154,
		0.622879, 0.528121, 0.577156,
		37.201309, 36.627232, 34.938248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350502, 36.756168, 34.936745>,  <36.765293, 36.257545, 34.534241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350502, 36.756168, 34.936745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727871, 36.873161, 34.874241>,  <36.954292, 36.943356, 34.836739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727871, 36.873161, 34.874241>,  <36.350502, 36.756168, 34.936745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727871, 36.873161, 34.874241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331602, 0.830522, -0.447519,
		-0.001111, 0.474014, 0.880516,
		0.943419, 0.292478, -0.156261,
		37.010895, 36.960903, 34.827362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472446, 37.474457, 35.254993>,  <36.350502, 36.756168, 34.936745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472446, 37.474457, 35.254993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758087, 37.413845, 34.981617>,  <36.929470, 37.377480, 34.817589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758087, 37.413845, 34.981617>,  <36.472446, 37.474457, 35.254993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758087, 37.413845, 34.981617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188454, 0.898638, -0.396149,
		0.674198, 0.411689, 0.613163,
		0.714102, -0.151530, -0.683445,
		36.972317, 37.368385, 34.776585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962364, 38.156609, 35.288288>,  <36.472446, 37.474457, 35.254993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962364, 38.156609, 35.288288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007866, 37.997055, 34.924320>,  <37.035168, 37.901321, 34.705940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007866, 37.997055, 34.924320>,  <36.962364, 38.156609, 35.288288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007866, 37.997055, 34.924320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356298, 0.838563, -0.412144,
		0.927422, 0.371085, -0.046733,
		0.113752, -0.398882, -0.909919,
		37.041992, 37.877392, 34.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406197, 38.634285, 35.019932>,  <36.962364, 38.156609, 35.288288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406197, 38.634285, 35.019932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381474, 38.314194, 34.781330>,  <37.366638, 38.122139, 34.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381474, 38.314194, 34.781330>,  <37.406197, 38.634285, 35.019932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381474, 38.314194, 34.781330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096717, 0.590029, -0.801568,
		0.993391, -0.107237, 0.040926,
		-0.061810, -0.800229, -0.596501,
		37.362930, 38.074123, 34.602379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083187, 38.801128, 35.253822>,  <37.406197, 38.634285, 35.019932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083187, 38.801128, 35.253822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371582, 39.067673, 35.177773>,  <38.544621, 39.227600, 35.132145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371582, 39.067673, 35.177773>,  <38.083187, 38.801128, 35.253822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371582, 39.067673, 35.177773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606266, -0.739462, -0.292638,
		-0.335590, 0.095724, -0.937132,
		0.720986, 0.666358, -0.190122,
		38.587879, 39.267582, 35.120735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936737, 38.716740, 34.453121>,  <38.083187, 38.801128, 35.253822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936737, 38.716740, 34.453121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714134, 38.435650, 34.275814>,  <37.580574, 38.266998, 34.169430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714134, 38.435650, 34.275814>,  <37.936737, 38.716740, 34.453121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714134, 38.435650, 34.275814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044047, 0.507810, -0.860343,
		0.829677, -0.498308, -0.251645,
		-0.556503, -0.702722, -0.443267,
		37.547184, 38.224834, 34.142834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371113, 38.351967, 34.039406>,  <37.936737, 38.716740, 34.453121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371113, 38.351967, 34.039406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984215, 38.404655, 33.952606>,  <37.752075, 38.436268, 33.900528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984215, 38.404655, 33.952606>,  <38.371113, 38.351967, 34.039406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984215, 38.404655, 33.952606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248404, 0.667231, -0.702210,
		0.052292, -0.733112, -0.678095,
		-0.967244, 0.131722, -0.216998,
		37.694042, 38.444172, 33.887508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190300, 38.164612, 33.389847>,  <38.371113, 38.351967, 34.039406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190300, 38.164612, 33.389847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925636, 38.450253, 33.481293>,  <37.766838, 38.621635, 33.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925636, 38.450253, 33.481293>,  <38.190300, 38.164612, 33.389847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925636, 38.450253, 33.481293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357269, 0.568318, -0.741197,
		-0.659214, -0.408746, -0.631161,
		-0.661662, 0.714101, 0.228611,
		37.727139, 38.664482, 33.549877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599136, 37.689770, 33.841480>,  <38.190300, 38.164612, 33.389847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599136, 37.689770, 33.841480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926865, 37.914627, 33.886566>,  <39.123501, 38.049541, 33.913616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926865, 37.914627, 33.886566>,  <38.599136, 37.689770, 33.841480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926865, 37.914627, 33.886566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040728, -0.139029, 0.989450,
		0.571885, -0.815269, -0.091015,
		0.819322, 0.562145, 0.112713,
		39.172661, 38.083271, 33.920380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223797, 37.391129, 34.100174>,  <38.599136, 37.689770, 33.841480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223797, 37.391129, 34.100174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237732, 37.772381, 34.220390>,  <39.246094, 38.001133, 34.292519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237732, 37.772381, 34.220390>,  <39.223797, 37.391129, 34.100174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237732, 37.772381, 34.220390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023584, -0.301425, 0.953198,
		0.999115, -0.026121, -0.032981,
		0.034840, 0.953132, 0.300542,
		39.248184, 38.058319, 34.310555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753349, 37.191273, 34.593895>,  <39.223797, 37.391129, 34.100174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753349, 37.191273, 34.593895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561123, 37.535961, 34.659004>,  <39.445786, 37.742775, 34.698071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561123, 37.535961, 34.659004>,  <39.753349, 37.191273, 34.593895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561123, 37.535961, 34.659004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025327, -0.199176, 0.979636,
		0.876593, 0.466656, 0.117542,
		-0.480565, 0.861720, 0.162777,
		39.416954, 37.794476, 34.707836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140190, 37.452751, 35.226509>,  <39.753349, 37.191273, 34.593895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140190, 37.452751, 35.226509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775692, 37.617443, 35.222145>,  <39.556995, 37.716259, 35.219528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775692, 37.617443, 35.222145>,  <40.140190, 37.452751, 35.226509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775692, 37.617443, 35.222145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068905, -0.126288, 0.989598,
		0.406067, 0.902514, 0.143449,
		-0.911242, 0.411728, -0.010906,
		39.502319, 37.740963, 35.218872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673595, 37.363262, 35.696930>,  <40.140190, 37.452751, 35.226509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673595, 37.363262, 35.696930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824181, 37.725239, 35.617573>,  <40.914532, 37.942425, 35.569958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824181, 37.725239, 35.617573>,  <40.673595, 37.363262, 35.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824181, 37.725239, 35.617573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831082, -0.424509, -0.359297,
		-0.409363, -0.029620, -0.911891,
		0.376463, 0.904939, -0.198395,
		40.937119, 37.996719, 35.558056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988380, 37.366917, 34.980999>,  <40.673595, 37.363262, 35.696930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988380, 37.366917, 34.980999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152718, 37.669270, 35.184902>,  <41.251320, 37.850681, 35.307243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152718, 37.669270, 35.184902>,  <40.988380, 37.366917, 34.980999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152718, 37.669270, 35.184902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905361, -0.272390, -0.325770,
		-0.107390, 0.595356, -0.796253,
		0.410840, 0.755880, 0.509760,
		41.275970, 37.896034, 35.337830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483318, 37.759823, 34.630585>,  <40.988380, 37.366917, 34.980999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483318, 37.759823, 34.630585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596935, 37.798424, 35.012161>,  <41.665108, 37.821583, 35.241108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596935, 37.798424, 35.012161>,  <41.483318, 37.759823, 34.630585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596935, 37.798424, 35.012161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906610, -0.350835, -0.234463,
		0.312051, 0.931452, -0.187143,
		0.284047, 0.096501, 0.953942,
		41.682148, 37.827374, 35.298344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983498, 37.550503, 34.049927>,  <41.483318, 37.759823, 34.630585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983498, 37.550503, 34.049927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221684, 37.232216, 34.094193>,  <41.364597, 37.041245, 34.120750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221684, 37.232216, 34.094193>,  <40.983498, 37.550503, 34.049927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221684, 37.232216, 34.094193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627309, -0.546584, -0.554733,
		0.501899, 0.260906, -0.824636,
		0.595467, -0.795722, 0.110662,
		41.400322, 36.993500, 34.127392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304386, 37.413738, 33.334225>,  <40.983498, 37.550503, 34.049927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304386, 37.413738, 33.334225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278725, 37.093193, 33.572113>,  <41.263329, 36.900864, 33.714848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278725, 37.093193, 33.572113>,  <41.304386, 37.413738, 33.334225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278725, 37.093193, 33.572113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412889, -0.521236, -0.746884,
		0.908519, -0.293471, -0.297436,
		-0.064154, -0.801366, 0.594723,
		41.259480, 36.852783, 33.750530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211727, 36.870052, 32.975689>,  <41.304386, 37.413738, 33.334225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211727, 36.870052, 32.975689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075165, 36.725845, 33.322899>,  <40.993229, 36.639320, 33.531227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075165, 36.725845, 33.322899>,  <41.211727, 36.870052, 32.975689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075165, 36.725845, 33.322899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575534, -0.649953, -0.496309,
		0.743104, -0.669021, 0.014408,
		-0.341406, -0.360516, 0.868027,
		40.972744, 36.617691, 33.583305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414154, 36.111626, 33.052280>,  <41.211727, 36.870052, 32.975689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414154, 36.111626, 33.052280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083641, 36.217678, 33.251064>,  <40.885334, 36.281311, 33.370335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083641, 36.217678, 33.251064>,  <41.414154, 36.111626, 33.052280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083641, 36.217678, 33.251064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534315, -0.648154, -0.542591,
		0.178246, -0.713863, 0.677221,
		-0.826278, 0.265134, 0.496958,
		40.835758, 36.297218, 33.400150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669811, 35.907654, 33.712700>,  <41.414154, 36.111626, 33.052280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669811, 35.907654, 33.712700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664547, 36.304436, 33.763054>,  <41.661388, 36.542507, 33.793266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664547, 36.304436, 33.763054>,  <41.669811, 35.907654, 33.712700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664547, 36.304436, 33.763054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927772, -0.034840, 0.371516,
		0.372914, 0.121682, -0.919852,
		-0.013159, 0.991958, 0.125885,
		41.660599, 36.602024, 33.800819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288250, 35.654541, 33.361168>,  <41.669811, 35.907654, 33.712700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288250, 35.654541, 33.361168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094212, 35.994686, 33.442715>,  <41.977791, 36.198772, 33.491642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094212, 35.994686, 33.442715>,  <42.288250, 35.654541, 33.361168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094212, 35.994686, 33.442715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858933, 0.419608, 0.293535,
		0.164066, 0.317504, -0.933956,
		-0.485094, 0.850365, 0.203871,
		41.948685, 36.249794, 33.503876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544029, 36.256973, 32.982517>,  <42.288250, 35.654541, 33.361168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544029, 36.256973, 32.982517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404678, 36.359913, 33.343052>,  <42.321068, 36.421677, 33.559372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404678, 36.359913, 33.343052>,  <42.544029, 36.256973, 32.982517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404678, 36.359913, 33.343052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918871, 0.283775, 0.274132,
		-0.185229, 0.923712, -0.335332,
		-0.348377, 0.257349, 0.901335,
		42.300167, 36.437119, 33.613453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717751, 37.047642, 33.184246>,  <42.544029, 36.256973, 32.982517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717751, 37.047642, 33.184246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720490, 36.750656, 33.452187>,  <42.722134, 36.572464, 33.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720490, 36.750656, 33.452187>,  <42.717751, 37.047642, 33.184246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720490, 36.750656, 33.452187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999620, -0.012789, -0.024401,
		0.026683, 0.669768, 0.742091,
		0.006852, -0.742460, 0.669855,
		42.722546, 36.527920, 33.653145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156548, 37.155380, 33.655663>,  <42.717751, 37.047642, 33.184246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156548, 37.155380, 33.655663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113327, 36.765629, 33.576759>,  <43.087395, 36.531776, 33.529415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113327, 36.765629, 33.576759>,  <43.156548, 37.155380, 33.655663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113327, 36.765629, 33.576759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981677, -0.073249, -0.175910,
		0.156953, -0.212654, 0.964440,
		-0.108053, -0.974378, -0.197261,
		43.080910, 36.473316, 33.517582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585976, 36.718525, 34.107658>,  <43.156548, 37.155380, 33.655663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585976, 36.718525, 34.107658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510136, 36.556511, 33.749889>,  <43.464630, 36.459301, 33.535229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510136, 36.556511, 33.749889>,  <43.585976, 36.718525, 34.107658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510136, 36.556511, 33.749889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979884, -0.135828, -0.146210,
		-0.062267, -0.904156, 0.422641,
		-0.189603, -0.405035, -0.894426,
		43.453255, 36.435001, 33.481560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950523, 36.060101, 33.834988>,  <43.585976, 36.718525, 34.107658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950523, 36.060101, 33.834988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912476, 36.297279, 33.515148>,  <43.889645, 36.439587, 33.323242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912476, 36.297279, 33.515148>,  <43.950523, 36.060101, 33.834988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912476, 36.297279, 33.515148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933960, -0.224808, -0.277814,
		-0.344487, -0.773221, -0.532408,
		-0.095122, 0.592951, -0.799600,
		43.883938, 36.475166, 33.275269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257793, 36.058273, 33.016285>,  <43.950523, 36.060101, 33.834988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257793, 36.058273, 33.016285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442898, 35.841640, 32.735561>,  <44.553963, 35.711658, 32.567127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442898, 35.841640, 32.735561>,  <44.257793, 36.058273, 33.016285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442898, 35.841640, 32.735561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878869, 0.383818, 0.283324,
		0.115923, -0.747910, 0.653599,
		0.462764, -0.541584, -0.701809,
		44.581726, 35.679165, 32.525017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693962, 35.694592, 33.369022>,  <44.257793, 36.058273, 33.016285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693962, 35.694592, 33.369022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852688, 35.765751, 33.008823>,  <44.947922, 35.808445, 32.792706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852688, 35.765751, 33.008823>,  <44.693962, 35.694592, 33.369022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852688, 35.765751, 33.008823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837322, 0.331787, 0.434522,
		0.376072, -0.926429, -0.017298,
		0.396814, 0.177896, -0.900495,
		44.971733, 35.819118, 32.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264793, 35.326447, 33.174423>,  <44.693962, 35.694592, 33.369022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264793, 35.326447, 33.174423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349003, 35.634369, 32.933399>,  <45.399529, 35.819122, 32.788784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349003, 35.634369, 32.933399>,  <45.264793, 35.326447, 33.174423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349003, 35.634369, 32.933399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960196, -0.047075, 0.275332,
		0.183587, -0.636542, -0.749073,
		0.210523, 0.769804, -0.602562,
		45.412159, 35.865311, 32.752632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814461, 35.104301, 32.655476>,  <45.264793, 35.326447, 33.174423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814461, 35.104301, 32.655476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785931, 35.489407, 32.759781>,  <45.768810, 35.720470, 32.822365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785931, 35.489407, 32.759781>,  <45.814461, 35.104301, 32.655476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785931, 35.489407, 32.759781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828505, -0.088387, 0.552961,
		0.555420, 0.255486, -0.791351,
		-0.071329, 0.962764, 0.260763,
		45.764530, 35.778236, 32.838009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430874, 35.562778, 32.468468>,  <45.814461, 35.104301, 32.655476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430874, 35.562778, 32.468468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250961, 35.681946, 32.805264>,  <46.143013, 35.753445, 33.007339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250961, 35.681946, 32.805264>,  <46.430874, 35.562778, 32.468468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250961, 35.681946, 32.805264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865682, -0.086526, 0.493060,
		0.219743, 0.950663, -0.218981,
		-0.449786, 0.297915, 0.841985,
		46.116024, 35.771320, 33.057858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811119, 36.092094, 32.769455>,  <46.430874, 35.562778, 32.468468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811119, 36.092094, 32.769455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596962, 35.899570, 33.047073>,  <46.468468, 35.784058, 33.213642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596962, 35.899570, 33.047073>,  <46.811119, 36.092094, 32.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596962, 35.899570, 33.047073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842926, -0.252749, 0.474968,
		-0.053186, 0.839323, 0.541025,
		-0.535395, -0.481306, 0.694044,
		46.436344, 35.755180, 33.255287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258656, 36.186504, 33.290432>,  <46.811119, 36.092094, 32.769455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258656, 36.186504, 33.290432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009949, 35.886887, 33.381943>,  <46.860725, 35.707115, 33.436848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009949, 35.886887, 33.381943>,  <47.258656, 36.186504, 33.290432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009949, 35.886887, 33.381943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702696, -0.404523, 0.585303,
		-0.345875, 0.524679, 0.777870,
		-0.621763, -0.749048, 0.228776,
		46.823421, 35.662170, 33.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226345, 36.235546, 34.048485>,  <47.258656, 36.186504, 33.290432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226345, 36.235546, 34.048485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180401, 35.860989, 33.915836>,  <47.152836, 35.636253, 33.836246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180401, 35.860989, 33.915836>,  <47.226345, 36.235546, 34.048485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180401, 35.860989, 33.915836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533782, -0.339718, 0.774382,
		-0.837785, -0.088068, 0.538851,
		-0.114859, -0.936395, -0.331620,
		47.145943, 35.580070, 33.816349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957073, 35.809097, 34.568787>,  <47.226345, 36.235546, 34.048485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957073, 35.809097, 34.568787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.158989, 35.581966, 34.308708>,  <47.280140, 35.445690, 34.152660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.158989, 35.581966, 34.308708>,  <46.957073, 35.809097, 34.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.158989, 35.581966, 34.308708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574319, -0.341413, 0.744039,
		-0.644470, -0.749009, 0.153769,
		0.504793, -0.567824, -0.650200,
		47.310429, 35.411621, 34.113647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026901, 35.096600, 34.826611>,  <46.957073, 35.809097, 34.568787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026901, 35.096600, 34.826611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335052, 35.171841, 34.582924>,  <47.519943, 35.216984, 34.436714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335052, 35.171841, 34.582924>,  <47.026901, 35.096600, 34.826611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.335052, 35.171841, 34.582924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634005, -0.327201, 0.700698,
		-0.067534, -0.926044, -0.371324,
		0.770375, 0.188100, -0.609214,
		47.566166, 35.228271, 34.400158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.489437, 34.611389, 34.906815>,  <47.026901, 35.096600, 34.826611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.489437, 34.611389, 34.906815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717487, 34.880215, 34.717800>,  <47.854317, 35.041508, 34.604393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717487, 34.880215, 34.717800>,  <47.489437, 34.611389, 34.906815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717487, 34.880215, 34.717800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745230, -0.180955, 0.641785,
		0.345811, -0.718046, -0.604007,
		0.570129, 0.672061, -0.472533,
		47.888527, 35.081833, 34.576038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.862774, 37.036137, 20.041620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.499611, 37.134384, 19.905748>,  <35.281715, 37.193333, 19.824224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.499611, 37.134384, 19.905748>,  <35.862774, 37.036137, 20.041620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499611, 37.134384, 19.905748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399125, -0.258895, 0.879587,
		0.128101, 0.934155, 0.333084,
		-0.907904, 0.245618, -0.339680,
		35.227242, 37.208069, 19.803844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614510, 37.373581, 20.581491>,  <35.862774, 37.036137, 20.041620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614510, 37.373581, 20.581491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312496, 37.218437, 20.370026>,  <35.131287, 37.125351, 20.243145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312496, 37.218437, 20.370026>,  <35.614510, 37.373581, 20.581491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312496, 37.218437, 20.370026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404815, -0.358520, 0.841183,
		-0.515795, 0.849135, 0.113686,
		-0.755037, -0.387856, -0.528665,
		35.085983, 37.102081, 20.211426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026642, 37.772697, 20.915972>,  <35.614510, 37.373581, 20.581491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026642, 37.772697, 20.915972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892941, 37.449879, 20.721262>,  <34.812717, 37.256187, 20.604437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892941, 37.449879, 20.721262>,  <35.026642, 37.772697, 20.915972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892941, 37.449879, 20.721262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403962, -0.343954, 0.847650,
		-0.851521, 0.479970, -0.211048,
		-0.334256, -0.807047, -0.486773,
		34.792664, 37.207764, 20.575230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248024, 37.685062, 21.031502>,  <35.026642, 37.772697, 20.915972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248024, 37.685062, 21.031502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391510, 37.326267, 20.928165>,  <34.477600, 37.110989, 20.866163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391510, 37.326267, 20.928165>,  <34.248024, 37.685062, 21.031502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391510, 37.326267, 20.928165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388560, -0.395128, 0.832403,
		-0.848732, -0.198214, -0.490270,
		0.358713, -0.896987, -0.258340,
		34.499123, 37.057171, 20.850664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639263, 37.282867, 21.104454>,  <34.248024, 37.685062, 21.031502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639263, 37.282867, 21.104454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.941189, 37.020607, 21.096642>,  <34.122345, 36.863251, 21.091953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.941189, 37.020607, 21.096642>,  <33.639263, 37.282867, 21.104454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941189, 37.020607, 21.096642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325063, -0.399757, 0.857046,
		-0.569734, -0.640557, -0.514869,
		0.754809, -0.655653, -0.019534,
		34.167633, 36.823910, 21.090782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319107, 36.613720, 21.219349>,  <33.639263, 37.282867, 21.104454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319107, 36.613720, 21.219349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.709129, 36.570904, 21.297131>,  <33.943142, 36.545216, 21.343800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.709129, 36.570904, 21.297131>,  <33.319107, 36.613720, 21.219349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709129, 36.570904, 21.297131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221729, -0.510307, 0.830917,
		0.010291, -0.853305, -0.521310,
		0.975054, -0.107038, 0.194454,
		34.001644, 36.538792, 21.355467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354008, 35.871136, 21.469418>,  <33.319107, 36.613720, 21.219349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354008, 35.871136, 21.469418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643005, 36.107517, 21.612961>,  <33.816402, 36.249348, 21.699087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643005, 36.107517, 21.612961>,  <33.354008, 35.871136, 21.469418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643005, 36.107517, 21.612961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112249, -0.411896, 0.904291,
		0.682206, -0.693624, -0.231258,
		0.722492, 0.590954, 0.358857,
		33.859753, 36.284805, 21.720617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808086, 35.444275, 21.845137>,  <33.354008, 35.871136, 21.469418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808086, 35.444275, 21.845137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.854225, 35.822315, 21.967436>,  <33.881908, 36.049141, 22.040815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.854225, 35.822315, 21.967436>,  <33.808086, 35.444275, 21.845137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854225, 35.822315, 21.967436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200030, -0.279399, 0.939108,
		0.972977, -0.169478, 0.156821,
		0.115343, 0.945099, 0.305750,
		33.888828, 36.105846, 22.059160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093880, 35.358845, 22.568789>,  <33.808086, 35.444275, 21.845137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093880, 35.358845, 22.568789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058266, 35.757240, 22.565441>,  <34.036896, 35.996277, 22.563433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058266, 35.757240, 22.565441>,  <34.093880, 35.358845, 22.568789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058266, 35.757240, 22.565441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049275, 0.012799, 0.998703,
		0.994809, 0.088510, -0.050217,
		-0.089038, 0.995993, -0.008371,
		34.031555, 36.056038, 22.562929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550446, 35.555237, 23.016376>,  <34.093880, 35.358845, 22.568789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550446, 35.555237, 23.016376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286324, 35.855511, 23.007740>,  <34.127850, 36.035675, 23.002558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286324, 35.855511, 23.007740>,  <34.550446, 35.555237, 23.016376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286324, 35.855511, 23.007740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090184, 0.107799, 0.990074,
		0.745564, 0.651803, -0.138880,
		-0.660304, 0.750688, -0.021589,
		34.088234, 36.080719, 23.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838852, 36.166569, 23.390944>,  <34.550446, 35.555237, 23.016376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838852, 36.166569, 23.390944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442535, 36.220314, 23.384222>,  <34.204746, 36.252563, 23.380188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442535, 36.220314, 23.384222>,  <34.838852, 36.166569, 23.390944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442535, 36.220314, 23.384222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013899, 0.022543, 0.999649,
		0.134698, 0.990675, -0.020468,
		-0.990789, 0.134366, -0.016806,
		34.145298, 36.260624, 23.379181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746162, 36.655266, 23.810699>,  <34.838852, 36.166569, 23.390944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746162, 36.655266, 23.810699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369717, 36.520138, 23.805300>,  <34.143848, 36.439060, 23.802059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369717, 36.520138, 23.805300>,  <34.746162, 36.655266, 23.810699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369717, 36.520138, 23.805300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128702, 0.321054, 0.938275,
		-0.312634, 0.884761, -0.345627,
		-0.941114, -0.337819, -0.013499,
		34.087383, 36.418793, 23.801250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235489, 37.140766, 24.098005>,  <34.746162, 36.655266, 23.810699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235489, 37.140766, 24.098005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067459, 36.779140, 24.129530>,  <33.966640, 36.562164, 24.148445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.067459, 36.779140, 24.129530>,  <34.235489, 37.140766, 24.098005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067459, 36.779140, 24.129530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136682, 0.148884, 0.979363,
		-0.897136, 0.400636, -0.186111,
		-0.420077, -0.904060, 0.078810,
		33.941437, 36.507923, 24.153173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616261, 37.233456, 24.430922>,  <34.235489, 37.140766, 24.098005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616261, 37.233456, 24.430922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743080, 36.857300, 24.480148>,  <33.819172, 36.631607, 24.509686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743080, 36.857300, 24.480148>,  <33.616261, 37.233456, 24.430922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743080, 36.857300, 24.480148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069349, 0.106429, 0.991899,
		-0.945870, -0.323016, -0.031472,
		0.317050, -0.940390, 0.123069,
		33.838196, 36.575184, 24.517069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408253, 37.135048, 25.031963>,  <33.616261, 37.233456, 24.430922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408253, 37.135048, 25.031963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607830, 36.789143, 25.009218>,  <33.727577, 36.581600, 24.995571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607830, 36.789143, 25.009218>,  <33.408253, 37.135048, 25.031963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607830, 36.789143, 25.009218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056184, -0.033201, 0.997868,
		-0.864812, -0.501074, 0.032021,
		0.498943, -0.864767, -0.056865,
		33.757511, 36.529713, 24.992159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064148, 36.720444, 25.500530>,  <33.408253, 37.135048, 25.031963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064148, 36.720444, 25.500530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.403755, 36.513748, 25.456457>,  <33.607521, 36.389732, 25.430014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.403755, 36.513748, 25.456457>,  <33.064148, 36.720444, 25.500530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403755, 36.513748, 25.456457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015798, -0.183615, 0.982871,
		-0.528120, -0.836221, -0.147730,
		0.849023, -0.516740, -0.110181,
		33.658463, 36.358727, 25.423403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116230, 35.992813, 25.939877>,  <33.064148, 36.720444, 25.500530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116230, 35.992813, 25.939877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481056, 36.140228, 25.867964>,  <33.699951, 36.228676, 25.824816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481056, 36.140228, 25.867964>,  <33.116230, 35.992813, 25.939877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481056, 36.140228, 25.867964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256234, -0.169942, 0.951559,
		0.320129, -0.913949, -0.249429,
		0.912064, 0.368534, -0.179782,
		33.754677, 36.250790, 25.814030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481701, 35.605934, 26.411707>,  <33.116230, 35.992813, 25.939877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481701, 35.605934, 26.411707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693939, 35.925629, 26.298788>,  <33.821281, 36.117447, 26.231037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693939, 35.925629, 26.298788>,  <33.481701, 35.605934, 26.411707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693939, 35.925629, 26.298788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293204, 0.139423, 0.945829,
		0.795300, -0.584621, -0.160362,
		0.530593, 0.799237, -0.282296,
		33.853119, 36.165401, 26.214100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059166, 35.471214, 26.757198>,  <33.481701, 35.605934, 26.411707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059166, 35.471214, 26.757198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050510, 35.864040, 26.682281>,  <34.045319, 36.099735, 26.637331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050510, 35.864040, 26.682281>,  <34.059166, 35.471214, 26.757198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050510, 35.864040, 26.682281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375833, 0.181584, 0.908723,
		0.926435, -0.050728, -0.373021,
		-0.021637, 0.982066, -0.187291,
		34.044018, 36.158661, 26.626095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672382, 35.771980, 27.127796>,  <34.059166, 35.471214, 26.757198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672382, 35.771980, 27.127796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405331, 36.063404, 27.066500>,  <34.245102, 36.238258, 27.029722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405331, 36.063404, 27.066500>,  <34.672382, 35.771980, 27.127796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405331, 36.063404, 27.066500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061373, 0.258987, 0.963929,
		0.741964, 0.634139, -0.217620,
		-0.667625, 0.728556, -0.153240,
		34.205044, 36.281971, 27.020527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990925, 36.287418, 27.490406>,  <34.672382, 35.771980, 27.127796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990925, 36.287418, 27.490406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599800, 36.361309, 27.450890>,  <34.365124, 36.405643, 27.427179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.599800, 36.361309, 27.450890>,  <34.990925, 36.287418, 27.490406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599800, 36.361309, 27.450890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075616, 0.128564, 0.988814,
		0.195362, 0.974344, -0.111743,
		-0.977812, 0.184727, -0.098793,
		34.306458, 36.416729, 27.421251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416775, 36.036293, 28.067602>,  <34.990925, 36.287418, 27.490406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416775, 36.036293, 28.067602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575130, 36.374413, 28.211128>,  <35.670143, 36.577282, 28.297243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575130, 36.374413, 28.211128>,  <35.416775, 36.036293, 28.067602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575130, 36.374413, 28.211128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311293, 0.244068, -0.918437,
		-0.863925, 0.475298, -0.166509,
		0.395892, 0.845294, 0.358814,
		35.693897, 36.628002, 28.318771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741341, 36.322674, 27.485317>,  <35.416775, 36.036293, 28.067602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741341, 36.322674, 27.485317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865292, 36.598259, 27.747400>,  <35.939663, 36.763611, 27.904650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865292, 36.598259, 27.747400>,  <35.741341, 36.322674, 27.485317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865292, 36.598259, 27.747400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453263, 0.498730, -0.738797,
		-0.835778, 0.525922, -0.157736,
		0.309882, 0.688966, 0.655209,
		35.958256, 36.804951, 27.943962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629559, 36.998600, 27.191286>,  <35.741341, 36.322674, 27.485317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629559, 36.998600, 27.191286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911266, 37.066147, 27.467108>,  <36.080292, 37.106674, 27.632601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911266, 37.066147, 27.467108>,  <35.629559, 36.998600, 27.191286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911266, 37.066147, 27.467108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423112, 0.680102, -0.598696,
		-0.570068, 0.713403, 0.407526,
		0.704271, 0.168868, 0.689555,
		36.122547, 37.116806, 27.673975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685772, 37.724281, 27.274889>,  <35.629559, 36.998600, 27.191286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685772, 37.724281, 27.274889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038258, 37.576038, 27.392267>,  <36.249748, 37.487091, 27.462694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038258, 37.576038, 27.392267>,  <35.685772, 37.724281, 27.274889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038258, 37.576038, 27.392267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466918, 0.585424, -0.662771,
		0.073840, 0.721058, 0.688929,
		0.881212, -0.370612, 0.293447,
		36.302620, 37.464855, 27.480301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188778, 38.343357, 27.229116>,  <35.685772, 37.724281, 27.274889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188778, 38.343357, 27.229116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422119, 38.018497, 27.233574>,  <36.562122, 37.823582, 27.236248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422119, 38.018497, 27.233574>,  <36.188778, 38.343357, 27.229116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422119, 38.018497, 27.233574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572870, 0.401678, -0.714476,
		0.575781, 0.423173, 0.699572,
		0.583349, -0.812145, 0.011145,
		36.597122, 37.774853, 27.236917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879704, 38.617813, 27.321783>,  <36.188778, 38.343357, 27.229116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879704, 38.617813, 27.321783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899811, 38.254700, 27.155216>,  <36.911877, 38.036831, 27.055275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899811, 38.254700, 27.155216>,  <36.879704, 38.617813, 27.321783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899811, 38.254700, 27.155216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678297, 0.337069, -0.652915,
		0.733066, -0.249633, 0.632691,
		0.050271, -0.907782, -0.416419,
		36.914890, 37.982365, 27.030291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552982, 38.595184, 26.905857>,  <36.879704, 38.617813, 27.321783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552982, 38.595184, 26.905857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377495, 38.262360, 26.770090>,  <37.272202, 38.062664, 26.688629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377495, 38.262360, 26.770090>,  <37.552982, 38.595184, 26.905857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377495, 38.262360, 26.770090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510879, 0.079792, -0.855942,
		0.739279, -0.548915, 0.390076,
		-0.438714, -0.832061, -0.339418,
		37.245880, 38.012741, 26.668264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100189, 38.190193, 26.601248>,  <37.552982, 38.595184, 26.905857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100189, 38.190193, 26.601248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758579, 38.069332, 26.431852>,  <37.553612, 37.996815, 26.330215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758579, 38.069332, 26.431852>,  <38.100189, 38.190193, 26.601248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758579, 38.069332, 26.431852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406159, 0.121407, -0.905702,
		0.325078, -0.945495, 0.019039,
		-0.854026, -0.302157, -0.423488,
		37.502373, 37.978687, 26.304806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314594, 37.856628, 25.985098>,  <38.100189, 38.190193, 26.601248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314594, 37.856628, 25.985098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929256, 37.948368, 25.929441>,  <37.698051, 38.003410, 25.896048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929256, 37.948368, 25.929441>,  <38.314594, 37.856628, 25.985098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929256, 37.948368, 25.929441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210491, 0.324726, -0.922088,
		-0.166293, -0.917581, -0.361099,
		-0.963349, 0.229345, -0.139142,
		37.640251, 38.017170, 25.887699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192497, 37.676804, 25.255369>,  <38.314594, 37.856628, 25.985098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192497, 37.676804, 25.255369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893627, 37.912487, 25.378374>,  <37.714306, 38.053898, 25.452177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893627, 37.912487, 25.378374>,  <38.192497, 37.676804, 25.255369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893627, 37.912487, 25.378374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104630, 0.352640, -0.929891,
		-0.656340, -0.726967, -0.201835,
		-0.747175, 0.589207, 0.307514,
		37.669476, 38.089249, 25.470629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586037, 37.544743, 24.725578>,  <38.192497, 37.676804, 25.255369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586037, 37.544743, 24.725578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544422, 37.894894, 24.914419>,  <37.519451, 38.104984, 25.027723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544422, 37.894894, 24.914419>,  <37.586037, 37.544743, 24.725578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544422, 37.894894, 24.914419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100200, 0.463040, -0.880655,
		-0.989513, -0.138929, 0.039538,
		-0.104041, 0.875381, 0.472104,
		37.513210, 38.157509, 25.056051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134323, 37.865837, 24.307240>,  <37.586037, 37.544743, 24.725578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134323, 37.865837, 24.307240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299049, 38.166035, 24.513992>,  <37.397884, 38.346153, 24.638044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299049, 38.166035, 24.513992>,  <37.134323, 37.865837, 24.307240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299049, 38.166035, 24.513992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060754, 0.543340, -0.837312,
		-0.909241, 0.376219, 0.178159,
		0.411814, 0.750494, 0.516883,
		37.422592, 38.391182, 24.669058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863590, 38.434132, 23.940981>,  <37.134323, 37.865837, 24.307240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863590, 38.434132, 23.940981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182568, 38.547985, 24.153799>,  <37.373955, 38.616299, 24.281490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182568, 38.547985, 24.153799>,  <36.863590, 38.434132, 23.940981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182568, 38.547985, 24.153799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432195, 0.345866, -0.832817,
		-0.421067, 0.894069, 0.152789,
		0.797440, 0.284637, 0.532045,
		37.421799, 38.633377, 24.313412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841747, 39.146744, 23.949778>,  <36.863590, 38.434132, 23.940981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841747, 39.146744, 23.949778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194717, 38.961262, 23.981508>,  <37.406502, 38.849972, 24.000547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194717, 38.961262, 23.981508>,  <36.841747, 39.146744, 23.949778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194717, 38.961262, 23.981508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232671, 0.283623, -0.930281,
		0.408879, 0.839365, 0.358168,
		0.882430, -0.463707, 0.079328,
		37.459446, 38.822151, 24.005306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448322, 39.661629, 23.734320>,  <36.841747, 39.146744, 23.949778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448322, 39.661629, 23.734320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559132, 39.282791, 23.669485>,  <37.625618, 39.055489, 23.630585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559132, 39.282791, 23.669485>,  <37.448322, 39.661629, 23.734320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559132, 39.282791, 23.669485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202962, 0.222557, -0.953559,
		0.939183, 0.231259, 0.253877,
		0.277021, -0.947094, -0.162085,
		37.642239, 38.998661, 23.620859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974926, 39.721424, 23.322021>,  <37.448322, 39.661629, 23.734320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974926, 39.721424, 23.322021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861298, 39.349201, 23.229624>,  <37.793121, 39.125866, 23.174185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861298, 39.349201, 23.229624>,  <37.974926, 39.721424, 23.322021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861298, 39.349201, 23.229624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110694, 0.207478, -0.971957,
		0.952392, -0.301674, 0.044069,
		-0.284071, -0.930562, -0.230994,
		37.776077, 39.070034, 23.160326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289032, 39.653393, 22.634880>,  <37.974926, 39.721424, 23.322021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289032, 39.653393, 22.634880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100815, 39.300484, 22.629553>,  <37.987885, 39.088737, 22.626356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100815, 39.300484, 22.629553>,  <38.289032, 39.653393, 22.634880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100815, 39.300484, 22.629553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014715, 0.007244, -0.999866,
		0.882252, -0.470680, 0.009574,
		-0.470547, -0.882274, -0.013317,
		37.959652, 39.035801, 22.625557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801662, 39.169888, 22.333303>,  <38.289032, 39.653393, 22.634880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801662, 39.169888, 22.333303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432514, 39.026329, 22.277433>,  <38.211025, 38.940193, 22.243912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432514, 39.026329, 22.277433>,  <38.801662, 39.169888, 22.333303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432514, 39.026329, 22.277433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101934, 0.122115, -0.987268,
		0.371385, -0.925354, -0.076112,
		-0.922867, -0.358898, -0.139677,
		38.155655, 38.918659, 22.235531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852325, 38.561398, 21.907909>,  <38.801662, 39.169888, 22.333303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852325, 38.561398, 21.907909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482121, 38.707088, 21.866417>,  <38.259998, 38.794502, 21.841520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482121, 38.707088, 21.866417>,  <38.852325, 38.561398, 21.907909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482121, 38.707088, 21.866417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083379, -0.071215, -0.993970,
		-0.369415, -0.928584, 0.035542,
		-0.925516, 0.364224, -0.103732,
		38.204464, 38.816357, 21.835297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.918999, 37.704876, 21.269314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806423, 38.080582, 21.347881>,  <37.738876, 38.306004, 21.395021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806423, 38.080582, 21.347881>,  <37.918999, 37.704876, 21.269314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806423, 38.080582, 21.347881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390151, 0.075005, -0.917691,
		-0.876683, -0.334908, 0.345345,
		-0.281439, 0.939261, 0.196420,
		37.721992, 38.362358, 21.406807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208942, 37.770790, 21.267361>,  <37.918999, 37.704876, 21.269314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208942, 37.770790, 21.267361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381287, 38.117645, 21.167419>,  <37.484692, 38.325760, 21.107454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381287, 38.117645, 21.167419>,  <37.208942, 37.770790, 21.267361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381287, 38.117645, 21.167419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396232, -0.066972, -0.915704,
		-0.810779, 0.493537, 0.314735,
		0.430856, 0.867142, -0.249855,
		37.510544, 38.377789, 21.092463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691959, 38.067101, 20.693977>,  <37.208942, 37.770790, 21.267361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691959, 38.067101, 20.693977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031754, 38.274689, 20.655939>,  <37.235630, 38.399242, 20.633116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031754, 38.274689, 20.655939>,  <36.691959, 38.067101, 20.693977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031754, 38.274689, 20.655939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242589, 0.224132, -0.943883,
		-0.468534, 0.824885, 0.316293,
		0.849486, 0.518970, -0.095094,
		37.286598, 38.430378, 20.627411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473961, 38.707191, 20.297352>,  <36.691959, 38.067101, 20.693977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473961, 38.707191, 20.297352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870476, 38.666210, 20.264257>,  <37.108387, 38.641621, 20.244400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870476, 38.666210, 20.264257>,  <36.473961, 38.707191, 20.297352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870476, 38.666210, 20.264257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050049, 0.288022, -0.956315,
		0.121812, 0.952127, 0.280386,
		0.991291, -0.102457, -0.082737,
		37.167862, 38.635471, 20.239437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724968, 39.290489, 20.019417>,  <36.473961, 38.707191, 20.297352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724968, 39.290489, 20.019417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011204, 39.024521, 19.933807>,  <37.182945, 38.864941, 19.882442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011204, 39.024521, 19.933807>,  <36.724968, 39.290489, 20.019417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011204, 39.024521, 19.933807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153439, 0.149281, -0.976817,
		0.681458, 0.731841, 0.004799,
		0.715591, -0.664924, -0.214022,
		37.225880, 38.825043, 19.869600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127552, 39.705894, 19.666855>,  <36.724968, 39.290489, 20.019417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127552, 39.705894, 19.666855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235012, 39.342232, 19.539564>,  <37.299488, 39.124035, 19.463190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235012, 39.342232, 19.539564>,  <37.127552, 39.705894, 19.666855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235012, 39.342232, 19.539564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012082, 0.333526, -0.942664,
		0.963163, 0.249398, 0.100585,
		0.268646, -0.909154, -0.318227,
		37.315605, 39.069485, 19.444096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719021, 39.812889, 19.222830>,  <37.127552, 39.705894, 19.666855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719021, 39.812889, 19.222830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597126, 39.448292, 19.112324>,  <37.523991, 39.229534, 19.046021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597126, 39.448292, 19.112324>,  <37.719021, 39.812889, 19.222830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597126, 39.448292, 19.112324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331335, 0.170488, -0.927982,
		0.892946, -0.374327, 0.250054,
		-0.304738, -0.911489, -0.276264,
		37.505703, 39.174847, 19.029444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085758, 39.716000, 18.606211>,  <37.719021, 39.812889, 19.222830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085758, 39.716000, 18.606211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844612, 39.397842, 18.581205>,  <37.699924, 39.206947, 18.566202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844612, 39.397842, 18.581205>,  <38.085758, 39.716000, 18.606211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844612, 39.397842, 18.581205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183332, -0.061850, -0.981103,
		0.776494, -0.602934, 0.183108,
		-0.602866, -0.795390, -0.062511,
		37.663754, 39.159225, 18.562452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436848, 39.132492, 18.306919>,  <38.085758, 39.716000, 18.606211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436848, 39.132492, 18.306919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047619, 39.132648, 18.214727>,  <37.814079, 39.132744, 18.159412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047619, 39.132648, 18.214727>,  <38.436848, 39.132492, 18.306919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047619, 39.132648, 18.214727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230481, -0.000496, -0.973077,
		-0.000496, -1.000000, 0.000393,
		0.973077, -0.000393, 0.230481,
		37.755695, 39.132767, 18.145582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470398, 38.800861, 17.590635>,  <38.436848, 39.132492, 18.306919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470398, 38.800861, 17.590635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108936, 38.968094, 17.627748>,  <37.892059, 39.068436, 17.650017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108936, 38.968094, 17.627748>,  <38.470398, 38.800861, 17.590635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108936, 38.968094, 17.627748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133835, -0.069892, -0.988536,
		-0.406806, -0.905716, 0.119113,
		-0.903658, 0.418084, 0.092784,
		37.837837, 39.093517, 17.655584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960438, 38.293190, 17.179802>,  <38.470398, 38.800861, 17.590635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960438, 38.293190, 17.179802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819782, 38.665867, 17.216248>,  <37.735390, 38.889473, 17.238115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819782, 38.665867, 17.216248>,  <37.960438, 38.293190, 17.179802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819782, 38.665867, 17.216248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087900, 0.129759, -0.987642,
		-0.932001, -0.339282, -0.127524,
		-0.351636, 0.931692, 0.091113,
		37.714291, 38.945374, 17.243582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199654, 38.324013, 16.917282>,  <37.960438, 38.293190, 17.179802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199654, 38.324013, 16.917282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370144, 38.685658, 16.905191>,  <37.472439, 38.902645, 16.897936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370144, 38.685658, 16.905191>,  <37.199654, 38.324013, 16.917282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370144, 38.685658, 16.905191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159553, 0.042242, -0.986285,
		-0.890437, 0.425200, 0.162258,
		0.426222, 0.904114, -0.030228,
		37.498009, 38.956890, 16.896124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688515, 38.732056, 16.532869>,  <37.199654, 38.324013, 16.917282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688515, 38.732056, 16.532869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041264, 38.920345, 16.522156>,  <37.252914, 39.033318, 16.515728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041264, 38.920345, 16.522156>,  <36.688515, 38.732056, 16.532869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041264, 38.920345, 16.522156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168815, 0.262207, -0.950131,
		-0.440223, 0.842419, 0.310699,
		0.881876, 0.470720, -0.026784,
		37.305828, 39.061562, 16.514120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555996, 39.325638, 16.092962>,  <36.688515, 38.732056, 16.532869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555996, 39.325638, 16.092962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955490, 39.331226, 16.073626>,  <37.195187, 39.334579, 16.062023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955490, 39.331226, 16.073626>,  <36.555996, 39.325638, 16.092962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955490, 39.331226, 16.073626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050271, 0.320057, -0.946064,
		0.002253, 0.947295, 0.320354,
		0.998733, 0.013973, -0.048343,
		37.255112, 39.335419, 16.059122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743935, 40.027954, 15.869883>,  <36.555996, 39.325638, 16.092962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743935, 40.027954, 15.869883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058418, 39.795593, 15.785573>,  <37.247108, 39.656178, 15.734987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058418, 39.795593, 15.785573>,  <36.743935, 40.027954, 15.869883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058418, 39.795593, 15.785573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026907, 0.308579, -0.950818,
		0.617371, 0.753216, 0.226978,
		0.786212, -0.580900, -0.210775,
		37.294281, 39.621323, 15.722341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135216, 40.528030, 15.442326>,  <36.743935, 40.027954, 15.869883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135216, 40.528030, 15.442326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318905, 40.176949, 15.387547>,  <37.429119, 39.966301, 15.354679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318905, 40.176949, 15.387547>,  <37.135216, 40.528030, 15.442326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318905, 40.176949, 15.387547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151274, 0.229178, -0.961558,
		0.875348, 0.420850, 0.238016,
		0.459220, -0.877703, -0.136947,
		37.456673, 39.913639, 15.346462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871597, 40.643120, 15.179498>,  <37.135216, 40.528030, 15.442326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871597, 40.643120, 15.179498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766258, 40.270336, 15.079822>,  <37.703056, 40.046665, 15.020016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766258, 40.270336, 15.079822>,  <37.871597, 40.643120, 15.179498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766258, 40.270336, 15.079822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171189, 0.209064, -0.962802,
		0.949391, -0.296210, 0.104485,
		-0.263348, -0.931961, -0.249191,
		37.687252, 39.990749, 15.005064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438316, 40.306301, 14.730316>,  <37.871597, 40.643120, 15.179498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438316, 40.306301, 14.730316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069748, 40.158447, 14.682395>,  <37.848606, 40.069733, 14.653643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.069748, 40.158447, 14.682395>,  <38.438316, 40.306301, 14.730316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069748, 40.158447, 14.682395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050815, 0.191044, -0.980265,
		0.385231, -0.909324, -0.157248,
		-0.921420, -0.369638, -0.119803,
		37.793324, 40.047558, 14.646454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525909, 39.897045, 14.075998>,  <38.438316, 40.306301, 14.730316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525909, 39.897045, 14.075998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128460, 39.910259, 14.119105>,  <37.889988, 39.918186, 14.144970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128460, 39.910259, 14.119105>,  <38.525909, 39.897045, 14.075998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128460, 39.910259, 14.119105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108108, -0.008670, -0.994102,
		-0.031906, -0.999417, 0.012186,
		-0.993627, 0.033035, 0.107768,
		37.830372, 39.920170, 14.151436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207870, 39.457630, 13.565196>,  <38.525909, 39.897045, 14.075998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207870, 39.457630, 13.565196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916821, 39.713287, 13.664842>,  <37.742191, 39.866680, 13.724628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916821, 39.713287, 13.664842>,  <38.207870, 39.457630, 13.565196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916821, 39.713287, 13.664842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169190, 0.184722, -0.968118,
		-0.664783, -0.746574, -0.026272,
		-0.727625, 0.639144, 0.249113,
		37.698532, 39.905029, 13.739575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770664, 39.380489, 12.935606>,  <38.207870, 39.457630, 13.565196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770664, 39.380489, 12.935606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628014, 39.708027, 13.115525>,  <37.542423, 39.904549, 13.223476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628014, 39.708027, 13.115525>,  <37.770664, 39.380489, 12.935606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628014, 39.708027, 13.115525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320987, 0.344753, -0.882107,
		-0.877374, -0.458962, 0.139889,
		-0.356627, 0.818840, 0.449798,
		37.521027, 39.953678, 13.250464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033188, 39.356163, 12.902629>,  <37.770664, 39.380489, 12.935606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033188, 39.356163, 12.902629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161926, 39.732250, 12.947190>,  <37.239170, 39.957901, 12.973927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161926, 39.732250, 12.947190>,  <37.033188, 39.356163, 12.902629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161926, 39.732250, 12.947190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514054, 0.272344, -0.813374,
		-0.795085, 0.204517, 0.570975,
		0.321850, 0.940214, 0.111404,
		37.258480, 40.014313, 12.980612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517017, 39.847908, 12.684074>,  <37.033188, 39.356163, 12.902629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517017, 39.847908, 12.684074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800304, 40.129601, 12.704048>,  <36.970276, 40.298615, 12.716032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800304, 40.129601, 12.704048>,  <36.517017, 39.847908, 12.684074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800304, 40.129601, 12.704048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331846, 0.394484, -0.856890,
		-0.623143, 0.590294, 0.513075,
		0.708216, 0.704227, 0.049933,
		37.012768, 40.340870, 12.719028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166462, 40.635376, 12.578566>,  <36.517017, 39.847908, 12.684074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166462, 40.635376, 12.578566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552010, 40.607193, 12.475805>,  <36.783337, 40.590282, 12.414149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552010, 40.607193, 12.475805>,  <36.166462, 40.635376, 12.578566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552010, 40.607193, 12.475805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166326, 0.594117, -0.786995,
		0.208082, 0.801287, 0.560929,
		0.963866, -0.070462, -0.256900,
		36.841171, 40.586056, 12.398735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573986, 40.289249, 12.255772>,  <36.166462, 40.635376, 12.578566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573986, 40.289249, 12.255772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226799, 40.090778, 12.247391>,  <35.018486, 39.971695, 12.242362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226799, 40.090778, 12.247391>,  <35.573986, 40.289249, 12.255772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226799, 40.090778, 12.247391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141723, -0.287910, 0.947113,
		-0.475972, 0.819092, 0.320216,
		-0.867966, -0.496182, -0.020953,
		34.966408, 39.941925, 12.241105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204315, 40.536129, 12.762885>,  <35.573986, 40.289249, 12.255772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204315, 40.536129, 12.762885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015106, 40.189640, 12.698499>,  <34.901581, 39.981747, 12.659867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015106, 40.189640, 12.698499>,  <35.204315, 40.536129, 12.762885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015106, 40.189640, 12.698499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212302, -0.065252, 0.975023,
		-0.855090, 0.495380, -0.153035,
		-0.473021, -0.866222, -0.160966,
		34.873199, 39.929771, 12.650208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575314, 40.604187, 13.064743>,  <35.204315, 40.536129, 12.762885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575314, 40.604187, 13.064743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601238, 40.206116, 13.035276>,  <34.616795, 39.967274, 13.017596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601238, 40.206116, 13.035276>,  <34.575314, 40.604187, 13.064743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601238, 40.206116, 13.035276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301864, -0.089916, 0.949102,
		-0.951146, -0.039277, -0.306235,
		0.064813, -0.995175, -0.073667,
		34.620682, 39.907562, 13.013176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072994, 40.335949, 13.496094>,  <34.575314, 40.604187, 13.064743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072994, 40.335949, 13.496094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356289, 40.056179, 13.457718>,  <34.526264, 39.888317, 13.434692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356289, 40.056179, 13.457718>,  <34.072994, 40.335949, 13.496094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356289, 40.056179, 13.457718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009369, -0.145195, 0.989359,
		-0.705912, -0.699802, -0.109385,
		0.708237, -0.699425, -0.095939,
		34.568760, 39.846352, 13.428936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743584, 39.719517, 13.723885>,  <34.072994, 40.335949, 13.496094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743584, 39.719517, 13.723885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137814, 39.669167, 13.769126>,  <34.374352, 39.638954, 13.796271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137814, 39.669167, 13.769126>,  <33.743584, 39.719517, 13.723885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137814, 39.669167, 13.769126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151955, -0.364129, 0.918869,
		-0.074479, -0.922803, -0.378005,
		0.985578, -0.125877, 0.113104,
		34.433487, 39.631405, 13.803057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734013, 39.249481, 14.295787>,  <33.743584, 39.719517, 13.723885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734013, 39.249481, 14.295787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116055, 39.363888, 14.264886>,  <34.345280, 39.432533, 14.246346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116055, 39.363888, 14.264886>,  <33.734013, 39.249481, 14.295787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116055, 39.363888, 14.264886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199908, -0.429723, 0.880554,
		0.218655, -0.856466, -0.467607,
		0.955106, 0.286015, -0.077253,
		34.402588, 39.449692, 14.241710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115906, 38.639656, 14.471493>,  <33.734013, 39.249481, 14.295787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115906, 38.639656, 14.471493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364784, 38.948536, 14.522996>,  <34.514111, 39.133862, 14.553898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364784, 38.948536, 14.522996>,  <34.115906, 38.639656, 14.471493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364784, 38.948536, 14.522996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164158, -0.289508, 0.942994,
		0.765453, -0.565595, -0.306894,
		0.622201, 0.772197, 0.128758,
		34.551445, 39.180195, 14.561624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646984, 38.329849, 14.851763>,  <34.115906, 38.639656, 14.471493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646984, 38.329849, 14.851763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678204, 38.724586, 14.908413>,  <34.696934, 38.961430, 14.942403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678204, 38.724586, 14.908413>,  <34.646984, 38.329849, 14.851763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678204, 38.724586, 14.908413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281341, -0.158087, 0.946497,
		0.956429, -0.034024, -0.289976,
		0.078045, 0.986839, 0.141626,
		34.701618, 39.020638, 14.950901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239944, 38.355087, 15.164477>,  <34.646984, 38.329849, 14.851763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239944, 38.355087, 15.164477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059875, 38.703304, 15.243973>,  <34.951832, 38.912235, 15.291670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059875, 38.703304, 15.243973>,  <35.239944, 38.355087, 15.164477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059875, 38.703304, 15.243973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305583, -0.058933, 0.950340,
		0.839023, 0.488552, -0.239492,
		-0.450177, 0.870542, 0.198739,
		34.924824, 38.964466, 15.303595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723671, 38.853317, 15.597254>,  <35.239944, 38.355087, 15.164477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723671, 38.853317, 15.597254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351330, 38.968655, 15.687031>,  <35.127926, 39.037857, 15.740897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351330, 38.968655, 15.687031>,  <35.723671, 38.853317, 15.597254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351330, 38.968655, 15.687031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207774, -0.087594, 0.974247,
		0.300574, 0.953513, 0.021627,
		-0.930852, 0.288340, 0.224444,
		35.072075, 39.055157, 15.754364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776764, 39.358223, 16.213568>,  <35.723671, 38.853317, 15.597254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776764, 39.358223, 16.213568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390961, 39.252789, 16.207405>,  <35.159477, 39.189526, 16.203707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390961, 39.252789, 16.207405>,  <35.776764, 39.358223, 16.213568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390961, 39.252789, 16.207405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069296, -0.309005, 0.948533,
		-0.254785, 0.913803, 0.316304,
		-0.964512, -0.263590, -0.015407,
		35.101608, 39.173710, 16.202784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505207, 39.662666, 16.776638>,  <35.776764, 39.358223, 16.213568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505207, 39.662666, 16.776638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250618, 39.368198, 16.684589>,  <35.097862, 39.191517, 16.629360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250618, 39.368198, 16.684589>,  <35.505207, 39.662666, 16.776638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250618, 39.368198, 16.684589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023337, -0.316602, 0.948271,
		-0.770942, 0.598182, 0.218690,
		-0.636477, -0.736166, -0.230122,
		35.059673, 39.147350, 16.615553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915985, 39.663677, 17.218998>,  <35.505207, 39.662666, 16.776638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915985, 39.663677, 17.218998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918419, 39.285477, 17.088778>,  <34.919880, 39.058556, 17.010645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918419, 39.285477, 17.088778>,  <34.915985, 39.663677, 17.218998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918419, 39.285477, 17.088778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174054, -0.321588, 0.930745,
		-0.984717, 0.051003, -0.166524,
		0.006081, -0.945505, -0.325551,
		34.920242, 39.001823, 16.991112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516453, 39.382835, 17.685345>,  <34.915985, 39.663677, 17.218998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516453, 39.382835, 17.685345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678471, 39.059433, 17.514574>,  <34.775681, 38.865391, 17.412111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678471, 39.059433, 17.514574>,  <34.516453, 39.382835, 17.685345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678471, 39.059433, 17.514574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065379, -0.491361, 0.868499,
		-0.911958, -0.323866, -0.251880,
		0.405042, -0.808502, -0.426926,
		34.799984, 38.816883, 17.386496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256012, 38.823662, 18.006092>,  <34.516453, 39.382835, 17.685345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256012, 38.823662, 18.006092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572041, 38.647930, 17.835083>,  <34.761658, 38.542492, 17.732477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572041, 38.647930, 17.835083>,  <34.256012, 38.823662, 18.006092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572041, 38.647930, 17.835083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129411, -0.562162, 0.816839,
		-0.599201, -0.700687, -0.387293,
		0.790070, -0.439331, -0.427525,
		34.809063, 38.516132, 17.706825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119057, 38.078789, 17.946402>,  <34.256012, 38.823662, 18.006092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119057, 38.078789, 17.946402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516678, 38.121029, 17.935705>,  <34.755249, 38.146374, 17.929287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516678, 38.121029, 17.935705>,  <34.119057, 38.078789, 17.946402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516678, 38.121029, 17.935705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088388, -0.638443, 0.764577,
		0.063665, -0.762391, -0.643978,
		0.994049, 0.105597, -0.026739,
		34.814892, 38.152706, 17.927683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408577, 37.420662, 18.000296>,  <34.119057, 38.078789, 17.946402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408577, 37.420662, 18.000296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714027, 37.652233, 18.114641>,  <34.897297, 37.791176, 18.183249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714027, 37.652233, 18.114641>,  <34.408577, 37.420662, 18.000296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714027, 37.652233, 18.114641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137899, -0.578772, 0.803746,
		0.630760, -0.574341, -0.521799,
		0.763627, 0.578926, 0.285865,
		34.943115, 37.825912, 18.200401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844307, 36.922073, 18.339666>,  <34.408577, 37.420662, 18.000296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844307, 36.922073, 18.339666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979485, 37.280899, 18.453552>,  <35.060593, 37.496197, 18.521883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979485, 37.280899, 18.453552>,  <34.844307, 36.922073, 18.339666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979485, 37.280899, 18.453552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091629, -0.332434, 0.938665,
		0.936696, -0.291127, -0.194541,
		0.337943, 0.897069, 0.284714,
		35.080868, 37.550018, 18.538967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458664, 36.713165, 18.710854>,  <34.844307, 36.922073, 18.339666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458664, 36.713165, 18.710854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295208, 37.062824, 18.815836>,  <35.197132, 37.272617, 18.878826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295208, 37.062824, 18.815836>,  <35.458664, 36.713165, 18.710854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295208, 37.062824, 18.815836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028332, -0.299572, 0.953653,
		0.912254, 0.382267, 0.147184,
		-0.408643, 0.874144, 0.262456,
		35.172615, 37.325066, 18.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814487, 36.798710, 19.229450>,  <35.458664, 36.713165, 18.710854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814487, 36.798710, 19.229450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499313, 37.041264, 19.272259>,  <35.310207, 37.186794, 19.297945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499313, 37.041264, 19.272259>,  <35.814487, 36.798710, 19.229450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499313, 37.041264, 19.272259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105551, -0.304247, 0.946727,
		0.606638, 0.734668, 0.303733,
		-0.787940, 0.606380, 0.107023,
		35.262932, 37.223179, 19.304365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.522770, 39.070625, 24.923996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172646, 38.956009, 24.768192>,  <37.962570, 38.887238, 24.674711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172646, 38.956009, 24.768192>,  <38.522770, 39.070625, 24.923996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172646, 38.956009, 24.768192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255014, -0.410842, 0.875315,
		-0.410842, 0.865507, 0.286543,
		-0.875315, -0.286543, -0.389507,
		37.910049, 38.870045, 24.651340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962730, 39.362892, 25.289068>,  <38.522770, 39.070625, 24.923996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962730, 39.362892, 25.289068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790718, 39.054871, 25.100563>,  <37.687511, 38.870056, 24.987459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.790718, 39.054871, 25.100563>,  <37.962730, 39.362892, 25.289068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790718, 39.054871, 25.100563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398763, -0.306309, 0.864386,
		-0.809976, 0.559636, -0.175347,
		-0.430031, -0.770054, -0.471265,
		37.661709, 38.823856, 24.959183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324394, 39.322144, 25.656355>,  <37.962730, 39.362892, 25.289068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324394, 39.322144, 25.656355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410900, 38.974838, 25.477762>,  <37.462803, 38.766453, 25.370607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410900, 38.974838, 25.477762>,  <37.324394, 39.322144, 25.656355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410900, 38.974838, 25.477762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315954, -0.494933, 0.809453,
		-0.923798, -0.033987, -0.381368,
		0.216263, -0.868266, -0.446479,
		37.475780, 38.714359, 25.343819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679703, 38.901016, 25.639250>,  <37.324394, 39.322144, 25.656355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679703, 38.901016, 25.639250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997025, 38.658813, 25.613834>,  <37.187416, 38.513493, 25.598585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997025, 38.658813, 25.613834>,  <36.679703, 38.901016, 25.639250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997025, 38.658813, 25.613834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399585, -0.596557, 0.696025,
		-0.459350, -0.526770, -0.715200,
		0.793303, -0.605502, -0.063539,
		37.235016, 38.477161, 25.594772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360226, 38.325024, 25.638540>,  <36.679703, 38.901016, 25.639250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360226, 38.325024, 25.638540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739815, 38.235172, 25.727072>,  <36.967567, 38.181263, 25.780191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739815, 38.235172, 25.727072>,  <36.360226, 38.325024, 25.638540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739815, 38.235172, 25.727072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312583, -0.577319, 0.754317,
		-0.041665, -0.785012, -0.618077,
		0.948976, -0.224629, 0.221328,
		37.024509, 38.167782, 25.793470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434757, 37.614597, 25.746836>,  <36.360226, 38.325024, 25.638540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434757, 37.614597, 25.746836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761955, 37.732944, 25.944159>,  <36.958275, 37.803951, 26.062551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761955, 37.732944, 25.944159>,  <36.434757, 37.614597, 25.746836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761955, 37.732944, 25.944159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199325, -0.658661, 0.725559,
		0.539591, -0.691829, -0.479806,
		0.817992, 0.295868, 0.493307,
		37.007355, 37.821705, 26.092150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580124, 37.029495, 26.190504>,  <36.434757, 37.614597, 25.746836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580124, 37.029495, 26.190504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791767, 37.340263, 26.327003>,  <36.918751, 37.526722, 26.408903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791767, 37.340263, 26.327003>,  <36.580124, 37.029495, 26.190504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791767, 37.340263, 26.327003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153107, -0.308143, 0.938939,
		0.834630, -0.549043, -0.044088,
		0.529103, 0.776917, 0.341247,
		36.950497, 37.573338, 26.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112377, 36.702610, 26.687243>,  <36.580124, 37.029495, 26.190504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112377, 36.702610, 26.687243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048843, 37.082466, 26.795286>,  <37.010723, 37.310379, 26.860111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048843, 37.082466, 26.795286>,  <37.112377, 36.702610, 26.687243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048843, 37.082466, 26.795286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359737, -0.310441, 0.879895,
		0.919435, 0.042593, 0.390930,
		-0.158838, 0.949638, 0.270108,
		37.001194, 37.367359, 26.876318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414425, 36.775410, 27.373737>,  <37.112377, 36.702610, 26.687243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414425, 36.775410, 27.373737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.171230, 37.090179, 27.331596>,  <37.025314, 37.279041, 27.306313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.171230, 37.090179, 27.331596>,  <37.414425, 36.775410, 27.373737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171230, 37.090179, 27.331596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338457, -0.136858, 0.930977,
		0.718194, 0.601675, 0.349549,
		-0.607984, 0.786929, -0.105350,
		36.988834, 37.326260, 27.299992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445114, 37.089981, 27.968040>,  <37.414425, 36.775410, 27.373737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445114, 37.089981, 27.968040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.098896, 37.235683, 27.830544>,  <36.891167, 37.323105, 27.748045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.098896, 37.235683, 27.830544>,  <37.445114, 37.089981, 27.968040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098896, 37.235683, 27.830544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457636, -0.296335, 0.838305,
		0.203491, 0.882897, 0.423184,
		-0.865541, 0.364252, -0.343744,
		36.839233, 37.344959, 27.727421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082207, 37.499405, 28.472382>,  <37.445114, 37.089981, 27.968040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082207, 37.499405, 28.472382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784142, 37.367130, 28.240732>,  <36.605305, 37.287766, 28.101742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784142, 37.367130, 28.240732>,  <37.082207, 37.499405, 28.472382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784142, 37.367130, 28.240732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437687, -0.412688, 0.798823,
		-0.503158, 0.848725, 0.162781,
		-0.745159, -0.330687, -0.579123,
		36.560593, 37.267925, 28.066996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466991, 37.576691, 28.871565>,  <37.082207, 37.499405, 28.472382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466991, 37.576691, 28.871565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305008, 37.352173, 28.582857>,  <36.207817, 37.217461, 28.409632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305008, 37.352173, 28.582857>,  <36.466991, 37.576691, 28.871565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305008, 37.352173, 28.582857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761410, -0.230029, 0.606086,
		-0.506222, 0.795006, -0.334223,
		-0.404961, -0.561295, -0.721771,
		36.183521, 37.183784, 28.366325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776775, 37.843941, 28.702612>,  <36.466991, 37.576691, 28.871565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776775, 37.843941, 28.702612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.792210, 37.453293, 28.618015>,  <35.801472, 37.218906, 28.567257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.792210, 37.453293, 28.618015>,  <35.776775, 37.843941, 28.702612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792210, 37.453293, 28.618015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630436, -0.188006, 0.753129,
		-0.775281, 0.104270, -0.622950,
		0.038589, -0.976617, -0.211493,
		35.803787, 37.160309, 28.554567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921043, 38.437954, 29.173925>,  <35.776775, 37.843941, 28.702612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921043, 38.437954, 29.173925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.847469, 38.633457, 29.515047>,  <35.803326, 38.750759, 29.719721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.847469, 38.633457, 29.515047>,  <35.921043, 38.437954, 29.173925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847469, 38.633457, 29.515047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588452, 0.640199, -0.493832,
		-0.787332, -0.592669, 0.169858,
		-0.183936, 0.488763, 0.852807,
		35.792290, 38.780087, 29.770889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079685, 38.487724, 29.216652>,  <35.921043, 38.437954, 29.173925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079685, 38.487724, 29.216652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.301678, 38.753098, 29.417389>,  <35.434875, 38.912323, 29.537830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.301678, 38.753098, 29.417389>,  <35.079685, 38.487724, 29.216652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301678, 38.753098, 29.417389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459926, 0.747403, -0.479434,
		-0.693152, 0.035268, 0.719928,
		0.554985, 0.663434, 0.501843,
		35.468174, 38.952129, 29.567942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644299, 38.998817, 29.412302>,  <35.079685, 38.487724, 29.216652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644299, 38.998817, 29.412302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006424, 39.167877, 29.429131>,  <35.223701, 39.269314, 29.439228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006424, 39.167877, 29.429131>,  <34.644299, 38.998817, 29.412302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006424, 39.167877, 29.429131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359137, 0.814607, -0.455451,
		-0.226768, 0.397218, 0.889266,
		0.905316, 0.422650, 0.042071,
		35.278019, 39.294674, 29.441751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498581, 39.664597, 29.391769>,  <34.644299, 38.998817, 29.412302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498581, 39.664597, 29.391769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894413, 39.688435, 29.339352>,  <35.131912, 39.702740, 29.307901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894413, 39.688435, 29.339352>,  <34.498581, 39.664597, 29.391769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894413, 39.688435, 29.339352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121858, 0.831446, -0.542078,
		0.076647, 0.552400, 0.830048,
		0.989584, 0.059600, -0.131042,
		35.191288, 39.706314, 29.300039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762135, 40.331486, 29.540768>,  <34.498581, 39.664597, 29.391769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762135, 40.331486, 29.540768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028862, 40.168232, 29.291359>,  <35.188900, 40.070282, 29.141714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028862, 40.168232, 29.291359>,  <34.762135, 40.331486, 29.540768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028862, 40.168232, 29.291359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283355, 0.634995, -0.718673,
		0.689245, 0.655905, 0.307782,
		0.666821, -0.408131, -0.623521,
		35.228909, 40.045792, 29.104303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986782, 40.806717, 29.037205>,  <34.762135, 40.331486, 29.540768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986782, 40.806717, 29.037205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153385, 40.500816, 28.840559>,  <35.253345, 40.317276, 28.722572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153385, 40.500816, 28.840559>,  <34.986782, 40.806717, 29.037205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153385, 40.500816, 28.840559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017700, 0.547468, -0.836639,
		0.908961, 0.339764, 0.241560,
		0.416506, -0.764748, -0.491613,
		35.278336, 40.271393, 28.693075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574486, 40.995224, 28.692123>,  <34.986782, 40.806717, 29.037205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574486, 40.995224, 28.692123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.422489, 40.692165, 28.479864>,  <35.331291, 40.510330, 28.352509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.422489, 40.692165, 28.479864>,  <35.574486, 40.995224, 28.692123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422489, 40.692165, 28.479864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073620, 0.596629, -0.799133,
		0.922057, -0.264594, -0.282489,
		-0.379987, -0.757643, -0.530647,
		35.308495, 40.464874, 28.320671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919441, 41.037472, 28.078253>,  <35.574486, 40.995224, 28.692123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919441, 41.037472, 28.078253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.620682, 40.794086, 27.970984>,  <35.441425, 40.648056, 27.906622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.620682, 40.794086, 27.970984>,  <35.919441, 41.037472, 28.078253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620682, 40.794086, 27.970984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017890, 0.421545, -0.906631,
		0.664698, -0.672363, -0.325736,
		-0.746898, -0.608464, -0.268172,
		35.396614, 40.611549, 27.890532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051826, 40.831963, 27.348581>,  <35.919441, 41.037472, 28.078253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051826, 40.831963, 27.348581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.662731, 40.753464, 27.397997>,  <35.429272, 40.706364, 27.427647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.662731, 40.753464, 27.397997>,  <36.051826, 40.831963, 27.348581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662731, 40.753464, 27.397997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166205, 0.218498, -0.961579,
		0.161719, -0.955899, -0.245160,
		-0.972740, -0.196252, 0.123539,
		35.370911, 40.694588, 27.435059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960117, 40.433605, 26.809488>,  <36.051826, 40.831963, 27.348581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960117, 40.433605, 26.809488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.600891, 40.572502, 26.917496>,  <35.385357, 40.655838, 26.982300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.600891, 40.572502, 26.917496>,  <35.960117, 40.433605, 26.809488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600891, 40.572502, 26.917496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260376, 0.075115, -0.962581,
		-0.354528, -0.934764, 0.022954,
		-0.898062, 0.347238, 0.270020,
		35.331474, 40.676674, 26.998503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577309, 40.154938, 26.343840>,  <35.960117, 40.433605, 26.809488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577309, 40.154938, 26.343840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339840, 40.443970, 26.485508>,  <35.197357, 40.617390, 26.570509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339840, 40.443970, 26.485508>,  <35.577309, 40.154938, 26.343840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339840, 40.443970, 26.485508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296748, 0.212523, -0.931007,
		-0.747992, -0.657813, 0.088253,
		-0.593673, 0.722575, 0.354170,
		35.161739, 40.660744, 26.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900978, 39.878803, 26.102770>,  <35.577309, 40.154938, 26.343840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900978, 39.878803, 26.102770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920509, 40.276165, 26.144251>,  <34.932228, 40.514584, 26.169140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920509, 40.276165, 26.144251>,  <34.900978, 39.878803, 26.102770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920509, 40.276165, 26.144251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179136, 0.110855, -0.977559,
		-0.982612, 0.029155, 0.183368,
		0.048828, 0.993409, 0.103705,
		34.935158, 40.574188, 26.175362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317554, 40.157352, 25.636324>,  <34.900978, 39.878803, 26.102770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317554, 40.157352, 25.636324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.542530, 40.472202, 25.737595>,  <34.677517, 40.661114, 25.798357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.542530, 40.472202, 25.737595>,  <34.317554, 40.157352, 25.636324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542530, 40.472202, 25.737595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134275, 0.389083, -0.911364,
		-0.815863, 0.478592, 0.324527,
		0.562440, 0.787124, 0.253175,
		34.711262, 40.708340, 25.813547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910248, 40.733105, 25.375290>,  <34.317554, 40.157352, 25.636324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910248, 40.733105, 25.375290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297226, 40.821621, 25.424427>,  <34.529411, 40.874729, 25.453909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297226, 40.821621, 25.424427>,  <33.910248, 40.733105, 25.375290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297226, 40.821621, 25.424427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048520, 0.314211, -0.948112,
		-0.248403, 0.923203, 0.293244,
		0.967441, 0.221286, 0.122845,
		34.587460, 40.888008, 25.461281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899811, 41.379200, 24.992947>,  <33.910248, 40.733105, 25.375290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899811, 41.379200, 24.992947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.288700, 41.298450, 25.040310>,  <34.522034, 41.250000, 25.068727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.288700, 41.298450, 25.040310>,  <33.899811, 41.379200, 24.992947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288700, 41.298450, 25.040310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184802, 0.351738, -0.917676,
		0.143609, 0.914071, 0.379277,
		0.972227, -0.201877, 0.118409,
		34.580368, 41.237888, 25.075832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365192, 42.010490, 25.198141>,  <33.899811, 41.379200, 24.992947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365192, 42.010490, 25.198141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.013268, 41.986355, 25.009550>,  <32.802113, 41.971874, 24.896395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.013268, 41.986355, 25.009550>,  <33.365192, 42.010490, 25.198141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013268, 41.986355, 25.009550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328994, -0.638619, 0.695650,
		-0.343069, 0.767154, 0.542013,
		-0.879811, -0.060338, -0.471479,
		32.749325, 41.968254, 24.868107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922791, 42.276279, 25.667244>,  <33.365192, 42.010490, 25.198141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922791, 42.276279, 25.667244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.685936, 42.083622, 25.408819>,  <32.543823, 41.968029, 25.253765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.685936, 42.083622, 25.408819>,  <32.922791, 42.276279, 25.667244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685936, 42.083622, 25.408819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356798, -0.562157, 0.746107,
		-0.722546, 0.672309, 0.161022,
		-0.592134, -0.481644, -0.646062,
		32.508297, 41.939129, 25.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272705, 42.324211, 26.025400>,  <32.922791, 42.276279, 25.667244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272705, 42.324211, 26.025400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.256706, 42.024025, 25.761522>,  <32.247108, 41.843914, 25.603195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.256706, 42.024025, 25.761522>,  <32.272705, 42.324211, 26.025400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256706, 42.024025, 25.761522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337563, -0.611257, 0.715833,
		-0.940453, 0.251318, -0.228883,
		-0.039996, -0.750469, -0.659694,
		32.244709, 41.798885, 25.563614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580564, 42.176544, 26.132404>,  <32.272705, 42.324211, 26.025400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580564, 42.176544, 26.132404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.785484, 41.867886, 25.981617>,  <31.908436, 41.682690, 25.891146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.785484, 41.867886, 25.981617>,  <31.580564, 42.176544, 26.132404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785484, 41.867886, 25.981617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530163, -0.629481, 0.568050,
		-0.675631, -0.091156, -0.731583,
		0.512298, -0.771651, -0.376969,
		31.939175, 41.636391, 25.868526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075085, 41.675545, 25.902210>,  <31.580564, 42.176544, 26.132404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075085, 41.675545, 25.902210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.408026, 41.470398, 25.986265>,  <31.607790, 41.347309, 26.036697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.408026, 41.470398, 25.986265>,  <31.075085, 41.675545, 25.902210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408026, 41.470398, 25.986265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527866, -0.617962, 0.582650,
		-0.168966, -0.595893, -0.785087,
		0.832351, -0.512869, 0.210137,
		31.657730, 41.316536, 26.049307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848999, 40.938911, 25.876265>,  <31.075085, 41.675545, 25.902210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848999, 40.938911, 25.876265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.201626, 40.934242, 26.065029>,  <31.413202, 40.931438, 26.178288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.201626, 40.934242, 26.065029>,  <30.848999, 40.938911, 25.876265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201626, 40.934242, 26.065029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320801, -0.748193, 0.580770,
		0.346299, -0.663378, -0.663329,
		0.881569, -0.011676, 0.471911,
		31.466097, 40.930740, 26.206602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050219, 40.284924, 25.738949>,  <30.848999, 40.938911, 25.876265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050219, 40.284924, 25.738949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.224493, 40.430038, 26.068449>,  <31.329058, 40.517109, 26.266150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.224493, 40.430038, 26.068449>,  <31.050219, 40.284924, 25.738949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224493, 40.430038, 26.068449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270800, -0.819945, 0.504339,
		0.858398, -0.442804, -0.258994,
		0.435684, 0.362788, 0.823750,
		31.355198, 40.538876, 26.315575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333944, 39.692547, 26.041862>,  <31.050219, 40.284924, 25.738949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333944, 39.692547, 26.041862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.339348, 39.969936, 26.330004>,  <31.342590, 40.136372, 26.502888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.339348, 39.969936, 26.330004>,  <31.333944, 39.692547, 26.041862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339348, 39.969936, 26.330004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229190, -0.699090, 0.677307,
		0.973288, -0.174246, 0.149495,
		0.013508, 0.693478, 0.720352,
		31.343401, 40.177979, 26.546110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636566, 39.395580, 26.697575>,  <31.333944, 39.692547, 26.041862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636566, 39.395580, 26.697575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.406288, 39.698471, 26.820980>,  <31.268122, 39.880207, 26.895023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.406288, 39.698471, 26.820980>,  <31.636566, 39.395580, 26.697575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406288, 39.698471, 26.820980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249284, -0.521893, 0.815773,
		0.778737, 0.392730, 0.489216,
		-0.575697, 0.757226, 0.308516,
		31.233580, 39.925640, 26.913534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674809, 39.207569, 27.321095>,  <31.636566, 39.395580, 26.697575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674809, 39.207569, 27.321095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.405628, 39.503365, 27.327953>,  <31.244120, 39.680843, 27.332069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.405628, 39.503365, 27.327953>,  <31.674809, 39.207569, 27.321095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405628, 39.503365, 27.327953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278868, -0.275109, 0.920080,
		0.685107, 0.614386, 0.391354,
		-0.672949, 0.739490, 0.017147,
		31.203743, 39.725212, 27.333097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722208, 39.653301, 27.994890>,  <31.674809, 39.207569, 27.321095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722208, 39.653301, 27.994890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.350651, 39.659714, 27.846889>,  <31.127716, 39.663563, 27.758089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.350651, 39.659714, 27.846889>,  <31.722208, 39.653301, 27.994890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350651, 39.659714, 27.846889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362917, -0.238577, 0.900762,
		-0.073830, 0.970991, 0.227432,
		-0.928892, 0.016036, -0.370004,
		31.071983, 39.664524, 27.735888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253223, 40.111015, 28.364969>,  <31.722208, 39.653301, 27.994890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253223, 40.111015, 28.364969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.040112, 39.812737, 28.204926>,  <30.912245, 39.633770, 28.108900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.040112, 39.812737, 28.204926>,  <31.253223, 40.111015, 28.364969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040112, 39.812737, 28.204926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333924, -0.249185, 0.909066,
		-0.777586, 0.617938, -0.116244,
		-0.532781, -0.745694, -0.400107,
		30.880278, 39.589027, 28.084894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.281361, 43.939861, 21.974146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979454, 43.741276, 21.802629>,  <33.798309, 43.622124, 21.699720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979454, 43.741276, 21.802629>,  <34.281361, 43.939861, 21.974146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979454, 43.741276, 21.802629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243860, -0.394463, 0.885963,
		-0.608986, 0.773258, 0.176660,
		-0.754763, -0.496459, -0.428789,
		33.753025, 43.592339, 21.673992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639252, 44.183929, 22.307066>,  <34.281361, 43.939861, 21.974146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639252, 44.183929, 22.307066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546890, 43.824093, 22.158791>,  <33.491474, 43.608189, 22.069824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546890, 43.824093, 22.158791>,  <33.639252, 44.183929, 22.307066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546890, 43.824093, 22.158791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315756, -0.291082, 0.903089,
		-0.920316, 0.325575, -0.216841,
		-0.230905, -0.899596, -0.370690,
		33.477619, 43.554214, 22.047585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910740, 44.105553, 22.394073>,  <33.639252, 44.183929, 22.307066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910740, 44.105553, 22.394073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062069, 43.735325, 22.388596>,  <33.152866, 43.513187, 22.385309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062069, 43.735325, 22.388596>,  <32.910740, 44.105553, 22.394073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062069, 43.735325, 22.388596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517284, -0.223661, 0.826071,
		-0.767650, -0.305440, -0.563400,
		0.378326, -0.925571, -0.013694,
		33.175568, 43.457653, 22.384487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402679, 43.671192, 22.680998>,  <32.910740, 44.105553, 22.394073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402679, 43.671192, 22.680998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706696, 43.411617, 22.694956>,  <32.889107, 43.255871, 22.703331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706696, 43.411617, 22.694956>,  <32.402679, 43.671192, 22.680998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706696, 43.411617, 22.694956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436427, -0.469888, 0.767291,
		-0.481535, -0.598395, -0.640349,
		0.760036, -0.648944, 0.034888,
		32.934708, 43.216934, 22.705423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142582, 43.000210, 22.747952>,  <32.402679, 43.671192, 22.680998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142582, 43.000210, 22.747952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518940, 42.938190, 22.868397>,  <32.744755, 42.900978, 22.940664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518940, 42.938190, 22.868397>,  <32.142582, 43.000210, 22.747952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518940, 42.938190, 22.868397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328932, -0.630184, 0.703329,
		0.080707, -0.760808, -0.643940,
		0.940899, -0.155049, 0.301114,
		32.801208, 42.891674, 22.958731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175377, 42.279579, 22.840803>,  <32.142582, 43.000210, 22.747952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175377, 42.279579, 22.840803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471848, 42.447514, 23.050335>,  <32.649731, 42.548275, 23.176054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471848, 42.447514, 23.050335>,  <32.175377, 42.279579, 22.840803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471848, 42.447514, 23.050335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249372, -0.552281, 0.795487,
		0.623278, -0.720222, -0.304639,
		0.741174, 0.419841, 0.523828,
		32.694199, 42.573467, 23.207483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610283, 41.721531, 23.102968>,  <32.175377, 42.279579, 22.840803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610283, 41.721531, 23.102968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713085, 42.012516, 23.357447>,  <32.774765, 42.187107, 23.510134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713085, 42.012516, 23.357447>,  <32.610283, 41.721531, 23.102968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713085, 42.012516, 23.357447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099000, -0.635029, 0.766118,
		0.961326, -0.259880, -0.091188,
		0.257006, 0.727461, 0.636198,
		32.790188, 42.230755, 23.548306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230927, 41.466831, 23.575970>,  <32.610283, 41.721531, 23.102968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230927, 41.466831, 23.575970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061947, 41.776928, 23.763817>,  <32.960560, 41.962986, 23.876524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061947, 41.776928, 23.763817>,  <33.230927, 41.466831, 23.575970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061947, 41.776928, 23.763817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065097, -0.542732, 0.837380,
		0.904046, 0.323179, 0.279742,
		-0.422448, 0.775240, 0.469616,
		32.935211, 42.009499, 23.904701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512344, 41.559277, 24.370695>,  <33.230927, 41.466831, 23.575970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512344, 41.559277, 24.370695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162575, 41.752850, 24.356880>,  <32.952713, 41.868996, 24.348591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162575, 41.752850, 24.356880>,  <33.512344, 41.559277, 24.370695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162575, 41.752850, 24.356880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338299, -0.557144, 0.758383,
		0.347766, 0.674830, 0.650894,
		-0.874421, 0.483937, -0.034538,
		32.900249, 41.898029, 24.346519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239758, 41.903011, 24.557604>,  <33.512344, 41.559277, 24.370695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239758, 41.903011, 24.557604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515305, 41.616505, 24.602188>,  <34.680634, 41.444599, 24.628939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515305, 41.616505, 24.602188>,  <34.239758, 41.903011, 24.557604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515305, 41.616505, 24.602188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298666, 0.140345, -0.943982,
		0.660500, 0.683568, 0.310604,
		0.688867, -0.716267, 0.111461,
		34.721966, 41.401623, 24.635626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898720, 42.224415, 24.402531>,  <34.239758, 41.903011, 24.557604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898720, 42.224415, 24.402531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959526, 41.830650, 24.367157>,  <34.996010, 41.594391, 24.345932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959526, 41.830650, 24.367157>,  <34.898720, 42.224415, 24.402531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959526, 41.830650, 24.367157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445537, 0.148118, -0.882926,
		0.882264, 0.094814, 0.461108,
		0.152012, -0.984414, -0.088436,
		35.005131, 41.535328, 24.340626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593430, 42.141579, 24.219614>,  <34.898720, 42.224415, 24.402531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593430, 42.141579, 24.219614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414711, 41.806076, 24.095123>,  <35.307480, 41.604774, 24.020430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414711, 41.806076, 24.095123>,  <35.593430, 42.141579, 24.219614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414711, 41.806076, 24.095123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517910, 0.041161, -0.854444,
		0.729481, -0.542950, 0.416010,
		-0.446797, -0.838756, -0.311225,
		35.280670, 41.554451, 24.001755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127064, 41.774200, 23.883099>,  <35.593430, 42.141579, 24.219614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127064, 41.774200, 23.883099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784817, 41.610313, 23.756573>,  <35.579468, 41.511982, 23.680658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784817, 41.610313, 23.756573>,  <36.127064, 41.774200, 23.883099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784817, 41.610313, 23.756573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354683, -0.019004, -0.934793,
		0.376986, -0.912016, 0.161578,
		-0.855618, -0.409713, -0.316312,
		35.528130, 41.487400, 23.661678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319748, 41.231876, 23.367006>,  <36.127064, 41.774200, 23.883099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319748, 41.231876, 23.367006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930481, 41.300034, 23.305159>,  <35.696918, 41.340927, 23.268051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930481, 41.300034, 23.305159>,  <36.319748, 41.231876, 23.367006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930481, 41.300034, 23.305159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144960, -0.067810, -0.987111,
		-0.178679, -0.983041, 0.041291,
		-0.973170, 0.170391, -0.154618,
		35.638531, 41.351151, 23.258774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175133, 40.738670, 22.857222>,  <36.319748, 41.231876, 23.367006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175133, 40.738670, 22.857222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931183, 41.055622, 22.851686>,  <35.784813, 41.245792, 22.848366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931183, 41.055622, 22.851686>,  <36.175133, 40.738670, 22.857222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931183, 41.055622, 22.851686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266143, 0.188337, -0.945355,
		-0.746470, -0.580233, -0.325748,
		-0.609876, 0.792375, -0.013837,
		35.748219, 41.293335, 22.847536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011261, 40.708359, 22.178061>,  <36.175133, 40.738670, 22.857222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011261, 40.708359, 22.178061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860405, 41.066986, 22.270948>,  <35.769890, 41.282162, 22.326681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860405, 41.066986, 22.270948>,  <36.011261, 40.708359, 22.178061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860405, 41.066986, 22.270948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146808, 0.305435, -0.940828,
		-0.914447, -0.320731, -0.246816,
		-0.377138, 0.896572, 0.232218,
		35.747265, 41.335957, 22.340614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439903, 40.815197, 21.662010>,  <36.011261, 40.708359, 22.178061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439903, 40.815197, 21.662010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575424, 41.159111, 21.814844>,  <35.656738, 41.365459, 21.906544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575424, 41.159111, 21.814844>,  <35.439903, 40.815197, 21.662010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575424, 41.159111, 21.814844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231527, 0.317425, -0.919585,
		-0.911925, 0.400022, -0.091518,
		0.338804, 0.859781, 0.382084,
		35.677067, 41.417046, 21.929470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090401, 41.399864, 21.422466>,  <35.439903, 40.815197, 21.662010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090401, 41.399864, 21.422466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447632, 41.549282, 21.522776>,  <35.661968, 41.638931, 21.582960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447632, 41.549282, 21.522776>,  <35.090401, 41.399864, 21.422466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447632, 41.549282, 21.522776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112502, 0.354264, -0.928353,
		-0.435618, 0.857300, 0.274360,
		0.893073, 0.373542, 0.250771,
		35.715553, 41.661346, 21.598007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156315, 41.801456, 20.937859>,  <35.090401, 41.399864, 21.422466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156315, 41.801456, 20.937859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523922, 41.788059, 21.094973>,  <35.744488, 41.780022, 21.189241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523922, 41.788059, 21.094973>,  <35.156315, 41.801456, 20.937859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523922, 41.788059, 21.094973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393524, 0.136681, -0.909097,
		-0.023237, 0.990049, 0.138793,
		0.919021, -0.033494, 0.392784,
		35.799629, 41.778011, 21.212809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444641, 42.425098, 20.747213>,  <35.156315, 41.801456, 20.937859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444641, 42.425098, 20.747213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764351, 42.199413, 20.829985>,  <35.956177, 42.064003, 20.879648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764351, 42.199413, 20.829985>,  <35.444641, 42.425098, 20.747213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764351, 42.199413, 20.829985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344932, 0.148741, -0.926768,
		0.492112, 0.812123, 0.313500,
		0.799279, -0.564210, 0.206930,
		36.004135, 42.030151, 20.892063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107883, 42.792027, 20.699356>,  <35.444641, 42.425098, 20.747213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107883, 42.792027, 20.699356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178078, 42.404003, 20.632200>,  <36.220196, 42.171188, 20.591906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178078, 42.404003, 20.632200>,  <36.107883, 42.792027, 20.699356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178078, 42.404003, 20.632200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576085, 0.239478, -0.781522,
		0.798329, 0.040430, 0.600863,
		0.175490, -0.970060, -0.167891,
		36.230724, 42.112984, 20.581833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824203, 42.807964, 20.459108>,  <36.107883, 42.792027, 20.699356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824203, 42.807964, 20.459108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670307, 42.455544, 20.349035>,  <36.577969, 42.244091, 20.282991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670307, 42.455544, 20.349035>,  <36.824203, 42.807964, 20.459108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670307, 42.455544, 20.349035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680162, -0.069073, -0.729800,
		0.623982, -0.467954, 0.625832,
		-0.384741, -0.881050, -0.275184,
		36.554886, 42.191227, 20.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487179, 42.435711, 20.331865>,  <36.824203, 42.807964, 20.459108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487179, 42.435711, 20.331865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167004, 42.266342, 20.162153>,  <36.974899, 42.164722, 20.060326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167004, 42.266342, 20.162153>,  <37.487179, 42.435711, 20.331865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167004, 42.266342, 20.162153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508605, -0.105187, -0.854551,
		0.317207, -0.899805, 0.299550,
		-0.800438, -0.423422, -0.424279,
		36.926872, 42.139317, 20.034870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.664799, 37.067776, 17.364403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.767632, 37.416676, 17.530817>,  <31.829332, 37.626015, 17.630665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.767632, 37.416676, 17.530817>,  <31.664799, 37.067776, 17.364403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767632, 37.416676, 17.530817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124754, -0.456858, 0.880748,
		0.958303, -0.174524, -0.226267,
		0.257083, 0.872251, 0.416036,
		31.844757, 37.678352, 17.655628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219913, 36.902485, 17.858049>,  <31.664799, 37.067776, 17.364403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219913, 36.902485, 17.858049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.074558, 37.264191, 17.947718>,  <31.987345, 37.481213, 18.001518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.074558, 37.264191, 17.947718>,  <32.219913, 36.902485, 17.858049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074558, 37.264191, 17.947718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215587, -0.152469, 0.964508,
		0.906350, 0.398820, -0.139542,
		-0.363389, 0.904265, 0.224171,
		31.965542, 37.535469, 18.014969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679268, 37.303383, 18.359236>,  <32.219913, 36.902485, 17.858049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679268, 37.303383, 18.359236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.331917, 37.495655, 18.407999>,  <32.123505, 37.611019, 18.437258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.331917, 37.495655, 18.407999>,  <32.679268, 37.303383, 18.359236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331917, 37.495655, 18.407999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158690, 0.036448, 0.986656,
		0.469824, 0.876137, -0.107930,
		-0.868379, 0.480682, 0.121910,
		32.071404, 37.639858, 18.444572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780682, 37.820797, 18.780872>,  <32.679268, 37.303383, 18.359236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780682, 37.820797, 18.780872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384438, 37.773949, 18.809105>,  <32.146690, 37.745838, 18.826044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384438, 37.773949, 18.809105>,  <32.780682, 37.820797, 18.780872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384438, 37.773949, 18.809105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069997, 0.009113, 0.997506,
		-0.117473, 0.993076, -0.000830,
		-0.990606, -0.117122, 0.070583,
		32.087257, 37.738811, 18.830280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562870, 38.273167, 19.324987>,  <32.780682, 37.820797, 18.780872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562870, 38.273167, 19.324987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.245777, 38.032200, 19.287754>,  <32.055523, 37.887619, 19.265415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.245777, 38.032200, 19.287754>,  <32.562870, 38.273167, 19.324987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245777, 38.032200, 19.287754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097944, -0.024836, 0.994882,
		-0.601648, 0.797793, -0.039315,
		-0.792733, -0.602420, -0.093082,
		32.007957, 37.851475, 19.259830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104813, 38.538330, 19.707441>,  <32.562870, 38.273167, 19.324987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104813, 38.538330, 19.707441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.966892, 38.165192, 19.665655>,  <31.884140, 37.941307, 19.640583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.966892, 38.165192, 19.665655>,  <32.104813, 38.538330, 19.707441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966892, 38.165192, 19.665655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302322, 0.004999, 0.953193,
		-0.888659, 0.360244, -0.283743,
		-0.344800, -0.932845, -0.104467,
		31.863453, 37.885338, 19.634315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391367, 38.590717, 20.050346>,  <32.104813, 38.538330, 19.707441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391367, 38.590717, 20.050346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.543268, 38.221241, 20.070656>,  <31.634409, 37.999554, 20.082842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.543268, 38.221241, 20.070656>,  <31.391367, 38.590717, 20.050346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543268, 38.221241, 20.070656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315730, -0.077822, 0.945652,
		-0.869541, -0.375146, -0.321191,
		0.379754, -0.923693, 0.050775,
		31.657194, 37.944134, 20.085888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031017, 38.278225, 20.563808>,  <31.391367, 38.590717, 20.050346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031017, 38.278225, 20.563808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.306980, 37.993183, 20.512867>,  <31.472557, 37.822159, 20.482302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.306980, 37.993183, 20.512867>,  <31.031017, 38.278225, 20.563808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306980, 37.993183, 20.512867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129460, -0.294546, 0.946828,
		-0.712229, -0.636735, -0.295463,
		0.689905, -0.712609, -0.127353,
		31.513952, 37.779400, 20.474661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727480, 37.670979, 20.782667>,  <31.031017, 38.278225, 20.563808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727480, 37.670979, 20.782667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124653, 37.625210, 20.795288>,  <31.362957, 37.597748, 20.802860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124653, 37.625210, 20.795288>,  <30.727480, 37.670979, 20.782667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124653, 37.625210, 20.795288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071938, -0.368697, 0.926762,
		-0.094408, -0.922481, -0.374322,
		0.992931, -0.114422, 0.031554,
		31.422533, 37.590885, 20.804754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927664, 36.972775, 20.953806>,  <30.727480, 37.670979, 20.782667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927664, 36.972775, 20.953806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.265654, 37.169277, 21.038357>,  <31.468449, 37.287178, 21.089088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.265654, 37.169277, 21.038357>,  <30.927664, 36.972775, 20.953806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265654, 37.169277, 21.038357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012769, -0.413665, 0.910340,
		0.534653, -0.766515, -0.355810,
		0.844975, 0.491259, 0.211379,
		31.519146, 37.316654, 21.101770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340475, 36.414825, 21.184450>,  <30.927664, 36.972775, 20.953806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340475, 36.414825, 21.184450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.473558, 36.763519, 21.328333>,  <31.553408, 36.972736, 21.414663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.473558, 36.763519, 21.328333>,  <31.340475, 36.414825, 21.184450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473558, 36.763519, 21.328333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019625, -0.387755, 0.921553,
		0.942825, -0.299549, -0.146118,
		0.332709, 0.871732, 0.359707,
		31.573372, 37.025040, 21.436245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903923, 36.234406, 21.461067>,  <31.340475, 36.414825, 21.184450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903923, 36.234406, 21.461067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.776331, 36.570820, 21.635843>,  <31.699776, 36.772667, 21.740709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.776331, 36.570820, 21.635843>,  <31.903923, 36.234406, 21.461067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776331, 36.570820, 21.635843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185376, -0.396754, 0.899012,
		0.929455, 0.367767, -0.029350,
		-0.318982, 0.841031, 0.436940,
		31.680635, 36.823128, 21.766926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338894, 36.329224, 22.113926>,  <31.903923, 36.234406, 21.461067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338894, 36.329224, 22.113926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.026894, 36.567314, 22.191177>,  <31.839693, 36.710171, 22.237528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.026894, 36.567314, 22.191177>,  <32.338894, 36.329224, 22.113926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026894, 36.567314, 22.191177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056393, -0.240504, 0.969009,
		0.623230, 0.766720, 0.154027,
		-0.780002, 0.595229, 0.193127,
		31.792892, 36.745884, 22.249115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513821, 36.794395, 22.748808>,  <32.338894, 36.329224, 22.113926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513821, 36.794395, 22.748808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116985, 36.772034, 22.703835>,  <31.878885, 36.758617, 22.676851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116985, 36.772034, 22.703835>,  <32.513821, 36.794395, 22.748808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116985, 36.772034, 22.703835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091789, -0.288127, 0.953183,
		-0.085679, 0.955959, 0.280715,
		-0.992086, -0.055901, -0.112433,
		31.819359, 36.755264, 22.670105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183456, 37.007790, 23.048208>,  <32.513821, 36.794395, 22.748808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183456, 37.007790, 23.048208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.455284, 36.716404, 23.013504>,  <33.618382, 36.541573, 22.992682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.455284, 36.716404, 23.013504>,  <33.183456, 37.007790, 23.048208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455284, 36.716404, 23.013504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273405, 0.361235, -0.891493,
		0.680761, 0.582110, 0.444649,
		0.679569, -0.728463, -0.086763,
		33.659153, 36.497864, 22.987474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644150, 37.297813, 22.691187>,  <33.183456, 37.007790, 23.048208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644150, 37.297813, 22.691187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.757664, 36.917007, 22.645336>,  <33.825771, 36.688526, 22.617825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.757664, 36.917007, 22.645336>,  <33.644150, 37.297813, 22.691187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757664, 36.917007, 22.645336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434637, 0.234268, -0.869603,
		0.854725, 0.196961, 0.480261,
		0.283787, -0.952011, -0.114629,
		33.842800, 36.631405, 22.610947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340157, 37.307396, 22.475149>,  <33.644150, 37.297813, 22.691187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340157, 37.307396, 22.475149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.185272, 36.954918, 22.366661>,  <34.092342, 36.743431, 22.301567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.185272, 36.954918, 22.366661>,  <34.340157, 37.307396, 22.475149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185272, 36.954918, 22.366661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404973, 0.101723, -0.908653,
		0.828292, -0.461674, 0.317473,
		-0.387207, -0.881198, -0.271222,
		34.069111, 36.690559, 22.285294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876423, 36.878117, 22.280254>,  <34.340157, 37.307396, 22.475149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876423, 36.878117, 22.280254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567623, 36.717751, 22.082960>,  <34.382343, 36.621529, 21.964584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.567623, 36.717751, 22.082960>,  <34.876423, 36.878117, 22.280254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567623, 36.717751, 22.082960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487802, 0.123809, -0.864130,
		0.407514, -0.907708, 0.099989,
		-0.771998, -0.400920, -0.493236,
		34.336025, 36.597473, 21.934990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185390, 36.309170, 21.818989>,  <34.876423, 36.878117, 22.280254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185390, 36.309170, 21.818989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827446, 36.393188, 21.661453>,  <34.612679, 36.443600, 21.566931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827446, 36.393188, 21.661453>,  <35.185390, 36.309170, 21.818989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827446, 36.393188, 21.661453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418676, 0.089137, -0.903751,
		-0.154721, -0.973620, -0.167706,
		-0.894859, 0.210044, -0.393839,
		34.558987, 36.456200, 21.543301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156448, 35.973339, 21.144583>,  <35.185390, 36.309170, 21.818989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156448, 35.973339, 21.144583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863483, 36.245686, 21.144112>,  <34.687706, 36.409092, 21.143829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863483, 36.245686, 21.144112>,  <35.156448, 35.973339, 21.144583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863483, 36.245686, 21.144112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256876, 0.274724, -0.926575,
		-0.630547, -0.678936, -0.376108,
		-0.732411, 0.680862, -0.001176,
		34.643761, 36.449944, 21.143759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878883, 35.882740, 20.432207>,  <35.156448, 35.973339, 21.144583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878883, 35.882740, 20.432207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.781631, 36.243793, 20.574278>,  <34.723282, 36.460426, 20.659519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.781631, 36.243793, 20.574278>,  <34.878883, 35.882740, 20.432207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781631, 36.243793, 20.574278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168981, 0.399976, -0.900813,
		-0.955162, -0.158996, -0.249772,
		-0.243129, 0.902629, 0.355175,
		34.708694, 36.514584, 20.680830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422703, 36.185493, 19.908525>,  <34.878883, 35.882740, 20.432207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422703, 36.185493, 19.908525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.560741, 36.481182, 20.139853>,  <34.643566, 36.658596, 20.278648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.560741, 36.481182, 20.139853>,  <34.422703, 36.185493, 19.908525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560741, 36.481182, 20.139853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295066, 0.499478, -0.814529,
		-0.890978, 0.451736, -0.045750,
		0.345101, 0.739226, 0.578316,
		34.664272, 36.702950, 20.313347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954014, 36.716824, 19.698296>,  <34.422703, 36.185493, 19.908525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954014, 36.716824, 19.698296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312481, 36.828175, 19.836502>,  <34.527561, 36.894985, 19.919426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312481, 36.828175, 19.836502>,  <33.954014, 36.716824, 19.698296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312481, 36.828175, 19.836502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179885, 0.483890, -0.856442,
		-0.405607, 0.829672, 0.383572,
		0.896172, 0.278380, 0.345514,
		34.581333, 36.911690, 19.940157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014149, 37.314331, 19.423872>,  <33.954014, 36.716824, 19.698296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014149, 37.314331, 19.423872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395046, 37.299168, 19.545067>,  <34.623585, 37.290070, 19.617785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395046, 37.299168, 19.545067>,  <34.014149, 37.314331, 19.423872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395046, 37.299168, 19.545067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275209, 0.536426, -0.797814,
		-0.132284, 0.843096, 0.521240,
		0.952240, -0.037912, 0.302988,
		34.680717, 37.287792, 19.635963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252853, 37.967716, 19.443228>,  <34.014149, 37.314331, 19.423872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252853, 37.967716, 19.443228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576881, 37.737068, 19.400711>,  <34.771297, 37.598679, 19.375202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576881, 37.737068, 19.400711>,  <34.252853, 37.967716, 19.443228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576881, 37.737068, 19.400711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326541, 0.594229, -0.735026,
		0.486993, 0.560712, 0.669656,
		0.810067, -0.576622, -0.106290,
		34.819901, 37.564083, 19.368824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733192, 38.491604, 19.317820>,  <34.252853, 37.967716, 19.443228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733192, 38.491604, 19.317820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.880951, 38.145496, 19.182262>,  <34.969604, 37.937832, 19.100927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.880951, 38.145496, 19.182262>,  <34.733192, 38.491604, 19.317820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880951, 38.145496, 19.182262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279320, 0.451210, -0.847579,
		0.886300, 0.218432, 0.408363,
		0.369396, -0.865273, -0.338895,
		34.991768, 37.885914, 19.080593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426556, 38.571568, 19.158113>,  <34.733192, 38.491604, 19.317820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426556, 38.571568, 19.158113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.286060, 38.267010, 18.940155>,  <35.201763, 38.084274, 18.809380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.286060, 38.267010, 18.940155>,  <35.426556, 38.571568, 19.158113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286060, 38.267010, 18.940155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238099, 0.490207, -0.838455,
		0.905507, -0.424233, 0.009109,
		-0.351235, -0.761396, -0.544895,
		35.180691, 38.038589, 18.776686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914326, 38.606358, 18.689665>,  <35.426556, 38.571568, 19.158113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914326, 38.606358, 18.689665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607098, 38.397362, 18.541576>,  <35.422760, 38.271965, 18.452724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607098, 38.397362, 18.541576>,  <35.914326, 38.606358, 18.689665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607098, 38.397362, 18.541576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193825, 0.361331, -0.912070,
		0.610324, -0.772295, -0.176256,
		-0.768073, -0.522495, -0.370219,
		35.376675, 38.240612, 18.430511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716316, 38.351925, 18.410038>,  <35.914326, 38.606358, 18.689665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716316, 38.351925, 18.410038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043781, 38.577251, 18.454679>,  <37.240261, 38.712448, 18.481464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043781, 38.577251, 18.454679>,  <36.716316, 38.351925, 18.410038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043781, 38.577251, 18.454679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102610, -0.334706, 0.936719,
		0.565028, -0.755409, -0.331814,
		0.818666, 0.563320, 0.111606,
		37.289383, 38.746246, 18.488161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186966, 37.986286, 18.747799>,  <36.716316, 38.351925, 18.410038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186966, 37.986286, 18.747799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300694, 38.359940, 18.834110>,  <37.368931, 38.584129, 18.885897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300694, 38.359940, 18.834110>,  <37.186966, 37.986286, 18.747799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300694, 38.359940, 18.834110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168358, -0.270217, 0.947965,
		0.943832, -0.233196, -0.234097,
		0.284319, 0.934132, 0.215779,
		37.385990, 38.640179, 18.898844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806389, 37.870625, 19.070211>,  <37.186966, 37.986286, 18.747799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806389, 37.870625, 19.070211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698303, 38.236214, 19.191296>,  <37.633453, 38.455566, 19.263947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698303, 38.236214, 19.191296>,  <37.806389, 37.870625, 19.070211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698303, 38.236214, 19.191296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269211, -0.230142, 0.935179,
		0.924397, 0.334192, -0.183865,
		-0.270215, 0.913975, 0.302710,
		37.617237, 38.510406, 19.282108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144936, 37.984440, 19.685991>,  <37.806389, 37.870625, 19.070211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144936, 37.984440, 19.685991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892311, 38.290798, 19.734211>,  <37.740738, 38.474613, 19.763142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892311, 38.290798, 19.734211>,  <38.144936, 37.984440, 19.685991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892311, 38.290798, 19.734211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213986, 0.022746, 0.976572,
		0.745214, 0.642558, -0.178257,
		-0.631558, 0.765900, 0.120548,
		37.702843, 38.520569, 19.770376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461193, 38.615665, 20.073801>,  <38.144936, 37.984440, 19.685991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461193, 38.615665, 20.073801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063663, 38.624557, 20.117304>,  <37.825146, 38.629890, 20.143406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063663, 38.624557, 20.117304>,  <38.461193, 38.615665, 20.073801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063663, 38.624557, 20.117304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110873, 0.150981, 0.982299,
		0.005414, 0.988287, -0.152512,
		-0.993820, 0.022228, 0.108757,
		37.765518, 38.631226, 20.149931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266479, 39.239532, 20.465994>,  <38.461193, 38.615665, 20.073801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266479, 39.239532, 20.465994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986122, 38.960571, 20.525837>,  <37.817909, 38.793194, 20.561743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986122, 38.960571, 20.525837>,  <38.266479, 39.239532, 20.465994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986122, 38.960571, 20.525837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004775, 0.205156, 0.978718,
		-0.713254, 0.686688, -0.140462,
		-0.700890, -0.697403, 0.149607,
		37.775856, 38.751350, 20.570719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954082, 39.556831, 21.120003>,  <38.266479, 39.239532, 20.465994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954082, 39.556831, 21.120003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799236, 39.189587, 21.086035>,  <37.706329, 38.969238, 21.065655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799236, 39.189587, 21.086035>,  <37.954082, 39.556831, 21.120003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799236, 39.189587, 21.086035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069119, -0.120738, 0.990275,
		-0.919436, 0.377483, 0.110199,
		-0.387117, -0.918112, -0.084920,
		37.683102, 38.914154, 21.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344135, 39.600422, 21.477886>,  <37.954082, 39.556831, 21.120003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344135, 39.600422, 21.477886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491703, 39.228992, 21.461592>,  <37.580242, 39.006134, 21.451815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491703, 39.228992, 21.461592>,  <37.344135, 39.600422, 21.477886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491703, 39.228992, 21.461592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081978, -0.011151, 0.996572,
		-0.925840, -0.370991, 0.072008,
		0.368916, -0.928569, -0.040737,
		37.602379, 38.950420, 21.449371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923515, 39.123493, 21.918098>,  <37.344135, 39.600422, 21.477886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923515, 39.123493, 21.918098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299133, 38.990261, 21.884020>,  <37.524502, 38.910324, 21.863573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299133, 38.990261, 21.884020>,  <36.923515, 39.123493, 21.918098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299133, 38.990261, 21.884020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009822, -0.273691, 0.961767,
		-0.343663, -0.902302, -0.260279,
		0.939041, -0.333081, -0.085195,
		37.580845, 38.890339, 21.858461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927860, 38.482666, 22.145069>,  <36.923515, 39.123493, 21.918098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927860, 38.482666, 22.145069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301144, 38.619717, 22.188381>,  <37.525116, 38.701946, 22.214369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301144, 38.619717, 22.188381>,  <36.927860, 38.482666, 22.145069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301144, 38.619717, 22.188381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010180, -0.276006, 0.961102,
		0.359181, -0.898014, -0.254085,
		0.933212, 0.342623, 0.108278,
		37.581108, 38.722504, 22.220865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228577, 37.991814, 22.563244>,  <36.927860, 38.482666, 22.145069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228577, 37.991814, 22.563244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461956, 38.315697, 22.588448>,  <37.601982, 38.510025, 22.603571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461956, 38.315697, 22.588448>,  <37.228577, 37.991814, 22.563244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461956, 38.315697, 22.588448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282988, -0.275407, 0.918732,
		0.761255, -0.518199, -0.389822,
		0.583446, 0.809704, 0.063011,
		37.636990, 38.558609, 22.607351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779083, 37.828983, 22.963182>,  <37.228577, 37.991814, 22.563244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779083, 37.828983, 22.963182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780720, 38.227608, 22.996267>,  <37.781700, 38.466782, 23.016119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780720, 38.227608, 22.996267>,  <37.779083, 37.828983, 22.963182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780720, 38.227608, 22.996267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259266, -0.080941, 0.962408,
		0.965797, 0.017511, -0.258707,
		0.004087, 0.996565, 0.082713,
		37.781944, 38.526577, 23.021082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398193, 37.963306, 23.408789>,  <37.779083, 37.828983, 22.963182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398193, 37.963306, 23.408789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144695, 38.266361, 23.471209>,  <37.992596, 38.448193, 23.508661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144695, 38.266361, 23.471209>,  <38.398193, 37.963306, 23.408789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144695, 38.266361, 23.471209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121832, -0.101455, 0.987352,
		0.763887, 0.644742, -0.028008,
		-0.633746, 0.757637, 0.156050,
		37.954571, 38.493652, 23.518024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692497, 38.299301, 23.997135>,  <38.398193, 37.963306, 23.408789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692497, 38.299301, 23.997135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320446, 38.445873, 24.006895>,  <38.097218, 38.533817, 24.012751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320446, 38.445873, 24.006895>,  <38.692497, 38.299301, 23.997135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320446, 38.445873, 24.006895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090120, 0.163334, 0.982446,
		0.356011, 0.915998, -0.184944,
		-0.930126, 0.366429, 0.024401,
		38.041409, 38.555801, 24.014215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.907368, 41.601776, 19.753195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.546364, 41.747105, 19.660696>,  <37.329762, 41.834301, 19.605196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.546364, 41.747105, 19.660696>,  <37.907368, 41.601776, 19.753195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546364, 41.747105, 19.660696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346759, 0.294582, -0.890494,
		-0.255415, -0.883865, -0.391848,
		-0.902508, 0.363323, -0.231247,
		37.275612, 41.856102, 19.591322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618458, 41.247017, 19.103535>,  <37.907368, 41.601776, 19.753195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618458, 41.247017, 19.103535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407104, 41.586372, 19.116529>,  <37.280293, 41.789986, 19.124327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.407104, 41.586372, 19.116529>,  <37.618458, 41.247017, 19.103535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407104, 41.586372, 19.116529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184272, 0.151948, -0.971059,
		-0.828770, -0.507100, -0.236620,
		-0.528378, 0.848387, 0.032485,
		37.248592, 41.840889, 19.126274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230537, 41.190292, 18.526188>,  <37.618458, 41.247017, 19.103535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230537, 41.190292, 18.526188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179432, 41.576855, 18.615398>,  <37.148769, 41.808792, 18.668924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179432, 41.576855, 18.615398>,  <37.230537, 41.190292, 18.526188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179432, 41.576855, 18.615398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130116, 0.239257, -0.962199,
		-0.983233, -0.093911, -0.156312,
		-0.127760, 0.966404, 0.223026,
		37.141106, 41.866776, 18.682306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754322, 41.406212, 17.963209>,  <37.230537, 41.190292, 18.526188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754322, 41.406212, 17.963209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925381, 41.736744, 18.109797>,  <37.028015, 41.935062, 18.197748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925381, 41.736744, 18.109797>,  <36.754322, 41.406212, 17.963209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925381, 41.736744, 18.109797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072805, 0.372605, -0.925130,
		-0.901012, 0.422305, 0.099180,
		0.427642, 0.826332, 0.366467,
		37.053673, 41.984642, 18.219736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315334, 42.052464, 17.835257>,  <36.754322, 41.406212, 17.963209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315334, 42.052464, 17.835257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700962, 42.150455, 17.876343>,  <36.932339, 42.209251, 17.900993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700962, 42.150455, 17.876343>,  <36.315334, 42.052464, 17.835257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700962, 42.150455, 17.876343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046374, 0.535945, -0.842978,
		-0.261559, 0.807929, 0.528051,
		0.964073, 0.244976, 0.102714,
		36.990185, 42.223949, 17.907158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302769, 42.744778, 17.659632>,  <36.315334, 42.052464, 17.835257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302769, 42.744778, 17.659632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684700, 42.631760, 17.622814>,  <36.913860, 42.563950, 17.600723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684700, 42.631760, 17.622814>,  <36.302769, 42.744778, 17.659632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684700, 42.631760, 17.622814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006719, 0.330195, -0.943889,
		0.297086, 0.900632, 0.317177,
		0.954827, -0.282547, -0.092045,
		36.971149, 42.546997, 17.595201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664803, 43.311714, 17.219378>,  <36.302769, 42.744778, 17.659632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664803, 43.311714, 17.219378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924820, 43.007919, 17.209368>,  <37.080830, 42.825642, 17.203362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924820, 43.007919, 17.209368>,  <36.664803, 43.311714, 17.219378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924820, 43.007919, 17.209368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357692, 0.334869, -0.871733,
		0.670452, 0.557709, 0.489341,
		0.650039, -0.759489, -0.025025,
		37.119831, 42.780071, 17.201860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262489, 43.610920, 17.005564>,  <36.664803, 43.311714, 17.219378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262489, 43.610920, 17.005564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279953, 43.221893, 16.914165>,  <37.290432, 42.988476, 16.859327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279953, 43.221893, 16.914165>,  <37.262489, 43.610920, 17.005564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279953, 43.221893, 16.914165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245414, 0.232145, -0.941212,
		0.968435, -0.014982, 0.248817,
		0.043661, -0.972566, -0.228494,
		37.293053, 42.930122, 16.845617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764221, 43.602104, 16.447470>,  <37.262489, 43.610920, 17.005564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764221, 43.602104, 16.447470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600822, 43.239300, 16.406569>,  <37.502785, 43.021618, 16.382027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600822, 43.239300, 16.406569>,  <37.764221, 43.602104, 16.447470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600822, 43.239300, 16.406569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076579, 0.077577, -0.994041,
		0.909543, -0.413890, 0.037769,
		-0.408494, -0.907015, -0.102255,
		37.478275, 42.967194, 16.375893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248142, 43.297699, 16.010447>,  <37.764221, 43.602104, 16.447470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248142, 43.297699, 16.010447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919403, 43.070305, 15.995554>,  <37.722160, 42.933868, 15.986618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919403, 43.070305, 15.995554>,  <38.248142, 43.297699, 16.010447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919403, 43.070305, 15.995554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059195, -0.020210, -0.998042,
		0.566622, -0.822443, 0.050262,
		-0.821848, -0.568488, -0.037233,
		37.672848, 42.899757, 15.984384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337048, 42.653530, 15.593705>,  <38.248142, 43.297699, 16.010447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337048, 42.653530, 15.593705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.941059, 42.709938, 15.596915>,  <37.703465, 42.743782, 15.598842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.941059, 42.709938, 15.596915>,  <38.337048, 42.653530, 15.593705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941059, 42.709938, 15.596915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006416, 0.101662, -0.994798,
		-0.141103, -0.984773, -0.101547,
		-0.989974, 0.141020, 0.008026,
		37.644066, 42.752243, 15.599323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106457, 42.266319, 15.021860>,  <38.337048, 42.653530, 15.593705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106457, 42.266319, 15.021860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805992, 42.519035, 15.098378>,  <37.625713, 42.670666, 15.144289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805992, 42.519035, 15.098378>,  <38.106457, 42.266319, 15.021860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805992, 42.519035, 15.098378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186937, 0.074335, -0.979555,
		-0.633092, -0.771568, 0.062266,
		-0.751165, 0.631788, 0.191295,
		37.580643, 42.708572, 15.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024574, 42.089001, 14.320386>,  <38.106457, 42.266319, 15.021860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024574, 42.089001, 14.320386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155174, 41.719776, 14.239046>,  <38.233536, 41.498241, 14.190243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155174, 41.719776, 14.239046>,  <38.024574, 42.089001, 14.320386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155174, 41.719776, 14.239046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864240, -0.378658, 0.331222,
		-0.382738, 0.067597, -0.921381,
		0.326498, -0.923065, -0.203347,
		38.253124, 41.442856, 14.178041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523563, 41.697979, 13.958263>,  <38.024574, 42.089001, 14.320386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523563, 41.697979, 13.958263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.763420, 41.469780, 14.182749>,  <37.907333, 41.332859, 14.317440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.763420, 41.469780, 14.182749>,  <37.523563, 41.697979, 13.958263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763420, 41.469780, 14.182749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797958, -0.372991, 0.473436,
		-0.060767, -0.731717, -0.678894,
		0.599642, -0.570498, 0.561214,
		37.943314, 41.298630, 14.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510220, 41.259281, 13.401816>,  <37.523563, 41.697979, 13.958263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510220, 41.259281, 13.401816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.435070, 40.890144, 13.267318>,  <37.389980, 40.668663, 13.186619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.435070, 40.890144, 13.267318>,  <37.510220, 41.259281, 13.401816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435070, 40.890144, 13.267318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007432, -0.343668, 0.939062,
		-0.982165, 0.173927, 0.071426,
		-0.187875, -0.922844, -0.336246,
		37.378708, 40.613293, 13.166444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916153, 41.015343, 13.762311>,  <37.510220, 41.259281, 13.401816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916153, 41.015343, 13.762311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111080, 40.695358, 13.622268>,  <37.228039, 40.503368, 13.538242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111080, 40.695358, 13.622268>,  <36.916153, 41.015343, 13.762311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111080, 40.695358, 13.622268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022587, -0.389255, 0.920853,
		-0.872931, -0.456658, -0.171623,
		0.487320, -0.799965, -0.350108,
		37.257275, 40.455368, 13.517236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572548, 40.580975, 14.078028>,  <36.916153, 41.015343, 13.762311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572548, 40.580975, 14.078028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906391, 40.386620, 13.974223>,  <37.106697, 40.270008, 13.911941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906391, 40.386620, 13.974223>,  <36.572548, 40.580975, 14.078028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906391, 40.386620, 13.974223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054841, -0.395478, 0.916837,
		-0.548111, -0.779429, -0.303421,
		0.834605, -0.485889, -0.259511,
		37.156773, 40.240852, 13.896370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571987, 40.007771, 14.426134>,  <36.572548, 40.580975, 14.078028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571987, 40.007771, 14.426134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.957035, 39.990681, 14.319152>,  <37.188065, 39.980427, 14.254963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.957035, 39.990681, 14.319152>,  <36.571987, 40.007771, 14.426134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957035, 39.990681, 14.319152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230218, -0.391136, 0.891074,
		-0.142677, -0.919341, -0.366682,
		0.962624, -0.042719, -0.267455,
		37.245823, 39.977863, 14.238915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717903, 39.325993, 14.481485>,  <36.571987, 40.007771, 14.426134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717903, 39.325993, 14.481485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047344, 39.549545, 14.520126>,  <37.245007, 39.683678, 14.543311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047344, 39.549545, 14.520126>,  <36.717903, 39.325993, 14.481485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047344, 39.549545, 14.520126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148369, -0.376691, 0.914380,
		0.547423, -0.738749, -0.393163,
		0.823599, 0.558886, 0.096602,
		37.294422, 39.717213, 14.549107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328510, 38.858738, 14.631287>,  <36.717903, 39.325993, 14.481485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328510, 38.858738, 14.631287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422771, 39.225094, 14.761282>,  <37.479328, 39.444908, 14.839279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422771, 39.225094, 14.761282>,  <37.328510, 38.858738, 14.631287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422771, 39.225094, 14.761282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379226, -0.394557, 0.836966,
		0.894794, -0.073988, -0.440306,
		0.235651, 0.915888, 0.324989,
		37.493465, 39.499859, 14.858779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885586, 38.736042, 14.940128>,  <37.328510, 38.858738, 14.631287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885586, 38.736042, 14.940128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783215, 39.092037, 15.091083>,  <37.721794, 39.305634, 15.181655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783215, 39.092037, 15.091083>,  <37.885586, 38.736042, 14.940128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783215, 39.092037, 15.091083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349772, -0.278686, 0.894424,
		0.901200, 0.360906, -0.239971,
		-0.255926, 0.889990, 0.377386,
		37.706436, 39.359035, 15.204298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365585, 38.949451, 15.514153>,  <37.885586, 38.736042, 14.940128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365585, 38.949451, 15.514153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.018742, 39.138149, 15.578121>,  <37.810635, 39.251369, 15.616503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.018742, 39.138149, 15.578121>,  <38.365585, 38.949451, 15.514153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018742, 39.138149, 15.578121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142327, -0.073026, 0.987122,
		0.477351, 0.878704, -0.003821,
		-0.867109, 0.471748, 0.159923,
		37.758610, 39.279675, 15.626098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541008, 39.416496, 16.095560>,  <38.365585, 38.949451, 15.514153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541008, 39.416496, 16.095560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142254, 39.385563, 16.089365>,  <37.903000, 39.367001, 16.085648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.142254, 39.385563, 16.089365>,  <38.541008, 39.416496, 16.095560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142254, 39.385563, 16.089365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021845, 0.082039, 0.996390,
		-0.075786, 0.993624, -0.083473,
		-0.996885, -0.077336, -0.015488,
		37.843189, 39.362362, 16.084719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229980, 39.893524, 16.682463>,  <38.541008, 39.416496, 16.095560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229980, 39.893524, 16.682463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.928371, 39.640255, 16.612558>,  <37.747406, 39.488293, 16.570616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.928371, 39.640255, 16.612558>,  <38.229980, 39.893524, 16.682463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928371, 39.640255, 16.612558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098224, -0.154374, 0.983118,
		-0.649462, 0.758459, 0.054208,
		-0.754023, -0.633173, -0.174759,
		37.702164, 39.450302, 16.560131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694893, 40.209187, 17.043386>,  <38.229980, 39.893524, 16.682463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694893, 40.209187, 17.043386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638264, 39.815731, 16.998810>,  <37.604286, 39.579659, 16.972063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638264, 39.815731, 16.998810>,  <37.694893, 40.209187, 17.043386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638264, 39.815731, 16.998810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017183, -0.110116, 0.993770,
		-0.989779, 0.142605, -0.001312,
		-0.141572, -0.983635, -0.111441,
		37.595791, 39.520641, 16.965378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086884, 40.118641, 17.337524>,  <37.694893, 40.209187, 17.043386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086884, 40.118641, 17.337524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.266567, 39.761528, 17.323978>,  <37.374378, 39.547260, 17.315851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.266567, 39.761528, 17.323978>,  <37.086884, 40.118641, 17.337524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266567, 39.761528, 17.323978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273642, -0.173567, 0.946042,
		-0.850490, -0.415702, -0.322271,
		0.449207, -0.892786, -0.033864,
		37.401329, 39.493690, 17.313820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629044, 39.637711, 17.757288>,  <37.086884, 40.118641, 17.337524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629044, 39.637711, 17.757288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983234, 39.452461, 17.742117>,  <37.195751, 39.341312, 17.733015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.983234, 39.452461, 17.742117>,  <36.629044, 39.637711, 17.757288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983234, 39.452461, 17.742117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051140, -0.178252, 0.982655,
		-0.461855, -0.868182, -0.181523,
		0.885480, -0.463127, -0.037928,
		37.248878, 39.313522, 17.730738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539967, 38.841583, 17.928999>,  <36.629044, 39.637711, 17.757288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539967, 38.841583, 17.928999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911575, 38.974304, 17.994509>,  <37.134541, 39.053936, 18.033815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.911575, 38.974304, 17.994509>,  <36.539967, 38.841583, 17.928999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911575, 38.974304, 17.994509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080088, -0.251803, 0.964459,
		0.361250, -0.909121, -0.207357,
		0.929023, 0.331804, 0.163774,
		37.190281, 39.073845, 18.043640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087051, 38.340973, 17.845318>,  <36.539967, 38.841583, 17.928999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087051, 38.340973, 17.845318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692783, 38.280853, 17.875929>,  <35.456223, 38.244781, 17.894295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692783, 38.280853, 17.875929>,  <36.087051, 38.340973, 17.845318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692783, 38.280853, 17.875929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137160, 0.450291, -0.882284,
		0.098144, -0.880142, -0.464455,
		-0.985675, -0.150295, 0.076527,
		35.397079, 38.235764, 17.898888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885612, 38.101875, 17.188158>,  <36.087051, 38.340973, 17.845318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885612, 38.101875, 17.188158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536327, 38.202557, 17.355078>,  <35.326756, 38.262966, 17.455229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536327, 38.202557, 17.355078>,  <35.885612, 38.101875, 17.188158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536327, 38.202557, 17.355078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384428, 0.170503, -0.907273,
		-0.299510, -0.952668, -0.052126,
		-0.873217, 0.251699, 0.417300,
		35.274361, 38.278065, 17.480268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426678, 37.765461, 16.885969>,  <35.885612, 38.101875, 17.188158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426678, 37.765461, 16.885969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232838, 38.085144, 17.028200>,  <35.116535, 38.276955, 17.113539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232838, 38.085144, 17.028200>,  <35.426678, 37.765461, 16.885969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232838, 38.085144, 17.028200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308322, 0.224348, -0.924449,
		-0.818598, -0.557618, 0.137695,
		-0.484598, 0.799206, 0.355577,
		35.087460, 38.324905, 17.134872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770515, 37.809422, 16.461977>,  <35.426678, 37.765461, 16.885969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770515, 37.809422, 16.461977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847378, 38.164650, 16.629021>,  <34.893497, 38.377789, 16.729248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847378, 38.164650, 16.629021>,  <34.770515, 37.809422, 16.461977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847378, 38.164650, 16.629021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340010, 0.459431, -0.820558,
		-0.920581, 0.015685, 0.390238,
		0.192158, 0.888075, 0.417611,
		34.905025, 38.431072, 16.754303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259140, 38.192406, 16.429321>,  <34.770515, 37.809422, 16.461977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259140, 38.192406, 16.429321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515671, 38.496666, 16.469530>,  <34.669590, 38.679222, 16.493656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515671, 38.496666, 16.469530>,  <34.259140, 38.192406, 16.429321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515671, 38.496666, 16.469530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341823, 0.400550, -0.850127,
		-0.686914, 0.510852, 0.516893,
		0.641331, 0.760651, 0.100522,
		34.708069, 38.724861, 16.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889843, 38.696331, 16.133450>,  <34.259140, 38.192406, 16.429321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889843, 38.696331, 16.133450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.258434, 38.849495, 16.159559>,  <34.479588, 38.941395, 16.175224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.258434, 38.849495, 16.159559>,  <33.889843, 38.696331, 16.133450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258434, 38.849495, 16.159559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159108, 0.525376, -0.835862,
		-0.354355, 0.759841, 0.545045,
		0.921476, 0.382913, 0.065273,
		34.534878, 38.964371, 16.179142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904633, 39.512283, 16.110933>,  <33.889843, 38.696331, 16.133450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904633, 39.512283, 16.110933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237465, 39.331425, 15.982435>,  <34.437164, 39.222908, 15.905336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237465, 39.331425, 15.982435>,  <33.904633, 39.512283, 16.110933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237465, 39.331425, 15.982435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118895, 0.420322, -0.899552,
		0.541758, 0.786696, 0.295985,
		0.832083, -0.452149, -0.321247,
		34.487091, 39.195782, 15.886061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267601, 39.884617, 16.096733>,  <33.904633, 39.512283, 16.110933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267601, 39.884617, 16.096733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909245, 39.870495, 15.919586>,  <32.694229, 39.862022, 15.813298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909245, 39.870495, 15.919586>,  <33.267601, 39.884617, 16.096733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909245, 39.870495, 15.919586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347210, -0.566257, 0.747529,
		-0.277168, 0.823473, 0.495047,
		-0.895893, -0.035306, -0.442866,
		32.640476, 39.859901, 15.786726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699570, 40.147224, 16.516678>,  <33.267601, 39.884617, 16.096733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699570, 40.147224, 16.516678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532394, 39.884888, 16.265219>,  <32.432087, 39.727486, 16.114344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532394, 39.884888, 16.265219>,  <32.699570, 40.147224, 16.516678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532394, 39.884888, 16.265219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386616, -0.497792, 0.776358,
		-0.822102, 0.567519, -0.045510,
		-0.417943, -0.655840, -0.628647,
		32.407013, 39.688137, 16.076624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991583, 39.936874, 16.812342>,  <32.699570, 40.147224, 16.516678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991583, 39.936874, 16.812342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068935, 39.651657, 16.542770>,  <32.115349, 39.480526, 16.381027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068935, 39.651657, 16.542770>,  <31.991583, 39.936874, 16.812342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068935, 39.651657, 16.542770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393206, -0.685642, 0.612604,
		-0.898884, 0.146526, -0.412962,
		0.193381, -0.713039, -0.673928,
		32.126949, 39.437744, 16.340591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351887, 39.609070, 16.760096>,  <31.991583, 39.936874, 16.812342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351887, 39.609070, 16.760096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639078, 39.355343, 16.645447>,  <31.811392, 39.203106, 16.576658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639078, 39.355343, 16.645447>,  <31.351887, 39.609070, 16.760096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639078, 39.355343, 16.645447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326423, -0.670515, 0.666227,
		-0.614782, -0.384776, -0.688470,
		0.717977, -0.634317, -0.286621,
		31.854471, 39.165047, 16.559460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059391, 38.961678, 16.821627>,  <31.351887, 39.609070, 16.760096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059391, 38.961678, 16.821627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446121, 38.861366, 16.802200>,  <31.678160, 38.801178, 16.790545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446121, 38.861366, 16.802200>,  <31.059391, 38.961678, 16.821627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446121, 38.861366, 16.802200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154762, -0.726340, 0.669686,
		-0.203219, -0.639953, -0.741055,
		0.966825, -0.250779, -0.048566,
		31.736168, 38.786133, 16.787630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061394, 38.261852, 16.808643>,  <31.059391, 38.961678, 16.821627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061394, 38.261852, 16.808643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429226, 38.348202, 16.939959>,  <31.649925, 38.400009, 17.018747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429226, 38.348202, 16.939959>,  <31.061394, 38.261852, 16.808643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429226, 38.348202, 16.939959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063792, -0.742426, 0.666884,
		0.387692, -0.634195, -0.668949,
		0.919579, 0.215872, 0.328289,
		31.705099, 38.412964, 17.038445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207108, 37.630299, 17.024584>,  <31.061394, 38.261852, 16.808643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207108, 37.630299, 17.024584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513428, 37.837269, 17.177332>,  <31.697220, 37.961449, 17.268980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513428, 37.837269, 17.177332>,  <31.207108, 37.630299, 17.024584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513428, 37.837269, 17.177332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088743, -0.673163, 0.734150,
		0.636925, -0.528325, -0.561426,
		0.765801, 0.517421, 0.381869,
		31.743168, 37.992496, 17.291893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.079075, 43.470882, 14.847136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465946, 43.369278, 14.849667>,  <34.698071, 43.308315, 14.851185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465946, 43.369278, 14.849667>,  <34.079075, 43.470882, 14.847136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465946, 43.369278, 14.849667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002750, 0.014426, 0.999892,
		-0.254080, -0.967093, 0.013254,
		0.967179, -0.254016, 0.006325,
		34.756100, 43.293072, 14.851564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030197, 42.894634, 15.264393>,  <34.079075, 43.470882, 14.847136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030197, 42.894634, 15.264393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.399685, 43.047165, 15.279025>,  <34.621376, 43.138683, 15.287805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.399685, 43.047165, 15.279025>,  <34.030197, 42.894634, 15.264393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399685, 43.047165, 15.279025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140587, 0.248619, 0.958344,
		0.356351, -0.890379, 0.283264,
		0.923715, 0.381330, 0.036580,
		34.676800, 43.161564, 15.289999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451584, 42.537823, 15.713264>,  <34.030197, 42.894634, 15.264393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451584, 42.537823, 15.713264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.635006, 42.893063, 15.700593>,  <34.745060, 43.106205, 15.692990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.635006, 42.893063, 15.700593>,  <34.451584, 42.537823, 15.713264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635006, 42.893063, 15.700593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003524, 0.037463, 0.999292,
		0.888657, -0.458122, 0.020309,
		0.458559, 0.888099, -0.031677,
		34.772575, 43.159492, 15.691090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078087, 42.475842, 16.135237>,  <34.451584, 42.537823, 15.713264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078087, 42.475842, 16.135237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994701, 42.866371, 16.112118>,  <34.944672, 43.100689, 16.098248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994701, 42.866371, 16.112118>,  <35.078087, 42.475842, 16.135237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994701, 42.866371, 16.112118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079439, 0.075801, 0.993953,
		0.974798, 0.202613, -0.093360,
		-0.208465, 0.976321, -0.057795,
		34.932163, 43.159267, 16.094780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381371, 42.736336, 16.700615>,  <35.078087, 42.475842, 16.135237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381371, 42.736336, 16.700615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132504, 43.034660, 16.605385>,  <34.983185, 43.213654, 16.548246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132504, 43.034660, 16.605385>,  <35.381371, 42.736336, 16.700615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132504, 43.034660, 16.605385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105990, 0.221057, 0.969484,
		0.775678, 0.628413, -0.058486,
		-0.622165, 0.745809, -0.238074,
		34.945854, 43.258404, 16.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626686, 43.257530, 17.119692>,  <35.381371, 42.736336, 16.700615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626686, 43.257530, 17.119692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.276493, 43.409851, 17.000687>,  <35.066376, 43.501244, 16.929283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.276493, 43.409851, 17.000687>,  <35.626686, 43.257530, 17.119692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276493, 43.409851, 17.000687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122271, 0.421068, 0.898750,
		0.467520, 0.823220, -0.322078,
		-0.875485, 0.380803, -0.297514,
		35.013847, 43.524094, 16.911432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545471, 43.989029, 17.340164>,  <35.626686, 43.257530, 17.119692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545471, 43.989029, 17.340164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180397, 43.829369, 17.305120>,  <34.961353, 43.733570, 17.284094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180397, 43.829369, 17.305120>,  <35.545471, 43.989029, 17.340164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180397, 43.829369, 17.305120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226020, 0.314449, 0.921974,
		-0.340462, 0.861277, -0.377211,
		-0.912689, -0.399154, -0.087608,
		34.906590, 43.709621, 17.278837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996181, 44.567532, 17.341520>,  <35.545471, 43.989029, 17.340164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996181, 44.567532, 17.341520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.825073, 44.231815, 17.475746>,  <34.722408, 44.030388, 17.556282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.825073, 44.231815, 17.475746>,  <34.996181, 44.567532, 17.341520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825073, 44.231815, 17.475746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275014, 0.474498, 0.836193,
		-0.861032, 0.265418, -0.433795,
		-0.427775, -0.839288, 0.335564,
		34.696739, 43.980030, 17.576416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497398, 44.831478, 17.792202>,  <34.996181, 44.567532, 17.341520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497398, 44.831478, 17.792202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.513222, 44.440708, 17.876162>,  <34.522717, 44.206245, 17.926538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.513222, 44.440708, 17.876162>,  <34.497398, 44.831478, 17.792202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513222, 44.440708, 17.876162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256007, 0.193144, 0.947183,
		-0.965865, -0.091208, -0.242458,
		0.039562, -0.976922, 0.209901,
		34.525089, 44.147633, 17.939133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161800, 44.734341, 18.401787>,  <34.497398, 44.831478, 17.792202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161800, 44.734341, 18.401787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331467, 44.372112, 18.400023>,  <34.433266, 44.154774, 18.398964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331467, 44.372112, 18.400023>,  <34.161800, 44.734341, 18.401787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331467, 44.372112, 18.400023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204494, -0.100530, 0.973692,
		-0.882192, -0.412108, -0.227826,
		0.424169, -0.905572, -0.004413,
		34.458717, 44.100441, 18.398699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600529, 44.259449, 18.795837>,  <34.161800, 44.734341, 18.401787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600529, 44.259449, 18.795837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.973907, 44.116737, 18.810705>,  <34.197937, 44.031109, 18.819626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.973907, 44.116737, 18.810705>,  <33.600529, 44.259449, 18.795837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973907, 44.116737, 18.810705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117199, -0.205398, 0.971636,
		-0.339027, -0.911328, -0.233543,
		0.933448, -0.356782, 0.037171,
		34.253941, 44.009705, 18.821857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444546, 43.533695, 18.929064>,  <33.600529, 44.259449, 18.795837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444546, 43.533695, 18.929064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824059, 43.611317, 19.028788>,  <34.051765, 43.657890, 19.088623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824059, 43.611317, 19.028788>,  <33.444546, 43.533695, 18.929064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824059, 43.611317, 19.028788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198747, -0.246810, 0.948464,
		0.245587, -0.949435, -0.195601,
		0.948781, 0.194055, 0.249311,
		34.108692, 43.669533, 19.103580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220375, 42.901783, 18.448929>,  <33.444546, 43.533695, 18.929064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220375, 42.901783, 18.448929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864128, 42.733177, 18.380663>,  <32.650379, 42.632015, 18.339705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864128, 42.733177, 18.380663>,  <33.220375, 42.901783, 18.448929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864128, 42.733177, 18.380663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011655, 0.396323, -0.918037,
		0.454607, -0.815630, -0.357884,
		-0.890616, -0.421517, -0.170665,
		32.596943, 42.606724, 18.329464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338783, 42.580696, 17.803314>,  <33.220375, 42.901783, 18.448929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338783, 42.580696, 17.803314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.940483, 42.590248, 17.838890>,  <32.701504, 42.595978, 17.860235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.940483, 42.590248, 17.838890>,  <33.338783, 42.580696, 17.803314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940483, 42.590248, 17.838890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084375, 0.150359, -0.985024,
		-0.036897, -0.988343, -0.147705,
		-0.995751, 0.023882, 0.088939,
		32.641758, 42.597412, 17.865572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174416, 42.250484, 17.247091>,  <33.338783, 42.580696, 17.803314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174416, 42.250484, 17.247091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849232, 42.452427, 17.363176>,  <32.654121, 42.573593, 17.432827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849232, 42.452427, 17.363176>,  <33.174416, 42.250484, 17.247091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849232, 42.452427, 17.363176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220650, 0.194147, -0.955835,
		-0.538904, -0.841087, -0.046436,
		-0.812955, 0.504857, 0.290212,
		32.605347, 42.603886, 17.450239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599369, 41.996300, 16.983824>,  <33.174416, 42.250484, 17.247091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599369, 41.996300, 16.983824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.482613, 42.371956, 17.056286>,  <32.412560, 42.597351, 17.099764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.482613, 42.371956, 17.056286>,  <32.599369, 41.996300, 16.983824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482613, 42.371956, 17.056286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255682, 0.105894, -0.960944,
		-0.921643, -0.326809, 0.209211,
		-0.291891, 0.939139, 0.181156,
		32.395046, 42.653698, 17.110632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014656, 42.120857, 16.620264>,  <32.599369, 41.996300, 16.983824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014656, 42.120857, 16.620264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152592, 42.487072, 16.703093>,  <32.235352, 42.706802, 16.752789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152592, 42.487072, 16.703093>,  <32.014656, 42.120857, 16.620264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152592, 42.487072, 16.703093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322882, 0.322834, -0.889677,
		-0.881383, 0.239933, 0.406936,
		0.344835, 0.915538, 0.207070,
		32.256042, 42.761734, 16.765213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452415, 42.622883, 16.477758>,  <32.014656, 42.120857, 16.620264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452415, 42.622883, 16.477758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.788973, 42.838684, 16.490387>,  <31.990908, 42.968163, 16.497965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.788973, 42.838684, 16.490387>,  <31.452415, 42.622883, 16.477758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788973, 42.838684, 16.490387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151338, 0.291300, -0.944585,
		-0.518800, 0.789990, 0.326745,
		0.841394, 0.539500, 0.031571,
		32.041389, 43.000534, 16.499859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215849, 43.299400, 16.279310>,  <31.452415, 42.622883, 16.477758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215849, 43.299400, 16.279310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612715, 43.280235, 16.233164>,  <31.850834, 43.268734, 16.205475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.612715, 43.280235, 16.233164>,  <31.215849, 43.299400, 16.279310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612715, 43.280235, 16.233164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070561, 0.547126, -0.834071,
		0.103086, 0.835678, 0.539459,
		0.992167, -0.047917, -0.115367,
		31.910364, 43.265862, 16.198553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396187, 43.888309, 15.856208>,  <31.215849, 43.299400, 16.279310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396187, 43.888309, 15.856208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.705185, 43.638325, 15.811183>,  <31.890585, 43.488335, 15.784168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.705185, 43.638325, 15.811183>,  <31.396187, 43.888309, 15.856208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705185, 43.638325, 15.811183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144828, 0.345978, -0.926997,
		0.618282, 0.699801, 0.357779,
		0.772497, -0.624962, -0.112561,
		31.936934, 43.450836, 15.777414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943108, 44.282219, 15.836924>,  <31.396187, 43.888309, 15.856208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943108, 44.282219, 15.836924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040081, 43.950516, 15.635507>,  <32.098267, 43.751492, 15.514657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.040081, 43.950516, 15.635507>,  <31.943108, 44.282219, 15.836924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040081, 43.950516, 15.635507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086197, 0.535384, -0.840199,
		0.966332, 0.160287, 0.201274,
		0.242432, -0.829260, -0.503542,
		32.112812, 43.701736, 15.484444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322296, 44.606518, 15.205175>,  <31.943108, 44.282219, 15.836924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322296, 44.606518, 15.205175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266293, 44.219677, 15.120211>,  <32.232689, 43.987572, 15.069231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266293, 44.219677, 15.120211>,  <32.322296, 44.606518, 15.205175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266293, 44.219677, 15.120211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070223, 0.204287, -0.976389,
		0.987657, -0.151618, 0.039311,
		-0.140008, -0.967098, -0.212413,
		32.224289, 43.929546, 15.056487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741745, 44.442455, 14.727936>,  <32.322296, 44.606518, 15.205175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741745, 44.442455, 14.727936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444595, 44.175327, 14.709368>,  <32.266308, 44.015049, 14.698227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444595, 44.175327, 14.709368>,  <32.741745, 44.442455, 14.727936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444595, 44.175327, 14.709368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175774, 0.261497, -0.949064,
		0.645945, -0.696874, -0.311645,
		-0.742872, -0.667822, -0.046421,
		32.221733, 43.974979, 14.695441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871826, 44.205967, 14.138401>,  <32.741745, 44.442455, 14.727936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871826, 44.205967, 14.138401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.497402, 44.099010, 14.229873>,  <32.272747, 44.034836, 14.284756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.497402, 44.099010, 14.229873>,  <32.871826, 44.205967, 14.138401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497402, 44.099010, 14.229873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278174, 0.164466, -0.946346,
		0.215443, -0.949446, -0.228333,
		-0.936057, -0.267400, 0.228678,
		32.216583, 44.018795, 14.298477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816204, 43.636269, 13.856371>,  <32.871826, 44.205967, 14.138401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816204, 43.636269, 13.856371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.465092, 43.827656, 13.865917>,  <32.254425, 43.942490, 13.871645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.465092, 43.827656, 13.865917>,  <32.816204, 43.636269, 13.856371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465092, 43.827656, 13.865917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035660, -0.015581, -0.999243,
		-0.477734, -0.877967, 0.030739,
		-0.877781, 0.478469, 0.023865,
		32.201759, 43.971195, 13.873076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884022, 42.868225, 14.090738>,  <32.816204, 43.636269, 13.856371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884022, 42.868225, 14.090738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023621, 42.576263, 13.855642>,  <33.107380, 42.401085, 13.714584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023621, 42.576263, 13.855642>,  <32.884022, 42.868225, 14.090738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023621, 42.576263, 13.855642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638503, -0.644278, 0.420975,
		-0.685940, 0.228354, -0.690899,
		0.348999, -0.729905, -0.587740,
		33.128319, 42.357292, 13.679320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288849, 42.454502, 13.839946>,  <32.884022, 42.868225, 14.090738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288849, 42.454502, 13.839946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.612183, 42.220947, 13.809815>,  <32.806183, 42.080814, 13.791737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.612183, 42.220947, 13.809815>,  <32.288849, 42.454502, 13.839946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612183, 42.220947, 13.809815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494075, -0.742371, 0.452521,
		-0.320142, -0.328570, -0.888567,
		0.808331, -0.583890, -0.075326,
		32.854683, 42.045780, 13.787217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991590, 41.754688, 13.841275>,  <32.288849, 42.454502, 13.839946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991590, 41.754688, 13.841275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.381283, 41.677666, 13.888257>,  <32.615097, 41.631454, 13.916446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.381283, 41.677666, 13.888257>,  <31.991590, 41.754688, 13.841275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381283, 41.677666, 13.888257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224822, -0.870823, 0.437176,
		0.018102, -0.452317, -0.891673,
		0.974232, -0.192554, 0.117454,
		32.673553, 41.619900, 13.923493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082832, 41.050175, 13.619028>,  <31.991590, 41.754688, 13.841275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082832, 41.050175, 13.619028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.368382, 41.171417, 13.871540>,  <32.539711, 41.244164, 14.023047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.368382, 41.171417, 13.871540>,  <32.082832, 41.050175, 13.619028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368382, 41.171417, 13.871540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056664, -0.873515, 0.483489,
		0.697981, -0.380919, -0.606402,
		0.713871, 0.303105, 0.631281,
		32.582542, 41.262348, 14.060925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564323, 40.447517, 13.734333>,  <32.082832, 41.050175, 13.619028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564323, 40.447517, 13.734333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648476, 40.668697, 14.056821>,  <32.698967, 40.801403, 14.250314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648476, 40.668697, 14.056821>,  <32.564323, 40.447517, 13.734333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648476, 40.668697, 14.056821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163088, -0.793270, 0.586622,
		0.963920, -0.254900, -0.076712,
		0.210383, 0.552945, 0.806220,
		32.711590, 40.834579, 14.298687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977791, 40.042908, 14.123959>,  <32.564323, 40.447517, 13.734333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977791, 40.042908, 14.123959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.853447, 40.306911, 14.397529>,  <32.778839, 40.465313, 14.561671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.853447, 40.306911, 14.397529>,  <32.977791, 40.042908, 14.123959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853447, 40.306911, 14.397529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153090, -0.744950, 0.649317,
		0.938046, 0.097144, 0.332615,
		-0.310858, 0.660010, 0.683926,
		32.760189, 40.504913, 14.602706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318474, 39.933510, 14.742985>,  <32.977791, 40.042908, 14.123959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318474, 39.933510, 14.742985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.001770, 40.145218, 14.864960>,  <32.811749, 40.272243, 14.938145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.001770, 40.145218, 14.864960>,  <33.318474, 39.933510, 14.742985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001770, 40.145218, 14.864960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151736, -0.653992, 0.741128,
		0.591682, 0.540528, 0.598116,
		-0.791763, 0.529267, 0.304938,
		32.764240, 40.303997, 14.956441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427765, 39.834274, 15.389155>,  <33.318474, 39.933510, 14.742985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427765, 39.834274, 15.389155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.042946, 39.941010, 15.366328>,  <32.812054, 40.005051, 15.352632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.042946, 39.941010, 15.366328>,  <33.427765, 39.834274, 15.389155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042946, 39.941010, 15.366328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217407, -0.623160, 0.751269,
		0.164905, 0.735166, 0.657524,
		-0.962050, 0.266838, -0.057068,
		32.754330, 40.021061, 15.349208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214127, 40.042854, 15.649227>,  <33.427765, 39.834274, 15.389155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214127, 40.042854, 15.649227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428585, 39.718109, 15.556775>,  <34.557259, 39.523262, 15.501304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.428585, 39.718109, 15.556775>,  <34.214127, 40.042854, 15.649227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428585, 39.718109, 15.556775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133576, 0.351959, -0.926435,
		0.833490, 0.465831, 0.297147,
		0.536146, -0.811866, -0.231131,
		34.589428, 39.474548, 15.487436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759602, 40.283585, 15.218704>,  <34.214127, 40.042854, 15.649227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759602, 40.283585, 15.218704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.746796, 39.894787, 15.125579>,  <34.739113, 39.661507, 15.069704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.746796, 39.894787, 15.125579>,  <34.759602, 40.283585, 15.218704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746796, 39.894787, 15.125579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054191, 0.230902, -0.971467,
		0.998017, -0.043718, 0.045281,
		-0.032016, -0.971994, -0.232813,
		34.737190, 39.603188, 15.055735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331421, 40.181572, 14.802962>,  <34.759602, 40.283585, 15.218704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331421, 40.181572, 14.802962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086227, 39.876507, 14.720408>,  <34.939110, 39.693466, 14.670876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.086227, 39.876507, 14.720408>,  <35.331421, 40.181572, 14.802962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086227, 39.876507, 14.720408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076738, 0.202512, -0.976268,
		0.786359, -0.614276, -0.065612,
		-0.612985, -0.762662, -0.206386,
		34.902332, 39.647709, 14.658493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659321, 39.746113, 14.288128>,  <35.331421, 40.181572, 14.802962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659321, 39.746113, 14.288128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264938, 39.679985, 14.278740>,  <35.028309, 39.640308, 14.273107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264938, 39.679985, 14.278740>,  <35.659321, 39.746113, 14.288128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264938, 39.679985, 14.278740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003188, 0.159173, -0.987246,
		0.166969, -0.973307, -0.157464,
		-0.985957, -0.165341, -0.023474,
		34.969151, 39.630390, 14.271699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715488, 39.417980, 13.662089>,  <35.659321, 39.746113, 14.288128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715488, 39.417980, 13.662089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.321785, 39.463173, 13.716439>,  <35.085564, 39.490288, 13.749049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.321785, 39.463173, 13.716439>,  <35.715488, 39.417980, 13.662089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321785, 39.463173, 13.716439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114767, 0.175968, -0.977683,
		-0.134369, -0.977891, -0.160232,
		-0.984263, 0.112981, 0.135874,
		35.026505, 39.497066, 13.757201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403542, 38.904198, 13.279119>,  <35.715488, 39.417980, 13.662089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403542, 38.904198, 13.279119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.159954, 39.217167, 13.331233>,  <35.013802, 39.404949, 13.362501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.159954, 39.217167, 13.331233>,  <35.403542, 38.904198, 13.279119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159954, 39.217167, 13.331233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169955, 0.031728, -0.984941,
		-0.774772, -0.621941, 0.113655,
		-0.608969, 0.782421, 0.130284,
		34.977264, 39.451893, 13.370318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959503, 38.588131, 12.885739>,  <35.403542, 38.904198, 13.279119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959503, 38.588131, 12.885739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.845493, 38.969162, 12.928354>,  <34.777088, 39.197781, 12.953923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.845493, 38.969162, 12.928354>,  <34.959503, 38.588131, 12.885739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845493, 38.969162, 12.928354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162370, 0.061559, -0.984808,
		-0.944669, -0.297989, 0.137125,
		-0.285021, 0.952582, 0.106538,
		34.759987, 39.254936, 12.960316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392303, 38.737122, 12.509571>,  <34.959503, 38.588131, 12.885739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392303, 38.737122, 12.509571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.506935, 39.115246, 12.571887>,  <34.575714, 39.342121, 12.609277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.506935, 39.115246, 12.571887>,  <34.392303, 38.737122, 12.509571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506935, 39.115246, 12.571887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233306, 0.226573, -0.945639,
		-0.929216, 0.234651, 0.285476,
		0.286576, 0.945306, 0.155790,
		34.592907, 39.398838, 12.618624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890213, 39.102913, 12.163935>,  <34.392303, 38.737122, 12.509571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890213, 39.102913, 12.163935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.198238, 39.357315, 12.183931>,  <34.383053, 39.509956, 12.195930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.198238, 39.357315, 12.183931>,  <33.890213, 39.102913, 12.163935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198238, 39.357315, 12.183931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202969, 0.318529, -0.925928,
		-0.604819, 0.702876, 0.374377,
		0.770063, 0.636006, 0.049991,
		34.429256, 39.548119, 12.198929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.195667, 36.345531, 27.779522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490231, 36.616035, 27.771784>,  <33.666969, 36.778339, 27.767141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490231, 36.616035, 27.771784>,  <33.195667, 36.345531, 27.779522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490231, 36.616035, 27.771784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237956, -0.285677, -0.928313,
		-0.633306, 0.679016, -0.371296,
		0.736410, 0.676259, -0.019345,
		33.711155, 36.818913, 27.765980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112484, 36.884624, 27.227743>,  <33.195667, 36.345531, 27.779522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112484, 36.884624, 27.227743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496620, 36.799759, 27.300116>,  <33.727100, 36.748840, 27.343538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496620, 36.799759, 27.300116>,  <33.112484, 36.884624, 27.227743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496620, 36.799759, 27.300116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138253, -0.201197, -0.969745,
		0.242144, 0.956299, -0.163885,
		0.960340, -0.212160, 0.180930,
		33.784721, 36.736111, 27.354395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480206, 37.308903, 26.809269>,  <33.112484, 36.884624, 27.227743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480206, 37.308903, 26.809269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707684, 36.988533, 26.884220>,  <33.844170, 36.796310, 26.929192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707684, 36.988533, 26.884220>,  <33.480206, 37.308903, 26.809269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707684, 36.988533, 26.884220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028576, -0.208426, -0.977621,
		0.822055, 0.561318, -0.095642,
		0.568690, -0.800925, 0.187378,
		33.878292, 36.748257, 26.940434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053810, 37.415390, 26.330948>,  <33.480206, 37.308903, 26.809269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053810, 37.415390, 26.330948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046055, 37.023529, 26.410851>,  <34.041401, 36.788414, 26.458792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046055, 37.023529, 26.410851>,  <34.053810, 37.415390, 26.330948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046055, 37.023529, 26.410851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051484, -0.200509, -0.978338,
		0.998486, -0.008682, 0.054323,
		-0.019386, -0.979654, 0.199758,
		34.040237, 36.729633, 26.470778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623806, 37.143208, 25.954363>,  <34.053810, 37.415390, 26.330948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623806, 37.143208, 25.954363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359852, 36.851154, 26.025312>,  <34.201481, 36.675922, 26.067883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359852, 36.851154, 26.025312>,  <34.623806, 37.143208, 25.954363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359852, 36.851154, 26.025312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005337, -0.231510, -0.972818,
		0.751352, -0.642890, 0.148872,
		-0.659881, -0.730134, 0.177376,
		34.161888, 36.632114, 26.078526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985680, 36.650803, 25.603949>,  <34.623806, 37.143208, 25.954363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985680, 36.650803, 25.603949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602337, 36.555473, 25.666878>,  <34.372330, 36.498276, 25.704636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602337, 36.555473, 25.666878>,  <34.985680, 36.650803, 25.603949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602337, 36.555473, 25.666878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097693, -0.244055, -0.964828,
		0.268341, -0.940020, 0.210610,
		-0.958358, -0.238328, 0.157323,
		34.314831, 36.483974, 25.714075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948486, 35.981705, 25.376606>,  <34.985680, 36.650803, 25.603949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948486, 35.981705, 25.376606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575092, 36.124477, 25.390471>,  <34.351055, 36.210140, 25.398788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575092, 36.124477, 25.390471>,  <34.948486, 35.981705, 25.376606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575092, 36.124477, 25.390471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160692, -0.329927, -0.930229,
		-0.320569, -0.873936, 0.365338,
		-0.933496, 0.356910, 0.034670,
		34.295048, 36.231556, 25.400869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517517, 35.461727, 25.013258>,  <34.948486, 35.981705, 25.376606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517517, 35.461727, 25.013258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283051, 35.785503, 24.999325>,  <34.142372, 35.979771, 24.990965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283051, 35.785503, 24.999325>,  <34.517517, 35.461727, 25.013258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283051, 35.785503, 24.999325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226984, -0.205341, -0.952005,
		-0.777745, -0.550127, 0.304095,
		-0.586166, 0.809441, -0.034833,
		34.107201, 36.028336, 24.988874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816566, 35.251759, 24.800688>,  <34.517517, 35.461727, 25.013258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816566, 35.251759, 24.800688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.868633, 35.634586, 24.697100>,  <33.899872, 35.864285, 24.634947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.868633, 35.634586, 24.697100>,  <33.816566, 35.251759, 24.800688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868633, 35.634586, 24.697100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323856, -0.205826, -0.923446,
		-0.937109, 0.204072, 0.283162,
		0.130167, 0.957074, -0.258972,
		33.907684, 35.921707, 24.619408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396271, 35.336971, 24.299614>,  <33.816566, 35.251759, 24.800688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396271, 35.336971, 24.299614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556393, 35.700260, 24.250814>,  <33.652466, 35.918236, 24.221535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556393, 35.700260, 24.250814>,  <33.396271, 35.336971, 24.299614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556393, 35.700260, 24.250814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342125, 0.024618, -0.939332,
		-0.850120, 0.417759, 0.320581,
		0.400307, 0.908224, -0.121997,
		33.676483, 35.972729, 24.214214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057518, 35.655098, 23.677544>,  <33.396271, 35.336971, 24.299614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057518, 35.655098, 23.677544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352905, 35.919651, 23.730053>,  <33.530136, 36.078384, 23.761559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352905, 35.919651, 23.730053>,  <33.057518, 35.655098, 23.677544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352905, 35.919651, 23.730053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079327, 0.278544, -0.957142,
		-0.669606, 0.696405, 0.258162,
		0.738468, 0.661387, 0.131271,
		33.574444, 36.118069, 23.769434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850052, 36.263687, 23.327145>,  <33.057518, 35.655098, 23.677544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850052, 36.263687, 23.327145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249882, 36.265213, 23.338652>,  <33.489780, 36.266129, 23.345556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249882, 36.265213, 23.338652>,  <32.850052, 36.263687, 23.327145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249882, 36.265213, 23.338652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025046, 0.387306, -0.921611,
		-0.014661, 0.921943, 0.387047,
		0.999579, 0.003818, 0.028770,
		33.549755, 36.266357, 23.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258221, 36.716053, 23.429867>,  <32.850052, 36.263687, 23.327145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258221, 36.716053, 23.429867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895174, 36.681248, 23.265594>,  <31.677345, 36.660362, 23.167032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895174, 36.681248, 23.265594>,  <32.258221, 36.716053, 23.429867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895174, 36.681248, 23.265594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331865, -0.450388, 0.828864,
		-0.257089, 0.888582, 0.379903,
		-0.907618, -0.087015, -0.410679,
		31.622889, 36.655144, 23.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783537, 37.171516, 23.857393>,  <32.258221, 36.716053, 23.429867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783537, 37.171516, 23.857393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547539, 36.902641, 23.678476>,  <31.405941, 36.741318, 23.571127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547539, 36.902641, 23.678476>,  <31.783537, 37.171516, 23.857393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547539, 36.902641, 23.678476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328590, -0.306137, 0.893481,
		-0.737520, 0.674124, -0.040256,
		-0.589994, -0.672188, -0.447293,
		31.370541, 36.700985, 23.544289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225880, 37.163128, 24.153860>,  <31.783537, 37.171516, 23.857393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225880, 37.163128, 24.153860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.183331, 36.797718, 23.996807>,  <31.157801, 36.578472, 23.902575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.183331, 36.797718, 23.996807>,  <31.225880, 37.163128, 24.153860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183331, 36.797718, 23.996807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500001, -0.292175, 0.815250,
		-0.859467, 0.283037, -0.425683,
		-0.106372, -0.913522, -0.392634,
		31.151419, 36.523663, 23.879017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521168, 36.992569, 24.286869>,  <31.225880, 37.163128, 24.153860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521168, 36.992569, 24.286869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684105, 36.635025, 24.211935>,  <30.781868, 36.420498, 24.166975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.684105, 36.635025, 24.211935>,  <30.521168, 36.992569, 24.286869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684105, 36.635025, 24.211935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602491, -0.417167, 0.680424,
		-0.686350, -0.164299, -0.708470,
		0.407343, -0.893856, -0.187333,
		30.806309, 36.366867, 24.155735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925737, 36.544361, 24.328321>,  <30.521168, 36.992569, 24.286869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925737, 36.544361, 24.328321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.248617, 36.308941, 24.346397>,  <30.442345, 36.167690, 24.357243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.248617, 36.308941, 24.346397>,  <29.925737, 36.544361, 24.328321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248617, 36.308941, 24.346397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372020, -0.447796, 0.813068,
		-0.458302, -0.673112, -0.580413,
		0.807193, -0.588556, 0.045185,
		30.490776, 36.132378, 24.359955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740072, 35.906914, 24.383060>,  <29.925737, 36.544361, 24.328321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740072, 35.906914, 24.383060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110292, 35.907619, 24.534510>,  <30.332424, 35.908043, 24.625380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110292, 35.907619, 24.534510>,  <29.740072, 35.906914, 24.383060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110292, 35.907619, 24.534510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356089, -0.335781, 0.872039,
		0.128677, -0.941938, -0.310152,
		0.925550, 0.001770, 0.378622,
		30.387957, 35.908150, 24.648096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970072, 35.234776, 24.675810>,  <29.740072, 35.906914, 24.383060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970072, 35.234776, 24.675810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182682, 35.502441, 24.883543>,  <30.310247, 35.663040, 25.008183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182682, 35.502441, 24.883543>,  <29.970072, 35.234776, 24.675810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182682, 35.502441, 24.883543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263211, -0.452280, 0.852152,
		0.805110, -0.589633, -0.064267,
		0.531524, 0.669160, 0.519333,
		30.342140, 35.703190, 25.039343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982962, 34.855644, 25.313156>,  <29.970072, 35.234776, 24.675810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982962, 34.855644, 25.313156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112410, 35.226971, 25.386377>,  <30.190079, 35.449764, 25.430309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112410, 35.226971, 25.386377>,  <29.982962, 34.855644, 25.313156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112410, 35.226971, 25.386377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120414, -0.151482, 0.981098,
		0.938495, -0.339543, 0.062759,
		0.323618, 0.928313, 0.183051,
		30.209496, 35.505463, 25.441292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438065, 34.807171, 25.872498>,  <29.982962, 34.855644, 25.313156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438065, 34.807171, 25.872498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279238, 35.174137, 25.862030>,  <30.183941, 35.394318, 25.855749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279238, 35.174137, 25.862030>,  <30.438065, 34.807171, 25.872498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279238, 35.174137, 25.862030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355376, -0.127399, 0.926000,
		0.846193, 0.376986, 0.376614,
		-0.397069, 0.917415, -0.026168,
		30.160116, 35.449360, 25.854179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602270, 35.070724, 26.475435>,  <30.438065, 34.807171, 25.872498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602270, 35.070724, 26.475435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311197, 35.316376, 26.353243>,  <30.136553, 35.463768, 26.279926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.311197, 35.316376, 26.353243>,  <30.602270, 35.070724, 26.475435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311197, 35.316376, 26.353243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296248, 0.120287, 0.947506,
		0.618640, 0.779983, 0.094404,
		-0.727683, 0.614132, -0.305483,
		30.092892, 35.500614, 26.261599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607527, 35.616127, 26.982542>,  <30.602270, 35.070724, 26.475435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607527, 35.616127, 26.982542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.249205, 35.617870, 26.804773>,  <30.034210, 35.618916, 26.698112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.249205, 35.617870, 26.804773>,  <30.607527, 35.616127, 26.982542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249205, 35.617870, 26.804773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443656, 0.050791, 0.894757,
		0.026472, 0.998700, -0.043565,
		-0.895806, 0.004358, -0.444424,
		29.980463, 35.619179, 26.671446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138474, 36.143177, 27.387794>,  <30.607527, 35.616127, 26.982542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138474, 36.143177, 27.387794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.883923, 35.926815, 27.167812>,  <29.731192, 35.796997, 27.035824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.883923, 35.926815, 27.167812>,  <30.138474, 36.143177, 27.387794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883923, 35.926815, 27.167812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645814, -0.016290, 0.763321,
		-0.421843, 0.840926, -0.338957,
		-0.636375, -0.540905, -0.549953,
		29.693010, 35.764545, 27.002827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454611, 36.476360, 27.350483>,  <30.138474, 36.143177, 27.387794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454611, 36.476360, 27.350483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.395287, 36.086819, 27.281660>,  <29.359692, 35.853092, 27.240366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.395287, 36.086819, 27.281660>,  <29.454611, 36.476360, 27.350483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395287, 36.086819, 27.281660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642927, -0.037250, 0.765021,
		-0.751431, 0.224080, -0.620596,
		-0.148309, -0.973858, -0.172058,
		29.350794, 35.794662, 27.230043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817381, 36.402203, 27.403650>,  <29.454611, 36.476360, 27.350483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817381, 36.402203, 27.403650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.939394, 36.023277, 27.442757>,  <29.012602, 35.795921, 27.466221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.939394, 36.023277, 27.442757>,  <28.817381, 36.402203, 27.403650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939394, 36.023277, 27.442757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685559, -0.147167, 0.712987,
		-0.661032, -0.284511, -0.694327,
		0.305034, -0.947310, 0.097767,
		29.030905, 35.739086, 27.472086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978321, 36.963058, 27.822933>,  <28.817381, 36.402203, 27.403650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978321, 36.963058, 27.822933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.904850, 37.347641, 27.741091>,  <28.860767, 37.578392, 27.691986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.904850, 37.347641, 27.741091>,  <28.978321, 36.963058, 27.822933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904850, 37.347641, 27.741091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821605, 0.035888, -0.568926,
		-0.539655, -0.272603, -0.796530,
		-0.183676, 0.961457, -0.204605,
		28.849747, 37.636078, 27.679708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075888, 37.124416, 27.077282>,  <28.978321, 36.963058, 27.822933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075888, 37.124416, 27.077282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095692, 37.488449, 27.241863>,  <29.107574, 37.706871, 27.340612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095692, 37.488449, 27.241863>,  <29.075888, 37.124416, 27.077282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095692, 37.488449, 27.241863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560403, 0.315687, -0.765696,
		-0.826739, 0.268491, -0.494384,
		0.049512, 0.910085, 0.411454,
		29.110546, 37.761475, 27.365299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676128, 37.633747, 26.678375>,  <29.075888, 37.124416, 27.077282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676128, 37.633747, 26.678375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.999104, 37.768875, 26.871838>,  <29.192888, 37.849953, 26.987915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.999104, 37.768875, 26.871838>,  <28.676128, 37.633747, 26.678375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999104, 37.768875, 26.871838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289547, 0.487365, -0.823795,
		-0.514012, 0.805203, 0.295701,
		0.807437, 0.337821, 0.483656,
		29.241335, 37.870220, 27.016933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594423, 38.386566, 26.585424>,  <28.676128, 37.633747, 26.678375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594423, 38.386566, 26.585424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.976801, 38.308266, 26.672926>,  <29.206228, 38.261284, 26.725428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.976801, 38.308266, 26.672926>,  <28.594423, 38.386566, 26.585424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976801, 38.308266, 26.672926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292943, 0.588310, -0.753708,
		0.018843, 0.784585, 0.619735,
		0.955944, -0.195750, 0.218753,
		29.263584, 38.249542, 26.738552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966074, 38.838451, 26.301981>,  <28.594423, 38.386566, 26.585424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966074, 38.838451, 26.301981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.280855, 38.597603, 26.355879>,  <29.469725, 38.453094, 26.388218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.280855, 38.597603, 26.355879>,  <28.966074, 38.838451, 26.301981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280855, 38.597603, 26.355879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499617, 0.493694, -0.711793,
		0.362062, 0.627469, 0.689343,
		0.786953, -0.602120, 0.134747,
		29.516941, 38.416965, 26.396303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490511, 39.330410, 26.219385>,  <28.966074, 38.838451, 26.301981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490511, 39.330410, 26.219385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638199, 38.961147, 26.176567>,  <29.726812, 38.739590, 26.150877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638199, 38.961147, 26.176567>,  <29.490511, 39.330410, 26.219385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638199, 38.961147, 26.176567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536647, 0.305825, -0.786436,
		0.758740, 0.232923, 0.608326,
		0.369220, -0.923156, -0.107044,
		29.748964, 38.684200, 26.144453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238066, 39.439205, 26.098839>,  <29.490511, 39.330410, 26.219385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238066, 39.439205, 26.098839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.117905, 39.090664, 25.943663>,  <30.045809, 38.881538, 25.850557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.117905, 39.090664, 25.943663>,  <30.238066, 39.439205, 26.098839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117905, 39.090664, 25.943663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463783, 0.221965, -0.857693,
		0.833466, -0.437571, 0.337442,
		-0.300401, -0.871357, -0.387938,
		30.027784, 38.829258, 25.827282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867365, 39.150799, 25.859358>,  <30.238066, 39.439205, 26.098839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867365, 39.150799, 25.859358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565435, 38.986515, 25.654787>,  <30.384277, 38.887943, 25.532045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.565435, 38.986515, 25.654787>,  <30.867365, 39.150799, 25.859358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565435, 38.986515, 25.654787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477118, 0.191254, -0.857777,
		0.450113, -0.891480, 0.051596,
		-0.754822, -0.410714, -0.511427,
		30.338989, 38.863300, 25.501360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185585, 38.672180, 25.477905>,  <30.867365, 39.150799, 25.859358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185585, 38.672180, 25.477905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842041, 38.745983, 25.286774>,  <30.635916, 38.790264, 25.172094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842041, 38.745983, 25.286774>,  <31.185585, 38.672180, 25.477905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842041, 38.745983, 25.286774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479246, -0.039810, -0.876778,
		-0.180796, -0.982024, -0.054235,
		-0.858858, 0.184509, -0.477828,
		30.584383, 38.801334, 25.143425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206022, 38.312805, 24.817205>,  <31.185585, 38.672180, 25.477905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206022, 38.312805, 24.817205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902773, 38.570431, 24.776348>,  <30.720823, 38.725006, 24.751833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902773, 38.570431, 24.776348>,  <31.206022, 38.312805, 24.817205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902773, 38.570431, 24.776348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270293, 0.167808, -0.948041,
		-0.593455, -0.746342, -0.301305,
		-0.758125, 0.644060, -0.102145,
		30.675335, 38.763649, 24.745705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777750, 38.131577, 24.240961>,  <31.206022, 38.312805, 24.817205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777750, 38.131577, 24.240961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731504, 38.527847, 24.269812>,  <30.703756, 38.765610, 24.287121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731504, 38.527847, 24.269812>,  <30.777750, 38.131577, 24.240961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731504, 38.527847, 24.269812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356458, 0.109156, -0.927913,
		-0.927130, -0.081571, -0.365753,
		-0.115615, 0.990672, 0.072125,
		30.696819, 38.825050, 24.291449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509531, 38.334202, 23.567488>,  <30.777750, 38.131577, 24.240961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509531, 38.334202, 23.567488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.630175, 38.672958, 23.742670>,  <30.702560, 38.876213, 23.847780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.630175, 38.672958, 23.742670>,  <30.509531, 38.334202, 23.567488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630175, 38.672958, 23.742670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175617, 0.402141, -0.898577,
		-0.937118, 0.347933, -0.027438,
		0.301611, 0.846891, 0.437957,
		30.720657, 38.927025, 23.874058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144110, 38.816742, 23.280266>,  <30.509531, 38.334202, 23.567488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144110, 38.816742, 23.280266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.465206, 39.003979, 23.428051>,  <30.657864, 39.116322, 23.516722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.465206, 39.003979, 23.428051>,  <30.144110, 38.816742, 23.280266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465206, 39.003979, 23.428051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112128, 0.490027, -0.864466,
		-0.585692, 0.735368, 0.340878,
		0.802740, 0.468089, 0.369461,
		30.706028, 39.144405, 23.538889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005392, 39.542976, 23.243551>,  <30.144110, 38.816742, 23.280266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005392, 39.542976, 23.243551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397148, 39.462368, 23.248951>,  <30.632202, 39.414001, 23.252192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397148, 39.462368, 23.248951>,  <30.005392, 39.542976, 23.243551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397148, 39.462368, 23.248951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160399, 0.735417, -0.658357,
		0.122747, 0.646954, 0.752584,
		0.979390, -0.201525, 0.013501,
		30.690966, 39.401909, 23.253002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199572, 40.193153, 22.981016>,  <30.005392, 39.542976, 23.243551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199572, 40.193153, 22.981016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530830, 39.971371, 22.948158>,  <30.729586, 39.838303, 22.928444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530830, 39.971371, 22.948158>,  <30.199572, 40.193153, 22.981016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530830, 39.971371, 22.948158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277903, 0.533437, -0.798883,
		0.486765, 0.638766, 0.595851,
		0.828148, -0.554457, -0.082143,
		30.779274, 39.805035, 22.923515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636847, 40.656910, 22.825148>,  <30.199572, 40.193153, 22.981016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636847, 40.656910, 22.825148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.810713, 40.316708, 22.706686>,  <30.915033, 40.112587, 22.635609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.810713, 40.316708, 22.706686>,  <30.636847, 40.656910, 22.825148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810713, 40.316708, 22.706686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318598, 0.452798, -0.832748,
		0.842355, 0.267612, 0.467785,
		0.434665, -0.850504, -0.296156,
		30.941113, 40.061558, 22.617840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346254, 40.732178, 22.860266>,  <30.636847, 40.656910, 22.825148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346254, 40.732178, 22.860266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.291571, 40.448235, 22.583887>,  <31.258760, 40.277866, 22.418060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.291571, 40.448235, 22.583887>,  <31.346254, 40.732178, 22.860266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291571, 40.448235, 22.583887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505944, 0.549626, -0.664779,
		0.851664, -0.440461, 0.284012,
		-0.136709, -0.709863, -0.690945,
		31.250559, 40.235275, 22.376604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986706, 40.625145, 22.544485>,  <31.346254, 40.732178, 22.860266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986706, 40.625145, 22.544485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739929, 40.442593, 22.288015>,  <31.591864, 40.333061, 22.134134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739929, 40.442593, 22.288015>,  <31.986706, 40.625145, 22.544485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739929, 40.442593, 22.288015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545609, 0.339110, -0.766364,
		0.567180, -0.822632, 0.039793,
		-0.616942, -0.456378, -0.641172,
		31.554846, 40.305679, 22.095663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401482, 40.276073, 22.084278>,  <31.986706, 40.625145, 22.544485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401482, 40.276073, 22.084278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057499, 40.334480, 21.888666>,  <31.851109, 40.369526, 21.771299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057499, 40.334480, 21.888666>,  <32.401482, 40.276073, 22.084278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057499, 40.334480, 21.888666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509728, 0.293620, -0.808681,
		0.025507, -0.944704, -0.326930,
		-0.859958, 0.146018, -0.489032,
		31.799511, 40.378284, 21.741957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496403, 39.939064, 21.387589>,  <32.401482, 40.276073, 22.084278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496403, 39.939064, 21.387589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186165, 40.184864, 21.329838>,  <32.000023, 40.332344, 21.295187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186165, 40.184864, 21.329838>,  <32.496403, 39.939064, 21.387589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186165, 40.184864, 21.329838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391214, 0.288442, -0.873929,
		-0.495382, -0.734298, -0.464115,
		-0.775595, 0.614497, -0.144379,
		31.953485, 40.369213, 21.286524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358944, 39.830830, 20.685160>,  <32.496403, 39.939064, 21.387589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358944, 39.830830, 20.685160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193558, 40.183010, 20.777988>,  <32.094326, 40.394318, 20.833685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193558, 40.183010, 20.777988>,  <32.358944, 39.830830, 20.685160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193558, 40.183010, 20.777988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292421, 0.369779, -0.881903,
		-0.862284, -0.296778, -0.410354,
		-0.413469, 0.880447, 0.232070,
		32.069515, 40.447144, 20.847609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031006, 40.007084, 20.060932>,  <32.358944, 39.830830, 20.685160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031006, 40.007084, 20.060932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023033, 40.355606, 20.257065>,  <32.018250, 40.564720, 20.374744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023033, 40.355606, 20.257065>,  <32.031006, 40.007084, 20.060932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023033, 40.355606, 20.257065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126897, 0.488667, -0.863193,
		-0.991716, 0.045015, -0.120307,
		-0.019934, 0.871309, 0.490331,
		32.017052, 40.616997, 20.404163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648149, 40.368729, 19.682140>,  <32.031006, 40.007084, 20.060932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648149, 40.368729, 19.682140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882069, 40.601494, 19.908199>,  <32.022419, 40.741154, 20.043835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882069, 40.601494, 19.908199>,  <31.648149, 40.368729, 19.682140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882069, 40.601494, 19.908199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154268, 0.604199, -0.781757,
		-0.796376, 0.544353, 0.263563,
		0.584796, 0.581914, 0.565146,
		32.057507, 40.776070, 20.077744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376938, 40.980976, 19.595598>,  <31.648149, 40.368729, 19.682140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376938, 40.980976, 19.595598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757545, 41.047691, 19.698973>,  <31.985910, 41.087723, 19.760998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757545, 41.047691, 19.698973>,  <31.376938, 40.980976, 19.595598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757545, 41.047691, 19.698973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131991, 0.537500, -0.832870,
		-0.277823, 0.826604, 0.489428,
		0.951521, 0.166791, 0.258434,
		32.043003, 41.097729, 19.776503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374510, 41.675888, 19.687893>,  <31.376938, 40.980976, 19.595598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374510, 41.675888, 19.687893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757021, 41.588280, 19.610365>,  <31.986526, 41.535713, 19.563848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757021, 41.588280, 19.610365>,  <31.374510, 41.675888, 19.687893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757021, 41.588280, 19.610365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085057, 0.842336, -0.532199,
		0.279825, 0.492443, 0.824134,
		0.956276, -0.219021, -0.193821,
		32.043903, 41.522572, 19.552219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735235, 42.372162, 19.687706>,  <31.374510, 41.675888, 19.687893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735235, 42.372162, 19.687706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982033, 42.118275, 19.501610>,  <32.130112, 41.965942, 19.389952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982033, 42.118275, 19.501610>,  <31.735235, 42.372162, 19.687706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982033, 42.118275, 19.501610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239837, 0.714715, -0.657009,
		0.749530, 0.293790, 0.593205,
		0.616995, -0.634721, -0.465239,
		32.167130, 41.927860, 19.362038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411694, 42.790321, 19.607605>,  <31.735235, 42.372162, 19.687706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411694, 42.790321, 19.607605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401283, 42.490742, 19.342758>,  <32.395035, 42.310993, 19.183849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401283, 42.490742, 19.342758>,  <32.411694, 42.790321, 19.607605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401283, 42.490742, 19.342758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229656, 0.640147, -0.733124,
		0.972924, -0.171142, 0.155338,
		-0.026029, -0.748948, -0.662118,
		32.393475, 42.266056, 19.144123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938366, 42.974411, 19.177301>,  <32.411694, 42.790321, 19.607605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938366, 42.974411, 19.177301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734913, 42.724346, 18.940502>,  <32.612839, 42.574306, 18.798424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734913, 42.724346, 18.940502>,  <32.938366, 42.974411, 19.177301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734913, 42.724346, 18.940502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077583, 0.718066, -0.691638,
		0.857480, -0.305861, -0.413735,
		-0.508634, -0.625165, -0.591998,
		32.582321, 42.536797, 18.762903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562630, 42.988308, 19.399784>,  <32.938366, 42.974411, 19.177301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562630, 42.988308, 19.399784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840946, 43.269188, 19.460163>,  <34.007935, 43.437717, 19.496391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840946, 43.269188, 19.460163>,  <33.562630, 42.988308, 19.399784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840946, 43.269188, 19.460163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108451, -0.310466, 0.944377,
		0.710010, -0.640718, -0.292175,
		0.695790, 0.702204, 0.150947,
		34.049683, 43.479851, 19.505447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153481, 42.687832, 19.708820>,  <33.562630, 42.988308, 19.399784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153481, 42.687832, 19.708820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135391, 43.076569, 19.801321>,  <34.124538, 43.309811, 19.856821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135391, 43.076569, 19.801321>,  <34.153481, 42.687832, 19.708820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135391, 43.076569, 19.801321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069575, -0.227860, 0.971205,
		0.996551, 0.060006, -0.057312,
		-0.045219, 0.971843, 0.231249,
		34.121826, 43.368122, 19.870695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512299, 42.711975, 20.406893>,  <34.153481, 42.687832, 19.708820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512299, 42.711975, 20.406893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336708, 43.071156, 20.394341>,  <34.231354, 43.286663, 20.386808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336708, 43.071156, 20.394341>,  <34.512299, 42.711975, 20.406893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336708, 43.071156, 20.394341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080207, -0.004375, 0.996769,
		0.894910, 0.440078, 0.073942,
		-0.438979, 0.897949, -0.031382,
		34.205013, 43.340542, 20.384926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744038, 43.138020, 21.050922>,  <34.512299, 42.711975, 20.406893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744038, 43.138020, 21.050922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402020, 43.308060, 20.932137>,  <34.196808, 43.410084, 20.860865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402020, 43.308060, 20.932137>,  <34.744038, 43.138020, 21.050922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402020, 43.308060, 20.932137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348586, -0.047217, 0.936087,
		0.383908, 0.903915, 0.188556,
		-0.855045, 0.425099, -0.296965,
		34.145504, 43.435589, 20.843046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662704, 43.733265, 21.390690>,  <34.744038, 43.138020, 21.050922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662704, 43.733265, 21.390690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294678, 43.612816, 21.290447>,  <34.073860, 43.540546, 21.230303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294678, 43.612816, 21.290447>,  <34.662704, 43.733265, 21.390690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294678, 43.612816, 21.290447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289102, 0.090186, 0.953041,
		-0.264377, 0.949312, -0.170032,
		-0.920068, -0.301118, -0.250605,
		34.018658, 43.522480, 21.215265>
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
