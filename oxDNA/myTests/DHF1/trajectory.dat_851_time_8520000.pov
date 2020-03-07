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
	<0.740857, 2.244534, 4.141206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.688126, 2.602592, 4.311540>,  <0.656487, 2.817428, 4.413740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.688126, 2.602592, 4.311540>,  <0.740857, 2.244534, 4.141206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.688126, 2.602592, 4.311540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989499, 0.144517, 0.002536,
		-0.059270, 0.421697, -0.904797,
		-0.131828, 0.895146, 0.425834,
		0.648577, 2.871136, 4.439290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.023714, 2.788708, 3.746573>,  <0.740857, 2.244534, 4.141206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.023714, 2.788708, 3.746573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.025520, 2.892952, 4.132747>,  <1.026604, 2.955498, 4.364451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.025520, 2.892952, 4.132747>,  <1.023714, 2.788708, 3.746573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.025520, 2.892952, 4.132747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962624, 0.260314, -0.074771,
		-0.270802, 0.929687, -0.249695,
		0.004515, 0.260611, 0.965433,
		1.026875, 2.971135, 4.422377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.292706, 3.481259, 3.869025>,  <1.023714, 2.788708, 3.746573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.292706, 3.481259, 3.869025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.373077, 3.258018, 4.191056>,  <1.421300, 3.124074, 4.384275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.373077, 3.258018, 4.191056>,  <1.292706, 3.481259, 3.869025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.373077, 3.258018, 4.191056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947287, 0.320055, -0.014549,
		-0.249550, 0.765563, 0.592991,
		0.200928, -0.558102, 0.805078,
		1.433356, 3.090588, 4.432580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.503951, 3.815637, 4.521719>,  <1.292706, 3.481259, 3.869025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.503951, 3.815637, 4.521719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.681137, 3.457558, 4.502110>,  <1.787449, 3.242710, 4.490344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.681137, 3.457558, 4.502110>,  <1.503951, 3.815637, 4.521719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681137, 3.457558, 4.502110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862515, 0.410595, 0.295768,
		-0.244643, -0.173298, 0.954001,
		0.442964, -0.895198, -0.049022,
		1.814026, 3.188998, 4.487403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.998415, 3.767818, 5.048422>,  <1.503951, 3.815637, 4.521719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.998415, 3.767818, 5.048422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.120041, 3.472183, 4.807991>,  <2.193017, 3.294802, 4.663732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.120041, 3.472183, 4.807991>,  <1.998415, 3.767818, 5.048422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.120041, 3.472183, 4.807991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949924, 0.187519, 0.249962,
		-0.072030, -0.646984, 0.759094,
		0.304066, -0.739086, -0.601078,
		2.211261, 3.250457, 4.627667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.468284, 3.334585, 5.490565>,  <1.998415, 3.767818, 5.048422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.468284, 3.334585, 5.490565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.563995, 3.277023, 5.106474>,  <2.621422, 3.242486, 4.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.563995, 3.277023, 5.106474>,  <2.468284, 3.334585, 5.490565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.563995, 3.277023, 5.106474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949381, 0.241974, 0.200312,
		0.203524, -0.959552, 0.194520,
		0.239278, -0.143905, -0.960227,
		2.635779, 3.233852, 4.818406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.990366, 2.828697, 5.416644>,  <2.468284, 3.334585, 5.490565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.990366, 2.828697, 5.416644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.008381, 3.029915, 5.071409>,  <3.019190, 3.150646, 4.864269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.008381, 3.029915, 5.071409>,  <2.990366, 2.828697, 5.416644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.008381, 3.029915, 5.071409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951190, 0.242444, 0.190940,
		0.305301, -0.829558, -0.467573,
		0.045036, 0.503045, -0.863086,
		3.021892, 3.180828, 4.812483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.609601, 2.653998, 5.240171>,  <2.990366, 2.828697, 5.416644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.609601, 2.653998, 5.240171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.525589, 2.974022, 5.015389>,  <3.475182, 3.166036, 4.880520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.525589, 2.974022, 5.015389>,  <3.609601, 2.653998, 5.240171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.525589, 2.974022, 5.015389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961738, 0.272485, 0.028488,
		0.175916, -0.534470, -0.826677,
		-0.210031, 0.800059, -0.561955,
		3.462580, 3.214040, 4.846803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.178258, 3.605829, 5.560459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.225632, 3.912300, 5.307810>,  <4.254056, 4.096183, 5.156221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.225632, 3.912300, 5.307810>,  <4.178258, 3.605829, 5.560459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.225632, 3.912300, 5.307810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668903, -0.408552, -0.621011,
		-0.733855, 0.496042, 0.464111,
		0.118433, 0.766177, -0.631622,
		4.261162, 4.142153, 5.118324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.545411, 3.953207, 5.483957>,  <4.178258, 3.605829, 5.560459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.545411, 3.953207, 5.483957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.786652, 3.970772, 5.165375>,  <3.931396, 3.981311, 4.974226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.786652, 3.970772, 5.165375>,  <3.545411, 3.953207, 5.483957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.786652, 3.970772, 5.165375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679402, -0.494891, -0.541752,
		-0.417948, 0.867845, -0.268635,
		0.603102, 0.043913, -0.796454,
		3.967582, 3.983946, 4.926439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.282628, 4.365342, 4.938795>,  <3.545411, 3.953207, 5.483957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.282628, 4.365342, 4.938795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503365, 4.056862, 4.811849>,  <3.635807, 3.871774, 4.735681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.503365, 4.056862, 4.811849>,  <3.282628, 4.365342, 4.938795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.503365, 4.056862, 4.811849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760338, -0.308950, -0.571345,
		0.342571, 0.556598, -0.756864,
		0.551843, -0.771200, -0.317366,
		3.668917, 3.825502, 4.716639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.030967, 4.322663, 4.218931>,  <3.282628, 4.365342, 4.938795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.030967, 4.322663, 4.218931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.193581, 3.980232, 4.346593>,  <3.291149, 3.774774, 4.423191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.193581, 3.980232, 4.346593>,  <3.030967, 4.322663, 4.218931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193581, 3.980232, 4.346593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853193, -0.480670, -0.202530,
		0.326790, -0.189966, -0.925808,
		0.406535, -0.856078, 0.319156,
		3.315541, 3.723409, 4.442340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.979663, 3.783831, 3.690186>,  <3.030967, 4.322663, 4.218931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.979663, 3.783831, 3.690186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.006104, 3.607422, 4.048210>,  <3.021968, 3.501576, 4.263024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.006104, 3.607422, 4.048210>,  <2.979663, 3.783831, 3.690186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.006104, 3.607422, 4.048210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764888, -0.598433, -0.238377,
		0.640762, -0.668863, -0.376890,
		0.066102, -0.441022, 0.895059,
		3.025934, 3.475115, 4.316727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.943700, 3.087233, 3.528975>,  <2.979663, 3.783831, 3.690186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.943700, 3.087233, 3.528975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.844566, 3.132492, 3.913845>,  <2.785086, 3.159647, 4.144766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.844566, 3.132492, 3.913845>,  <2.943700, 3.087233, 3.528975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.844566, 3.132492, 3.913845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785765, -0.604425, -0.131317,
		0.566703, -0.788586, 0.238704,
		-0.247833, 0.113148, 0.962172,
		2.770216, 3.166436, 4.202497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.718251, 2.393395, 3.760422>,  <2.943700, 3.087233, 3.528975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.718251, 2.393395, 3.760422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.567406, 2.644653, 4.032663>,  <2.476898, 2.795408, 4.196007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.567406, 2.644653, 4.032663>,  <2.718251, 2.393395, 3.760422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.567406, 2.644653, 4.032663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824624, -0.562272, 0.062021,
		0.421641, -0.537851, 0.730024,
		-0.377114, 0.628146, 0.680601,
		2.454271, 2.833097, 4.236843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.473645, 2.047002, 4.342901>,  <2.718251, 2.393395, 3.760422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.473645, 2.047002, 4.342901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261452, 2.384918, 4.370949>,  <2.134136, 2.587668, 4.387778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261452, 2.384918, 4.370949>,  <2.473645, 2.047002, 4.342901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.261452, 2.384918, 4.370949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846093, -0.532750, 0.017454,
		0.052102, -0.050070, 0.997386,
		-0.530483, 0.844790, 0.070122,
		2.102307, 2.638355, 4.391986>
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
