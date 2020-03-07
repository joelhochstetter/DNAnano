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
	<2.706326, 0.011077, 4.154996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.823944, 0.371341, 4.027029>,  <2.894515, 0.587500, 3.950249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.823944, 0.371341, 4.027029>,  <2.706326, 0.011077, 4.154996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.823944, 0.371341, 4.027029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106872, -0.363598, -0.925405,
		-0.949798, 0.237920, -0.203170,
		0.294045, 0.900661, -0.319918,
		2.912158, 0.641540, 3.931054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.282916, 0.357103, 3.566603>,  <2.706326, 0.011077, 4.154996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.282916, 0.357103, 3.566603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.668053, 0.464983, 3.560968>,  <2.899135, 0.529712, 3.557587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.668053, 0.464983, 3.560968>,  <2.282916, 0.357103, 3.566603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.668053, 0.464983, 3.560968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022325, -0.131468, -0.991069,
		-0.269144, 0.953928, -0.132604,
		0.962841, 0.269700, -0.014088,
		2.956905, 0.545894, 3.556742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.940106, 0.036348, 4.273770>,  <2.282916, 0.357103, 3.566603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.940106, 0.036348, 4.273770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770985, 0.197156, 3.948902>,  <1.669512, 0.293641, 3.753982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770985, 0.197156, 3.948902>,  <1.940106, 0.036348, 4.273770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.770985, 0.197156, 3.948902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510903, 0.634467, 0.580026,
		0.748476, 0.660176, -0.062861,
		-0.422802, 0.402020, -0.812169,
		1.644144, 0.317762, 3.705251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.832699, 0.737636, 4.368216>,  <1.940106, 0.036348, 4.273770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.832699, 0.737636, 4.368216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.557800, 0.634950, 4.096395>,  <1.392861, 0.573339, 3.933303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.557800, 0.634950, 4.096395>,  <1.832699, 0.737636, 4.368216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.557800, 0.634950, 4.096395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711093, 0.428922, 0.557111,
		0.148456, 0.866097, -0.477323,
		-0.687246, -0.256715, -0.679551,
		1.351626, 0.557936, 3.892530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.360739, 1.343749, 4.294868>,  <1.832699, 0.737636, 4.368216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.360739, 1.343749, 4.294868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.140892, 1.038673, 4.158501>,  <1.008984, 0.855627, 4.076681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.140892, 1.038673, 4.158501>,  <1.360739, 1.343749, 4.294868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140892, 1.038673, 4.158501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811999, 0.391760, 0.432645,
		-0.196417, 0.514613, -0.834622,
		-0.549616, -0.762691, -0.340917,
		0.976007, 0.809865, 4.056225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.763108, 1.606134, 3.894348>,  <1.360739, 1.343749, 4.294868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.763108, 1.606134, 3.894348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.687695, 1.234380, 4.021280>,  <0.642447, 1.011328, 4.097439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.687695, 1.234380, 4.021280>,  <0.763108, 1.606134, 3.894348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.687695, 1.234380, 4.021280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875430, 0.305481, 0.374571,
		-0.445059, -0.207181, -0.871205,
		-0.188533, -0.929386, 0.317329,
		0.631135, 0.955564, 4.116479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.085945, 1.552965, 3.636522>,  <0.763108, 1.606134, 3.894348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.085945, 1.552965, 3.636522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.147827, 1.288537, 3.930202>,  <0.184957, 1.129880, 4.106411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.147827, 1.288537, 3.930202>,  <0.085945, 1.552965, 3.636522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.147827, 1.288537, 3.930202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908705, 0.196426, 0.368336,
		-0.387713, -0.724157, -0.570329,
		0.154706, -0.661070, 0.734202,
		0.194239, 1.090216, 4.150463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.537166, 1.229707, 3.638976>,  <0.085945, 1.552965, 3.636522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.537166, 1.229707, 3.638976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.379730, 1.148850, 3.997690>,  <-0.285269, 1.100335, 4.212919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.379730, 1.148850, 3.997690>,  <-0.537166, 1.229707, 3.638976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.379730, 1.148850, 3.997690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861874, 0.258205, 0.436468,
		-0.319784, -0.944705, -0.072596,
		0.393589, -0.202144, 0.896787,
		-0.261654, 1.088207, 4.266726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.851214, 1.957966, 5.289425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.769630, 1.618601, 5.484810>,  <-0.720681, 1.414982, 5.602041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.769630, 1.618601, 5.484810>,  <-0.851214, 1.957966, 5.289425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.769630, 1.618601, 5.484810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617079, -0.275935, -0.736935,
		0.760010, 0.451723, 0.467259,
		0.203958, -0.848414, 0.488463,
		-0.708443, 1.364077, 5.631349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.218112, 1.828148, 5.113527>,  <-0.851214, 1.957966, 5.289425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.218112, 1.828148, 5.113527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.375954, 1.477041, 5.222202>,  <-0.470658, 1.266377, 5.287407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.375954, 1.477041, 5.222202>,  <-0.218112, 1.828148, 5.113527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.375954, 1.477041, 5.222202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495090, -0.452201, -0.741890,
		0.774064, -0.158242, 0.613013,
		-0.394603, -0.877767, 0.271688,
		-0.494335, 1.213711, 5.303709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.309486, 1.373078, 5.283904>,  <-0.218112, 1.828148, 5.113527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.309486, 1.373078, 5.283904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.021851, 1.205633, 5.134979>,  <-0.220652, 1.105167, 5.045624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.021851, 1.205633, 5.134979>,  <0.309486, 1.373078, 5.283904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.021851, 1.205633, 5.134979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539184, -0.415284, -0.732680,
		0.152093, -0.807653, 0.569705,
		-0.828341, -0.418611, -0.372312,
		-0.270353, 1.080050, 5.023285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.370467, 0.631909, 5.331343>,  <0.309486, 1.373078, 5.283904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.370467, 0.631909, 5.331343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.142998, 0.752205, 5.025097>,  <0.006516, 0.824383, 4.841350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.142998, 0.752205, 5.025097>,  <0.370467, 0.631909, 5.331343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.142998, 0.752205, 5.025097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524152, -0.584839, -0.619054,
		-0.633936, -0.753337, 0.174949,
		-0.568674, 0.300741, -0.765614,
		-0.027604, 0.842427, 4.795413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.258858, 0.036699, 4.952730>,  <0.370467, 0.631909, 5.331343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.258858, 0.036699, 4.952730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.213058, 0.353777, 4.713223>,  <0.185579, 0.544024, 4.569518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.213058, 0.353777, 4.713223>,  <0.258858, 0.036699, 4.952730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.213058, 0.353777, 4.713223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639870, -0.402204, -0.654827,
		-0.759906, -0.458111, -0.461170,
		-0.114499, 0.792695, -0.598769,
		0.178709, 0.591586, 4.533592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.168866, -0.283637, 4.325425>,  <0.258858, 0.036699, 4.952730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.168866, -0.283637, 4.325425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.317909, 0.083914, 4.273533>,  <0.407335, 0.304444, 4.242398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.317909, 0.083914, 4.273533>,  <0.168866, -0.283637, 4.325425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.317909, 0.083914, 4.273533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676193, -0.364583, -0.640190,
		-0.635553, 0.150817, -0.757184,
		0.372608, 0.918876, -0.129730,
		0.429692, 0.359577, 4.234614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.271663, -0.204032, 3.588858>,  <0.168866, -0.283637, 4.325425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.271663, -0.204032, 3.588858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.484322, 0.104769, 3.728207>,  <0.611917, 0.290049, 3.811816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.484322, 0.104769, 3.728207>,  <0.271663, -0.204032, 3.588858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.484322, 0.104769, 3.728207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706302, -0.177109, -0.685398,
		-0.467429, 0.610446, -0.639427,
		0.531646, 0.772003, 0.348373,
		0.643816, 0.336370, 3.832718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.461773, 0.168631, 3.036531>,  <0.271663, -0.204032, 3.588858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.461773, 0.168631, 3.036531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.733849, 0.275127, 3.309723>,  <0.897094, 0.339025, 3.473638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.733849, 0.275127, 3.309723>,  <0.461773, 0.168631, 3.036531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.733849, 0.275127, 3.309723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729485, -0.154231, -0.666381,
		-0.072081, 0.951488, -0.299124,
		0.680188, 0.266240, 0.682979,
		0.937905, 0.354999, 3.514617>
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
