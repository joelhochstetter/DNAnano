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
	<2.584146, 5.647254, -0.412322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.204002, 5.529102, -0.451454>,  <1.975916, 5.458211, -0.474934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.204002, 5.529102, -0.451454>,  <2.584146, 5.647254, -0.412322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204002, 5.529102, -0.451454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134045, -0.672388, 0.727961,
		-0.280804, 0.678710, 0.678603,
		-0.950358, -0.295378, -0.097831,
		1.918895, 5.440489, -0.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.256959, 5.709160, 0.211213>,  <2.584146, 5.647254, -0.412322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.256959, 5.709160, 0.211213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.053436, 5.432041, 0.006802>,  <1.931323, 5.265770, -0.115845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.053436, 5.432041, 0.006802>,  <2.256959, 5.709160, 0.211213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053436, 5.432041, 0.006802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011528, -0.599040, 0.800636,
		-0.860804, 0.401478, 0.312782,
		-0.508806, -0.692797, -0.511028,
		1.900795, 5.224202, -0.146507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.582235, 5.446357, 0.536366>,  <2.256959, 5.709160, 0.211213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.582235, 5.446357, 0.536366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.713888, 5.167721, 0.281357>,  <1.792880, 5.000539, 0.128351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.713888, 5.167721, 0.281357>,  <1.582235, 5.446357, 0.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.713888, 5.167721, 0.281357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066590, -0.690580, 0.720185,
		-0.941933, -0.194584, -0.273678,
		0.329133, -0.696590, -0.637522,
		1.812628, 4.958744, 0.090100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.329919, 4.798619, 0.746237>,  <1.582235, 5.446357, 0.536366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.329919, 4.798619, 0.746237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.642878, 4.706318, 0.514854>,  <1.830652, 4.650938, 0.376025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.642878, 4.706318, 0.514854>,  <1.329919, 4.798619, 0.746237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.642878, 4.706318, 0.514854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304122, -0.668987, 0.678208,
		-0.543476, -0.706548, -0.453237,
		0.782396, -0.230750, -0.578455,
		1.877596, 4.637092, 0.341318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.323320, 4.068670, 0.493106>,  <1.329919, 4.798619, 0.746237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.323320, 4.068670, 0.493106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.699190, 4.202477, 0.521694>,  <1.924712, 4.282760, 0.538847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.699190, 4.202477, 0.521694>,  <1.323320, 4.068670, 0.493106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.699190, 4.202477, 0.521694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224352, -0.760427, 0.609439,
		0.258214, -0.556641, -0.789605,
		0.939676, 0.334515, 0.071470,
		1.981093, 4.302831, 0.543135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.644662, 3.504770, 0.658076>,  <1.323320, 4.068670, 0.493106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.644662, 3.504770, 0.658076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.948666, 3.755199, 0.727840>,  <2.131068, 3.905457, 0.769699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.948666, 3.755199, 0.727840>,  <1.644662, 3.504770, 0.658076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.948666, 3.755199, 0.727840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360638, -0.629512, 0.688226,
		0.540674, -0.460158, -0.704221,
		0.760008, 0.626075, 0.174410,
		2.176668, 3.943022, 0.780164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.162601, 3.113500, 0.555471>,  <1.644662, 3.504770, 0.658076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.162601, 3.113500, 0.555471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.301567, 3.394325, 0.804119>,  <2.384947, 3.562820, 0.953308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.301567, 3.394325, 0.804119>,  <2.162601, 3.113500, 0.555471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.301567, 3.394325, 0.804119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194755, -0.702479, 0.684539,
		0.917264, -0.116757, -0.380783,
		0.347417, 0.702062, 0.621619,
		2.405792, 3.604944, 0.990605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846958, 2.899516, 0.739090>,  <2.162601, 3.113500, 0.555471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846958, 2.899516, 0.739090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.713963, 3.142220, 1.027893>,  <2.634166, 3.287842, 1.201175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.713963, 3.142220, 1.027893>,  <2.846958, 2.899516, 0.739090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.713963, 3.142220, 1.027893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523985, -0.517682, 0.676347,
		0.784150, 0.603198, -0.145810,
		-0.332488, 0.606760, 0.722007,
		2.614216, 3.324248, 1.244495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.753961, 2.407100, 2.486449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.019173, 2.705704, 2.464111>,  <3.178299, 2.884866, 2.450709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.019173, 2.705704, 2.464111>,  <2.753961, 2.407100, 2.486449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.019173, 2.705704, 2.464111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555149, 0.440280, -0.705664,
		-0.502198, 0.498877, 0.706342,
		0.663028, 0.746509, -0.055843,
		3.218081, 2.929656, 2.447358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.372458, 2.914440, 2.345629>,  <2.753961, 2.407100, 2.486449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.372458, 2.914440, 2.345629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.732231, 3.021637, 2.207527>,  <2.948095, 3.085955, 2.124666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.732231, 3.021637, 2.207527>,  <2.372458, 2.914440, 2.345629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.732231, 3.021637, 2.207527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435134, 0.474997, -0.764877,
		-0.040986, 0.838187, 0.543840,
		0.899432, 0.267993, -0.345256,
		3.002061, 3.102035, 2.103951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084336, 3.483642, 2.117457>,  <2.372458, 2.914440, 2.345629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084336, 3.483642, 2.117457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.446121, 3.460747, 1.948380>,  <2.663193, 3.447010, 1.846933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.446121, 3.460747, 1.948380>,  <2.084336, 3.483642, 2.117457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.446121, 3.460747, 1.948380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339304, 0.503983, -0.794276,
		0.258492, 0.861815, 0.436413,
		0.904464, -0.057237, -0.422693,
		2.717460, 3.443576, 1.821572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.244769, 4.254957, 2.069794>,  <2.084336, 3.483642, 2.117457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.244769, 4.254957, 2.069794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.428185, 4.010674, 1.811562>,  <2.538234, 3.864104, 1.656622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.428185, 4.010674, 1.811562>,  <2.244769, 4.254957, 2.069794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.428185, 4.010674, 1.811562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120119, 0.677196, -0.725932,
		0.880518, 0.410415, 0.237164,
		0.458540, -0.610708, -0.645582,
		2.565747, 3.827461, 1.617887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.832796, 4.623232, 1.731790>,  <2.244769, 4.254957, 2.069794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.832796, 4.623232, 1.731790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.713577, 4.322525, 1.496498>,  <2.642046, 4.142101, 1.355323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.713577, 4.322525, 1.496498>,  <2.832796, 4.623232, 1.731790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.713577, 4.322525, 1.496498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061764, 0.599758, -0.797794,
		0.952551, -0.274111, -0.132324,
		-0.298046, -0.751767, -0.588230,
		2.624163, 4.096995, 1.320029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.254354, 4.636774, 1.094877>,  <2.832796, 4.623232, 1.731790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.254354, 4.636774, 1.094877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.909000, 4.456085, 1.004974>,  <2.701788, 4.347672, 0.951033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.909000, 4.456085, 1.004974>,  <3.254354, 4.636774, 1.094877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.909000, 4.456085, 1.004974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171440, 0.681611, -0.711347,
		0.474526, -0.575634, -0.665936,
		-0.863385, -0.451721, -0.224756,
		2.649985, 4.320569, 0.937547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.148417, 4.693106, 0.375901>,  <3.254354, 4.636774, 1.094877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.148417, 4.693106, 0.375901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.773460, 4.607300, 0.485649>,  <2.548486, 4.555816, 0.551498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.773460, 4.607300, 0.485649>,  <3.148417, 4.693106, 0.375901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.773460, 4.607300, 0.485649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346493, 0.654016, -0.672462,
		-0.035190, -0.725428, -0.687397,
		-0.937392, -0.214514, 0.274370,
		2.492243, 4.542945, 0.567960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.695065, 4.555453, -0.206254>,  <3.148417, 4.693106, 0.375901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.695065, 4.555453, -0.206254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515343, 4.726898, 0.107285>,  <2.407509, 4.829765, 0.295408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515343, 4.726898, 0.107285>,  <2.695065, 4.555453, -0.206254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.515343, 4.726898, 0.107285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189366, 0.811768, -0.552425,
		-0.873078, -0.396642, -0.283567,
		-0.449306, 0.428612, 0.783847,
		2.380551, 4.855482, 0.342439>
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
