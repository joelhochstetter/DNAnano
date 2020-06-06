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
	<24.139313, 35.585308, 34.742348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.045610, 35.235981, 34.913197>,  <23.989389, 35.026382, 35.015705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.045610, 35.235981, 34.913197>,  <24.139313, 35.585308, 34.742348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.045610, 35.235981, 34.913197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827036, -0.409957, -0.384639,
		0.511015, 0.263142, 0.818303,
		-0.234254, -0.873322, 0.427122,
		23.975334, 34.973984, 35.041332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709053, 35.292728, 35.198563>,  <24.139313, 35.585308, 34.742348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709053, 35.292728, 35.198563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480532, 34.991329, 35.068428>,  <24.343418, 34.810490, 34.990345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480532, 34.991329, 35.068428>,  <24.709053, 35.292728, 35.198563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480532, 34.991329, 35.068428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813581, -0.467695, -0.345468,
		0.108150, -0.462059, 0.880230,
		-0.571306, -0.753501, -0.325341,
		24.309139, 34.765278, 34.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924406, 34.689224, 35.459373>,  <24.709053, 35.292728, 35.198563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924406, 34.689224, 35.459373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739079, 34.592831, 35.118256>,  <24.627882, 34.534992, 34.913586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739079, 34.592831, 35.118256>,  <24.924406, 34.689224, 35.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739079, 34.592831, 35.118256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746527, -0.624684, -0.229056,
		-0.477528, -0.742761, 0.469333,
		-0.463319, -0.240989, -0.852795,
		24.600082, 34.520535, 34.862415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.656183, 34.031384, 35.341545>,  <24.924406, 34.689224, 35.459373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.656183, 34.031384, 35.341545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.741819, 34.133274, 34.964336>,  <24.793201, 34.194408, 34.738010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.741819, 34.133274, 34.964336>,  <24.656183, 34.031384, 35.341545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.741819, 34.133274, 34.964336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719359, -0.694217, -0.024204,
		-0.660824, -0.673186, -0.331862,
		0.214090, 0.254722, -0.943017,
		24.806047, 34.209690, 34.681431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915743, 33.451141, 35.147091>,  <24.656183, 34.031384, 35.341545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915743, 33.451141, 35.147091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027266, 33.698364, 34.853077>,  <25.094179, 33.846699, 34.676670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027266, 33.698364, 34.853077>,  <24.915743, 33.451141, 35.147091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.027266, 33.698364, 34.853077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760766, -0.609249, -0.223720,
		-0.586089, -0.496813, -0.640060,
		0.278808, 0.618056, -0.735033,
		25.110909, 33.883781, 34.632568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892660, 33.047409, 34.510437>,  <24.915743, 33.451141, 35.147091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892660, 33.047409, 34.510437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147924, 33.354244, 34.536751>,  <25.301083, 33.538345, 34.552540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147924, 33.354244, 34.536751>,  <24.892660, 33.047409, 34.510437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147924, 33.354244, 34.536751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761388, -0.641467, 0.093851,
		0.114191, -0.009805, -0.993410,
		0.638161, 0.767088, 0.065784,
		25.339373, 33.584370, 34.556484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429785, 33.043076, 34.009048>,  <24.892660, 33.047409, 34.510437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429785, 33.043076, 34.009048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570936, 33.278519, 34.299984>,  <25.655626, 33.419785, 34.474545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570936, 33.278519, 34.299984>,  <25.429785, 33.043076, 34.009048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570936, 33.278519, 34.299984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853823, -0.520517, 0.006991,
		0.382705, 0.618548, -0.686248,
		0.352879, 0.588610, 0.727334,
		25.676800, 33.455101, 34.518185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211535, 33.259663, 33.811375>,  <25.429785, 33.043076, 34.009048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211535, 33.259663, 33.811375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156157, 33.273071, 34.207294>,  <26.122931, 33.281116, 34.444847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156157, 33.273071, 34.207294>,  <26.211535, 33.259663, 33.811375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156157, 33.273071, 34.207294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931384, -0.335359, 0.141629,
		0.336686, 0.941494, 0.015209,
		-0.138443, 0.033519, 0.989803,
		26.114624, 33.283127, 34.504234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864166, 33.475189, 34.023899>,  <26.211535, 33.259663, 33.811375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864166, 33.475189, 34.023899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703596, 33.331818, 34.361038>,  <26.607254, 33.245796, 34.563320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703596, 33.331818, 34.361038>,  <26.864166, 33.475189, 34.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703596, 33.331818, 34.361038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813486, -0.562361, 0.148292,
		0.420830, 0.745170, 0.517324,
		-0.401425, -0.358430, 0.842844,
		26.583168, 33.224289, 34.613892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483212, 33.410694, 34.503147>,  <26.864166, 33.475189, 34.023899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483212, 33.410694, 34.503147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201454, 33.172867, 34.658230>,  <27.032400, 33.030170, 34.751282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201454, 33.172867, 34.658230>,  <27.483212, 33.410694, 34.503147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201454, 33.172867, 34.658230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694113, -0.691219, 0.201055,
		0.148451, 0.410735, 0.899588,
		-0.704393, -0.594569, 0.387709,
		26.990137, 32.994495, 34.774544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650162, 33.220909, 35.192844>,  <27.483212, 33.410694, 34.503147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650162, 33.220909, 35.192844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415287, 32.929722, 35.051270>,  <27.274363, 32.755009, 34.966324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415287, 32.929722, 35.051270>,  <27.650162, 33.220909, 35.192844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415287, 32.929722, 35.051270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669235, -0.682573, 0.293629,
		-0.455342, -0.064453, 0.887981,
		-0.587187, -0.727970, -0.353938,
		27.239132, 32.711330, 34.945087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431452, 32.776970, 35.755508>,  <27.650162, 33.220909, 35.192844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431452, 32.776970, 35.755508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405048, 32.565590, 35.416950>,  <27.389206, 32.438763, 35.213814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405048, 32.565590, 35.416950>,  <27.431452, 32.776970, 35.755508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405048, 32.565590, 35.416950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562515, -0.720314, 0.405862,
		-0.824148, -0.449319, 0.344809,
		-0.066010, -0.528450, -0.846394,
		27.385246, 32.407055, 35.163033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448460, 32.135044, 35.995861>,  <27.431452, 32.776970, 35.755508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448460, 32.135044, 35.995861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525930, 32.128593, 35.603489>,  <27.572412, 32.124722, 35.368065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525930, 32.128593, 35.603489>,  <27.448460, 32.135044, 35.995861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525930, 32.128593, 35.603489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648496, -0.748169, 0.140342,
		-0.736167, -0.663312, -0.134443,
		0.193677, -0.016129, -0.980933,
		27.584034, 32.123756, 35.309208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264183, 31.526882, 35.570301>,  <27.448460, 32.135044, 35.995861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264183, 31.526882, 35.570301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602070, 31.695177, 35.437981>,  <27.804802, 31.796154, 35.358589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602070, 31.695177, 35.437981>,  <27.264183, 31.526882, 35.570301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602070, 31.695177, 35.437981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454721, -0.890163, 0.028972,
		-0.282279, -0.174896, -0.943255,
		0.844717, 0.420739, -0.330804,
		27.855486, 31.821400, 35.338741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489866, 31.390841, 34.799271>,  <27.264183, 31.526882, 35.570301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489866, 31.390841, 34.799271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802780, 31.461418, 35.038235>,  <27.990528, 31.503765, 35.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802780, 31.461418, 35.038235>,  <27.489866, 31.390841, 34.799271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802780, 31.461418, 35.038235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118059, -0.983659, 0.135927,
		0.611632, -0.035803, -0.790332,
		0.782284, 0.176443, 0.597411,
		28.037466, 31.514351, 35.217457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045715, 31.672192, 34.263748>,  <27.489866, 31.390841, 34.799271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045715, 31.672192, 34.263748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066368, 31.864220, 34.614033>,  <27.078760, 31.979437, 34.824203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066368, 31.864220, 34.614033>,  <27.045715, 31.672192, 34.263748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066368, 31.864220, 34.614033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689461, 0.651509, -0.316512,
		-0.722480, -0.587425, 0.364630,
		0.051633, 0.480072, 0.875709,
		27.081858, 32.008240, 34.876747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334295, 31.826448, 34.545048>,  <27.045715, 31.672192, 34.263748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334295, 31.826448, 34.545048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602715, 32.092480, 34.676117>,  <26.763765, 32.252098, 34.754757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602715, 32.092480, 34.676117>,  <26.334295, 31.826448, 34.545048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602715, 32.092480, 34.676117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727423, 0.676050, 0.117526,
		-0.143359, -0.317222, 0.937453,
		0.671047, 0.665077, 0.327672,
		26.804029, 32.292004, 34.774418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129179, 32.081520, 35.264828>,  <26.334295, 31.826448, 34.545048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129179, 32.081520, 35.264828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379923, 32.355198, 35.115742>,  <26.530369, 32.519405, 35.026291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379923, 32.355198, 35.115742>,  <26.129179, 32.081520, 35.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379923, 32.355198, 35.115742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662084, 0.719959, 0.208097,
		0.410719, 0.116321, 0.904311,
		0.626861, 0.684199, -0.372715,
		26.567982, 32.560459, 35.003925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912149, 32.720917, 35.659554>,  <26.129179, 32.081520, 35.264828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912149, 32.720917, 35.659554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117460, 32.858692, 35.345123>,  <26.240646, 32.941357, 35.156467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117460, 32.858692, 35.345123>,  <25.912149, 32.720917, 35.659554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117460, 32.858692, 35.345123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503195, 0.862755, 0.049473,
		0.695228, 0.370154, 0.616153,
		0.513277, 0.344440, -0.786071,
		26.271442, 32.962025, 35.109303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013525, 33.401443, 35.797531>,  <25.912149, 32.720917, 35.659554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013525, 33.401443, 35.797531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054125, 33.361572, 35.401600>,  <26.078485, 33.337650, 35.164040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054125, 33.361572, 35.401600>,  <26.013525, 33.401443, 35.797531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054125, 33.361572, 35.401600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573510, 0.807131, -0.140090,
		0.812886, 0.581896, 0.024756,
		0.101499, -0.099680, -0.989829,
		26.084574, 33.331669, 35.104652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470385, 33.992924, 36.002575>,  <26.013525, 33.401443, 35.797531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470385, 33.992924, 36.002575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545349, 34.366531, 36.124218>,  <25.590328, 34.590698, 36.197205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545349, 34.366531, 36.124218>,  <25.470385, 33.992924, 36.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545349, 34.366531, 36.124218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938047, -0.262036, 0.226725,
		0.291453, 0.242776, -0.925265,
		0.187409, 0.934022, 0.304107,
		25.601572, 34.646736, 36.215450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017813, 34.188404, 35.485497>,  <25.470385, 33.992924, 36.002575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017813, 34.188404, 35.485497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938391, 33.955616, 35.170055>,  <25.890738, 33.815945, 34.980793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938391, 33.955616, 35.170055>,  <26.017813, 34.188404, 35.485497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938391, 33.955616, 35.170055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678046, 0.662557, -0.318231,
		0.707693, 0.471520, -0.526155,
		-0.198555, -0.581967, -0.788600,
		25.878824, 33.781025, 34.933475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142876, 34.614506, 34.758915>,  <26.017813, 34.188404, 35.485497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142876, 34.614506, 34.758915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910452, 34.293419, 34.705219>,  <25.770998, 34.100769, 34.673004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910452, 34.293419, 34.705219>,  <26.142876, 34.614506, 34.758915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910452, 34.293419, 34.705219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748813, 0.591910, -0.298198,
		0.318824, -0.072752, -0.945017,
		-0.581059, -0.802714, -0.134237,
		25.736134, 34.052605, 34.664948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894308, 34.645546, 34.044716>,  <26.142876, 34.614506, 34.758915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894308, 34.645546, 34.044716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661528, 34.427410, 34.286026>,  <25.521860, 34.296528, 34.430813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661528, 34.427410, 34.286026>,  <25.894308, 34.645546, 34.044716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661528, 34.427410, 34.286026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796534, 0.531761, -0.287687,
		-0.163912, -0.647948, -0.743838,
		-0.581951, -0.545337, 0.603274,
		25.486942, 34.263809, 34.467007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055872, 34.153011, 33.372189>,  <25.894308, 34.645546, 34.044716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055872, 34.153011, 33.372189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235512, 34.066582, 33.025406>,  <26.343296, 34.014725, 32.817337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235512, 34.066582, 33.025406>,  <26.055872, 34.153011, 33.372189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235512, 34.066582, 33.025406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400078, 0.818975, -0.411361,
		0.798903, 0.531594, 0.281357,
		0.449102, -0.216072, -0.866960,
		26.370243, 34.001759, 32.765316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581299, 34.674164, 33.342342>,  <26.055872, 34.153011, 33.372189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581299, 34.674164, 33.342342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477787, 34.502743, 32.996075>,  <26.415680, 34.399891, 32.788315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477787, 34.502743, 32.996075>,  <26.581299, 34.674164, 33.342342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477787, 34.502743, 32.996075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155243, 0.902996, -0.400622,
		0.953380, 0.030717, -0.300205,
		-0.258778, -0.428550, -0.865667,
		26.400154, 34.374176, 32.736374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043468, 35.020103, 32.805248>,  <26.581299, 34.674164, 33.342342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043468, 35.020103, 32.805248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689171, 34.885773, 32.677078>,  <26.476591, 34.805172, 32.600174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689171, 34.885773, 32.677078>,  <27.043468, 35.020103, 32.805248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689171, 34.885773, 32.677078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181960, 0.886285, -0.425897,
		0.427020, -0.318931, -0.846131,
		-0.885745, -0.335829, -0.320428,
		26.423447, 34.785023, 32.580948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883995, 35.155838, 32.002472>,  <27.043468, 35.020103, 32.805248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883995, 35.155838, 32.002472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540451, 35.138309, 32.206604>,  <26.334324, 35.127792, 32.329082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540451, 35.138309, 32.206604>,  <26.883995, 35.155838, 32.002472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540451, 35.138309, 32.206604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272273, 0.882973, -0.382396,
		-0.433851, -0.467374, -0.770282,
		-0.858860, -0.043825, 0.510332,
		26.282793, 35.125160, 32.359703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307341, 35.127373, 31.513483>,  <26.883995, 35.155838, 32.002472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307341, 35.127373, 31.513483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222681, 35.297798, 31.865316>,  <26.171885, 35.400055, 32.076416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222681, 35.297798, 31.865316>,  <26.307341, 35.127373, 31.513483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222681, 35.297798, 31.865316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584887, 0.665810, -0.463254,
		-0.783015, -0.612505, 0.108284,
		-0.211649, 0.426068, 0.879585,
		26.159185, 35.425617, 32.129192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901161, 35.569580, 31.195623>,  <26.307341, 35.127373, 31.513483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901161, 35.569580, 31.195623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062803, 35.240852, 31.034967>,  <27.159788, 35.043617, 30.938574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062803, 35.240852, 31.034967>,  <26.901161, 35.569580, 31.195623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062803, 35.240852, 31.034967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888619, -0.456838, 0.040692,
		-0.216925, 0.340461, -0.914893,
		0.404104, -0.821818, -0.401639,
		27.184034, 34.994308, 30.914476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479755, 35.415173, 30.752638>,  <26.901161, 35.569580, 31.195623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479755, 35.415173, 30.752638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660759, 35.058544, 30.760059>,  <26.769361, 34.844566, 30.764513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660759, 35.058544, 30.760059>,  <26.479755, 35.415173, 30.752638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660759, 35.058544, 30.760059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877402, -0.448843, -0.169425,
		0.159382, 0.060387, -0.985368,
		0.452507, -0.891568, 0.018554,
		26.796511, 34.791073, 30.765625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121414, 34.947472, 30.251268>,  <26.479755, 35.415173, 30.752638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121414, 34.947472, 30.251268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313133, 34.690853, 30.490835>,  <26.428164, 34.536884, 30.634575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313133, 34.690853, 30.490835>,  <26.121414, 34.947472, 30.251268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313133, 34.690853, 30.490835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737182, -0.664598, -0.121953,
		0.476276, -0.383057, -0.791472,
		0.479296, -0.641542, 0.598915,
		26.456923, 34.498390, 30.670509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272013, 34.304405, 29.896431>,  <26.121414, 34.947472, 30.251268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272013, 34.304405, 29.896431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281805, 34.191776, 30.280123>,  <26.287680, 34.124199, 30.510338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281805, 34.191776, 30.280123>,  <26.272013, 34.304405, 29.896431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281805, 34.191776, 30.280123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771655, -0.615345, -0.160932,
		0.635570, -0.736254, -0.232337,
		0.024480, -0.281568, 0.959229,
		26.289148, 34.107307, 30.567892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416712, 33.593433, 29.899643>,  <26.272013, 34.304405, 29.896431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416712, 33.593433, 29.899643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234303, 33.708092, 30.236660>,  <26.124857, 33.776886, 30.438869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234303, 33.708092, 30.236660>,  <26.416712, 33.593433, 29.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234303, 33.708092, 30.236660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771603, -0.599098, -0.213801,
		0.443479, -0.747605, 0.494382,
		-0.456022, 0.286650, 0.842541,
		26.097496, 33.794086, 30.489422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300312, 33.232227, 30.466930>,  <26.416712, 33.593433, 29.899643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300312, 33.232227, 30.466930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984922, 33.477222, 30.444403>,  <25.795689, 33.624218, 30.430885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984922, 33.477222, 30.444403>,  <26.300312, 33.232227, 30.466930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984922, 33.477222, 30.444403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571379, -0.763287, -0.301530,
		-0.227671, -0.205568, 0.951792,
		-0.788475, 0.612483, -0.056321,
		25.748381, 33.660969, 30.427505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150097, 33.033665, 31.235100>,  <26.300312, 33.232227, 30.466930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150097, 33.033665, 31.235100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864071, 33.313282, 31.236656>,  <25.692455, 33.481052, 31.237589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864071, 33.313282, 31.236656>,  <26.150097, 33.033665, 31.235100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864071, 33.313282, 31.236656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697013, -0.712541, -0.080359,
		-0.053404, -0.060173, 0.996758,
		-0.715067, 0.699045, 0.003889,
		25.649551, 33.522995, 31.237823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629213, 32.848782, 31.730629>,  <26.150097, 33.033665, 31.235100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629213, 32.848782, 31.730629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446444, 33.075535, 31.456442>,  <25.336782, 33.211586, 31.291929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446444, 33.075535, 31.456442>,  <25.629213, 32.848782, 31.730629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446444, 33.075535, 31.456442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735522, -0.674156, -0.067238,
		-0.500230, 0.473455, 0.724990,
		-0.456922, 0.566881, -0.685469,
		25.309366, 33.245598, 31.250801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838417, 32.817116, 31.900181>,  <25.629213, 32.848782, 31.730629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838417, 32.817116, 31.900181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879866, 32.953617, 31.526484>,  <24.904734, 33.035519, 31.302265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879866, 32.953617, 31.526484>,  <24.838417, 32.817116, 31.900181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879866, 32.953617, 31.526484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828147, -0.490611, -0.271060,
		-0.550850, 0.801777, 0.231771,
		0.103621, 0.341254, -0.934242,
		24.910952, 33.055992, 31.246210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592125, 32.239105, 32.169724>,  <24.838417, 32.817116, 31.900181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592125, 32.239105, 32.169724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832970, 32.006943, 32.389027>,  <24.977476, 31.867645, 32.520607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832970, 32.006943, 32.389027>,  <24.592125, 32.239105, 32.169724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832970, 32.006943, 32.389027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079547, -0.726880, -0.682142,
		0.794438, 0.367115, -0.483834,
		0.602114, -0.580407, 0.548258,
		25.013603, 31.832821, 32.553505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051657, 31.974304, 31.677917>,  <24.592125, 32.239105, 32.169724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051657, 31.974304, 31.677917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030769, 31.734617, 31.997471>,  <25.018236, 31.590805, 32.189201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030769, 31.734617, 31.997471>,  <25.051657, 31.974304, 31.677917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030769, 31.734617, 31.997471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015137, -0.799406, -0.600601,
		0.998521, -0.043456, 0.032674,
		-0.052219, -0.599218, 0.798881,
		25.015104, 31.554852, 32.237137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448875, 31.974417, 31.141180>,  <25.051657, 31.974304, 31.677917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448875, 31.974417, 31.141180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332424, 32.086308, 30.775230>,  <24.262554, 32.153442, 30.555660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332424, 32.086308, 30.775230>,  <24.448875, 31.974417, 31.141180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332424, 32.086308, 30.775230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261816, 0.943086, 0.205040,
		0.920162, -0.179837, -0.347794,
		-0.291126, 0.279728, -0.914876,
		24.245087, 32.170227, 30.500767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076923, 32.130970, 30.572626>,  <24.448875, 31.974417, 31.141180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076923, 32.130970, 30.572626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735094, 32.338676, 30.569471>,  <24.529997, 32.463303, 30.567579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735094, 32.338676, 30.569471>,  <25.076923, 32.130970, 30.572626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735094, 32.338676, 30.569471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503049, 0.831459, 0.235833,
		0.129018, 0.197569, -0.971762,
		-0.854573, 0.519271, -0.007886,
		24.478722, 32.494457, 30.567106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064558, 32.730045, 30.093693>,  <25.076923, 32.130970, 30.572626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064558, 32.730045, 30.093693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841413, 32.806202, 30.416813>,  <24.707527, 32.851898, 30.610685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841413, 32.806202, 30.416813>,  <25.064558, 32.730045, 30.093693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841413, 32.806202, 30.416813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605766, 0.758738, 0.239509,
		-0.567306, 0.622951, -0.538606,
		-0.557863, 0.190394, 0.807799,
		24.674055, 32.863319, 30.659153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883490, 33.489117, 30.025429>,  <25.064558, 32.730045, 30.093693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883490, 33.489117, 30.025429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887611, 33.357880, 30.403263>,  <24.890085, 33.279137, 30.629965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887611, 33.357880, 30.403263>,  <24.883490, 33.489117, 30.025429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887611, 33.357880, 30.403263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738923, 0.638946, 0.213872,
		-0.673711, 0.695774, 0.249022,
		0.010305, -0.328096, 0.944588,
		24.890703, 33.259449, 30.686640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912680, 34.149033, 30.341629>,  <24.883490, 33.489117, 30.025429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912680, 34.149033, 30.341629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016788, 33.861912, 30.599937>,  <25.079254, 33.689640, 30.754923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016788, 33.861912, 30.599937>,  <24.912680, 34.149033, 30.341629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016788, 33.861912, 30.599937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833180, 0.504950, 0.225469,
		-0.487925, 0.479362, 0.729480,
		0.260270, -0.717800, 0.645772,
		25.094870, 33.646572, 30.793669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033571, 34.346661, 31.097750>,  <24.912680, 34.149033, 30.341629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033571, 34.346661, 31.097750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262245, 34.041248, 30.977623>,  <25.399450, 33.858002, 30.905546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262245, 34.041248, 30.977623>,  <25.033571, 34.346661, 31.097750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262245, 34.041248, 30.977623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819803, 0.516787, 0.246686,
		-0.033152, -0.387229, 0.921387,
		0.571685, -0.763534, -0.300319,
		25.433750, 33.812187, 30.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601667, 34.203548, 31.632755>,  <25.033571, 34.346661, 31.097750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601667, 34.203548, 31.632755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751633, 34.070084, 31.286783>,  <25.841612, 33.990005, 31.079199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751633, 34.070084, 31.286783>,  <25.601667, 34.203548, 31.632755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751633, 34.070084, 31.286783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864658, 0.462364, 0.196430,
		0.334372, -0.821515, 0.461854,
		0.374915, -0.333665, -0.864931,
		25.864107, 33.969982, 31.027304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263657, 34.008091, 31.812815>,  <25.601667, 34.203548, 31.632755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263657, 34.008091, 31.812815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277800, 34.036045, 31.414043>,  <26.286285, 34.052818, 31.174780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277800, 34.036045, 31.414043>,  <26.263657, 34.008091, 31.812815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277800, 34.036045, 31.414043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881892, 0.467084, 0.064021,
		0.470124, -0.881447, -0.045117,
		0.035358, 0.069886, -0.996928,
		26.288406, 34.057011, 31.114965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905428, 33.895451, 31.630358>,  <26.263657, 34.008091, 31.812815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905428, 33.895451, 31.630358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779869, 34.052067, 31.284370>,  <26.704535, 34.146034, 31.076778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779869, 34.052067, 31.284370>,  <26.905428, 33.895451, 31.630358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779869, 34.052067, 31.284370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872026, 0.479235, -0.099526,
		0.375554, -0.785514, -0.491861,
		-0.313896, 0.391538, -0.864967,
		26.685699, 34.169529, 31.024879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286089, 33.646572, 31.099669>,  <26.905428, 33.895451, 31.630358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286089, 33.646572, 31.099669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180374, 34.007557, 30.963602>,  <27.116945, 34.224148, 30.881962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180374, 34.007557, 30.963602>,  <27.286089, 33.646572, 31.099669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180374, 34.007557, 30.963602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956235, 0.199278, -0.214247,
		-0.125563, -0.381901, -0.915634,
		-0.264287, 0.902463, -0.340165,
		27.101088, 34.278297, 30.861553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549232, 33.878227, 30.354166>,  <27.286089, 33.646572, 31.099669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549232, 33.878227, 30.354166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465384, 34.227890, 30.529396>,  <27.415075, 34.437687, 30.634535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465384, 34.227890, 30.529396>,  <27.549232, 33.878227, 30.354166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465384, 34.227890, 30.529396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837637, 0.391667, -0.380738,
		-0.504404, 0.287138, -0.814327,
		-0.209621, 0.874156, 0.438075,
		27.402498, 34.490135, 30.660818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679934, 34.416557, 29.857241>,  <27.549232, 33.878227, 30.354166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679934, 34.416557, 29.857241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716131, 34.617569, 30.201164>,  <27.737850, 34.738178, 30.407518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716131, 34.617569, 30.201164>,  <27.679934, 34.416557, 29.857241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716131, 34.617569, 30.201164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777417, 0.503954, -0.376368,
		-0.622442, 0.702490, -0.345071,
		0.090495, 0.502531, 0.859810,
		27.743280, 34.768330, 30.459106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403854, 35.183014, 29.833128>,  <27.679934, 34.416557, 29.857241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403854, 35.183014, 29.833128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715626, 35.110954, 30.073141>,  <27.902689, 35.067719, 30.217150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715626, 35.110954, 30.073141>,  <27.403854, 35.183014, 29.833128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715626, 35.110954, 30.073141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508531, 0.741317, -0.438001,
		-0.365910, 0.646525, 0.669414,
		0.779427, -0.180149, 0.600034,
		27.949453, 35.056908, 30.253151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706907, 35.809322, 30.094173>,  <27.403854, 35.183014, 29.833128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706907, 35.809322, 30.094173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018679, 35.558926, 30.084101>,  <28.205742, 35.408688, 30.078056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018679, 35.558926, 30.084101>,  <27.706907, 35.809322, 30.094173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018679, 35.558926, 30.084101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562827, 0.717307, -0.410726,
		0.275172, 0.305958, 0.911411,
		0.779427, -0.625987, -0.025182,
		28.252506, 35.371128, 30.076546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397959, 35.874653, 30.444473>,  <27.706907, 35.809322, 30.094173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397959, 35.874653, 30.444473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489052, 35.693031, 30.099920>,  <28.543707, 35.584061, 29.893188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489052, 35.693031, 30.099920>,  <28.397959, 35.874653, 30.444473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489052, 35.693031, 30.099920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501258, 0.813073, -0.296062,
		0.834792, -0.364351, 0.412760,
		0.227733, -0.454049, -0.861381,
		28.557371, 35.556816, 29.841507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063686, 35.884846, 30.282497>,  <28.397959, 35.874653, 30.444473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063686, 35.884846, 30.282497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925303, 35.867970, 29.907578>,  <28.842272, 35.857845, 29.682625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925303, 35.867970, 29.907578>,  <29.063686, 35.884846, 30.282497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925303, 35.867970, 29.907578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558152, 0.793741, -0.241746,
		0.754173, -0.606790, -0.251055,
		-0.345962, -0.042192, -0.937299,
		28.821514, 35.855312, 29.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564774, 35.841774, 29.719177>,  <29.063686, 35.884846, 30.282497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564774, 35.841774, 29.719177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243071, 36.047104, 29.599400>,  <29.050049, 36.170303, 29.527533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243071, 36.047104, 29.599400>,  <29.564774, 35.841774, 29.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243071, 36.047104, 29.599400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565972, 0.815268, -0.122528,
		0.181231, -0.268021, -0.946214,
		-0.804258, 0.513325, -0.299444,
		29.001793, 36.201103, 29.509565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603764, 36.200684, 29.023249>,  <29.564774, 35.841774, 29.719177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603764, 36.200684, 29.023249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378031, 36.394176, 29.290840>,  <29.242590, 36.510273, 29.451395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378031, 36.394176, 29.290840>,  <29.603764, 36.200684, 29.023249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378031, 36.394176, 29.290840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572495, 0.813152, -0.105042,
		-0.594792, 0.323707, -0.735824,
		-0.564334, 0.483733, 0.668976,
		29.208731, 36.539295, 29.491533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532358, 36.225838, 28.267561>,  <29.603764, 36.200684, 29.023249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532358, 36.225838, 28.267561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473331, 35.950920, 27.983068>,  <29.437916, 35.785969, 27.812374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473331, 35.950920, 27.983068>,  <29.532358, 36.225838, 28.267561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473331, 35.950920, 27.983068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448192, -0.594563, 0.667546,
		-0.881673, 0.417275, -0.220304,
		-0.147566, -0.687296, -0.711230,
		29.429062, 35.744732, 27.769699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866957, 36.075939, 28.347363>,  <29.532358, 36.225838, 28.267561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866957, 36.075939, 28.347363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042479, 35.765862, 28.165585>,  <29.147791, 35.579815, 28.056519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042479, 35.765862, 28.165585>,  <28.866957, 36.075939, 28.347363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042479, 35.765862, 28.165585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484529, -0.630033, 0.606869,
		-0.756759, -0.046104, -0.652066,
		0.438802, -0.775198, -0.454444,
		29.174120, 35.533302, 28.029251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432549, 35.412766, 28.287809>,  <28.866957, 36.075939, 28.347363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432549, 35.412766, 28.287809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815174, 35.297112, 28.272890>,  <29.044748, 35.227718, 28.263939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815174, 35.297112, 28.272890>,  <28.432549, 35.412766, 28.287809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815174, 35.297112, 28.272890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200724, -0.745989, 0.634988,
		-0.211419, -0.599919, -0.771621,
		0.956563, -0.289131, -0.037298,
		29.102142, 35.210373, 28.261702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544147, 34.579361, 28.103674>,  <28.432549, 35.412766, 28.287809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544147, 34.579361, 28.103674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841146, 34.743431, 28.315508>,  <29.019346, 34.841873, 28.442608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841146, 34.743431, 28.315508>,  <28.544147, 34.579361, 28.103674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841146, 34.743431, 28.315508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010236, -0.783562, 0.621230,
		0.669773, -0.466681, -0.577593,
		0.742496, 0.410171, 0.529585,
		29.063894, 34.866482, 28.474384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072189, 34.143330, 28.029402>,  <28.544147, 34.579361, 28.103674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072189, 34.143330, 28.029402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186077, 34.357006, 28.347792>,  <29.254410, 34.485210, 28.538826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186077, 34.357006, 28.347792>,  <29.072189, 34.143330, 28.029402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186077, 34.357006, 28.347792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218334, -0.844653, 0.488765,
		0.933415, 0.034626, -0.357123,
		0.284721, 0.534193, 0.795973,
		29.271494, 34.517265, 28.586584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922237, 33.599674, 28.464750>,  <29.072189, 34.143330, 28.029402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922237, 33.599674, 28.464750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936373, 33.203175, 28.515638>,  <28.944855, 32.965275, 28.546171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936373, 33.203175, 28.515638>,  <28.922237, 33.599674, 28.464750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936373, 33.203175, 28.515638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639134, -0.075444, -0.765386,
		0.768283, 0.108358, 0.630872,
		0.035340, -0.991245, 0.127218,
		28.946974, 32.905800, 28.553804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657108, 33.258068, 28.706842>,  <28.922237, 33.599674, 28.464750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657108, 33.258068, 28.706842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441839, 33.006439, 28.482473>,  <29.312677, 32.855461, 28.347851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441839, 33.006439, 28.482473>,  <29.657108, 33.258068, 28.706842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441839, 33.006439, 28.482473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710591, 0.019237, -0.703343,
		0.453246, -0.777107, 0.436662,
		-0.538172, -0.629075, -0.560924,
		29.280388, 32.817719, 28.314196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974985, 32.541790, 28.626646>,  <29.657108, 33.258068, 28.706842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974985, 32.541790, 28.626646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746256, 32.644852, 28.315100>,  <29.609018, 32.706688, 28.128172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746256, 32.644852, 28.315100>,  <29.974985, 32.541790, 28.626646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746256, 32.644852, 28.315100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787951, -0.091795, -0.608857,
		-0.228372, -0.961866, -0.150530,
		-0.571821, 0.257657, -0.778867,
		29.574709, 32.722149, 28.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139509, 32.078659, 28.121683>,  <29.974985, 32.541790, 28.626646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139509, 32.078659, 28.121683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975399, 32.404930, 27.958546>,  <29.876934, 32.600693, 27.860662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975399, 32.404930, 27.958546>,  <30.139509, 32.078659, 28.121683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975399, 32.404930, 27.958546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771580, 0.072071, -0.632036,
		-0.486147, -0.573994, -0.658933,
		-0.410275, 0.815682, -0.407846,
		29.852316, 32.649635, 27.836191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272717, 32.055813, 27.422697>,  <30.139509, 32.078659, 28.121683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272717, 32.055813, 27.422697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213963, 32.450150, 27.455057>,  <30.178711, 32.686752, 27.474474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213963, 32.450150, 27.455057>,  <30.272717, 32.055813, 27.422697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213963, 32.450150, 27.455057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683569, 0.160282, -0.712070,
		-0.714954, -0.049289, -0.697432,
		-0.146883, 0.985840, 0.080902,
		30.169897, 32.745903, 27.479328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193012, 32.376621, 26.722918>,  <30.272717, 32.055813, 27.422697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193012, 32.376621, 26.722918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292034, 32.683617, 26.959454>,  <30.351448, 32.867813, 27.101376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292034, 32.683617, 26.959454>,  <30.193012, 32.376621, 26.722918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292034, 32.683617, 26.959454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692057, 0.287074, -0.662303,
		-0.678066, 0.573198, -0.460076,
		0.247555, 0.767484, 0.591341,
		30.366301, 32.913860, 27.136856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198149, 32.988594, 26.320667>,  <30.193012, 32.376621, 26.722918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198149, 32.988594, 26.320667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423264, 33.058895, 26.643747>,  <30.558332, 33.101074, 26.837595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423264, 33.058895, 26.643747>,  <30.198149, 32.988594, 26.320667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423264, 33.058895, 26.643747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691787, 0.434687, -0.576609,
		-0.452438, 0.883265, 0.123052,
		0.562788, 0.175754, 0.807701,
		30.592100, 33.111622, 26.886057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529655, 33.579029, 26.217148>,  <30.198149, 32.988594, 26.320667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529655, 33.579029, 26.217148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751255, 33.451866, 26.524918>,  <30.884214, 33.375568, 26.709579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751255, 33.451866, 26.524918>,  <30.529655, 33.579029, 26.217148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751255, 33.451866, 26.524918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775090, 0.534268, -0.337331,
		-0.303839, 0.783256, 0.542395,
		0.554001, -0.317911, 0.769426,
		30.917456, 33.356491, 26.755745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014391, 34.107372, 26.316221>,  <30.529655, 33.579029, 26.217148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014391, 34.107372, 26.316221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191948, 33.818073, 26.527832>,  <31.298483, 33.644493, 26.654799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191948, 33.818073, 26.527832>,  <31.014391, 34.107372, 26.316221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191948, 33.818073, 26.527832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896053, 0.362855, -0.255783,
		-0.006965, 0.587577, 0.809138,
		0.443892, -0.723250, 0.529027,
		31.325115, 33.601097, 26.686541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515451, 34.416809, 26.884653>,  <31.014391, 34.107372, 26.316221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515451, 34.416809, 26.884653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610987, 34.043541, 26.777216>,  <31.668308, 33.819580, 26.712753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610987, 34.043541, 26.777216>,  <31.515451, 34.416809, 26.884653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610987, 34.043541, 26.777216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915042, 0.308867, -0.259423,
		0.325046, -0.183812, 0.927663,
		0.238839, -0.933174, -0.268592,
		31.682638, 33.763588, 26.696638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190746, 34.372963, 27.051468>,  <31.515451, 34.416809, 26.884653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190746, 34.372963, 27.051468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135086, 34.045280, 26.828922>,  <32.101688, 33.848671, 26.695395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135086, 34.045280, 26.828922>,  <32.190746, 34.372963, 27.051468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135086, 34.045280, 26.828922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823376, 0.216426, -0.524606,
		0.550171, -0.531097, 0.644397,
		-0.139153, -0.819205, -0.556364,
		32.093342, 33.799519, 26.662014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843014, 33.925468, 27.066330>,  <32.190746, 34.372963, 27.051468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843014, 33.925468, 27.066330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665600, 33.835091, 26.719406>,  <32.559151, 33.780865, 26.511251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665600, 33.835091, 26.719406>,  <32.843014, 33.925468, 27.066330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665600, 33.835091, 26.719406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837033, 0.241515, -0.490964,
		0.320400, -0.943726, 0.082004,
		-0.443530, -0.225945, -0.867311,
		32.532539, 33.767307, 26.459213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430260, 33.909512, 26.602409>,  <32.843014, 33.925468, 27.066330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430260, 33.909512, 26.602409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119968, 33.910435, 26.349983>,  <32.933792, 33.910988, 26.198528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119968, 33.910435, 26.349983>,  <33.430260, 33.909512, 26.602409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119968, 33.910435, 26.349983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603493, 0.295080, -0.740759,
		0.184507, -0.955470, -0.230292,
		-0.775727, 0.002304, -0.631064,
		32.887249, 33.911125, 26.160664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692024, 33.612175, 25.994535>,  <33.430260, 33.909512, 26.602409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692024, 33.612175, 25.994535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366199, 33.821823, 25.895113>,  <33.170704, 33.947613, 25.835461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366199, 33.821823, 25.895113>,  <33.692024, 33.612175, 25.994535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366199, 33.821823, 25.895113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461641, 0.326276, -0.824883,
		-0.351243, -0.786663, -0.507730,
		-0.814564, 0.524124, -0.248554,
		33.121830, 33.979061, 25.820547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528076, 33.465851, 25.303417>,  <33.692024, 33.612175, 25.994535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528076, 33.465851, 25.303417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296448, 33.790981, 25.328703>,  <33.157471, 33.986061, 25.343874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296448, 33.790981, 25.328703>,  <33.528076, 33.465851, 25.303417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296448, 33.790981, 25.328703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227379, 0.235472, -0.944908,
		-0.782930, -0.532793, -0.321173,
		-0.579068, 0.812825, 0.063213,
		33.122726, 34.034828, 25.347666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998634, 33.475231, 24.736567>,  <33.528076, 33.465851, 25.303417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998634, 33.475231, 24.736567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082355, 33.843990, 24.866980>,  <33.132587, 34.065247, 24.945227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082355, 33.843990, 24.866980>,  <32.998634, 33.475231, 24.736567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082355, 33.843990, 24.866980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234349, 0.276410, -0.932029,
		-0.949354, 0.271479, -0.158193,
		0.209300, 0.921898, 0.326032,
		33.145145, 34.120560, 24.964788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678001, 33.883942, 24.289890>,  <32.998634, 33.475231, 24.736567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678001, 33.883942, 24.289890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958778, 34.104259, 24.470516>,  <33.127243, 34.236450, 24.578892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958778, 34.104259, 24.470516>,  <32.678001, 33.883942, 24.289890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958778, 34.104259, 24.470516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239401, 0.414662, -0.877919,
		-0.670797, 0.724351, 0.159207,
		0.701939, 0.550791, 0.451565,
		33.169361, 34.269497, 24.605986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625309, 34.544815, 23.982950>,  <32.678001, 33.883942, 24.289890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625309, 34.544815, 23.982950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974201, 34.577686, 24.175806>,  <33.183537, 34.597408, 24.291519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974201, 34.577686, 24.175806>,  <32.625309, 34.544815, 23.982950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974201, 34.577686, 24.175806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373631, 0.524169, -0.765276,
		-0.315614, 0.847640, 0.426491,
		0.872231, 0.082182, 0.482140,
		33.235870, 34.602341, 24.320448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741592, 35.205761, 24.134775>,  <32.625309, 34.544815, 23.982950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741592, 35.205761, 24.134775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108582, 35.047913, 24.154858>,  <33.328773, 34.953205, 24.166906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108582, 35.047913, 24.154858>,  <32.741592, 35.205761, 24.134775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108582, 35.047913, 24.154858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299789, 0.602940, -0.739317,
		0.261475, 0.693354, 0.671484,
		0.917473, -0.394617, 0.050206,
		33.383823, 34.929527, 24.169920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270466, 35.772099, 24.059082>,  <32.741592, 35.205761, 24.134775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270466, 35.772099, 24.059082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465733, 35.444653, 23.938042>,  <33.582893, 35.248184, 23.865417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465733, 35.444653, 23.938042>,  <33.270466, 35.772099, 24.059082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465733, 35.444653, 23.938042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437371, 0.529503, -0.726865,
		0.755251, 0.222479, 0.616522,
		0.488163, -0.818615, -0.302601,
		33.612183, 35.199070, 23.847261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010071, 36.057636, 23.843208>,  <33.270466, 35.772099, 24.059082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010071, 36.057636, 23.843208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964310, 35.704151, 23.661676>,  <33.936852, 35.492062, 23.552757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964310, 35.704151, 23.661676>,  <34.010071, 36.057636, 23.843208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964310, 35.704151, 23.661676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315909, 0.400754, -0.859999,
		0.941866, -0.241759, 0.233324,
		-0.114407, -0.883713, -0.453830,
		33.929989, 35.439037, 23.525528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590584, 36.114075, 23.471186>,  <34.010071, 36.057636, 23.843208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590584, 36.114075, 23.471186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375942, 35.817753, 23.309563>,  <34.247158, 35.639961, 23.212589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375942, 35.817753, 23.309563>,  <34.590584, 36.114075, 23.471186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375942, 35.817753, 23.309563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400612, 0.197781, -0.894647,
		0.742674, -0.641942, 0.190645,
		-0.536605, -0.740806, -0.404056,
		34.214962, 35.595512, 23.188345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107487, 35.787346, 23.000975>,  <34.590584, 36.114075, 23.471186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107487, 35.787346, 23.000975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730682, 35.708607, 22.892263>,  <34.504601, 35.661362, 22.827036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730682, 35.708607, 22.892263>,  <35.107487, 35.787346, 23.000975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730682, 35.708607, 22.892263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215428, 0.266233, -0.939527,
		0.257298, -0.943595, -0.208389,
		-0.942013, -0.196846, -0.271778,
		34.448078, 35.649551, 22.810730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195000, 35.465591, 22.340946>,  <35.107487, 35.787346, 23.000975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195000, 35.465591, 22.340946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807655, 35.565193, 22.334225>,  <34.575249, 35.624954, 22.330193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807655, 35.565193, 22.334225>,  <35.195000, 35.465591, 22.340946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807655, 35.565193, 22.334225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096528, 0.311601, -0.945298,
		-0.230149, -0.917007, -0.325777,
		-0.968356, 0.249006, -0.016802,
		34.517147, 35.639896, 22.329184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871063, 35.077755, 21.790119>,  <35.195000, 35.465591, 22.340946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871063, 35.077755, 21.790119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670452, 35.411251, 21.882502>,  <34.550083, 35.611351, 21.937931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670452, 35.411251, 21.882502>,  <34.871063, 35.077755, 21.790119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670452, 35.411251, 21.882502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011079, 0.273127, -0.961914,
		-0.865069, -0.479870, -0.146218,
		-0.501530, 0.833742, 0.230958,
		34.519993, 35.661373, 21.951790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422161, 35.197140, 21.240042>,  <34.871063, 35.077755, 21.790119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422161, 35.197140, 21.240042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401108, 35.554752, 21.417999>,  <34.388477, 35.769321, 21.524775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401108, 35.554752, 21.417999>,  <34.422161, 35.197140, 21.240042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401108, 35.554752, 21.417999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002367, 0.445623, -0.895218,
		-0.998611, -0.046066, -0.025571,
		-0.052634, 0.894035, 0.444895,
		34.385319, 35.822964, 21.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913872, 35.594120, 20.877180>,  <34.422161, 35.197140, 21.240042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913872, 35.594120, 20.877180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161808, 35.855450, 21.051062>,  <34.310570, 36.012249, 21.155390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161808, 35.855450, 21.051062>,  <33.913872, 35.594120, 20.877180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161808, 35.855450, 21.051062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030537, 0.573616, -0.818555,
		-0.784135, 0.494098, 0.375500,
		0.619839, 0.653324, 0.434704,
		34.347759, 36.051445, 21.181473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715981, 36.267151, 20.610483>,  <33.913872, 35.594120, 20.877180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715981, 36.267151, 20.610483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084263, 36.342411, 20.747246>,  <34.305233, 36.387566, 20.829304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084263, 36.342411, 20.747246>,  <33.715981, 36.267151, 20.610483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084263, 36.342411, 20.747246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123522, 0.690560, -0.712649,
		-0.370192, 0.698373, 0.612562,
		0.920706, 0.188152, 0.341905,
		34.360474, 36.398857, 20.849817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813824, 36.959518, 20.365070>,  <33.715981, 36.267151, 20.610483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813824, 36.959518, 20.365070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178379, 36.835011, 20.472759>,  <34.397114, 36.760307, 20.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178379, 36.835011, 20.472759>,  <33.813824, 36.959518, 20.365070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178379, 36.835011, 20.472759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409442, 0.619791, -0.669490,
		0.041529, 0.720397, 0.692318,
		0.911391, -0.311267, 0.269221,
		34.451797, 36.741631, 20.553526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297276, 37.534969, 20.290051>,  <33.813824, 36.959518, 20.365070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297276, 37.534969, 20.290051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536346, 37.214314, 20.285021>,  <34.679787, 37.021919, 20.282003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536346, 37.214314, 20.285021>,  <34.297276, 37.534969, 20.290051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536346, 37.214314, 20.285021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477493, 0.368511, -0.797621,
		0.644040, 0.470712, 0.603028,
		0.597673, -0.801642, -0.012574,
		34.715649, 36.973820, 20.281248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974510, 37.829311, 20.328115>,  <34.297276, 37.534969, 20.290051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974510, 37.829311, 20.328115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043282, 37.463757, 20.181009>,  <35.084545, 37.244423, 20.092745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043282, 37.463757, 20.181009>,  <34.974510, 37.829311, 20.328115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043282, 37.463757, 20.181009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578159, 0.395874, -0.713454,
		0.797605, -0.089964, 0.596433,
		0.171927, -0.913887, -0.367765,
		35.094860, 37.189590, 20.070681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653149, 37.715008, 20.228840>,  <34.974510, 37.829311, 20.328115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653149, 37.715008, 20.228840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499870, 37.439800, 19.982330>,  <35.407902, 37.274677, 19.834425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499870, 37.439800, 19.982330>,  <35.653149, 37.715008, 20.228840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499870, 37.439800, 19.982330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633015, 0.290262, -0.717663,
		0.672645, -0.665116, 0.324298,
		-0.383198, -0.688017, -0.616272,
		35.384911, 37.233395, 19.797449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182907, 37.296398, 19.977575>,  <35.653149, 37.715008, 20.228840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182907, 37.296398, 19.977575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880970, 37.286507, 19.715399>,  <35.699810, 37.280571, 19.558092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880970, 37.286507, 19.715399>,  <36.182907, 37.296398, 19.977575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880970, 37.286507, 19.715399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632403, 0.237674, -0.737277,
		0.174016, -0.971030, -0.163766,
		-0.754841, -0.024732, -0.655441,
		35.654518, 37.279087, 19.518766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450718, 37.134037, 19.375364>,  <36.182907, 37.296398, 19.977575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450718, 37.134037, 19.375364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096844, 37.247444, 19.227339>,  <35.884518, 37.315487, 19.138523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096844, 37.247444, 19.227339>,  <36.450718, 37.134037, 19.375364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096844, 37.247444, 19.227339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455587, 0.357527, -0.815239,
		-0.098825, -0.889828, -0.445465,
		-0.884689, 0.283514, -0.370062,
		35.831436, 37.332497, 19.116320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354511, 36.851131, 18.742020>,  <36.450718, 37.134037, 19.375364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354511, 36.851131, 18.742020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097698, 37.157372, 18.725761>,  <35.943611, 37.341114, 18.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097698, 37.157372, 18.725761>,  <36.354511, 36.851131, 18.742020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097698, 37.157372, 18.725761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419868, 0.306754, -0.854174,
		-0.641488, -0.565471, -0.518397,
		-0.642031, 0.765601, -0.040645,
		35.905090, 37.387051, 18.713568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315933, 37.006786, 18.003592>,  <36.354511, 36.851131, 18.742020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315933, 37.006786, 18.003592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154793, 37.331360, 18.172956>,  <36.058109, 37.526104, 18.274576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154793, 37.331360, 18.172956>,  <36.315933, 37.006786, 18.003592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154793, 37.331360, 18.172956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390367, 0.570755, -0.722393,
		-0.827843, -0.125731, -0.546689,
		-0.402853, 0.811437, 0.423414,
		36.033936, 37.574791, 18.299980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116112, 37.347427, 17.404230>,  <36.315933, 37.006786, 18.003592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116112, 37.347427, 17.404230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144508, 37.606743, 17.707462>,  <36.161545, 37.762333, 17.889402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144508, 37.606743, 17.707462>,  <36.116112, 37.347427, 17.404230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144508, 37.606743, 17.707462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322528, 0.704254, -0.632458,
		-0.943894, 0.289398, -0.159097,
		0.070987, 0.648287, 0.758080,
		36.165806, 37.801228, 17.934887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699688, 37.900604, 17.169638>,  <36.116112, 37.347427, 17.404230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699688, 37.900604, 17.169638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952137, 38.047447, 17.442965>,  <36.103607, 38.135551, 17.606960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952137, 38.047447, 17.442965>,  <35.699688, 37.900604, 17.169638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952137, 38.047447, 17.442965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263561, 0.727023, -0.634014,
		-0.729537, 0.580234, 0.362084,
		0.631120, 0.367106, 0.683316,
		36.141472, 38.157578, 17.647959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630314, 38.534313, 16.949526>,  <35.699688, 37.900604, 17.169638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630314, 38.534313, 16.949526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949608, 38.515316, 17.189716>,  <36.141182, 38.503918, 17.333830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949608, 38.515316, 17.189716>,  <35.630314, 38.534313, 16.949526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949608, 38.515316, 17.189716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450740, 0.708391, -0.543153,
		-0.399576, 0.704221, 0.586867,
		0.798231, -0.047493, 0.600477,
		36.189075, 38.501068, 17.369860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712948, 39.176823, 17.253878>,  <35.630314, 38.534313, 16.949526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712948, 39.176823, 17.253878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057919, 38.976044, 17.227743>,  <36.264900, 38.855576, 17.212063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057919, 38.976044, 17.227743>,  <35.712948, 39.176823, 17.253878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057919, 38.976044, 17.227743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374547, 0.719631, -0.584675,
		0.340498, 0.479766, 0.808632,
		0.862424, -0.501952, -0.065338,
		36.316647, 38.825459, 17.208141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229343, 39.647388, 17.470421>,  <35.712948, 39.176823, 17.253878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229343, 39.647388, 17.470421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400330, 39.378162, 17.229004>,  <36.502922, 39.216625, 17.084154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400330, 39.378162, 17.229004>,  <36.229343, 39.647388, 17.470421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400330, 39.378162, 17.229004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360858, 0.739151, -0.568715,
		0.828890, 0.025311, 0.558839,
		0.427461, -0.673064, -0.603541,
		36.528568, 39.176243, 17.047941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802212, 39.968449, 17.246885>,  <36.229343, 39.647388, 17.470421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802212, 39.968449, 17.246885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784210, 39.656818, 16.996759>,  <36.773411, 39.469841, 16.846684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784210, 39.656818, 16.996759>,  <36.802212, 39.968449, 17.246885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784210, 39.656818, 16.996759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401659, 0.559016, -0.725376,
		0.914683, -0.283808, 0.287764,
		-0.045003, -0.779072, -0.625317,
		36.770710, 39.423096, 16.809164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523273, 39.960827, 16.862261>,  <36.802212, 39.968449, 17.246885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523273, 39.960827, 16.862261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268456, 39.742012, 16.645033>,  <37.115566, 39.610722, 16.514696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268456, 39.742012, 16.645033>,  <37.523273, 39.960827, 16.862261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268456, 39.742012, 16.645033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297429, 0.475525, -0.827896,
		0.711137, -0.688927, -0.140223,
		-0.637040, -0.547041, -0.543071,
		37.077343, 39.577900, 16.482111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969357, 39.699680, 16.226082>,  <37.523273, 39.960827, 16.862261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969357, 39.699680, 16.226082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576633, 39.693180, 16.150402>,  <37.341000, 39.689281, 16.104994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576633, 39.693180, 16.150402>,  <37.969357, 39.699680, 16.226082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576633, 39.693180, 16.150402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152051, 0.529576, -0.834524,
		0.113758, -0.848107, -0.517468,
		-0.981804, -0.016252, -0.189199,
		37.282093, 39.688305, 16.093643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868565, 39.655399, 15.385811>,  <37.969357, 39.699680, 16.226082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868565, 39.655399, 15.385811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518536, 39.788754, 15.526151>,  <37.308517, 39.868767, 15.610354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518536, 39.788754, 15.526151>,  <37.868565, 39.655399, 15.385811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518536, 39.788754, 15.526151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061372, 0.642634, -0.763711,
		-0.480077, -0.689839, -0.541894,
		-0.875077, 0.333383, 0.350851,
		37.256012, 39.888767, 15.631406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375412, 39.555450, 15.013123>,  <37.868565, 39.655399, 15.385811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375412, 39.555450, 15.013123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207153, 39.862392, 15.206709>,  <37.106197, 40.046558, 15.322861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207153, 39.862392, 15.206709>,  <37.375412, 39.555450, 15.013123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207153, 39.862392, 15.206709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074495, 0.502440, -0.861397,
		-0.904159, -0.398399, -0.154187,
		-0.420649, 0.767354, 0.483965,
		37.080959, 40.092598, 15.351898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728958, 39.818066, 14.672052>,  <37.375412, 39.555450, 15.013123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728958, 39.818066, 14.672052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829906, 40.117149, 14.917732>,  <36.890476, 40.296600, 15.065141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829906, 40.117149, 14.917732>,  <36.728958, 39.818066, 14.672052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829906, 40.117149, 14.917732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083823, 0.649254, -0.755938,
		-0.963992, 0.139294, 0.226530,
		0.252373, 0.747707, 0.614200,
		36.905617, 40.341461, 15.101993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441898, 40.400417, 14.396544>,  <36.728958, 39.818066, 14.672052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441898, 40.400417, 14.396544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715637, 40.543766, 14.650547>,  <36.879883, 40.629776, 14.802948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715637, 40.543766, 14.650547>,  <36.441898, 40.400417, 14.396544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715637, 40.543766, 14.650547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058915, 0.895212, -0.441730,
		-0.726768, 0.264887, 0.633753,
		0.684351, 0.358373, 0.635005,
		36.920944, 40.651279, 14.841048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150772, 40.957001, 14.766645>,  <36.441898, 40.400417, 14.396544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150772, 40.957001, 14.766645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540318, 41.037903, 14.725304>,  <36.774044, 41.086445, 14.700499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540318, 41.037903, 14.725304>,  <36.150772, 40.957001, 14.766645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540318, 41.037903, 14.725304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225851, 0.814009, -0.535146,
		-0.024106, 0.544501, 0.838413,
		0.973863, 0.202257, -0.103354,
		36.832478, 41.098579, 14.694298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346443, 41.671688, 15.154835>,  <36.150772, 40.957001, 14.766645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346443, 41.671688, 15.154835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576241, 41.582424, 14.839835>,  <36.714119, 41.528866, 14.650835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576241, 41.582424, 14.839835>,  <36.346443, 41.671688, 15.154835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576241, 41.582424, 14.839835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306635, 0.833370, -0.459858,
		0.758902, 0.505660, 0.410336,
		0.574494, -0.223164, -0.787499,
		36.748589, 41.515476, 14.603585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876732, 42.041241, 14.979087>,  <36.346443, 41.671688, 15.154835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876732, 42.041241, 14.979087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671410, 42.373039, 15.067135>,  <36.548214, 42.572117, 15.119964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671410, 42.373039, 15.067135>,  <36.876732, 42.041241, 14.979087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671410, 42.373039, 15.067135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453460, 0.479911, -0.751039,
		-0.728622, -0.285698, -0.622484,
		-0.513307, 0.829495, 0.220121,
		36.517418, 42.621887, 15.133171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740746, 42.350224, 14.321682>,  <36.876732, 42.041241, 14.979087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740746, 42.350224, 14.321682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680489, 42.646816, 14.583220>,  <36.644333, 42.824772, 14.740142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680489, 42.646816, 14.583220>,  <36.740746, 42.350224, 14.321682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680489, 42.646816, 14.583220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535738, 0.617083, -0.576362,
		-0.830837, 0.263463, -0.490200,
		-0.150644, 0.741482, 0.653843,
		36.635296, 42.869263, 14.779372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320385, 42.936096, 13.983488>,  <36.740746, 42.350224, 14.321682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320385, 42.936096, 13.983488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604958, 42.995468, 14.258249>,  <36.775700, 43.031094, 14.423106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604958, 42.995468, 14.258249>,  <36.320385, 42.936096, 13.983488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604958, 42.995468, 14.258249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585619, 0.415107, -0.696230,
		-0.388482, 0.897582, 0.208394,
		0.711429, 0.148433, 0.686903,
		36.818386, 43.039997, 14.464320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609016, 43.635632, 14.134944>,  <36.320385, 42.936096, 13.983488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609016, 43.635632, 14.134944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911785, 43.387665, 14.217669>,  <37.093449, 43.238884, 14.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911785, 43.387665, 14.217669>,  <36.609016, 43.635632, 14.134944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911785, 43.387665, 14.217669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576015, 0.483413, -0.659180,
		0.308659, 0.618078, 0.722987,
		0.756926, -0.619913, 0.206812,
		37.138863, 43.201691, 14.279713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542755, 43.779510, 14.813131>,  <36.609016, 43.635632, 14.134944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542755, 43.779510, 14.813131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851131, 43.888054, 15.043615>,  <37.036156, 43.953182, 15.181906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851131, 43.888054, 15.043615>,  <36.542755, 43.779510, 14.813131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851131, 43.888054, 15.043615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635006, -0.397409, -0.662445,
		0.049229, 0.876601, -0.478693,
		0.770937, 0.271361, 0.576211,
		37.082413, 43.969463, 15.216478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591263, 43.855747, 15.589714>,  <36.542755, 43.779510, 14.813131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591263, 43.855747, 15.589714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587574, 43.535633, 15.349894>,  <36.585361, 43.343567, 15.206001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587574, 43.535633, 15.349894>,  <36.591263, 43.855747, 15.589714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587574, 43.535633, 15.349894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908197, -0.244198, 0.339920,
		-0.418441, 0.547644, -0.724564,
		-0.009218, -0.800283, -0.599551,
		36.584808, 43.295547, 15.170028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825081, 43.701065, 15.449569>,  <36.591263, 43.855747, 15.589714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825081, 43.701065, 15.449569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037292, 43.381149, 15.337225>,  <36.164619, 43.189201, 15.269819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037292, 43.381149, 15.337225>,  <35.825081, 43.701065, 15.449569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037292, 43.381149, 15.337225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619236, -0.591929, 0.515915,
		-0.578868, -0.099793, -0.809292,
		0.530527, -0.799789, -0.280853,
		36.196449, 43.141212, 15.252967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297810, 43.229153, 15.234923>,  <35.825081, 43.701065, 15.449569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297810, 43.229153, 15.234923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620716, 43.011681, 15.326771>,  <35.814461, 42.881195, 15.381879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620716, 43.011681, 15.326771>,  <35.297810, 43.229153, 15.234923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620716, 43.011681, 15.326771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570087, -0.617687, 0.541723,
		-0.152693, -0.568219, -0.808587,
		0.807270, -0.543682, 0.229618,
		35.862896, 42.848576, 15.395656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004360, 42.547306, 15.219580>,  <35.297810, 43.229153, 15.234923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004360, 42.547306, 15.219580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347988, 42.510292, 15.420950>,  <35.554165, 42.488083, 15.541772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347988, 42.510292, 15.420950>,  <35.004360, 42.547306, 15.219580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347988, 42.510292, 15.420950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457948, -0.578297, 0.675171,
		0.228656, -0.810562, -0.539172,
		0.859070, -0.092531, 0.503426,
		35.605709, 42.482533, 15.571978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024517, 41.817001, 15.518492>,  <35.004360, 42.547306, 15.219580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024517, 41.817001, 15.518492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274967, 42.039925, 15.736621>,  <35.425240, 42.173679, 15.867498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274967, 42.039925, 15.736621>,  <35.024517, 41.817001, 15.518492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274967, 42.039925, 15.736621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319419, -0.454672, 0.831412,
		0.711292, -0.694756, -0.106669,
		0.626127, 0.557304, 0.545322,
		35.462807, 42.207115, 15.900218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197742, 41.358070, 16.011515>,  <35.024517, 41.817001, 15.518492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197742, 41.358070, 16.011515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278973, 41.725716, 16.146561>,  <35.327709, 41.946304, 16.227589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278973, 41.725716, 16.146561>,  <35.197742, 41.358070, 16.011515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278973, 41.725716, 16.146561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410029, -0.233291, 0.881732,
		0.889178, -0.317489, 0.329490,
		0.203073, 0.919117, 0.337617,
		35.339893, 42.001450, 16.247847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587631, 41.346706, 16.621054>,  <35.197742, 41.358070, 16.011515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587631, 41.346706, 16.621054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428970, 41.713097, 16.645248>,  <35.333775, 41.932930, 16.659765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428970, 41.713097, 16.645248>,  <35.587631, 41.346706, 16.621054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428970, 41.713097, 16.645248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261232, -0.175799, 0.949132,
		0.880015, 0.360672, 0.309013,
		-0.396650, 0.915975, 0.060487,
		35.309975, 41.987888, 16.663395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741196, 41.541855, 17.280014>,  <35.587631, 41.346706, 16.621054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741196, 41.541855, 17.280014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449585, 41.792679, 17.170240>,  <35.274620, 41.943172, 17.104376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449585, 41.792679, 17.170240>,  <35.741196, 41.541855, 17.280014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449585, 41.792679, 17.170240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389405, -0.050216, 0.919697,
		0.562927, 0.777348, 0.280790,
		-0.729025, 0.627063, -0.274436,
		35.230877, 41.980797, 17.087910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783768, 42.068100, 17.769264>,  <35.741196, 41.541855, 17.280014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783768, 42.068100, 17.769264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413715, 42.087391, 17.618639>,  <35.191685, 42.098965, 17.528263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413715, 42.087391, 17.618639>,  <35.783768, 42.068100, 17.769264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413715, 42.087391, 17.618639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379444, -0.085630, 0.921243,
		0.012184, 0.995159, 0.097519,
		-0.925134, 0.048228, -0.376564,
		35.136173, 42.101860, 17.505671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432018, 42.553879, 18.149752>,  <35.783768, 42.068100, 17.769264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432018, 42.553879, 18.149752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139622, 42.323986, 18.002598>,  <34.964184, 42.186050, 17.914307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139622, 42.323986, 18.002598>,  <35.432018, 42.553879, 18.149752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139622, 42.323986, 18.002598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484227, 0.057022, 0.873082,
		-0.480809, 0.816354, -0.319982,
		-0.730990, -0.574730, -0.367884,
		34.920326, 42.151566, 17.892233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879665, 42.680061, 18.611910>,  <35.432018, 42.553879, 18.149752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879665, 42.680061, 18.611910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700439, 42.382408, 18.413717>,  <34.592903, 42.203815, 18.294802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700439, 42.382408, 18.413717>,  <34.879665, 42.680061, 18.611910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700439, 42.382408, 18.413717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490046, -0.259112, 0.832296,
		-0.747727, 0.615727, -0.248563,
		-0.448061, -0.744138, -0.495480,
		34.566021, 42.159168, 18.265074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231281, 42.683109, 18.860020>,  <34.879665, 42.680061, 18.611910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231281, 42.683109, 18.860020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276516, 42.316006, 18.707743>,  <34.303658, 42.095741, 18.616377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276516, 42.316006, 18.707743>,  <34.231281, 42.683109, 18.860020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276516, 42.316006, 18.707743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610120, -0.366544, 0.702423,
		-0.784197, 0.152835, -0.601395,
		0.113083, -0.917762, -0.380691,
		34.310440, 42.040676, 18.593536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556259, 42.329071, 18.751350>,  <34.231281, 42.683109, 18.860020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556259, 42.329071, 18.751350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822968, 42.032810, 18.784456>,  <33.982994, 41.855053, 18.804319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822968, 42.032810, 18.784456>,  <33.556259, 42.329071, 18.751350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822968, 42.032810, 18.784456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555623, -0.420016, 0.717544,
		-0.496692, -0.524420, -0.691579,
		0.666768, -0.740655, 0.082762,
		34.022999, 41.810616, 18.809286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184586, 41.719631, 18.775707>,  <33.556259, 42.329071, 18.751350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184586, 41.719631, 18.775707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531559, 41.668255, 18.967981>,  <33.739742, 41.637428, 19.083345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531559, 41.668255, 18.967981>,  <33.184586, 41.719631, 18.775707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531559, 41.668255, 18.967981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495136, -0.317905, 0.808565,
		0.048961, -0.939383, -0.339357,
		0.867435, -0.128440, 0.480687,
		33.791790, 41.629723, 19.112186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034283, 41.190781, 19.253954>,  <33.184586, 41.719631, 18.775707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034283, 41.190781, 19.253954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396355, 41.295998, 19.387499>,  <33.613598, 41.359127, 19.467627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396355, 41.295998, 19.387499>,  <33.034283, 41.190781, 19.253954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396355, 41.295998, 19.387499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198486, -0.432983, 0.879277,
		0.375845, -0.862168, -0.339715,
		0.905176, 0.263044, 0.333863,
		33.667908, 41.374912, 19.487658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420105, 40.569923, 19.344917>,  <33.034283, 41.190781, 19.253954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420105, 40.569923, 19.344917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607849, 40.824066, 19.590199>,  <33.720497, 40.976551, 19.737368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607849, 40.824066, 19.590199>,  <33.420105, 40.569923, 19.344917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607849, 40.824066, 19.590199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171238, -0.615774, 0.769090,
		0.866242, -0.465987, -0.180225,
		0.469364, 0.635356, 0.613204,
		33.748657, 41.014671, 19.774160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984409, 40.146461, 19.723276>,  <33.420105, 40.569923, 19.344917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984409, 40.146461, 19.723276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931889, 40.479397, 19.938671>,  <33.900375, 40.679157, 20.067909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931889, 40.479397, 19.938671>,  <33.984409, 40.146461, 19.723276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931889, 40.479397, 19.938671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104098, -0.551765, 0.827478,
		0.985862, 0.052593, 0.159092,
		-0.131301, 0.832340, 0.538489,
		33.892498, 40.729099, 20.100218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441868, 40.050190, 20.186155>,  <33.984409, 40.146461, 19.723276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441868, 40.050190, 20.186155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143219, 40.294750, 20.291029>,  <33.964031, 40.441486, 20.353952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143219, 40.294750, 20.291029>,  <34.441868, 40.050190, 20.186155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143219, 40.294750, 20.291029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293191, -0.656194, 0.695304,
		0.597157, 0.442259, 0.669187,
		-0.746621, 0.611405, 0.262185,
		33.919231, 40.478172, 20.369684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493858, 39.931110, 20.925291>,  <34.441868, 40.050190, 20.186155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493858, 39.931110, 20.925291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160149, 40.122719, 20.816099>,  <33.959923, 40.237686, 20.750584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160149, 40.122719, 20.816099>,  <34.493858, 39.931110, 20.925291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160149, 40.122719, 20.816099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526716, -0.546134, 0.651389,
		0.162947, 0.687222, 0.707936,
		-0.834277, 0.479024, -0.272980,
		33.909866, 40.266426, 20.734205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222073, 40.183559, 21.558868>,  <34.493858, 39.931110, 20.925291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222073, 40.183559, 21.558868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914001, 40.189075, 21.303797>,  <33.729156, 40.192383, 21.150755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914001, 40.189075, 21.303797>,  <34.222073, 40.183559, 21.558868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914001, 40.189075, 21.303797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578618, -0.435763, 0.689428,
		-0.268372, 0.899955, 0.343593,
		-0.770180, 0.013786, -0.637677,
		33.682949, 40.193211, 21.112494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622082, 40.470215, 21.893143>,  <34.222073, 40.183559, 21.558868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622082, 40.470215, 21.893143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461876, 40.230202, 21.616146>,  <33.365753, 40.086193, 21.449947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461876, 40.230202, 21.616146>,  <33.622082, 40.470215, 21.893143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461876, 40.230202, 21.616146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610350, -0.388976, 0.690051,
		-0.683418, 0.699038, -0.210441,
		-0.400515, -0.600037, -0.692491,
		33.341721, 40.050190, 21.408400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945869, 40.511524, 22.027399>,  <33.622082, 40.470215, 21.893143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945869, 40.511524, 22.027399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946037, 40.175678, 21.810127>,  <32.946140, 39.974171, 21.679764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946037, 40.175678, 21.810127>,  <32.945869, 40.511524, 22.027399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946037, 40.175678, 21.810127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551633, -0.453255, 0.700186,
		-0.834087, 0.299339, -0.463352,
		0.000423, -0.839616, -0.543180,
		32.946163, 39.923794, 21.647173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271915, 40.283550, 22.001194>,  <32.945869, 40.511524, 22.027399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271915, 40.283550, 22.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484959, 39.952938, 21.928341>,  <32.612785, 39.754570, 21.884630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484959, 39.952938, 21.928341>,  <32.271915, 40.283550, 22.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484959, 39.952938, 21.928341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567031, -0.508224, 0.648216,
		-0.628336, -0.241970, -0.739354,
		0.532606, -0.826535, -0.182131,
		32.644741, 39.704979, 21.873701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781338, 39.624699, 21.884420>,  <32.271915, 40.283550, 22.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781338, 39.624699, 21.884420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147102, 39.497849, 21.985041>,  <32.366562, 39.421738, 22.045412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147102, 39.497849, 21.985041>,  <31.781338, 39.624699, 21.884420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147102, 39.497849, 21.985041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399509, -0.607102, 0.686891,
		-0.065116, -0.728599, -0.681838,
		0.914414, -0.317128, 0.251550,
		32.421425, 39.402710, 22.060505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601292, 39.016403, 21.833746>,  <31.781338, 39.624699, 21.884420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601292, 39.016403, 21.833746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913401, 39.050285, 22.081615>,  <32.100666, 39.070614, 22.230337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913401, 39.050285, 22.081615>,  <31.601292, 39.016403, 21.833746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913401, 39.050285, 22.081615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430581, -0.645856, 0.630453,
		0.453621, -0.758746, -0.467474,
		0.780275, 0.084701, 0.619675,
		32.147484, 39.075695, 22.267517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797779, 38.319550, 22.157211>,  <31.601292, 39.016403, 21.833746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797779, 38.319550, 22.157211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978840, 38.565258, 22.415754>,  <32.087479, 38.712685, 22.570881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978840, 38.565258, 22.415754>,  <31.797779, 38.319550, 22.157211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978840, 38.565258, 22.415754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064261, -0.700513, 0.710741,
		0.889368, -0.363255, -0.277616,
		0.452654, 0.614270, 0.646357,
		32.114635, 38.749538, 22.609661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331528, 37.882889, 22.476265>,  <31.797779, 38.319550, 22.157211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331528, 37.882889, 22.476265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258442, 38.189442, 22.722605>,  <32.214592, 38.373375, 22.870409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258442, 38.189442, 22.722605>,  <32.331528, 37.882889, 22.476265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258442, 38.189442, 22.722605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045639, -0.632333, 0.773351,
		0.982106, 0.113195, 0.150513,
		-0.182714, 0.766383, 0.615852,
		32.203629, 38.419357, 22.907360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610462, 37.624275, 23.168110>,  <32.331528, 37.882889, 22.476265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610462, 37.624275, 23.168110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371304, 37.933586, 23.252558>,  <32.227810, 38.119171, 23.303226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371304, 37.933586, 23.252558>,  <32.610462, 37.624275, 23.168110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371304, 37.933586, 23.252558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244525, -0.426777, 0.870672,
		0.763369, 0.468944, 0.444252,
		-0.597892, 0.773274, 0.211120,
		32.191936, 38.165569, 23.315893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697338, 37.666679, 23.857998>,  <32.610462, 37.624275, 23.168110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697338, 37.666679, 23.857998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368061, 37.882046, 23.785931>,  <32.170494, 38.011265, 23.742689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368061, 37.882046, 23.785931>,  <32.697338, 37.666679, 23.857998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368061, 37.882046, 23.785931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414587, -0.353233, 0.838656,
		0.387903, 0.765073, 0.514000,
		-0.823194, 0.538415, -0.180169,
		32.121101, 38.043571, 23.731880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531357, 37.921032, 24.586048>,  <32.697338, 37.666679, 23.857998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531357, 37.921032, 24.586048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203171, 37.932087, 24.357639>,  <32.006256, 37.938721, 24.220594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203171, 37.932087, 24.357639>,  <32.531357, 37.921032, 24.586048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203171, 37.932087, 24.357639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560879, -0.232246, 0.794655,
		-0.110651, 0.972264, 0.206055,
		-0.820470, 0.027642, -0.571021,
		31.957029, 37.940380, 24.186333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020416, 38.221367, 25.121479>,  <32.531357, 37.921032, 24.586048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020416, 38.221367, 25.121479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837009, 38.042732, 24.814152>,  <31.726965, 37.935551, 24.629755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837009, 38.042732, 24.814152>,  <32.020416, 38.221367, 25.121479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837009, 38.042732, 24.814152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687793, -0.369151, 0.625035,
		-0.562761, 0.815036, -0.137898,
		-0.458521, -0.446590, -0.768320,
		31.699453, 37.908756, 24.583656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248163, 38.398861, 25.206656>,  <32.020416, 38.221367, 25.121479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248163, 38.398861, 25.206656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261286, 38.059830, 24.994793>,  <31.269159, 37.856411, 24.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261286, 38.059830, 24.994793>,  <31.248163, 38.398861, 25.206656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261286, 38.059830, 24.994793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704333, -0.395596, 0.589422,
		-0.709111, 0.353716, -0.609957,
		0.032808, -0.847578, -0.529655,
		31.271128, 37.805557, 24.835896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605228, 38.269703, 25.216074>,  <31.248163, 38.398861, 25.206656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605228, 38.269703, 25.216074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793459, 37.925915, 25.136208>,  <30.906397, 37.719643, 25.088287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793459, 37.925915, 25.136208>,  <30.605228, 38.269703, 25.216074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793459, 37.925915, 25.136208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629120, -0.485483, 0.607055,
		-0.618682, -0.160049, -0.769166,
		0.470576, -0.859471, -0.199669,
		30.934631, 37.668072, 25.076307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089493, 37.764687, 25.243650>,  <30.605228, 38.269703, 25.216074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089493, 37.764687, 25.243650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420481, 37.541016, 25.264076>,  <30.619074, 37.406811, 25.276333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420481, 37.541016, 25.264076>,  <30.089493, 37.764687, 25.243650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420481, 37.541016, 25.264076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534694, -0.756924, 0.375725,
		-0.171445, -0.338207, -0.925323,
		0.827472, -0.559180, 0.051067,
		30.668722, 37.373260, 25.279396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910654, 37.097927, 24.974930>,  <30.089493, 37.764687, 25.243650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910654, 37.097927, 24.974930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229548, 37.061653, 25.213659>,  <30.420883, 37.039886, 25.356897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229548, 37.061653, 25.213659>,  <29.910654, 37.097927, 24.974930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229548, 37.061653, 25.213659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434761, -0.772156, 0.463421,
		0.418814, -0.628929, -0.655014,
		0.797231, -0.090687, 0.596823,
		30.468718, 37.034447, 25.392706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024580, 36.466515, 25.036316>,  <29.910654, 37.097927, 24.974930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024580, 36.466515, 25.036316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223995, 36.601902, 25.355539>,  <30.343645, 36.683136, 25.547073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223995, 36.601902, 25.355539>,  <30.024580, 36.466515, 25.036316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223995, 36.601902, 25.355539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355481, -0.759833, 0.544323,
		0.790628, -0.555061, -0.258487,
		0.498539, 0.338470, 0.798058,
		30.373556, 36.703442, 25.594957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289402, 35.854576, 25.338266>,  <30.024580, 36.466515, 25.036316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289402, 35.854576, 25.338266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277020, 36.145996, 25.611986>,  <30.269590, 36.320847, 25.776218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277020, 36.145996, 25.611986>,  <30.289402, 35.854576, 25.338266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277020, 36.145996, 25.611986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311306, -0.657601, 0.686039,
		0.949805, -0.191787, 0.247159,
		-0.030958, 0.728545, 0.684298,
		30.267733, 36.364559, 25.817276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427803, 35.462589, 25.975550>,  <30.289402, 35.854576, 25.338266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427803, 35.462589, 25.975550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291504, 35.813103, 26.111794>,  <30.209724, 36.023411, 26.193539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291504, 35.813103, 26.111794>,  <30.427803, 35.462589, 25.975550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291504, 35.813103, 26.111794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348348, -0.454180, 0.819984,
		0.873238, 0.160759, 0.460013,
		-0.340748, 0.876286, 0.340607,
		30.189280, 36.075989, 26.213976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711172, 35.565331, 26.743477>,  <30.427803, 35.462589, 25.975550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711172, 35.565331, 26.743477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406534, 35.819935, 26.694767>,  <30.223751, 35.972698, 26.665541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406534, 35.819935, 26.694767>,  <30.711172, 35.565331, 26.743477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406534, 35.819935, 26.694767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353086, -0.249982, 0.901576,
		0.543422, 0.729631, 0.415128,
		-0.761593, 0.636512, -0.121777,
		30.178057, 36.010887, 26.658234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652422, 35.950390, 27.301929>,  <30.711172, 35.565331, 26.743477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652422, 35.950390, 27.301929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280031, 35.974091, 27.157837>,  <30.056597, 35.988312, 27.071381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280031, 35.974091, 27.157837>,  <30.652422, 35.950390, 27.301929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280031, 35.974091, 27.157837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356111, -0.364676, 0.860347,
		-0.080394, 0.929248, 0.360605,
		-0.930979, 0.059248, -0.360233,
		30.000738, 35.991863, 27.049767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228756, 36.168446, 27.887154>,  <30.652422, 35.950390, 27.301929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228756, 36.168446, 27.887154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965048, 36.018734, 27.626299>,  <29.806824, 35.928909, 27.469786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965048, 36.018734, 27.626299>,  <30.228756, 36.168446, 27.887154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965048, 36.018734, 27.626299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514279, -0.408259, 0.754216,
		-0.548525, 0.832611, 0.076671,
		-0.659270, -0.374277, -0.652135,
		29.767267, 35.906452, 27.430658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814434, 36.695457, 27.890854>,  <30.228756, 36.168446, 27.887154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814434, 36.695457, 27.890854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015068, 36.738525, 28.234207>,  <31.135448, 36.764366, 28.440220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015068, 36.738525, 28.234207>,  <30.814434, 36.695457, 27.890854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015068, 36.738525, 28.234207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437123, 0.824702, -0.358873,
		-0.746550, 0.555224, 0.366592,
		0.501584, 0.107671, 0.858383,
		31.165543, 36.770828, 28.491722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875889, 37.406815, 27.974295>,  <30.814434, 36.695457, 27.890854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875889, 37.406815, 27.974295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179058, 37.267948, 28.195213>,  <31.360960, 37.184628, 28.327765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179058, 37.267948, 28.195213>,  <30.875889, 37.406815, 27.974295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179058, 37.267948, 28.195213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585985, 0.734356, -0.342554,
		-0.286660, 0.583267, 0.760017,
		0.757923, -0.347162, 0.552296,
		31.406435, 37.163799, 28.360903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127317, 38.081276, 28.375227>,  <30.875889, 37.406815, 27.974295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127317, 38.081276, 28.375227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396984, 37.787731, 28.408556>,  <31.558784, 37.611603, 28.428555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396984, 37.787731, 28.408556>,  <31.127317, 38.081276, 28.375227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396984, 37.787731, 28.408556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715044, 0.620269, -0.322458,
		0.184956, 0.276971, 0.942909,
		0.674169, -0.733862, 0.083324,
		31.599236, 37.567574, 28.433554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628326, 38.322865, 28.739859>,  <31.127317, 38.081276, 28.375227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628326, 38.322865, 28.739859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806587, 38.038483, 28.522257>,  <31.913544, 37.867855, 28.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806587, 38.038483, 28.522257>,  <31.628326, 38.322865, 28.739859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806587, 38.038483, 28.522257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649136, 0.675103, -0.350512,
		0.616456, -0.196926, 0.762367,
		0.445651, -0.710954, -0.544003,
		31.940283, 37.825195, 28.359056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363049, 38.386200, 28.857340>,  <31.628326, 38.322865, 28.739859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363049, 38.386200, 28.857340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314644, 38.193218, 28.510330>,  <32.285603, 38.077431, 28.302124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314644, 38.193218, 28.510330>,  <32.363049, 38.386200, 28.857340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314644, 38.193218, 28.510330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528564, 0.708429, -0.467705,
		0.840225, -0.515137, 0.169282,
		-0.121008, -0.482454, -0.867522,
		32.278343, 38.048481, 28.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025593, 38.457470, 28.542604>,  <32.363049, 38.386200, 28.857340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025593, 38.457470, 28.542604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784435, 38.346027, 28.243565>,  <32.639740, 38.279163, 28.064140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784435, 38.346027, 28.243565>,  <33.025593, 38.457470, 28.542604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784435, 38.346027, 28.243565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544359, 0.541398, -0.640751,
		0.583266, -0.793263, -0.174740,
		-0.602888, -0.278608, -0.747599,
		32.603569, 38.262447, 28.019285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465858, 38.304108, 27.982920>,  <33.025593, 38.457470, 28.542604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465858, 38.304108, 27.982920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112274, 38.344440, 27.800297>,  <32.900124, 38.368641, 27.690723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112274, 38.344440, 27.800297>,  <33.465858, 38.304108, 27.982920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112274, 38.344440, 27.800297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460741, 0.354000, -0.813881,
		0.079553, -0.929793, -0.359382,
		-0.883962, 0.100835, -0.456556,
		32.847084, 38.374691, 27.663330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571732, 38.017891, 27.325314>,  <33.465858, 38.304108, 27.982920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571732, 38.017891, 27.325314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244846, 38.243053, 27.275839>,  <33.048714, 38.378151, 27.246153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244846, 38.243053, 27.275839>,  <33.571732, 38.017891, 27.325314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244846, 38.243053, 27.275839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375121, 0.356580, -0.855649,
		-0.437543, -0.745647, -0.502560,
		-0.817215, 0.562904, -0.123688,
		32.999683, 38.411926, 27.238733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420326, 37.910324, 26.632196>,  <33.571732, 38.017891, 27.325314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420326, 37.910324, 26.632196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261021, 38.257084, 26.752106>,  <33.165436, 38.465141, 26.824051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261021, 38.257084, 26.752106>,  <33.420326, 37.910324, 26.632196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261021, 38.257084, 26.752106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292972, 0.429912, -0.854016,
		-0.869224, -0.252303, -0.425198,
		-0.398268, 0.866902, 0.299772,
		33.141541, 38.517155, 26.842037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201797, 38.189659, 26.051796>,  <33.420326, 37.910324, 26.632196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201797, 38.189659, 26.051796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178402, 38.512886, 26.286266>,  <33.164364, 38.706821, 26.426949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178402, 38.512886, 26.286266>,  <33.201797, 38.189659, 26.051796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178402, 38.512886, 26.286266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328021, 0.570135, -0.753226,
		-0.942858, 0.148226, -0.298408,
		-0.058485, 0.808069, 0.586177,
		33.160858, 38.755306, 26.462120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974239, 38.718773, 25.596855>,  <33.201797, 38.189659, 26.051796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974239, 38.718773, 25.596855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134441, 38.929287, 25.896887>,  <33.230564, 39.055595, 26.076906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134441, 38.929287, 25.896887>,  <32.974239, 38.718773, 25.596855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134441, 38.929287, 25.896887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392575, 0.641110, -0.659442,
		-0.827937, 0.558573, 0.050163,
		0.400507, 0.526283, 0.750080,
		33.254593, 39.087173, 26.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781078, 39.474972, 25.427050>,  <32.974239, 38.718773, 25.596855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781078, 39.474972, 25.427050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094799, 39.451027, 25.674042>,  <33.283031, 39.436661, 25.822237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094799, 39.451027, 25.674042>,  <32.781078, 39.474972, 25.427050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094799, 39.451027, 25.674042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461410, 0.721613, -0.516115,
		-0.414687, 0.689704, 0.593585,
		0.784306, -0.059860, 0.617480,
		33.330090, 39.433067, 25.859285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934631, 40.159721, 25.804884>,  <32.781078, 39.474972, 25.427050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934631, 40.159721, 25.804884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286118, 39.973370, 25.763281>,  <33.497009, 39.861561, 25.738319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286118, 39.973370, 25.763281>,  <32.934631, 40.159721, 25.804884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286118, 39.973370, 25.763281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361657, 0.791966, -0.491929,
		0.311550, 0.394650, 0.864401,
		0.878716, -0.465877, -0.104009,
		33.549732, 39.833607, 25.732079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408840, 40.729927, 25.955845>,  <32.934631, 40.159721, 25.804884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408840, 40.729927, 25.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608585, 40.440594, 25.765087>,  <33.728432, 40.266994, 25.650633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608585, 40.440594, 25.765087>,  <33.408840, 40.729927, 25.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608585, 40.440594, 25.765087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425923, 0.684279, -0.591906,
		0.754474, 0.092454, 0.649786,
		0.499359, -0.723336, -0.476892,
		33.758392, 40.223595, 25.622019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120644, 40.949589, 25.865541>,  <33.408840, 40.729927, 25.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120644, 40.949589, 25.865541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031590, 40.668736, 25.595003>,  <33.978157, 40.500225, 25.432680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031590, 40.668736, 25.595003>,  <34.120644, 40.949589, 25.865541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031590, 40.668736, 25.595003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412195, 0.560905, -0.717970,
		0.883476, -0.438630, 0.164541,
		-0.222631, -0.702132, -0.676347,
		33.964802, 40.458096, 25.392099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776207, 40.878838, 25.433388>,  <34.120644, 40.949589, 25.865541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776207, 40.878838, 25.433388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479397, 40.736877, 25.205900>,  <34.301311, 40.651703, 25.069408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479397, 40.736877, 25.205900>,  <34.776207, 40.878838, 25.433388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479397, 40.736877, 25.205900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453415, 0.359175, -0.815725,
		0.493772, -0.863156, -0.105599,
		-0.742027, -0.354902, -0.568719,
		34.256790, 40.630405, 25.035284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113216, 40.598518, 24.801668>,  <34.776207, 40.878838, 25.433388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113216, 40.598518, 24.801668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738605, 40.601143, 24.661455>,  <34.513840, 40.602718, 24.577328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738605, 40.601143, 24.661455>,  <35.113216, 40.598518, 24.801668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738605, 40.601143, 24.661455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318778, 0.432102, -0.843604,
		0.145927, -0.901801, -0.406768,
		-0.936529, 0.006564, -0.350530,
		34.457645, 40.603111, 24.556295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162712, 40.240810, 24.088032>,  <35.113216, 40.598518, 24.801668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162712, 40.240810, 24.088032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817028, 40.441013, 24.108580>,  <34.609619, 40.561134, 24.120909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817028, 40.441013, 24.108580>,  <35.162712, 40.240810, 24.088032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817028, 40.441013, 24.108580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184267, 0.409855, -0.893345,
		-0.468181, -0.762568, -0.446427,
		-0.864206, 0.500509, 0.051370,
		34.557766, 40.591167, 24.123991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714230, 40.008606, 23.692148>,  <35.162712, 40.240810, 24.088032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714230, 40.008606, 23.692148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613400, 40.395222, 23.711143>,  <34.552902, 40.627193, 23.722540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613400, 40.395222, 23.711143>,  <34.714230, 40.008606, 23.692148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613400, 40.395222, 23.711143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178030, 0.094555, -0.979472,
		-0.951190, -0.238449, -0.195908,
		-0.252078, 0.966541, 0.047488,
		34.537777, 40.685184, 23.725389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352886, 40.127235, 23.001217>,  <34.714230, 40.008606, 23.692148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352886, 40.127235, 23.001217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438904, 40.498112, 23.123903>,  <34.490513, 40.720638, 23.197515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438904, 40.498112, 23.123903>,  <34.352886, 40.127235, 23.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438904, 40.498112, 23.123903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218841, 0.260326, -0.940393,
		-0.951770, 0.269346, -0.146927,
		0.215042, 0.927191, 0.306715,
		34.503418, 40.776268, 23.215918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956783, 40.651669, 22.540302>,  <34.352886, 40.127235, 23.001217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956783, 40.651669, 22.540302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260853, 40.854885, 22.702309>,  <34.443295, 40.976814, 22.799513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260853, 40.854885, 22.702309>,  <33.956783, 40.651669, 22.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260853, 40.854885, 22.702309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272399, 0.316730, -0.908560,
		-0.589865, 0.800985, 0.102379,
		0.760170, 0.508040, 0.405015,
		34.488903, 41.007298, 22.823812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975086, 41.208748, 22.085114>,  <33.956783, 40.651669, 22.540302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975086, 41.208748, 22.085114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321423, 41.191719, 22.284513>,  <34.529224, 41.181503, 22.404154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321423, 41.191719, 22.284513>,  <33.975086, 41.208748, 22.085114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321423, 41.191719, 22.284513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473218, 0.393144, -0.788354,
		-0.162420, 0.918491, 0.360547,
		0.865843, -0.042573, 0.498501,
		34.581177, 41.178947, 22.434063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334225, 41.922989, 21.989376>,  <33.975086, 41.208748, 22.085114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334225, 41.922989, 21.989376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604115, 41.639000, 22.070055>,  <34.766048, 41.468605, 22.118462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604115, 41.639000, 22.070055>,  <34.334225, 41.922989, 21.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604115, 41.639000, 22.070055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531144, 0.277329, -0.800609,
		0.512475, 0.647322, 0.564219,
		0.674726, -0.709974, 0.201697,
		34.806534, 41.426006, 22.130564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100845, 42.289406, 22.142487>,  <34.334225, 41.922989, 21.989376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100845, 42.289406, 22.142487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184116, 41.916359, 22.024576>,  <35.234081, 41.692532, 21.953829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184116, 41.916359, 22.024576>,  <35.100845, 42.289406, 22.142487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184116, 41.916359, 22.024576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676742, 0.354938, -0.645011,
		0.706173, -0.065209, 0.705030,
		0.208181, -0.932613, -0.294777,
		35.246571, 41.636574, 21.936144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901917, 42.279972, 22.030960>,  <35.100845, 42.289406, 22.142487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901917, 42.279972, 22.030960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746567, 41.975880, 21.822649>,  <35.653358, 41.793423, 21.697662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746567, 41.975880, 21.822649>,  <35.901917, 42.279972, 22.030960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746567, 41.975880, 21.822649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606336, 0.214747, -0.765664,
		0.693919, -0.613129, 0.377556,
		-0.388372, -0.760235, -0.520779,
		35.630054, 41.747810, 21.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512234, 41.937298, 21.749508>,  <35.901917, 42.279972, 22.030960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512234, 41.937298, 21.749508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202660, 41.800694, 21.536198>,  <36.016914, 41.718731, 21.408211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202660, 41.800694, 21.536198>,  <36.512234, 41.937298, 21.749508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202660, 41.800694, 21.536198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508082, 0.167765, -0.844812,
		0.377982, -0.924782, 0.043678,
		-0.773940, -0.341516, -0.533277,
		35.970478, 41.698238, 21.376215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822750, 41.455593, 21.306114>,  <36.512234, 41.937298, 21.749508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822750, 41.455593, 21.306114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478237, 41.561996, 21.132938>,  <36.271530, 41.625839, 21.029034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478237, 41.561996, 21.132938>,  <36.822750, 41.455593, 21.306114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478237, 41.561996, 21.132938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461836, 0.054490, -0.885290,
		-0.211904, -0.962429, -0.169783,
		-0.861280, 0.266009, -0.432938,
		36.219852, 41.641800, 21.003057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744835, 41.102951, 20.656506>,  <36.822750, 41.455593, 21.306114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744835, 41.102951, 20.656506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483173, 41.403976, 20.626221>,  <36.326176, 41.584591, 20.608049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483173, 41.403976, 20.626221>,  <36.744835, 41.102951, 20.656506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483173, 41.403976, 20.626221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373474, 0.234338, -0.897554,
		-0.657720, -0.615418, -0.434355,
		-0.654157, 0.752560, -0.075713,
		36.286926, 41.629745, 20.603506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425034, 41.069363, 19.890779>,  <36.744835, 41.102951, 20.656506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425034, 41.069363, 19.890779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377563, 41.442886, 20.025785>,  <36.349079, 41.667000, 20.106789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377563, 41.442886, 20.025785>,  <36.425034, 41.069363, 19.890779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377563, 41.442886, 20.025785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234231, 0.356651, -0.904398,
		-0.964910, -0.028275, -0.261053,
		-0.118677, 0.933810, 0.337513,
		36.341961, 41.723030, 20.127039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085983, 41.408337, 19.307968>,  <36.425034, 41.069363, 19.890779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085983, 41.408337, 19.307968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237507, 41.703094, 19.531929>,  <36.328423, 41.879948, 19.666306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237507, 41.703094, 19.531929>,  <36.085983, 41.408337, 19.307968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237507, 41.703094, 19.531929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436305, 0.391346, -0.810238,
		-0.816175, 0.551215, -0.173264,
		0.378810, 0.736892, 0.559905,
		36.351151, 41.924164, 19.699900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019184, 42.085503, 18.905703>,  <36.085983, 41.408337, 19.307968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019184, 42.085503, 18.905703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316254, 42.108433, 19.172581>,  <36.494495, 42.122192, 19.332706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316254, 42.108433, 19.172581>,  <36.019184, 42.085503, 18.905703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316254, 42.108433, 19.172581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634852, 0.256725, -0.728735,
		-0.213062, 0.964783, 0.154268,
		0.742675, 0.057328, 0.667193,
		36.539055, 42.125629, 19.372738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332127, 42.655869, 18.607388>,  <36.019184, 42.085503, 18.905703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332127, 42.655869, 18.607388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590263, 42.498783, 18.869474>,  <36.745144, 42.404533, 19.026726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590263, 42.498783, 18.869474>,  <36.332127, 42.655869, 18.607388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590263, 42.498783, 18.869474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763866, 0.324589, -0.557809,
		0.006383, 0.860475, 0.509452,
		0.645343, -0.392714, 0.655216,
		36.783867, 42.380970, 19.066040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746735, 43.118610, 18.578457>,  <36.332127, 42.655869, 18.607388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746735, 43.118610, 18.578457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962170, 42.824917, 18.743780>,  <37.091431, 42.648701, 18.842974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962170, 42.824917, 18.743780>,  <36.746735, 43.118610, 18.578457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962170, 42.824917, 18.743780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768167, 0.226340, -0.598907,
		0.346190, 0.640052, 0.685919,
		0.538583, -0.734236, 0.413310,
		37.123745, 42.604645, 18.867773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278973, 43.514282, 18.966415>,  <36.746735, 43.118610, 18.578457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278973, 43.514282, 18.966415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384720, 43.151352, 18.835648>,  <37.448166, 42.933594, 18.757187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384720, 43.151352, 18.835648>,  <37.278973, 43.514282, 18.966415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384720, 43.151352, 18.835648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537813, 0.420072, -0.730955,
		0.800542, 0.017418, 0.599023,
		0.264365, -0.907323, -0.326918,
		37.464027, 42.879154, 18.737572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902218, 43.555313, 18.693607>,  <37.278973, 43.514282, 18.966415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902218, 43.555313, 18.693607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821762, 43.195271, 18.539024>,  <37.773487, 42.979244, 18.446274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821762, 43.195271, 18.539024>,  <37.902218, 43.555313, 18.693607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821762, 43.195271, 18.539024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577657, 0.209628, -0.788903,
		0.791109, -0.381923, 0.477788,
		-0.201142, -0.900106, -0.386459,
		37.761421, 42.925240, 18.423086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492619, 43.342354, 18.417770>,  <37.902218, 43.555313, 18.693607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492619, 43.342354, 18.417770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248947, 43.069897, 18.255318>,  <38.102745, 42.906422, 18.157846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248947, 43.069897, 18.255318>,  <38.492619, 43.342354, 18.417770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248947, 43.069897, 18.255318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541361, 0.017048, -0.840617,
		0.579504, -0.731952, 0.358359,
		-0.609182, -0.681143, -0.406130,
		38.066193, 42.865555, 18.133478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936001, 42.850773, 18.090668>,  <38.492619, 43.342354, 18.417770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936001, 42.850773, 18.090668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577248, 42.805973, 17.919523>,  <38.361996, 42.779095, 17.816837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577248, 42.805973, 17.919523>,  <38.936001, 42.850773, 18.090668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577248, 42.805973, 17.919523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420163, 0.086313, -0.903334,
		0.138100, -0.989953, -0.030356,
		-0.896878, -0.111996, -0.427862,
		38.308186, 42.772373, 17.791164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022102, 42.336563, 17.535912>,  <38.936001, 42.850773, 18.090668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022102, 42.336563, 17.535912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719349, 42.589752, 17.470821>,  <38.537697, 42.741665, 17.431767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719349, 42.589752, 17.470821>,  <39.022102, 42.336563, 17.535912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719349, 42.589752, 17.470821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359039, 0.194658, -0.912797,
		-0.546098, -0.749304, -0.374594,
		-0.756880, 0.632970, -0.162727,
		38.492283, 42.779644, 17.422003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780922, 41.997581, 17.542320>,  <39.022102, 42.336563, 17.535912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780922, 41.997581, 17.542320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165951, 41.952927, 17.641106>,  <40.396969, 41.926132, 17.700377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165951, 41.952927, 17.641106>,  <39.780922, 41.997581, 17.542320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165951, 41.952927, 17.641106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254863, -0.682822, 0.684689,
		0.092192, -0.722005, -0.685719,
		0.962573, -0.111641, 0.246963,
		40.454723, 41.919434, 17.715195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898735, 41.345387, 17.566738>,  <39.780922, 41.997581, 17.542320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898735, 41.345387, 17.566738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207230, 41.485779, 17.779158>,  <40.392326, 41.570015, 17.906609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207230, 41.485779, 17.779158>,  <39.898735, 41.345387, 17.566738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207230, 41.485779, 17.779158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326872, -0.497501, 0.803522,
		0.546216, -0.793288, -0.268965,
		0.771235, 0.350979, 0.531047,
		40.438599, 41.591072, 17.938473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190853, 40.715706, 17.923037>,  <39.898735, 41.345387, 17.566738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190853, 40.715706, 17.923037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278900, 41.046528, 18.129930>,  <40.331730, 41.245022, 18.254066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278900, 41.046528, 18.129930>,  <40.190853, 40.715706, 17.923037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278900, 41.046528, 18.129930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397369, -0.408225, 0.821858,
		0.890868, -0.386437, 0.238789,
		0.220116, 0.827054, 0.517233,
		40.344936, 41.294643, 18.285101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299702, 40.415607, 18.628407>,  <40.190853, 40.715706, 17.923037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299702, 40.415607, 18.628407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289024, 40.809437, 18.697573>,  <40.282619, 41.045734, 18.739073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289024, 40.809437, 18.697573>,  <40.299702, 40.415607, 18.628407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289024, 40.809437, 18.697573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413983, -0.168333, 0.894585,
		0.909893, -0.047707, 0.412091,
		-0.026690, 0.984575, 0.172915,
		40.281017, 41.104809, 18.749447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482719, 40.559658, 19.347078>,  <40.299702, 40.415607, 18.628407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482719, 40.559658, 19.347078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264652, 40.879520, 19.246405>,  <40.133812, 41.071438, 19.186001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264652, 40.879520, 19.246405>,  <40.482719, 40.559658, 19.347078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264652, 40.879520, 19.246405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567688, -0.131222, 0.812718,
		0.616869, 0.585943, 0.525493,
		-0.545163, 0.799657, -0.251686,
		40.101105, 41.119419, 19.170898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476578, 40.765911, 19.940044>,  <40.482719, 40.559658, 19.347078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476578, 40.765911, 19.940044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186146, 40.976284, 19.762861>,  <40.011887, 41.102509, 19.656551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186146, 40.976284, 19.762861>,  <40.476578, 40.765911, 19.940044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186146, 40.976284, 19.762861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596224, -0.160625, 0.786586,
		0.342537, 0.835224, 0.430197,
		-0.726075, 0.525929, -0.442960,
		39.968323, 41.134064, 19.629972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184166, 41.289108, 20.474230>,  <40.476578, 40.765911, 19.940044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184166, 41.289108, 20.474230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883598, 41.279823, 20.210463>,  <39.703259, 41.274254, 20.052202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883598, 41.279823, 20.210463>,  <40.184166, 41.289108, 20.474230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883598, 41.279823, 20.210463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639292, -0.221777, 0.736289,
		-0.163332, 0.974821, 0.151810,
		-0.751418, -0.023209, -0.659419,
		39.658173, 41.272861, 20.012636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711861, 41.824032, 20.608343>,  <40.184166, 41.289108, 20.474230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711861, 41.824032, 20.608343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514084, 41.531384, 20.420618>,  <39.395416, 41.355793, 20.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514084, 41.531384, 20.420618>,  <39.711861, 41.824032, 20.608343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514084, 41.531384, 20.420618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623408, -0.077762, 0.778020,
		-0.605712, 0.677260, -0.417650,
		-0.494445, -0.731623, -0.469311,
		39.365749, 41.311897, 20.279825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038551, 41.892155, 20.638348>,  <39.711861, 41.824032, 20.608343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038551, 41.892155, 20.638348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040398, 41.502705, 20.547098>,  <39.041504, 41.269035, 20.492348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040398, 41.502705, 20.547098>,  <39.038551, 41.892155, 20.638348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040398, 41.502705, 20.547098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737649, -0.157340, 0.656596,
		-0.675169, 0.165246, -0.718916,
		0.004614, -0.973621, -0.228125,
		39.041782, 41.210617, 20.478661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332653, 41.577007, 20.701088>,  <39.038551, 41.892155, 20.638348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332653, 41.577007, 20.701088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525681, 41.227623, 20.675190>,  <38.641499, 41.017994, 20.659651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525681, 41.227623, 20.675190>,  <38.332653, 41.577007, 20.701088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525681, 41.227623, 20.675190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545994, -0.357807, 0.757539,
		-0.684847, -0.330215, -0.649572,
		0.482571, -0.873460, -0.064747,
		38.670452, 40.965584, 20.655766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803745, 41.037270, 20.861288>,  <38.332653, 41.577007, 20.701088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803745, 41.037270, 20.861288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141212, 40.824635, 20.891310>,  <38.343693, 40.697052, 20.909323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141212, 40.824635, 20.891310>,  <37.803745, 41.037270, 20.861288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141212, 40.824635, 20.891310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357957, -0.452810, 0.816597,
		-0.400108, -0.715805, -0.572309,
		0.843671, -0.531589, 0.075055,
		38.394314, 40.665157, 20.913826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549709, 40.304165, 20.952694>,  <37.803745, 41.037270, 20.861288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549709, 40.304165, 20.952694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920300, 40.354099, 21.094713>,  <38.142654, 40.384060, 21.179926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920300, 40.354099, 21.094713>,  <37.549709, 40.304165, 20.952694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920300, 40.354099, 21.094713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296708, -0.338098, 0.893115,
		0.231538, -0.932794, -0.276198,
		0.926474, 0.124840, 0.355050,
		38.198242, 40.391552, 21.201229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725540, 39.738407, 21.165880>,  <37.549709, 40.304165, 20.952694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725540, 39.738407, 21.165880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970127, 39.976917, 21.373943>,  <38.116879, 40.120022, 21.498781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970127, 39.976917, 21.373943>,  <37.725540, 39.738407, 21.165880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970127, 39.976917, 21.373943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313174, -0.421322, 0.851123,
		0.726656, -0.683335, -0.070888,
		0.611468, 0.596273, 0.520159,
		38.153568, 40.155800, 21.529991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888489, 39.375046, 21.754816>,  <37.725540, 39.738407, 21.165880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888489, 39.375046, 21.754816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001152, 39.738132, 21.879210>,  <38.068752, 39.955986, 21.953846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001152, 39.738132, 21.879210>,  <37.888489, 39.375046, 21.754816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001152, 39.738132, 21.879210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258149, -0.240466, 0.935700,
		0.924135, -0.343832, 0.166597,
		0.281663, 0.907720, 0.310983,
		38.085651, 40.010448, 21.972504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326260, 39.231319, 22.291553>,  <37.888489, 39.375046, 21.754816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326260, 39.231319, 22.291553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208820, 39.610756, 22.338842>,  <38.138355, 39.838417, 22.367216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208820, 39.610756, 22.338842>,  <38.326260, 39.231319, 22.291553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208820, 39.610756, 22.338842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104268, -0.154711, 0.982442,
		0.950225, 0.276118, 0.144331,
		-0.293600, 0.948590, 0.118220,
		38.120739, 39.895332, 22.374308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690849, 39.498383, 22.888643>,  <38.326260, 39.231319, 22.291553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690849, 39.498383, 22.888643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350750, 39.701145, 22.831896>,  <38.146690, 39.822803, 22.797848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350750, 39.701145, 22.831896>,  <38.690849, 39.498383, 22.888643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350750, 39.701145, 22.831896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228287, -0.112254, 0.967101,
		0.474300, 0.854663, 0.211163,
		-0.850250, 0.506902, -0.141867,
		38.095676, 39.853214, 22.789335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676662, 39.936363, 23.441086>,  <38.690849, 39.498383, 22.888643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676662, 39.936363, 23.441086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302116, 39.957520, 23.302275>,  <38.077389, 39.970211, 23.218988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302116, 39.957520, 23.302275>,  <38.676662, 39.936363, 23.441086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302116, 39.957520, 23.302275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350800, -0.177056, 0.919560,
		-0.012811, 0.982779, 0.184341,
		-0.936363, 0.052886, -0.347027,
		38.021206, 39.973385, 23.198166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374054, 40.415970, 23.910103>,  <38.676662, 39.936363, 23.441086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374054, 40.415970, 23.910103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112038, 40.178623, 23.722979>,  <37.954830, 40.036217, 23.610704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112038, 40.178623, 23.722979>,  <38.374054, 40.415970, 23.910103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112038, 40.178623, 23.722979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550379, -0.049505, 0.833446,
		-0.517695, 0.803411, -0.294147,
		-0.655038, -0.593363, -0.467809,
		37.915527, 40.000614, 23.582636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686691, 40.720772, 23.951202>,  <38.374054, 40.415970, 23.910103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686691, 40.720772, 23.951202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615559, 40.334126, 23.877409>,  <37.572880, 40.102139, 23.833134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615559, 40.334126, 23.877409>,  <37.686691, 40.720772, 23.951202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615559, 40.334126, 23.877409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677887, -0.015564, 0.735002,
		-0.713334, 0.255765, -0.652487,
		-0.177832, -0.966614, -0.184482,
		37.562210, 40.044140, 23.822065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032017, 40.652687, 24.148691>,  <37.686691, 40.720772, 23.951202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032017, 40.652687, 24.148691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120716, 40.264393, 24.111828>,  <37.173935, 40.031414, 24.089710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120716, 40.264393, 24.111828>,  <37.032017, 40.652687, 24.148691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120716, 40.264393, 24.111828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589144, -0.208687, 0.780615,
		-0.777005, -0.118808, -0.618181,
		0.221749, -0.970739, -0.092156,
		37.187241, 39.973171, 24.084181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377621, 40.338448, 24.142569>,  <37.032017, 40.652687, 24.148691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377621, 40.338448, 24.142569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648651, 40.059868, 24.237097>,  <36.811272, 39.892719, 24.293814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648651, 40.059868, 24.237097>,  <36.377621, 40.338448, 24.142569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648651, 40.059868, 24.237097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579454, -0.307670, 0.754700,
		-0.452903, -0.648303, -0.612031,
		0.677578, -0.696450, 0.236318,
		36.851925, 39.850933, 24.307993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037533, 39.575825, 24.127903>,  <36.377621, 40.338448, 24.142569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037533, 39.575825, 24.127903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354362, 39.576145, 24.372074>,  <36.544460, 39.576336, 24.518576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354362, 39.576145, 24.372074>,  <36.037533, 39.575825, 24.127903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354362, 39.576145, 24.372074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567071, -0.369182, 0.736298,
		0.225946, -0.929357, -0.291967,
		0.792072, 0.000797, 0.610426,
		36.591984, 39.576385, 24.555202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867744, 38.989670, 24.588709>,  <36.037533, 39.575825, 24.127903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867744, 38.989670, 24.588709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155056, 39.199623, 24.771387>,  <36.327442, 39.325596, 24.880993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155056, 39.199623, 24.771387>,  <35.867744, 38.989670, 24.588709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155056, 39.199623, 24.771387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388815, -0.241514, 0.889097,
		0.576973, -0.816189, 0.030610,
		0.718279, 0.524887, 0.456694,
		36.370541, 39.357090, 24.908396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228378, 38.529266, 24.973652>,  <35.867744, 38.989670, 24.588709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228378, 38.529266, 24.973652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265675, 38.890987, 25.140284>,  <36.288052, 39.108021, 25.240263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265675, 38.890987, 25.140284>,  <36.228378, 38.529266, 24.973652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265675, 38.890987, 25.140284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314955, -0.370126, 0.873962,
		0.944515, -0.212693, 0.250305,
		0.093241, 0.904306, 0.416578,
		36.293648, 39.162277, 25.265257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574829, 38.356094, 25.488558>,  <36.228378, 38.529266, 24.973652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574829, 38.356094, 25.488558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436733, 38.721199, 25.575895>,  <36.353878, 38.940262, 25.628298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436733, 38.721199, 25.575895>,  <36.574829, 38.356094, 25.488558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436733, 38.721199, 25.575895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031365, -0.243737, 0.969334,
		0.937991, 0.327802, 0.112776,
		-0.345237, 0.912764, 0.218342,
		36.333160, 38.995029, 25.641397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972805, 38.591999, 26.103540>,  <36.574829, 38.356094, 25.488558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972805, 38.591999, 26.103540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664375, 38.845768, 26.081814>,  <36.479317, 38.998028, 26.068779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664375, 38.845768, 26.081814>,  <36.972805, 38.591999, 26.103540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664375, 38.845768, 26.081814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132354, -0.076255, 0.988265,
		0.622833, 0.769219, 0.142766,
		-0.771078, 0.634419, -0.054315,
		36.433052, 39.036095, 26.065519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083733, 39.116550, 26.630369>,  <36.972805, 38.591999, 26.103540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083733, 39.116550, 26.630369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691185, 39.102100, 26.554892>,  <36.455654, 39.093430, 26.509605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691185, 39.102100, 26.554892>,  <37.083733, 39.116550, 26.630369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691185, 39.102100, 26.554892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191457, 0.102224, 0.976163,
		-0.015976, 0.994105, -0.107236,
		-0.981371, -0.036126, -0.188695,
		36.396774, 39.091263, 26.498283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908607, 39.624664, 27.019791>,  <37.083733, 39.116550, 26.630369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908607, 39.624664, 27.019791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603165, 39.375111, 26.953253>,  <36.419899, 39.225376, 26.913330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603165, 39.375111, 26.953253>,  <36.908607, 39.624664, 27.019791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603165, 39.375111, 26.953253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215044, 0.002819, 0.976600,
		-0.608819, 0.781509, -0.136315,
		-0.763606, -0.623887, -0.166343,
		36.374084, 39.187946, 26.903351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484329, 39.768929, 27.584242>,  <36.908607, 39.624664, 27.019791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484329, 39.768929, 27.584242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338760, 39.416599, 27.463106>,  <36.251419, 39.205200, 27.390425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338760, 39.416599, 27.463106>,  <36.484329, 39.768929, 27.584242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338760, 39.416599, 27.463106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265177, -0.213697, 0.940221,
		-0.892882, 0.422476, -0.155803,
		-0.363926, -0.880822, -0.302837,
		36.229584, 39.152351, 27.372255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847065, 39.685925, 27.999958>,  <36.484329, 39.768929, 27.584242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847065, 39.685925, 27.999958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933651, 39.319489, 27.864946>,  <35.985603, 39.099628, 27.783939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933651, 39.319489, 27.864946>,  <35.847065, 39.685925, 27.999958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933651, 39.319489, 27.864946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406461, -0.398899, 0.821991,
		-0.887657, -0.040737, -0.458701,
		0.216461, -0.916089, -0.337528,
		35.998589, 39.044662, 27.763687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250347, 39.203793, 28.212704>,  <35.847065, 39.685925, 27.999958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250347, 39.203793, 28.212704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560684, 38.968349, 28.121832>,  <35.746887, 38.827084, 28.067308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560684, 38.968349, 28.121832>,  <35.250347, 39.203793, 28.212704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560684, 38.968349, 28.121832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253020, -0.620114, 0.742590,
		-0.577971, -0.518651, -0.630040,
		0.775842, -0.588608, -0.227179,
		35.793438, 38.791767, 28.053677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983494, 38.559006, 28.012115>,  <35.250347, 39.203793, 28.212704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983494, 38.559006, 28.012115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356052, 38.513824, 28.150528>,  <35.579590, 38.486717, 28.233576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356052, 38.513824, 28.150528>,  <34.983494, 38.559006, 28.012115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356052, 38.513824, 28.150528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331391, -0.656396, 0.677735,
		0.150581, -0.745913, -0.648798,
		0.931400, -0.112951, 0.346029,
		35.635471, 38.479939, 28.254337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053993, 37.854519, 28.212704>,  <34.983494, 38.559006, 28.012115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053993, 37.854519, 28.212704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367390, 38.029381, 28.389357>,  <35.555428, 38.134296, 28.495348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367390, 38.029381, 28.389357>,  <35.053993, 37.854519, 28.212704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367390, 38.029381, 28.389357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072416, -0.641626, 0.763592,
		0.617168, -0.630249, -0.471052,
		0.783492, 0.437153, 0.441631,
		35.602436, 38.160526, 28.521847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421188, 37.341759, 28.404715>,  <35.053993, 37.854519, 28.212704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421188, 37.341759, 28.404715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540733, 37.656681, 28.620428>,  <35.612461, 37.845634, 28.749857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540733, 37.656681, 28.620428>,  <35.421188, 37.341759, 28.404715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540733, 37.656681, 28.620428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057829, -0.549134, 0.833731,
		0.952541, -0.280360, -0.118588,
		0.298866, 0.787306, 0.539286,
		35.630394, 37.892872, 28.782213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897938, 37.122475, 28.813826>,  <35.421188, 37.341759, 28.404715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897938, 37.122475, 28.813826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813995, 37.457039, 29.016359>,  <35.763630, 37.657780, 29.137880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813995, 37.457039, 29.016359>,  <35.897938, 37.122475, 28.813826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813995, 37.457039, 29.016359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022294, -0.513637, 0.857718,
		0.977479, 0.191282, 0.089141,
		-0.209852, 0.836414, 0.506334,
		35.751041, 37.707962, 29.168259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357586, 37.150024, 29.469557>,  <35.897938, 37.122475, 28.813826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357586, 37.150024, 29.469557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052929, 37.402130, 29.529778>,  <35.870136, 37.553394, 29.565910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052929, 37.402130, 29.529778>,  <36.357586, 37.150024, 29.469557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052929, 37.402130, 29.529778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041341, -0.279120, 0.959366,
		0.646680, 0.724467, 0.238645,
		-0.761640, 0.630269, 0.150551,
		35.824436, 37.591209, 29.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421947, 37.586308, 30.183559>,  <36.357586, 37.150024, 29.469557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421947, 37.586308, 30.183559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033554, 37.572559, 30.088900>,  <35.800518, 37.564312, 30.032103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033554, 37.572559, 30.088900>,  <36.421947, 37.586308, 30.183559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033554, 37.572559, 30.088900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217262, -0.286683, 0.933065,
		-0.099910, 0.957409, 0.270899,
		-0.970987, -0.034367, -0.236651,
		35.742256, 37.562248, 30.017904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091980, 37.774857, 30.773825>,  <36.421947, 37.586308, 30.183559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091980, 37.774857, 30.773825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780903, 37.632072, 30.566839>,  <35.594257, 37.546402, 30.442648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780903, 37.632072, 30.566839>,  <36.091980, 37.774857, 30.773825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780903, 37.632072, 30.566839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360561, -0.421013, 0.832312,
		-0.514962, 0.833863, 0.198714,
		-0.777695, -0.356960, -0.517465,
		35.547596, 37.524982, 30.411600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442448, 37.997040, 31.101723>,  <36.091980, 37.774857, 30.773825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442448, 37.997040, 31.101723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341625, 37.656780, 30.917173>,  <35.281132, 37.452625, 30.806444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341625, 37.656780, 30.917173>,  <35.442448, 37.997040, 31.101723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341625, 37.656780, 30.917173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077649, -0.457450, 0.885839,
		-0.964592, 0.259106, 0.049251,
		-0.252056, -0.850649, -0.461372,
		35.266006, 37.401585, 30.778763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071194, 37.731598, 31.550505>,  <35.442448, 37.997040, 31.101723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071194, 37.731598, 31.550505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184082, 37.419418, 31.327345>,  <35.251816, 37.232109, 31.193449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184082, 37.419418, 31.327345>,  <35.071194, 37.731598, 31.550505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184082, 37.419418, 31.327345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132818, -0.607724, 0.782963,
		-0.950110, -0.146872, -0.275171,
		0.282223, -0.780449, -0.557898,
		35.268749, 37.185284, 31.159975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545837, 37.129597, 31.540335>,  <35.071194, 37.731598, 31.550505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545837, 37.129597, 31.540335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925468, 37.006897, 31.511604>,  <35.153248, 36.933277, 31.494366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925468, 37.006897, 31.511604>,  <34.545837, 37.129597, 31.540335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925468, 37.006897, 31.511604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157914, -0.660465, 0.734064,
		-0.272613, -0.685340, -0.675271,
		0.949076, -0.306750, -0.071827,
		35.210190, 36.914871, 31.490057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543697, 36.438595, 31.183159>,  <34.545837, 37.129597, 31.540335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543697, 36.438595, 31.183159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846867, 36.527470, 31.428493>,  <35.028770, 36.580795, 31.575693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846867, 36.527470, 31.428493>,  <34.543697, 36.438595, 31.183159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846867, 36.527470, 31.428493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146830, -0.857976, 0.492259,
		0.635601, -0.463152, -0.617658,
		0.757926, 0.222190, 0.613335,
		35.074245, 36.594128, 31.612494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000240, 35.867168, 31.125912>,  <34.543697, 36.438595, 31.183159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000240, 35.867168, 31.125912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030941, 36.050507, 31.480095>,  <35.049362, 36.160507, 31.692604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030941, 36.050507, 31.480095>,  <35.000240, 35.867168, 31.125912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030941, 36.050507, 31.480095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001803, -0.888138, 0.459573,
		0.997049, -0.033677, -0.068994,
		0.076753, 0.458341, 0.885456,
		35.053967, 36.188007, 31.745731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493351, 35.541252, 31.515825>,  <35.000240, 35.867168, 31.125912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493351, 35.541252, 31.515825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246838, 35.708805, 31.782578>,  <35.098930, 35.809338, 31.942629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246838, 35.708805, 31.782578>,  <35.493351, 35.541252, 31.515825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246838, 35.708805, 31.782578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073237, -0.812654, 0.578126,
		0.784111, 0.405131, 0.470148,
		-0.616284, 0.418883, 0.666882,
		35.061951, 35.834469, 31.982641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697315, 34.959957, 32.057541>,  <35.493351, 35.541252, 31.515825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697315, 34.959957, 32.057541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970970, 34.724537, 32.229847>,  <36.135162, 34.583282, 32.333229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970970, 34.724537, 32.229847>,  <35.697315, 34.959957, 32.057541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970970, 34.724537, 32.229847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715450, 0.426794, -0.553153,
		0.141713, 0.686624, 0.713068,
		0.684141, -0.588553, 0.430762,
		36.176212, 34.547970, 32.359077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345951, 35.332310, 32.061565>,  <35.697315, 34.959957, 32.057541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345951, 35.332310, 32.061565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476383, 34.965691, 32.154182>,  <36.554642, 34.745720, 32.209751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476383, 34.965691, 32.154182>,  <36.345951, 35.332310, 32.061565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476383, 34.965691, 32.154182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896825, 0.222466, -0.382379,
		0.298959, 0.332339, 0.894525,
		0.326081, -0.916548, 0.231542,
		36.574207, 34.690727, 32.223644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076340, 35.402279, 31.997452>,  <36.345951, 35.332310, 32.061565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076340, 35.402279, 31.997452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995155, 35.010944, 32.013779>,  <36.946445, 34.776142, 32.023575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995155, 35.010944, 32.013779>,  <37.076340, 35.402279, 31.997452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995155, 35.010944, 32.013779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892248, -0.201956, -0.403865,
		0.403359, -0.045551, 0.913907,
		-0.202965, -0.978335, 0.040818,
		36.934265, 34.717445, 32.026024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732681, 34.991081, 31.913857>,  <37.076340, 35.402279, 31.997452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732681, 34.991081, 31.913857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859650, 34.778416, 31.599766>,  <37.935829, 34.650818, 31.411312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859650, 34.778416, 31.599766>,  <37.732681, 34.991081, 31.913857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859650, 34.778416, 31.599766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930126, 0.335829, 0.148607,
		0.184693, -0.777530, 0.601112,
		0.317417, -0.531663, -0.785226,
		37.954876, 34.618916, 31.364199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212212, 34.315727, 31.798185>,  <37.732681, 34.991081, 31.913857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212212, 34.315727, 31.798185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262375, 34.628128, 31.553463>,  <38.292473, 34.815567, 31.406630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262375, 34.628128, 31.553463>,  <38.212212, 34.315727, 31.798185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262375, 34.628128, 31.553463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781338, 0.302269, 0.546025,
		0.611377, -0.546504, -0.572320,
		0.125410, 0.781003, -0.611805,
		38.299999, 34.862431, 31.369921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260586, 33.705982, 32.195717>,  <38.212212, 34.315727, 31.798185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260586, 33.705982, 32.195717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489002, 33.397141, 32.084175>,  <38.626053, 33.211834, 32.017250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489002, 33.397141, 32.084175>,  <38.260586, 33.705982, 32.195717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489002, 33.397141, 32.084175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638447, 0.631233, -0.440376,
		0.516040, 0.073439, 0.853410,
		0.571041, -0.772109, -0.278855,
		38.660316, 33.165508, 32.000519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385544, 34.175400, 32.728092>,  <38.260586, 33.705982, 32.195717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385544, 34.175400, 32.728092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142944, 34.107006, 33.038685>,  <37.997383, 34.065971, 33.225040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142944, 34.107006, 33.038685>,  <38.385544, 34.175400, 32.728092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142944, 34.107006, 33.038685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163083, 0.929087, 0.331967,
		-0.778178, 0.327969, -0.535608,
		-0.606501, -0.170980, 0.776481,
		37.960995, 34.055714, 33.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616623, 34.516624, 32.749207>,  <38.385544, 34.175400, 32.728092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616623, 34.516624, 32.749207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835804, 34.452778, 33.077660>,  <37.967312, 34.414471, 33.274731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835804, 34.452778, 33.077660>,  <37.616623, 34.516624, 32.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835804, 34.452778, 33.077660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143587, 0.985004, 0.095658,
		-0.824092, 0.065488, 0.562658,
		0.547956, -0.159621, 0.821137,
		38.000191, 34.404892, 33.324001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138882, 34.955326, 33.036747>,  <37.616623, 34.516624, 32.749207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138882, 34.955326, 33.036747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536278, 35.000751, 33.040195>,  <38.774715, 35.028008, 33.042267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536278, 35.000751, 33.040195>,  <38.138882, 34.955326, 33.036747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536278, 35.000751, 33.040195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101015, 0.913649, -0.393753,
		-0.052596, 0.390320, 0.919176,
		0.993494, 0.113560, 0.008626,
		38.834328, 35.034821, 33.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494392, 35.582363, 33.464233>,  <38.138882, 34.955326, 33.036747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494392, 35.582363, 33.464233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735214, 35.498589, 33.156033>,  <38.879707, 35.448322, 32.971111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735214, 35.498589, 33.156033>,  <38.494392, 35.582363, 33.464233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735214, 35.498589, 33.156033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040405, 0.955758, -0.291367,
		0.797435, 0.206549, 0.566952,
		0.602050, -0.209438, -0.770500,
		38.915829, 35.435757, 32.924881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034908, 35.983257, 33.492664>,  <38.494392, 35.582363, 33.464233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034908, 35.983257, 33.492664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047005, 35.871426, 33.108807>,  <39.054264, 35.804325, 32.878490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047005, 35.871426, 33.108807>,  <39.034908, 35.983257, 33.492664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047005, 35.871426, 33.108807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186346, 0.944830, -0.269390,
		0.982018, -0.170679, 0.080676,
		0.030246, -0.279579, -0.959646,
		39.056080, 35.787552, 32.820911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508327, 36.426212, 33.128201>,  <39.034908, 35.983257, 33.492664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508327, 36.426212, 33.128201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289223, 36.310104, 32.814335>,  <39.157761, 36.240440, 32.626015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289223, 36.310104, 32.814335>,  <39.508327, 36.426212, 33.128201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289223, 36.310104, 32.814335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007956, 0.936033, -0.351821,
		0.836597, -0.198957, -0.510413,
		-0.547761, -0.290272, -0.784666,
		39.124893, 36.223022, 32.578934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684906, 36.916328, 32.644867>,  <39.508327, 36.426212, 33.128201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684906, 36.916328, 32.644867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426056, 36.740067, 32.396011>,  <39.270748, 36.634312, 32.246696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426056, 36.740067, 32.396011>,  <39.684906, 36.916328, 32.644867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426056, 36.740067, 32.396011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235873, 0.891725, -0.386252,
		0.724981, -0.103206, -0.680993,
		-0.647122, -0.440653, -0.622140,
		39.231918, 36.607872, 32.209370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832653, 37.124523, 31.859173>,  <39.684906, 36.916328, 32.644867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832653, 37.124523, 31.859173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452072, 37.046066, 31.954063>,  <39.223724, 36.998993, 32.010998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452072, 37.046066, 31.954063>,  <39.832653, 37.124523, 31.859173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452072, 37.046066, 31.954063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285971, 0.848384, -0.445494,
		-0.113877, -0.491704, -0.863284,
		-0.951448, -0.196142, 0.237224,
		39.166637, 36.987225, 32.025230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467270, 37.167152, 31.303658>,  <39.832653, 37.124523, 31.859173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467270, 37.167152, 31.303658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213161, 37.247902, 31.601833>,  <39.060696, 37.296352, 31.780739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213161, 37.247902, 31.601833>,  <39.467270, 37.167152, 31.303658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213161, 37.247902, 31.601833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311603, 0.816178, -0.486577,
		-0.706637, -0.541389, -0.455590,
		-0.635270, 0.201870, 0.745440,
		39.022579, 37.308464, 31.825466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051624, 37.412170, 30.896145>,  <39.467270, 37.167152, 31.303658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051624, 37.412170, 30.896145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942711, 37.531975, 31.261911>,  <38.877365, 37.603859, 31.481371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942711, 37.531975, 31.261911>,  <39.051624, 37.412170, 30.896145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942711, 37.531975, 31.261911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482424, 0.779757, -0.399056,
		-0.832544, -0.549791, -0.067820,
		-0.272281, 0.299514, 0.914415,
		38.861027, 37.621830, 31.536236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443085, 38.083000, 30.606895>,  <39.051624, 37.412170, 30.896145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443085, 38.083000, 30.606895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415916, 37.840069, 30.290277>,  <39.399616, 37.694309, 30.100307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415916, 37.840069, 30.290277>,  <39.443085, 38.083000, 30.606895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415916, 37.840069, 30.290277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883272, -0.332307, 0.330760,
		-0.463914, 0.721616, -0.513862,
		-0.067922, -0.607324, -0.791546,
		39.395538, 37.657871, 30.052814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617661, 37.932518, 31.259886>,  <39.443085, 38.083000, 30.606895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617661, 37.932518, 31.259886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331272, 38.209396, 31.296217>,  <39.159439, 38.375523, 31.318016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331272, 38.209396, 31.296217>,  <39.617661, 37.932518, 31.259886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331272, 38.209396, 31.296217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454701, -0.561083, 0.691688,
		0.529743, 0.453932, 0.716462,
		-0.715975, 0.692193, 0.090826,
		39.116478, 38.417053, 31.323465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585655, 38.401257, 31.882582>,  <39.617661, 37.932518, 31.259886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585655, 38.401257, 31.882582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245922, 38.279053, 31.710394>,  <39.042084, 38.205730, 31.607080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245922, 38.279053, 31.710394>,  <39.585655, 38.401257, 31.882582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245922, 38.279053, 31.710394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248173, -0.488640, 0.836446,
		-0.465887, 0.817249, 0.339197,
		-0.849329, -0.305509, -0.430469,
		38.991123, 38.187401, 31.581253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008575, 38.605865, 32.286602>,  <39.585655, 38.401257, 31.882582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008575, 38.605865, 32.286602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980385, 38.265530, 32.078331>,  <38.963470, 38.061329, 31.953369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980385, 38.265530, 32.078331>,  <39.008575, 38.605865, 32.286602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980385, 38.265530, 32.078331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105597, -0.512675, 0.852065,
		-0.991908, 0.115033, -0.053714,
		-0.070478, -0.850842, -0.520673,
		38.959240, 38.010277, 31.922129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453167, 38.275593, 32.593121>,  <39.008575, 38.605865, 32.286602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453167, 38.275593, 32.593121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669720, 37.997448, 32.404072>,  <38.799652, 37.830559, 32.290642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669720, 37.997448, 32.404072>,  <38.453167, 38.275593, 32.593121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669720, 37.997448, 32.404072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107380, -0.614705, 0.781414,
		-0.833891, -0.372294, -0.407459,
		0.541383, -0.695367, -0.472620,
		38.832134, 37.788837, 32.262287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084255, 37.942047, 33.148979>,  <38.453167, 38.275593, 32.593121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084255, 37.942047, 33.148979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902885, 38.260513, 33.309246>,  <37.794064, 38.451591, 33.405407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902885, 38.260513, 33.309246>,  <38.084255, 37.942047, 33.148979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902885, 38.260513, 33.309246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866459, 0.499121, -0.011242,
		-0.208930, 0.342061, -0.916156,
		-0.453427, 0.796161, 0.400663,
		37.766857, 38.499363, 33.429443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070843, 37.427788, 32.684883>,  <38.084255, 37.942047, 33.148979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070843, 37.427788, 32.684883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332340, 37.359367, 32.390034>,  <38.489239, 37.318314, 32.213123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332340, 37.359367, 32.390034>,  <38.070843, 37.427788, 32.684883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332340, 37.359367, 32.390034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195429, -0.902906, 0.382843,
		-0.731042, -0.394338, -0.556844,
		0.653748, -0.171051, -0.737127,
		38.528465, 37.308052, 32.168896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952957, 36.719864, 32.379780>,  <38.070843, 37.427788, 32.684883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952957, 36.719864, 32.379780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329735, 36.808903, 32.279232>,  <38.555801, 36.862328, 32.218903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329735, 36.808903, 32.279232>,  <37.952957, 36.719864, 32.379780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329735, 36.808903, 32.279232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245972, -0.967072, 0.065344,
		-0.228551, -0.123382, -0.965682,
		0.941946, 0.222596, -0.251374,
		38.612320, 36.875683, 32.203819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020817, 36.228024, 31.844275>,  <37.952957, 36.719864, 32.379780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020817, 36.228024, 31.844275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381763, 36.347450, 31.968594>,  <38.598331, 36.419106, 32.043186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381763, 36.347450, 31.968594>,  <38.020817, 36.228024, 31.844275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381763, 36.347450, 31.968594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246424, -0.949078, 0.196280,
		0.353574, -0.100528, -0.929989,
		0.902364, 0.298572, 0.310796,
		38.652473, 36.437023, 32.061832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512165, 35.794975, 31.533979>,  <38.020817, 36.228024, 31.844275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512165, 35.794975, 31.533979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694443, 35.954494, 31.852301>,  <38.803810, 36.050205, 32.043293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694443, 35.954494, 31.852301>,  <38.512165, 35.794975, 31.533979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694443, 35.954494, 31.852301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386897, -0.893895, 0.226414,
		0.801659, 0.204719, -0.561635,
		0.455691, 0.398801, 0.795803,
		38.831150, 36.074135, 32.091042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170559, 35.418644, 31.580967>,  <38.512165, 35.794975, 31.533979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170559, 35.418644, 31.580967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125557, 35.539673, 31.959553>,  <39.098557, 35.612289, 32.186703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125557, 35.539673, 31.959553>,  <39.170559, 35.418644, 31.580967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125557, 35.539673, 31.959553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203637, -0.925273, 0.320004,
		0.972561, 0.228736, 0.042482,
		-0.112504, 0.302572, 0.946463,
		39.091805, 35.630444, 32.243492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707722, 35.105942, 31.989164>,  <39.170559, 35.418644, 31.580967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707722, 35.105942, 31.989164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443356, 35.222134, 32.265949>,  <39.284737, 35.291847, 32.432022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443356, 35.222134, 32.265949>,  <39.707722, 35.105942, 31.989164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443356, 35.222134, 32.265949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036068, -0.908690, 0.415910,
		0.749593, 0.299839, 0.590090,
		-0.660915, 0.290480, 0.691963,
		39.245083, 35.309277, 32.473537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955357, 34.870422, 32.668629>,  <39.707722, 35.105942, 31.989164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955357, 34.870422, 32.668629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556637, 34.879673, 32.638023>,  <39.317406, 34.885223, 32.619659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556637, 34.879673, 32.638023>,  <39.955357, 34.870422, 32.668629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556637, 34.879673, 32.638023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049083, -0.932613, 0.357524,
		-0.063091, 0.360135, 0.930764,
		-0.996800, 0.023128, -0.076516,
		39.257595, 34.886612, 32.615070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650780, 34.874256, 33.338100>,  <39.955357, 34.870422, 32.668629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650780, 34.874256, 33.338100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461300, 34.690449, 33.037582>,  <39.347610, 34.580166, 32.857269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461300, 34.690449, 33.037582>,  <39.650780, 34.874256, 33.338100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461300, 34.690449, 33.037582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020501, -0.847099, 0.531039,
		-0.880448, 0.266955, 0.391850,
		-0.473699, -0.459519, -0.751300,
		39.319191, 34.552593, 32.812191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056610, 34.680080, 33.574718>,  <39.650780, 34.874256, 33.338100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056610, 34.680080, 33.574718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161819, 34.438099, 33.274090>,  <39.224945, 34.292912, 33.093712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161819, 34.438099, 33.274090>,  <39.056610, 34.680080, 33.574718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161819, 34.438099, 33.274090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256734, -0.794796, 0.549897,
		-0.930003, 0.048317, -0.364361,
		0.263024, -0.604950, -0.751568,
		39.240726, 34.256615, 33.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146175, 34.102741, 33.949619>,  <39.056610, 34.680080, 33.574718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146175, 34.102741, 33.949619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409412, 33.942673, 34.204735>,  <39.567356, 33.846630, 34.357803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409412, 33.942673, 34.204735>,  <39.146175, 34.102741, 33.949619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409412, 33.942673, 34.204735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742829, -0.206758, 0.636754,
		-0.122941, -0.892813, -0.433324,
		0.658096, -0.400169, 0.637789,
		39.606842, 33.822620, 34.396072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796703, 33.704765, 34.345249>,  <39.146175, 34.102741, 33.949619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796703, 33.704765, 34.345249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127972, 33.746529, 34.565514>,  <39.326733, 33.771587, 34.697674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127972, 33.746529, 34.565514>,  <38.796703, 33.704765, 34.345249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127972, 33.746529, 34.565514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557241, 0.258731, 0.789012,
		-0.060091, -0.960290, 0.272456,
		0.828173, 0.104411, 0.550661,
		39.376423, 33.777851, 34.730713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721218, 33.303814, 35.052856>,  <38.796703, 33.704765, 34.345249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721218, 33.303814, 35.052856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942028, 33.636086, 35.023899>,  <39.074516, 33.835449, 35.006523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942028, 33.636086, 35.023899>,  <38.721218, 33.303814, 35.052856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942028, 33.636086, 35.023899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515559, 0.408269, 0.753336,
		0.655335, -0.378539, 0.653639,
		0.552028, 0.830677, -0.072394,
		39.107635, 33.885288, 35.002182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168098, 33.447739, 35.706928>,  <38.721218, 33.303814, 35.052856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168098, 33.447739, 35.706928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035488, 33.762543, 35.498810>,  <38.955921, 33.951424, 35.373940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035488, 33.762543, 35.498810>,  <39.168098, 33.447739, 35.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035488, 33.762543, 35.498810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580737, 0.264396, 0.769960,
		0.743529, 0.557418, 0.369391,
		-0.331524, 0.787007, -0.520299,
		38.936031, 33.998646, 35.342720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891411, 32.718761, 35.962532>,  <39.168098, 33.447739, 35.706928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891411, 32.718761, 35.962532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686695, 32.451118, 36.178074>,  <38.563866, 32.290535, 36.307400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686695, 32.451118, 36.178074>,  <38.891411, 32.718761, 35.962532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686695, 32.451118, 36.178074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212115, -0.706225, -0.675466,
		0.832512, -0.231398, 0.503368,
		-0.511792, -0.669105, 0.538857,
		38.533157, 32.250385, 36.339729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607449, 32.818420, 36.095284>,  <38.891411, 32.718761, 35.962532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607449, 32.818420, 36.095284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607018, 32.419056, 36.117847>,  <39.606758, 32.179440, 36.131386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607018, 32.419056, 36.117847>,  <39.607449, 32.818420, 36.095284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607018, 32.419056, 36.117847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416281, -0.051740, -0.907763,
		0.909235, 0.022507, 0.415673,
		-0.001076, -0.998407, 0.056413,
		39.606693, 32.119534, 36.134769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324059, 32.504395, 36.076645>,  <39.607449, 32.818420, 36.095284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324059, 32.504395, 36.076645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039116, 32.283115, 35.903893>,  <39.868149, 32.150349, 35.800243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039116, 32.283115, 35.903893>,  <40.324059, 32.504395, 36.076645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039116, 32.283115, 35.903893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510267, 0.014244, -0.859898,
		0.481847, -0.832927, 0.272132,
		-0.712356, -0.553200, -0.431878,
		39.825409, 32.117157, 35.774330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504921, 31.866512, 35.950619>,  <40.324059, 32.504395, 36.076645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504921, 31.866512, 35.950619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248920, 31.924072, 35.648708>,  <40.095322, 31.958609, 35.467560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248920, 31.924072, 35.648708>,  <40.504921, 31.866512, 35.950619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248920, 31.924072, 35.648708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759159, -0.033262, -0.650055,
		-0.118651, -0.989033, -0.087957,
		-0.640000, 0.143903, -0.754779,
		40.056919, 31.967243, 35.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490578, 31.436834, 35.283520>,  <40.504921, 31.866512, 35.950619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490578, 31.436834, 35.283520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390129, 31.800978, 35.151955>,  <40.329861, 32.019463, 35.073017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390129, 31.800978, 35.151955>,  <40.490578, 31.436834, 35.283520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390129, 31.800978, 35.151955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783002, -0.008725, -0.621958,
		-0.569075, -0.413726, -0.710623,
		-0.251120, 0.910360, -0.328914,
		40.314793, 32.074085, 35.053280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407963, 31.530935, 34.475437>,  <40.490578, 31.436834, 35.283520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407963, 31.530935, 34.475437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543686, 31.861116, 34.655884>,  <40.625118, 32.059223, 34.764153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543686, 31.861116, 34.655884>,  <40.407963, 31.530935, 34.475437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543686, 31.861116, 34.655884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870745, -0.094164, -0.482634,
		-0.355912, 0.556565, -0.750708,
		0.339306, 0.825451, 0.451112,
		40.645477, 32.108753, 34.791218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114754, 31.502520, 34.810345>,  <40.407963, 31.530935, 34.475437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114754, 31.502520, 34.810345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183094, 31.117329, 34.893753>,  <41.224098, 30.886213, 34.943798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183094, 31.117329, 34.893753>,  <41.114754, 31.502520, 34.810345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183094, 31.117329, 34.893753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983311, 0.153213, -0.098106,
		0.062525, 0.221807, 0.973084,
		0.170849, -0.962978, 0.208526,
		41.234348, 30.828436, 34.956310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419716, 31.351177, 35.445896>,  <41.114754, 31.502520, 34.810345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419716, 31.351177, 35.445896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527287, 31.112696, 35.143314>,  <41.591827, 30.969606, 34.961765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527287, 31.112696, 35.143314>,  <41.419716, 31.351177, 35.445896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527287, 31.112696, 35.143314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928855, 0.368282, 0.039950,
		0.254770, -0.713379, 0.652827,
		0.268924, -0.596204, -0.756453,
		41.607964, 30.933834, 34.916378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896431, 30.947010, 35.701809>,  <41.419716, 31.351177, 35.445896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896431, 30.947010, 35.701809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943192, 30.985100, 35.306381>,  <41.971249, 31.007954, 35.069126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943192, 30.985100, 35.306381>,  <41.896431, 30.947010, 35.701809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943192, 30.985100, 35.306381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839774, 0.521924, 0.149583,
		0.530201, -0.847660, -0.018951,
		0.116904, 0.095223, -0.988568,
		41.978264, 31.013666, 35.009811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593719, 30.769890, 35.572136>,  <41.896431, 30.947010, 35.701809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593719, 30.769890, 35.572136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481712, 31.026691, 35.286640>,  <42.414509, 31.180773, 35.115341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481712, 31.026691, 35.286640>,  <42.593719, 30.769890, 35.572136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481712, 31.026691, 35.286640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860151, 0.497939, 0.110437,
		0.426299, -0.582999, -0.691651,
		-0.280016, 0.642004, -0.713738,
		42.397709, 31.219292, 35.072517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128738, 30.739601, 35.055416>,  <42.593719, 30.769890, 35.572136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128738, 30.739601, 35.055416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980858, 31.111168, 35.063725>,  <42.892128, 31.334108, 35.068710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980858, 31.111168, 35.063725>,  <43.128738, 30.739601, 35.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980858, 31.111168, 35.063725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873140, 0.339683, 0.349630,
		0.317722, 0.147395, -0.936657,
		-0.369700, 0.928919, 0.020772,
		42.869949, 31.389843, 35.069958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685383, 31.016350, 35.362053>,  <43.128738, 30.739601, 35.055416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685383, 31.016350, 35.362053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483337, 31.343973, 35.253235>,  <43.362110, 31.540546, 35.187946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483337, 31.343973, 35.253235>,  <43.685383, 31.016350, 35.362053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483337, 31.343973, 35.253235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762079, 0.571227, 0.304853,
		0.405090, -0.053333, -0.912720,
		-0.505111, 0.819058, -0.272043,
		43.331802, 31.589691, 35.171623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938560, 31.437658, 34.864742>,  <43.685383, 31.016350, 35.362053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938560, 31.437658, 34.864742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728065, 31.663668, 35.118931>,  <43.601768, 31.799273, 35.271442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728065, 31.663668, 35.118931>,  <43.938560, 31.437658, 34.864742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728065, 31.663668, 35.118931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823393, 0.525223, 0.214861,
		-0.212363, 0.636311, -0.741627,
		-0.526238, 0.565021, 0.635472,
		43.570194, 31.833174, 35.309574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157944, 32.138084, 34.759647>,  <43.938560, 31.437658, 34.864742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157944, 32.138084, 34.759647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015625, 32.113300, 35.132648>,  <43.930233, 32.098431, 35.356449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015625, 32.113300, 35.132648>,  <44.157944, 32.138084, 34.759647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015625, 32.113300, 35.132648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664652, 0.684677, 0.299091,
		-0.656998, 0.726208, -0.202425,
		-0.355798, -0.061960, 0.932507,
		43.908886, 32.094711, 35.412399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096317, 32.799152, 35.031643>,  <44.157944, 32.138084, 34.759647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096317, 32.799152, 35.031643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129707, 32.546059, 35.339584>,  <44.149742, 32.394203, 35.524349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129707, 32.546059, 35.339584>,  <44.096317, 32.799152, 35.031643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129707, 32.546059, 35.339584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696938, 0.589252, 0.408729,
		-0.712256, 0.502423, 0.490166,
		0.083476, -0.632735, 0.769856,
		44.154751, 32.356239, 35.570541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960358, 33.099861, 35.755768>,  <44.096317, 32.799152, 35.031643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960358, 33.099861, 35.755768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226097, 32.807224, 35.694565>,  <44.385540, 32.631641, 35.657845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226097, 32.807224, 35.694565>,  <43.960358, 33.099861, 35.755768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226097, 32.807224, 35.694565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729456, 0.590030, 0.346061,
		-0.162899, -0.341515, 0.925652,
		0.664347, -0.731595, -0.153005,
		44.425400, 32.587746, 35.648663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650448, 33.114071, 35.845470>,  <43.960358, 33.099861, 35.755768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650448, 33.114071, 35.845470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344784, 33.366383, 35.899406>,  <44.161385, 33.517769, 35.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344784, 33.366383, 35.899406>,  <44.650448, 33.114071, 35.845470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344784, 33.366383, 35.899406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211802, -0.442823, 0.871233,
		0.609265, 0.637200, 0.471987,
		-0.764157, 0.630780, 0.134837,
		44.115536, 33.555618, 35.939857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778011, 33.651012, 36.344368>,  <44.650448, 33.114071, 35.845470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778011, 33.651012, 36.344368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403893, 33.519329, 36.292454>,  <44.179420, 33.440319, 36.261307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403893, 33.519329, 36.292454>,  <44.778011, 33.651012, 36.344368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403893, 33.519329, 36.292454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032019, -0.286515, 0.957541,
		-0.352415, 0.899740, 0.257435,
		-0.935296, -0.329208, -0.129781,
		44.123302, 33.420567, 36.253521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362980, 33.240372, 36.442207>,  <44.778011, 33.651012, 36.344368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362980, 33.240372, 36.442207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440693, 33.070213, 36.795769>,  <45.487320, 32.968117, 37.007908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440693, 33.070213, 36.795769>,  <45.362980, 33.240372, 36.442207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440693, 33.070213, 36.795769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478279, 0.827795, 0.293266,
		-0.856448, 0.365778, 0.364285,
		0.194283, -0.425397, 0.883907,
		45.498978, 32.942593, 37.060940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051315, 33.346066, 36.273129>,  <45.362980, 33.240372, 36.442207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.051315, 33.346066, 36.273129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832783, 33.426636, 35.947933>,  <45.701664, 33.474979, 35.752815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832783, 33.426636, 35.947933>,  <46.051315, 33.346066, 36.273129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.832783, 33.426636, 35.947933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510736, -0.849425, 0.132766,
		-0.663827, 0.487755, 0.566946,
		-0.546336, 0.201426, -0.812985,
		45.668880, 33.487064, 35.704037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973572, 32.815720, 35.785248>,  <46.051315, 33.346066, 36.273129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973572, 32.815720, 35.785248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212078, 32.564037, 35.585823>,  <46.355183, 32.413029, 35.466167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212078, 32.564037, 35.585823>,  <45.973572, 32.815720, 35.785248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212078, 32.564037, 35.585823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296953, 0.749859, -0.591211,
		0.745843, 0.204473, 0.633963,
		0.596269, -0.629208, -0.498558,
		46.390961, 32.375275, 35.436256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700539, 32.954704, 35.864025>,  <45.973572, 32.815720, 35.785248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700539, 32.954704, 35.864025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543682, 32.810493, 35.525501>,  <46.449570, 32.723965, 35.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543682, 32.810493, 35.525501>,  <46.700539, 32.954704, 35.864025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543682, 32.810493, 35.525501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134299, 0.887704, -0.440392,
		0.910049, -0.286354, -0.299686,
		-0.392141, -0.360531, -0.846311,
		46.426041, 32.702335, 35.271606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162296, 33.019951, 35.253063>,  <46.700539, 32.954704, 35.864025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162296, 33.019951, 35.253063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772930, 33.029560, 35.161945>,  <46.539310, 33.035328, 35.107273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772930, 33.029560, 35.161945>,  <47.162296, 33.019951, 35.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772930, 33.029560, 35.161945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137354, 0.857075, -0.496545,
		0.183307, -0.514631, -0.837588,
		-0.973413, 0.024025, -0.227795,
		46.480907, 33.036766, 35.093605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012764, 33.094242, 34.540348>,  <47.162296, 33.019951, 35.253063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012764, 33.094242, 34.540348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693039, 33.250610, 34.722900>,  <46.501205, 33.344433, 34.832432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693039, 33.250610, 34.722900>,  <47.012764, 33.094242, 34.540348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693039, 33.250610, 34.722900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124789, 0.850894, -0.510301,
		-0.587820, -0.350937, -0.728910,
		-0.799309, 0.390925, 0.456380,
		46.453247, 33.367889, 34.859814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079041, 33.770348, 34.446484>,  <47.012764, 33.094242, 34.540348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079041, 33.770348, 34.446484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915478, 34.071037, 34.239521>,  <46.817341, 34.251450, 34.115345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915478, 34.071037, 34.239521>,  <47.079041, 33.770348, 34.446484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915478, 34.071037, 34.239521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669016, 0.632538, 0.390273,
		0.620656, -0.186567, -0.761564,
		-0.408906, 0.751724, -0.517404,
		46.792805, 34.296555, 34.084301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634212, 34.182278, 34.011925>,  <47.079041, 33.770348, 34.446484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634212, 34.182278, 34.011925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.329891, 34.349159, 34.210770>,  <47.147297, 34.449287, 34.330074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.329891, 34.349159, 34.210770>,  <47.634212, 34.182278, 34.011925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.329891, 34.349159, 34.210770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645823, 0.562162, 0.516611,
		-0.063924, 0.714085, -0.697135,
		-0.760806, 0.417202, 0.497108,
		47.101650, 34.474319, 34.359901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.586300, 34.932434, 34.138573>,  <47.634212, 34.182278, 34.011925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.586300, 34.932434, 34.138573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383831, 34.788780, 34.452213>,  <47.262348, 34.702587, 34.640396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383831, 34.788780, 34.452213>,  <47.586300, 34.932434, 34.138573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383831, 34.788780, 34.452213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749007, 0.267635, 0.606102,
		-0.427527, 0.894087, 0.133528,
		-0.506171, -0.359139, 0.784098,
		47.231979, 34.681038, 34.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.744198, 35.336926, 34.657780>,  <47.586300, 34.932434, 34.138573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.744198, 35.336926, 34.657780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660831, 34.997711, 34.852669>,  <47.610809, 34.794182, 34.969604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660831, 34.997711, 34.852669>,  <47.744198, 35.336926, 34.657780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660831, 34.997711, 34.852669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856173, 0.082618, 0.510041,
		-0.472789, 0.523452, 0.708850,
		-0.208418, -0.848040, 0.487227,
		47.598305, 34.743298, 34.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.488705, 35.307560, 22.086748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135212, 35.211483, 21.926090>,  <37.923115, 35.153835, 21.829695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135212, 35.211483, 21.926090>,  <38.488705, 35.307560, 22.086748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135212, 35.211483, 21.926090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343299, -0.250552, 0.905190,
		-0.318053, 0.937833, 0.138964,
		-0.883735, -0.240192, -0.401646,
		37.870090, 35.139427, 21.805595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009857, 35.687527, 22.449188>,  <38.488705, 35.307560, 22.086748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009857, 35.687527, 22.449188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792847, 35.393272, 22.286953>,  <37.662640, 35.216721, 22.189611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792847, 35.393272, 22.286953>,  <38.009857, 35.687527, 22.449188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792847, 35.393272, 22.286953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351382, -0.239821, 0.904996,
		-0.763017, 0.633502, -0.128380,
		-0.542528, -0.735637, -0.405588,
		37.630089, 35.172581, 22.165276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334988, 35.731922, 22.670828>,  <38.009857, 35.687527, 22.449188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334988, 35.731922, 22.670828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299507, 35.352291, 22.549915>,  <37.278217, 35.124512, 22.477367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299507, 35.352291, 22.549915>,  <37.334988, 35.731922, 22.670828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299507, 35.352291, 22.549915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667762, -0.168517, 0.725049,
		-0.739071, 0.266168, -0.618813,
		-0.088704, -0.949082, -0.302283,
		37.272896, 35.067566, 22.459230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612717, 35.531013, 22.599365>,  <37.334988, 35.731922, 22.670828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612717, 35.531013, 22.599365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793938, 35.176147, 22.634422>,  <36.902668, 34.963226, 22.655457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793938, 35.176147, 22.634422>,  <36.612717, 35.531013, 22.599365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793938, 35.176147, 22.634422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627820, -0.247713, 0.737889,
		-0.632921, -0.389324, -0.669207,
		0.453049, -0.887167, 0.087643,
		36.929852, 34.909996, 22.660715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080090, 35.077679, 22.693489>,  <36.612717, 35.531013, 22.599365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080090, 35.077679, 22.693489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385265, 34.859726, 22.832647>,  <36.568371, 34.728954, 22.916142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385265, 34.859726, 22.832647>,  <36.080090, 35.077679, 22.693489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385265, 34.859726, 22.832647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606703, -0.417655, 0.676370,
		-0.223241, -0.727097, -0.649225,
		0.762939, -0.544880, 0.347894,
		36.614147, 34.696262, 22.937016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832565, 34.319248, 22.792141>,  <36.080090, 35.077679, 22.693489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832565, 34.319248, 22.792141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151764, 34.381348, 23.025070>,  <36.343281, 34.418610, 23.164827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151764, 34.381348, 23.025070>,  <35.832565, 34.319248, 22.792141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151764, 34.381348, 23.025070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484620, -0.409087, 0.773170,
		0.358258, -0.899191, -0.251211,
		0.797994, 0.155252, 0.582325,
		36.391163, 34.427925, 23.199768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832527, 33.800224, 23.176815>,  <35.832565, 34.319248, 22.792141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832527, 33.800224, 23.176815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066414, 34.040947, 23.394415>,  <36.206745, 34.185383, 23.524975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066414, 34.040947, 23.394415>,  <35.832527, 33.800224, 23.176815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066414, 34.040947, 23.394415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530001, -0.224295, 0.817796,
		0.614173, -0.766497, 0.187811,
		0.584714, 0.601809, 0.544000,
		36.241829, 34.221489, 23.557615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714657, 33.453384, 23.756435>,  <35.832527, 33.800224, 23.176815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714657, 33.453384, 23.756435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908409, 33.781345, 23.878508>,  <36.024662, 33.978123, 23.951752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908409, 33.781345, 23.878508>,  <35.714657, 33.453384, 23.756435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908409, 33.781345, 23.878508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355738, -0.134108, 0.924914,
		0.799267, -0.556574, 0.226711,
		0.484379, 0.819903, 0.305182,
		36.053722, 34.027317, 23.970062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166752, 33.267242, 24.265055>,  <35.714657, 33.453384, 23.756435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166752, 33.267242, 24.265055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087437, 33.653835, 24.330278>,  <36.039848, 33.885792, 24.369413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087437, 33.653835, 24.330278>,  <36.166752, 33.267242, 24.265055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087437, 33.653835, 24.330278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305906, -0.219076, 0.926514,
		0.931185, 0.133832, 0.339093,
		-0.198284, 0.966486, 0.163060,
		36.027950, 33.943783, 24.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509762, 33.432014, 24.924269>,  <36.166752, 33.267242, 24.265055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509762, 33.432014, 24.924269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211578, 33.697361, 24.898239>,  <36.032669, 33.856567, 24.882622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211578, 33.697361, 24.898239>,  <36.509762, 33.432014, 24.924269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211578, 33.697361, 24.898239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140794, -0.061283, 0.988140,
		0.651511, 0.745781, 0.139082,
		-0.745460, 0.663366, -0.065075,
		35.987942, 33.896370, 24.878717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588760, 33.935265, 25.486357>,  <36.509762, 33.432014, 24.924269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588760, 33.935265, 25.486357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210125, 33.942005, 25.357555>,  <35.982944, 33.946049, 25.280273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210125, 33.942005, 25.357555>,  <36.588760, 33.935265, 25.486357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210125, 33.942005, 25.357555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314353, 0.174096, 0.933206,
		0.071790, 0.984584, -0.159499,
		-0.946588, 0.016856, -0.322006,
		35.926147, 33.947063, 25.260954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302525, 34.531471, 25.768003>,  <36.588760, 33.935265, 25.486357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302525, 34.531471, 25.768003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994236, 34.299397, 25.662651>,  <35.809265, 34.160152, 25.599440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994236, 34.299397, 25.662651>,  <36.302525, 34.531471, 25.768003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994236, 34.299397, 25.662651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379758, 0.086349, 0.921047,
		-0.511639, 0.809891, -0.286883,
		-0.770720, -0.580190, -0.263383,
		35.763020, 34.125340, 25.583635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787586, 34.915649, 26.080355>,  <36.302525, 34.531471, 25.768003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787586, 34.915649, 26.080355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669968, 34.541080, 26.003775>,  <35.599396, 34.316338, 25.957827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669968, 34.541080, 26.003775>,  <35.787586, 34.915649, 26.080355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669968, 34.541080, 26.003775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280102, -0.107085, 0.953979,
		-0.913828, 0.334136, -0.230806,
		-0.294043, -0.936422, -0.191450,
		35.581757, 34.260155, 25.946341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063156, 34.878761, 26.412689>,  <35.787586, 34.915649, 26.080355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063156, 34.878761, 26.412689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168156, 34.494041, 26.381611>,  <35.231155, 34.263210, 26.362963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168156, 34.494041, 26.381611>,  <35.063156, 34.878761, 26.412689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168156, 34.494041, 26.381611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129947, -0.115023, 0.984827,
		-0.956142, -0.248421, -0.155177,
		0.262500, -0.961799, -0.077697,
		35.246906, 34.205502, 26.358301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627609, 34.515549, 26.888807>,  <35.063156, 34.878761, 26.412689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627609, 34.515549, 26.888807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917137, 34.253658, 26.801714>,  <35.090855, 34.096523, 26.749458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917137, 34.253658, 26.801714>,  <34.627609, 34.515549, 26.888807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917137, 34.253658, 26.801714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111990, -0.422856, 0.899250,
		-0.680836, -0.626515, -0.379397,
		0.723824, -0.654730, -0.217732,
		35.134285, 34.057240, 26.736395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301624, 33.933636, 26.966576>,  <34.627609, 34.515549, 26.888807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301624, 33.933636, 26.966576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.696819, 33.879921, 26.997173>,  <34.933937, 33.847691, 27.015532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.696819, 33.879921, 26.997173>,  <34.301624, 33.933636, 26.966576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696819, 33.879921, 26.997173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110122, -0.264444, 0.958093,
		-0.108428, -0.955006, -0.276055,
		0.987986, -0.134284, 0.076494,
		34.993214, 33.839634, 27.020121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389072, 33.270771, 27.248495>,  <34.301624, 33.933636, 26.966576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389072, 33.270771, 27.248495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739182, 33.445992, 27.330473>,  <34.949249, 33.551125, 27.379660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739182, 33.445992, 27.330473>,  <34.389072, 33.270771, 27.248495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739182, 33.445992, 27.330473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056661, -0.327972, 0.942986,
		0.480292, -0.836987, -0.262246,
		0.875276, 0.438049, 0.204947,
		35.001766, 33.577408, 27.391956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715294, 32.780769, 27.709141>,  <34.389072, 33.270771, 27.248495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715294, 32.780769, 27.709141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897903, 33.135777, 27.734129>,  <35.007469, 33.348782, 27.749123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897903, 33.135777, 27.734129>,  <34.715294, 32.780769, 27.709141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897903, 33.135777, 27.734129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118628, -0.008869, 0.992899,
		0.881766, -0.460694, 0.101235,
		0.456525, 0.887515, 0.062471,
		35.034863, 33.402031, 27.752871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086811, 32.632256, 28.297102>,  <34.715294, 32.780769, 27.709141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086811, 32.632256, 28.297102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036205, 33.026798, 28.254951>,  <35.005840, 33.263523, 28.229662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036205, 33.026798, 28.254951>,  <35.086811, 32.632256, 28.297102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036205, 33.026798, 28.254951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123311, 0.089765, 0.988300,
		0.984271, 0.138028, 0.110272,
		-0.126515, 0.986352, -0.105374,
		34.998253, 33.322704, 28.223339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597553, 32.934483, 28.740026>,  <35.086811, 32.632256, 28.297102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597553, 32.934483, 28.740026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296257, 33.191826, 28.685297>,  <35.115479, 33.346233, 28.652460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296257, 33.191826, 28.685297>,  <35.597553, 32.934483, 28.740026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296257, 33.191826, 28.685297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088402, 0.107106, 0.990310,
		0.651781, 0.758033, -0.023802,
		-0.753237, 0.643361, -0.136822,
		35.070286, 33.384834, 28.644251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729713, 33.463531, 29.135725>,  <35.597553, 32.934483, 28.740026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729713, 33.463531, 29.135725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336956, 33.500153, 29.069393>,  <35.101299, 33.522125, 29.029594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336956, 33.500153, 29.069393>,  <35.729713, 33.463531, 29.135725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336956, 33.500153, 29.069393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156926, 0.097154, 0.982820,
		0.106091, 0.991050, -0.081028,
		-0.981896, 0.091553, -0.165828,
		35.042389, 33.527618, 29.019644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863670, 33.922455, 29.696264>,  <35.729713, 33.463531, 29.135725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863670, 33.922455, 29.696264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960129, 34.281464, 29.843939>,  <36.018005, 34.496868, 29.932545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960129, 34.281464, 29.843939>,  <35.863670, 33.922455, 29.696264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960129, 34.281464, 29.843939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295370, 0.294493, -0.908863,
		-0.924449, 0.328216, -0.194085,
		0.241147, 0.897523, 0.369188,
		36.032475, 34.550720, 29.954695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728012, 34.394447, 29.212784>,  <35.863670, 33.922455, 29.696264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728012, 34.394447, 29.212784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978134, 34.627502, 29.420446>,  <36.128208, 34.767338, 29.545044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978134, 34.627502, 29.420446>,  <35.728012, 34.394447, 29.212784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978134, 34.627502, 29.420446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397904, 0.334240, -0.854375,
		-0.671317, 0.740819, -0.022833,
		0.625305, 0.582642, 0.519156,
		36.165726, 34.802296, 29.576193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773125, 35.029839, 28.834032>,  <35.728012, 34.394447, 29.212784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773125, 35.029839, 28.834032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095161, 35.027565, 29.071281>,  <36.288383, 35.026199, 29.213631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095161, 35.027565, 29.071281>,  <35.773125, 35.029839, 28.834032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095161, 35.027565, 29.071281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565542, 0.308873, -0.764696,
		-0.178853, 0.951086, 0.251886,
		0.805093, -0.005684, 0.593122,
		36.336689, 35.025860, 29.249218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115021, 35.594730, 28.548088>,  <35.773125, 35.029839, 28.834032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115021, 35.594730, 28.548088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375282, 35.370255, 28.752722>,  <36.531437, 35.235569, 28.875502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375282, 35.370255, 28.752722>,  <36.115021, 35.594730, 28.548088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375282, 35.370255, 28.752722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650658, 0.064650, -0.756614,
		0.391532, 0.825158, 0.407208,
		0.650652, -0.561191, 0.511583,
		36.570477, 35.201897, 28.906197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697506, 35.969795, 28.501966>,  <36.115021, 35.594730, 28.548088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697506, 35.969795, 28.501966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836094, 35.604488, 28.587669>,  <36.919247, 35.385303, 28.639091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836094, 35.604488, 28.587669>,  <36.697506, 35.969795, 28.501966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836094, 35.604488, 28.587669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731308, 0.119918, -0.671423,
		0.587494, 0.389314, 0.709426,
		0.346467, -0.913266, 0.214257,
		36.940033, 35.330509, 28.651947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438152, 36.030258, 28.479872>,  <36.697506, 35.969795, 28.501966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438152, 36.030258, 28.479872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373615, 35.636848, 28.447275>,  <37.334892, 35.400803, 28.427717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373615, 35.636848, 28.447275>,  <37.438152, 36.030258, 28.479872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373615, 35.636848, 28.447275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726976, -0.062601, -0.683804,
		0.667439, -0.169570, 0.725101,
		-0.161345, -0.983528, -0.081491,
		37.325211, 35.341789, 28.422829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084957, 35.749416, 28.617958>,  <37.438152, 36.030258, 28.479872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084957, 35.749416, 28.617958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858517, 35.496414, 28.406500>,  <37.722652, 35.344612, 28.279625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858517, 35.496414, 28.406500>,  <38.084957, 35.749416, 28.617958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858517, 35.496414, 28.406500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585048, 0.143505, -0.798201,
		0.580732, -0.761143, 0.288811,
		-0.566099, -0.632509, -0.528643,
		37.688686, 35.306660, 28.247908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548855, 35.311562, 28.479349>,  <38.084957, 35.749416, 28.617958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548855, 35.311562, 28.479349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253296, 35.279816, 28.211700>,  <38.075958, 35.260769, 28.051111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253296, 35.279816, 28.211700>,  <38.548855, 35.311562, 28.479349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253296, 35.279816, 28.211700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661441, 0.103992, -0.742752,
		0.128532, -0.991406, -0.024344,
		-0.738901, -0.079366, -0.669124,
		38.031624, 35.256008, 28.010963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864513, 34.916016, 27.966768>,  <38.548855, 35.311562, 28.479349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864513, 34.916016, 27.966768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539310, 35.088318, 27.810064>,  <38.344189, 35.191700, 27.716042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539310, 35.088318, 27.810064>,  <38.864513, 34.916016, 27.966768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539310, 35.088318, 27.810064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540295, 0.307311, -0.783352,
		-0.217037, -0.848536, -0.482579,
		-0.813004, 0.430752, -0.391762,
		38.295410, 35.217545, 27.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872055, 34.603336, 27.216866>,  <38.864513, 34.916016, 27.966768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872055, 34.603336, 27.216866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626888, 34.918854, 27.198383>,  <38.479790, 35.108166, 27.187294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626888, 34.918854, 27.198383>,  <38.872055, 34.603336, 27.216866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626888, 34.918854, 27.198383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349510, 0.218205, -0.911169,
		-0.708643, -0.574621, -0.409434,
		-0.612917, 0.788795, -0.046206,
		38.443012, 35.155491, 27.184521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587818, 34.590084, 26.520388>,  <38.872055, 34.603336, 27.216866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587818, 34.590084, 26.520388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509327, 34.966480, 26.630678>,  <38.462231, 35.192318, 26.696854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509327, 34.966480, 26.630678>,  <38.587818, 34.590084, 26.520388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509327, 34.966480, 26.630678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432617, 0.335429, -0.836857,
		-0.879965, -0.044929, -0.472910,
		-0.196227, 0.940994, 0.275728,
		38.450459, 35.248779, 26.713396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142876, 34.952621, 26.048820>,  <38.587818, 34.590084, 26.520388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142876, 34.952621, 26.048820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368565, 35.210548, 26.255070>,  <38.503979, 35.365303, 26.378819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368565, 35.210548, 26.255070>,  <38.142876, 34.952621, 26.048820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368565, 35.210548, 26.255070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346021, 0.382350, -0.856784,
		-0.749614, 0.661835, -0.007388,
		0.564224, 0.644813, 0.515623,
		38.537830, 35.403992, 26.409758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131504, 35.424202, 25.588699>,  <38.142876, 34.952621, 26.048820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131504, 35.424202, 25.588699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416626, 35.539341, 25.844528>,  <38.587700, 35.608425, 25.998026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.416626, 35.539341, 25.844528>,  <38.131504, 35.424202, 25.588699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416626, 35.539341, 25.844528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521694, 0.391886, -0.757800,
		-0.468770, 0.873825, 0.129169,
		0.712804, 0.287847, 0.639574,
		38.630466, 35.625694, 26.036400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267715, 36.201344, 25.509180>,  <38.131504, 35.424202, 25.588699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267715, 36.201344, 25.509180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606701, 36.036842, 25.643454>,  <38.810093, 35.938141, 25.724018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606701, 36.036842, 25.643454>,  <38.267715, 36.201344, 25.509180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606701, 36.036842, 25.643454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497159, 0.393139, -0.773482,
		0.186126, 0.822383, 0.537628,
		0.847461, -0.411252, 0.335682,
		38.860939, 35.913467, 25.744158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808025, 36.702007, 25.324736>,  <38.267715, 36.201344, 25.509180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808025, 36.702007, 25.324736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.976269, 36.348694, 25.407587>,  <39.077217, 36.136707, 25.457298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.976269, 36.348694, 25.407587>,  <38.808025, 36.702007, 25.324736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976269, 36.348694, 25.407587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540617, 0.060676, -0.839078,
		0.728574, 0.464902, 0.503037,
		0.420612, -0.883280, 0.207127,
		39.102451, 36.083710, 25.469725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429363, 36.815212, 25.157539>,  <38.808025, 36.702007, 25.324736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429363, 36.815212, 25.157539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.415451, 36.415470, 25.161173>,  <39.407104, 36.175625, 25.163353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.415451, 36.415470, 25.161173>,  <39.429363, 36.815212, 25.157539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415451, 36.415470, 25.161173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353991, -0.020817, -0.935017,
		0.934602, -0.029304, 0.354487,
		-0.034779, -0.999354, 0.009083,
		39.405018, 36.115665, 25.163898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082478, 36.620720, 24.922323>,  <39.429363, 36.815212, 25.157539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082478, 36.620720, 24.922323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879303, 36.277252, 24.894922>,  <39.757397, 36.071171, 24.878481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.879303, 36.277252, 24.894922>,  <40.082478, 36.620720, 24.922323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879303, 36.277252, 24.894922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481529, -0.217106, -0.849114,
		0.714232, -0.464284, 0.523749,
		-0.507939, -0.858665, -0.068503,
		39.726921, 36.019653, 24.874371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590130, 36.172108, 24.724842>,  <40.082478, 36.620720, 24.922323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590130, 36.172108, 24.724842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231396, 36.030502, 24.618736>,  <40.016155, 35.945538, 24.555073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231396, 36.030502, 24.618736>,  <40.590130, 36.172108, 24.724842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231396, 36.030502, 24.618736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373601, -0.285031, -0.882712,
		0.236885, -0.890747, 0.387885,
		-0.896832, -0.354016, -0.265264,
		39.962345, 35.924297, 24.539158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720028, 35.433823, 24.469454>,  <40.590130, 36.172108, 24.724842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720028, 35.433823, 24.469454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390934, 35.591198, 24.305349>,  <40.193478, 35.685623, 24.206886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390934, 35.591198, 24.305349>,  <40.720028, 35.433823, 24.469454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390934, 35.591198, 24.305349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358367, -0.201217, -0.911638,
		-0.441221, -0.897063, 0.024554,
		-0.822738, 0.393434, -0.410259,
		40.144112, 35.709229, 24.182272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.113529, 34.905380, 23.133343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975864, 35.245934, 23.291689>,  <39.893265, 35.450264, 23.386696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975864, 35.245934, 23.291689>,  <40.113529, 34.905380, 23.133343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975864, 35.245934, 23.291689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127291, 0.375420, -0.918072,
		-0.930243, -0.366352, -0.020831,
		-0.344158, 0.851379, 0.395865,
		39.872616, 35.501347, 23.410448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547386, 35.085224, 22.639250>,  <40.113529, 34.905380, 23.133343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547386, 35.085224, 22.639250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669300, 35.404964, 22.846380>,  <39.742447, 35.596809, 22.970659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669300, 35.404964, 22.846380>,  <39.547386, 35.085224, 22.639250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669300, 35.404964, 22.846380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028377, 0.535831, -0.843848,
		-0.951998, 0.271888, 0.140631,
		0.304786, 0.799351, 0.517825,
		39.760735, 35.644772, 23.001728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092224, 35.761120, 22.405010>,  <39.547386, 35.085224, 22.639250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092224, 35.761120, 22.405010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.426708, 35.904541, 22.570993>,  <39.627399, 35.990593, 22.670584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.426708, 35.904541, 22.570993>,  <39.092224, 35.761120, 22.405010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426708, 35.904541, 22.570993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140373, 0.591514, -0.793982,
		-0.530137, 0.722186, 0.444300,
		0.836212, 0.358551, 0.414958,
		39.677570, 36.012108, 22.695480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971062, 36.483093, 22.353449>,  <39.092224, 35.761120, 22.405010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971062, 36.483093, 22.353449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361927, 36.403172, 22.382351>,  <39.596447, 36.355217, 22.399693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.361927, 36.403172, 22.382351>,  <38.971062, 36.483093, 22.353449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361927, 36.403172, 22.382351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169219, 0.526215, -0.833344,
		0.128486, 0.826544, 0.548011,
		0.977167, -0.199807, 0.072256,
		39.655079, 36.343231, 22.404028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261635, 37.077831, 22.083105>,  <38.971062, 36.483093, 22.353449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261635, 37.077831, 22.083105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.584209, 36.841717, 22.097118>,  <39.777752, 36.700047, 22.105526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.584209, 36.841717, 22.097118>,  <39.261635, 37.077831, 22.083105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584209, 36.841717, 22.097118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383092, 0.476398, -0.791382,
		0.450453, 0.651618, 0.610317,
		0.806432, -0.590287, 0.035035,
		39.826138, 36.664631, 22.107628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804420, 37.517250, 22.072582>,  <39.261635, 37.077831, 22.083105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804420, 37.517250, 22.072582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.925282, 37.162514, 21.932749>,  <39.997799, 36.949673, 21.848848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.925282, 37.162514, 21.932749>,  <39.804420, 37.517250, 22.072582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925282, 37.162514, 21.932749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203495, 0.418280, -0.885230,
		0.931285, 0.196338, 0.306854,
		0.302155, -0.886845, -0.349584,
		40.015926, 36.896461, 21.827873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472469, 37.646084, 21.635447>,  <39.804420, 37.517250, 22.072582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472469, 37.646084, 21.635447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337261, 37.293308, 21.504036>,  <40.256138, 37.081642, 21.425190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337261, 37.293308, 21.504036>,  <40.472469, 37.646084, 21.635447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337261, 37.293308, 21.504036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368907, 0.196979, -0.908354,
		0.865825, -0.428236, 0.258770,
		-0.338018, -0.881937, -0.328528,
		40.235855, 37.028728, 21.405478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001148, 37.396755, 21.285366>,  <40.472469, 37.646084, 21.635447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001148, 37.396755, 21.285366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687599, 37.188957, 21.149324>,  <40.499470, 37.064278, 21.067699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687599, 37.188957, 21.149324>,  <41.001148, 37.396755, 21.285366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687599, 37.188957, 21.149324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285347, 0.185085, -0.940383,
		0.551475, -0.834186, 0.003154,
		-0.783871, -0.519498, -0.340102,
		40.452438, 37.033108, 21.047295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313751, 36.986877, 20.819258>,  <41.001148, 37.396755, 21.285366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313751, 36.986877, 20.819258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.919460, 36.987041, 20.751915>,  <40.682884, 36.987141, 20.711510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.919460, 36.987041, 20.751915>,  <41.313751, 36.986877, 20.819258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919460, 36.987041, 20.751915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165010, 0.200780, -0.965639,
		0.033408, -0.979636, -0.197981,
		-0.985726, 0.000409, -0.168357,
		40.623741, 36.987164, 20.701408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194695, 36.650764, 20.162516>,  <41.313751, 36.986877, 20.819258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194695, 36.650764, 20.162516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856327, 36.856735, 20.218042>,  <40.653305, 36.980320, 20.251358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.856327, 36.856735, 20.218042>,  <41.194695, 36.650764, 20.162516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856327, 36.856735, 20.218042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132334, 0.454817, -0.880698,
		-0.516635, -0.726627, -0.452881,
		-0.845917, 0.514931, 0.138818,
		40.602551, 37.011215, 20.259687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850971, 36.478035, 19.549370>,  <41.194695, 36.650764, 20.162516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850971, 36.478035, 19.549370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.715919, 36.821682, 19.703215>,  <40.634888, 37.027870, 19.795521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.715919, 36.821682, 19.703215>,  <40.850971, 36.478035, 19.549370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715919, 36.821682, 19.703215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250065, 0.475790, -0.843262,
		-0.907454, -0.188533, -0.375476,
		-0.337630, 0.859115, 0.384612,
		40.614632, 37.079418, 19.818598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603737, 36.892376, 18.956690>,  <40.850971, 36.478035, 19.549370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603737, 36.892376, 18.956690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630707, 37.180027, 19.233328>,  <40.646889, 37.352619, 19.399311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630707, 37.180027, 19.233328>,  <40.603737, 36.892376, 18.956690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630707, 37.180027, 19.233328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214169, 0.666585, -0.714000,
		-0.974467, 0.196259, -0.109072,
		0.067423, 0.719130, 0.691597,
		40.650932, 37.395767, 19.440807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160458, 37.461094, 18.707983>,  <40.603737, 36.892376, 18.956690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160458, 37.461094, 18.707983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409489, 37.641697, 18.963650>,  <40.558907, 37.750057, 19.117050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.409489, 37.641697, 18.963650>,  <40.160458, 37.461094, 18.707983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409489, 37.641697, 18.963650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243250, 0.664655, -0.706444,
		-0.743789, 0.595296, 0.303974,
		0.622581, 0.451504, 0.639169,
		40.596264, 37.777149, 19.155401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008251, 38.121490, 18.665352>,  <40.160458, 37.461094, 18.707983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008251, 38.121490, 18.665352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364666, 38.149235, 18.844793>,  <40.578514, 38.165882, 18.952459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364666, 38.149235, 18.844793>,  <40.008251, 38.121490, 18.665352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364666, 38.149235, 18.844793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275419, 0.702957, -0.655741,
		-0.360835, 0.707842, 0.607254,
		0.891034, 0.069365, 0.448605,
		40.631977, 38.170044, 18.979374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172569, 38.851692, 18.724380>,  <40.008251, 38.121490, 18.665352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172569, 38.851692, 18.724380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528637, 38.673508, 18.762655>,  <40.742279, 38.566597, 18.785620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528637, 38.673508, 18.762655>,  <40.172569, 38.851692, 18.724380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528637, 38.673508, 18.762655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393504, 0.645790, -0.654301,
		0.229674, 0.620093, 0.750156,
		0.890171, -0.445465, 0.095688,
		40.795689, 38.539867, 18.791361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681286, 39.406281, 18.671566>,  <40.172569, 38.851692, 18.724380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681286, 39.406281, 18.671566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911461, 39.081169, 18.635210>,  <41.049568, 38.886105, 18.613398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911461, 39.081169, 18.635210>,  <40.681286, 39.406281, 18.671566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911461, 39.081169, 18.635210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435978, 0.398882, -0.806731,
		0.691946, 0.424602, 0.583887,
		0.575442, -0.812777, -0.090888,
		41.084095, 38.837337, 18.607944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345966, 39.670891, 18.680853>,  <40.681286, 39.406281, 18.671566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345966, 39.670891, 18.680853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366802, 39.311848, 18.505772>,  <41.379303, 39.096420, 18.400723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366802, 39.311848, 18.505772>,  <41.345966, 39.670891, 18.680853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366802, 39.311848, 18.505772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364048, 0.425206, -0.828655,
		0.929923, -0.116182, 0.348921,
		0.052089, -0.897609, -0.437704,
		41.382427, 39.042564, 18.374460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932106, 39.603264, 18.436529>,  <41.345966, 39.670891, 18.680853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932106, 39.603264, 18.436529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.696762, 39.362789, 18.220228>,  <41.555557, 39.218506, 18.090448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.696762, 39.362789, 18.220228>,  <41.932106, 39.603264, 18.436529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696762, 39.362789, 18.220228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394858, 0.369982, -0.840952,
		0.705636, -0.708300, 0.019701,
		-0.588358, -0.601186, -0.540750,
		41.520256, 39.182434, 18.058002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313023, 39.458790, 17.882406>,  <41.932106, 39.603264, 18.436529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313023, 39.458790, 17.882406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.966633, 39.316971, 17.741331>,  <41.758801, 39.231880, 17.656687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.966633, 39.316971, 17.741331>,  <42.313023, 39.458790, 17.882406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966633, 39.316971, 17.741331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167190, 0.459414, -0.872345,
		0.471327, -0.814389, -0.338559,
		-0.865967, -0.354556, -0.352692,
		41.706841, 39.210606, 17.635525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538380, 39.211681, 17.221071>,  <42.313023, 39.458790, 17.882406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538380, 39.211681, 17.221071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.142395, 39.263302, 17.198036>,  <41.904804, 39.294273, 17.184216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.142395, 39.263302, 17.198036>,  <42.538380, 39.211681, 17.221071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142395, 39.263302, 17.198036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109071, 0.438659, -0.892010,
		-0.089850, -0.889340, -0.448332,
		-0.989965, 0.129047, -0.057588,
		41.845406, 39.302017, 17.180759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261700, 38.922024, 16.559645>,  <42.538380, 39.211681, 17.221071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261700, 38.922024, 16.559645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.977581, 39.189255, 16.648327>,  <41.807110, 39.349594, 16.701536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.977581, 39.189255, 16.648327>,  <42.261700, 38.922024, 16.559645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977581, 39.189255, 16.648327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004753, 0.310404, -0.950593,
		-0.703889, -0.676255, -0.217303,
		-0.710295, 0.668079, 0.221704,
		41.764492, 39.389679, 16.714838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896503, 39.058800, 15.907760>,  <42.261700, 38.922024, 16.559645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896503, 39.058800, 15.907760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779606, 39.358578, 16.145390>,  <41.709469, 39.538445, 16.287968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779606, 39.358578, 16.145390>,  <41.896503, 39.058800, 15.907760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779606, 39.358578, 16.145390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255200, 0.659781, -0.706797,
		-0.921665, -0.054949, -0.384075,
		-0.292243, 0.749446, 0.594074,
		41.691933, 39.583412, 16.323612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344151, 39.406502, 15.538544>,  <41.896503, 39.058800, 15.907760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344151, 39.406502, 15.538544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.539253, 39.651016, 15.787839>,  <41.656315, 39.797726, 15.937416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.539253, 39.651016, 15.787839>,  <41.344151, 39.406502, 15.538544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539253, 39.651016, 15.787839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149487, 0.644893, -0.749511,
		-0.860084, 0.458746, 0.223174,
		0.487758, 0.611282, 0.623239,
		41.685581, 39.834400, 15.974811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772892, 39.192707, 15.053936>,  <41.344151, 39.406502, 15.538544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772892, 39.192707, 15.053936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398121, 39.138863, 14.924914>,  <40.173256, 39.106556, 14.847502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398121, 39.138863, 14.924914>,  <40.772892, 39.192707, 15.053936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398121, 39.138863, 14.924914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236124, -0.436643, 0.868095,
		-0.257692, 0.889508, 0.377320,
		-0.936931, -0.134607, -0.322553,
		40.117043, 39.098480, 14.828149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455452, 38.926708, 15.600226>,  <40.772892, 39.192707, 15.053936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455452, 38.926708, 15.600226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.155201, 38.941944, 15.336377>,  <39.975048, 38.951084, 15.178067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.155201, 38.941944, 15.336377>,  <40.455452, 38.926708, 15.600226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155201, 38.941944, 15.336377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633069, -0.327260, 0.701516,
		-0.189150, 0.944166, 0.269763,
		-0.750630, 0.038087, -0.659624,
		39.930012, 38.953369, 15.138490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944584, 39.383511, 15.919588>,  <40.455452, 38.926708, 15.600226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944584, 39.383511, 15.919588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757931, 39.152790, 15.651393>,  <39.645939, 39.014359, 15.490476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757931, 39.152790, 15.651393>,  <39.944584, 39.383511, 15.919588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757931, 39.152790, 15.651393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603755, -0.346242, 0.718050,
		-0.646325, 0.739874, -0.186681,
		-0.466630, -0.576803, -0.670488,
		39.617943, 38.979748, 15.450247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277256, 39.406536, 16.035332>,  <39.944584, 39.383511, 15.919588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277256, 39.406536, 16.035332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305561, 39.051613, 15.853045>,  <39.322544, 38.838661, 15.743671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305561, 39.051613, 15.853045>,  <39.277256, 39.406536, 16.035332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305561, 39.051613, 15.853045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582176, -0.407716, 0.703448,
		-0.809978, 0.215534, -0.545418,
		0.070759, -0.887306, -0.455720,
		39.326790, 38.785419, 15.716329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655827, 39.041489, 16.300310>,  <39.277256, 39.406536, 16.035332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655827, 39.041489, 16.300310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849934, 38.748775, 16.108894>,  <38.966400, 38.573147, 15.994045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849934, 38.748775, 16.108894>,  <38.655827, 39.041489, 16.300310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849934, 38.748775, 16.108894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342558, -0.662666, 0.665979,
		-0.804467, -0.159253, -0.572252,
		0.485271, -0.731787, -0.478539,
		38.995514, 38.529240, 15.965333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151867, 38.496101, 16.231371>,  <38.655827, 39.041489, 16.300310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151867, 38.496101, 16.231371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535599, 38.383595, 16.240925>,  <38.765839, 38.316090, 16.246656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535599, 38.383595, 16.240925>,  <38.151867, 38.496101, 16.231371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535599, 38.383595, 16.240925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153446, -0.448600, 0.880461,
		-0.236933, -0.848319, -0.473516,
		0.959332, -0.281269, 0.023883,
		38.823399, 38.299213, 16.248089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152088, 37.679798, 16.114731>,  <38.151867, 38.496101, 16.231371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152088, 37.679798, 16.114731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440159, 37.850388, 16.333624>,  <38.613003, 37.952740, 16.464960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440159, 37.850388, 16.333624>,  <38.152088, 37.679798, 16.114731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440159, 37.850388, 16.333624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162612, -0.663030, 0.730717,
		0.674461, -0.615235, -0.408152,
		0.720181, 0.426470, 0.547233,
		38.656212, 37.978329, 16.497793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505177, 37.012321, 16.410357>,  <38.152088, 37.679798, 16.114731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505177, 37.012321, 16.410357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659653, 37.315929, 16.620022>,  <38.752338, 37.498093, 16.745821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659653, 37.315929, 16.620022>,  <38.505177, 37.012321, 16.410357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659653, 37.315929, 16.620022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095942, -0.532114, 0.841219,
		0.917415, -0.375162, -0.132677,
		0.386192, 0.759018, 0.524163,
		38.775509, 37.543636, 16.777271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861134, 36.676556, 16.919380>,  <38.505177, 37.012321, 16.410357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861134, 36.676556, 16.919380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828060, 37.043140, 17.075972>,  <38.808216, 37.263092, 17.169926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828060, 37.043140, 17.075972>,  <38.861134, 36.676556, 16.919380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828060, 37.043140, 17.075972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234084, -0.399692, 0.886257,
		0.968694, -0.018362, 0.247577,
		-0.082681, 0.916466, 0.391477,
		38.803257, 37.318081, 17.193415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332195, 36.711670, 17.431791>,  <38.861134, 36.676556, 16.919380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332195, 36.711670, 17.431791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070087, 36.997765, 17.529003>,  <38.912823, 37.169422, 17.587330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070087, 36.997765, 17.529003>,  <39.332195, 36.711670, 17.431791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070087, 36.997765, 17.529003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175557, -0.457104, 0.871915,
		0.734713, 0.528673, 0.425091,
		-0.655269, 0.715235, 0.243028,
		38.873508, 37.212334, 17.601912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413242, 36.751617, 18.120102>,  <39.332195, 36.711670, 17.431791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413242, 36.751617, 18.120102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075584, 36.958088, 18.062155>,  <38.872990, 37.081970, 18.027386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075584, 36.958088, 18.062155>,  <39.413242, 36.751617, 18.120102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075584, 36.958088, 18.062155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313143, -0.255387, 0.914723,
		0.435158, 0.817522, 0.377219,
		-0.844144, 0.516173, -0.144868,
		38.822342, 37.112942, 18.018694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383316, 37.225113, 18.713469>,  <39.413242, 36.751617, 18.120102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383316, 37.225113, 18.713469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021984, 37.149456, 18.559471>,  <38.805183, 37.104061, 18.467072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021984, 37.149456, 18.559471>,  <39.383316, 37.225113, 18.713469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021984, 37.149456, 18.559471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315761, -0.314275, 0.895280,
		-0.290326, 0.930300, 0.224172,
		-0.903331, -0.189138, -0.384994,
		38.750984, 37.092716, 18.443974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944115, 37.481319, 19.157276>,  <39.383316, 37.225113, 18.713469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944115, 37.481319, 19.157276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724430, 37.215832, 18.954166>,  <38.592617, 37.056538, 18.832300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724430, 37.215832, 18.954166>,  <38.944115, 37.481319, 19.157276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724430, 37.215832, 18.954166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325590, -0.389654, 0.861488,
		-0.769646, 0.638468, -0.002099,
		-0.549214, -0.663724, -0.507774,
		38.559666, 37.016716, 18.801834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306648, 37.506870, 19.473444>,  <38.944115, 37.481319, 19.157276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306648, 37.506870, 19.473444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298710, 37.161522, 19.271772>,  <38.293945, 36.954311, 19.150770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298710, 37.161522, 19.271772>,  <38.306648, 37.506870, 19.473444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298710, 37.161522, 19.271772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384763, -0.458845, 0.800886,
		-0.922802, 0.209887, -0.323086,
		-0.019849, -0.863371, -0.504179,
		38.292755, 36.902512, 19.120518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644157, 37.222061, 19.551487>,  <38.306648, 37.506870, 19.473444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644157, 37.222061, 19.551487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886177, 36.911240, 19.482094>,  <38.031391, 36.724747, 19.440458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886177, 36.911240, 19.482094>,  <37.644157, 37.222061, 19.551487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886177, 36.911240, 19.482094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476634, -0.528044, 0.702844,
		-0.637757, -0.342567, -0.689865,
		0.605050, -0.777057, -0.173485,
		38.067692, 36.678123, 19.430048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132343, 36.648800, 19.858856>,  <37.644157, 37.222061, 19.551487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132343, 36.648800, 19.858856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488338, 36.478943, 19.792408>,  <37.701935, 36.377029, 19.752539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488338, 36.478943, 19.792408>,  <37.132343, 36.648800, 19.858856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488338, 36.478943, 19.792408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186623, -0.671629, 0.716998,
		-0.416037, -0.607120, -0.676992,
		0.889991, -0.424640, -0.166120,
		37.755337, 36.351551, 19.742573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126408, 35.839771, 19.811378>,  <37.132343, 36.648800, 19.858856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126408, 35.839771, 19.811378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506050, 35.927986, 19.901327>,  <37.733833, 35.980915, 19.955297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506050, 35.927986, 19.901327>,  <37.126408, 35.839771, 19.811378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506050, 35.927986, 19.901327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039590, -0.624765, 0.779808,
		0.312469, -0.749021, -0.584235,
		0.949103, 0.220536, 0.224873,
		37.790779, 35.994148, 19.968790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516930, 35.184223, 19.821447>,  <37.126408, 35.839771, 19.811378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516930, 35.184223, 19.821447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706738, 35.462749, 20.036848>,  <37.820621, 35.629864, 20.166088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706738, 35.462749, 20.036848>,  <37.516930, 35.184223, 19.821447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706738, 35.462749, 20.036848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074967, -0.577570, 0.812892,
		0.877049, -0.426100, -0.221865,
		0.474515, 0.696313, 0.538501,
		37.849091, 35.671642, 20.198399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765747, 34.714359, 20.373299>,  <37.516930, 35.184223, 19.821447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765747, 34.714359, 20.373299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823868, 35.078304, 20.528749>,  <37.858742, 35.296673, 20.622019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823868, 35.078304, 20.528749>,  <37.765747, 34.714359, 20.373299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823868, 35.078304, 20.528749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096204, -0.377940, 0.920818,
		0.984699, -0.171183, 0.032617,
		0.145302, 0.909867, 0.388625,
		37.867458, 35.351265, 20.645336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375278, 34.565800, 20.692945>,  <37.765747, 34.714359, 20.373299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375278, 34.565800, 20.692945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157501, 34.876179, 20.820375>,  <38.026833, 35.062405, 20.896833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157501, 34.876179, 20.820375>,  <38.375278, 34.565800, 20.692945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157501, 34.876179, 20.820375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040886, -0.354802, 0.934047,
		0.837799, 0.521564, 0.161445,
		-0.544446, 0.775943, 0.318577,
		37.994167, 35.108963, 20.915949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597206, 34.682869, 21.452698>,  <38.375278, 34.565800, 20.692945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597206, 34.682869, 21.452698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248135, 34.872883, 21.407480>,  <38.038692, 34.986893, 21.380350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248135, 34.872883, 21.407480>,  <38.597206, 34.682869, 21.452698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248135, 34.872883, 21.407480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217033, -0.169956, 0.961255,
		0.437419, 0.863398, 0.251414,
		-0.872675, 0.475036, -0.113044,
		37.986332, 35.015392, 21.373568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.685505, 36.014488, 26.735025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374329, 35.873093, 26.527233>,  <39.187622, 35.788254, 26.402557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374329, 35.873093, 26.527233>,  <39.685505, 36.014488, 26.735025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374329, 35.873093, 26.527233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547831, -0.023322, 0.836264,
		-0.307728, 0.935147, -0.175511,
		-0.777936, -0.353492, -0.519479,
		39.140949, 35.767044, 26.371389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140289, 36.371365, 26.987722>,  <39.685505, 36.014488, 26.735025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140289, 36.371365, 26.987722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970284, 36.054436, 26.812637>,  <38.868282, 35.864277, 26.707586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970284, 36.054436, 26.812637>,  <39.140289, 36.371365, 26.987722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970284, 36.054436, 26.812637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636401, -0.082325, 0.766953,
		-0.643708, 0.604525, -0.469244,
		-0.425011, -0.792321, -0.437714,
		38.842781, 35.816738, 26.681324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421494, 36.481339, 27.158922>,  <39.140289, 36.371365, 26.987722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421494, 36.481339, 27.158922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.419407, 36.102650, 27.030119>,  <38.418156, 35.875435, 26.952837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.419407, 36.102650, 27.030119>,  <38.421494, 36.481339, 27.158922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419407, 36.102650, 27.030119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689502, -0.229821, 0.686854,
		-0.724265, 0.225610, -0.651568,
		-0.005217, -0.946722, -0.322010,
		38.417843, 35.818634, 26.933516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670124, 36.250725, 27.022221>,  <38.421494, 36.481339, 27.158922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670124, 36.250725, 27.022221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898006, 35.929714, 27.093086>,  <38.034737, 35.737110, 27.135605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898006, 35.929714, 27.093086>,  <37.670124, 36.250725, 27.022221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898006, 35.929714, 27.093086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676245, -0.335252, 0.655972,
		-0.467040, -0.493517, -0.733699,
		0.569708, -0.802525, 0.177162,
		38.068920, 35.688957, 27.146235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239117, 35.691582, 27.077803>,  <37.670124, 36.250725, 27.022221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239117, 35.691582, 27.077803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.559200, 35.560303, 27.278580>,  <37.751251, 35.481533, 27.399046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.559200, 35.560303, 27.278580>,  <37.239117, 35.691582, 27.077803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559200, 35.560303, 27.278580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599146, -0.474003, 0.645248,
		0.026152, -0.817072, -0.575943,
		0.800213, -0.328199, 0.501941,
		37.799263, 35.461842, 27.429161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010967, 35.139816, 27.294521>,  <37.239117, 35.691582, 27.077803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010967, 35.139816, 27.294521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330853, 35.161194, 27.533722>,  <37.522785, 35.174019, 27.677242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330853, 35.161194, 27.533722>,  <37.010967, 35.139816, 27.294521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330853, 35.161194, 27.533722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467559, -0.569383, 0.676159,
		0.376629, -0.820333, -0.430354,
		0.799712, 0.053445, 0.598000,
		37.570766, 35.177227, 27.713121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974358, 34.419075, 27.592903>,  <37.010967, 35.139816, 27.294521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974358, 34.419075, 27.592903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.198364, 34.678913, 27.798586>,  <37.332767, 34.834816, 27.921995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.198364, 34.678913, 27.798586>,  <36.974358, 34.419075, 27.592903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198364, 34.678913, 27.798586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454549, -0.277996, 0.846229,
		0.692654, -0.707633, 0.139591,
		0.560014, 0.649595, 0.514209,
		37.366367, 34.873791, 27.952848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076721, 34.113712, 28.168676>,  <36.974358, 34.419075, 27.592903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076721, 34.113712, 28.168676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.153111, 34.494392, 28.264841>,  <37.198944, 34.722801, 28.322540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.153111, 34.494392, 28.264841>,  <37.076721, 34.113712, 28.168676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153111, 34.494392, 28.264841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475884, -0.124443, 0.870659,
		0.858523, -0.280682, 0.429133,
		0.190976, 0.951699, 0.240409,
		37.210403, 34.779903, 28.336964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149223, 34.100834, 28.849909>,  <37.076721, 34.113712, 28.168676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149223, 34.100834, 28.849909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.110493, 34.492252, 28.777164>,  <37.087254, 34.727104, 28.733517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.110493, 34.492252, 28.777164>,  <37.149223, 34.100834, 28.849909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110493, 34.492252, 28.777164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505914, 0.108968, 0.855673,
		0.857132, 0.174856, 0.484509,
		-0.096824, 0.978545, -0.181862,
		37.081444, 34.785816, 28.722607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512402, 34.508739, 29.487127>,  <37.149223, 34.100834, 28.849909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512402, 34.508739, 29.487127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219357, 34.723446, 29.319721>,  <37.043530, 34.852268, 29.219276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219357, 34.723446, 29.319721>,  <37.512402, 34.508739, 29.487127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219357, 34.723446, 29.319721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436695, 0.100962, 0.893926,
		0.522083, 0.837669, 0.160436,
		-0.732617, 0.536765, -0.418516,
		36.999573, 34.884476, 29.194166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437595, 35.061069, 29.934118>,  <37.512402, 34.508739, 29.487127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437595, 35.061069, 29.934118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091846, 35.061359, 29.732979>,  <36.884396, 35.061531, 29.612295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091846, 35.061359, 29.732979>,  <37.437595, 35.061069, 29.934118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091846, 35.061359, 29.732979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497913, 0.138544, 0.856089,
		0.070285, 0.990356, -0.119395,
		-0.864374, 0.000722, -0.502849,
		36.832535, 35.061577, 29.582125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070793, 35.535187, 30.210707>,  <37.437595, 35.061069, 29.934118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070793, 35.535187, 30.210707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.789692, 35.320709, 30.023674>,  <36.621033, 35.192024, 29.911453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.789692, 35.320709, 30.023674>,  <37.070793, 35.535187, 30.210707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789692, 35.320709, 30.023674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609469, 0.114700, 0.784469,
		-0.366997, 0.836265, -0.407399,
		-0.702753, -0.536195, -0.467583,
		36.578865, 35.159851, 29.883400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356884, 35.864853, 30.476776>,  <37.070793, 35.535187, 30.210707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356884, 35.864853, 30.476776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315544, 35.493534, 30.333900>,  <36.290741, 35.270744, 30.248175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315544, 35.493534, 30.333900>,  <36.356884, 35.864853, 30.476776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315544, 35.493534, 30.333900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544386, -0.247758, 0.801411,
		-0.832443, 0.277278, -0.479745,
		-0.103353, -0.928296, -0.357191,
		36.284538, 35.215046, 30.226744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008533, 36.297119, 30.893442>,  <36.356884, 35.864853, 30.476776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008533, 36.297119, 30.893442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702019, 36.499199, 31.052229>,  <35.518108, 36.620445, 31.147501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702019, 36.499199, 31.052229>,  <36.008533, 36.297119, 30.893442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702019, 36.499199, 31.052229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364689, 0.166667, -0.916092,
		-0.528966, -0.846759, 0.056525,
		-0.766288, 0.505195, 0.396965,
		35.472134, 36.650757, 31.171318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482632, 36.220345, 30.336628>,  <36.008533, 36.297119, 30.893442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482632, 36.220345, 30.336628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.407978, 36.512783, 30.599129>,  <35.363186, 36.688244, 30.756630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.407978, 36.512783, 30.599129>,  <35.482632, 36.220345, 30.336628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407978, 36.512783, 30.599129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385584, 0.559880, -0.733389,
		-0.903599, -0.389920, 0.177403,
		-0.186638, 0.731093, 0.656254,
		35.351986, 36.732109, 30.796005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765789, 36.408257, 30.182892>,  <35.482632, 36.220345, 30.336628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765789, 36.408257, 30.182892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.963825, 36.714108, 30.347925>,  <35.082649, 36.897617, 30.446945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.963825, 36.714108, 30.347925>,  <34.765789, 36.408257, 30.182892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963825, 36.714108, 30.347925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269419, 0.586571, -0.763772,
		-0.826011, 0.266982, 0.496414,
		0.495095, 0.764628, 0.412584,
		35.112354, 36.943497, 30.471701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468700, 36.932098, 29.865168>,  <34.765789, 36.408257, 30.182892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468700, 36.932098, 29.865168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.794914, 37.112255, 30.010521>,  <34.990643, 37.220348, 30.097733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.794914, 37.112255, 30.010521>,  <34.468700, 36.932098, 29.865168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794914, 37.112255, 30.010521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039366, 0.583298, -0.811304,
		-0.577363, 0.675954, 0.457972,
		0.815538, 0.450388, 0.363384,
		35.039577, 37.247372, 30.119535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455105, 37.661678, 29.797434>,  <34.468700, 36.932098, 29.865168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455105, 37.661678, 29.797434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.848793, 37.610012, 29.845808>,  <35.085007, 37.579014, 29.874832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.848793, 37.610012, 29.845808>,  <34.455105, 37.661678, 29.797434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848793, 37.610012, 29.845808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176792, 0.746267, -0.641741,
		-0.007361, 0.652995, 0.757326,
		0.984221, -0.129165, 0.120937,
		35.144058, 37.571262, 29.882090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748913, 38.249886, 29.772923>,  <34.455105, 37.661678, 29.797434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748913, 38.249886, 29.772923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073795, 38.031517, 29.690662>,  <35.268723, 37.900494, 29.641306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073795, 38.031517, 29.690662>,  <34.748913, 38.249886, 29.772923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073795, 38.031517, 29.690662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279032, 0.673126, -0.684867,
		0.512315, 0.498868, 0.699045,
		0.812204, -0.545923, -0.205652,
		35.317455, 37.867741, 29.628967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208138, 38.795479, 29.677525>,  <34.748913, 38.249886, 29.772923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208138, 38.795479, 29.677525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.368496, 38.468426, 29.512232>,  <35.464710, 38.272194, 29.413057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.368496, 38.468426, 29.512232>,  <35.208138, 38.795479, 29.677525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368496, 38.468426, 29.512232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379538, 0.558763, -0.737383,
		0.833807, 0.138777, 0.534329,
		0.400895, -0.817633, -0.413230,
		35.488766, 38.223137, 29.388264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988598, 38.927097, 29.501085>,  <35.208138, 38.795479, 29.677525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988598, 38.927097, 29.501085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.858021, 38.616714, 29.285185>,  <35.779675, 38.430485, 29.155643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.858021, 38.616714, 29.285185>,  <35.988598, 38.927097, 29.501085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858021, 38.616714, 29.285185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490535, 0.349044, -0.798463,
		0.807967, -0.525419, 0.266690,
		-0.326441, -0.775953, -0.539753,
		35.760090, 38.383930, 29.123259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573574, 38.592472, 29.164282>,  <35.988598, 38.927097, 29.501085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573574, 38.592472, 29.164282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.261497, 38.468510, 28.946932>,  <36.074249, 38.394135, 28.816521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.261497, 38.468510, 28.946932>,  <36.573574, 38.592472, 29.164282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261497, 38.468510, 28.946932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485941, 0.246727, -0.838443,
		0.393901, -0.918198, -0.041901,
		-0.780195, -0.309902, -0.543376,
		36.027439, 38.375538, 28.783918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893837, 38.355778, 28.547422>,  <36.573574, 38.592472, 29.164282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893837, 38.355778, 28.547422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.503506, 38.381031, 28.463732>,  <36.269306, 38.396183, 28.413517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.503506, 38.381031, 28.463732>,  <36.893837, 38.355778, 28.547422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503506, 38.381031, 28.463732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218533, 0.291787, -0.931184,
		0.002257, -0.954397, -0.298531,
		-0.975827, 0.063137, -0.209226,
		36.210758, 38.399971, 28.400965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739761, 37.951485, 27.969316>,  <36.893837, 38.355778, 28.547422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739761, 37.951485, 27.969316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.435242, 38.210625, 27.980005>,  <36.252529, 38.366108, 27.986420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.435242, 38.210625, 27.980005>,  <36.739761, 37.951485, 27.969316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435242, 38.210625, 27.980005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097051, 0.154602, -0.983198,
		-0.641097, -0.745914, -0.180573,
		-0.761298, 0.647851, 0.026723,
		36.206852, 38.404980, 27.988022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460102, 37.907063, 27.324724>,  <36.739761, 37.951485, 27.969316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460102, 37.907063, 27.324724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.294632, 38.247181, 27.454872>,  <36.195351, 38.451252, 27.532961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.294632, 38.247181, 27.454872>,  <36.460102, 37.907063, 27.324724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294632, 38.247181, 27.454872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086738, 0.392564, -0.915625,
		-0.906283, -0.350551, -0.236147,
		-0.413676, 0.850299, 0.325368,
		36.170528, 38.502270, 27.552483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868374, 38.052887, 26.852245>,  <36.460102, 37.907063, 27.324724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868374, 38.052887, 26.852245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.948143, 38.401505, 27.031416>,  <35.996006, 38.610676, 27.138918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.948143, 38.401505, 27.031416>,  <35.868374, 38.052887, 26.852245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948143, 38.401505, 27.031416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012436, 0.459321, -0.888183,
		-0.979835, 0.171553, 0.102437,
		0.199422, 0.871547, 0.447926,
		36.007969, 38.662968, 27.165794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270290, 38.462299, 26.687975>,  <35.868374, 38.052887, 26.852245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270290, 38.462299, 26.687975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.604492, 38.671532, 26.755289>,  <35.805016, 38.797070, 26.795677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.604492, 38.671532, 26.755289>,  <35.270290, 38.462299, 26.687975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604492, 38.671532, 26.755289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047414, 0.373747, -0.926318,
		-0.547431, 0.765966, 0.337069,
		0.835506, 0.523077, 0.168284,
		35.855145, 38.828453, 26.805775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152832, 39.109573, 26.330261>,  <35.270290, 38.462299, 26.687975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152832, 39.109573, 26.330261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.550812, 39.109863, 26.370403>,  <35.789600, 39.110035, 26.394489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.550812, 39.109863, 26.370403>,  <35.152832, 39.109573, 26.330261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550812, 39.109863, 26.370403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091529, 0.403604, -0.910344,
		-0.041161, 0.914934, 0.401500,
		0.994951, 0.000722, 0.100355,
		35.849297, 39.110081, 26.400511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419224, 39.311501, 26.585695>,  <35.152832, 39.109573, 26.330261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419224, 39.311501, 26.585695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.088341, 39.375168, 26.370146>,  <33.889809, 39.413368, 26.240816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.088341, 39.375168, 26.370146>,  <34.419224, 39.311501, 26.585695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088341, 39.375168, 26.370146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533596, -0.523031, 0.664615,
		-0.176060, 0.837319, 0.517591,
		-0.827211, 0.159172, -0.538875,
		33.840176, 39.422920, 26.208483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015175, 39.543034, 27.047806>,  <34.419224, 39.311501, 26.585695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015175, 39.543034, 27.047806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.769611, 39.429863, 26.753033>,  <33.622272, 39.361961, 26.576168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.769611, 39.429863, 26.753033>,  <34.015175, 39.543034, 27.047806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769611, 39.429863, 26.753033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664200, -0.319335, 0.675917,
		-0.426561, 0.904423, 0.008125,
		-0.613909, -0.282923, -0.736933,
		33.585438, 39.344986, 26.531952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289146, 39.778191, 27.208113>,  <34.015175, 39.543034, 27.047806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289146, 39.778191, 27.208113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.240780, 39.448875, 26.986277>,  <33.211761, 39.251286, 26.853174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.240780, 39.448875, 26.986277>,  <33.289146, 39.778191, 27.208113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240780, 39.448875, 26.986277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640163, -0.362318, 0.677434,
		-0.758663, 0.436943, -0.483229,
		-0.120918, -0.823290, -0.554592,
		33.204506, 39.201889, 26.819899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558575, 39.655701, 27.232729>,  <33.289146, 39.778191, 27.208113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558575, 39.655701, 27.232729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.728680, 39.313210, 27.115402>,  <32.830742, 39.107716, 27.045006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.728680, 39.313210, 27.115402>,  <32.558575, 39.655701, 27.232729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728680, 39.313210, 27.115402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593964, -0.508548, 0.623366,
		-0.682908, -0.090872, -0.724831,
		0.425258, -0.856225, -0.293317,
		32.856258, 39.056343, 27.027407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935762, 39.181366, 27.104183>,  <32.558575, 39.655701, 27.232729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935762, 39.181366, 27.104183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.265896, 38.959740, 27.147688>,  <32.463978, 38.826763, 27.173790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.265896, 38.959740, 27.147688>,  <31.935762, 39.181366, 27.104183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265896, 38.959740, 27.147688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516501, -0.663005, 0.541895,
		-0.228137, -0.503421, -0.833379,
		0.825336, -0.554068, 0.108761,
		32.513496, 38.793518, 27.180317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680185, 38.538914, 27.171013>,  <31.935762, 39.181366, 27.104183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680185, 38.538914, 27.171013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.055531, 38.482300, 27.297152>,  <32.280739, 38.448334, 27.372835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.055531, 38.482300, 27.297152>,  <31.680185, 38.538914, 27.171013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055531, 38.482300, 27.297152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308054, -0.756216, 0.577269,
		0.156768, -0.638832, -0.753205,
		0.938364, -0.141531, 0.315345,
		32.337040, 38.439842, 27.391754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915703, 37.921112, 26.946756>,  <31.680185, 38.538914, 27.171013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915703, 37.921112, 26.946756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.102242, 38.037109, 27.281044>,  <32.214165, 38.106709, 27.481617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.102242, 38.037109, 27.281044>,  <31.915703, 37.921112, 26.946756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102242, 38.037109, 27.281044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429499, -0.751686, 0.500499,
		0.773339, -0.592346, -0.225994,
		0.466345, 0.289991, 0.835720,
		32.242146, 38.124107, 27.531759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355072, 37.395222, 27.176065>,  <31.915703, 37.921112, 26.946756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355072, 37.395222, 27.176065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.287197, 37.604820, 27.509924>,  <32.246471, 37.730579, 27.710239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.287197, 37.604820, 27.509924>,  <32.355072, 37.395222, 27.176065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287197, 37.604820, 27.509924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361706, -0.820937, 0.441851,
		0.916719, -0.226918, 0.328837,
		-0.169690, 0.523995, 0.834646,
		32.236290, 37.762020, 27.760319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334839, 36.803337, 27.685957>,  <32.355072, 37.395222, 27.176065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334839, 36.803337, 27.685957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233952, 37.126419, 27.899124>,  <32.173420, 37.320267, 28.027025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233952, 37.126419, 27.899124>,  <32.334839, 36.803337, 27.685957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233952, 37.126419, 27.899124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499778, -0.580312, 0.643008,
		0.828620, -0.104165, 0.550036,
		-0.252214, 0.807705, 0.532917,
		32.158287, 37.368732, 28.059000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540756, 36.676399, 28.376892>,  <32.334839, 36.803337, 27.685957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540756, 36.676399, 28.376892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.250198, 36.949680, 28.406786>,  <32.075863, 37.113647, 28.424723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.250198, 36.949680, 28.406786>,  <32.540756, 36.676399, 28.376892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250198, 36.949680, 28.406786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548445, -0.641764, 0.536047,
		0.414190, 0.348394, 0.840873,
		-0.726398, 0.683198, 0.074737,
		32.032280, 37.154640, 28.429207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338326, 36.628613, 29.046135>,  <32.540756, 36.676399, 28.376892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338326, 36.628613, 29.046135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.050827, 36.807529, 28.833221>,  <31.878326, 36.914879, 28.705473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.050827, 36.807529, 28.833221>,  <32.338326, 36.628613, 29.046135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050827, 36.807529, 28.833221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677274, -0.623487, 0.390595,
		-0.157163, 0.641243, 0.751071,
		-0.718749, 0.447294, -0.532286,
		31.835203, 36.941719, 28.673536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668901, 36.766533, 29.461216>,  <32.338326, 36.628613, 29.046135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668901, 36.766533, 29.461216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.588142, 36.681755, 29.078737>,  <31.539686, 36.630890, 28.849249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.588142, 36.681755, 29.078737>,  <31.668901, 36.766533, 29.461216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588142, 36.681755, 29.078737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594632, -0.749244, 0.291628,
		-0.778235, 0.627465, 0.025241,
		-0.201898, -0.211946, -0.956199,
		31.527573, 36.618172, 28.791878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.406433, 41.738899, 23.358734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110241, 41.527016, 23.193279>,  <34.932526, 41.399887, 23.094006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110241, 41.527016, 23.193279>,  <35.406433, 41.738899, 23.358734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110241, 41.527016, 23.193279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367867, -0.195631, 0.909067,
		-0.562459, 0.825312, -0.050001,
		-0.740482, -0.529706, -0.413639,
		34.888096, 41.368103, 23.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840427, 41.984196, 23.711092>,  <35.406433, 41.738899, 23.358734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840427, 41.984196, 23.711092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716377, 41.633560, 23.563896>,  <34.641949, 41.423180, 23.475578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716377, 41.633560, 23.563896>,  <34.840427, 41.984196, 23.711092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716377, 41.633560, 23.563896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477459, -0.191105, 0.857619,
		-0.822104, 0.441668, -0.359269,
		-0.310125, -0.876589, -0.367987,
		34.623341, 41.370583, 23.453501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059727, 41.851936, 23.901035>,  <34.840427, 41.984196, 23.711092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059727, 41.851936, 23.901035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196156, 41.481964, 23.833897>,  <34.278011, 41.259979, 23.793613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196156, 41.481964, 23.833897>,  <34.059727, 41.851936, 23.901035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196156, 41.481964, 23.833897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522689, -0.335002, 0.783945,
		-0.781325, -0.179649, -0.597711,
		0.341069, -0.924932, -0.167844,
		34.298477, 41.204483, 23.783543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489288, 41.431576, 24.106220>,  <34.059727, 41.851936, 23.901035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489288, 41.431576, 24.106220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814079, 41.198353, 24.117071>,  <34.008953, 41.058418, 24.123581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814079, 41.198353, 24.117071>,  <33.489288, 41.431576, 24.106220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814079, 41.198353, 24.117071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394971, -0.514637, 0.761017,
		-0.429754, -0.628644, -0.648165,
		0.811978, -0.583056, 0.027129,
		34.057674, 41.023434, 24.125210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241020, 40.663067, 24.173456>,  <33.489288, 41.431576, 24.106220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241020, 40.663067, 24.173456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611839, 40.667248, 24.323376>,  <33.834332, 40.669754, 24.413328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611839, 40.667248, 24.323376>,  <33.241020, 40.663067, 24.173456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611839, 40.667248, 24.323376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302012, -0.571577, 0.762947,
		0.222199, -0.820482, -0.526723,
		0.927047, 0.010449, 0.374799,
		33.889954, 40.670383, 24.435816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413456, 40.020550, 24.262056>,  <33.241020, 40.663067, 24.173456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413456, 40.020550, 24.262056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654572, 40.226494, 24.505882>,  <33.799240, 40.350060, 24.652178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654572, 40.226494, 24.505882>,  <33.413456, 40.020550, 24.262056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654572, 40.226494, 24.505882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216622, -0.629670, 0.746050,
		0.767934, -0.581754, -0.268028,
		0.602787, 0.514857, 0.609566,
		33.835407, 40.380951, 24.688751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793587, 39.509026, 24.562119>,  <33.413456, 40.020550, 24.262056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793587, 39.509026, 24.562119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831017, 39.811047, 24.821701>,  <33.853474, 39.992260, 24.977451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831017, 39.811047, 24.821701>,  <33.793587, 39.509026, 24.562119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831017, 39.811047, 24.821701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132681, -0.636545, 0.759741,
		0.986731, -0.157199, 0.040614,
		0.093578, 0.755049, 0.648956,
		33.859089, 40.037560, 25.016388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278622, 39.151413, 25.050697>,  <33.793587, 39.509026, 24.562119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278622, 39.151413, 25.050697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137623, 39.486588, 25.217365>,  <34.053024, 39.687691, 25.317366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137623, 39.486588, 25.217365>,  <34.278622, 39.151413, 25.050697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137623, 39.486588, 25.217365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052971, -0.462401, 0.885087,
		0.934313, 0.289918, 0.207380,
		-0.352496, 0.837934, 0.416670,
		34.031876, 39.737968, 25.342367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765118, 39.309479, 25.741379>,  <34.278622, 39.151413, 25.050697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765118, 39.309479, 25.741379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396442, 39.462303, 25.768278>,  <34.175240, 39.553997, 25.784418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396442, 39.462303, 25.768278>,  <34.765118, 39.309479, 25.741379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396442, 39.462303, 25.768278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166026, -0.545156, 0.821730,
		0.350615, 0.746211, 0.565895,
		-0.921686, 0.382064, 0.067250,
		34.119938, 39.576923, 25.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346367, 39.734337, 25.980686>,  <34.765118, 39.309479, 25.741379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346367, 39.734337, 25.980686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688126, 39.532139, 26.028831>,  <35.893181, 39.410820, 26.057718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688126, 39.532139, 26.028831>,  <35.346367, 39.734337, 25.980686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688126, 39.532139, 26.028831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321425, 0.332129, -0.886779,
		0.408286, 0.796346, 0.446247,
		0.854394, -0.505494, 0.120362,
		35.944443, 39.380489, 26.064939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986095, 40.208324, 25.971359>,  <35.346367, 39.734337, 25.980686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986095, 40.208324, 25.971359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087490, 39.838848, 25.856440>,  <36.148327, 39.617161, 25.787487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087490, 39.838848, 25.856440>,  <35.986095, 40.208324, 25.971359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087490, 39.838848, 25.856440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412580, 0.371869, -0.831559,
		0.874941, 0.092256, 0.475361,
		0.253489, -0.923689, -0.287300,
		36.163536, 39.561741, 25.770250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654705, 40.275211, 25.831972>,  <35.986095, 40.208324, 25.971359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654705, 40.275211, 25.831972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526363, 39.937645, 25.659994>,  <36.449360, 39.735104, 25.556808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526363, 39.937645, 25.659994>,  <36.654705, 40.275211, 25.831972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526363, 39.937645, 25.659994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609089, 0.163773, -0.776008,
		0.725303, -0.510858, 0.461475,
		-0.320853, -0.843921, -0.429943,
		36.430107, 39.684467, 25.531012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287441, 40.070587, 25.562656>,  <36.654705, 40.275211, 25.831972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287441, 40.070587, 25.562656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015316, 39.846970, 25.373072>,  <36.852039, 39.712799, 25.259321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015316, 39.846970, 25.373072>,  <37.287441, 40.070587, 25.562656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015316, 39.846970, 25.373072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583873, -0.022507, -0.811533,
		0.443016, -0.828832, 0.341723,
		-0.680316, -0.559044, -0.473962,
		36.811222, 39.679256, 25.230883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658146, 39.436958, 25.276962>,  <37.287441, 40.070587, 25.562656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658146, 39.436958, 25.276962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324116, 39.484520, 25.062111>,  <37.123695, 39.513058, 24.933201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324116, 39.484520, 25.062111>,  <37.658146, 39.436958, 25.276962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324116, 39.484520, 25.062111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546412, 0.065927, -0.834918,
		-0.063867, -0.990714, -0.120027,
		-0.835078, 0.118908, -0.537127,
		37.073593, 39.520191, 24.900972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801613, 39.005051, 24.646399>,  <37.658146, 39.436958, 25.276962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801613, 39.005051, 24.646399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511009, 39.268215, 24.567059>,  <37.336647, 39.426113, 24.519455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511009, 39.268215, 24.567059>,  <37.801613, 39.005051, 24.646399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511009, 39.268215, 24.567059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275321, 0.014223, -0.961247,
		-0.629593, -0.752962, -0.191469,
		-0.726506, 0.657910, -0.198351,
		37.293056, 39.465588, 24.507553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471684, 38.709743, 24.082998>,  <37.801613, 39.005051, 24.646399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471684, 38.709743, 24.082998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394958, 39.102264, 24.089434>,  <37.348923, 39.337776, 24.093294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394958, 39.102264, 24.089434>,  <37.471684, 38.709743, 24.082998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394958, 39.102264, 24.089434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301097, 0.074441, -0.950683,
		-0.934104, -0.177505, -0.309745,
		-0.191809, 0.981300, 0.016089,
		37.337418, 39.396656, 24.094261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446056, 38.840179, 23.389091>,  <37.471684, 38.709743, 24.082998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446056, 38.840179, 23.389091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484253, 39.201591, 23.556192>,  <37.507172, 39.418438, 23.656452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484253, 39.201591, 23.556192>,  <37.446056, 38.840179, 23.389091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484253, 39.201591, 23.556192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272198, 0.379974, -0.884041,
		-0.957491, 0.198130, -0.209655,
		0.095491, 0.903529, 0.417752,
		37.512901, 39.472649, 23.681519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996830, 39.315651, 22.968933>,  <37.446056, 38.840179, 23.389091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996830, 39.315651, 22.968933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283092, 39.528210, 23.150240>,  <37.454849, 39.655746, 23.259024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283092, 39.528210, 23.150240>,  <36.996830, 39.315651, 22.968933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283092, 39.528210, 23.150240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184353, 0.482232, -0.856426,
		-0.673685, 0.696467, 0.247147,
		0.715655, 0.531399, 0.453269,
		37.497787, 39.687630, 23.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873680, 40.010902, 22.652658>,  <36.996830, 39.315651, 22.968933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873680, 40.010902, 22.652658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230591, 39.990414, 22.832090>,  <37.444736, 39.978119, 22.939751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230591, 39.990414, 22.832090>,  <36.873680, 40.010902, 22.652658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230591, 39.990414, 22.832090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400533, 0.548349, -0.734089,
		-0.208379, 0.834679, 0.509792,
		0.892273, -0.051220, 0.448582,
		37.498272, 39.975048, 22.966665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121243, 40.617825, 22.515272>,  <36.873680, 40.010902, 22.652658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121243, 40.617825, 22.515272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445629, 40.416168, 22.634050>,  <37.640263, 40.295174, 22.705317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445629, 40.416168, 22.634050>,  <37.121243, 40.617825, 22.515272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445629, 40.416168, 22.634050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546145, 0.470175, -0.693297,
		0.209902, 0.724416, 0.656630,
		0.810967, -0.504139, 0.296946,
		37.688919, 40.264927, 22.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774208, 41.160225, 22.536880>,  <37.121243, 40.617825, 22.515272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774208, 41.160225, 22.536880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884888, 40.776985, 22.507273>,  <37.951294, 40.547039, 22.489508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884888, 40.776985, 22.507273>,  <37.774208, 41.160225, 22.536880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884888, 40.776985, 22.507273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574410, 0.226657, -0.786562,
		0.770383, 0.175123, 0.613059,
		0.276699, -0.958102, -0.074020,
		37.967896, 40.489555, 22.485067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421051, 41.244534, 22.187286>,  <37.774208, 41.160225, 22.536880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421051, 41.244534, 22.187286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324829, 40.861153, 22.125969>,  <38.267097, 40.631123, 22.089178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324829, 40.861153, 22.125969>,  <38.421051, 41.244534, 22.187286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324829, 40.861153, 22.125969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516126, 0.007447, -0.856480,
		0.822039, -0.285146, 0.492892,
		-0.240552, -0.958455, -0.153293,
		38.252663, 40.573616, 22.079981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038101, 40.845840, 22.177385>,  <38.421051, 41.244534, 22.187286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038101, 40.845840, 22.177385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767658, 40.631039, 21.975592>,  <38.605392, 40.502159, 21.854515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767658, 40.631039, 21.975592>,  <39.038101, 40.845840, 22.177385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767658, 40.631039, 21.975592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592180, 0.011355, -0.805726,
		0.438408, -0.843503, 0.310326,
		-0.676108, -0.537006, -0.504483,
		38.564827, 40.469936, 21.824247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.721321, 36.332386, 19.122971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937523, 36.610294, 19.312769>,  <35.067245, 36.777039, 19.426647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937523, 36.610294, 19.312769>,  <34.721321, 36.332386, 19.122971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937523, 36.610294, 19.312769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202863, -0.439713, 0.874928,
		0.816519, -0.569159, -0.096722,
		0.540503, 0.694774, 0.474495,
		35.099674, 36.818726, 19.455118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101921, 35.975853, 19.634773>,  <34.721321, 36.332386, 19.122971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101921, 35.975853, 19.634773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095470, 36.354897, 19.762381>,  <35.091602, 36.582325, 19.838945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095470, 36.354897, 19.762381>,  <35.101921, 35.975853, 19.634773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095470, 36.354897, 19.762381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269361, -0.311381, 0.911310,
		0.962904, -0.071239, 0.260269,
		-0.016122, 0.947611, 0.319019,
		35.090633, 36.639179, 19.858086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506489, 35.948490, 20.241299>,  <35.101921, 35.975853, 19.634773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506489, 35.948490, 20.241299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276993, 36.275555, 20.260298>,  <35.139297, 36.471794, 20.271698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276993, 36.275555, 20.260298>,  <35.506489, 35.948490, 20.241299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276993, 36.275555, 20.260298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277048, -0.248320, 0.928214,
		0.770759, 0.519392, 0.369002,
		-0.573737, 0.817661, 0.047499,
		35.104870, 36.520851, 20.274548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611942, 36.196087, 20.886517>,  <35.506489, 35.948490, 20.241299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611942, 36.196087, 20.886517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259899, 36.360100, 20.790775>,  <35.048676, 36.458508, 20.733330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259899, 36.360100, 20.790775>,  <35.611942, 36.196087, 20.886517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259899, 36.360100, 20.790775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326282, -0.156122, 0.932291,
		0.344899, 0.898611, 0.271189,
		-0.880105, 0.410030, -0.239355,
		34.995869, 36.483109, 20.718969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492008, 36.638397, 21.401819>,  <35.611942, 36.196087, 20.886517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492008, 36.638397, 21.401819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135651, 36.567478, 21.234550>,  <34.921837, 36.524929, 21.134190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135651, 36.567478, 21.234550>,  <35.492008, 36.638397, 21.401819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135651, 36.567478, 21.234550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360029, -0.285647, 0.888135,
		-0.276910, 0.941792, 0.190652,
		-0.890899, -0.177293, -0.418171,
		34.868382, 36.514290, 21.109098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962872, 36.891834, 21.926413>,  <35.492008, 36.638397, 21.401819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962872, 36.891834, 21.926413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769478, 36.643230, 21.679844>,  <34.653442, 36.494068, 21.531902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.769478, 36.643230, 21.679844>,  <34.962872, 36.891834, 21.926413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769478, 36.643230, 21.679844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325749, -0.525878, 0.785710,
		-0.812487, 0.580674, 0.051796,
		-0.483480, -0.621506, -0.616423,
		34.624435, 36.456779, 21.494917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275425, 36.968090, 22.154427>,  <34.962872, 36.891834, 21.926413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275425, 36.968090, 22.154427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324314, 36.620037, 21.963457>,  <34.353649, 36.411205, 21.848875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324314, 36.620037, 21.963457>,  <34.275425, 36.968090, 22.154427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324314, 36.620037, 21.963457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405876, -0.482792, 0.776000,
		-0.905718, 0.098927, -0.412175,
		0.122227, -0.870129, -0.477425,
		34.360981, 36.358997, 21.820229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671188, 36.627926, 22.214041>,  <34.275425, 36.968090, 22.154427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671188, 36.627926, 22.214041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962963, 36.361988, 22.149656>,  <34.138027, 36.202427, 22.111025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962963, 36.361988, 22.149656>,  <33.671188, 36.627926, 22.214041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962963, 36.361988, 22.149656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318105, -0.537999, 0.780620,
		-0.605591, -0.518204, -0.603923,
		0.729431, -0.664847, -0.160964,
		34.181793, 36.162533, 22.101368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250469, 35.991356, 22.367514>,  <33.671188, 36.627926, 22.214041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250469, 35.991356, 22.367514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639759, 35.899513, 22.363363>,  <33.873333, 35.844406, 22.360874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639759, 35.899513, 22.363363>,  <33.250469, 35.991356, 22.367514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639759, 35.899513, 22.363363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104831, -0.483605, 0.868986,
		-0.204542, -0.844634, -0.494728,
		0.973228, -0.229607, -0.010374,
		33.931728, 35.830631, 22.360250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275650, 35.323509, 22.354769>,  <33.250469, 35.991356, 22.367514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275650, 35.323509, 22.354769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.636757, 35.423923, 22.494484>,  <33.853420, 35.484173, 22.578312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.636757, 35.423923, 22.494484>,  <33.275650, 35.323509, 22.354769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636757, 35.423923, 22.494484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091631, -0.681156, 0.726382,
		0.420266, -0.687755, -0.591920,
		0.902763, 0.251036, 0.349286,
		33.907585, 35.499233, 22.599270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618999, 34.660862, 22.470816>,  <33.275650, 35.323509, 22.354769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618999, 34.660862, 22.470816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.779350, 34.953941, 22.690798>,  <33.875561, 35.129787, 22.822788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.779350, 34.953941, 22.690798>,  <33.618999, 34.660862, 22.470816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779350, 34.953941, 22.690798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237978, -0.496413, 0.834830,
		0.884684, -0.465540, -0.024634,
		0.400875, 0.732698, 0.549957,
		33.899612, 35.173752, 22.855785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863560, 34.240448, 23.026596>,  <33.618999, 34.660862, 22.470816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863560, 34.240448, 23.026596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.902203, 34.610798, 23.172707>,  <33.925388, 34.833008, 23.260372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.902203, 34.610798, 23.172707>,  <33.863560, 34.240448, 23.026596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902203, 34.610798, 23.172707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196620, -0.342008, 0.918897,
		0.975708, -0.160596, 0.149004,
		0.096611, 0.925872, 0.365276,
		33.931187, 34.888561, 23.282290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397396, 34.268147, 23.499401>,  <33.863560, 34.240448, 23.026596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397396, 34.268147, 23.499401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.128780, 34.545280, 23.604481>,  <33.967609, 34.711563, 23.667528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.128780, 34.545280, 23.604481>,  <34.397396, 34.268147, 23.499401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128780, 34.545280, 23.604481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128527, -0.458078, 0.879571,
		0.729735, 0.556904, 0.396666,
		-0.671541, 0.692837, 0.262698,
		33.927319, 34.753132, 23.683290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591759, 34.299160, 24.154949>,  <34.397396, 34.268147, 23.499401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591759, 34.299160, 24.154949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232418, 34.472282, 24.124889>,  <34.016815, 34.576157, 24.106853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232418, 34.472282, 24.124889>,  <34.591759, 34.299160, 24.154949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232418, 34.472282, 24.124889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273203, -0.416515, 0.867108,
		0.343990, 0.799496, 0.492420,
		-0.898349, 0.432807, -0.075148,
		33.962914, 34.602123, 24.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086624, 34.720741, 24.524223>,  <34.591759, 34.299160, 24.154949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086624, 34.720741, 24.524223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356903, 34.451317, 24.644058>,  <35.519070, 34.289661, 24.715960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356903, 34.451317, 24.644058>,  <35.086624, 34.720741, 24.524223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356903, 34.451317, 24.644058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613871, 0.289093, -0.734567,
		0.408169, 0.680248, 0.608819,
		0.675693, -0.673563, 0.299586,
		35.559612, 34.249249, 24.733934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671623, 35.136509, 24.532700>,  <35.086624, 34.720741, 24.524223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671623, 35.136509, 24.532700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.818314, 34.766373, 24.494217>,  <35.906326, 34.544289, 24.471128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.818314, 34.766373, 24.494217>,  <35.671623, 35.136509, 24.532700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818314, 34.766373, 24.494217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478632, 0.276333, -0.833397,
		0.797762, 0.259580, 0.544236,
		0.366724, -0.925342, -0.096205,
		35.928329, 34.488770, 24.465355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345718, 35.208221, 24.308439>,  <35.671623, 35.136509, 24.532700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345718, 35.208221, 24.308439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297153, 34.821190, 24.219847>,  <36.268017, 34.588970, 24.166691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297153, 34.821190, 24.219847>,  <36.345718, 35.208221, 24.308439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297153, 34.821190, 24.219847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571035, 0.114424, -0.812913,
		0.811898, -0.225169, 0.538628,
		-0.121411, -0.967578, -0.221479,
		36.260731, 34.530918, 24.153402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003258, 34.866978, 24.343981>,  <36.345718, 35.208221, 24.308439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003258, 34.866978, 24.343981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.789906, 34.652771, 24.082071>,  <36.661892, 34.524246, 23.924927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.789906, 34.652771, 24.082071>,  <37.003258, 34.866978, 24.343981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789906, 34.652771, 24.082071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632566, 0.261381, -0.729068,
		0.561571, -0.803060, 0.199331,
		-0.533385, -0.535513, -0.654772,
		36.629890, 34.492119, 23.885639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441002, 34.410488, 23.963400>,  <37.003258, 34.866978, 24.343981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441002, 34.410488, 23.963400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113251, 34.451355, 23.737768>,  <36.916599, 34.475876, 23.602388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113251, 34.451355, 23.737768>,  <37.441002, 34.410488, 23.963400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113251, 34.451355, 23.737768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569895, 0.038770, -0.820802,
		-0.061992, -0.994011, -0.089993,
		-0.819376, 0.102169, -0.564079,
		36.867439, 34.482006, 23.568544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571606, 33.945999, 23.448864>,  <37.441002, 34.410488, 23.963400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571606, 33.945999, 23.448864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283451, 34.166405, 23.280378>,  <37.110558, 34.298649, 23.179287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283451, 34.166405, 23.280378>,  <37.571606, 33.945999, 23.448864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283451, 34.166405, 23.280378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564543, 0.113057, -0.817624,
		-0.402902, -0.826801, -0.392518,
		-0.720389, 0.551015, -0.421214,
		37.067333, 34.331711, 23.154015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623699, 33.808086, 22.751738>,  <37.571606, 33.945999, 23.448864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623699, 33.808086, 22.751738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402786, 34.141487, 22.745264>,  <37.270241, 34.341526, 22.741381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402786, 34.141487, 22.745264>,  <37.623699, 33.808086, 22.751738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402786, 34.141487, 22.745264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521896, 0.330539, -0.786364,
		-0.650087, -0.442738, -0.617551,
		-0.552278, 0.833503, -0.016184,
		37.237103, 34.391537, 22.740408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467999, 33.859589, 22.032396>,  <37.623699, 33.808086, 22.751738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467999, 33.859589, 22.032396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410942, 34.223255, 22.188894>,  <37.376709, 34.441456, 22.282793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410942, 34.223255, 22.188894>,  <37.467999, 33.859589, 22.032396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410942, 34.223255, 22.188894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380271, 0.415287, -0.826396,
		-0.913809, 0.030898, -0.404967,
		-0.142643, 0.909166, 0.391243,
		37.368149, 34.496006, 22.306267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079533, 34.187962, 21.479033>,  <37.467999, 33.859589, 22.032396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079533, 34.187962, 21.479033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238922, 34.476669, 21.705399>,  <37.334557, 34.649895, 21.841219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238922, 34.476669, 21.705399>,  <37.079533, 34.187962, 21.479033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238922, 34.476669, 21.705399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184211, 0.541465, -0.820294,
		-0.898490, 0.431114, 0.082801,
		0.398474, 0.721773, 0.565917,
		37.358463, 34.693203, 21.875174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723923, 34.845909, 21.207533>,  <37.079533, 34.187962, 21.479033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723923, 34.845909, 21.207533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070732, 34.924896, 21.390518>,  <37.278820, 34.972290, 21.500309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070732, 34.924896, 21.390518>,  <36.723923, 34.845909, 21.207533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070732, 34.924896, 21.390518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300585, 0.524944, -0.796293,
		-0.397386, 0.827913, 0.395783,
		0.867025, 0.197470, 0.457464,
		37.330841, 34.984138, 21.527758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833267, 35.630043, 21.261349>,  <36.723923, 34.845909, 21.207533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833267, 35.630043, 21.261349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188583, 35.447720, 21.283941>,  <37.401772, 35.338326, 21.297497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188583, 35.447720, 21.283941>,  <36.833267, 35.630043, 21.261349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188583, 35.447720, 21.283941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339388, 0.568552, -0.749376,
		0.309457, 0.684829, 0.659731,
		0.888286, -0.455804, 0.056480,
		37.455070, 35.310978, 21.300886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286476, 36.137436, 21.339607>,  <36.833267, 35.630043, 21.261349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286476, 36.137436, 21.339607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503525, 35.832211, 21.199150>,  <37.633755, 35.649075, 21.114876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503525, 35.832211, 21.199150>,  <37.286476, 36.137436, 21.339607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503525, 35.832211, 21.199150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299759, 0.566421, -0.767666,
		0.784672, 0.311291, 0.536085,
		0.542617, -0.763063, -0.351143,
		37.666309, 35.603291, 21.093807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964481, 36.447338, 21.255936>,  <37.286476, 36.137436, 21.339607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964481, 36.447338, 21.255936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972958, 36.108238, 21.043947>,  <37.978043, 35.904778, 20.916754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972958, 36.108238, 21.043947>,  <37.964481, 36.447338, 21.255936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972958, 36.108238, 21.043947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245261, 0.518300, -0.819276,
		0.969225, -0.112617, 0.218905,
		0.021194, -0.847752, -0.529970,
		37.979317, 35.853912, 20.884956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613960, 36.465084, 20.779005>,  <37.964481, 36.447338, 21.255936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613960, 36.465084, 20.779005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364380, 36.205021, 20.605579>,  <38.214630, 36.048981, 20.501524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364380, 36.205021, 20.605579>,  <38.613960, 36.465084, 20.779005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364380, 36.205021, 20.605579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175084, 0.424401, -0.888386,
		0.761598, -0.630218, -0.150972,
		-0.623950, -0.650161, -0.433564,
		38.177197, 36.009972, 20.475510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387680, 36.324764, 20.756100>,  <38.613960, 36.465084, 20.779005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387680, 36.324764, 20.756100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726337, 36.525021, 20.828262>,  <39.929531, 36.645176, 20.871561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726337, 36.525021, 20.828262>,  <39.387680, 36.324764, 20.756100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726337, 36.525021, 20.828262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100140, -0.183072, 0.977986,
		0.522647, -0.846075, -0.104864,
		0.846647, 0.500641, 0.180408,
		39.980331, 36.675213, 20.882385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872616, 35.845081, 21.025202>,  <39.387680, 36.324764, 20.756100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872616, 35.845081, 21.025202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980507, 36.215229, 21.131733>,  <40.045242, 36.437317, 21.195652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980507, 36.215229, 21.131733>,  <39.872616, 35.845081, 21.025202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980507, 36.215229, 21.131733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038578, -0.286742, 0.957231,
		0.962163, -0.247919, -0.113041,
		0.269729, 0.925373, 0.266328,
		40.061424, 36.492840, 21.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518013, 35.770012, 21.394323>,  <39.872616, 35.845081, 21.025202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518013, 35.770012, 21.394323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.342022, 36.109051, 21.512985>,  <40.236427, 36.312473, 21.584183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.342022, 36.109051, 21.512985>,  <40.518013, 35.770012, 21.394323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342022, 36.109051, 21.512985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085164, -0.368243, 0.925821,
		0.893964, 0.382072, 0.234201,
		-0.439973, 0.847596, 0.296657,
		40.210030, 36.363331, 21.601982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884365, 35.900440, 22.005993>,  <40.518013, 35.770012, 21.394323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884365, 35.900440, 22.005993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541843, 36.105816, 22.028357>,  <40.336330, 36.229042, 22.041775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541843, 36.105816, 22.028357>,  <40.884365, 35.900440, 22.005993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541843, 36.105816, 22.028357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099353, -0.269989, 0.957724,
		0.506828, 0.814546, 0.282204,
		-0.856303, 0.513439, 0.055911,
		40.284954, 36.259850, 22.045130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893253, 36.384781, 22.523281>,  <40.884365, 35.900440, 22.005993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893253, 36.384781, 22.523281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.503212, 36.305050, 22.484432>,  <40.269188, 36.257210, 22.461123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.503212, 36.305050, 22.484432>,  <40.893253, 36.384781, 22.523281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503212, 36.305050, 22.484432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098974, -0.000689, 0.995090,
		-0.198416, 0.979932, -0.019056,
		-0.975108, -0.199328, -0.097124,
		40.210678, 36.245251, 22.455296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734547, 36.592800, 23.125433>,  <40.893253, 36.384781, 22.523281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734547, 36.592800, 23.125433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.398323, 36.412205, 23.005693>,  <40.196587, 36.303848, 22.933849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.398323, 36.412205, 23.005693>,  <40.734547, 36.592800, 23.125433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398323, 36.412205, 23.005693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209007, -0.239511, 0.948130,
		-0.499770, 0.859529, 0.106959,
		-0.840563, -0.451492, -0.299348,
		40.146152, 36.276756, 22.915890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234745, 36.727932, 23.612720>,  <40.734547, 36.592800, 23.125433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234745, 36.727932, 23.612720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.066517, 36.410290, 23.437212>,  <39.965580, 36.219704, 23.331907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.066517, 36.410290, 23.437212>,  <40.234745, 36.727932, 23.612720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066517, 36.410290, 23.437212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355906, -0.300450, 0.884907,
		-0.834538, 0.528324, -0.156267,
		-0.420568, -0.794105, -0.438771,
		39.940346, 36.172058, 23.305580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532227, 36.699871, 23.708384>,  <40.234745, 36.727932, 23.612720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532227, 36.699871, 23.708384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.664204, 36.325199, 23.661459>,  <39.743389, 36.100395, 23.633305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.664204, 36.325199, 23.661459>,  <39.532227, 36.699871, 23.708384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664204, 36.325199, 23.661459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360970, -0.240014, 0.901163,
		-0.872261, -0.254986, -0.417305,
		0.329943, -0.936683, -0.117313,
		39.763187, 36.044193, 23.626265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971134, 36.235622, 23.804562>,  <39.532227, 36.699871, 23.708384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971134, 36.235622, 23.804562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326500, 36.072903, 23.889633>,  <39.539719, 35.975269, 23.940676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.326500, 36.072903, 23.889633>,  <38.971134, 36.235622, 23.804562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326500, 36.072903, 23.889633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317737, -0.210569, 0.924502,
		-0.331305, -0.888917, -0.316329,
		0.888415, -0.406801, 0.212679,
		39.593025, 35.950863, 23.953438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846771, 35.500042, 24.050549>,  <38.971134, 36.235622, 23.804562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846771, 35.500042, 24.050549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182121, 35.642303, 24.215782>,  <39.383331, 35.727661, 24.314922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182121, 35.642303, 24.215782>,  <38.846771, 35.500042, 24.050549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182121, 35.642303, 24.215782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423844, -0.051194, 0.904287,
		0.342762, -0.933214, 0.107823,
		0.838374, 0.355655, 0.413084,
		39.433632, 35.749001, 24.339708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893078, 35.103600, 24.605618>,  <38.846771, 35.500042, 24.050549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893078, 35.103600, 24.605618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.150707, 35.393803, 24.702618>,  <39.305286, 35.567924, 24.760818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.150707, 35.393803, 24.702618>,  <38.893078, 35.103600, 24.605618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150707, 35.393803, 24.702618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232025, -0.116794, 0.965673,
		0.728923, -0.678235, 0.093111,
		0.644078, 0.725505, 0.242501,
		39.343929, 35.611454, 24.775368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119514, 34.916443, 25.274378>,  <38.893078, 35.103600, 24.605618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119514, 34.916443, 25.274378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.264458, 35.287701, 25.240324>,  <39.351421, 35.510456, 25.219893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.264458, 35.287701, 25.240324>,  <39.119514, 34.916443, 25.274378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264458, 35.287701, 25.240324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033261, 0.104161, 0.994004,
		0.931447, -0.357350, 0.068614,
		0.362354, 0.928144, -0.085134,
		39.373165, 35.566143, 25.214785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713295, 34.982258, 25.726072>,  <39.119514, 34.916443, 25.274378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713295, 34.982258, 25.726072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533058, 35.333580, 25.662136>,  <39.424915, 35.544373, 25.623775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533058, 35.333580, 25.662136>,  <39.713295, 34.982258, 25.726072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533058, 35.333580, 25.662136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178047, 0.087034, 0.980165,
		0.874795, 0.470114, 0.117162,
		-0.450592, 0.878304, -0.159839,
		39.397881, 35.597073, 25.614183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979870, 35.396545, 26.180969>,  <39.713295, 34.982258, 25.726072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979870, 35.396545, 26.180969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627110, 35.541504, 26.060358>,  <39.415455, 35.628479, 25.987991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627110, 35.541504, 26.060358>,  <39.979870, 35.396545, 26.180969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627110, 35.541504, 26.060358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360667, -0.106748, 0.926566,
		0.303597, 0.925891, 0.224846,
		-0.881900, 0.362397, -0.301530,
		39.362541, 35.650223, 25.969898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.388374, 40.346966, 21.795744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037945, 40.362194, 21.603476>,  <38.827686, 40.371330, 21.488113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037945, 40.362194, 21.603476>,  <39.388374, 40.346966, 21.795744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037945, 40.362194, 21.603476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479570, 0.172361, -0.860410,
		0.050088, -0.984298, -0.169261,
		-0.876073, 0.038076, -0.480673,
		38.775124, 40.373615, 21.459274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481674, 40.041626, 21.198359>,  <39.388374, 40.346966, 21.795744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481674, 40.041626, 21.198359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.157658, 40.260651, 21.114437>,  <38.963249, 40.392063, 21.064083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.157658, 40.260651, 21.114437>,  <39.481674, 40.041626, 21.198359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157658, 40.260651, 21.114437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301695, 0.082373, -0.949839,
		-0.502809, -0.832704, -0.231921,
		-0.810039, 0.547557, -0.209804,
		38.914646, 40.424919, 21.051497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215576, 39.803875, 20.632812>,  <39.481674, 40.041626, 21.198359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215576, 39.803875, 20.632812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052925, 40.169239, 20.640175>,  <38.955334, 40.388458, 20.644592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052925, 40.169239, 20.640175>,  <39.215576, 39.803875, 20.632812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052925, 40.169239, 20.640175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333647, 0.167225, -0.927747,
		-0.850491, -0.371104, -0.372754,
		-0.406625, 0.913410, 0.018406,
		38.930939, 40.443260, 20.645697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936043, 39.914776, 19.945749>,  <39.215576, 39.803875, 20.632812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936043, 39.914776, 19.945749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.964329, 40.279243, 20.108112>,  <38.981300, 40.497925, 20.205530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.964329, 40.279243, 20.108112>,  <38.936043, 39.914776, 19.945749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964329, 40.279243, 20.108112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381788, 0.351218, -0.854917,
		-0.921541, 0.215428, -0.323038,
		0.070717, 0.911173, 0.405910,
		38.985542, 40.552597, 20.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819206, 40.460300, 19.376631>,  <38.936043, 39.914776, 19.945749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819206, 40.460300, 19.376631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967045, 40.713463, 19.648754>,  <39.055748, 40.865360, 19.812029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967045, 40.713463, 19.648754>,  <38.819206, 40.460300, 19.376631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967045, 40.713463, 19.648754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626527, 0.370935, -0.685471,
		-0.686192, 0.679583, -0.259437,
		0.369600, 0.632909, 0.680310,
		39.077927, 40.903336, 19.852848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777843, 41.072247, 19.122890>,  <38.819206, 40.460300, 19.376631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777843, 41.072247, 19.122890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056988, 41.145138, 19.399958>,  <39.224472, 41.188873, 19.566198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056988, 41.145138, 19.399958>,  <38.777843, 41.072247, 19.122890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056988, 41.145138, 19.399958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559656, 0.464781, -0.686122,
		-0.446968, 0.866471, 0.222368,
		0.697857, 0.182225, 0.692668,
		39.266346, 41.199806, 19.607758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953064, 41.801628, 19.125908>,  <38.777843, 41.072247, 19.122890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953064, 41.801628, 19.125908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265476, 41.593815, 19.264511>,  <39.452923, 41.469128, 19.347673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265476, 41.593815, 19.264511>,  <38.953064, 41.801628, 19.125908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265476, 41.593815, 19.264511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576624, 0.386928, -0.719578,
		0.239774, 0.761819, 0.601781,
		0.781034, -0.519538, 0.346507,
		39.499786, 41.437954, 19.368464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421806, 42.090340, 18.778437>,  <38.953064, 41.801628, 19.125908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421806, 42.090340, 18.778437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.640430, 41.773842, 18.888128>,  <39.771606, 41.583942, 18.953943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.640430, 41.773842, 18.888128>,  <39.421806, 42.090340, 18.778437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640430, 41.773842, 18.888128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606932, 0.148660, -0.780726,
		0.576979, 0.593153, 0.561484,
		0.546560, -0.791246, 0.274230,
		39.804398, 41.536469, 18.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109337, 42.341892, 18.961542>,  <39.421806, 42.090340, 18.778437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109337, 42.341892, 18.961542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164963, 41.953812, 18.882181>,  <40.198338, 41.720963, 18.834564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164963, 41.953812, 18.882181>,  <40.109337, 42.341892, 18.961542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164963, 41.953812, 18.882181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693517, 0.238432, -0.679842,
		0.706891, -0.043055, 0.706011,
		0.139064, -0.970205, -0.198405,
		40.206680, 41.662750, 18.822660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812599, 42.245644, 18.983345>,  <40.109337, 42.341892, 18.961542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812599, 42.245644, 18.983345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.671837, 41.945740, 18.759195>,  <40.587379, 41.765797, 18.624706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.671837, 41.945740, 18.759195>,  <40.812599, 42.245644, 18.983345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671837, 41.945740, 18.759195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659582, 0.226161, -0.716801,
		0.664166, -0.621856, 0.414944,
		-0.351902, -0.749764, -0.560373,
		40.566265, 41.720810, 18.591084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442009, 42.065685, 18.578926>,  <40.812599, 42.245644, 18.983345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442009, 42.065685, 18.578926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131794, 41.902180, 18.386490>,  <40.945663, 41.804077, 18.271029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131794, 41.902180, 18.386490>,  <41.442009, 42.065685, 18.578926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131794, 41.902180, 18.386490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405314, 0.261858, -0.875871,
		0.484007, -0.874265, -0.037401,
		-0.775537, -0.408768, -0.481093,
		40.899132, 41.779549, 18.242163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707672, 41.647728, 18.005491>,  <41.442009, 42.065685, 18.578926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707672, 41.647728, 18.005491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332973, 41.742451, 17.902395>,  <41.108154, 41.799282, 17.840538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332973, 41.742451, 17.902395>,  <41.707672, 41.647728, 18.005491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332973, 41.742451, 17.902395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340314, 0.444119, -0.828821,
		-0.081802, -0.864108, -0.496615,
		-0.936747, 0.236804, -0.257738,
		41.051949, 41.813492, 17.825073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480259, 41.287262, 17.458200>,  <41.707672, 41.647728, 18.005491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480259, 41.287262, 17.458200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326916, 41.652512, 17.513681>,  <41.234909, 41.871662, 17.546970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326916, 41.652512, 17.513681>,  <41.480259, 41.287262, 17.458200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326916, 41.652512, 17.513681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376997, 0.291799, -0.879049,
		-0.843155, -0.284699, -0.456109,
		-0.383357, 0.913126, 0.138702,
		41.211910, 41.926449, 17.555292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002579, 41.359234, 16.869627>,  <41.480259, 41.287262, 17.458200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002579, 41.359234, 16.869627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143974, 41.725914, 16.944149>,  <41.228813, 41.945923, 16.988863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143974, 41.725914, 16.944149>,  <41.002579, 41.359234, 16.869627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143974, 41.725914, 16.944149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458234, 0.003940, -0.888823,
		-0.815515, 0.399566, -0.418669,
		0.353494, 0.916696, 0.186307,
		41.250023, 42.000923, 17.000042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237881, 40.634315, 16.958817>,  <41.002579, 41.359234, 16.869627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237881, 40.634315, 16.958817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.373611, 40.306839, 16.773516>,  <41.455051, 40.110352, 16.662334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.373611, 40.306839, 16.773516>,  <41.237881, 40.634315, 16.958817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373611, 40.306839, 16.773516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291345, -0.559723, 0.775776,
		-0.894414, -0.128275, -0.428450,
		0.339326, -0.818691, -0.463252,
		41.475410, 40.061234, 16.634541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851791, 40.147327, 17.199038>,  <41.237881, 40.634315, 16.958817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851791, 40.147327, 17.199038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130772, 39.913914, 17.032640>,  <41.298161, 39.773865, 16.932802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130772, 39.913914, 17.032640>,  <40.851791, 40.147327, 17.199038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130772, 39.913914, 17.032640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093751, -0.649791, 0.754309,
		-0.710469, -0.487098, -0.507907,
		0.697455, -0.583530, -0.415990,
		41.340008, 39.738853, 16.907843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497772, 39.461761, 17.174911>,  <40.851791, 40.147327, 17.199038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497772, 39.461761, 17.174911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896400, 39.428761, 17.177179>,  <41.135578, 39.408958, 17.178539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896400, 39.428761, 17.177179>,  <40.497772, 39.461761, 17.174911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896400, 39.428761, 17.177179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054755, -0.606909, 0.792883,
		-0.061973, -0.790477, -0.609348,
		0.996575, -0.082502, 0.005671,
		41.195374, 39.404011, 17.178881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625214, 38.800976, 17.091856>,  <40.497772, 39.461761, 17.174911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625214, 38.800976, 17.091856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.959473, 38.931164, 17.268837>,  <41.160027, 39.009277, 17.375025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.959473, 38.931164, 17.268837>,  <40.625214, 38.800976, 17.091856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959473, 38.931164, 17.268837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135942, -0.657914, 0.740722,
		0.532179, -0.679129, -0.505538,
		0.835646, 0.325473, 0.442451,
		41.210167, 39.028805, 17.401571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894558, 38.258411, 17.395554>,  <40.625214, 38.800976, 17.091856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894558, 38.258411, 17.395554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055656, 38.558586, 17.605181>,  <41.152317, 38.738689, 17.730957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055656, 38.558586, 17.605181>,  <40.894558, 38.258411, 17.395554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055656, 38.558586, 17.605181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010995, -0.568547, 0.822577,
		0.915246, -0.337050, -0.220728,
		0.402745, 0.750434, 0.524066,
		41.176479, 38.783718, 17.762402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485264, 37.950359, 17.682077>,  <40.894558, 38.258411, 17.395554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485264, 37.950359, 17.682077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428253, 38.283298, 17.896322>,  <41.394047, 38.483063, 18.024868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428253, 38.283298, 17.896322>,  <41.485264, 37.950359, 17.682077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428253, 38.283298, 17.896322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128473, -0.552114, 0.823811,
		0.981417, 0.048606, 0.185627,
		-0.142529, 0.832350, 0.535610,
		41.385494, 38.533005, 18.057005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907536, 37.798904, 18.296026>,  <41.485264, 37.950359, 17.682077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907536, 37.798904, 18.296026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.651390, 38.093632, 18.382774>,  <41.497704, 38.270470, 18.434824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.651390, 38.093632, 18.382774>,  <41.907536, 37.798904, 18.296026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651390, 38.093632, 18.382774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184190, -0.421435, 0.887956,
		0.745661, 0.528668, 0.405587,
		-0.640362, 0.736819, 0.216872,
		41.459282, 38.314678, 18.447836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005623, 38.045952, 18.904364>,  <41.907536, 37.798904, 18.296026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005623, 38.045952, 18.904364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.627213, 38.168728, 18.862741>,  <41.400166, 38.242393, 18.837769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.627213, 38.168728, 18.862741>,  <42.005623, 38.045952, 18.904364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627213, 38.168728, 18.862741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207739, -0.327840, 0.921611,
		0.248763, 0.893482, 0.373907,
		-0.946024, 0.306937, -0.104056,
		41.343407, 38.260811, 18.831524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806290, 38.177479, 19.556412>,  <42.005623, 38.045952, 18.904364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806290, 38.177479, 19.556412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.448662, 38.182964, 19.377325>,  <41.234085, 38.186256, 19.269873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.448662, 38.182964, 19.377325>,  <41.806290, 38.177479, 19.556412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448662, 38.182964, 19.377325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409498, -0.430088, 0.804572,
		-0.181522, 0.902682, 0.390146,
		-0.894070, 0.013717, -0.447717,
		41.180439, 38.187080, 19.243010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344486, 38.347294, 20.090551>,  <41.806290, 38.177479, 19.556412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344486, 38.347294, 20.090551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.113884, 38.190605, 19.803724>,  <40.975521, 38.096592, 19.631628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.113884, 38.190605, 19.803724>,  <41.344486, 38.347294, 20.090551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113884, 38.190605, 19.803724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387326, -0.641708, 0.661958,
		-0.719456, 0.659365, 0.218225,
		-0.576508, -0.391725, -0.717070,
		40.940933, 38.073086, 19.588604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706913, 38.176769, 20.459734>,  <41.344486, 38.347294, 20.090551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706913, 38.176769, 20.459734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678982, 37.957928, 20.126074>,  <40.662224, 37.826622, 19.925879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.678982, 37.957928, 20.126074>,  <40.706913, 38.176769, 20.459734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678982, 37.957928, 20.126074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596760, -0.647154, 0.474415,
		-0.799375, 0.530915, -0.281297,
		-0.069831, -0.547102, -0.834148,
		40.658031, 37.793797, 19.875830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021141, 38.135784, 20.168108>,  <40.706913, 38.176769, 20.459734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021141, 38.135784, 20.168108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209332, 37.792500, 20.086012>,  <40.322247, 37.586529, 20.036755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.209332, 37.792500, 20.086012>,  <40.021141, 38.135784, 20.168108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209332, 37.792500, 20.086012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574728, -0.474511, 0.666728,
		-0.669584, -0.195721, -0.716485,
		0.470473, -0.858215, -0.205238,
		40.350475, 37.535034, 20.024441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563812, 37.780937, 20.403124>,  <40.021141, 38.135784, 20.168108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563812, 37.780937, 20.403124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.878941, 37.536491, 20.372444>,  <40.068016, 37.389824, 20.354036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.878941, 37.536491, 20.372444>,  <39.563812, 37.780937, 20.403124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878941, 37.536491, 20.372444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379372, -0.579590, 0.721216,
		-0.485199, -0.539090, -0.688451,
		0.787819, -0.611112, -0.076701,
		40.115288, 37.353157, 20.349434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334179, 37.026218, 20.279268>,  <39.563812, 37.780937, 20.403124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334179, 37.026218, 20.279268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.701443, 37.033112, 20.437605>,  <39.921799, 37.037247, 20.532606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.701443, 37.033112, 20.437605>,  <39.334179, 37.026218, 20.279268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701443, 37.033112, 20.437605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268477, -0.707682, 0.653534,
		0.291390, -0.706321, -0.645137,
		0.918157, 0.017229, 0.395842,
		39.976891, 37.038280, 20.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031452, 36.330978, 20.123993>,  <39.334179, 37.026218, 20.279268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031452, 36.330978, 20.123993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649448, 36.219547, 20.083303>,  <38.420246, 36.152691, 20.058889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649448, 36.219547, 20.083303>,  <39.031452, 36.330978, 20.123993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649448, 36.219547, 20.083303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013136, 0.382408, -0.923900,
		0.296274, -0.881000, -0.368864,
		-0.955013, -0.278573, -0.101724,
		38.362946, 36.135975, 20.052786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024590, 35.931179, 19.587662>,  <39.031452, 36.330978, 20.123993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024590, 35.931179, 19.587662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653328, 36.068199, 19.645897>,  <38.430573, 36.150410, 19.680838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653328, 36.068199, 19.645897>,  <39.024590, 35.931179, 19.587662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653328, 36.068199, 19.645897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019448, 0.345989, -0.938037,
		-0.371698, -0.873471, -0.314468,
		-0.928150, 0.342550, 0.145590,
		38.374882, 36.170963, 19.689573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593742, 35.574276, 19.126377>,  <39.024590, 35.931179, 19.587662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593742, 35.574276, 19.126377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445637, 35.933735, 19.220465>,  <38.356773, 36.149410, 19.276918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445637, 35.933735, 19.220465>,  <38.593742, 35.574276, 19.126377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445637, 35.933735, 19.220465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067368, 0.278528, -0.958063,
		-0.926480, -0.338890, -0.163669,
		-0.370265, 0.898652, 0.235220,
		38.334557, 36.203331, 19.291031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438511, 35.775204, 18.451019>,  <38.593742, 35.574276, 19.126377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438511, 35.775204, 18.451019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372429, 36.109219, 18.660944>,  <38.332779, 36.309628, 18.786900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372429, 36.109219, 18.660944>,  <38.438511, 35.775204, 18.451019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372429, 36.109219, 18.660944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261597, 0.550165, -0.793023,
		-0.950934, 0.006282, -0.309330,
		-0.165201, 0.835032, 0.524814,
		38.322868, 36.359730, 18.818388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896019, 36.163334, 18.042967>,  <38.438511, 35.775204, 18.451019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896019, 36.163334, 18.042967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094925, 36.414841, 18.282091>,  <38.214268, 36.565746, 18.425566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094925, 36.414841, 18.282091>,  <37.896019, 36.163334, 18.042967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094925, 36.414841, 18.282091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191088, 0.592747, -0.782392,
		-0.846292, 0.503293, 0.174605,
		0.497269, 0.628766, 0.597810,
		38.244106, 36.603470, 18.461433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553757, 36.821472, 17.996761>,  <37.896019, 36.163334, 18.042967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553757, 36.821472, 17.996761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920059, 36.925106, 18.119570>,  <38.139843, 36.987286, 18.193254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920059, 36.925106, 18.119570>,  <37.553757, 36.821472, 17.996761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920059, 36.925106, 18.119570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064815, 0.658955, -0.749385,
		-0.396466, 0.706155, 0.586651,
		0.915758, 0.259082, 0.307023,
		38.194786, 37.002831, 18.211676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582375, 37.527840, 17.878599>,  <37.553757, 36.821472, 17.996761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582375, 37.527840, 17.878599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967110, 37.423767, 17.912487>,  <38.197948, 37.361324, 17.932819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967110, 37.423767, 17.912487>,  <37.582375, 37.527840, 17.878599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967110, 37.423767, 17.912487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255263, 0.741658, -0.620310,
		0.098561, 0.618261, 0.779768,
		0.961835, -0.260185, 0.084721,
		38.255661, 37.345711, 17.937902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344444, 38.257881, 18.015446>,  <37.582375, 37.527840, 17.878599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344444, 38.257881, 18.015446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004578, 38.368202, 17.835667>,  <36.800659, 38.434395, 17.727798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004578, 38.368202, 17.835667>,  <37.344444, 38.257881, 18.015446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004578, 38.368202, 17.835667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524660, -0.527767, 0.667977,
		-0.052972, 0.803363, 0.593128,
		-0.849662, 0.275806, -0.449449,
		36.749680, 38.450943, 17.700832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915382, 38.599407, 18.603544>,  <37.344444, 38.257881, 18.015446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915382, 38.599407, 18.603544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691441, 38.461567, 18.302130>,  <36.557076, 38.378864, 18.121281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691441, 38.461567, 18.302130>,  <36.915382, 38.599407, 18.603544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691441, 38.461567, 18.302130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617583, -0.432757, 0.656744,
		-0.552411, 0.833051, 0.029461,
		-0.559851, -0.344598, -0.753538,
		36.523487, 38.358189, 18.076069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263435, 38.802216, 18.819391>,  <36.915382, 38.599407, 18.603544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263435, 38.802216, 18.819391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.230118, 38.508656, 18.549742>,  <36.210125, 38.332520, 18.387951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.230118, 38.508656, 18.549742>,  <36.263435, 38.802216, 18.819391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230118, 38.508656, 18.549742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619417, -0.491789, 0.611937,
		-0.780631, 0.468538, -0.413628,
		-0.083298, -0.733905, -0.674126,
		36.205128, 38.288483, 18.347504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651554, 38.609131, 18.937330>,  <36.263435, 38.802216, 18.819391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651554, 38.609131, 18.937330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773212, 38.290127, 18.728918>,  <35.846207, 38.098724, 18.603870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773212, 38.290127, 18.728918>,  <35.651554, 38.609131, 18.937330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773212, 38.290127, 18.728918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532637, -0.595826, 0.601074,
		-0.789806, 0.094705, -0.606002,
		0.304147, -0.797510, -0.521030,
		35.864456, 38.050873, 18.572609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910625, 38.202873, 18.816923>,  <35.651554, 38.609131, 18.937330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910625, 38.202873, 18.816923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228203, 37.966408, 18.760096>,  <35.418747, 37.824528, 18.726000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228203, 37.966408, 18.760096>,  <34.910625, 38.202873, 18.816923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228203, 37.966408, 18.760096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432865, -0.713689, 0.550705,
		-0.426950, -0.375731, -0.822520,
		0.793941, -0.591164, -0.142069,
		35.466385, 37.789059, 18.717474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625076, 37.631786, 18.820000>,  <34.910625, 38.202873, 18.816923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625076, 37.631786, 18.820000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005707, 37.541729, 18.903727>,  <35.234085, 37.487694, 18.953962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005707, 37.541729, 18.903727>,  <34.625076, 37.631786, 18.820000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005707, 37.541729, 18.903727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306834, -0.653637, 0.691817,
		-0.018942, -0.722542, -0.691067,
		0.951574, -0.225147, 0.209320,
		35.291180, 37.474186, 18.966522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674911, 36.980198, 18.724350>,  <34.625076, 37.631786, 18.820000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674911, 36.980198, 18.724350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972214, 37.077389, 18.973677>,  <35.150597, 37.135704, 19.123274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972214, 37.077389, 18.973677>,  <34.674911, 36.980198, 18.724350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972214, 37.077389, 18.973677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312362, -0.697881, 0.644510,
		0.591603, -0.673739, -0.442810,
		0.743260, 0.242977, 0.623319,
		35.195190, 37.150280, 19.160673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.442383, 43.411182, 17.108940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.742920, 43.166958, 17.209099>,  <37.923241, 43.020424, 17.269194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.742920, 43.166958, 17.209099>,  <37.442383, 43.411182, 17.108940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742920, 43.166958, 17.209099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435192, -0.173198, 0.883521,
		-0.496078, -0.772797, -0.395843,
		0.751342, -0.610564, 0.250396,
		37.968323, 42.983788, 17.284218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131027, 42.757469, 17.301437>,  <37.442383, 43.411182, 17.108940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131027, 42.757469, 17.301437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501484, 42.765339, 17.452099>,  <37.723759, 42.770061, 17.542496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501484, 42.765339, 17.452099>,  <37.131027, 42.757469, 17.301437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501484, 42.765339, 17.452099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331313, -0.434791, 0.837370,
		0.180241, -0.900317, -0.396161,
		0.926145, 0.019675, 0.376653,
		37.779327, 42.771240, 17.565094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049690, 42.113304, 17.731623>,  <37.131027, 42.757469, 17.301437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049690, 42.113304, 17.731623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.366692, 42.337761, 17.827166>,  <37.556892, 42.472435, 17.884491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.366692, 42.337761, 17.827166>,  <37.049690, 42.113304, 17.731623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366692, 42.337761, 17.827166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241987, -0.070168, 0.967739,
		0.559800, -0.824740, 0.080181,
		0.792507, 0.561143, 0.238857,
		37.604443, 42.506104, 17.898823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592197, 41.688179, 18.053936>,  <37.049690, 42.113304, 17.731623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592197, 41.688179, 18.053936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626446, 42.068649, 18.172556>,  <37.646996, 42.296932, 18.243729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626446, 42.068649, 18.172556>,  <37.592197, 41.688179, 18.053936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626446, 42.068649, 18.172556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214664, -0.273042, 0.937746,
		0.972928, -0.143950, 0.180804,
		0.085622, 0.951171, 0.296551,
		37.652134, 42.354000, 18.261520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838375, 41.610733, 18.616655>,  <37.592197, 41.688179, 18.053936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838375, 41.610733, 18.616655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718906, 41.992416, 18.623308>,  <37.647224, 42.221428, 18.627300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718906, 41.992416, 18.623308>,  <37.838375, 41.610733, 18.616655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718906, 41.992416, 18.623308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324158, -0.117827, 0.938637,
		0.897616, 0.274956, 0.344506,
		-0.298676, 0.954210, 0.016634,
		37.629303, 42.278679, 18.628298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833054, 41.669373, 19.304731>,  <37.838375, 41.610733, 18.616655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833054, 41.669373, 19.304731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.624325, 41.991932, 19.193434>,  <37.499088, 42.185467, 19.126656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.624325, 41.991932, 19.193434>,  <37.833054, 41.669373, 19.304731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624325, 41.991932, 19.193434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486141, -0.013089, 0.873782,
		0.700975, 0.591227, 0.398854,
		-0.521824, 0.806399, -0.278245,
		37.467777, 42.233852, 19.109961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762394, 42.066036, 19.860666>,  <37.833054, 41.669373, 19.304731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762394, 42.066036, 19.860666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.461983, 42.168602, 19.617289>,  <37.281734, 42.230141, 19.471262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.461983, 42.168602, 19.617289>,  <37.762394, 42.066036, 19.860666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461983, 42.168602, 19.617289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643438, -0.077515, 0.761563,
		0.148112, 0.963454, 0.223203,
		-0.751033, 0.256415, -0.608442,
		37.236671, 42.245525, 19.434755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350025, 42.488838, 20.280804>,  <37.762394, 42.066036, 19.860666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350025, 42.488838, 20.280804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106525, 42.391788, 19.978662>,  <36.960426, 42.333561, 19.797379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106525, 42.391788, 19.978662>,  <37.350025, 42.488838, 20.280804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106525, 42.391788, 19.978662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781176, 0.017079, 0.624078,
		-0.138513, 0.969971, -0.199925,
		-0.608752, -0.242620, -0.755352,
		36.923901, 42.319004, 19.752056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815380, 42.956951, 20.315939>,  <37.350025, 42.488838, 20.280804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815380, 42.956951, 20.315939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692879, 42.613209, 20.152124>,  <36.619377, 42.406963, 20.053837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.692879, 42.613209, 20.152124>,  <36.815380, 42.956951, 20.315939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692879, 42.613209, 20.152124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652507, -0.123743, 0.747612,
		-0.693140, 0.496184, -0.522837,
		-0.306255, -0.859354, -0.409534,
		36.601002, 42.355404, 20.029264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141514, 42.943169, 20.440086>,  <36.815380, 42.956951, 20.315939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141514, 42.943169, 20.440086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.205997, 42.558231, 20.352530>,  <36.244686, 42.327271, 20.299995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.205997, 42.558231, 20.352530>,  <36.141514, 42.943169, 20.440086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205997, 42.558231, 20.352530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613571, -0.271448, 0.741516,
		-0.773009, 0.014770, -0.634223,
		0.161206, -0.962340, -0.218894,
		36.254360, 42.269531, 20.286861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504082, 42.645679, 20.571161>,  <36.141514, 42.943169, 20.440086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504082, 42.645679, 20.571161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.763584, 42.341286, 20.569090>,  <35.919285, 42.158649, 20.567846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.763584, 42.341286, 20.569090>,  <35.504082, 42.645679, 20.571161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763584, 42.341286, 20.569090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463225, -0.400291, 0.790689,
		-0.603773, -0.510563, -0.612196,
		0.648754, -0.760981, -0.005179,
		35.958210, 42.112991, 20.567537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098736, 42.037991, 20.548182>,  <35.504082, 42.645679, 20.571161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098736, 42.037991, 20.548182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457516, 41.924229, 20.683592>,  <35.672783, 41.855972, 20.764839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457516, 41.924229, 20.683592>,  <35.098736, 42.037991, 20.548182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457516, 41.924229, 20.683592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441730, -0.543634, 0.713678,
		-0.018935, -0.789670, -0.613239,
		0.896948, -0.284400, 0.338527,
		35.726601, 41.838909, 20.785151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815788, 41.745007, 19.952160>,  <35.098736, 42.037991, 20.548182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815788, 41.745007, 19.952160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.463905, 41.620739, 19.808157>,  <34.252777, 41.546177, 19.721756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.463905, 41.620739, 19.808157>,  <34.815788, 41.745007, 19.952160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463905, 41.620739, 19.808157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367489, 0.036310, -0.929319,
		0.301786, -0.949823, 0.082227,
		-0.879703, -0.310673, -0.360007,
		34.199993, 41.527538, 19.700155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911663, 41.096474, 19.540224>,  <34.815788, 41.745007, 19.952160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911663, 41.096474, 19.540224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.584217, 41.276264, 19.397200>,  <34.387749, 41.384136, 19.311386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.584217, 41.276264, 19.397200>,  <34.911663, 41.096474, 19.540224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584217, 41.276264, 19.397200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287829, -0.217687, -0.932613,
		-0.497022, -0.866363, 0.048829,
		-0.818611, 0.449475, -0.357559,
		34.338634, 41.411106, 19.289932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710453, 40.733295, 18.949310>,  <34.911663, 41.096474, 19.540224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710453, 40.733295, 18.949310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.507511, 41.073071, 18.891277>,  <34.385746, 41.276936, 18.856459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.507511, 41.073071, 18.891277>,  <34.710453, 40.733295, 18.949310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507511, 41.073071, 18.891277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399941, 0.082981, -0.912777,
		-0.763306, -0.521128, -0.381825,
		-0.507357, 0.849435, -0.145081,
		34.355305, 41.327900, 18.847754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509743, 40.805168, 18.206572>,  <34.710453, 40.733295, 18.949310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509743, 40.805168, 18.206572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.452927, 41.188091, 18.307281>,  <34.418839, 41.417843, 18.367706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.452927, 41.188091, 18.307281>,  <34.509743, 40.805168, 18.206572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452927, 41.188091, 18.307281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252288, 0.280964, -0.925965,
		-0.957171, -0.068005, -0.281425,
		-0.142040, 0.957306, 0.251774,
		34.410313, 41.475285, 18.382814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053200, 41.101830, 17.659428>,  <34.509743, 40.805168, 18.206572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053200, 41.101830, 17.659428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.185928, 41.435486, 17.835661>,  <34.265564, 41.635677, 17.941401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.185928, 41.435486, 17.835661>,  <34.053200, 41.101830, 17.659428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185928, 41.435486, 17.835661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401184, 0.297925, -0.866194,
		-0.853785, 0.464174, -0.235785,
		0.331818, 0.834136, 0.440583,
		34.285473, 41.685726, 17.967836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867779, 41.648430, 17.296385>,  <34.053200, 41.101830, 17.659428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867779, 41.648430, 17.296385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187061, 41.802338, 17.481777>,  <34.378632, 41.894684, 17.593012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187061, 41.802338, 17.481777>,  <33.867779, 41.648430, 17.296385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187061, 41.802338, 17.481777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435489, 0.162997, -0.885314,
		-0.416188, 0.908507, -0.037457,
		0.798209, 0.384769, 0.463482,
		34.426525, 41.917767, 17.620821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955833, 42.213444, 17.025873>,  <33.867779, 41.648430, 17.296385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955833, 42.213444, 17.025873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.321106, 42.195839, 17.187941>,  <34.540272, 42.185276, 17.285181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.321106, 42.195839, 17.187941>,  <33.955833, 42.213444, 17.025873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321106, 42.195839, 17.187941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398348, 0.306452, -0.864527,
		-0.086116, 0.950868, 0.297378,
		0.913183, -0.044010, 0.405167,
		34.595062, 42.182636, 17.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322620, 42.849209, 16.882029>,  <33.955833, 42.213444, 17.025873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322620, 42.849209, 16.882029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.601864, 42.570480, 16.947853>,  <34.769409, 42.403244, 16.987347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.601864, 42.570480, 16.947853>,  <34.322620, 42.849209, 16.882029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601864, 42.570480, 16.947853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496854, 0.305989, -0.812100,
		0.515536, 0.648698, 0.559833,
		0.698111, -0.696822, 0.164560,
		34.811298, 42.361435, 16.997221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944546, 43.237480, 16.778292>,  <34.322620, 42.849209, 16.882029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944546, 43.237480, 16.778292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.072357, 42.860477, 16.739138>,  <35.149044, 42.634277, 16.715645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.072357, 42.860477, 16.739138>,  <34.944546, 43.237480, 16.778292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072357, 42.860477, 16.739138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621821, 0.286509, -0.728870,
		0.715009, 0.172030, 0.677619,
		0.319532, -0.942506, -0.097885,
		35.168217, 42.577724, 16.709772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747650, 43.236454, 16.772583>,  <34.944546, 43.237480, 16.778292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747650, 43.236454, 16.772583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.631210, 42.886238, 16.618341>,  <35.561348, 42.676109, 16.525797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.631210, 42.886238, 16.618341>,  <35.747650, 43.236454, 16.772583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631210, 42.886238, 16.618341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698290, 0.081066, -0.711210,
		0.653953, -0.476295, 0.587783,
		-0.291096, -0.875541, -0.385606,
		35.543880, 42.623577, 16.502659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300800, 42.959858, 16.529430>,  <35.747650, 43.236454, 16.772583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300800, 42.959858, 16.529430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.049080, 42.717308, 16.334991>,  <35.898048, 42.571777, 16.218328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.049080, 42.717308, 16.334991>,  <36.300800, 42.959858, 16.529430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049080, 42.717308, 16.334991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625891, -0.024655, -0.779521,
		0.460695, -0.794799, 0.395038,
		-0.629302, -0.606372, -0.486099,
		35.860291, 42.535397, 16.189161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642838, 42.298378, 16.322016>,  <36.300800, 42.959858, 16.529430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642838, 42.298378, 16.322016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.336506, 42.410202, 16.090376>,  <36.152706, 42.477295, 15.951392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.336506, 42.410202, 16.090376>,  <36.642838, 42.298378, 16.322016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336506, 42.410202, 16.090376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635378, 0.190307, -0.748384,
		-0.099010, -0.941080, -0.323366,
		-0.765828, 0.279557, -0.579099,
		36.106758, 42.494068, 15.916646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801876, 41.981152, 15.692396>,  <36.642838, 42.298378, 16.322016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801876, 41.981152, 15.692396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.524807, 42.253426, 15.597002>,  <36.358566, 42.416790, 15.539765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.524807, 42.253426, 15.597002>,  <36.801876, 41.981152, 15.692396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524807, 42.253426, 15.597002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611156, 0.378337, -0.695233,
		-0.383006, -0.627321, -0.678067,
		-0.692672, 0.680683, -0.238486,
		36.317005, 42.457630, 15.525456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969116, 41.326405, 15.981786>,  <36.801876, 41.981152, 15.692396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969116, 41.326405, 15.981786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.942585, 41.027641, 15.717140>,  <36.926666, 40.848385, 15.558352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.942585, 41.027641, 15.717140>,  <36.969116, 41.326405, 15.981786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942585, 41.027641, 15.717140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040199, -0.660536, 0.749717,
		-0.996988, 0.076325, 0.013789,
		-0.066330, -0.746905, -0.661615,
		36.922688, 40.803570, 15.518656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423157, 40.859547, 16.170650>,  <36.969116, 41.326405, 15.981786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423157, 40.859547, 16.170650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596092, 40.627823, 15.894249>,  <36.699852, 40.488789, 15.728408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596092, 40.627823, 15.894249>,  <36.423157, 40.859547, 16.170650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596092, 40.627823, 15.894249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104046, -0.793255, 0.599933,
		-0.895690, -0.187475, -0.403227,
		0.432335, -0.579309, -0.691005,
		36.725792, 40.454029, 15.686948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048847, 40.229233, 16.122864>,  <36.423157, 40.859547, 16.170650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048847, 40.229233, 16.122864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400047, 40.121536, 15.964561>,  <36.610767, 40.056919, 15.869580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400047, 40.121536, 15.964561>,  <36.048847, 40.229233, 16.122864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400047, 40.121536, 15.964561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041207, -0.781219, 0.622895,
		-0.476877, -0.563212, -0.674819,
		0.878004, -0.269237, -0.395754,
		36.663448, 40.040764, 15.845836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030258, 39.598568, 15.728374>,  <36.048847, 40.229233, 16.122864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030258, 39.598568, 15.728374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404770, 39.650700, 15.858850>,  <36.629478, 39.681976, 15.937135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404770, 39.650700, 15.858850>,  <36.030258, 39.598568, 15.728374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404770, 39.650700, 15.858850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068280, -0.843383, 0.532957,
		0.344558, -0.521268, -0.780742,
		0.936278, 0.130326, 0.326187,
		36.685654, 39.689796, 15.956706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321812, 38.926235, 15.624966>,  <36.030258, 39.598568, 15.728374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321812, 38.926235, 15.624966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547531, 39.118790, 15.893244>,  <36.682964, 39.234322, 16.054211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547531, 39.118790, 15.893244>,  <36.321812, 38.926235, 15.624966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547531, 39.118790, 15.893244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045608, -0.792987, 0.607529,
		0.824308, -0.373419, -0.425529,
		0.564302, 0.481384, 0.670696,
		36.716824, 39.263206, 16.094452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845451, 38.475094, 15.939748>,  <36.321812, 38.926235, 15.624966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845451, 38.475094, 15.939748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.801010, 38.756836, 16.220188>,  <36.774345, 38.925880, 16.388453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.801010, 38.756836, 16.220188>,  <36.845451, 38.475094, 15.939748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801010, 38.756836, 16.220188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095500, -0.709772, 0.697928,
		0.989209, 0.010590, 0.146127,
		-0.111108, 0.704352, 0.701101,
		36.767677, 38.968140, 16.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226345, 38.242596, 16.466869>,  <36.845451, 38.475094, 15.939748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226345, 38.242596, 16.466869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.021862, 38.524170, 16.664104>,  <36.899170, 38.693115, 16.782446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.021862, 38.524170, 16.664104>,  <37.226345, 38.242596, 16.466869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021862, 38.524170, 16.664104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054332, -0.599040, 0.798873,
		0.857737, 0.381601, 0.344482,
		-0.511210, 0.703940, 0.493086,
		36.868500, 38.735352, 16.812031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497635, 38.313732, 17.148031>,  <37.226345, 38.242596, 16.466869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497635, 38.313732, 17.148031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.123581, 38.454769, 17.161882>,  <36.899147, 38.539391, 17.170193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.123581, 38.454769, 17.161882>,  <37.497635, 38.313732, 17.148031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123581, 38.454769, 17.161882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167330, -0.525695, 0.834054,
		0.312284, 0.774160, 0.550595,
		-0.935136, 0.352592, 0.034626,
		36.843040, 38.560547, 17.172270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100098, 38.204987, 17.718328>,  <37.497635, 38.313732, 17.148031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100098, 38.204987, 17.718328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351086, 37.894478, 17.694067>,  <38.501678, 37.708172, 17.679510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.351086, 37.894478, 17.694067>,  <38.100098, 38.204987, 17.718328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351086, 37.894478, 17.694067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507742, 0.466982, -0.723966,
		0.590320, 0.423471, 0.687164,
		0.627472, -0.776273, -0.060655,
		38.539326, 37.661594, 17.675871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765484, 38.502724, 17.706842>,  <38.100098, 38.204987, 17.718328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765484, 38.502724, 17.706842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.759048, 38.145561, 17.526861>,  <38.755188, 37.931263, 17.418873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.759048, 38.145561, 17.526861>,  <38.765484, 38.502724, 17.706842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759048, 38.145561, 17.526861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404053, 0.405825, -0.819785,
		0.914594, -0.194990, 0.354255,
		-0.016085, -0.892908, -0.449952,
		38.754223, 37.877689, 17.391876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443352, 38.400906, 17.388844>,  <38.765484, 38.502724, 17.706842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443352, 38.400906, 17.388844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.204624, 38.134895, 17.209265>,  <39.061390, 37.975288, 17.101517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.204624, 38.134895, 17.209265>,  <39.443352, 38.400906, 17.388844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204624, 38.134895, 17.209265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301813, 0.332370, -0.893554,
		0.743451, -0.668786, 0.002348,
		-0.596816, -0.665023, -0.448949,
		39.025581, 37.935387, 17.074579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907768, 38.041035, 16.907593>,  <39.443352, 38.400906, 17.388844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907768, 38.041035, 16.907593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.524254, 38.020569, 16.795805>,  <39.294144, 38.008289, 16.728731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.524254, 38.020569, 16.795805>,  <39.907768, 38.041035, 16.907593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524254, 38.020569, 16.795805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251144, 0.307306, -0.917872,
		0.132847, -0.950234, -0.281792,
		-0.958790, -0.051166, -0.279471,
		39.236618, 38.005219, 16.711964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910843, 37.624218, 16.316963>,  <39.907768, 38.041035, 16.907593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910843, 37.624218, 16.316963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.570759, 37.831326, 16.278906>,  <39.366707, 37.955589, 16.256071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.570759, 37.831326, 16.278906>,  <39.910843, 37.624218, 16.316963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570759, 37.831326, 16.278906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222002, 0.188759, -0.956601,
		-0.477338, -0.834438, -0.275431,
		-0.850214, 0.517768, -0.095145,
		39.315693, 37.986656, 16.250362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775097, 37.563633, 15.587203>,  <39.910843, 37.624218, 16.316963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775097, 37.563633, 15.587203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.528809, 37.860546, 15.692961>,  <39.381035, 38.038696, 15.756415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.528809, 37.860546, 15.692961>,  <39.775097, 37.563633, 15.587203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528809, 37.860546, 15.692961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173274, 0.454873, -0.873537,
		-0.768679, -0.492040, -0.408692,
		-0.615718, 0.742285, 0.264394,
		39.344093, 38.083233, 15.772279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336624, 37.718319, 14.985988>,  <39.775097, 37.563633, 15.587203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336624, 37.718319, 14.985988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.342766, 38.054531, 15.202603>,  <39.346451, 38.256260, 15.332573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.342766, 38.054531, 15.202603>,  <39.336624, 37.718319, 14.985988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342766, 38.054531, 15.202603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251351, 0.520968, -0.815730,
		-0.967774, 0.148639, -0.203272,
		0.015351, 0.840535, 0.541540,
		39.347370, 38.306690, 15.365066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047302, 38.144154, 14.617321>,  <39.336624, 37.718319, 14.985988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047302, 38.144154, 14.617321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228962, 38.387104, 14.878040>,  <39.337959, 38.532875, 15.034472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228962, 38.387104, 14.878040>,  <39.047302, 38.144154, 14.617321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228962, 38.387104, 14.878040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173893, 0.657095, -0.733476,
		-0.873790, 0.446451, 0.192801,
		0.454150, 0.607378, 0.651798,
		39.365208, 38.569317, 15.073580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926857, 38.817551, 14.320254>,  <39.047302, 38.144154, 14.617321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926857, 38.817551, 14.320254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.232914, 38.870808, 14.572233>,  <39.416550, 38.902760, 14.723420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.232914, 38.870808, 14.572233>,  <38.926857, 38.817551, 14.320254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232914, 38.870808, 14.572233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351881, 0.732881, -0.582293,
		-0.539203, 0.667203, 0.513908,
		0.765141, 0.133140, 0.629947,
		39.462456, 38.910751, 14.761217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.780853, 33.084251, 29.229959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105782, 33.306538, 29.300741>,  <34.300739, 33.439911, 29.343210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105782, 33.306538, 29.300741>,  <33.780853, 33.084251, 29.229959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105782, 33.306538, 29.300741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137106, 0.112945, -0.984096,
		-0.566868, 0.823662, 0.015555,
		0.812319, 0.555720, 0.176954,
		34.349476, 33.473255, 29.353827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814346, 33.701897, 28.753553>,  <33.780853, 33.084251, 29.229959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814346, 33.701897, 28.753553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201591, 33.648106, 28.838100>,  <34.433937, 33.615829, 28.888828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201591, 33.648106, 28.838100>,  <33.814346, 33.701897, 28.753553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201591, 33.648106, 28.838100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230925, 0.151899, -0.961041,
		0.097136, 0.979204, 0.178111,
		0.968111, -0.134482, 0.211368,
		34.492023, 33.607761, 28.901510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133450, 34.208939, 28.345388>,  <33.814346, 33.701897, 28.753553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133450, 34.208939, 28.345388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420803, 33.950123, 28.447573>,  <34.593216, 33.794834, 28.508883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420803, 33.950123, 28.447573>,  <34.133450, 34.208939, 28.345388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420803, 33.950123, 28.447573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470626, 0.181624, -0.863437,
		0.512281, 0.740508, 0.434990,
		0.718387, -0.647040, 0.255460,
		34.636318, 33.756012, 28.524210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752178, 34.572155, 28.184359>,  <34.133450, 34.208939, 28.345388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752178, 34.572155, 28.184359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834560, 34.180805, 28.191971>,  <34.883987, 33.945995, 28.196539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834560, 34.180805, 28.191971>,  <34.752178, 34.572155, 28.184359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834560, 34.180805, 28.191971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529765, 0.095125, -0.842793,
		0.822759, 0.183656, 0.537902,
		0.205951, -0.978377, 0.019030,
		34.896347, 33.887291, 28.197680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567429, 34.514301, 28.089533>,  <34.752178, 34.572155, 28.184359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567429, 34.514301, 28.089533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399498, 34.170860, 27.971859>,  <35.298740, 33.964794, 27.901255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399498, 34.170860, 27.971859>,  <35.567429, 34.514301, 28.089533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399498, 34.170860, 27.971859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567477, 0.004641, -0.823376,
		0.708321, -0.512615, 0.485291,
		-0.419823, -0.858606, -0.294185,
		35.273552, 33.913277, 27.883604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093845, 34.224335, 27.658886>,  <35.567429, 34.514301, 28.089533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093845, 34.224335, 27.658886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769707, 34.008961, 27.566425>,  <35.575222, 33.879738, 27.510948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769707, 34.008961, 27.566425>,  <36.093845, 34.224335, 27.658886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769707, 34.008961, 27.566425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248632, 0.041254, -0.967719,
		0.530587, -0.841659, 0.100442,
		-0.810346, -0.538432, -0.231152,
		35.526604, 33.847431, 27.497080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267799, 33.593872, 27.125156>,  <36.093845, 34.224335, 27.658886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267799, 33.593872, 27.125156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883816, 33.702393, 27.097216>,  <35.653427, 33.767506, 27.080452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883816, 33.702393, 27.097216>,  <36.267799, 33.593872, 27.125156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883816, 33.702393, 27.097216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054984, -0.062029, -0.996559,
		-0.274705, -0.960492, 0.044627,
		-0.959955, 0.271305, -0.069851,
		35.595829, 33.783783, 27.076260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165913, 33.305351, 26.621363>,  <36.267799, 33.593872, 27.125156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165913, 33.305351, 26.621363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838558, 33.533745, 26.647381>,  <35.642147, 33.670780, 26.662992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838558, 33.533745, 26.647381>,  <36.165913, 33.305351, 26.621363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838558, 33.533745, 26.647381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041390, 0.054330, -0.997665,
		-0.573182, -0.819163, -0.020830,
		-0.818382, 0.570982, 0.065046,
		35.593044, 33.705040, 26.666895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586189, 32.976864, 26.248861>,  <36.165913, 33.305351, 26.621363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586189, 32.976864, 26.248861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499474, 33.366348, 26.276836>,  <35.447445, 33.600040, 26.293621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499474, 33.366348, 26.276836>,  <35.586189, 32.976864, 26.248861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499474, 33.366348, 26.276836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174914, 0.031737, -0.984072,
		-0.960421, -0.225566, 0.163435,
		-0.216786, 0.973711, 0.069935,
		35.434437, 33.658463, 26.297817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027809, 33.103031, 25.817404>,  <35.586189, 32.976864, 26.248861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027809, 33.103031, 25.817404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216183, 33.454823, 25.844967>,  <35.329205, 33.665897, 25.861504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216183, 33.454823, 25.844967>,  <35.027809, 33.103031, 25.817404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216183, 33.454823, 25.844967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136003, 0.149558, -0.979355,
		-0.871623, 0.451838, 0.190043,
		0.470932, 0.879474, 0.068906,
		35.357464, 33.718666, 25.865639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739399, 33.384872, 25.246861>,  <35.027809, 33.103031, 25.817404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739399, 33.384872, 25.246861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044098, 33.614956, 25.366106>,  <35.226917, 33.753006, 25.437653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044098, 33.614956, 25.366106>,  <34.739399, 33.384872, 25.246861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044098, 33.614956, 25.366106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149479, 0.291686, -0.944762,
		-0.630395, 0.764232, 0.136208,
		0.761747, 0.575213, 0.298114,
		35.272621, 33.787521, 25.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657948, 34.015991, 24.892756>,  <34.739399, 33.384872, 25.246861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657948, 34.015991, 24.892756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039967, 33.958473, 24.996452>,  <35.269176, 33.923962, 25.058670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039967, 33.958473, 24.996452>,  <34.657948, 34.015991, 24.892756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039967, 33.958473, 24.996452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267977, 0.044780, -0.962384,
		0.126773, 0.988594, 0.081300,
		0.955048, -0.143791, 0.259244,
		35.326481, 33.915337, 25.074226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425461, 34.684341, 24.940340>,  <34.657948, 34.015991, 24.892756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425461, 34.684341, 24.940340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085934, 34.630749, 24.735771>,  <33.882217, 34.598595, 24.613029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085934, 34.630749, 24.735771>,  <34.425461, 34.684341, 24.940340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085934, 34.630749, 24.735771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472216, -0.242851, 0.847370,
		-0.237728, 0.960767, 0.142870,
		-0.848821, -0.133978, -0.511422,
		33.831287, 34.590553, 24.582344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010139, 34.995380, 25.298550>,  <34.425461, 34.684341, 24.940340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010139, 34.995380, 25.298550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760384, 34.779686, 25.072502>,  <33.610531, 34.650269, 24.936874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.760384, 34.779686, 25.072502>,  <34.010139, 34.995380, 25.298550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760384, 34.779686, 25.072502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574050, -0.173852, 0.800151,
		-0.529720, 0.824013, -0.200999,
		-0.624390, -0.539239, -0.565118,
		33.573067, 34.617916, 24.902967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309315, 35.360352, 25.382147>,  <34.010139, 34.995380, 25.298550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309315, 35.360352, 25.382147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250340, 34.990829, 25.240808>,  <33.214954, 34.769115, 25.156006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250340, 34.990829, 25.240808>,  <33.309315, 35.360352, 25.382147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250340, 34.990829, 25.240808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580425, -0.208458, 0.787180,
		-0.800856, 0.321149, -0.505463,
		-0.147434, -0.923801, -0.353348,
		33.206108, 34.713688, 25.134804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638855, 35.229488, 25.562365>,  <33.309315, 35.360352, 25.382147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638855, 35.229488, 25.562365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798092, 34.871529, 25.481693>,  <32.893635, 34.656754, 25.433290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798092, 34.871529, 25.481693>,  <32.638855, 35.229488, 25.562365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798092, 34.871529, 25.481693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533871, -0.404795, 0.742377,
		-0.745992, -0.187864, -0.638908,
		0.398092, -0.894901, -0.201679,
		32.917519, 34.603058, 25.421190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049397, 34.752960, 25.525949>,  <32.638855, 35.229488, 25.562365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049397, 34.752960, 25.525949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360832, 34.511391, 25.594151>,  <32.547695, 34.366447, 25.635071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360832, 34.511391, 25.594151>,  <32.049397, 34.752960, 25.525949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360832, 34.511391, 25.594151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542992, -0.512163, 0.665469,
		-0.314567, -0.610710, -0.726692,
		0.778593, -0.603922, 0.170501,
		32.594410, 34.330215, 25.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821852, 34.136696, 25.404778>,  <32.049397, 34.752960, 25.525949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821852, 34.136696, 25.404778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142036, 34.062969, 25.632914>,  <32.334148, 34.018734, 25.769794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142036, 34.062969, 25.632914>,  <31.821852, 34.136696, 25.404778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142036, 34.062969, 25.632914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548850, -0.607808, 0.573875,
		0.240880, -0.772396, -0.587691,
		0.800463, -0.184319, 0.570338,
		32.382175, 34.007675, 25.804014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922077, 33.422909, 25.361383>,  <31.821852, 34.136696, 25.404778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922077, 33.422909, 25.361383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100002, 33.529949, 25.703268>,  <32.206757, 33.594173, 25.908400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100002, 33.529949, 25.703268>,  <31.922077, 33.422909, 25.361383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100002, 33.529949, 25.703268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645494, -0.565772, 0.513069,
		0.620870, -0.779930, -0.078927,
		0.444813, 0.267602, 0.854711,
		32.233448, 33.610229, 25.959681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056683, 32.825325, 25.770611>,  <31.922077, 33.422909, 25.361383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056683, 32.825325, 25.770611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061634, 33.122368, 26.038456>,  <32.064606, 33.300594, 26.199163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061634, 33.122368, 26.038456>,  <32.056683, 32.825325, 25.770611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061634, 33.122368, 26.038456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685689, -0.481108, 0.546229,
		0.727789, -0.465910, 0.503240,
		0.012381, 0.742606, 0.669614,
		32.065350, 33.345150, 26.239340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959557, 32.530128, 26.426737>,  <32.056683, 32.825325, 25.770611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959557, 32.530128, 26.426737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895615, 32.908108, 26.540947>,  <31.857250, 33.134895, 26.609472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895615, 32.908108, 26.540947>,  <31.959557, 32.530128, 26.426737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895615, 32.908108, 26.540947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758371, -0.302719, 0.577265,
		0.631918, -0.124254, 0.765011,
		-0.159856, 0.944946, 0.285524,
		31.847658, 33.191593, 26.626604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954048, 32.588718, 27.232651>,  <31.959557, 32.530128, 26.426737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954048, 32.588718, 27.232651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768040, 32.901463, 27.066540>,  <31.656435, 33.089108, 26.966873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768040, 32.901463, 27.066540>,  <31.954048, 32.588718, 27.232651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768040, 32.901463, 27.066540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838174, -0.237821, 0.490822,
		0.284990, 0.576318, 0.765923,
		-0.465022, 0.781856, -0.415278,
		31.628532, 33.136021, 26.941956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609035, 32.919342, 27.737413>,  <31.954048, 32.588718, 27.232651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609035, 32.919342, 27.737413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420748, 33.050289, 27.409693>,  <31.307775, 33.128857, 27.213060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420748, 33.050289, 27.409693>,  <31.609035, 32.919342, 27.737413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420748, 33.050289, 27.409693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881912, -0.201498, 0.426181,
		-0.025572, 0.923164, 0.383555,
		-0.470721, 0.327364, -0.819301,
		31.279531, 33.148499, 27.163902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201229, 33.498844, 27.928692>,  <31.609035, 32.919342, 27.737413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201229, 33.498844, 27.928692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.039774, 33.350689, 27.594055>,  <30.942902, 33.261795, 27.393272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.039774, 33.350689, 27.594055>,  <31.201229, 33.498844, 27.928692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039774, 33.350689, 27.594055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878425, -0.098792, 0.467558,
		-0.255827, 0.923608, -0.285483,
		-0.403637, -0.370389, -0.836594,
		30.918682, 33.239571, 27.343077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628021, 33.947796, 27.872623>,  <31.201229, 33.498844, 27.928692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628021, 33.947796, 27.872623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.548716, 33.628162, 27.645588>,  <30.501133, 33.436382, 27.509367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.548716, 33.628162, 27.645588>,  <30.628021, 33.947796, 27.872623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548716, 33.628162, 27.645588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893859, -0.090178, 0.439185,
		-0.402129, 0.594420, -0.696389,
		-0.198262, -0.799083, -0.567591,
		30.489237, 33.388439, 27.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932966, 34.028263, 27.631891>,  <30.628021, 33.947796, 27.872623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932966, 34.028263, 27.631891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.017914, 33.639420, 27.592100>,  <30.068882, 33.406113, 27.568226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.017914, 33.639420, 27.592100>,  <29.932966, 34.028263, 27.631891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017914, 33.639420, 27.592100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878687, -0.234510, 0.415830,
		-0.427563, -0.000897, -0.903985,
		0.212367, -0.972113, -0.099479,
		30.081625, 33.347786, 27.562256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546879, 34.642246, 27.507792>,  <29.932966, 34.028263, 27.631891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546879, 34.642246, 27.507792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284590, 34.933483, 27.587706>,  <29.127216, 35.108223, 27.635654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284590, 34.933483, 27.587706>,  <29.546879, 34.642246, 27.507792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284590, 34.933483, 27.587706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391242, 0.553998, -0.734858,
		-0.645724, -0.403698, -0.648128,
		-0.655722, 0.728089, 0.199787,
		29.087873, 35.151909, 27.647642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196602, 34.817455, 26.905743>,  <29.546879, 34.642246, 27.507792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196602, 34.817455, 26.905743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254726, 35.112827, 27.169138>,  <29.289602, 35.290051, 27.327175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254726, 35.112827, 27.169138>,  <29.196602, 34.817455, 26.905743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254726, 35.112827, 27.169138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471878, 0.533254, -0.702119,
		-0.869607, 0.412754, -0.270959,
		0.145312, 0.738427, 0.658491,
		29.298321, 35.334354, 27.366686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030296, 35.310085, 26.521492>,  <29.196602, 34.817455, 26.905743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030296, 35.310085, 26.521492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.240582, 35.498917, 26.804552>,  <29.366753, 35.612213, 26.974388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.240582, 35.498917, 26.804552>,  <29.030296, 35.310085, 26.521492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240582, 35.498917, 26.804552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251224, 0.708616, -0.659356,
		-0.812718, 0.524411, 0.253933,
		0.525714, 0.472077, 0.707650,
		29.398296, 35.640541, 27.016848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850380, 35.972652, 26.498516>,  <29.030296, 35.310085, 26.521492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850380, 35.972652, 26.498516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203812, 35.980839, 26.685650>,  <29.415871, 35.985748, 26.797930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.203812, 35.980839, 26.685650>,  <28.850380, 35.972652, 26.498516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203812, 35.980839, 26.685650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336286, 0.667522, -0.664324,
		-0.325885, 0.744309, 0.582926,
		0.883578, 0.020463, 0.467836,
		29.468885, 35.986977, 26.826000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037512, 36.605431, 26.468855>,  <28.850380, 35.972652, 26.498516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037512, 36.605431, 26.468855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.385969, 36.418587, 26.529411>,  <29.595043, 36.306480, 26.565746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.385969, 36.418587, 26.529411>,  <29.037512, 36.605431, 26.468855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385969, 36.418587, 26.529411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444228, 0.618352, -0.648307,
		0.209216, 0.632021, 0.746176,
		0.871143, -0.467108, 0.151392,
		29.647312, 36.278454, 26.574829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553925, 37.183651, 26.526777>,  <29.037512, 36.605431, 26.468855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553925, 37.183651, 26.526777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.763834, 36.846340, 26.480316>,  <29.889780, 36.643951, 26.452440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.763834, 36.846340, 26.480316>,  <29.553925, 37.183651, 26.526777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763834, 36.846340, 26.480316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685890, 0.499697, -0.529017,
		0.504150, 0.197946, 0.840625,
		0.524774, -0.843280, -0.116153,
		29.921267, 36.593357, 26.445471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321783, 37.272854, 26.719040>,  <29.553925, 37.183651, 26.526777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321783, 37.272854, 26.719040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303959, 36.984344, 26.442554>,  <30.293264, 36.811237, 26.276663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303959, 36.984344, 26.442554>,  <30.321783, 37.272854, 26.719040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303959, 36.984344, 26.442554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720764, 0.455886, -0.522176,
		0.691747, -0.521470, 0.499555,
		-0.044559, -0.721275, -0.691214,
		30.290590, 36.767963, 26.235189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090218, 37.058556, 26.585991>,  <30.321783, 37.272854, 26.719040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090218, 37.058556, 26.585991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858734, 36.969379, 26.272203>,  <30.719843, 36.915874, 26.083931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858734, 36.969379, 26.272203>,  <31.090218, 37.058556, 26.585991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858734, 36.969379, 26.272203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671010, 0.416539, -0.613385,
		0.463509, -0.881359, -0.091462,
		-0.578710, -0.222938, -0.784470,
		30.685122, 36.902496, 26.036863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516073, 36.757401, 26.125355>,  <31.090218, 37.058556, 26.585991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516073, 36.757401, 26.125355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201790, 36.862080, 25.901148>,  <31.013220, 36.924889, 25.766624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201790, 36.862080, 25.901148>,  <31.516073, 36.757401, 26.125355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201790, 36.862080, 25.901148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617051, 0.395612, -0.680250,
		0.043726, -0.880344, -0.472317,
		-0.785708, 0.261699, -0.560515,
		30.966078, 36.940590, 25.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740271, 36.658836, 25.517073>,  <31.516073, 36.757401, 26.125355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740271, 36.658836, 25.517073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409824, 36.867783, 25.432535>,  <31.211557, 36.993149, 25.381813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409824, 36.867783, 25.432535>,  <31.740271, 36.658836, 25.517073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409824, 36.867783, 25.432535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394215, 0.267754, -0.879149,
		-0.402650, -0.809593, -0.427121,
		-0.826116, 0.522366, -0.211342,
		31.161989, 37.024494, 25.369133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465904, 36.492256, 24.817181>,  <31.740271, 36.658836, 25.517073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465904, 36.492256, 24.817181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352859, 36.863491, 24.914162>,  <31.285032, 37.086231, 24.972351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352859, 36.863491, 24.914162>,  <31.465904, 36.492256, 24.817181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352859, 36.863491, 24.914162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261898, 0.317809, -0.911267,
		-0.922790, -0.194035, -0.332880,
		-0.282610, 0.928088, 0.242453,
		31.268076, 37.141918, 24.986898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302441, 36.697033, 24.170721>,  <31.465904, 36.492256, 24.817181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302441, 36.697033, 24.170721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280895, 37.044632, 24.367468>,  <31.267969, 37.253193, 24.485516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280895, 37.044632, 24.367468>,  <31.302441, 36.697033, 24.170721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280895, 37.044632, 24.367468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214701, 0.491141, -0.844206,
		-0.975194, 0.060134, -0.213029,
		-0.053862, 0.869002, 0.491868,
		31.264736, 37.305332, 24.515028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959478, 37.156258, 23.740826>,  <31.302441, 36.697033, 24.170721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959478, 37.156258, 23.740826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178711, 37.380634, 23.989002>,  <31.310251, 37.515263, 24.137907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178711, 37.380634, 23.989002>,  <30.959478, 37.156258, 23.740826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178711, 37.380634, 23.989002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269774, 0.583582, -0.765934,
		-0.791724, 0.587174, 0.168523,
		0.548083, 0.560945, 0.620440,
		31.343136, 37.548916, 24.175135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798405, 37.899426, 23.673058>,  <30.959478, 37.156258, 23.740826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798405, 37.899426, 23.673058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174372, 37.879463, 23.808153>,  <31.399952, 37.867485, 23.889212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174372, 37.879463, 23.808153>,  <30.798405, 37.899426, 23.673058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174372, 37.879463, 23.808153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285696, 0.656569, -0.698065,
		-0.186914, 0.752613, 0.631376,
		0.939915, -0.049904, 0.337741,
		31.456347, 37.864491, 23.909475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866854, 38.583176, 23.442589>,  <30.798405, 37.899426, 23.673058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866854, 38.583176, 23.442589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226475, 38.427670, 23.523151>,  <31.442247, 38.334366, 23.571489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226475, 38.427670, 23.523151>,  <30.866854, 38.583176, 23.442589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226475, 38.427670, 23.523151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401369, 0.547982, -0.733906,
		0.174952, 0.740658, 0.648704,
		0.899052, -0.388768, 0.201407,
		31.496191, 38.311039, 23.583574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317566, 39.140984, 23.507690>,  <30.866854, 38.583176, 23.442589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317566, 39.140984, 23.507690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594217, 38.854877, 23.467598>,  <31.760208, 38.683212, 23.443542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.594217, 38.854877, 23.467598>,  <31.317566, 39.140984, 23.507690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594217, 38.854877, 23.467598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530088, 0.596954, -0.602206,
		0.490571, 0.363371, 0.792024,
		0.691626, -0.715267, -0.100230,
		31.801704, 38.640297, 23.437529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982729, 39.479790, 23.626780>,  <31.317566, 39.140984, 23.507690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982729, 39.479790, 23.626780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048794, 39.150543, 23.409452>,  <32.088432, 38.952995, 23.279057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048794, 39.150543, 23.409452>,  <31.982729, 39.479790, 23.626780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048794, 39.150543, 23.409452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526831, 0.539337, -0.656936,
		0.833769, -0.177735, 0.522724,
		0.165164, -0.823119, -0.543319,
		32.098343, 38.903606, 23.246456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680332, 39.574528, 23.441267>,  <31.982729, 39.479790, 23.626780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680332, 39.574528, 23.441267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544910, 39.290245, 23.194601>,  <32.463657, 39.119675, 23.046602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544910, 39.290245, 23.194601>,  <32.680332, 39.574528, 23.441267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544910, 39.290245, 23.194601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524018, 0.401922, -0.750909,
		0.781526, -0.577370, 0.236348,
		-0.338559, -0.710706, -0.616665,
		32.443344, 39.077034, 23.009602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254688, 39.345268, 22.915268>,  <32.680332, 39.574528, 23.441267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254688, 39.345268, 22.915268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912415, 39.251450, 22.730753>,  <32.707050, 39.195156, 22.620045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912415, 39.251450, 22.730753>,  <33.254688, 39.345268, 22.915268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912415, 39.251450, 22.730753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404984, 0.251406, -0.879080,
		0.322159, -0.939032, -0.120135,
		-0.855687, -0.234551, -0.461286,
		32.655708, 39.181084, 22.592367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545071, 38.907326, 22.274620>,  <33.254688, 39.345268, 22.915268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545071, 38.907326, 22.274620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189545, 39.070530, 22.191158>,  <32.976231, 39.168453, 22.141081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189545, 39.070530, 22.191158>,  <33.545071, 38.907326, 22.274620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189545, 39.070530, 22.191158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369089, 0.367471, -0.853662,
		-0.271628, -0.835759, -0.477206,
		-0.888815, 0.408010, -0.208654,
		32.922901, 39.192932, 22.128563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428936, 38.752693, 21.553278>,  <33.545071, 38.907326, 22.274620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428936, 38.752693, 21.553278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170609, 39.046112, 21.637970>,  <33.015614, 39.222164, 21.688786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170609, 39.046112, 21.637970>,  <33.428936, 38.752693, 21.553278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170609, 39.046112, 21.637970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294592, 0.495256, -0.817274,
		-0.704368, -0.465437, -0.535942,
		-0.645819, 0.733546, 0.211728,
		32.976864, 39.266174, 21.701488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946007, 38.843025, 20.951044>,  <33.428936, 38.752693, 21.553278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946007, 38.843025, 20.951044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967854, 39.178844, 21.167259>,  <32.980961, 39.380337, 21.296988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967854, 39.178844, 21.167259>,  <32.946007, 38.843025, 20.951044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967854, 39.178844, 21.167259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264729, 0.509796, -0.818551,
		-0.962775, 0.187802, -0.194409,
		0.054616, 0.839546, 0.540536,
		32.984238, 39.430710, 21.329420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713154, 39.386791, 20.429916>,  <32.946007, 38.843025, 20.951044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713154, 39.386791, 20.429916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909393, 39.583355, 20.717758>,  <33.027138, 39.701294, 20.890463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909393, 39.583355, 20.717758>,  <32.713154, 39.386791, 20.429916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909393, 39.583355, 20.717758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327441, 0.661333, -0.674849,
		-0.807525, 0.566707, 0.163541,
		0.490597, 0.491408, 0.719606,
		33.056572, 39.730778, 20.933640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731136, 40.114128, 20.233976>,  <32.713154, 39.386791, 20.429916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731136, 40.114128, 20.233976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007324, 40.132706, 20.522724>,  <33.173035, 40.143852, 20.695972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007324, 40.132706, 20.522724>,  <32.731136, 40.114128, 20.233976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007324, 40.132706, 20.522724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455108, 0.747786, -0.483418,
		-0.562256, 0.662314, 0.495186,
		0.690467, 0.046442, 0.721871,
		33.214466, 40.146637, 20.739286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709457, 40.792793, 20.493908>,  <32.731136, 40.114128, 20.233976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709457, 40.792793, 20.493908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071705, 40.642933, 20.573393>,  <33.289055, 40.553017, 20.621084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071705, 40.642933, 20.573393>,  <32.709457, 40.792793, 20.493908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071705, 40.642933, 20.573393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424078, 0.803293, -0.418185,
		-0.002953, 0.462988, 0.886360,
		0.905621, -0.374651, 0.198715,
		33.343391, 40.530537, 20.633007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050350, 41.390312, 20.655291>,  <32.709457, 40.792793, 20.493908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050350, 41.390312, 20.655291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321697, 41.105873, 20.581366>,  <33.484505, 40.935207, 20.537010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321697, 41.105873, 20.581366>,  <33.050350, 41.390312, 20.655291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321697, 41.105873, 20.581366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558107, 0.662323, -0.499845,
		0.477847, 0.235931, 0.846167,
		0.678365, -0.711101, -0.184815,
		33.525208, 40.892544, 20.525921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642345, 41.828899, 20.746464>,  <33.050350, 41.390312, 20.655291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642345, 41.828899, 20.746464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733276, 41.499588, 20.538412>,  <33.787834, 41.302002, 20.413580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733276, 41.499588, 20.538412>,  <33.642345, 41.828899, 20.746464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733276, 41.499588, 20.538412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553351, 0.548711, -0.626673,
		0.801328, -0.145355, 0.580298,
		0.227326, -0.823279, -0.520130,
		33.801476, 41.252605, 20.382374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327797, 41.888660, 20.495178>,  <33.642345, 41.828899, 20.746464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327797, 41.888660, 20.495178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144665, 41.618950, 20.263405>,  <34.034786, 41.457123, 20.124340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144665, 41.618950, 20.263405>,  <34.327797, 41.888660, 20.495178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144665, 41.618950, 20.263405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366184, 0.450880, -0.814013,
		0.810123, -0.584861, 0.040482,
		-0.457832, -0.674274, -0.579435,
		34.007317, 41.416668, 20.089575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922230, 41.349659, 20.672516>,  <34.327797, 41.888660, 20.495178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922230, 41.349659, 20.672516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248264, 41.443432, 20.884434>,  <35.443886, 41.499695, 21.011585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248264, 41.443432, 20.884434>,  <34.922230, 41.349659, 20.672516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248264, 41.443432, 20.884434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416843, -0.397780, 0.817321,
		0.402348, -0.887025, -0.226502,
		0.815082, 0.234431, 0.529796,
		35.492790, 41.513760, 21.043373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094353, 40.710217, 21.068670>,  <34.922230, 41.349659, 20.672516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094353, 40.710217, 21.068670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257149, 41.024540, 21.254942>,  <35.354828, 41.213135, 21.366705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257149, 41.024540, 21.254942>,  <35.094353, 40.710217, 21.068670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257149, 41.024540, 21.254942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417545, -0.293382, 0.859990,
		0.812413, -0.544451, 0.208708,
		0.406991, 0.785812, 0.465681,
		35.379246, 41.260284, 21.394646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520409, 40.395981, 21.620380>,  <35.094353, 40.710217, 21.068670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520409, 40.395981, 21.620380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410427, 40.770668, 21.707054>,  <35.344437, 40.995480, 21.759058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410427, 40.770668, 21.707054>,  <35.520409, 40.395981, 21.620380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410427, 40.770668, 21.707054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498804, -0.331645, 0.800753,
		0.821945, 0.112089, 0.558428,
		-0.274956, 0.936722, 0.216684,
		35.327942, 41.051685, 21.772058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739326, 40.587532, 22.409731>,  <35.520409, 40.395981, 21.620380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739326, 40.587532, 22.409731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443256, 40.839100, 22.314566>,  <35.265614, 40.990040, 22.257467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443256, 40.839100, 22.314566>,  <35.739326, 40.587532, 22.409731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443256, 40.839100, 22.314566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259147, 0.059676, 0.963992,
		0.620469, 0.775178, 0.118811,
		-0.740176, 0.628917, -0.237912,
		35.221203, 41.027775, 22.243193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689880, 41.051056, 23.048210>,  <35.739326, 40.587532, 22.409731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689880, 41.051056, 23.048210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339500, 41.117523, 22.867062>,  <35.129272, 41.157406, 22.758373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339500, 41.117523, 22.867062>,  <35.689880, 41.051056, 23.048210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339500, 41.117523, 22.867062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451545, 0.047899, 0.890962,
		0.169745, 0.984933, 0.033077,
		-0.875953, 0.166172, -0.452872,
		35.076714, 41.167374, 22.731199>
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
