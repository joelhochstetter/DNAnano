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
	<1.305995, 2.968027, 1.183966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.285678, 3.060764, 1.572536>,  <1.273488, 3.116407, 1.805679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.285678, 3.060764, 1.572536>,  <1.305995, 2.968027, 1.183966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.285678, 3.060764, 1.572536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939446, 0.341171, -0.032305,
		-0.338912, 0.910962, -0.235133,
		-0.050792, 0.231843, 0.971426,
		1.270441, 3.130317, 1.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.493646, 3.667477, 1.338015>,  <1.305995, 2.968027, 1.183966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.493646, 3.667477, 1.338015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.582587, 3.405495, 1.626900>,  <1.635952, 3.248305, 1.800231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.582587, 3.405495, 1.626900>,  <1.493646, 3.667477, 1.338015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.582587, 3.405495, 1.626900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930249, 0.364286, 0.043959,
		-0.291883, 0.662063, 0.690273,
		0.222353, -0.654957, 0.722213,
		1.649293, 3.209008, 1.843563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.727515, 4.041570, 1.965249>,  <1.493646, 3.667477, 1.338015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.727515, 4.041570, 1.965249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.917535, 3.689602, 1.968533>,  <2.031547, 3.478421, 1.970503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.917535, 3.689602, 1.968533>,  <1.727515, 4.041570, 1.965249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.917535, 3.689602, 1.968533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864353, 0.468354, 0.183135,
		-0.164989, -0.079902, 0.983054,
		0.475050, -0.879921, 0.008209,
		2.060050, 3.425626, 1.970995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.198868, 4.103599, 2.420468>,  <1.727515, 4.041570, 1.965249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.198868, 4.103599, 2.420468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.356913, 3.802143, 2.210358>,  <2.451740, 3.621270, 2.084291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.356913, 3.802143, 2.210358>,  <2.198868, 4.103599, 2.420468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.356913, 3.802143, 2.210358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917769, 0.348628, 0.190152,
		0.039820, -0.557213, 0.829414,
		0.395112, -0.753639, -0.525276,
		2.475446, 3.576051, 2.052775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.786098, 3.764691, 2.867065>,  <2.198868, 4.103599, 2.420468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.786098, 3.764691, 2.867065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.847836, 3.667778, 2.483925>,  <2.884879, 3.609630, 2.254041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.847836, 3.667778, 2.483925>,  <2.786098, 3.764691, 2.867065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.847836, 3.667778, 2.483925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968382, 0.229412, 0.098014,
		0.195996, -0.942693, 0.270030,
		0.154346, -0.242282, -0.957850,
		2.894140, 3.595093, 2.196570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.308747, 3.288301, 2.870306>,  <2.786098, 3.764691, 2.867065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.308747, 3.288301, 2.870306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.295904, 3.457489, 2.508076>,  <3.288198, 3.559002, 2.290738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.295904, 3.457489, 2.508076>,  <3.308747, 3.288301, 2.870306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.295904, 3.457489, 2.508076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999278, 0.031979, -0.020493,
		0.020291, -0.905580, -0.423691,
		-0.032107, 0.422969, -0.905575,
		3.286272, 3.584380, 2.236403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619277, 2.838719, 2.484552>,  <3.308747, 3.288301, 2.870306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619277, 2.838719, 2.484552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655278, 3.213226, 2.348728>,  <3.676878, 3.437931, 2.267234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655278, 3.213226, 2.348728>,  <3.619277, 2.838719, 2.484552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655278, 3.213226, 2.348728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985895, -0.035450, 0.163570,
		0.141108, -0.349490, -0.926253,
		0.090002, 0.936269, -0.339559,
		3.682278, 3.494107, 2.246861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.188908, 2.954126, 1.912444>,  <3.619277, 2.838719, 2.484552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.188908, 2.954126, 1.912444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118521, 3.248859, 2.173553>,  <4.076289, 3.425699, 2.330219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118521, 3.248859, 2.173553>,  <4.188908, 2.954126, 1.912444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118521, 3.248859, 2.173553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969981, 0.016717, 0.242605,
		0.167847, 0.675867, -0.717656,
		-0.175966, 0.736834, 0.652773,
		4.065732, 3.469909, 2.369385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.269542, 4.244280, 2.037852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.046556, 4.574863, 2.006348>,  <4.912766, 4.773213, 1.987445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.046556, 4.574863, 2.006348>,  <5.269542, 4.244280, 2.037852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.046556, 4.574863, 2.006348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804269, -0.561140, -0.195636,
		-0.205881, -0.045714, 0.977509,
		-0.557463, 0.826457, -0.078762,
		4.879318, 4.822801, 1.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.757251, 4.293954, 2.464826>,  <5.269542, 4.244280, 2.037852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.757251, 4.293954, 2.464826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.649391, 4.502728, 2.141129>,  <4.584675, 4.627991, 1.946910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.649391, 4.502728, 2.141129>,  <4.757251, 4.293954, 2.464826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.649391, 4.502728, 2.141129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728284, -0.660329, -0.183216,
		-0.629993, 0.539956, 0.558172,
		-0.269649, 0.521933, -0.809244,
		4.568497, 4.659307, 1.898355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.054075, 4.331914, 2.433011>,  <4.757251, 4.293954, 2.464826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.054075, 4.331914, 2.433011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.165045, 4.414131, 2.057610>,  <4.231627, 4.463461, 1.832369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.165045, 4.414131, 2.057610>,  <4.054075, 4.331914, 2.433011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.165045, 4.414131, 2.057610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776672, -0.527020, -0.345009,
		-0.565524, 0.824622, 0.013431,
		0.277424, 0.205542, -0.938503,
		4.248272, 4.475794, 1.776059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.543062, 4.767465, 2.084529>,  <4.054075, 4.331914, 2.433011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.543062, 4.767465, 2.084529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738894, 4.466187, 1.908798>,  <3.856392, 4.285419, 1.803360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738894, 4.466187, 1.908798>,  <3.543062, 4.767465, 2.084529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738894, 4.466187, 1.908798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871893, -0.416635, -0.257328,
		0.010779, 0.509029, -0.860682,
		0.489578, -0.753196, -0.439328,
		3.885767, 4.240228, 1.777000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.250906, 4.522139, 1.369712>,  <3.543062, 4.767465, 2.084529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.250906, 4.522139, 1.369712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.423956, 4.207798, 1.546471>,  <3.527786, 4.019194, 1.652526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.423956, 4.207798, 1.546471>,  <3.250906, 4.522139, 1.369712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.423956, 4.207798, 1.546471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860233, -0.506523, -0.058595,
		0.269878, -0.354785, -0.895150,
		0.432626, -0.785851, 0.441897,
		3.553744, 3.972043, 1.679040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.221405, 3.906299, 0.967462>,  <3.250906, 4.522139, 1.369712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.221405, 3.906299, 0.967462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253687, 3.786621, 1.347771>,  <3.273056, 3.714814, 1.575956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253687, 3.786621, 1.347771>,  <3.221405, 3.906299, 0.967462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253687, 3.786621, 1.347771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872291, -0.482746, -0.077871,
		0.482280, -0.823067, -0.299945,
		0.080705, -0.299195, 0.950773,
		3.277898, 3.696862, 1.633003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175314, 3.197469, 1.022637>,  <3.221405, 3.906299, 0.967462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175314, 3.197469, 1.022637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.080311, 3.322453, 1.390541>,  <3.023309, 3.397443, 1.611284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.080311, 3.322453, 1.390541>,  <3.175314, 3.197469, 1.022637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.080311, 3.322453, 1.390541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871712, -0.486346, -0.059880,
		0.428612, -0.815988, 0.387886,
		-0.237508, 0.312460, 0.919761,
		3.009058, 3.416190, 1.666469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.988304, 2.603125, 1.395450>,  <3.175314, 3.197469, 1.022637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.988304, 2.603125, 1.395450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.818806, 2.924088, 1.563538>,  <2.717107, 3.116665, 1.664390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.818806, 2.924088, 1.563538>,  <2.988304, 2.603125, 1.395450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.818806, 2.924088, 1.563538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901925, -0.416553, -0.114086,
		0.083500, -0.427349, 0.900223,
		-0.423745, 0.802407, 0.420219,
		2.691682, 3.164809, 1.689603>
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
