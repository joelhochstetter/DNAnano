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
	<24.052790, 34.855927, 34.629761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269562, 34.707417, 34.931347>,  <24.399626, 34.618309, 35.112301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269562, 34.707417, 34.931347>,  <24.052790, 34.855927, 34.629761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.269562, 34.707417, 34.931347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785776, 0.542061, -0.297869,
		-0.298106, 0.753874, 0.585497,
		0.541930, -0.371274, 0.753968,
		24.432140, 34.596035, 35.157536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510817, 35.319016, 34.668327>,  <24.052790, 34.855927, 34.629761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510817, 35.319016, 34.668327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682304, 35.037136, 34.894459>,  <24.785198, 34.868008, 35.030136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682304, 35.037136, 34.894459>,  <24.510817, 35.319016, 34.668327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682304, 35.037136, 34.894459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902475, 0.305201, -0.303958,
		0.041660, 0.640509, 0.766820,
		0.428722, -0.704699, 0.565329,
		24.810921, 34.825726, 35.064056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038774, 35.730328, 34.939701>,  <24.510817, 35.319016, 34.668327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038774, 35.730328, 34.939701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134563, 35.343193, 34.970547>,  <25.192036, 35.110912, 34.989052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134563, 35.343193, 34.970547>,  <25.038774, 35.730328, 34.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134563, 35.343193, 34.970547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895750, 0.189597, -0.402100,
		0.374547, 0.165363, 0.912343,
		0.239470, -0.967837, 0.077111,
		25.206404, 35.052841, 34.993679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715281, 35.671616, 35.087112>,  <25.038774, 35.730328, 34.939701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715281, 35.671616, 35.087112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668024, 35.306850, 34.929905>,  <25.639669, 35.087994, 34.835583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668024, 35.306850, 34.929905>,  <25.715281, 35.671616, 35.087112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668024, 35.306850, 34.929905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816210, 0.136235, -0.561463,
		0.565547, -0.387115, 0.728216,
		-0.118142, -0.911911, -0.393015,
		25.632582, 35.033276, 34.812000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455944, 35.343590, 35.043095>,  <25.715281, 35.671616, 35.087112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455944, 35.343590, 35.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168684, 35.264725, 34.776146>,  <25.996328, 35.217407, 34.615974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168684, 35.264725, 34.776146>,  <26.455944, 35.343590, 35.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168684, 35.264725, 34.776146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608261, 0.288034, -0.739631,
		0.338055, -0.937103, -0.086925,
		-0.718148, -0.197163, -0.667375,
		25.953239, 35.205574, 34.575932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786890, 34.836498, 34.528202>,  <26.455944, 35.343590, 35.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786890, 34.836498, 34.528202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483017, 35.056950, 34.390137>,  <26.300694, 35.189220, 34.307297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483017, 35.056950, 34.390137>,  <26.786890, 34.836498, 34.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483017, 35.056950, 34.390137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542707, 0.244896, -0.803427,
		-0.358263, -0.797673, -0.485144,
		-0.759682, 0.551129, -0.345166,
		26.255112, 35.222290, 34.286587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596773, 34.575188, 33.894032>,  <26.786890, 34.836498, 34.528202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596773, 34.575188, 33.894032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516235, 34.966675, 33.909855>,  <26.467913, 35.201569, 33.919350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516235, 34.966675, 33.909855>,  <26.596773, 34.575188, 33.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516235, 34.966675, 33.909855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504146, 0.138173, -0.852493,
		-0.839819, -0.151701, -0.521239,
		-0.201345, 0.978721, 0.039561,
		26.455832, 35.260292, 33.921722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230709, 34.756706, 33.326893>,  <26.596773, 34.575188, 33.894032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230709, 34.756706, 33.326893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454309, 35.075253, 33.419258>,  <26.588470, 35.266380, 33.474678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454309, 35.075253, 33.419258>,  <26.230709, 34.756706, 33.326893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454309, 35.075253, 33.419258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321323, 0.048672, -0.945718,
		-0.764374, 0.602858, -0.228681,
		0.559003, 0.796363, 0.230916,
		26.622011, 35.314163, 33.488533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013792, 35.375259, 32.965340>,  <26.230709, 34.756706, 33.326893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013792, 35.375259, 32.965340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396143, 35.423424, 33.072521>,  <26.625553, 35.452324, 33.136829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396143, 35.423424, 33.072521>,  <26.013792, 35.375259, 32.965340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396143, 35.423424, 33.072521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260993, 0.070557, -0.962759,
		-0.134831, 0.990214, 0.036017,
		0.955878, 0.120410, 0.267952,
		26.682907, 35.459545, 33.152908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245758, 35.712681, 32.378437>,  <26.013792, 35.375259, 32.965340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245758, 35.712681, 32.378437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592623, 35.675480, 32.574146>,  <26.800741, 35.653160, 32.691570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592623, 35.675480, 32.574146>,  <26.245758, 35.712681, 32.378437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592623, 35.675480, 32.574146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487671, 0.357876, -0.796305,
		-0.101043, 0.929127, 0.355688,
		0.867160, -0.092998, 0.489269,
		26.852772, 35.647579, 32.720928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606308, 36.293213, 32.414162>,  <26.245758, 35.712681, 32.378437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606308, 36.293213, 32.414162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878780, 36.001877, 32.443867>,  <27.042263, 35.827076, 32.461689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878780, 36.001877, 32.443867>,  <26.606308, 36.293213, 32.414162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878780, 36.001877, 32.443867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542969, 0.434548, -0.718577,
		0.491098, 0.529802, 0.691471,
		0.681181, -0.728339, 0.074260,
		27.083134, 35.783375, 32.466145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105930, 36.550034, 32.086903>,  <26.606308, 36.293213, 32.414162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105930, 36.550034, 32.086903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257412, 36.180641, 32.111454>,  <27.348301, 35.959007, 32.126186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257412, 36.180641, 32.111454>,  <27.105930, 36.550034, 32.086903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257412, 36.180641, 32.111454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602254, 0.195531, -0.773988,
		0.702760, 0.330081, 0.630218,
		0.378706, -0.923479, 0.061382,
		27.371023, 35.903599, 32.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822653, 36.600258, 32.091740>,  <27.105930, 36.550034, 32.086903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822653, 36.600258, 32.091740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743925, 36.229675, 31.963402>,  <27.696690, 36.007324, 31.886398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743925, 36.229675, 31.963402>,  <27.822653, 36.600258, 32.091740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743925, 36.229675, 31.963402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385043, 0.227915, -0.894314,
		0.901668, -0.299556, 0.311867,
		-0.196818, -0.926456, -0.320845,
		27.684879, 35.951740, 31.867147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474615, 36.210316, 31.874390>,  <27.822653, 36.600258, 32.091740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474615, 36.210316, 31.874390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172977, 36.041656, 31.672972>,  <27.991995, 35.940460, 31.552120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172977, 36.041656, 31.672972>,  <28.474615, 36.210316, 31.874390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172977, 36.041656, 31.672972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419352, 0.280945, -0.863257,
		0.505456, -0.862140, -0.035042,
		-0.754094, -0.421644, -0.503546,
		27.946749, 35.915165, 31.521908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789356, 35.777603, 31.379255>,  <28.474615, 36.210316, 31.874390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789356, 35.777603, 31.379255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415344, 35.800644, 31.239313>,  <28.190937, 35.814468, 31.155348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415344, 35.800644, 31.239313>,  <28.789356, 35.777603, 31.379255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415344, 35.800644, 31.239313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349410, -0.017932, -0.936798,
		-0.060244, -0.998178, -0.003364,
		-0.935031, 0.057612, -0.349854,
		28.134834, 35.817924, 31.134357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758625, 35.317577, 30.940395>,  <28.789356, 35.777603, 31.379255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758625, 35.317577, 30.940395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464025, 35.561092, 30.822453>,  <28.287266, 35.707203, 30.751688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464025, 35.561092, 30.822453>,  <28.758625, 35.317577, 30.940395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464025, 35.561092, 30.822453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228190, -0.186738, -0.955541,
		-0.636786, -0.771039, -0.001387,
		-0.736501, 0.608791, -0.294855,
		28.243074, 35.743729, 30.733995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483397, 34.984005, 30.400473>,  <28.758625, 35.317577, 30.940395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483397, 34.984005, 30.400473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303835, 35.338860, 30.357622>,  <28.196098, 35.551773, 30.331911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303835, 35.338860, 30.357622>,  <28.483397, 34.984005, 30.400473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303835, 35.338860, 30.357622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126878, -0.055391, -0.990370,
		-0.884526, -0.458174, -0.087693,
		-0.448905, 0.887134, -0.107127,
		28.169163, 35.605000, 30.325483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845592, 34.923519, 29.951677>,  <28.483397, 34.984005, 30.400473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845592, 34.923519, 29.951677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998880, 35.292660, 29.936226>,  <28.090853, 35.514145, 29.926954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998880, 35.292660, 29.936226>,  <27.845592, 34.923519, 29.951677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998880, 35.292660, 29.936226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126435, -0.093839, -0.987527,
		-0.914962, 0.373558, -0.152641,
		0.383222, 0.922848, -0.038628,
		28.113848, 35.569515, 29.924637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724228, 35.067291, 29.225994>,  <27.845592, 34.923519, 29.951677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724228, 35.067291, 29.225994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967009, 35.362507, 29.343912>,  <28.112677, 35.539639, 29.414663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967009, 35.362507, 29.343912>,  <27.724228, 35.067291, 29.225994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967009, 35.362507, 29.343912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398742, 0.038070, -0.916273,
		-0.687470, 0.673681, -0.271181,
		0.606951, 0.738041, 0.294797,
		28.149094, 35.583920, 29.432352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654005, 35.379345, 28.695398>,  <27.724228, 35.067291, 29.225994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654005, 35.379345, 28.695398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982677, 35.524475, 28.871214>,  <28.179882, 35.611553, 28.976704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982677, 35.524475, 28.871214>,  <27.654005, 35.379345, 28.695398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982677, 35.524475, 28.871214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357078, 0.273364, -0.893178,
		-0.444222, 0.890859, 0.095062,
		0.821683, 0.362825, 0.439541,
		28.229183, 35.633324, 29.003077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781647, 35.975750, 28.268162>,  <27.654005, 35.379345, 28.695398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781647, 35.975750, 28.268162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108067, 35.905636, 28.488466>,  <28.303919, 35.863567, 28.620649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108067, 35.905636, 28.488466>,  <27.781647, 35.975750, 28.268162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108067, 35.905636, 28.488466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577952, 0.237967, -0.780604,
		0.005766, 0.955326, 0.295499,
		0.816050, -0.175285, 0.550761,
		28.352882, 35.853050, 28.653694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140675, 36.613441, 28.180780>,  <27.781647, 35.975750, 28.268162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140675, 36.613441, 28.180780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380722, 36.304989, 28.265833>,  <28.524752, 36.119919, 28.316864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380722, 36.304989, 28.265833>,  <28.140675, 36.613441, 28.180780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380722, 36.304989, 28.265833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546079, 0.200708, -0.813335,
		0.584512, 0.604212, 0.541548,
		0.600120, -0.771132, 0.212631,
		28.560759, 36.073650, 28.329622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902445, 36.809887, 28.134995>,  <28.140675, 36.613441, 28.180780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902445, 36.809887, 28.134995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881836, 36.413372, 28.086504>,  <28.869471, 36.175465, 28.057409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881836, 36.413372, 28.086504>,  <28.902445, 36.809887, 28.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881836, 36.413372, 28.086504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714990, 0.048131, -0.697476,
		0.697234, -0.122611, 0.706280,
		-0.051524, -0.991287, -0.121224,
		28.866379, 36.115986, 28.050137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603868, 36.527962, 28.300114>,  <28.902445, 36.809887, 28.134995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603868, 36.527962, 28.300114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438242, 36.233913, 28.085396>,  <29.338865, 36.057484, 27.956564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438242, 36.233913, 28.085396>,  <29.603868, 36.527962, 28.300114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438242, 36.233913, 28.085396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855149, -0.112102, -0.506115,
		0.311879, -0.668607, 0.675053,
		-0.414067, -0.735118, -0.536796,
		29.314022, 36.013378, 27.924356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052267, 36.034962, 28.342205>,  <29.603868, 36.527962, 28.300114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052267, 36.034962, 28.342205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842903, 35.976376, 28.006445>,  <29.717285, 35.941223, 27.804989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842903, 35.976376, 28.006445>,  <30.052267, 36.034962, 28.342205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842903, 35.976376, 28.006445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851251, -0.046376, -0.522706,
		0.037630, -0.988128, 0.148952,
		-0.523408, -0.146465, -0.839400,
		29.685881, 35.932438, 27.754625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469252, 35.563183, 27.933754>,  <30.052267, 36.034962, 28.342205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469252, 35.563183, 27.933754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196163, 35.731438, 27.694769>,  <30.032310, 35.832390, 27.551378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196163, 35.731438, 27.694769>,  <30.469252, 35.563183, 27.933754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196163, 35.731438, 27.694769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686208, 0.088190, -0.722039,
		-0.251024, -0.902934, -0.348852,
		-0.682719, 0.420634, -0.597463,
		29.991348, 35.857628, 27.515530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398243, 35.378006, 27.210726>,  <30.469252, 35.563183, 27.933754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398243, 35.378006, 27.210726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327534, 35.771301, 27.192846>,  <30.285109, 36.007278, 27.182119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327534, 35.771301, 27.192846>,  <30.398243, 35.378006, 27.210726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327534, 35.771301, 27.192846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634946, 0.079221, -0.768484,
		-0.752060, -0.164230, -0.638306,
		-0.176775, 0.983236, -0.044698,
		30.274502, 36.066273, 27.179438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461864, 35.293541, 26.367208>,  <30.398243, 35.378006, 27.210726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461864, 35.293541, 26.367208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086998, 35.392555, 26.268864>,  <29.862078, 35.451965, 26.209858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086998, 35.392555, 26.268864>,  <30.461864, 35.293541, 26.367208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086998, 35.392555, 26.268864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121280, -0.429613, -0.894832,
		-0.327126, -0.868424, 0.372598,
		-0.937166, 0.247534, -0.245860,
		29.805849, 35.466816, 26.195105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097645, 34.666458, 26.113125>,  <30.461864, 35.293541, 26.367208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097645, 34.666458, 26.113125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998842, 35.020252, 25.954796>,  <29.939560, 35.232529, 25.859798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998842, 35.020252, 25.954796>,  <30.097645, 34.666458, 26.113125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998842, 35.020252, 25.954796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178616, -0.359921, -0.915726,
		-0.952409, -0.296891, -0.069080,
		-0.247007, 0.884484, -0.395821,
		29.924740, 35.285599, 25.836050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623158, 34.688503, 25.621586>,  <30.097645, 34.666458, 26.113125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623158, 34.688503, 25.621586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813950, 35.021713, 25.509472>,  <29.928425, 35.221638, 25.442204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813950, 35.021713, 25.509472>,  <29.623158, 34.688503, 25.621586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813950, 35.021713, 25.509472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049679, -0.292834, -0.954872,
		-0.877508, 0.469381, -0.098292,
		0.476982, 0.833024, -0.280283,
		29.957045, 35.271622, 25.425386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276068, 35.146317, 25.265299>,  <29.623158, 34.688503, 25.621586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276068, 35.146317, 25.265299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659212, 35.150879, 25.150496>,  <29.889099, 35.153618, 25.081614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659212, 35.150879, 25.150496>,  <29.276068, 35.146317, 25.265299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659212, 35.150879, 25.150496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282579, -0.141798, -0.948706,
		-0.051519, 0.989830, -0.132599,
		0.957859, 0.011407, -0.287010,
		29.946569, 35.154301, 25.064392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265991, 35.716240, 24.732037>,  <29.276068, 35.146317, 25.265299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265991, 35.716240, 24.732037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559172, 35.448322, 24.684444>,  <29.735081, 35.287571, 24.655890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559172, 35.448322, 24.684444>,  <29.265991, 35.716240, 24.732037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559172, 35.448322, 24.684444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163166, -0.003296, -0.986593,
		0.660422, 0.742540, -0.111703,
		0.732953, -0.669794, -0.118980,
		29.779058, 35.247383, 24.648750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739567, 36.151741, 24.399574>,  <29.265991, 35.716240, 24.732037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739567, 36.151741, 24.399574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419781, 36.338158, 24.247965>,  <28.227909, 36.450008, 24.157000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419781, 36.338158, 24.247965>,  <28.739567, 36.151741, 24.399574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419781, 36.338158, 24.247965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174901, -0.784211, -0.595334,
		-0.574685, -0.409658, 0.708461,
		-0.799467, 0.466040, -0.379024,
		28.179941, 36.477970, 24.134258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981529, 36.847473, 24.269356>,  <28.739567, 36.151741, 24.399574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981529, 36.847473, 24.269356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182877, 37.170425, 24.146223>,  <29.303684, 37.364197, 24.072344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182877, 37.170425, 24.146223>,  <28.981529, 36.847473, 24.269356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182877, 37.170425, 24.146223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082156, 0.399361, 0.913105,
		0.860158, -0.434337, 0.267357,
		0.503367, 0.807380, -0.307830,
		29.333887, 37.412640, 24.053873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666584, 37.021664, 24.627712>,  <28.981529, 36.847473, 24.269356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666584, 37.021664, 24.627712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486012, 37.345146, 24.476871>,  <29.377668, 37.539234, 24.386368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486012, 37.345146, 24.476871>,  <29.666584, 37.021664, 24.627712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486012, 37.345146, 24.476871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246418, 0.293191, 0.923752,
		0.857605, 0.509935, 0.066924,
		-0.451432, 0.808706, -0.377100,
		29.350582, 37.587757, 24.363741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832726, 37.655373, 25.016066>,  <29.666584, 37.021664, 24.627712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832726, 37.655373, 25.016066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475023, 37.678875, 24.838593>,  <29.260403, 37.692978, 24.732109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475023, 37.678875, 24.838593>,  <29.832726, 37.655373, 25.016066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475023, 37.678875, 24.838593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407917, 0.300902, 0.862010,
		0.184154, 0.951843, -0.245116,
		-0.894255, 0.058756, -0.443685,
		29.206747, 37.696503, 24.705486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472147, 38.415653, 25.155701>,  <29.832726, 37.655373, 25.016066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472147, 38.415653, 25.155701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208929, 38.123222, 25.083584>,  <29.050999, 37.947765, 25.040314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208929, 38.123222, 25.083584>,  <29.472147, 38.415653, 25.155701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208929, 38.123222, 25.083584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486105, 0.229604, 0.843199,
		-0.575045, 0.642505, -0.506469,
		-0.658046, -0.731074, -0.180293,
		29.011515, 37.903900, 25.029495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903290, 38.779293, 25.249210>,  <29.472147, 38.415653, 25.155701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903290, 38.779293, 25.249210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828890, 38.388474, 25.290733>,  <28.784250, 38.153980, 25.315647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828890, 38.388474, 25.290733>,  <28.903290, 38.779293, 25.249210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828890, 38.388474, 25.290733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531575, 0.188920, 0.825674,
		-0.826337, 0.098392, -0.554515,
		-0.185998, -0.977051, 0.103809,
		28.773090, 38.095360, 25.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225061, 38.687431, 25.339865>,  <28.903290, 38.779293, 25.249210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225061, 38.687431, 25.339865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352972, 38.347454, 25.507357>,  <28.429718, 38.143467, 25.607853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352972, 38.347454, 25.507357>,  <28.225061, 38.687431, 25.339865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352972, 38.347454, 25.507357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500376, 0.223794, 0.836385,
		-0.804592, -0.476978, -0.353729,
		0.319774, -0.849946, 0.418731,
		28.448904, 38.092472, 25.632977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657572, 38.345116, 25.560450>,  <28.225061, 38.687431, 25.339865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657572, 38.345116, 25.560450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949652, 38.200596, 25.792406>,  <28.124899, 38.113884, 25.931580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949652, 38.200596, 25.792406>,  <27.657572, 38.345116, 25.560450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949652, 38.200596, 25.792406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641265, -0.069523, 0.764164,
		-0.235774, -0.929855, -0.282453,
		0.730199, -0.361297, 0.579891,
		28.168711, 38.092209, 25.966373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297407, 37.948692, 25.999300>,  <27.657572, 38.345116, 25.560450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297407, 37.948692, 25.999300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643715, 37.975929, 26.197615>,  <27.851500, 37.992271, 26.316603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643715, 37.975929, 26.197615>,  <27.297407, 37.948692, 25.999300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643715, 37.975929, 26.197615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496037, -0.014381, 0.868182,
		0.066249, -0.997575, 0.021328,
		0.865770, 0.068095, 0.495787,
		27.903446, 37.996357, 26.346352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153563, 37.523998, 26.575390>,  <27.297407, 37.948692, 25.999300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153563, 37.523998, 26.575390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456648, 37.770649, 26.660841>,  <27.638500, 37.918640, 26.712112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456648, 37.770649, 26.660841>,  <27.153563, 37.523998, 26.575390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456648, 37.770649, 26.660841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318645, 0.063911, 0.945717,
		0.569502, -0.784656, 0.244912,
		0.757715, 0.616628, 0.213629,
		27.683962, 37.955639, 26.724930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419127, 37.199200, 27.248150>,  <27.153563, 37.523998, 26.575390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419127, 37.199200, 27.248150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554939, 37.573910, 27.214289>,  <27.636427, 37.798737, 27.193972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554939, 37.573910, 27.214289>,  <27.419127, 37.199200, 27.248150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554939, 37.573910, 27.214289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215169, 0.164970, 0.962542,
		0.915652, -0.308601, 0.257578,
		0.339534, 0.936777, -0.084654,
		27.656799, 37.854942, 27.188892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861164, 37.236786, 27.717867>,  <27.419127, 37.199200, 27.248150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861164, 37.236786, 27.717867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721956, 37.605217, 27.648001>,  <27.638432, 37.826275, 27.606081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721956, 37.605217, 27.648001>,  <27.861164, 37.236786, 27.717867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721956, 37.605217, 27.648001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085982, 0.154165, 0.984297,
		0.933536, 0.357572, 0.025544,
		-0.348019, 0.921073, -0.174663,
		27.617550, 37.881538, 27.595602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216906, 37.678364, 28.243605>,  <27.861164, 37.236786, 27.717867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216906, 37.678364, 28.243605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912725, 37.911968, 28.130011>,  <27.730217, 38.052132, 28.061853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912725, 37.911968, 28.130011>,  <28.216906, 37.678364, 28.243605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912725, 37.911968, 28.130011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232452, 0.163537, 0.958760,
		0.606366, 0.795104, 0.011391,
		-0.760451, 0.584008, -0.283987,
		27.684589, 38.087170, 28.044815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400496, 38.359299, 28.468403>,  <28.216906, 37.678364, 28.243605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400496, 38.359299, 28.468403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006781, 38.307667, 28.420210>,  <27.770552, 38.276688, 28.391294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006781, 38.307667, 28.420210>,  <28.400496, 38.359299, 28.468403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006781, 38.307667, 28.420210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160213, 0.366054, 0.916698,
		-0.074225, 0.921598, -0.380983,
		-0.984288, -0.129080, -0.120481,
		27.711494, 38.268944, 28.384066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216444, 39.019974, 28.558861>,  <28.400496, 38.359299, 28.468403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216444, 39.019974, 28.558861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925579, 38.753086, 28.623430>,  <27.751060, 38.592953, 28.662172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925579, 38.753086, 28.623430>,  <28.216444, 39.019974, 28.558861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925579, 38.753086, 28.623430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271188, 0.495236, 0.825347,
		-0.630628, 0.556385, -0.541058,
		-0.727163, -0.667216, 0.161424,
		27.707430, 38.552921, 28.671858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799860, 39.399368, 29.018469>,  <28.216444, 39.019974, 28.558861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799860, 39.399368, 29.018469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648819, 39.028984, 29.019854>,  <27.558195, 38.806755, 29.020683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648819, 39.028984, 29.019854>,  <27.799860, 39.399368, 29.018469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648819, 39.028984, 29.019854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326216, 0.136524, 0.935385,
		-0.866603, 0.352074, -0.353615,
		-0.377602, -0.925962, 0.003460,
		27.535538, 38.751194, 29.020891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136955, 39.321400, 29.200909>,  <27.799860, 39.399368, 29.018469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136955, 39.321400, 29.200909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284248, 38.970501, 29.324091>,  <27.372623, 38.759960, 29.398001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284248, 38.970501, 29.324091>,  <27.136955, 39.321400, 29.200909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284248, 38.970501, 29.324091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392268, 0.153714, 0.906917,
		-0.842930, -0.454758, -0.287515,
		0.368233, -0.877250, 0.307957,
		27.394718, 38.707325, 29.416477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823885, 39.251431, 29.780441>,  <27.136955, 39.321400, 29.200909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823885, 39.251431, 29.780441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060707, 38.932716, 29.828770>,  <27.202801, 38.741486, 29.857767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060707, 38.932716, 29.828770>,  <26.823885, 39.251431, 29.780441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060707, 38.932716, 29.828770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355765, -0.123890, 0.926327,
		-0.723118, -0.591422, -0.356820,
		0.592057, -0.796788, 0.120820,
		27.238325, 38.693680, 29.865015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439802, 38.788639, 30.252268>,  <26.823885, 39.251431, 29.780441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439802, 38.788639, 30.252268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807812, 38.638287, 30.296583>,  <27.028618, 38.548077, 30.323172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807812, 38.638287, 30.296583>,  <26.439802, 38.788639, 30.252268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807812, 38.638287, 30.296583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203223, -0.215933, 0.955025,
		-0.335054, -0.901158, -0.275051,
		0.920021, -0.375882, 0.110787,
		27.083818, 38.525524, 30.329819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431019, 38.132931, 30.547667>,  <26.439802, 38.788639, 30.252268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431019, 38.132931, 30.547667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798580, 38.258766, 30.642878>,  <27.019117, 38.334267, 30.700005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798580, 38.258766, 30.642878>,  <26.431019, 38.132931, 30.547667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798580, 38.258766, 30.642878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094098, -0.411171, 0.906688,
		0.383100, -0.855555, -0.348224,
		0.918902, 0.314585, 0.238026,
		27.074251, 38.353142, 30.714285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575544, 37.625050, 30.909897>,  <26.431019, 38.132931, 30.547667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575544, 37.625050, 30.909897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838238, 37.906853, 31.017506>,  <26.995853, 38.075935, 31.082071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838238, 37.906853, 31.017506>,  <26.575544, 37.625050, 30.909897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838238, 37.906853, 31.017506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014335, -0.368335, 0.929583,
		0.753988, -0.606629, -0.251996,
		0.656731, 0.704507, 0.269024,
		27.035257, 38.118206, 31.098213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103912, 37.318306, 31.352974>,  <26.575544, 37.625050, 30.909897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103912, 37.318306, 31.352974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162319, 37.704842, 31.437710>,  <27.197363, 37.936764, 31.488552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162319, 37.704842, 31.437710>,  <27.103912, 37.318306, 31.352974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162319, 37.704842, 31.437710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310718, -0.248098, 0.917552,
		0.939219, -0.068157, -0.336485,
		0.146019, 0.966334, 0.211840,
		27.206125, 37.994743, 31.501263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739456, 37.340782, 31.672781>,  <27.103912, 37.318306, 31.352974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739456, 37.340782, 31.672781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572050, 37.686466, 31.784483>,  <27.471607, 37.893879, 31.851503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572050, 37.686466, 31.784483>,  <27.739456, 37.340782, 31.672781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572050, 37.686466, 31.784483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442474, -0.074499, 0.893681,
		0.793135, 0.497581, -0.351213,
		-0.418513, 0.864213, 0.279254,
		27.446497, 37.945728, 31.868259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290083, 37.802887, 31.851051>,  <27.739456, 37.340782, 31.672781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290083, 37.802887, 31.851051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946449, 37.916267, 32.021523>,  <27.740269, 37.984299, 32.123806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946449, 37.916267, 32.021523>,  <28.290083, 37.802887, 31.851051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946449, 37.916267, 32.021523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435529, -0.032556, 0.899586,
		0.268867, 0.958433, -0.095485,
		-0.859084, 0.283456, 0.426178,
		27.688725, 38.001305, 32.149376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434902, 38.212318, 32.494606>,  <28.290083, 37.802887, 31.851051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434902, 38.212318, 32.494606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049740, 38.140686, 32.575348>,  <27.818644, 38.097706, 32.623795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049740, 38.140686, 32.575348>,  <28.434902, 38.212318, 32.494606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049740, 38.140686, 32.575348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212933, -0.044737, 0.976042,
		-0.165759, 0.982817, 0.081209,
		-0.962904, -0.179080, 0.201859,
		27.760868, 38.086964, 32.635906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224886, 38.772530, 32.996788>,  <28.434902, 38.212318, 32.494606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224886, 38.772530, 32.996788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039223, 38.419342, 33.024849>,  <27.927824, 38.207428, 33.041687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039223, 38.419342, 33.024849>,  <28.224886, 38.772530, 32.996788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039223, 38.419342, 33.024849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366189, -0.119173, 0.922878,
		-0.806513, 0.454050, 0.378649,
		-0.464158, -0.882970, 0.070154,
		27.899975, 38.154449, 33.045895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038149, 38.773949, 33.037537>,  <28.224886, 38.772530, 32.996788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038149, 38.773949, 33.037537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222090, 39.003716, 32.766663>,  <29.332455, 39.141575, 32.604137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222090, 39.003716, 32.766663>,  <29.038149, 38.773949, 33.037537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222090, 39.003716, 32.766663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879777, -0.398223, 0.259637,
		-0.120531, -0.715167, -0.688483,
		0.459854, 0.574417, -0.677186,
		29.360046, 39.176041, 32.563507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386179, 38.378151, 32.515739>,  <29.038149, 38.773949, 33.037537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386179, 38.378151, 32.515739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563101, 38.732075, 32.574352>,  <29.669254, 38.944431, 32.609520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563101, 38.732075, 32.574352>,  <29.386179, 38.378151, 32.515739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563101, 38.732075, 32.574352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823444, -0.465383, 0.324591,
		0.355397, -0.022906, -0.934435,
		0.442305, 0.884813, 0.146534,
		29.695793, 38.997520, 32.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024179, 38.229645, 32.358421>,  <29.386179, 38.378151, 32.515739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024179, 38.229645, 32.358421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090315, 38.577496, 32.544498>,  <30.129995, 38.786205, 32.656147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090315, 38.577496, 32.544498>,  <30.024179, 38.229645, 32.358421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090315, 38.577496, 32.544498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827107, -0.379180, 0.414869,
		0.537176, 0.316174, -0.781969,
		0.165337, 0.869630, 0.465196,
		30.139915, 38.838387, 32.684055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589769, 38.615330, 32.225002>,  <30.024179, 38.229645, 32.358421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589769, 38.615330, 32.225002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491003, 38.653980, 32.610683>,  <30.431744, 38.677170, 32.842094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491003, 38.653980, 32.610683>,  <30.589769, 38.615330, 32.225002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491003, 38.653980, 32.610683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933534, -0.243144, 0.263430,
		0.259896, 0.965165, -0.030172,
		-0.246917, 0.096631, 0.964207,
		30.416927, 38.682968, 32.899944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144768, 38.905792, 32.588818>,  <30.589769, 38.615330, 32.225002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144768, 38.905792, 32.588818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958952, 38.799477, 32.926708>,  <30.847462, 38.735687, 33.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958952, 38.799477, 32.926708>,  <31.144768, 38.905792, 32.588818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958952, 38.799477, 32.926708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883019, -0.066931, 0.464540,
		-0.066931, 0.961705, 0.265790,
		-0.464540, -0.265790, 0.844724,
		30.819590, 38.719738, 33.180126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426931, 39.286125, 33.307816>,  <31.144768, 38.905792, 32.588818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426931, 39.286125, 33.307816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281580, 38.917702, 33.363815>,  <31.194368, 38.696648, 33.397415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281580, 38.917702, 33.363815>,  <31.426931, 39.286125, 33.307816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281580, 38.917702, 33.363815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788634, -0.224105, 0.572567,
		-0.495996, 0.318467, 0.807816,
		-0.363379, -0.921062, 0.139999,
		31.172565, 38.641384, 33.405815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352707, 39.186989, 34.088711>,  <31.426931, 39.286125, 33.307816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352707, 39.186989, 34.088711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398775, 38.853012, 33.873451>,  <31.426416, 38.652626, 33.744297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398775, 38.853012, 33.873451>,  <31.352707, 39.186989, 34.088711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398775, 38.853012, 33.873451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799285, -0.243780, 0.549286,
		-0.589813, -0.493395, 0.639282,
		0.115171, -0.834944, -0.538148,
		31.433327, 38.602528, 33.712006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283806, 38.697357, 34.562992>,  <31.352707, 39.186989, 34.088711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283806, 38.697357, 34.562992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471355, 38.496426, 34.272385>,  <31.583885, 38.375866, 34.098022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471355, 38.496426, 34.272385>,  <31.283806, 38.697357, 34.562992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471355, 38.496426, 34.272385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725876, -0.249508, 0.640976,
		-0.503250, -0.827898, 0.247637,
		0.468875, -0.502325, -0.726516,
		31.612019, 38.345730, 34.054428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543604, 38.034515, 34.858250>,  <31.283806, 38.697357, 34.562992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543604, 38.034515, 34.858250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759577, 38.166855, 34.548668>,  <31.889160, 38.246258, 34.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759577, 38.166855, 34.548668>,  <31.543604, 38.034515, 34.858250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759577, 38.166855, 34.548668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829171, -0.050958, 0.556667,
		0.144733, -0.942307, -0.301844,
		0.539932, 0.330848, -0.773959,
		31.921556, 38.266109, 34.316479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100437, 37.672287, 35.010521>,  <31.543604, 38.034515, 34.858250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100437, 37.672287, 35.010521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232746, 37.952656, 34.757759>,  <32.312130, 38.120876, 34.606102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232746, 37.952656, 34.757759>,  <32.100437, 37.672287, 35.010521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232746, 37.952656, 34.757759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886268, -0.000671, 0.463172,
		0.324223, -0.713238, -0.621427,
		0.330768, 0.700922, -0.631903,
		32.331978, 38.162933, 34.568188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653805, 37.362640, 34.728283>,  <32.100437, 37.672287, 35.010521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653805, 37.362640, 34.728283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680847, 37.760262, 34.694126>,  <32.697075, 37.998833, 34.673630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680847, 37.760262, 34.694126>,  <32.653805, 37.362640, 34.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680847, 37.760262, 34.694126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866808, -0.016141, 0.498381,
		0.494038, -0.107718, -0.862742,
		0.067610, 0.994050, -0.085397,
		32.701130, 38.058475, 34.668507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354111, 37.447067, 34.734024>,  <32.653805, 37.362640, 34.728283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354111, 37.447067, 34.734024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218838, 37.817722, 34.799713>,  <33.137672, 38.040115, 34.839127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218838, 37.817722, 34.799713>,  <33.354111, 37.447067, 34.734024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218838, 37.817722, 34.799713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766146, 0.169762, 0.619840,
		0.546489, 0.335440, -0.767352,
		-0.338186, 0.926640, 0.164223,
		33.117382, 38.095715, 34.848980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020000, 37.907841, 34.822197>,  <33.354111, 37.447067, 34.734024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020000, 37.907841, 34.822197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717243, 38.105377, 34.993423>,  <33.535591, 38.223900, 35.096161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717243, 38.105377, 34.993423>,  <34.020000, 37.907841, 34.822197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717243, 38.105377, 34.993423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579456, 0.204183, 0.789012,
		0.302239, 0.845242, -0.440701,
		-0.756890, 0.493837, 0.428069,
		33.490177, 38.253529, 35.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262684, 38.587646, 35.064503>,  <34.020000, 37.907841, 34.822197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262684, 38.587646, 35.064503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944386, 38.457546, 35.268860>,  <33.753407, 38.379486, 35.391472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944386, 38.457546, 35.268860>,  <34.262684, 38.587646, 35.064503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944386, 38.457546, 35.268860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505312, 0.108445, 0.856095,
		-0.333848, 0.939389, 0.078058,
		-0.795742, -0.325250, 0.510889,
		33.705662, 38.359970, 35.422127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245007, 39.150249, 35.581078>,  <34.262684, 38.587646, 35.064503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245007, 39.150249, 35.581078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025513, 38.852356, 35.733009>,  <33.893818, 38.673622, 35.824169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025513, 38.852356, 35.733009>,  <34.245007, 39.150249, 35.581078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025513, 38.852356, 35.733009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274360, 0.268755, 0.923308,
		-0.789697, 0.610857, 0.056851,
		-0.548730, -0.744731, 0.379830,
		33.860893, 38.628937, 35.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172115, 39.325439, 36.236252>,  <34.245007, 39.150249, 35.581078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172115, 39.325439, 36.236252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023705, 38.958649, 36.294880>,  <33.934658, 38.738571, 36.330059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023705, 38.958649, 36.294880>,  <34.172115, 39.325439, 36.236252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023705, 38.958649, 36.294880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275124, 0.042208, 0.960482,
		-0.886931, 0.396690, 0.236623,
		-0.371026, -0.916982, 0.146574,
		33.912395, 38.683556, 36.338852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644714, 39.363457, 36.875561>,  <34.172115, 39.325439, 36.236252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644714, 39.363457, 36.875561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783333, 38.991325, 36.827557>,  <33.866505, 38.768047, 36.798756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783333, 38.991325, 36.827557>,  <33.644714, 39.363457, 36.875561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783333, 38.991325, 36.827557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212724, -0.046663, 0.975998,
		-0.913594, -0.363758, 0.181731,
		0.346547, -0.930324, -0.120011,
		33.887299, 38.712227, 36.791553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432930, 38.959122, 37.519073>,  <33.644714, 39.363457, 36.875561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432930, 38.959122, 37.519073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737152, 38.740936, 37.378204>,  <33.919685, 38.610023, 37.293682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737152, 38.740936, 37.378204>,  <33.432930, 38.959122, 37.519073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737152, 38.740936, 37.378204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138084, -0.394118, 0.908627,
		-0.634422, -0.739689, -0.224428,
		0.760553, -0.545463, -0.352176,
		33.965317, 38.577297, 37.272552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261723, 38.306557, 37.699215>,  <33.432930, 38.959122, 37.519073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261723, 38.306557, 37.699215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654449, 38.337227, 37.629761>,  <33.890087, 38.355629, 37.588089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654449, 38.337227, 37.629761>,  <33.261723, 38.306557, 37.699215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654449, 38.337227, 37.629761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189629, -0.436376, 0.879555,
		-0.008326, -0.896491, -0.442983,
		0.981821, 0.076679, -0.173634,
		33.948997, 38.360229, 37.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457497, 37.629311, 37.605797>,  <33.261723, 38.306557, 37.699215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457497, 37.629311, 37.605797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785465, 37.829632, 37.716740>,  <33.982246, 37.949825, 37.783306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785465, 37.829632, 37.716740>,  <33.457497, 37.629311, 37.605797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785465, 37.829632, 37.716740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124235, -0.628600, 0.767742,
		0.558836, -0.595028, -0.577619,
		0.819919, 0.500802, 0.277362,
		34.031441, 37.979874, 37.799950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885136, 37.119556, 37.864994>,  <33.457497, 37.629311, 37.605797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885136, 37.119556, 37.864994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069183, 37.445805, 38.005314>,  <34.179611, 37.641552, 38.089504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069183, 37.445805, 38.005314>,  <33.885136, 37.119556, 37.864994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069183, 37.445805, 38.005314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106176, -0.442816, 0.890303,
		0.881487, -0.372397, -0.290347,
		0.460116, 0.815619, 0.350797,
		34.207218, 37.690491, 38.110554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431511, 36.817120, 38.328285>,  <33.885136, 37.119556, 37.864994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431511, 36.817120, 38.328285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401913, 37.203472, 38.427567>,  <34.384151, 37.435284, 38.487137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401913, 37.203472, 38.427567>,  <34.431511, 36.817120, 38.328285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401913, 37.203472, 38.427567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145321, -0.235786, 0.960878,
		0.986613, 0.107173, -0.122914,
		-0.073999, 0.965877, 0.248204,
		34.379715, 37.493237, 38.502029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830471, 36.879684, 38.791222>,  <34.431511, 36.817120, 38.328285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830471, 36.879684, 38.791222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616619, 37.208267, 38.870605>,  <34.488308, 37.405415, 38.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616619, 37.208267, 38.870605>,  <34.830471, 36.879684, 38.791222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616619, 37.208267, 38.870605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084239, -0.181872, 0.979707,
		0.840879, 0.540497, 0.028036,
		-0.534628, 0.821453, 0.198464,
		34.456230, 37.454704, 38.930145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261852, 37.370121, 39.183971>,  <34.830471, 36.879684, 38.791222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261852, 37.370121, 39.183971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877140, 37.453724, 39.254734>,  <34.646313, 37.503887, 39.297192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877140, 37.453724, 39.254734>,  <35.261852, 37.370121, 39.183971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877140, 37.453724, 39.254734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136634, -0.193560, 0.971528,
		0.237297, 0.958567, 0.157605,
		-0.961780, 0.209007, 0.176904,
		34.588608, 37.516426, 39.307804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260063, 37.780716, 39.818024>,  <35.261852, 37.370121, 39.183971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260063, 37.780716, 39.818024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879559, 37.660740, 39.789379>,  <34.651257, 37.588753, 39.772194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879559, 37.660740, 39.789379>,  <35.260063, 37.780716, 39.818024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879559, 37.660740, 39.789379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014124, -0.189593, 0.981761,
		-0.308051, 0.934927, 0.176117,
		-0.951265, -0.299945, -0.071609,
		34.594177, 37.570755, 39.767895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021557, 38.111534, 40.340897>,  <35.260063, 37.780716, 39.818024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021557, 38.111534, 40.340897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718323, 37.856617, 40.285522>,  <34.536381, 37.703667, 40.252296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718323, 37.856617, 40.285522>,  <35.021557, 38.111534, 40.340897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718323, 37.856617, 40.285522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063511, -0.139124, 0.988236,
		-0.649056, 0.757959, 0.064993,
		-0.758085, -0.637293, -0.138438,
		34.490898, 37.665428, 40.243992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368092, 38.289738, 40.800217>,  <35.021557, 38.111534, 40.340897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368092, 38.289738, 40.800217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335175, 37.900276, 40.715153>,  <34.315426, 37.666599, 40.664112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335175, 37.900276, 40.715153>,  <34.368092, 38.289738, 40.800217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335175, 37.900276, 40.715153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084118, -0.205838, 0.974964,
		-0.993052, 0.098119, -0.064963,
		-0.082291, -0.973655, -0.212662,
		34.310486, 37.608181, 40.651356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895401, 38.080063, 41.229290>,  <34.368092, 38.289738, 40.800217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895401, 38.080063, 41.229290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099705, 37.744576, 41.153728>,  <34.222286, 37.543285, 41.108391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099705, 37.744576, 41.153728>,  <33.895401, 38.080063, 41.229290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099705, 37.744576, 41.153728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167865, -0.312790, 0.934871,
		-0.843179, -0.445780, -0.300550,
		0.510755, -0.838715, -0.188907,
		34.252930, 37.492962, 41.097057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479576, 37.495216, 41.421471>,  <33.895401, 38.080063, 41.229290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479576, 37.495216, 41.421471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843811, 37.330696, 41.405197>,  <34.062351, 37.231983, 41.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843811, 37.330696, 41.405197>,  <33.479576, 37.495216, 41.421471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843811, 37.330696, 41.405197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155544, -0.432226, 0.888249,
		-0.382920, -0.802505, -0.457557,
		0.910592, -0.411299, -0.040683,
		34.116989, 37.207306, 41.392990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347504, 36.840054, 41.624393>,  <33.479576, 37.495216, 41.421471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347504, 36.840054, 41.624393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739983, 36.893894, 41.679737>,  <33.975468, 36.926201, 41.712944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739983, 36.893894, 41.679737>,  <33.347504, 36.840054, 41.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739983, 36.893894, 41.679737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031458, -0.595666, 0.802616,
		0.190450, -0.791873, -0.580229,
		0.981193, 0.134605, 0.138355,
		34.034340, 36.934277, 41.721245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580097, 36.202290, 41.843441>,  <33.347504, 36.840054, 41.624393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580097, 36.202290, 41.843441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855293, 36.460022, 41.977013>,  <34.020409, 36.614662, 42.057156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855293, 36.460022, 41.977013>,  <33.580097, 36.202290, 41.843441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855293, 36.460022, 41.977013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053439, -0.503861, 0.862131,
		0.723753, -0.575290, -0.381082,
		0.687987, 0.644334, 0.333928,
		34.061687, 36.653320, 42.077190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026161, 35.804642, 42.226967>,  <33.580097, 36.202290, 41.843441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026161, 35.804642, 42.226967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161064, 36.156178, 42.361961>,  <34.242004, 36.367100, 42.442959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161064, 36.156178, 42.361961>,  <34.026161, 35.804642, 42.226967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161064, 36.156178, 42.361961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138918, -0.401027, 0.905472,
		0.931107, -0.258493, -0.257335,
		0.337256, 0.878840, 0.337490,
		34.262241, 36.419830, 42.463207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540436, 35.586983, 42.593121>,  <34.026161, 35.804642, 42.226967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540436, 35.586983, 42.593121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414764, 35.948200, 42.710285>,  <34.339359, 36.164932, 42.780586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414764, 35.948200, 42.710285>,  <34.540436, 35.586983, 42.593121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414764, 35.948200, 42.710285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205989, -0.236345, 0.949584,
		0.926746, 0.358679, -0.111762,
		-0.314181, 0.903045, 0.292915,
		34.320511, 36.219112, 42.798161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027328, 35.913799, 43.052753>,  <34.540436, 35.586983, 42.593121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027328, 35.913799, 43.052753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695568, 36.119331, 43.140450>,  <34.496510, 36.242649, 43.193066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695568, 36.119331, 43.140450>,  <35.027328, 35.913799, 43.052753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695568, 36.119331, 43.140450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255582, 0.000043, 0.966787,
		0.496755, 0.857892, -0.131362,
		-0.829405, 0.513830, 0.219240,
		34.446747, 36.273479, 43.206223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270573, 36.635288, 43.423115>,  <35.027328, 35.913799, 43.052753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270573, 36.635288, 43.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881020, 36.564091, 43.479511>,  <34.647289, 36.521374, 43.513348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881020, 36.564091, 43.479511>,  <35.270573, 36.635288, 43.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881020, 36.564091, 43.479511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160756, -0.101951, 0.981715,
		-0.160362, 0.978737, 0.127901,
		-0.973880, -0.177991, 0.140989,
		34.588856, 36.510693, 43.521809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099800, 37.074852, 43.999435>,  <35.270573, 36.635288, 43.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099800, 37.074852, 43.999435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845333, 36.772289, 43.938591>,  <34.692654, 36.590752, 43.902084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845333, 36.772289, 43.938591>,  <35.099800, 37.074852, 43.999435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845333, 36.772289, 43.938591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187911, -0.343113, 0.920306,
		-0.748320, 0.556883, 0.360414,
		-0.636165, -0.756409, -0.152114,
		34.654484, 36.545368, 43.892956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875462, 36.979351, 44.637157>,  <35.099800, 37.074852, 43.999435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875462, 36.979351, 44.637157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766388, 36.639790, 44.456047>,  <34.700943, 36.436054, 44.347382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766388, 36.639790, 44.456047>,  <34.875462, 36.979351, 44.637157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766388, 36.639790, 44.456047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157740, -0.503693, 0.849360,
		-0.949084, 0.160189, 0.271256,
		-0.272688, -0.848901, -0.452778,
		34.684582, 36.385120, 44.320213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337452, 36.756092, 45.023254>,  <34.875462, 36.979351, 44.637157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337452, 36.756092, 45.023254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466709, 36.429005, 44.832714>,  <34.544262, 36.232750, 44.718391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466709, 36.429005, 44.832714>,  <34.337452, 36.756092, 45.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466709, 36.429005, 44.832714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018359, -0.508678, 0.860761,
		-0.946172, -0.269404, -0.179389,
		0.323144, -0.817721, -0.476351,
		34.563652, 36.183689, 44.689808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993378, 36.243092, 45.334476>,  <34.337452, 36.756092, 45.023254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993378, 36.243092, 45.334476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300060, 36.037491, 45.180614>,  <34.484070, 35.914131, 45.088299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300060, 36.037491, 45.180614>,  <33.993378, 36.243092, 45.334476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300060, 36.037491, 45.180614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050670, -0.548833, 0.834395,
		-0.639993, -0.659228, -0.394750,
		0.766708, -0.514005, -0.384653,
		34.530071, 35.883289, 45.065220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824173, 35.459663, 45.570740>,  <33.993378, 36.243092, 45.334476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824173, 35.459663, 45.570740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203320, 35.502556, 45.450710>,  <34.430809, 35.528294, 45.378693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203320, 35.502556, 45.450710>,  <33.824173, 35.459663, 45.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203320, 35.502556, 45.450710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300568, -0.613639, 0.730141,
		-0.105842, -0.782271, -0.613881,
		0.947869, 0.107234, -0.300075,
		34.487679, 35.534725, 45.360687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148663, 34.813862, 45.468494>,  <33.824173, 35.459663, 45.570740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148663, 34.813862, 45.468494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469227, 35.047558, 45.519707>,  <34.661568, 35.187775, 45.550434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469227, 35.047558, 45.519707>,  <34.148663, 34.813862, 45.468494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469227, 35.047558, 45.519707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313869, -0.593032, 0.741484,
		0.509137, -0.554050, -0.658641,
		0.801415, 0.584244, 0.128035,
		34.709652, 35.222832, 45.558117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857574, 34.400074, 45.394894>,  <34.148663, 34.813862, 45.468494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857574, 34.400074, 45.394894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915722, 34.729095, 45.614811>,  <34.950611, 34.926510, 45.746761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915722, 34.729095, 45.614811>,  <34.857574, 34.400074, 45.394894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915722, 34.729095, 45.614811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376328, -0.559900, 0.738166,
		0.915011, 0.099597, -0.390942,
		0.145370, 0.822552, 0.549796,
		34.959332, 34.975861, 45.779751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115192, 34.106178, 46.003799>,  <34.857574, 34.400074, 45.394894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115192, 34.106178, 46.003799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073254, 34.479736, 46.140530>,  <35.048092, 34.703873, 46.222569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073254, 34.479736, 46.140530>,  <35.115192, 34.106178, 46.003799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073254, 34.479736, 46.140530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179914, -0.320237, 0.930096,
		0.978079, 0.159014, -0.134446,
		-0.104844, 0.933896, 0.341826,
		35.041801, 34.759907, 46.243076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790680, 34.304401, 46.450016>,  <35.115192, 34.106178, 46.003799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790680, 34.304401, 46.450016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483921, 34.524643, 46.581890>,  <35.299866, 34.656788, 46.661015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483921, 34.524643, 46.581890>,  <35.790680, 34.304401, 46.450016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483921, 34.524643, 46.581890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029526, -0.482906, 0.875174,
		0.641087, 0.680905, 0.354083,
		-0.766900, 0.550608, 0.329689,
		35.253853, 34.689827, 46.680798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929344, 34.480709, 47.098610>,  <35.790680, 34.304401, 46.450016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929344, 34.480709, 47.098610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533646, 34.537647, 47.112083>,  <35.296227, 34.571808, 47.120167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533646, 34.537647, 47.112083>,  <35.929344, 34.480709, 47.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533646, 34.537647, 47.112083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046495, -0.524330, 0.850245,
		0.138688, 0.839533, 0.525309,
		-0.989244, 0.142343, 0.033684,
		35.236874, 34.580349, 47.122189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831680, 34.851002, 47.741768>,  <35.929344, 34.480709, 47.098610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831680, 34.851002, 47.741768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501007, 34.664001, 47.616528>,  <35.302605, 34.551800, 47.541382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501007, 34.664001, 47.616528>,  <35.831680, 34.851002, 47.741768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501007, 34.664001, 47.616528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070746, -0.465688, 0.882117,
		-0.558201, 0.751383, 0.351903,
		-0.826684, -0.467503, -0.313105,
		35.253002, 34.523750, 47.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521641, 34.659969, 48.315411>,  <35.831680, 34.851002, 47.741768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521641, 34.659969, 48.315411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288231, 34.438171, 48.078079>,  <35.148186, 34.305092, 47.935680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288231, 34.438171, 48.078079>,  <35.521641, 34.659969, 48.315411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288231, 34.438171, 48.078079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064587, -0.696612, 0.714535,
		-0.809523, 0.455270, 0.370677,
		-0.583524, -0.554492, -0.593328,
		35.113174, 34.271824, 47.900082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909100, 34.493988, 48.641006>,  <35.521641, 34.659969, 48.315411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909100, 34.493988, 48.641006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013565, 34.202583, 48.387688>,  <35.076244, 34.027740, 48.235695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013565, 34.202583, 48.387688>,  <34.909100, 34.493988, 48.641006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013565, 34.202583, 48.387688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240526, -0.684489, 0.688202,
		-0.934847, -0.027411, -0.353992,
		0.261168, -0.728508, -0.633299,
		35.091915, 33.984032, 48.197697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341084, 34.006538, 48.561352>,  <34.909100, 34.493988, 48.641006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341084, 34.006538, 48.561352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694038, 33.827934, 48.501987>,  <34.905811, 33.720772, 48.466370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694038, 33.827934, 48.501987>,  <34.341084, 34.006538, 48.561352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694038, 33.827934, 48.501987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152782, -0.570218, 0.807161,
		-0.445030, -0.689553, -0.571371,
		0.882387, -0.446506, -0.148413,
		34.958755, 33.693981, 48.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266022, 33.262226, 48.521999>,  <34.341084, 34.006538, 48.561352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266022, 33.262226, 48.521999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611366, 33.377659, 48.687569>,  <34.818573, 33.446918, 48.786911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611366, 33.377659, 48.687569>,  <34.266022, 33.262226, 48.521999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611366, 33.377659, 48.687569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239632, -0.487420, 0.839642,
		0.444059, -0.824101, -0.351665,
		0.863358, 0.288580, 0.413925,
		34.870373, 33.464233, 48.811745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906685, 33.156898, 49.174618>,  <34.266022, 33.262226, 48.521999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906685, 33.156898, 49.174618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773853, 33.503071, 49.324684>,  <33.694153, 33.710773, 49.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773853, 33.503071, 49.324684>,  <33.906685, 33.156898, 49.174618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773853, 33.503071, 49.324684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125796, -0.434820, 0.891688,
		0.934824, 0.248920, 0.253264,
		-0.332083, 0.865431, 0.375167,
		33.674229, 33.762699, 49.437233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195320, 33.260586, 49.868313>,  <33.906685, 33.156898, 49.174618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195320, 33.260586, 49.868313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856789, 33.466667, 49.814209>,  <33.653671, 33.590317, 49.781746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856789, 33.466667, 49.814209>,  <34.195320, 33.260586, 49.868313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856789, 33.466667, 49.814209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294693, -0.241348, 0.924612,
		0.443721, 0.822383, 0.356087,
		-0.846326, 0.515206, -0.135260,
		33.602890, 33.621227, 49.773632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410027, 32.830967, 50.334785>,  <34.195320, 33.260586, 49.868313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410027, 32.830967, 50.334785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707428, 32.583763, 50.436977>,  <34.885868, 32.435440, 50.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707428, 32.583763, 50.436977>,  <34.410027, 32.830967, 50.334785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707428, 32.583763, 50.436977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137020, -0.233145, -0.962740,
		0.654546, 0.750805, -0.088664,
		0.743502, -0.618009, 0.255479,
		34.930477, 32.398361, 50.513622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965809, 32.904163, 49.866386>,  <34.410027, 32.830967, 50.334785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965809, 32.904163, 49.866386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963295, 32.522774, 49.986950>,  <34.961788, 32.293938, 50.059288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963295, 32.522774, 49.986950>,  <34.965809, 32.904163, 49.866386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963295, 32.522774, 49.986950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049015, -0.300755, -0.952441,
		0.998778, -0.020760, -0.044844,
		-0.006286, -0.953476, 0.301405,
		34.961411, 32.236732, 50.077370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390236, 32.423698, 49.418545>,  <34.965809, 32.904163, 49.866386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390236, 32.423698, 49.418545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100780, 32.176620, 49.541706>,  <34.927109, 32.028374, 49.615604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100780, 32.176620, 49.541706>,  <35.390236, 32.423698, 49.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100780, 32.176620, 49.541706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134867, -0.310968, -0.940803,
		0.676876, -0.722326, 0.141722,
		-0.723637, -0.617693, 0.307904,
		34.883690, 31.991312, 49.634079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386398, 31.855734, 48.974388>,  <35.390236, 32.423698, 49.418545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386398, 31.855734, 48.974388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026482, 31.847349, 49.148720>,  <34.810532, 31.842318, 49.253319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026482, 31.847349, 49.148720>,  <35.386398, 31.855734, 48.974388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026482, 31.847349, 49.148720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427200, -0.160929, -0.889720,
		0.088787, -0.986743, 0.135847,
		-0.899787, -0.020962, 0.435825,
		34.756546, 31.841061, 49.279469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065495, 31.217445, 48.759003>,  <35.386398, 31.855734, 48.974388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065495, 31.217445, 48.759003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797077, 31.494184, 48.865616>,  <34.636024, 31.660229, 48.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797077, 31.494184, 48.865616>,  <35.065495, 31.217445, 48.759003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797077, 31.494184, 48.865616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511973, -0.172378, -0.841528,
		-0.536266, -0.701163, 0.469882,
		-0.671046, 0.691850, 0.266536,
		34.595764, 31.701740, 48.945576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324871, 30.913778, 48.701359>,  <35.065495, 31.217445, 48.759003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324871, 30.913778, 48.701359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397858, 31.300747, 48.631149>,  <34.441650, 31.532928, 48.589024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397858, 31.300747, 48.631149>,  <34.324871, 30.913778, 48.701359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397858, 31.300747, 48.631149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332646, -0.107248, -0.936934,
		-0.925232, 0.229342, 0.302239,
		0.182463, 0.967419, -0.175519,
		34.452595, 31.590973, 48.578495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880043, 31.014828, 48.303459>,  <34.324871, 30.913778, 48.701359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880043, 31.014828, 48.303459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098377, 31.344040, 48.240616>,  <34.229378, 31.541567, 48.202908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098377, 31.344040, 48.240616>,  <33.880043, 31.014828, 48.303459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098377, 31.344040, 48.240616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397628, 0.089388, -0.913182,
		-0.737531, 0.560923, 0.376051,
		0.545839, 0.823028, -0.157112,
		34.262131, 31.590948, 48.193481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472965, 31.333532, 47.931202>,  <33.880043, 31.014828, 48.303459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472965, 31.333532, 47.931202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814247, 31.532951, 47.869892>,  <34.019016, 31.652603, 47.833107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814247, 31.532951, 47.869892>,  <33.472965, 31.333532, 47.931202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814247, 31.532951, 47.869892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290781, 0.210697, -0.933302,
		-0.433001, 0.840867, 0.324736,
		0.853204, 0.498548, -0.153276,
		34.070210, 31.682516, 47.823910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270363, 31.759113, 47.414433>,  <33.472965, 31.333532, 47.931202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270363, 31.759113, 47.414433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664074, 31.829540, 47.408897>,  <33.900303, 31.871796, 47.405575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664074, 31.829540, 47.408897>,  <33.270363, 31.759113, 47.414433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664074, 31.829540, 47.408897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063937, 0.282189, -0.957226,
		-0.164631, 0.943064, 0.289010,
		0.984281, 0.176067, -0.013840,
		33.959358, 31.882360, 47.404747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459202, 32.501152, 47.304047>,  <33.270363, 31.759113, 47.414433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459202, 32.501152, 47.304047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755974, 32.271465, 47.165592>,  <33.934036, 32.133652, 47.082520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755974, 32.271465, 47.165592>,  <33.459202, 32.501152, 47.304047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755974, 32.271465, 47.165592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136732, 0.375823, -0.916549,
		0.656385, 0.727344, 0.200321,
		0.741932, -0.574219, -0.346136,
		33.978554, 32.099201, 47.061752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864880, 32.923851, 46.833023>,  <33.459202, 32.501152, 47.304047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864880, 32.923851, 46.833023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964775, 32.550869, 46.728592>,  <34.024712, 32.327080, 46.665936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964775, 32.550869, 46.728592>,  <33.864880, 32.923851, 46.833023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964775, 32.550869, 46.728592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022237, 0.275070, -0.961167,
		0.968058, 0.234233, 0.089430,
		0.249736, -0.932454, -0.261076,
		34.039696, 32.271133, 46.650269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471996, 32.986019, 46.354786>,  <33.864880, 32.923851, 46.833023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471996, 32.986019, 46.354786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328632, 32.619370, 46.283970>,  <34.242615, 32.399380, 46.241478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328632, 32.619370, 46.283970>,  <34.471996, 32.986019, 46.354786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328632, 32.619370, 46.283970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178805, 0.118730, -0.976694,
		0.916282, -0.381711, 0.121343,
		-0.358408, -0.916624, -0.177042,
		34.221111, 32.344383, 46.230858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936947, 32.645397, 45.900105>,  <34.471996, 32.986019, 46.354786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936947, 32.645397, 45.900105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588894, 32.451450, 45.864834>,  <34.380062, 32.335083, 45.843674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588894, 32.451450, 45.864834>,  <34.936947, 32.645397, 45.900105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588894, 32.451450, 45.864834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040378, 0.108175, -0.993312,
		0.491162, -0.867872, -0.074548,
		-0.870131, -0.484867, -0.088175,
		34.327854, 32.305992, 45.838383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023373, 32.349552, 45.312649>,  <34.936947, 32.645397, 45.900105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023373, 32.349552, 45.312649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628815, 32.344490, 45.378204>,  <34.392078, 32.341454, 45.417538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628815, 32.344490, 45.378204>,  <35.023373, 32.349552, 45.312649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628815, 32.344490, 45.378204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161333, 0.265409, -0.950542,
		-0.031469, -0.964053, -0.263840,
		-0.986398, -0.012654, 0.163886,
		34.332893, 32.340694, 45.427372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783157, 31.853987, 44.749966>,  <35.023373, 32.349552, 45.312649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783157, 31.853987, 44.749966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464935, 32.073292, 44.853111>,  <34.274002, 32.204876, 44.915001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464935, 32.073292, 44.853111>,  <34.783157, 31.853987, 44.749966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464935, 32.073292, 44.853111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218580, 0.137232, -0.966121,
		-0.565077, -0.824969, 0.010663,
		-0.795556, 0.548264, 0.257868,
		34.226269, 32.237770, 44.930473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239105, 31.613436, 44.223080>,  <34.783157, 31.853987, 44.749966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239105, 31.613436, 44.223080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137112, 31.974903, 44.360699>,  <34.075916, 32.191784, 44.443272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137112, 31.974903, 44.360699>,  <34.239105, 31.613436, 44.223080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137112, 31.974903, 44.360699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248110, 0.282752, -0.926549,
		-0.934572, -0.321618, 0.152111,
		-0.254986, 0.903667, 0.344049,
		34.060616, 32.246002, 44.463913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639107, 31.881180, 43.798229>,  <34.239105, 31.613436, 44.223080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639107, 31.881180, 43.798229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776901, 32.215412, 43.969402>,  <33.859577, 32.415951, 44.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776901, 32.215412, 43.969402>,  <33.639107, 31.881180, 43.798229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776901, 32.215412, 43.969402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205665, 0.511937, -0.834040,
		-0.915985, 0.199307, 0.348207,
		0.344490, 0.835582, 0.427937,
		33.880249, 32.466087, 44.097782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125076, 32.338127, 43.564510>,  <33.639107, 31.881180, 43.798229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125076, 32.338127, 43.564510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459183, 32.527542, 43.676296>,  <33.659645, 32.641190, 43.743366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459183, 32.527542, 43.676296>,  <33.125076, 32.338127, 43.564510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459183, 32.527542, 43.676296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005022, 0.501658, -0.865051,
		-0.549829, 0.723948, 0.416637,
		0.835262, 0.473538, 0.279462,
		33.709763, 32.669605, 43.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005230, 32.963985, 43.315239>,  <33.125076, 32.338127, 43.564510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005230, 32.963985, 43.315239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401295, 32.936829, 43.364189>,  <33.638931, 32.920532, 43.393559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401295, 32.936829, 43.364189>,  <33.005230, 32.963985, 43.315239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401295, 32.936829, 43.364189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139948, 0.476114, -0.868177,
		0.000681, 0.876759, 0.480930,
		0.990159, -0.067896, 0.122376,
		33.698341, 32.916458, 43.400902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251808, 33.545547, 43.420849>,  <33.005230, 32.963985, 43.315239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251808, 33.545547, 43.420849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558632, 33.348965, 43.255882>,  <33.742725, 33.231014, 43.156902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558632, 33.348965, 43.255882>,  <33.251808, 33.545547, 43.420849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558632, 33.348965, 43.255882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013408, 0.654954, -0.755550,
		0.641437, 0.574021, 0.508978,
		0.767059, -0.491462, -0.412415,
		33.788750, 33.201527, 43.132156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572422, 34.018974, 43.051495>,  <33.251808, 33.545547, 43.420849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572422, 34.018974, 43.051495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708923, 33.683746, 42.881229>,  <33.790825, 33.482609, 42.779072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708923, 33.683746, 42.881229>,  <33.572422, 34.018974, 43.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708923, 33.683746, 42.881229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164436, 0.392639, -0.904873,
		0.925475, 0.378788, -0.003818,
		0.341256, -0.838066, -0.425664,
		33.811298, 33.432327, 42.753529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931416, 34.232033, 42.469616>,  <33.572422, 34.018974, 43.051495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931416, 34.232033, 42.469616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869549, 33.844704, 42.391205>,  <33.832428, 33.612305, 42.344158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869549, 33.844704, 42.391205>,  <33.931416, 34.232033, 42.469616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869549, 33.844704, 42.391205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369276, 0.240696, -0.897608,
		0.916359, -0.066437, -0.394806,
		-0.154663, -0.968324, -0.196031,
		33.823151, 33.554207, 42.332397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303646, 34.072510, 41.828991>,  <33.931416, 34.232033, 42.469616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303646, 34.072510, 41.828991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031109, 33.784298, 41.880527>,  <33.867584, 33.611370, 41.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031109, 33.784298, 41.880527>,  <34.303646, 34.072510, 41.828991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031109, 33.784298, 41.880527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287626, 0.101700, -0.952328,
		0.673081, -0.685923, -0.276537,
		-0.681347, -0.720533, 0.128837,
		33.826706, 33.568138, 41.919178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421440, 33.640934, 41.375572>,  <34.303646, 34.072510, 41.828991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421440, 33.640934, 41.375572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033363, 33.595135, 41.461002>,  <33.800518, 33.567657, 41.512260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033363, 33.595135, 41.461002>,  <34.421440, 33.640934, 41.375572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033363, 33.595135, 41.461002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220451, 0.051068, -0.974061,
		0.100613, -0.992111, -0.074785,
		-0.970195, -0.114490, 0.213573,
		33.742306, 33.560787, 41.525074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181545, 33.145645, 40.946503>,  <34.421440, 33.640934, 41.375572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181545, 33.145645, 40.946503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838921, 33.303413, 41.079613>,  <33.633347, 33.398075, 41.159477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838921, 33.303413, 41.079613>,  <34.181545, 33.145645, 40.946503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838921, 33.303413, 41.079613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254747, 0.237623, -0.937358,
		-0.448789, -0.887675, -0.103061,
		-0.856559, 0.394421, 0.332775,
		33.581951, 33.421738, 41.179443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624889, 32.988194, 40.488144>,  <34.181545, 33.145645, 40.946503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624889, 32.988194, 40.488144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450375, 33.281136, 40.697258>,  <33.345665, 33.456902, 40.822727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450375, 33.281136, 40.697258>,  <33.624889, 32.988194, 40.488144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450375, 33.281136, 40.697258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402825, 0.360556, -0.841268,
		-0.804602, -0.577627, 0.137705,
		-0.436289, 0.732356, 0.522787,
		33.319489, 33.500843, 40.854095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951405, 32.884026, 40.454456>,  <33.624889, 32.988194, 40.488144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951405, 32.884026, 40.454456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030579, 33.266518, 40.540653>,  <33.078083, 33.496014, 40.592373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030579, 33.266518, 40.540653>,  <32.951405, 32.884026, 40.454456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030579, 33.266518, 40.540653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472779, 0.285716, -0.833574,
		-0.858662, 0.063116, 0.508642,
		0.197940, 0.956233, 0.215494,
		33.089962, 33.553387, 40.605301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319695, 33.302273, 40.408150>,  <32.951405, 32.884026, 40.454456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319695, 33.302273, 40.408150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616428, 33.568844, 40.378338>,  <32.794468, 33.728786, 40.360451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616428, 33.568844, 40.378338>,  <32.319695, 33.302273, 40.408150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616428, 33.568844, 40.378338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468981, 0.436155, -0.768001,
		-0.479315, 0.604679, 0.636097,
		0.741831, 0.666432, -0.074527,
		32.838978, 33.768772, 40.355980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968042, 33.908321, 40.328403>,  <32.319695, 33.302273, 40.408150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968042, 33.908321, 40.328403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333603, 33.977535, 40.181522>,  <32.552940, 34.019062, 40.093391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333603, 33.977535, 40.181522>,  <31.968042, 33.908321, 40.328403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333603, 33.977535, 40.181522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405743, 0.361848, -0.839308,
		-0.012355, 0.916038, 0.400901,
		0.913904, 0.173033, -0.367206,
		32.607773, 34.029446, 40.071362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820477, 34.322117, 39.751270>,  <31.968042, 33.908321, 40.328403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820477, 34.322117, 39.751270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208370, 34.256077, 39.679321>,  <32.441109, 34.216454, 39.636154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208370, 34.256077, 39.679321>,  <31.820477, 34.322117, 39.751270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208370, 34.256077, 39.679321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045921, 0.600219, -0.798516,
		0.239797, 0.782610, 0.574473,
		0.969736, -0.165102, -0.179869,
		32.499290, 34.206547, 39.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193169, 35.001358, 39.675125>,  <31.820477, 34.322117, 39.751270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193169, 35.001358, 39.675125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404198, 34.716022, 39.490601>,  <32.530815, 34.544823, 39.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404198, 34.716022, 39.490601>,  <32.193169, 35.001358, 39.675125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404198, 34.716022, 39.490601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119916, 0.475064, -0.871742,
		0.841001, 0.515230, 0.165092,
		0.527576, -0.713339, -0.461314,
		32.562469, 34.502022, 39.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622879, 35.306656, 39.250275>,  <32.193169, 35.001358, 39.675125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622879, 35.306656, 39.250275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621357, 34.939632, 39.091244>,  <32.620441, 34.719418, 38.995823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621357, 34.939632, 39.091244>,  <32.622879, 35.306656, 39.250275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621357, 34.939632, 39.091244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055736, 0.397159, -0.916056,
		0.998438, 0.018670, -0.052655,
		-0.003810, -0.917560, -0.397579,
		32.620213, 34.664364, 38.971970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008991, 35.471893, 38.720245>,  <32.622879, 35.306656, 39.250275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008991, 35.471893, 38.720245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831577, 35.122288, 38.640865>,  <32.725128, 34.912525, 38.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831577, 35.122288, 38.640865>,  <33.008991, 35.471893, 38.720245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831577, 35.122288, 38.640865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202508, 0.313423, -0.927770,
		0.873078, -0.371314, -0.316009,
		-0.443538, -0.874009, -0.198448,
		32.698517, 34.860085, 38.581329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390186, 35.219170, 38.113346>,  <33.008991, 35.471893, 38.720245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390186, 35.219170, 38.113346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056828, 34.999565, 38.138775>,  <32.856812, 34.867802, 38.154034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056828, 34.999565, 38.138775>,  <33.390186, 35.219170, 38.113346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056828, 34.999565, 38.138775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216897, 0.219090, -0.951291,
		0.508341, -0.806589, -0.301667,
		-0.833394, -0.549011, 0.063575,
		32.806808, 34.834862, 38.157848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341900, 34.701462, 37.564247>,  <33.390186, 35.219170, 38.113346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341900, 34.701462, 37.564247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956882, 34.766552, 37.650986>,  <32.725872, 34.805607, 37.703030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956882, 34.766552, 37.650986>,  <33.341900, 34.701462, 37.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956882, 34.766552, 37.650986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174239, 0.241497, -0.954631,
		-0.207710, -0.956661, -0.204099,
		-0.962547, 0.162724, 0.216849,
		32.668118, 34.815369, 37.716042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032494, 34.355873, 36.962185>,  <33.341900, 34.701462, 37.564247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032494, 34.355873, 36.962185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748707, 34.590405, 37.118584>,  <32.578434, 34.731125, 37.212421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748707, 34.590405, 37.118584>,  <33.032494, 34.355873, 36.962185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748707, 34.590405, 37.118584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370479, 0.161666, -0.914664,
		-0.599505, -0.793777, 0.102526,
		-0.709464, 0.586329, 0.390997,
		32.535866, 34.766304, 37.235882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425594, 33.999519, 36.728252>,  <33.032494, 34.355873, 36.962185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425594, 33.999519, 36.728252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324173, 34.373592, 36.827168>,  <32.263321, 34.598034, 36.886517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324173, 34.373592, 36.827168>,  <32.425594, 33.999519, 36.728252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324173, 34.373592, 36.827168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245088, 0.185192, -0.951649,
		-0.935759, -0.301897, 0.182246,
		-0.253550, 0.935180, 0.247287,
		32.248108, 34.654148, 36.901352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779451, 34.171974, 36.323322>,  <32.425594, 33.999519, 36.728252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779451, 34.171974, 36.323322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906214, 34.529488, 36.450264>,  <31.982271, 34.743996, 36.526428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906214, 34.529488, 36.450264>,  <31.779451, 34.171974, 36.323322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906214, 34.529488, 36.450264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282816, 0.408428, -0.867872,
		-0.905310, 0.185281, 0.382211,
		0.316906, 0.893788, 0.317354,
		32.001286, 34.797623, 36.545471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228781, 34.720047, 36.111065>,  <31.779451, 34.171974, 36.323322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228781, 34.720047, 36.111065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589109, 34.889984, 36.146904>,  <31.805307, 34.991947, 36.168407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589109, 34.889984, 36.146904>,  <31.228781, 34.720047, 36.111065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589109, 34.889984, 36.146904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129681, 0.460198, -0.878294,
		-0.414373, 0.779566, 0.469651,
		0.900821, 0.424846, 0.089599,
		31.859356, 35.017437, 36.173782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152575, 35.383099, 36.041515>,  <31.228781, 34.720047, 36.111065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152575, 35.383099, 36.041515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545202, 35.355038, 35.970413>,  <31.780779, 35.338200, 35.927753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545202, 35.355038, 35.970413>,  <31.152575, 35.383099, 36.041515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545202, 35.355038, 35.970413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138022, 0.383050, -0.913358,
		0.132165, 0.921060, 0.366308,
		0.981571, -0.070155, -0.177752,
		31.839674, 35.333992, 35.917088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310537, 35.966515, 35.776451>,  <31.152575, 35.383099, 36.041515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310537, 35.966515, 35.776451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589745, 35.701488, 35.667805>,  <31.757269, 35.542473, 35.602615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589745, 35.701488, 35.667805>,  <31.310537, 35.966515, 35.776451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589745, 35.701488, 35.667805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047178, 0.335933, -0.940704,
		0.714526, 0.669440, 0.203228,
		0.698016, -0.662570, -0.271616,
		31.799149, 35.502716, 35.586319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766838, 36.376999, 35.463886>,  <31.310537, 35.966515, 35.776451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766838, 36.376999, 35.463886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884800, 36.016949, 35.335629>,  <31.955576, 35.800919, 35.258675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884800, 36.016949, 35.335629>,  <31.766838, 36.376999, 35.463886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884800, 36.016949, 35.335629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106075, 0.302655, -0.947179,
		0.949621, 0.313338, -0.006226,
		0.294903, -0.900121, -0.320645,
		31.973270, 35.746914, 35.239433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123337, 36.584713, 35.016148>,  <31.766838, 36.376999, 35.463886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123337, 36.584713, 35.016148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004448, 36.212318, 34.931366>,  <31.933115, 35.988880, 34.880497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004448, 36.212318, 34.931366>,  <32.123337, 36.584713, 35.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004448, 36.212318, 34.931366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014581, 0.226387, -0.973928,
		0.954698, -0.286379, -0.080861,
		-0.297219, -0.930986, -0.211955,
		31.915283, 35.933022, 34.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443943, 36.367920, 34.322113>,  <32.123337, 36.584713, 35.016148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443943, 36.367920, 34.322113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124371, 36.130199, 34.359028>,  <31.932627, 35.987568, 34.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124371, 36.130199, 34.359028>,  <32.443943, 36.367920, 34.322113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124371, 36.130199, 34.359028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258104, 0.200216, -0.945143,
		0.543220, -0.778925, -0.313350,
		-0.798933, -0.594298, 0.092282,
		31.884691, 35.951912, 34.386711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464642, 35.768654, 33.735294>,  <32.443943, 36.367920, 34.322113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464642, 35.768654, 33.735294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104195, 35.912170, 33.832668>,  <31.887926, 35.998280, 33.891090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104195, 35.912170, 33.832668>,  <32.464642, 35.768654, 33.735294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104195, 35.912170, 33.832668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282331, -0.059465, -0.957472,
		-0.329057, -0.931522, 0.154883,
		-0.901116, 0.358791, 0.243430,
		31.833860, 36.019806, 33.905697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118401, 35.522182, 33.830425>,  <32.464642, 35.768654, 33.735294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118401, 35.522182, 33.830425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450146, 35.525318, 33.606964>,  <33.649193, 35.527199, 33.472889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450146, 35.525318, 33.606964>,  <33.118401, 35.522182, 33.830425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450146, 35.525318, 33.606964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495772, -0.471361, 0.729404,
		-0.257604, -0.881906, -0.394820,
		0.829368, 0.007843, -0.558648,
		33.698956, 35.527672, 33.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450027, 34.892300, 33.936684>,  <33.118401, 35.522182, 33.830425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450027, 34.892300, 33.936684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712376, 35.172886, 33.825127>,  <33.869785, 35.341236, 33.758194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712376, 35.172886, 33.825127>,  <33.450027, 34.892300, 33.936684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712376, 35.172886, 33.825127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607000, -0.270445, 0.747269,
		0.448757, -0.659400, -0.603166,
		0.655873, 0.701463, -0.278891,
		33.909138, 35.383324, 33.741459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996426, 34.539688, 33.814716>,  <33.450027, 34.892300, 33.936684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996426, 34.539688, 33.814716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122528, 34.906418, 33.912739>,  <34.198189, 35.126457, 33.971550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122528, 34.906418, 33.912739>,  <33.996426, 34.539688, 33.814716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122528, 34.906418, 33.912739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691934, -0.398784, 0.601829,
		0.649494, -0.020169, -0.760100,
		0.315254, 0.916823, 0.245052,
		34.217106, 35.181465, 33.986256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706459, 34.438244, 33.852036>,  <33.996426, 34.539688, 33.814716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706459, 34.438244, 33.852036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678661, 34.789154, 34.042004>,  <34.661983, 34.999702, 34.155983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678661, 34.789154, 34.042004>,  <34.706459, 34.438244, 33.852036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678661, 34.789154, 34.042004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801985, -0.234005, 0.549602,
		0.593289, 0.419072, -0.687304,
		-0.069490, 0.877280, 0.474922,
		34.657814, 35.052338, 34.184479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336567, 34.571537, 34.061111>,  <34.706459, 34.438244, 33.852036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336567, 34.571537, 34.061111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141979, 34.853230, 34.267956>,  <35.025227, 35.022243, 34.392063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141979, 34.853230, 34.267956>,  <35.336567, 34.571537, 34.061111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141979, 34.853230, 34.267956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552321, -0.210715, 0.806561,
		0.676969, 0.677980, -0.286455,
		-0.486472, 0.704232, 0.517110,
		34.996037, 35.064499, 34.423088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785671, 34.738693, 34.567905>,  <35.336567, 34.571537, 34.061111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785671, 34.738693, 34.567905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451996, 34.893406, 34.725147>,  <35.251789, 34.986233, 34.819492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451996, 34.893406, 34.725147>,  <35.785671, 34.738693, 34.567905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451996, 34.893406, 34.725147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335002, -0.210818, 0.918330,
		0.438064, 0.897751, 0.046290,
		-0.834190, 0.386780, 0.393101,
		35.201740, 35.009441, 34.843079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038403, 35.279102, 35.104496>,  <35.785671, 34.738693, 34.567905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038403, 35.279102, 35.104496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667610, 35.152977, 35.185776>,  <35.445137, 35.077301, 35.234543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667610, 35.152977, 35.185776>,  <36.038403, 35.279102, 35.104496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667610, 35.152977, 35.185776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240480, -0.083789, 0.967031,
		-0.287889, 0.945282, 0.153497,
		-0.926978, -0.315311, 0.203200,
		35.389515, 35.058384, 35.246735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869560, 35.591774, 35.670055>,  <36.038403, 35.279102, 35.104496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869560, 35.591774, 35.670055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637604, 35.265900, 35.670948>,  <35.498428, 35.070374, 35.671482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637604, 35.265900, 35.670948>,  <35.869560, 35.591774, 35.670055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637604, 35.265900, 35.670948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223617, -0.156537, 0.962025,
		-0.783403, 0.558370, 0.272953,
		-0.579893, -0.814690, 0.002230,
		35.463634, 35.021492, 35.671616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718540, 35.604198, 36.394871>,  <35.869560, 35.591774, 35.670055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718540, 35.604198, 36.394871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622093, 35.246078, 36.245041>,  <35.564224, 35.031208, 36.155144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622093, 35.246078, 36.245041>,  <35.718540, 35.604198, 36.394871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622093, 35.246078, 36.245041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291310, -0.434932, 0.852040,
		-0.925743, 0.096324, 0.365678,
		-0.241117, -0.895297, -0.374575,
		35.549759, 34.977489, 36.132668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463848, 35.313629, 36.948780>,  <35.718540, 35.604198, 36.394871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463848, 35.313629, 36.948780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548061, 34.997715, 36.718334>,  <35.598591, 34.808167, 36.580067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548061, 34.997715, 36.718334>,  <35.463848, 35.313629, 36.948780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548061, 34.997715, 36.718334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163947, -0.552452, 0.817263,
		-0.963741, -0.266514, 0.013173,
		0.210534, -0.789790, -0.576115,
		35.611221, 34.760777, 36.545502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103756, 34.665890, 37.249947>,  <35.463848, 35.313629, 36.948780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103756, 34.665890, 37.249947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410069, 34.528812, 37.032269>,  <35.593857, 34.446568, 36.901661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410069, 34.528812, 37.032269>,  <35.103756, 34.665890, 37.249947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410069, 34.528812, 37.032269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209089, -0.667552, 0.714601,
		-0.608162, -0.661013, -0.439546,
		0.765781, -0.342689, -0.544191,
		35.639801, 34.426006, 36.869011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166267, 34.006287, 37.484512>,  <35.103756, 34.665890, 37.249947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166267, 34.006287, 37.484512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513977, 34.047787, 37.291187>,  <35.722603, 34.072685, 37.175190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513977, 34.047787, 37.291187>,  <35.166267, 34.006287, 37.484512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513977, 34.047787, 37.291187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409106, -0.699798, 0.585590,
		-0.277469, -0.706767, -0.650762,
		0.869278, 0.103748, -0.483315,
		35.774761, 34.078911, 37.146194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315323, 33.399704, 37.117290>,  <35.166267, 34.006287, 37.484512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315323, 33.399704, 37.117290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632652, 33.604710, 37.248722>,  <35.823051, 33.727711, 37.327579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632652, 33.604710, 37.248722>,  <35.315323, 33.399704, 37.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632652, 33.604710, 37.248722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271104, -0.780656, 0.563097,
		0.545100, -0.357642, -0.758260,
		0.793327, 0.512512, 0.328577,
		35.870651, 33.758465, 37.347294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692539, 32.852406, 37.326538>,  <35.315323, 33.399704, 37.117290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692539, 32.852406, 37.326538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856941, 33.189930, 37.464558>,  <35.955582, 33.392445, 37.547371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856941, 33.189930, 37.464558>,  <35.692539, 32.852406, 37.326538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856941, 33.189930, 37.464558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456314, -0.518095, 0.723433,
		0.789208, -0.139885, -0.597982,
		0.411010, 0.843807, 0.345053,
		35.980244, 33.443073, 37.568073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399967, 32.649269, 37.426121>,  <35.692539, 32.852406, 37.326538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399967, 32.649269, 37.426121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300301, 32.970905, 37.642033>,  <36.240501, 33.163887, 37.771580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300301, 32.970905, 37.642033>,  <36.399967, 32.649269, 37.426121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300301, 32.970905, 37.642033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231315, -0.491810, 0.839414,
		0.940431, 0.334009, -0.063457,
		-0.249163, 0.804090, 0.539775,
		36.225552, 33.212132, 37.803967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912731, 32.689522, 37.936592>,  <36.399967, 32.649269, 37.426121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912731, 32.689522, 37.936592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634510, 32.936848, 38.082954>,  <36.467579, 33.085243, 38.170773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634510, 32.936848, 38.082954>,  <36.912731, 32.689522, 37.936592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634510, 32.936848, 38.082954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132021, -0.390620, 0.911036,
		0.706240, 0.681982, 0.190066,
		-0.695554, 0.618317, 0.365908,
		36.425842, 33.122341, 38.192726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164429, 32.880119, 38.553871>,  <36.912731, 32.689522, 37.936592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164429, 32.880119, 38.553871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773155, 32.946808, 38.603432>,  <36.538391, 32.986820, 38.633167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773155, 32.946808, 38.603432>,  <37.164429, 32.880119, 38.553871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773155, 32.946808, 38.603432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045818, -0.408609, 0.911559,
		0.202605, 0.897353, 0.392058,
		-0.978188, 0.166723, 0.123901,
		36.479698, 32.996826, 38.640602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025246, 33.286949, 39.198776>,  <37.164429, 32.880119, 38.553871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025246, 33.286949, 39.198776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666637, 33.130814, 39.114971>,  <36.451473, 33.037132, 39.064690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666637, 33.130814, 39.114971>,  <37.025246, 33.286949, 39.198776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666637, 33.130814, 39.114971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122005, -0.237086, 0.963797,
		-0.425878, 0.889622, 0.164929,
		-0.896517, -0.390337, -0.209508,
		36.397682, 33.013714, 39.052120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663612, 33.622612, 39.620880>,  <37.025246, 33.286949, 39.198776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663612, 33.622612, 39.620880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471153, 33.286304, 39.521595>,  <36.355679, 33.084518, 39.462025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471153, 33.286304, 39.521595>,  <36.663612, 33.622612, 39.620880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471153, 33.286304, 39.521595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148664, -0.200779, 0.968291,
		-0.863944, 0.502787, -0.028389,
		-0.481144, -0.840769, -0.248208,
		36.326809, 33.034073, 39.447132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173634, 33.570095, 40.107479>,  <36.663612, 33.622612, 39.620880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173634, 33.570095, 40.107479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175915, 33.198673, 39.959019>,  <36.177284, 32.975819, 39.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175915, 33.198673, 39.959019>,  <36.173634, 33.570095, 40.107479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175915, 33.198673, 39.959019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005724, -0.371184, 0.928542,
		-0.999967, -0.003169, -0.007431,
		0.005701, -0.928554, -0.371154,
		36.177624, 32.920109, 39.847672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522438, 33.292603, 40.137215>,  <36.173634, 33.570095, 40.107479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522438, 33.292603, 40.137215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799400, 33.003998, 40.136806>,  <35.965576, 32.830833, 40.136562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799400, 33.003998, 40.136806>,  <35.522438, 33.292603, 40.137215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799400, 33.003998, 40.136806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153599, -0.148779, 0.976869,
		-0.704974, -0.676229, -0.213838,
		0.692401, -0.721512, -0.001018,
		36.007122, 32.787544, 40.136501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226791, 32.770481, 40.577362>,  <35.522438, 33.292603, 40.137215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226791, 32.770481, 40.577362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620068, 32.699005, 40.562321>,  <35.856033, 32.656120, 40.553295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620068, 32.699005, 40.562321>,  <35.226791, 32.770481, 40.577362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620068, 32.699005, 40.562321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006518, -0.171441, 0.985173,
		-0.182505, -0.968850, -0.167393,
		0.983183, -0.178708, -0.037603,
		35.915024, 32.645397, 40.551041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270294, 32.017738, 40.892914>,  <35.226791, 32.770481, 40.577362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270294, 32.017738, 40.892914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638065, 32.171700, 40.925175>,  <35.858727, 32.264076, 40.944530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638065, 32.171700, 40.925175>,  <35.270294, 32.017738, 40.892914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638065, 32.171700, 40.925175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064040, -0.055820, 0.996385,
		0.388014, -0.921267, -0.026673,
		0.919426, 0.384904, 0.080657,
		35.913895, 32.287170, 40.949371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666771, 31.586058, 41.474670>,  <35.270294, 32.017738, 40.892914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666771, 31.586058, 41.474670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842537, 31.944902, 41.456318>,  <35.947998, 32.160210, 41.445305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842537, 31.944902, 41.456318>,  <35.666771, 31.586058, 41.474670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842537, 31.944902, 41.456318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013769, 0.057799, 0.998233,
		0.898177, -0.438011, 0.037750,
		0.439419, 0.897110, -0.045883,
		35.974361, 32.214035, 41.442554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329826, 31.555180, 41.902695>,  <35.666771, 31.586058, 41.474670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329826, 31.555180, 41.902695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291058, 31.952799, 41.882782>,  <36.267796, 32.191368, 41.870834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291058, 31.952799, 41.882782>,  <36.329826, 31.555180, 41.902695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291058, 31.952799, 41.882782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055628, 0.055350, 0.996916,
		0.993736, 0.093850, -0.060661,
		-0.096919, 0.994046, -0.049783,
		36.261982, 32.251015, 41.867847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773518, 31.847771, 42.377178>,  <36.329826, 31.555180, 41.902695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773518, 31.847771, 42.377178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510765, 32.140404, 42.304195>,  <36.353111, 32.315983, 42.260406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510765, 32.140404, 42.304195>,  <36.773518, 31.847771, 42.377178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510765, 32.140404, 42.304195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023008, 0.261326, 0.964977,
		0.753641, 0.629679, -0.188493,
		-0.656883, 0.731583, -0.182458,
		36.313702, 32.359879, 42.249458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053535, 32.446751, 42.370991>,  <36.773518, 31.847771, 42.377178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053535, 32.446751, 42.370991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680664, 32.471943, 42.513584>,  <36.456944, 32.487057, 42.599140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680664, 32.471943, 42.513584>,  <37.053535, 32.446751, 42.370991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680664, 32.471943, 42.513584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361893, 0.186737, 0.913325,
		-0.009048, 0.980389, -0.196864,
		-0.932176, 0.062980, 0.356485,
		36.401012, 32.490837, 42.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083115, 32.997738, 42.908009>,  <37.053535, 32.446751, 42.370991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083115, 32.997738, 42.908009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774971, 32.749126, 42.964920>,  <36.590084, 32.599960, 42.999065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774971, 32.749126, 42.964920>,  <37.083115, 32.997738, 42.908009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774971, 32.749126, 42.964920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090486, 0.114315, 0.989315,
		-0.631157, 0.775002, -0.031823,
		-0.770360, -0.621533, 0.142277,
		36.543861, 32.562668, 43.007603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557789, 33.344791, 43.296295>,  <37.083115, 32.997738, 42.908009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557789, 33.344791, 43.296295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531132, 32.951252, 43.362747>,  <36.515137, 32.715126, 43.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531132, 32.951252, 43.362747>,  <36.557789, 33.344791, 43.296295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531132, 32.951252, 43.362747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172915, 0.152588, 0.973045,
		-0.982680, 0.093573, 0.159953,
		-0.066644, -0.983850, 0.166125,
		36.511139, 32.656097, 43.412586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073376, 33.341114, 43.886818>,  <36.557789, 33.344791, 43.296295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073376, 33.341114, 43.886818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263084, 32.989040, 43.894165>,  <36.376911, 32.777794, 43.898575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263084, 32.989040, 43.894165>,  <36.073376, 33.341114, 43.886818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263084, 32.989040, 43.894165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096026, 0.072458, 0.992738,
		-0.875125, -0.469066, 0.118886,
		0.474274, -0.880186, 0.018367,
		36.405365, 32.724983, 43.899673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734737, 33.030159, 44.415924>,  <36.073376, 33.341114, 43.886818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734737, 33.030159, 44.415924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086834, 32.850201, 44.355560>,  <36.298092, 32.742226, 44.319344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086834, 32.850201, 44.355560>,  <35.734737, 33.030159, 44.415924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086834, 32.850201, 44.355560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182055, 0.026489, 0.982932,
		-0.438218, -0.892689, 0.105222,
		0.880239, -0.449895, -0.150911,
		36.350906, 32.715233, 44.310287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744625, 32.609386, 44.926979>,  <35.734737, 33.030159, 44.415924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744625, 32.609386, 44.926979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127350, 32.610798, 44.810711>,  <36.356987, 32.611645, 44.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127350, 32.610798, 44.810711>,  <35.744625, 32.609386, 44.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127350, 32.610798, 44.810711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289729, 0.069774, 0.954562,
		0.023647, -0.997557, 0.065739,
		0.956817, 0.003526, -0.290671,
		36.414394, 32.611858, 44.723511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150448, 32.010509, 45.297783>,  <35.744625, 32.609386, 44.926979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150448, 32.010509, 45.297783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456112, 32.228485, 45.159740>,  <36.639511, 32.359268, 45.076916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456112, 32.228485, 45.159740>,  <36.150448, 32.010509, 45.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456112, 32.228485, 45.159740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467422, -0.099150, 0.878457,
		0.444487, -0.832594, -0.330483,
		0.764165, 0.544937, -0.345102,
		36.685360, 32.391968, 45.056210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765228, 31.776287, 45.575775>,  <36.150448, 32.010509, 45.297783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765228, 31.776287, 45.575775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880611, 32.147659, 45.482132>,  <36.949841, 32.370483, 45.425945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880611, 32.147659, 45.482132>,  <36.765228, 31.776287, 45.575775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880611, 32.147659, 45.482132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488538, 0.067567, 0.869923,
		0.823482, -0.365306, -0.434084,
		0.288458, 0.928432, -0.234107,
		36.967148, 32.426189, 45.411900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533787, 31.801563, 45.592896>,  <36.765228, 31.776287, 45.575775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533787, 31.801563, 45.592896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409691, 32.180351, 45.626358>,  <37.335236, 32.407623, 45.646435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409691, 32.180351, 45.626358>,  <37.533787, 31.801563, 45.592896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409691, 32.180351, 45.626358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631354, 0.139447, 0.762854,
		0.710735, 0.289483, -0.641136,
		-0.310237, 0.946971, 0.083656,
		37.316620, 32.464443, 45.651455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074032, 32.295254, 45.643002>,  <37.533787, 31.801563, 45.592896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074032, 32.295254, 45.643002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787601, 32.525726, 45.800606>,  <37.615742, 32.664009, 45.895168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787601, 32.525726, 45.800606>,  <38.074032, 32.295254, 45.643002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787601, 32.525726, 45.800606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572867, 0.162587, 0.803361,
		0.398822, 0.800985, -0.446501,
		-0.716076, 0.576184, 0.394015,
		37.572781, 32.698582, 45.918812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419632, 32.914490, 45.811306>,  <38.074032, 32.295254, 45.643002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419632, 32.914490, 45.811306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085968, 32.978928, 46.022293>,  <37.885769, 33.017590, 46.148884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085968, 32.978928, 46.022293>,  <38.419632, 32.914490, 45.811306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085968, 32.978928, 46.022293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551429, 0.260893, 0.792377,
		-0.009968, 0.951832, -0.306458,
		-0.834163, 0.161091, 0.527468,
		37.835720, 33.027256, 46.180534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551647, 33.541016, 46.169136>,  <38.419632, 32.914490, 45.811306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551647, 33.541016, 46.169136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277805, 33.312721, 46.350498>,  <38.113499, 33.175743, 46.459316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277805, 33.312721, 46.350498>,  <38.551647, 33.541016, 46.169136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277805, 33.312721, 46.350498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477800, 0.118385, 0.870455,
		-0.550476, 0.812555, 0.191650,
		-0.684604, -0.570736, 0.453407,
		38.072426, 33.141502, 46.486519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154972, 33.897285, 46.755577>,  <38.551647, 33.541016, 46.169136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154972, 33.897285, 46.755577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228470, 33.504242, 46.766346>,  <38.272568, 33.268417, 46.772808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228470, 33.504242, 46.766346>,  <38.154972, 33.897285, 46.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228470, 33.504242, 46.766346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538548, 0.123539, 0.833489,
		-0.822317, -0.138649, 0.551880,
		0.183741, -0.982606, 0.026919,
		38.283592, 33.209461, 46.774422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526062, 34.387482, 46.360409>,  <38.154972, 33.897285, 46.755577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526062, 34.387482, 46.360409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914864, 34.467865, 46.311703>,  <39.148144, 34.516098, 46.282478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914864, 34.467865, 46.311703>,  <38.526062, 34.387482, 46.360409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914864, 34.467865, 46.311703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190635, 0.371455, -0.908669,
		-0.137377, 0.906441, 0.399365,
		0.972001, 0.200963, -0.121770,
		39.206463, 34.528152, 46.275173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581867, 35.147999, 46.239254>,  <38.526062, 34.387482, 46.360409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581867, 35.147999, 46.239254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888901, 34.951599, 46.074455>,  <39.073120, 34.833759, 45.975578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888901, 34.951599, 46.074455>,  <38.581867, 35.147999, 46.239254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888901, 34.951599, 46.074455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156585, 0.479660, -0.863370,
		0.621530, 0.727219, 0.291296,
		0.767582, -0.490997, -0.411995,
		39.119175, 34.804298, 45.950855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008595, 35.659763, 45.877209>,  <38.581867, 35.147999, 46.239254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008595, 35.659763, 45.877209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085041, 35.308205, 45.702389>,  <39.130909, 35.097267, 45.597496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085041, 35.308205, 45.702389>,  <39.008595, 35.659763, 45.877209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085041, 35.308205, 45.702389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153054, 0.413123, -0.897721,
		0.969562, 0.238459, -0.055565,
		0.191115, -0.878901, -0.437046,
		39.142376, 35.044533, 45.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317924, 35.880077, 45.267998>,  <39.008595, 35.659763, 45.877209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317924, 35.880077, 45.267998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226730, 35.494488, 45.213196>,  <39.172012, 35.263134, 45.180313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226730, 35.494488, 45.213196>,  <39.317924, 35.880077, 45.267998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226730, 35.494488, 45.213196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230050, 0.190062, -0.954439,
		0.946096, -0.186082, -0.265094,
		-0.227988, -0.963976, -0.137009,
		39.158333, 35.205296, 45.172092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707138, 35.639530, 44.722458>,  <39.317924, 35.880077, 45.267998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707138, 35.639530, 44.722458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387386, 35.399891, 44.704262>,  <39.195534, 35.256107, 44.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387386, 35.399891, 44.704262>,  <39.707138, 35.639530, 44.722458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387386, 35.399891, 44.704262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028555, 0.113509, -0.993126,
		0.600143, -0.792589, -0.107845,
		-0.799383, -0.599098, -0.045489,
		39.147572, 35.220161, 44.690617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740456, 35.194420, 44.061523>,  <39.707138, 35.639530, 44.722458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740456, 35.194420, 44.061523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354664, 35.163830, 44.162663>,  <39.123188, 35.145473, 44.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354664, 35.163830, 44.162663>,  <39.740456, 35.194420, 44.061523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354664, 35.163830, 44.162663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263233, 0.198221, -0.944149,
		0.022087, -0.977169, -0.211311,
		-0.964480, -0.076477, 0.252845,
		39.065319, 35.140888, 44.238518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459724, 34.718765, 43.651150>,  <39.740456, 35.194420, 44.061523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459724, 34.718765, 43.651150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149227, 34.939037, 43.773914>,  <38.962929, 35.071201, 43.847572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149227, 34.939037, 43.773914>,  <39.459724, 34.718765, 43.651150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149227, 34.939037, 43.773914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351064, 0.026773, -0.935969,
		-0.523638, -0.834286, 0.172542,
		-0.776246, 0.550682, 0.306907,
		38.916355, 35.104240, 43.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939240, 34.486393, 43.304123>,  <39.459724, 34.718765, 43.651150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939240, 34.486393, 43.304123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795639, 34.836613, 43.433449>,  <38.709480, 35.046745, 43.511044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795639, 34.836613, 43.433449>,  <38.939240, 34.486393, 43.304123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795639, 34.836613, 43.433449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462411, 0.134055, -0.876473,
		-0.810738, -0.464158, 0.356738,
		-0.359000, 0.875550, 0.323315,
		38.687939, 35.099277, 43.530445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326942, 34.588768, 43.007168>,  <38.939240, 34.486393, 43.304123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326942, 34.588768, 43.007168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384098, 34.967899, 43.121151>,  <38.418392, 35.195377, 43.189541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384098, 34.967899, 43.121151>,  <38.326942, 34.588768, 43.007168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384098, 34.967899, 43.121151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393243, 0.318581, -0.862477,
		-0.908262, 0.011185, 0.418251,
		0.142894, 0.947830, 0.284956,
		38.426968, 35.252247, 43.206638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709816, 34.998707, 42.874557>,  <38.326942, 34.588768, 43.007168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709816, 34.998707, 42.874557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020100, 35.251106, 42.878796>,  <38.206268, 35.402546, 42.881340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020100, 35.251106, 42.878796>,  <37.709816, 34.998707, 42.874557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020100, 35.251106, 42.878796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203716, 0.266259, -0.942128,
		-0.597308, 0.728657, 0.335084,
		0.775708, 0.631003, 0.010600,
		38.252811, 35.440407, 42.881977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480812, 35.690029, 42.747131>,  <37.709816, 34.998707, 42.874557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480812, 35.690029, 42.747131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863781, 35.675865, 42.632530>,  <38.093563, 35.667366, 42.563770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863781, 35.675865, 42.632530>,  <37.480812, 35.690029, 42.747131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863781, 35.675865, 42.632530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267723, 0.262385, -0.927081,
		0.108001, 0.964313, 0.241734,
		0.957424, -0.035408, -0.286507,
		38.151009, 35.665241, 42.546577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568985, 36.372303, 42.392071>,  <37.480812, 35.690029, 42.747131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568985, 36.372303, 42.392071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870232, 36.130875, 42.287369>,  <38.050980, 35.986019, 42.224548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870232, 36.130875, 42.287369>,  <37.568985, 36.372303, 42.392071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870232, 36.130875, 42.287369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096417, 0.292318, -0.951448,
		0.650784, 0.741789, 0.161955,
		0.753117, -0.603572, -0.261757,
		38.096165, 35.949802, 42.208843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041267, 36.784142, 41.917839>,  <37.568985, 36.372303, 42.392071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041267, 36.784142, 41.917839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114388, 36.393307, 41.874241>,  <38.158260, 36.158806, 41.848083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114388, 36.393307, 41.874241>,  <38.041267, 36.784142, 41.917839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114388, 36.393307, 41.874241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076271, 0.096432, -0.992413,
		0.980187, 0.189728, -0.056896,
		0.182802, -0.977089, -0.108992,
		38.169228, 36.100182, 41.841541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497360, 36.721291, 41.295414>,  <38.041267, 36.784142, 41.917839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497360, 36.721291, 41.295414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323429, 36.365574, 41.352104>,  <38.219070, 36.152145, 41.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323429, 36.365574, 41.352104>,  <38.497360, 36.721291, 41.295414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323429, 36.365574, 41.352104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220416, -0.047490, -0.974249,
		0.873120, -0.454872, -0.175363,
		-0.434831, -0.889290, 0.141726,
		38.192978, 36.098785, 41.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730202, 36.341309, 40.785439>,  <38.497360, 36.721291, 41.295414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730202, 36.341309, 40.785439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424046, 36.102612, 40.881828>,  <38.240353, 35.959393, 40.939663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424046, 36.102612, 40.881828>,  <38.730202, 36.341309, 40.785439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424046, 36.102612, 40.881828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171303, -0.172017, -0.970085,
		0.620344, -0.783777, 0.029436,
		-0.765394, -0.596744, 0.240973,
		38.194427, 35.923588, 40.954121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898479, 35.731041, 40.509594>,  <38.730202, 36.341309, 40.785439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898479, 35.731041, 40.509594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500500, 35.727261, 40.549564>,  <38.261711, 35.724995, 40.573547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500500, 35.727261, 40.549564>,  <38.898479, 35.731041, 40.509594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500500, 35.727261, 40.549564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097688, -0.137549, -0.985666,
		0.023060, -0.990450, 0.135931,
		-0.994950, -0.009450, 0.099927,
		38.202015, 35.724426, 40.579544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648624, 35.168011, 40.167286>,  <38.898479, 35.731041, 40.509594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648624, 35.168011, 40.167286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317913, 35.392262, 40.185757>,  <38.119488, 35.526814, 40.196838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317913, 35.392262, 40.185757>,  <38.648624, 35.168011, 40.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317913, 35.392262, 40.185757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152389, -0.144191, -0.977746,
		-0.541493, -0.815417, 0.204648,
		-0.826779, 0.560628, 0.046182,
		38.069878, 35.560452, 40.199612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284126, 34.815834, 39.718067>,  <38.648624, 35.168011, 40.167286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284126, 34.815834, 39.718067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080833, 35.156300, 39.770557>,  <37.958858, 35.360580, 39.802052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080833, 35.156300, 39.770557>,  <38.284126, 34.815834, 39.718067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080833, 35.156300, 39.770557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268013, -0.011514, -0.963347,
		-0.818455, -0.524773, 0.233975,
		-0.508232, 0.851164, 0.131223,
		37.928364, 35.411648, 39.809925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572872, 34.688522, 39.637066>,  <38.284126, 34.815834, 39.718067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572872, 34.688522, 39.637066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651035, 35.072433, 39.556431>,  <37.697933, 35.302780, 39.508049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651035, 35.072433, 39.556431>,  <37.572872, 34.688522, 39.637066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651035, 35.072433, 39.556431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297940, -0.137742, -0.944595,
		-0.934369, 0.244648, 0.259040,
		0.195413, 0.959778, -0.201592,
		37.709660, 35.360367, 39.495953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040791, 35.037861, 39.271278>,  <37.572872, 34.688522, 39.637066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040791, 35.037861, 39.271278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367355, 35.253784, 39.189228>,  <37.563293, 35.383339, 39.139999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367355, 35.253784, 39.189228>,  <37.040791, 35.037861, 39.271278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367355, 35.253784, 39.189228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225310, -0.029290, -0.973847,
		-0.531698, 0.841279, 0.097711,
		0.816415, 0.539807, -0.205122,
		37.612278, 35.415726, 39.127693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849102, 35.315823, 38.632469>,  <37.040791, 35.037861, 39.271278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849102, 35.315823, 38.632469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225819, 35.447552, 38.659538>,  <37.451847, 35.526588, 38.675777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225819, 35.447552, 38.659538>,  <36.849102, 35.315823, 38.632469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225819, 35.447552, 38.659538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020126, 0.145690, -0.989126,
		-0.335603, 0.932909, 0.130582,
		0.941788, 0.329326, 0.067670,
		37.508354, 35.546349, 38.679840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920086, 35.768013, 38.099686>,  <36.849102, 35.315823, 38.632469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920086, 35.768013, 38.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302658, 35.693340, 38.189484>,  <37.532200, 35.648537, 38.243362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302658, 35.693340, 38.189484>,  <36.920086, 35.768013, 38.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302658, 35.693340, 38.189484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222115, -0.033850, -0.974433,
		0.189511, 0.981836, 0.009091,
		0.956426, -0.186685, 0.224495,
		37.589584, 35.637333, 38.256832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290318, 36.262199, 37.673656>,  <36.920086, 35.768013, 38.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290318, 36.262199, 37.673656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540340, 35.967316, 37.776283>,  <37.690353, 35.790386, 37.837860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540340, 35.967316, 37.776283>,  <37.290318, 36.262199, 37.673656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540340, 35.967316, 37.776283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251612, -0.120852, -0.960253,
		0.738915, 0.664768, 0.109951,
		0.625057, -0.737210, 0.256563,
		37.727859, 35.746151, 37.853252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904163, 36.291943, 37.223698>,  <37.290318, 36.262199, 37.673656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904163, 36.291943, 37.223698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928371, 35.923294, 37.377033>,  <37.942894, 35.702106, 37.469036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928371, 35.923294, 37.377033>,  <37.904163, 36.291943, 37.223698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928371, 35.923294, 37.377033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538008, -0.293366, -0.790243,
		0.840764, 0.254064, 0.478087,
		0.060518, -0.921622, 0.383340,
		37.946526, 35.646809, 37.492035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542770, 36.206432, 37.132919>,  <37.904163, 36.291943, 37.223698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542770, 36.206432, 37.132919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360249, 35.850922, 37.150192>,  <38.250736, 35.637615, 37.160557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360249, 35.850922, 37.150192>,  <38.542770, 36.206432, 37.132919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360249, 35.850922, 37.150192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501162, -0.296793, -0.812865,
		0.735272, -0.349270, 0.580849,
		-0.456301, -0.888777, 0.043183,
		38.223358, 35.584290, 37.163147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012772, 35.766476, 37.116310>,  <38.542770, 36.206432, 37.132919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012772, 35.766476, 37.116310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701817, 35.566956, 36.963017>,  <38.515244, 35.447243, 36.871040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701817, 35.566956, 36.963017>,  <39.012772, 35.766476, 37.116310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701817, 35.566956, 36.963017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534301, -0.202106, -0.820777,
		0.331953, -0.842822, 0.423626,
		-0.777386, -0.498803, -0.383231,
		38.468601, 35.417316, 36.848045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423241, 35.099583, 36.763519>,  <39.012772, 35.766476, 37.116310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423241, 35.099583, 36.763519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053623, 35.063515, 36.614922>,  <38.831852, 35.041874, 36.525761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053623, 35.063515, 36.614922>,  <39.423241, 35.099583, 36.763519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053623, 35.063515, 36.614922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376542, -0.382497, -0.843749,
		-0.066011, -0.919546, 0.387399,
		-0.924045, -0.090175, -0.371496,
		38.776409, 35.036461, 36.503471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446865, 34.481365, 36.421722>,  <39.423241, 35.099583, 36.763519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446865, 34.481365, 36.421722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139565, 34.683189, 36.264141>,  <38.955185, 34.804283, 36.169594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139565, 34.683189, 36.264141>,  <39.446865, 34.481365, 36.421722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139565, 34.683189, 36.264141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248874, -0.331580, -0.910009,
		-0.589784, -0.797164, 0.129165,
		-0.768255, 0.504563, -0.393954,
		38.909088, 34.834557, 36.145954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114120, 33.996365, 36.046780>,  <39.446865, 34.481365, 36.421722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114120, 33.996365, 36.046780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051823, 34.358303, 35.888287>,  <39.014442, 34.575466, 35.793190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051823, 34.358303, 35.888287>,  <39.114120, 33.996365, 36.046780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051823, 34.358303, 35.888287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095747, -0.385407, -0.917765,
		-0.983145, -0.180879, -0.026609,
		-0.155749, 0.904845, -0.396230,
		39.005096, 34.629757, 35.769417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973598, 33.883785, 35.343842>,  <39.114120, 33.996365, 36.046780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973598, 33.883785, 35.343842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030270, 34.279427, 35.359833>,  <39.064270, 34.516811, 35.369427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030270, 34.279427, 35.359833>,  <38.973598, 33.883785, 35.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030270, 34.279427, 35.359833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303506, -0.004958, -0.952817,
		-0.942238, 0.147126, -0.300902,
		0.141676, 0.989105, 0.039982,
		39.072773, 34.576157, 35.371826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872597, 34.086254, 34.617355>,  <38.973598, 33.883785, 35.343842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872597, 34.086254, 34.617355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054443, 34.384018, 34.812977>,  <39.163551, 34.562675, 34.930351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054443, 34.384018, 34.812977>,  <38.872597, 34.086254, 34.617355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054443, 34.384018, 34.812977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572088, 0.176799, -0.800911,
		-0.682673, 0.643887, -0.345495,
		0.454613, 0.744413, 0.489056,
		39.190826, 34.607342, 34.959694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917500, 34.565212, 34.121796>,  <38.872597, 34.086254, 34.617355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917500, 34.565212, 34.121796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192955, 34.660389, 34.395779>,  <39.358227, 34.717495, 34.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192955, 34.660389, 34.395779>,  <38.917500, 34.565212, 34.121796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192955, 34.660389, 34.395779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529376, 0.480562, -0.699158,
		-0.495520, 0.844065, 0.204974,
		0.688637, 0.237938, 0.684955,
		39.399548, 34.731770, 34.601265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977581, 35.281353, 34.006401>,  <38.917500, 34.565212, 34.121796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977581, 35.281353, 34.006401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312607, 35.159821, 34.188026>,  <39.513622, 35.086903, 34.297001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312607, 35.159821, 34.188026>,  <38.977581, 35.281353, 34.006401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312607, 35.159821, 34.188026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514951, 0.716672, -0.470326,
		-0.182518, 0.627750, 0.756715,
		0.837563, -0.303828, 0.454066,
		39.563877, 35.068672, 34.324245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313065, 35.888252, 34.054100>,  <38.977581, 35.281353, 34.006401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313065, 35.888252, 34.054100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607601, 35.620075, 34.090569>,  <39.784325, 35.459171, 34.112450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607601, 35.620075, 34.090569>,  <39.313065, 35.888252, 34.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607601, 35.620075, 34.090569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611242, 0.601356, -0.514542,
		0.290146, 0.434604, 0.852605,
		0.736341, -0.670440, 0.091168,
		39.828503, 35.418941, 34.117920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959942, 36.323105, 34.090649>,  <39.313065, 35.888252, 34.054100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959942, 36.323105, 34.090649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127522, 35.967110, 34.018650>,  <40.228069, 35.753513, 33.975452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.127522, 35.967110, 34.018650>,  <39.959942, 36.323105, 34.090649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127522, 35.967110, 34.018650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789336, 0.454948, -0.412275,
		0.448810, 0.030644, 0.893101,
		0.418949, -0.889991, -0.179997,
		40.253204, 35.700111, 33.964649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557571, 36.302223, 34.451797>,  <39.959942, 36.323105, 34.090649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557571, 36.302223, 34.451797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589417, 36.042637, 34.149143>,  <40.608524, 35.886883, 33.967548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589417, 36.042637, 34.149143>,  <40.557571, 36.302223, 34.451797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589417, 36.042637, 34.149143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814919, 0.479514, -0.325534,
		0.574081, -0.590683, 0.567032,
		0.079613, -0.648968, -0.756639,
		40.613300, 35.847946, 33.922150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198856, 35.969582, 34.479420>,  <40.557571, 36.302223, 34.451797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198856, 35.969582, 34.479420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070908, 35.938637, 34.101700>,  <40.994137, 35.920071, 33.875069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070908, 35.938637, 34.101700>,  <41.198856, 35.969582, 34.479420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070908, 35.938637, 34.101700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867821, 0.376043, -0.324773,
		0.380223, -0.923367, -0.053144,
		-0.319869, -0.077367, -0.944298,
		40.974945, 35.915428, 33.818409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688805, 35.661591, 34.148548>,  <41.198856, 35.969582, 34.479420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688805, 35.661591, 34.148548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478634, 35.850994, 33.865784>,  <41.352531, 35.964634, 33.696125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478634, 35.850994, 33.865784>,  <41.688805, 35.661591, 34.148548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478634, 35.850994, 33.865784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849475, 0.339011, -0.404307,
		0.048208, -0.812934, -0.580356,
		-0.525422, 0.473507, -0.706910,
		41.321007, 35.993046, 33.653709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398254, 36.056580, 34.160919>,  <41.688805, 35.661591, 34.148548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398254, 36.056580, 34.160919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398815, 36.408195, 33.970222>,  <42.399151, 36.619164, 33.855804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398815, 36.408195, 33.970222>,  <42.398254, 36.056580, 34.160919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398815, 36.408195, 33.970222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874467, 0.232338, 0.425825,
		0.485083, 0.416301, 0.769018,
		0.001401, 0.879041, -0.476745,
		42.399235, 36.671909, 33.827198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278118, 36.602367, 34.647797>,  <42.398254, 36.056580, 34.160919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278118, 36.602367, 34.647797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183937, 36.745728, 34.286442>,  <42.127426, 36.831745, 34.069630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183937, 36.745728, 34.286442>,  <42.278118, 36.602367, 34.647797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183937, 36.745728, 34.286442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784548, 0.478527, 0.394330,
		0.573624, 0.801598, 0.168511,
		-0.235457, 0.358402, -0.903387,
		42.113300, 36.853249, 34.015427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785988, 36.200726, 34.942493>,  <42.278118, 36.602367, 34.647797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785988, 36.200726, 34.942493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802631, 35.912540, 34.665596>,  <42.812618, 35.739628, 34.499458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802631, 35.912540, 34.665596>,  <42.785988, 36.200726, 34.942493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802631, 35.912540, 34.665596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368322, 0.655110, -0.659674,
		0.928767, -0.227521, 0.292620,
		0.041608, -0.720462, -0.692245,
		42.815113, 35.696404, 34.457924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561054, 36.191757, 34.857342>,  <42.785988, 36.200726, 34.942493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561054, 36.191757, 34.857342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336044, 36.166088, 34.527626>,  <43.201038, 36.150684, 34.329796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336044, 36.166088, 34.527626>,  <43.561054, 36.191757, 34.857342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336044, 36.166088, 34.527626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507605, 0.760153, -0.405592,
		0.652612, -0.646567, -0.395030,
		-0.562526, -0.064175, -0.824285,
		43.167286, 36.146835, 34.280342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756943, 36.749233, 34.407143>,  <43.561054, 36.191757, 34.857342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756943, 36.749233, 34.407143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501011, 36.594681, 34.141411>,  <43.347454, 36.501949, 33.981972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501011, 36.594681, 34.141411>,  <43.756943, 36.749233, 34.407143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501011, 36.594681, 34.141411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249262, 0.713359, -0.654972,
		0.726982, -0.584654, -0.360106,
		-0.639816, -0.386392, -0.664331,
		43.309063, 36.478764, 33.942112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149048, 36.796169, 33.751842>,  <43.756943, 36.749233, 34.407143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149048, 36.796169, 33.751842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752163, 36.755226, 33.723469>,  <43.514030, 36.730659, 33.706444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752163, 36.755226, 33.723469>,  <44.149048, 36.796169, 33.751842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752163, 36.755226, 33.723469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022103, 0.705285, -0.708579,
		0.122558, -0.701495, -0.702057,
		-0.992215, -0.102359, -0.070933,
		43.454498, 36.724518, 33.702190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054668, 36.051445, 33.738766>,  <44.149048, 36.796169, 33.751842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054668, 36.051445, 33.738766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299980, 36.261353, 33.502632>,  <44.447166, 36.387299, 33.360950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299980, 36.261353, 33.502632>,  <44.054668, 36.051445, 33.738766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299980, 36.261353, 33.502632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236115, -0.835017, -0.496987,
		-0.753747, 0.165406, -0.636008,
		0.613282, 0.524774, -0.590337,
		44.483963, 36.418785, 33.325531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830460, 36.084019, 33.015820>,  <44.054668, 36.051445, 33.738766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830460, 36.084019, 33.015820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226288, 36.069435, 33.071575>,  <44.463783, 36.060684, 33.105026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226288, 36.069435, 33.071575>,  <43.830460, 36.084019, 33.015820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226288, 36.069435, 33.071575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043456, -0.846851, -0.530052,
		0.137366, 0.530579, -0.836430,
		0.989567, -0.036463, 0.139385,
		44.523159, 36.058495, 33.113392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183170, 36.230659, 32.350292>,  <43.830460, 36.084019, 33.015820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183170, 36.230659, 32.350292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456055, 36.032005, 32.564934>,  <44.619785, 35.912811, 32.693718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456055, 36.032005, 32.564934>,  <44.183170, 36.230659, 32.350292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456055, 36.032005, 32.564934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083925, -0.782251, -0.617285,
		0.726326, 0.376082, -0.575338,
		0.682208, -0.496635, 0.536606,
		44.660717, 35.883015, 32.725914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720451, 36.006710, 31.957737>,  <44.183170, 36.230659, 32.350292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720451, 36.006710, 31.957737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744484, 35.736069, 32.251293>,  <44.758904, 35.573685, 32.427425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744484, 35.736069, 32.251293>,  <44.720451, 36.006710, 31.957737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744484, 35.736069, 32.251293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137231, -0.722637, -0.677468,
		0.988715, 0.141417, 0.049433,
		0.060084, -0.676607, 0.733889,
		44.762508, 35.533085, 32.471458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226566, 35.572659, 31.698709>,  <44.720451, 36.006710, 31.957737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226566, 35.572659, 31.698709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074467, 35.351135, 31.995008>,  <44.983208, 35.218220, 32.172787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074467, 35.351135, 31.995008>,  <45.226566, 35.572659, 31.698709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074467, 35.351135, 31.995008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107714, -0.768942, -0.630179,
		0.918590, -0.319414, 0.232737,
		-0.380250, -0.553807, 0.740748,
		44.960392, 35.184994, 32.217232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655342, 34.950008, 31.868559>,  <45.226566, 35.572659, 31.698709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655342, 34.950008, 31.868559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277649, 34.881096, 31.980808>,  <45.051033, 34.839748, 32.048157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277649, 34.881096, 31.980808>,  <45.655342, 34.950008, 31.868559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277649, 34.881096, 31.980808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006656, -0.842049, -0.539360,
		0.329224, -0.511147, 0.793940,
		-0.944228, -0.172286, 0.280625,
		44.994381, 34.829411, 32.064995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655518, 34.308395, 32.036945>,  <45.655342, 34.950008, 31.868559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655518, 34.308395, 32.036945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264114, 34.366123, 31.978025>,  <45.029274, 34.400761, 31.942673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264114, 34.366123, 31.978025>,  <45.655518, 34.308395, 32.036945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264114, 34.366123, 31.978025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015308, -0.763164, -0.646024,
		-0.205651, -0.629883, 0.748969,
		-0.978505, 0.144321, -0.147303,
		44.970562, 34.409420, 31.933834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344841, 33.631542, 32.107479>,  <45.655518, 34.308395, 32.036945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344841, 33.631542, 32.107479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099461, 33.857311, 31.886536>,  <44.952232, 33.992771, 31.753969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099461, 33.857311, 31.886536>,  <45.344841, 33.631542, 32.107479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099461, 33.857311, 31.886536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095051, -0.747114, -0.657864,
		-0.783994, -0.351063, 0.511965,
		-0.613448, 0.564425, -0.552365,
		44.915424, 34.026638, 31.720827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866585, 33.156765, 31.889021>,  <45.344841, 33.631542, 32.107479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866585, 33.156765, 31.889021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818249, 33.476006, 31.652906>,  <44.789246, 33.667549, 31.511238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818249, 33.476006, 31.652906>,  <44.866585, 33.156765, 31.889021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818249, 33.476006, 31.652906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287964, -0.597257, -0.748573,
		-0.949986, 0.079520, 0.301998,
		-0.120844, 0.798098, -0.590285,
		44.781994, 33.715435, 31.475821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271481, 32.969131, 31.435801>,  <44.866585, 33.156765, 31.889021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271481, 32.969131, 31.435801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474327, 33.256577, 31.245461>,  <44.596035, 33.429043, 31.131256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474327, 33.256577, 31.245461>,  <44.271481, 32.969131, 31.435801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474327, 33.256577, 31.245461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197241, -0.440694, -0.875720,
		-0.839004, 0.537950, -0.081745,
		0.507118, 0.718609, -0.475850,
		44.626461, 33.472160, 31.102705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793842, 33.326504, 30.906290>,  <44.271481, 32.969131, 31.435801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793842, 33.326504, 30.906290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175655, 33.391285, 30.806179>,  <44.404743, 33.430153, 30.746113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175655, 33.391285, 30.806179>,  <43.793842, 33.326504, 30.906290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175655, 33.391285, 30.806179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121529, -0.555217, -0.822779,
		-0.272214, 0.815784, -0.510290,
		0.954531, 0.161957, -0.250280,
		44.462013, 33.439873, 30.731094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780483, 33.481247, 30.135752>,  <43.793842, 33.326504, 30.906290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780483, 33.481247, 30.135752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166637, 33.404026, 30.205900>,  <44.398331, 33.357693, 30.247990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166637, 33.404026, 30.205900>,  <43.780483, 33.481247, 30.135752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166637, 33.404026, 30.205900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068328, -0.461708, -0.884397,
		0.251702, 0.865770, -0.432537,
		0.965390, -0.193050, 0.175369,
		44.456253, 33.346111, 30.258511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999939, 33.670082, 29.541956>,  <43.780483, 33.481247, 30.135752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999939, 33.670082, 29.541956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306519, 33.448013, 29.671165>,  <44.490467, 33.314774, 29.748692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306519, 33.448013, 29.671165>,  <43.999939, 33.670082, 29.541956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306519, 33.448013, 29.671165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116759, -0.374106, -0.920007,
		0.631605, 0.742853, -0.221912,
		0.766448, -0.555170, 0.323022,
		44.536453, 33.281464, 29.768072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551559, 33.794113, 29.110176>,  <43.999939, 33.670082, 29.541956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551559, 33.794113, 29.110176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598621, 33.431156, 29.271568>,  <44.626858, 33.213383, 29.368404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598621, 33.431156, 29.271568>,  <44.551559, 33.794113, 29.110176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598621, 33.431156, 29.271568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059420, -0.399143, -0.914961,
		0.991275, 0.131624, 0.006957,
		0.117655, -0.907392, 0.403482,
		44.633919, 33.158939, 29.392612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081833, 33.499725, 28.696207>,  <44.551559, 33.794113, 29.110176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081833, 33.499725, 28.696207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943298, 33.186142, 28.902300>,  <44.860176, 32.997993, 29.025955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943298, 33.186142, 28.902300>,  <45.081833, 33.499725, 28.696207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943298, 33.186142, 28.902300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113872, -0.580294, -0.806407,
		0.931173, -0.220619, 0.290248,
		-0.346338, -0.783956, 0.515232,
		44.839397, 32.950954, 29.056870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582153, 32.851547, 28.565296>,  <45.081833, 33.499725, 28.696207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582153, 32.851547, 28.565296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206230, 32.746464, 28.652693>,  <44.980675, 32.683414, 28.705132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206230, 32.746464, 28.652693>,  <45.582153, 32.851547, 28.565296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206230, 32.746464, 28.652693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048292, -0.735142, -0.676191,
		0.338264, -0.624940, 0.703582,
		-0.939811, -0.262708, 0.218493,
		44.924286, 32.667652, 28.718241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523922, 32.202709, 28.461552>,  <45.582153, 32.851547, 28.565296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523922, 32.202709, 28.461552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133373, 32.275906, 28.507526>,  <44.899044, 32.319824, 28.535110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133373, 32.275906, 28.507526>,  <45.523922, 32.202709, 28.461552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133373, 32.275906, 28.507526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205953, -0.627006, -0.751297,
		-0.065413, -0.757217, 0.649879,
		-0.976374, 0.182989, 0.114937,
		44.840462, 32.330803, 28.542007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172844, 31.500349, 28.408422>,  <45.523922, 32.202709, 28.461552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172844, 31.500349, 28.408422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902649, 31.786198, 28.335724>,  <44.740532, 31.957706, 28.292105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902649, 31.786198, 28.335724>,  <45.172844, 31.500349, 28.408422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902649, 31.786198, 28.335724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490130, -0.619289, -0.613395,
		-0.550898, -0.325263, 0.768580,
		-0.675488, 0.714622, -0.181744,
		44.700005, 32.000584, 28.281200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510380, 31.211609, 28.641819>,  <45.172844, 31.500349, 28.408422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510380, 31.211609, 28.641819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445133, 31.495409, 28.367594>,  <44.405987, 31.665689, 28.203058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445133, 31.495409, 28.367594>,  <44.510380, 31.211609, 28.641819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445133, 31.495409, 28.367594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675827, -0.586596, -0.446277,
		-0.718784, 0.390528, 0.575184,
		-0.163117, 0.709502, -0.685565,
		44.396198, 31.708260, 28.161924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791695, 31.279385, 28.451616>,  <44.510380, 31.211609, 28.641819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791695, 31.279385, 28.451616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986187, 31.433422, 28.137857>,  <44.102882, 31.525845, 27.949602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986187, 31.433422, 28.137857>,  <43.791695, 31.279385, 28.451616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986187, 31.433422, 28.137857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534476, -0.579097, -0.615616,
		-0.691311, 0.718575, -0.075755,
		0.486235, 0.385093, -0.784397,
		44.132057, 31.548950, 27.902538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233604, 31.316832, 28.001238>,  <43.791695, 31.279385, 28.451616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233604, 31.316832, 28.001238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550133, 31.374567, 27.763592>,  <43.740051, 31.409208, 27.621004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550133, 31.374567, 27.763592>,  <43.233604, 31.316832, 28.001238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550133, 31.374567, 27.763592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470948, -0.475778, -0.742862,
		-0.389889, 0.867642, -0.308519,
		0.791325, 0.144337, -0.594115,
		43.787529, 31.417868, 27.585358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922787, 31.494249, 27.390877>,  <43.233604, 31.316832, 28.001238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922787, 31.494249, 27.390877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289082, 31.371155, 27.287556>,  <43.508858, 31.297298, 27.225563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289082, 31.371155, 27.287556>,  <42.922787, 31.494249, 27.390877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289082, 31.371155, 27.287556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376473, -0.432709, -0.819165,
		0.140317, 0.847385, -0.512103,
		0.915740, -0.307736, -0.258302,
		43.563805, 31.278833, 27.210066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954929, 31.547796, 26.674961>,  <42.922787, 31.494249, 27.390877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954929, 31.547796, 26.674961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247768, 31.295279, 26.777338>,  <43.423470, 31.143768, 26.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247768, 31.295279, 26.777338>,  <42.954929, 31.547796, 26.674961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247768, 31.295279, 26.777338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372167, -0.685354, -0.625925,
		0.570554, 0.362982, -0.736690,
		0.732093, -0.631296, 0.255941,
		43.467396, 31.105890, 26.854120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033661, 31.236155, 26.111717>,  <42.954929, 31.547796, 26.674961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033661, 31.236155, 26.111717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244972, 30.996252, 26.352121>,  <43.371758, 30.852310, 26.496365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244972, 30.996252, 26.352121>,  <43.033661, 31.236155, 26.111717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244972, 30.996252, 26.352121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329623, -0.797194, -0.505796,
		0.782478, 0.069094, -0.618833,
		0.528278, -0.599756, 0.601012,
		43.403454, 30.816326, 26.532425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726330, 31.308613, 26.445141>,  <43.033661, 31.236155, 26.111717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726330, 31.308613, 26.445141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989071, 31.100332, 26.663284>,  <44.146717, 30.975365, 26.794170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989071, 31.100332, 26.663284>,  <43.726330, 31.308613, 26.445141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989071, 31.100332, 26.663284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229633, -0.550770, -0.802447,
		0.718201, 0.652322, -0.242205,
		0.656853, -0.520700, 0.545358,
		44.186127, 30.944122, 26.826891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339104, 31.182215, 26.086479>,  <43.726330, 31.308613, 26.445141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339104, 31.182215, 26.086479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321674, 30.886986, 26.355804>,  <44.311218, 30.709848, 26.517401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321674, 30.886986, 26.355804>,  <44.339104, 31.182215, 26.086479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321674, 30.886986, 26.355804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394069, -0.632008, -0.667290,
		0.918048, 0.236259, 0.318387,
		-0.043570, -0.738070, 0.673315,
		44.308605, 30.665565, 26.557798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021004, 30.780575, 26.075361>,  <44.339104, 31.182215, 26.086479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021004, 30.780575, 26.075361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742958, 30.545063, 26.240360>,  <44.576130, 30.403755, 26.339359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742958, 30.545063, 26.240360>,  <45.021004, 30.780575, 26.075361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742958, 30.545063, 26.240360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237333, -0.729566, -0.641410,
		0.678592, -0.347956, 0.646870,
		-0.695116, -0.588779, 0.412496,
		44.534424, 30.368429, 26.364109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416679, 30.215801, 26.234995>,  <45.021004, 30.780575, 26.075361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416679, 30.215801, 26.234995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034389, 30.139269, 26.145571>,  <44.805016, 30.093349, 26.091917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034389, 30.139269, 26.145571>,  <45.416679, 30.215801, 26.234995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034389, 30.139269, 26.145571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294071, -0.648099, -0.702488,
		-0.010480, -0.737129, 0.675671,
		-0.955726, -0.191333, -0.223561,
		44.747673, 30.081869, 26.078503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313881, 29.461655, 26.300688>,  <45.416679, 30.215801, 26.234995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313881, 29.461655, 26.300688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057014, 29.633842, 26.046974>,  <44.902893, 29.737156, 25.894747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057014, 29.633842, 26.046974>,  <45.313881, 29.461655, 26.300688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057014, 29.633842, 26.046974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313634, -0.607468, -0.729806,
		-0.699465, -0.667592, 0.255088,
		-0.642170, 0.430470, -0.634282,
		44.864365, 29.762983, 25.856689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578789, 29.555761, 26.979519>,  <45.313881, 29.461655, 26.300688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578789, 29.555761, 26.979519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919395, 29.404400, 27.124693>,  <46.123760, 29.313583, 27.211798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919395, 29.404400, 27.124693>,  <45.578789, 29.555761, 26.979519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919395, 29.404400, 27.124693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035219, 0.649359, 0.759666,
		-0.523138, -0.659653, 0.539616,
		0.851520, -0.378406, 0.362937,
		46.174850, 29.290878, 27.233574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446461, 29.672750, 27.595648>,  <45.578789, 29.555761, 26.979519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446461, 29.672750, 27.595648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842659, 29.619734, 27.580914>,  <46.080376, 29.587923, 27.572073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842659, 29.619734, 27.580914>,  <45.446461, 29.672750, 27.595648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842659, 29.619734, 27.580914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114383, 0.644748, 0.755788,
		-0.076426, -0.752816, 0.653779,
		0.990492, -0.132544, -0.036834,
		46.139809, 29.579971, 27.569862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621159, 29.644520, 28.357794>,  <45.446461, 29.672750, 27.595648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621159, 29.644520, 28.357794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975555, 29.769539, 28.220783>,  <46.188194, 29.844551, 28.138577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975555, 29.769539, 28.220783>,  <45.621159, 29.644520, 28.357794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975555, 29.769539, 28.220783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290592, 0.201381, 0.935415,
		0.361343, -0.928309, 0.087598,
		0.885995, 0.312551, -0.342527,
		46.241356, 29.863304, 28.118025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279911, 29.325090, 28.728373>,  <45.621159, 29.644520, 28.357794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279911, 29.325090, 28.728373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358624, 29.689985, 28.584648>,  <46.405849, 29.908922, 28.498413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358624, 29.689985, 28.584648>,  <46.279911, 29.325090, 28.728373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358624, 29.689985, 28.584648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250852, 0.307432, 0.917910,
		0.947814, -0.270759, -0.168340,
		0.196779, 0.912236, -0.359309,
		46.417656, 29.963655, 28.476856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932499, 29.422483, 29.024105>,  <46.279911, 29.325090, 28.728373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932499, 29.422483, 29.024105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788883, 29.776426, 28.905365>,  <46.702713, 29.988792, 28.834122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788883, 29.776426, 28.905365>,  <46.932499, 29.422483, 29.024105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788883, 29.776426, 28.905365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395509, 0.432332, 0.810347,
		0.845379, 0.173537, -0.505192,
		-0.359036, 0.884858, -0.296849,
		46.681171, 30.041883, 28.816311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.541397, 29.967394, 29.028446>,  <46.932499, 29.422483, 29.024105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.541397, 29.967394, 29.028446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193993, 30.164644, 29.048500>,  <46.985550, 30.282995, 29.060532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193993, 30.164644, 29.048500>,  <47.541397, 29.967394, 29.028446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193993, 30.164644, 29.048500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294878, 0.432738, 0.851930,
		0.398415, 0.754694, -0.521250,
		-0.868512, 0.493127, 0.050133,
		46.933437, 30.312582, 29.063540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.741573, 30.675032, 29.303959>,  <47.541397, 29.967394, 29.028446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.741573, 30.675032, 29.303959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347790, 30.654406, 29.371111>,  <47.111519, 30.642031, 29.411402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347790, 30.654406, 29.371111>,  <47.741573, 30.675032, 29.303959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347790, 30.654406, 29.371111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104098, 0.598554, 0.794290,
		-0.141441, 0.799421, -0.583884,
		-0.984458, -0.051564, 0.167878,
		47.052452, 30.638937, 29.421474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534561, 31.427904, 29.328075>,  <47.741573, 30.675032, 29.303959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534561, 31.427904, 29.328075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265514, 31.201216, 29.518408>,  <47.104088, 31.065203, 29.632607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265514, 31.201216, 29.518408>,  <47.534561, 31.427904, 29.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.265514, 31.201216, 29.518408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158560, 0.517709, 0.840735,
		-0.722802, 0.640942, -0.258362,
		-0.672618, -0.566720, 0.475829,
		47.063728, 31.031200, 29.661156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123592, 31.844833, 29.740131>,  <47.534561, 31.427904, 29.328075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123592, 31.844833, 29.740131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060406, 31.497984, 29.929081>,  <47.022491, 31.289873, 30.042452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060406, 31.497984, 29.929081>,  <47.123592, 31.844833, 29.740131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060406, 31.497984, 29.929081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029791, 0.473979, 0.880032,
		-0.986994, 0.153092, -0.049042,
		-0.157971, -0.867125, 0.472375,
		47.013016, 31.237846, 30.070793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579460, 31.922308, 30.180941>,  <47.123592, 31.844833, 29.740131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579460, 31.922308, 30.180941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791470, 31.612316, 30.318626>,  <46.918674, 31.426321, 30.401237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791470, 31.612316, 30.318626>,  <46.579460, 31.922308, 30.180941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791470, 31.612316, 30.318626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005049, 0.408797, 0.912612,
		-0.847971, -0.481963, 0.220583,
		0.530019, -0.774982, 0.344214,
		46.950474, 31.379822, 30.421890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068600, 31.748283, 30.600765>,  <46.579460, 31.922308, 30.180941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068600, 31.748283, 30.600765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427891, 31.598377, 30.692631>,  <46.643463, 31.508434, 30.747749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427891, 31.598377, 30.692631>,  <46.068600, 31.748283, 30.600765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427891, 31.598377, 30.692631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147760, 0.234641, 0.960787,
		-0.413956, -0.896937, 0.155385,
		0.898224, -0.374764, 0.229662,
		46.697357, 31.485949, 30.761530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932159, 31.231537, 31.221365>,  <46.068600, 31.748283, 30.600765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932159, 31.231537, 31.221365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320126, 31.328577, 31.229536>,  <46.552906, 31.386801, 31.234438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320126, 31.328577, 31.229536>,  <45.932159, 31.231537, 31.221365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320126, 31.328577, 31.229536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103840, 0.336343, 0.935997,
		0.220201, -0.909956, 0.351414,
		0.969912, 0.242599, 0.020426,
		46.611099, 31.401358, 31.235664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187023, 31.184919, 31.980299>,  <45.932159, 31.231537, 31.221365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187023, 31.184919, 31.980299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499115, 31.367729, 31.809483>,  <46.686371, 31.477415, 31.706993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499115, 31.367729, 31.809483>,  <46.187023, 31.184919, 31.980299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499115, 31.367729, 31.809483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062492, 0.622360, 0.780233,
		0.622360, -0.635450, 0.457025,
		-0.780233, -0.457025, 0.427042,
		46.733185, 31.504837, 31.681370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777561, 31.107294, 32.356697>,  <46.187023, 31.184919, 31.980299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777561, 31.107294, 32.356697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821117, 31.440758, 32.140121>,  <46.847252, 31.640837, 32.010178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821117, 31.440758, 32.140121>,  <46.777561, 31.107294, 32.356697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821117, 31.440758, 32.140121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104419, 0.532071, 0.840237,
		0.988554, -0.148029, -0.029113,
		0.108889, 0.833660, -0.541438,
		46.853783, 31.690855, 31.977690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302120, 31.434818, 32.629139>,  <46.777561, 31.107294, 32.356697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302120, 31.434818, 32.629139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140327, 31.744925, 32.435085>,  <47.043251, 31.930988, 32.318653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140327, 31.744925, 32.435085>,  <47.302120, 31.434818, 32.629139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140327, 31.744925, 32.435085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001965, 0.531200, 0.847244,
		0.914543, 0.341742, -0.216385,
		-0.404483, 0.775267, -0.485134,
		47.018982, 31.977505, 32.289547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.698246, 31.973297, 32.839203>,  <47.302120, 31.434818, 32.629139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.698246, 31.973297, 32.839203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345985, 32.109268, 32.707199>,  <47.134628, 32.190849, 32.627998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345985, 32.109268, 32.707199>,  <47.698246, 31.973297, 32.839203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345985, 32.109268, 32.707199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051182, 0.624222, 0.779569,
		0.470994, 0.703418, -0.532323,
		-0.880650, 0.339927, -0.330007,
		47.081791, 32.211246, 32.608196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724495, 32.728535, 32.840313>,  <47.698246, 31.973297, 32.839203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724495, 32.728535, 32.840313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335270, 32.642624, 32.873833>,  <47.101734, 32.591076, 32.893944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335270, 32.642624, 32.873833>,  <47.724495, 32.728535, 32.840313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.335270, 32.642624, 32.873833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107089, 0.742952, 0.660723,
		-0.204169, 0.633949, -0.745938,
		-0.973060, -0.214781, 0.083799,
		47.043350, 32.578190, 32.898972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466728, 33.391354, 33.050716>,  <47.724495, 32.728535, 32.840313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466728, 33.391354, 33.050716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166996, 33.144436, 33.146591>,  <46.987156, 32.996284, 33.204117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166996, 33.144436, 33.146591>,  <47.466728, 33.391354, 33.050716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166996, 33.144436, 33.146591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330386, 0.662196, 0.672563,
		-0.573893, 0.424781, -0.700149,
		-0.749328, -0.617298, 0.239688,
		46.942196, 32.959248, 33.218498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915943, 33.783657, 33.056911>,  <47.466728, 33.391354, 33.050716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915943, 33.783657, 33.056911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786469, 33.461964, 33.256287>,  <46.708786, 33.268948, 33.375912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786469, 33.461964, 33.256287>,  <46.915943, 33.783657, 33.056911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786469, 33.461964, 33.256287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471714, 0.593822, 0.651813,
		-0.820192, -0.024138, -0.571579,
		-0.323683, -0.804234, 0.498434,
		46.689365, 33.220692, 33.405815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163441, 33.844685, 33.126797>,  <46.915943, 33.783657, 33.056911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163441, 33.844685, 33.126797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286217, 33.614189, 33.429779>,  <46.359882, 33.475891, 33.611568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286217, 33.614189, 33.429779>,  <46.163441, 33.844685, 33.126797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286217, 33.614189, 33.429779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617346, 0.485178, 0.619263,
		-0.724344, -0.657687, -0.206819,
		0.306937, -0.576238, 0.757455,
		46.378300, 33.441319, 33.657017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578842, 33.797432, 33.541016>,  <46.163441, 33.844685, 33.126797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578842, 33.797432, 33.541016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870068, 33.685379, 33.791279>,  <46.044804, 33.618149, 33.941437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870068, 33.685379, 33.791279>,  <45.578842, 33.797432, 33.541016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870068, 33.685379, 33.791279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544482, 0.318203, 0.776071,
		-0.416489, -0.905689, 0.079145,
		0.728063, -0.280132, 0.625660,
		46.088486, 33.601341, 33.978977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208950, 33.426243, 34.094284>,  <45.578842, 33.797432, 33.541016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208950, 33.426243, 34.094284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564861, 33.516048, 34.253227>,  <45.778408, 33.569931, 34.348591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564861, 33.516048, 34.253227>,  <45.208950, 33.426243, 34.094284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564861, 33.516048, 34.253227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455084, 0.502441, 0.735153,
		-0.034593, -0.834952, 0.549235,
		0.889776, 0.224517, 0.397355,
		45.831795, 33.583405, 34.372433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132698, 33.274101, 34.835228>,  <45.208950, 33.426243, 34.094284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132698, 33.274101, 34.835228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431011, 33.537407, 34.794270>,  <45.610001, 33.695393, 34.769695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431011, 33.537407, 34.794270>,  <45.132698, 33.274101, 34.835228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431011, 33.537407, 34.794270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488881, 0.645204, 0.587118,
		0.452544, -0.387808, 0.803000,
		0.745788, 0.658268, -0.102391,
		45.654747, 33.734886, 34.763554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215778, 33.416695, 35.561188>,  <45.132698, 33.274101, 34.835228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215778, 33.416695, 35.561188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378864, 33.704742, 35.336617>,  <45.476715, 33.877571, 35.201874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378864, 33.704742, 35.336617>,  <45.215778, 33.416695, 35.561188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378864, 33.704742, 35.336617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353295, 0.691373, 0.630227,
		0.841990, -0.058608, 0.536300,
		0.407719, 0.720117, -0.561423,
		45.501179, 33.920776, 35.168190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760887, 33.770058, 36.057358>,  <45.215778, 33.416695, 35.561188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760887, 33.770058, 36.057358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662518, 34.019428, 35.760479>,  <45.603497, 34.169052, 35.582352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662518, 34.019428, 35.760479>,  <45.760887, 33.770058, 36.057358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662518, 34.019428, 35.760479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224184, 0.708367, 0.669296,
		0.943008, 0.330984, -0.034440,
		-0.245923, 0.623431, -0.742197,
		45.588741, 34.206459, 35.537819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377773, 34.048157, 36.057449>,  <45.760887, 33.770058, 36.057358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377773, 34.048157, 36.057449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687946, 33.925564, 35.836624>,  <46.874050, 33.852009, 35.704128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687946, 33.925564, 35.836624>,  <46.377773, 34.048157, 36.057449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687946, 33.925564, 35.836624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462149, 0.871229, 0.165462,
		0.430259, -0.383438, 0.817222,
		0.775432, -0.306487, -0.552060,
		46.920574, 33.833618, 35.671005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073959, 34.423801, 36.301353>,  <46.377773, 34.048157, 36.057449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073959, 34.423801, 36.301353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164433, 34.263775, 35.946098>,  <47.218716, 34.167759, 35.732944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164433, 34.263775, 35.946098>,  <47.073959, 34.423801, 36.301353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164433, 34.263775, 35.946098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352017, 0.883717, -0.308428,
		0.908254, -0.242878, 0.340713,
		0.226184, -0.400068, -0.888137,
		47.232288, 34.143753, 35.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658836, 34.825340, 36.019825>,  <47.073959, 34.423801, 36.301353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658836, 34.825340, 36.019825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474808, 34.656178, 35.707546>,  <47.364391, 34.554680, 35.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474808, 34.656178, 35.707546>,  <47.658836, 34.825340, 36.019825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474808, 34.656178, 35.707546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303854, 0.751192, -0.585990,
		0.834273, -0.506811, -0.217095,
		-0.460066, -0.422910, -0.780696,
		47.336788, 34.529305, 35.473339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.086525, 34.831276, 35.339649>,  <47.658836, 34.825340, 36.019825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.086525, 34.831276, 35.339649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694508, 34.866280, 35.268253>,  <47.459297, 34.887283, 35.225418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694508, 34.866280, 35.268253>,  <48.086525, 34.831276, 35.339649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694508, 34.866280, 35.268253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151388, 0.910485, -0.384836,
		0.128833, -0.404177, -0.905562,
		-0.980043, 0.087511, -0.178488,
		47.400494, 34.892532, 35.214706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.965378, 39.012604, 41.047947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624676, 38.836338, 41.161316>,  <37.420254, 38.730579, 41.229340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624676, 38.836338, 41.161316>,  <37.965378, 39.012604, 41.047947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624676, 38.836338, 41.161316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258338, -0.117399, -0.958895,
		0.455826, -0.889961, -0.013845,
		-0.851753, -0.440666, 0.283424,
		37.369148, 38.704140, 41.246342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823952, 38.378639, 40.726437>,  <37.965378, 39.012604, 41.047947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823952, 38.378639, 40.726437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457817, 38.502338, 40.829605>,  <37.238136, 38.576557, 40.891506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457817, 38.502338, 40.829605>,  <37.823952, 38.378639, 40.726437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457817, 38.502338, 40.829605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289451, -0.059974, -0.955312,
		-0.279958, -0.949089, 0.144408,
		-0.915337, 0.309246, 0.257924,
		37.183216, 38.595112, 40.906982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488491, 37.905010, 40.371132>,  <37.823952, 38.378639, 40.726437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488491, 37.905010, 40.371132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223682, 38.193348, 40.453209>,  <37.064796, 38.366352, 40.502457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223682, 38.193348, 40.453209>,  <37.488491, 37.905010, 40.371132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223682, 38.193348, 40.453209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352246, -0.057590, -0.934134,
		-0.661550, -0.690698, 0.292041,
		-0.662023, 0.720846, 0.205197,
		37.025074, 38.409603, 40.514767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728912, 37.638313, 40.239647>,  <37.488491, 37.905010, 40.371132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728912, 37.638313, 40.239647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711292, 38.037682, 40.225750>,  <36.700722, 38.277302, 40.217411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711292, 38.037682, 40.225750>,  <36.728912, 37.638313, 40.239647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711292, 38.037682, 40.225750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366442, -0.048504, -0.929176,
		-0.929398, -0.028196, 0.368001,
		-0.044049, 0.998425, -0.034747,
		36.698078, 38.337208, 40.215324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054314, 37.950172, 40.090240>,  <36.728912, 37.638313, 40.239647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054314, 37.950172, 40.090240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300144, 38.234787, 39.953999>,  <36.447643, 38.405556, 39.872253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300144, 38.234787, 39.953999>,  <36.054314, 37.950172, 40.090240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300144, 38.234787, 39.953999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485563, 0.000922, -0.874201,
		-0.621713, 0.702647, 0.346063,
		0.614574, 0.711538, -0.340606,
		36.484516, 38.448250, 39.851818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728218, 38.456459, 39.692223>,  <36.054314, 37.950172, 40.090240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728218, 38.456459, 39.692223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102394, 38.518051, 39.564953>,  <36.326900, 38.555008, 39.488590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102394, 38.518051, 39.564953>,  <35.728218, 38.456459, 39.692223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102394, 38.518051, 39.564953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324662, 0.018313, -0.945653,
		-0.139790, 0.987903, 0.067124,
		0.935443, 0.153985, -0.318175,
		36.383026, 38.564247, 39.469501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724884, 39.001312, 39.149422>,  <35.728218, 38.456459, 39.692223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724884, 39.001312, 39.149422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.094322, 38.860870, 39.087833>,  <36.315983, 38.776608, 39.050880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.094322, 38.860870, 39.087833>,  <35.724884, 39.001312, 39.149422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094322, 38.860870, 39.087833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066174, 0.249598, -0.966086,
		0.377624, 0.902457, 0.207293,
		0.923591, -0.351100, -0.153974,
		36.371399, 38.755539, 39.041641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155537, 39.572502, 38.769699>,  <35.724884, 39.001312, 39.149422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155537, 39.572502, 38.769699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334270, 39.217804, 38.722343>,  <36.441513, 39.004986, 38.693928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334270, 39.217804, 38.722343>,  <36.155537, 39.572502, 38.769699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334270, 39.217804, 38.722343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028676, 0.146466, -0.988800,
		0.894156, 0.438437, 0.090874,
		0.446837, -0.886747, -0.118391,
		36.468323, 38.951778, 38.686825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656105, 39.723545, 38.162399>,  <36.155537, 39.572502, 38.769699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656105, 39.723545, 38.162399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621201, 39.327229, 38.203823>,  <36.600258, 39.089439, 38.228676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621201, 39.327229, 38.203823>,  <36.656105, 39.723545, 38.162399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621201, 39.327229, 38.203823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149300, -0.115787, -0.981989,
		0.984934, -0.070233, 0.158029,
		-0.087266, -0.990788, 0.103557,
		36.595020, 39.029991, 38.234890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288410, 39.249920, 37.794235>,  <36.656105, 39.723545, 38.162399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288410, 39.249920, 37.794235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945152, 39.048409, 37.833805>,  <36.739197, 38.927502, 37.857548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945152, 39.048409, 37.833805>,  <37.288410, 39.249920, 37.794235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945152, 39.048409, 37.833805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019333, -0.160846, -0.986790,
		0.513038, -0.848725, 0.128290,
		-0.858148, -0.503781, 0.098928,
		36.687706, 38.897274, 37.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449856, 38.668114, 37.453335>,  <37.288410, 39.249920, 37.794235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449856, 38.668114, 37.453335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057205, 38.744194, 37.447216>,  <36.821613, 38.789841, 37.443546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057205, 38.744194, 37.447216>,  <37.449856, 38.668114, 37.453335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057205, 38.744194, 37.447216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012096, -0.017969, -0.999765,
		-0.190433, -0.981580, 0.015338,
		-0.981625, 0.190203, -0.015295,
		36.762718, 38.801254, 37.442627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160290, 38.268616, 36.975498>,  <37.449856, 38.668114, 37.453335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160290, 38.268616, 36.975498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856400, 38.526615, 37.008446>,  <36.674065, 38.681416, 37.028214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856400, 38.526615, 37.008446>,  <37.160290, 38.268616, 36.975498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856400, 38.526615, 37.008446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171733, -0.076857, -0.982141,
		-0.627152, -0.760307, 0.169158,
		-0.759729, 0.645001, 0.082369,
		36.628479, 38.720116, 37.033157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754646, 37.854652, 36.649944>,  <37.160290, 38.268616, 36.975498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754646, 37.854652, 36.649944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648472, 38.239956, 36.633533>,  <36.584766, 38.471138, 36.623688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648472, 38.239956, 36.633533>,  <36.754646, 37.854652, 36.649944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648472, 38.239956, 36.633533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072567, -0.062391, -0.995410,
		-0.961393, -0.261244, 0.086461,
		-0.265440, 0.963254, -0.041024,
		36.568840, 38.528931, 36.621227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150162, 37.883705, 36.281353>,  <36.754646, 37.854652, 36.649944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150162, 37.883705, 36.281353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313072, 38.246964, 36.242596>,  <36.410820, 38.464920, 36.219341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313072, 38.246964, 36.242596>,  <36.150162, 37.883705, 36.281353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313072, 38.246964, 36.242596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065834, -0.076628, -0.994884,
		-0.910928, 0.411576, 0.028578,
		0.407280, 0.908149, -0.096898,
		36.435257, 38.519409, 36.213528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765442, 38.237526, 35.797112>,  <36.150162, 37.883705, 36.281353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765442, 38.237526, 35.797112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096615, 38.461121, 35.815273>,  <36.295319, 38.595276, 35.826172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.096615, 38.461121, 35.815273>,  <35.765442, 38.237526, 35.797112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096615, 38.461121, 35.815273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024603, 0.117084, -0.992817,
		-0.560285, 0.820870, 0.110691,
		0.827934, 0.558984, 0.045405,
		36.344994, 38.628815, 35.828896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773308, 38.638847, 35.236172>,  <35.765442, 38.237526, 35.797112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773308, 38.638847, 35.236172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158272, 38.682178, 35.335793>,  <36.389252, 38.708176, 35.395565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158272, 38.682178, 35.335793>,  <35.773308, 38.638847, 35.236172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158272, 38.682178, 35.335793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237907, 0.106088, -0.965477,
		-0.131010, 0.988438, 0.076329,
		0.962412, 0.108328, 0.249054,
		36.446995, 38.714676, 35.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056690, 39.194580, 34.849968>,  <35.773308, 38.638847, 35.236172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056690, 39.194580, 34.849968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369682, 38.961044, 34.936554>,  <36.557476, 38.820923, 34.988506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369682, 38.961044, 34.936554>,  <36.056690, 39.194580, 34.849968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369682, 38.961044, 34.936554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225529, -0.058299, -0.972491,
		0.580401, 0.809771, 0.086056,
		0.782478, -0.583843, 0.216464,
		36.604427, 38.785892, 35.001492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818592, 39.435268, 34.454639>,  <36.056690, 39.194580, 34.849968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818592, 39.435268, 34.454639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880806, 39.051319, 34.547974>,  <36.918133, 38.820950, 34.603973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880806, 39.051319, 34.547974>,  <36.818592, 39.435268, 34.454639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880806, 39.051319, 34.547974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294331, -0.180453, -0.938513,
		0.942963, 0.214646, 0.254456,
		0.155530, -0.959877, 0.233338,
		36.927464, 38.763355, 34.617973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218903, 39.313744, 33.898315>,  <36.818592, 39.435268, 34.454639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218903, 39.313744, 33.898315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172516, 38.948315, 34.054230>,  <37.144684, 38.729057, 34.147778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172516, 38.948315, 34.054230>,  <37.218903, 39.313744, 33.898315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172516, 38.948315, 34.054230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417577, -0.400911, -0.815414,
		0.901211, 0.068207, 0.427979,
		-0.115965, -0.913574, 0.389787,
		37.137726, 38.674244, 34.171165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819588, 38.871201, 33.936543>,  <37.218903, 39.313744, 33.898315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819588, 38.871201, 33.936543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519691, 38.607021, 33.920105>,  <37.339752, 38.448513, 33.910240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519691, 38.607021, 33.920105>,  <37.819588, 38.871201, 33.936543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519691, 38.607021, 33.920105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390352, -0.391268, -0.833388,
		0.534333, -0.640868, 0.551159,
		-0.749743, -0.660452, -0.041097,
		37.294769, 38.408886, 33.907776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111439, 38.200836, 33.952404>,  <37.819588, 38.871201, 33.936543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111439, 38.200836, 33.952404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744625, 38.154167, 33.799858>,  <37.524536, 38.126167, 33.708328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744625, 38.154167, 33.799858>,  <38.111439, 38.200836, 33.952404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744625, 38.154167, 33.799858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397145, -0.354596, -0.846486,
		-0.036472, -0.927712, 0.371511,
		-0.917031, -0.116671, -0.381369,
		37.469517, 38.119167, 33.685448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867443, 37.450272, 33.775696>,  <38.111439, 38.200836, 33.952404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867443, 37.450272, 33.775696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674450, 37.697197, 33.527138>,  <37.558655, 37.845352, 33.378002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674450, 37.697197, 33.527138>,  <37.867443, 37.450272, 33.775696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674450, 37.697197, 33.527138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272024, -0.568749, -0.776226,
		-0.832593, -0.543552, 0.106489,
		-0.482485, 0.617313, -0.621396,
		37.529705, 37.882389, 33.340717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695797, 37.541882, 33.663235>,  <37.867443, 37.450272, 33.775696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695797, 37.541882, 33.663235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951836, 37.825916, 33.545895>,  <39.105461, 37.996338, 33.475491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951836, 37.825916, 33.545895>,  <38.695797, 37.541882, 33.663235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951836, 37.825916, 33.545895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404884, 0.012724, 0.914279,
		0.652947, -0.704002, -0.279357,
		0.640100, 0.710084, -0.293347,
		39.143867, 38.038940, 33.457890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235744, 37.440643, 34.089329>,  <38.695797, 37.541882, 33.663235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235744, 37.440643, 34.089329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338375, 37.789490, 33.922676>,  <39.399952, 37.998798, 33.822685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338375, 37.789490, 33.922676>,  <39.235744, 37.440643, 34.089329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338375, 37.789490, 33.922676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479306, 0.259519, 0.838401,
		0.839307, -0.414807, -0.351425,
		0.256573, 0.872115, -0.416635,
		39.415348, 38.051125, 33.797684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961510, 37.522373, 34.142921>,  <39.235744, 37.440643, 34.089329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961510, 37.522373, 34.142921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793980, 37.882725, 34.097313>,  <39.693462, 38.098938, 34.069950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793980, 37.882725, 34.097313>,  <39.961510, 37.522373, 34.142921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793980, 37.882725, 34.097313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438408, 0.310562, 0.843415,
		0.795226, 0.303257, -0.525024,
		-0.418824, 0.900881, -0.114017,
		39.668331, 38.152988, 34.063107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578491, 38.069435, 34.318462>,  <39.961510, 37.522373, 34.142921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578491, 38.069435, 34.318462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223164, 38.246590, 34.367008>,  <40.009968, 38.352882, 34.396137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223164, 38.246590, 34.367008>,  <40.578491, 38.069435, 34.318462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223164, 38.246590, 34.367008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339008, 0.454187, 0.823886,
		0.309767, 0.773021, -0.553608,
		-0.888323, 0.442890, 0.121368,
		39.956665, 38.379456, 34.403419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767178, 38.767197, 34.391384>,  <40.578491, 38.069435, 34.318462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767178, 38.767197, 34.391384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.408016, 38.750828, 34.566700>,  <40.192520, 38.741009, 34.671890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.408016, 38.750828, 34.566700>,  <40.767178, 38.767197, 34.391384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408016, 38.750828, 34.566700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394209, 0.368340, 0.841977,
		-0.195892, 0.928790, -0.314603,
		-0.897901, -0.040918, 0.438292,
		40.138645, 38.738552, 34.698189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682175, 39.377163, 34.789738>,  <40.767178, 38.767197, 34.391384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682175, 39.377163, 34.789738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.423450, 39.120831, 34.955135>,  <40.268215, 38.967033, 35.054375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.423450, 39.120831, 34.955135>,  <40.682175, 39.377163, 34.789738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423450, 39.120831, 34.955135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397729, 0.179185, 0.899836,
		-0.650733, 0.746479, 0.138978,
		-0.646806, -0.640829, 0.413498,
		40.229408, 38.928581, 35.079185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444218, 39.743221, 35.367966>,  <40.682175, 39.377163, 34.789738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444218, 39.743221, 35.367966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361084, 39.358025, 35.436623>,  <40.311203, 39.126907, 35.477818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361084, 39.358025, 35.436623>,  <40.444218, 39.743221, 35.367966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361084, 39.358025, 35.436623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363793, 0.086789, 0.927428,
		-0.907998, 0.255193, 0.332291,
		-0.207834, -0.962987, 0.171642,
		40.298733, 39.069130, 35.488113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405003, 39.724842, 36.088318>,  <40.444218, 39.743221, 35.367966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405003, 39.724842, 36.088318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.406818, 39.328827, 36.032028>,  <40.407906, 39.091217, 35.998257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.406818, 39.328827, 36.032028>,  <40.405003, 39.724842, 36.088318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406818, 39.328827, 36.032028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318682, -0.131953, 0.938632,
		-0.947851, -0.049102, 0.314909,
		0.004536, -0.990039, -0.140719,
		40.408180, 39.031815, 35.989811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002251, 39.444183, 36.581337>,  <40.405003, 39.724842, 36.088318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002251, 39.444183, 36.581337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231483, 39.136864, 36.467289>,  <40.369022, 38.952473, 36.398861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231483, 39.136864, 36.467289>,  <40.002251, 39.444183, 36.581337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231483, 39.136864, 36.467289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331725, -0.100657, 0.937991,
		-0.749359, -0.632124, 0.197181,
		0.573079, -0.768302, -0.285119,
		40.403408, 38.906372, 36.381752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809563, 38.852238, 37.001286>,  <40.002251, 39.444183, 36.581337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809563, 38.852238, 37.001286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183811, 38.789570, 36.874756>,  <40.408360, 38.751968, 36.798840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183811, 38.789570, 36.874756>,  <39.809563, 38.852238, 37.001286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183811, 38.789570, 36.874756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315215, -0.032533, 0.948463,
		-0.158886, -0.987115, 0.018946,
		0.935626, -0.156669, -0.316322,
		40.464500, 38.742569, 36.779858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057964, 38.290390, 37.287411>,  <39.809563, 38.852238, 37.001286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057964, 38.290390, 37.287411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426662, 38.417301, 37.198223>,  <40.647881, 38.493446, 37.144711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426662, 38.417301, 37.198223>,  <40.057964, 38.290390, 37.287411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426662, 38.417301, 37.198223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270750, -0.114899, 0.955768,
		0.277620, -0.941348, -0.191810,
		0.921749, 0.317273, -0.222971,
		40.703186, 38.512482, 37.131332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579712, 37.786877, 37.542744>,  <40.057964, 38.290390, 37.287411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579712, 37.786877, 37.542744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.744503, 38.150116, 37.512714>,  <40.843376, 38.368061, 37.494698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.744503, 38.150116, 37.512714>,  <40.579712, 37.786877, 37.542744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744503, 38.150116, 37.512714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258261, -0.037359, 0.965352,
		0.873829, -0.417089, -0.249917,
		0.411975, 0.908097, -0.075072,
		40.868095, 38.422546, 37.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338860, 37.701992, 37.896900>,  <40.579712, 37.786877, 37.542744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338860, 37.701992, 37.896900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180157, 38.068600, 37.917244>,  <41.084934, 38.288563, 37.929451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180157, 38.068600, 37.917244>,  <41.338860, 37.701992, 37.896900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180157, 38.068600, 37.917244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185467, 0.025778, 0.982312,
		0.898993, 0.399168, -0.180211,
		-0.396753, 0.916515, 0.050858,
		41.061131, 38.343555, 37.932503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589340, 37.961914, 38.610126>,  <41.338860, 37.701992, 37.896900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589340, 37.961914, 38.610126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.303059, 38.228016, 38.525074>,  <41.131290, 38.387676, 38.474041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.303059, 38.228016, 38.525074>,  <41.589340, 37.961914, 38.610126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303059, 38.228016, 38.525074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180075, 0.118386, 0.976503,
		0.674794, 0.737173, 0.035066,
		-0.715700, 0.665252, -0.212633,
		41.088348, 38.427593, 38.461285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684288, 38.694355, 38.964802>,  <41.589340, 37.961914, 38.610126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684288, 38.694355, 38.964802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.298286, 38.619675, 38.891144>,  <41.066685, 38.574867, 38.846951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.298286, 38.619675, 38.891144>,  <41.684288, 38.694355, 38.964802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298286, 38.619675, 38.891144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223268, 0.216665, 0.950372,
		-0.137538, 0.958227, -0.250767,
		-0.965005, -0.186701, -0.184142,
		41.008785, 38.563663, 38.835903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345501, 39.183922, 39.454781>,  <41.684288, 38.694355, 38.964802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345501, 39.183922, 39.454781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039162, 38.947948, 39.352444>,  <40.855358, 38.806366, 39.291042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039162, 38.947948, 39.352444>,  <41.345501, 39.183922, 39.454781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039162, 38.947948, 39.352444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452820, 0.212308, 0.865956,
		-0.456537, 0.779043, -0.429729,
		-0.765851, -0.589931, -0.255840,
		40.809406, 38.770969, 39.275692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794876, 39.576000, 39.618378>,  <41.345501, 39.183922, 39.454781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794876, 39.576000, 39.618378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.662689, 39.198540, 39.611256>,  <40.583378, 38.972065, 39.606983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.662689, 39.198540, 39.611256>,  <40.794876, 39.576000, 39.618378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662689, 39.198540, 39.611256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377382, 0.114825, 0.918911,
		-0.865087, 0.310387, -0.394062,
		-0.330466, -0.943650, -0.017801,
		40.563549, 38.915443, 39.605915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078362, 39.553066, 39.788578>,  <40.794876, 39.576000, 39.618378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078362, 39.553066, 39.788578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202740, 39.184052, 39.879997>,  <40.277367, 38.962643, 39.934849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202740, 39.184052, 39.879997>,  <40.078362, 39.553066, 39.788578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202740, 39.184052, 39.879997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484318, 0.053098, 0.873279,
		-0.817770, -0.382233, -0.430291,
		0.310948, -0.922539, 0.228544,
		40.296024, 38.907291, 39.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.457008, 39.212429, 40.117516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756882, 38.979534, 40.243355>,  <39.936806, 38.839798, 40.318859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756882, 38.979534, 40.243355>,  <39.457008, 39.212429, 40.117516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756882, 38.979534, 40.243355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448715, -0.097777, 0.888310,
		-0.486450, -0.807115, -0.334562,
		0.749680, -0.582242, 0.314601,
		39.981785, 38.804863, 40.337734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219051, 38.840584, 40.684666>,  <39.457008, 39.212429, 40.117516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219051, 38.840584, 40.684666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595451, 38.715778, 40.737087>,  <39.821289, 38.640896, 40.768539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595451, 38.715778, 40.737087>,  <39.219051, 38.840584, 40.684666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595451, 38.715778, 40.737087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145055, -0.021989, 0.989179,
		-0.305754, -0.949824, -0.065950,
		0.940996, -0.312012, 0.131054,
		39.877750, 38.622173, 40.776402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190037, 38.171726, 41.033054>,  <39.219051, 38.840584, 40.684666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190037, 38.171726, 41.033054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548595, 38.336868, 41.097591>,  <39.763729, 38.435955, 41.136314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.548595, 38.336868, 41.097591>,  <39.190037, 38.171726, 41.033054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548595, 38.336868, 41.097591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200956, 0.054080, 0.978106,
		0.395090, -0.909190, 0.131443,
		0.896393, 0.412855, 0.161341,
		39.817513, 38.460724, 41.145992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506840, 37.752254, 41.528671>,  <39.190037, 38.171726, 41.033054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506840, 37.752254, 41.528671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721901, 38.085133, 41.582886>,  <39.850937, 38.284859, 41.615414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721901, 38.085133, 41.582886>,  <39.506840, 37.752254, 41.528671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721901, 38.085133, 41.582886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223105, -0.014598, 0.974685,
		0.813111, -0.554283, 0.177819,
		0.537656, 0.832200, 0.135533,
		39.883198, 38.334793, 41.623547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019596, 37.573112, 41.986305>,  <39.506840, 37.752254, 41.528671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019596, 37.573112, 41.986305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959900, 37.967674, 42.013813>,  <39.924084, 38.204411, 42.030315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959900, 37.967674, 42.013813>,  <40.019596, 37.573112, 41.986305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959900, 37.967674, 42.013813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203823, -0.098739, 0.974016,
		0.967566, 0.131343, 0.215788,
		-0.149237, 0.986407, 0.068766,
		39.915131, 38.263596, 42.034443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467915, 37.760460, 42.612438>,  <40.019596, 37.573112, 41.986305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467915, 37.760460, 42.612438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170170, 38.019215, 42.546162>,  <39.991524, 38.174469, 42.506393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170170, 38.019215, 42.546162>,  <40.467915, 37.760460, 42.612438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170170, 38.019215, 42.546162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200290, 0.020424, 0.979524,
		0.637029, 0.762309, 0.114363,
		-0.744364, 0.646891, -0.165693,
		39.946861, 38.213284, 42.496452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509132, 38.012306, 43.215111>,  <40.467915, 37.760460, 42.612438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509132, 38.012306, 43.215111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177288, 38.173874, 43.060921>,  <39.978180, 38.270813, 42.968407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.177288, 38.173874, 43.060921>,  <40.509132, 38.012306, 43.215111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177288, 38.173874, 43.060921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392483, 0.069159, 0.917155,
		0.397116, 0.912177, 0.101156,
		-0.829612, 0.403919, -0.385478,
		39.928406, 38.295048, 42.945278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381699, 38.616062, 43.629864>,  <40.509132, 38.012306, 43.215111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381699, 38.616062, 43.629864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.035748, 38.484039, 43.478577>,  <39.828178, 38.404827, 43.387802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.035748, 38.484039, 43.478577>,  <40.381699, 38.616062, 43.629864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035748, 38.484039, 43.478577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395034, -0.017393, 0.918502,
		-0.309736, 0.943801, -0.115341,
		-0.864877, -0.330057, -0.378220,
		39.776283, 38.385021, 43.365112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898663, 39.030960, 43.838543>,  <40.381699, 38.616062, 43.629864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898663, 39.030960, 43.838543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684673, 38.699379, 43.773258>,  <39.556278, 38.500431, 43.734089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684673, 38.699379, 43.773258>,  <39.898663, 39.030960, 43.838543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684673, 38.699379, 43.773258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480100, 0.139317, 0.866080,
		-0.695201, 0.541691, -0.472511,
		-0.534976, -0.828952, -0.163212,
		39.524181, 38.450695, 43.724293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237911, 39.186951, 43.915352>,  <39.898663, 39.030960, 43.838543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237911, 39.186951, 43.915352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243408, 38.788658, 43.951847>,  <39.246708, 38.549683, 43.973743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243408, 38.788658, 43.951847>,  <39.237911, 39.186951, 43.915352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243408, 38.788658, 43.951847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272732, 0.084054, 0.958411,
		-0.961992, -0.038056, -0.270413,
		0.013744, -0.995734, 0.091239,
		39.247532, 38.489937, 43.979218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706482, 39.009560, 44.455235>,  <39.237911, 39.186951, 43.915352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706482, 39.009560, 44.455235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936241, 38.684040, 44.419903>,  <39.074097, 38.488728, 44.398705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936241, 38.684040, 44.419903>,  <38.706482, 39.009560, 44.455235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936241, 38.684040, 44.419903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104367, -0.179835, 0.978145,
		-0.811898, -0.552622, -0.188230,
		0.574394, -0.813799, -0.088332,
		39.108559, 38.439899, 44.393402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441261, 38.518749, 44.957420>,  <38.706482, 39.009560, 44.455235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441261, 38.518749, 44.957420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.782150, 38.338726, 44.850708>,  <38.986683, 38.230713, 44.786682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.782150, 38.338726, 44.850708>,  <38.441261, 38.518749, 44.957420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782150, 38.338726, 44.850708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054623, -0.430588, 0.900894,
		-0.520325, -0.782332, -0.342372,
		0.852220, -0.450057, -0.266779,
		39.037815, 38.203709, 44.770676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331062, 37.839203, 45.151226>,  <38.441261, 38.518749, 44.957420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331062, 37.839203, 45.151226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716599, 37.945415, 45.142231>,  <38.947922, 38.009144, 45.136833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716599, 37.945415, 45.142231>,  <38.331062, 37.839203, 45.151226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716599, 37.945415, 45.142231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144610, -0.450297, 0.881091,
		0.223833, -0.852482, -0.472413,
		0.963840, 0.265533, -0.022486,
		39.005749, 38.025074, 45.135487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565582, 37.464985, 45.626686>,  <38.331062, 37.839203, 45.151226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565582, 37.464985, 45.626686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904690, 37.668789, 45.567768>,  <39.108154, 37.791069, 45.532417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904690, 37.668789, 45.567768>,  <38.565582, 37.464985, 45.626686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904690, 37.668789, 45.567768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263700, -0.163967, 0.950567,
		0.460170, -0.844698, -0.273363,
		0.847765, 0.509508, -0.147294,
		39.159019, 37.821640, 45.523579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114838, 37.091324, 45.699356>,  <38.565582, 37.464985, 45.626686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114838, 37.091324, 45.699356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264305, 37.456013, 45.767643>,  <39.353985, 37.674824, 45.808613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264305, 37.456013, 45.767643>,  <39.114838, 37.091324, 45.699356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264305, 37.456013, 45.767643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084492, -0.216736, 0.972567,
		0.923707, -0.348992, -0.158020,
		0.373667, 0.911718, 0.170713,
		39.376404, 37.729527, 45.818855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857086, 37.083118, 45.984814>,  <39.114838, 37.091324, 45.699356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857086, 37.083118, 45.984814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714848, 37.444454, 46.080750>,  <39.629505, 37.661255, 46.138313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714848, 37.444454, 46.080750>,  <39.857086, 37.083118, 45.984814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714848, 37.444454, 46.080750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179913, -0.185657, 0.966003,
		0.917159, 0.386660, -0.096504,
		-0.355598, 0.903341, 0.239842,
		39.608170, 37.715458, 46.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379726, 37.455544, 46.406227>,  <39.857086, 37.083118, 45.984814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379726, 37.455544, 46.406227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022141, 37.613258, 46.491417>,  <39.807587, 37.707886, 46.542530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022141, 37.613258, 46.491417>,  <40.379726, 37.455544, 46.406227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022141, 37.613258, 46.491417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150010, -0.184540, 0.971309,
		0.422277, 0.900268, 0.105826,
		-0.893968, 0.394287, 0.212976,
		39.753948, 37.731544, 46.555309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470642, 37.847012, 47.029671>,  <40.379726, 37.455544, 46.406227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470642, 37.847012, 47.029671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073437, 37.800510, 47.021534>,  <39.835114, 37.772610, 47.016651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073437, 37.800510, 47.021534>,  <40.470642, 37.847012, 47.029671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073437, 37.800510, 47.021534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006550, -0.117835, 0.993012,
		-0.117835, 0.986205, 0.116250,
		-0.993012, -0.116250, -0.020345,
		39.775532, 37.765636, 47.015430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276512, 38.068748, 47.716236>,  <40.470642, 37.847012, 47.029671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276512, 38.068748, 47.716236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.970177, 37.865330, 47.558823>,  <39.786377, 37.743279, 47.464375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.970177, 37.865330, 47.558823>,  <40.276512, 38.068748, 47.716236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970177, 37.865330, 47.558823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068692, -0.543799, 0.836399,
		-0.639354, 0.667580, 0.381529,
		-0.765838, -0.508547, -0.393537,
		39.740425, 37.712765, 47.440762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975536, 37.913563, 48.357826>,  <40.276512, 38.068748, 47.716236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975536, 37.913563, 48.357826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.830063, 37.670975, 48.075005>,  <39.742779, 37.525421, 47.905312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.830063, 37.670975, 48.075005>,  <39.975536, 37.913563, 48.357826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830063, 37.670975, 48.075005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099369, -0.729443, 0.676786,
		-0.926208, 0.316393, 0.205020,
		-0.363681, -0.606472, -0.707056,
		39.720959, 37.489033, 47.862888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529690, 37.544891, 48.683727>,  <39.975536, 37.913563, 48.357826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529690, 37.544891, 48.683727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538399, 37.309387, 48.360523>,  <39.543625, 37.168083, 48.166599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538399, 37.309387, 48.360523>,  <39.529690, 37.544891, 48.683727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538399, 37.309387, 48.360523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290710, -0.777011, 0.558338,
		-0.956564, 0.222744, -0.188073,
		0.021768, -0.588760, -0.808015,
		39.544930, 37.132759, 48.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871052, 37.313229, 48.535137>,  <39.529690, 37.544891, 48.683727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871052, 37.313229, 48.535137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.158474, 37.065403, 48.408764>,  <39.330929, 36.916706, 48.332939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.158474, 37.065403, 48.408764>,  <38.871052, 37.313229, 48.535137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158474, 37.065403, 48.408764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311049, -0.692609, 0.650801,
		-0.622030, -0.369368, -0.690395,
		0.718559, -0.619564, -0.315932,
		39.374043, 36.879532, 48.313984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670979, 36.475677, 48.292007>,  <38.871052, 37.313229, 48.535137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670979, 36.475677, 48.292007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029190, 36.446838, 48.467659>,  <39.244118, 36.429535, 48.573051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029190, 36.446838, 48.467659>,  <38.670979, 36.475677, 48.292007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029190, 36.446838, 48.467659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325813, -0.778376, 0.536636,
		0.303119, -0.623645, -0.720545,
		0.895525, -0.072099, 0.439132,
		39.297848, 36.425209, 48.599400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907841, 35.842911, 48.307747>,  <38.670979, 36.475677, 48.292007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907841, 35.842911, 48.307747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111477, 35.983379, 48.622074>,  <39.233658, 36.067661, 48.810669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111477, 35.983379, 48.622074>,  <38.907841, 35.842911, 48.307747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111477, 35.983379, 48.622074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271919, -0.800606, 0.533938,
		0.816631, -0.485501, -0.312092,
		0.509091, 0.351167, 0.785817,
		39.264206, 36.088730, 48.857819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151791, 35.739712, 48.554413>,  <38.907841, 35.842911, 48.307747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151791, 35.739712, 48.554413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774944, 35.816563, 48.664326>,  <37.548836, 35.862671, 48.730274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774944, 35.816563, 48.664326>,  <38.151791, 35.739712, 48.554413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774944, 35.816563, 48.664326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281541, -0.008239, -0.959514,
		-0.182084, -0.981336, 0.061854,
		-0.942115, 0.192126, 0.274786,
		37.492310, 35.874199, 48.746761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759975, 35.274025, 48.192715>,  <38.151791, 35.739712, 48.554413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759975, 35.274025, 48.192715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500973, 35.562565, 48.291012>,  <37.345573, 35.735691, 48.349991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500973, 35.562565, 48.291012>,  <37.759975, 35.274025, 48.192715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500973, 35.562565, 48.291012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296607, 0.058486, -0.953207,
		-0.701971, -0.690094, 0.176089,
		-0.647503, 0.721353, 0.245743,
		37.306721, 35.778969, 48.364735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182678, 35.179279, 47.903667>,  <37.759975, 35.274025, 48.192715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182678, 35.179279, 47.903667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185097, 35.575684, 47.957130>,  <37.186550, 35.813526, 47.989208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185097, 35.575684, 47.957130>,  <37.182678, 35.179279, 47.903667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185097, 35.575684, 47.957130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357239, 0.126983, -0.925341,
		-0.933994, -0.042149, 0.354795,
		0.006051, 0.991009, 0.133659,
		37.186913, 35.872986, 47.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529724, 35.379612, 47.485577>,  <37.182678, 35.179279, 47.903667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529724, 35.379612, 47.485577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744789, 35.711983, 47.542824>,  <36.873829, 35.911404, 47.577171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744789, 35.711983, 47.542824>,  <36.529724, 35.379612, 47.485577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744789, 35.711983, 47.542824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147862, 0.260030, -0.954213,
		-0.830092, 0.491885, 0.262671,
		0.537665, 0.830924, 0.143118,
		36.906090, 35.961258, 47.585758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050549, 35.906567, 47.315239>,  <36.529724, 35.379612, 47.485577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050549, 35.906567, 47.315239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406254, 36.087311, 47.286850>,  <36.619675, 36.195759, 47.269817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406254, 36.087311, 47.286850>,  <36.050549, 35.906567, 47.315239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406254, 36.087311, 47.286850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184245, 0.211844, -0.959779,
		-0.418650, 0.866571, 0.271637,
		0.889261, 0.451860, -0.070973,
		36.673031, 36.222870, 47.265556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955181, 36.658939, 47.175411>,  <36.050549, 35.906567, 47.315239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955181, 36.658939, 47.175411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309715, 36.539055, 47.034222>,  <36.522434, 36.467125, 46.949509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309715, 36.539055, 47.034222>,  <35.955181, 36.658939, 47.175411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309715, 36.539055, 47.034222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209114, 0.421044, -0.882606,
		0.413142, 0.856094, 0.310511,
		0.886332, -0.299710, -0.352972,
		36.575615, 36.449142, 46.928329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071014, 37.152473, 46.719971>,  <35.955181, 36.658939, 47.175411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071014, 37.152473, 46.719971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371632, 36.897530, 46.651905>,  <36.552002, 36.744564, 46.611065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371632, 36.897530, 46.651905>,  <36.071014, 37.152473, 46.719971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371632, 36.897530, 46.651905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082696, 0.346931, -0.934238,
		0.654484, 0.688046, 0.313440,
		0.751540, -0.637364, -0.170162,
		36.597095, 36.706322, 46.600857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637138, 37.557171, 46.461624>,  <36.071014, 37.152473, 46.719971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637138, 37.557171, 46.461624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726383, 37.191284, 46.326862>,  <36.779930, 36.971752, 46.246006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726383, 37.191284, 46.326862>,  <36.637138, 37.557171, 46.461624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726383, 37.191284, 46.326862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367843, 0.399072, -0.839901,
		0.902724, 0.063465, 0.425512,
		0.223114, -0.914721, -0.336907,
		36.793316, 36.916866, 46.225792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262447, 37.678246, 46.028851>,  <36.637138, 37.557171, 46.461624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262447, 37.678246, 46.028851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102020, 37.328243, 45.920395>,  <37.005764, 37.118240, 45.855324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102020, 37.328243, 45.920395>,  <37.262447, 37.678246, 46.028851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102020, 37.328243, 45.920395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218205, 0.196211, -0.955975,
		0.889682, -0.442570, 0.112237,
		-0.401064, -0.875004, -0.271137,
		36.981701, 37.065742, 45.839054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704571, 37.344421, 45.517502>,  <37.262447, 37.678246, 46.028851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704571, 37.344421, 45.517502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331429, 37.208073, 45.470890>,  <37.107544, 37.126263, 45.442921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331429, 37.208073, 45.470890>,  <37.704571, 37.344421, 45.517502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331429, 37.208073, 45.470890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055641, 0.183261, -0.981488,
		0.355917, -0.922075, -0.151990,
		-0.932859, -0.340872, -0.116531,
		37.051571, 37.105812, 45.435932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755524, 36.787449, 44.977703>,  <37.704571, 37.344421, 45.517502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755524, 36.787449, 44.977703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379780, 36.924500, 44.983410>,  <37.154331, 37.006729, 44.986835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379780, 36.924500, 44.983410>,  <37.755524, 36.787449, 44.977703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379780, 36.924500, 44.983410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053230, 0.186782, -0.980958,
		-0.338769, -0.920717, -0.193694,
		-0.939363, 0.342628, 0.014266,
		37.097969, 37.027287, 44.987690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494869, 36.702637, 44.239407>,  <37.755524, 36.787449, 44.977703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494869, 36.702637, 44.239407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203369, 36.941067, 44.374237>,  <37.028469, 37.084126, 44.455135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203369, 36.941067, 44.374237>,  <37.494869, 36.702637, 44.239407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203369, 36.941067, 44.374237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123326, 0.369941, -0.920833,
		-0.673586, -0.712625, -0.196081,
		-0.728747, 0.596078, 0.337073,
		36.984745, 37.119888, 44.475357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909832, 36.664528, 43.727158>,  <37.494869, 36.702637, 44.239407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909832, 36.664528, 43.727158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892529, 37.006336, 43.934200>,  <36.882145, 37.211422, 44.058426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892529, 37.006336, 43.934200>,  <36.909832, 36.664528, 43.727158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892529, 37.006336, 43.934200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214063, 0.498129, -0.840264,
		-0.975861, -0.147152, 0.161372,
		-0.043263, 0.854525, 0.517605,
		36.879551, 37.262695, 44.089481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460754, 37.048569, 43.375858>,  <36.909832, 36.664528, 43.727158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460754, 37.048569, 43.375858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625870, 37.335209, 43.600742>,  <36.724941, 37.507195, 43.735672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625870, 37.335209, 43.600742>,  <36.460754, 37.048569, 43.375858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625870, 37.335209, 43.600742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055091, 0.596481, -0.800734,
		-0.909158, 0.361509, 0.206743,
		0.412791, 0.716605, 0.562211,
		36.749706, 37.550190, 43.769405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112839, 37.652596, 43.304546>,  <36.460754, 37.048569, 43.375858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112839, 37.652596, 43.304546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.487885, 37.753349, 43.400414>,  <36.712910, 37.813801, 43.457935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.487885, 37.753349, 43.400414>,  <36.112839, 37.652596, 43.304546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487885, 37.753349, 43.400414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063513, 0.553652, -0.830323,
		-0.341839, 0.793741, 0.503112,
		0.937610, 0.251883, 0.239673,
		36.769169, 37.828915, 43.472317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184109, 38.382446, 43.192062>,  <36.112839, 37.652596, 43.304546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184109, 38.382446, 43.192062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563835, 38.257122, 43.202087>,  <36.791672, 38.181927, 43.208103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563835, 38.257122, 43.202087>,  <36.184109, 38.382446, 43.192062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563835, 38.257122, 43.202087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186208, 0.496372, -0.847904,
		0.253217, 0.809599, 0.529557,
		0.949319, -0.313312, 0.025064,
		36.848633, 38.163128, 43.209606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605686, 38.981304, 43.213814>,  <36.184109, 38.382446, 43.192062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605686, 38.981304, 43.213814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855560, 38.697067, 43.084301>,  <37.005486, 38.526524, 43.006596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855560, 38.697067, 43.084301>,  <36.605686, 38.981304, 43.213814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855560, 38.697067, 43.084301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203840, 0.548645, -0.810826,
		0.753805, 0.440510, 0.487575,
		0.624682, -0.710592, -0.323778,
		37.042965, 38.483891, 42.987167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183918, 39.279881, 42.881191>,  <36.605686, 38.981304, 43.213814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183918, 39.279881, 42.881191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188698, 38.919006, 42.708714>,  <37.191566, 38.702484, 42.605228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.188698, 38.919006, 42.708714>,  <37.183918, 39.279881, 42.881191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188698, 38.919006, 42.708714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153248, 0.427779, -0.890798,
		0.988116, -0.055433, 0.143370,
		0.011951, -0.902182, -0.431190,
		37.192284, 38.648354, 42.579357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243244, 39.466099, 42.214085>,  <37.183918, 39.279881, 42.881191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243244, 39.466099, 42.214085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246899, 39.072456, 42.143147>,  <37.249092, 38.836269, 42.100582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246899, 39.072456, 42.143147>,  <37.243244, 39.466099, 42.214085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246899, 39.072456, 42.143147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049308, 0.177584, -0.982870,
		0.998742, 0.000236, 0.050147,
		0.009137, -0.984105, -0.177349,
		37.249641, 38.777225, 42.089943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789669, 39.363457, 41.828842>,  <37.243244, 39.466099, 42.214085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789669, 39.363457, 41.828842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.538963, 39.059750, 41.758774>,  <37.388538, 38.877525, 41.716732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.538963, 39.059750, 41.758774>,  <37.789669, 39.363457, 41.828842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538963, 39.059750, 41.758774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120910, 0.127321, -0.984465,
		0.769771, -0.638207, 0.012002,
		-0.626764, -0.759263, -0.175174,
		37.350933, 38.831970, 41.706223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.418232, 30.365412, 27.248968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128574, 30.597462, 27.099800>,  <43.954781, 30.736691, 27.010300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128574, 30.597462, 27.099800>,  <44.418232, 30.365412, 27.248968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128574, 30.597462, 27.099800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482192, 0.812502, 0.327614,
		0.493055, 0.057421, -0.868101,
		-0.724146, 0.580123, -0.372920,
		43.911331, 30.771498, 26.987925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809998, 30.913801, 26.988554>,  <44.418232, 30.365412, 27.248968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809998, 30.913801, 26.988554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430611, 31.019169, 27.059002>,  <44.202980, 31.082390, 27.101271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430611, 31.019169, 27.059002>,  <44.809998, 30.913801, 26.988554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430611, 31.019169, 27.059002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315251, 0.728254, 0.608492,
		0.032028, 0.632658, -0.773769,
		-0.948468, 0.263421, 0.176122,
		44.146069, 31.098194, 27.111839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842594, 31.586882, 26.798685>,  <44.809998, 30.913801, 26.988554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842594, 31.586882, 26.798685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519207, 31.526278, 27.026165>,  <44.325172, 31.489916, 27.162653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519207, 31.526278, 27.026165>,  <44.842594, 31.586882, 26.798685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519207, 31.526278, 27.026165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324775, 0.690991, 0.645797,
		-0.490810, 0.706807, -0.509440,
		-0.808472, -0.151511, 0.568698,
		44.276665, 31.480824, 27.196775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539288, 32.192852, 26.872047>,  <44.842594, 31.586882, 26.798685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539288, 32.192852, 26.872047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415775, 31.983700, 27.189852>,  <44.341667, 31.858210, 27.380535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415775, 31.983700, 27.189852>,  <44.539288, 32.192852, 26.872047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415775, 31.983700, 27.189852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355300, 0.711450, 0.606301,
		-0.882278, 0.469506, -0.033906,
		-0.308785, -0.522879, 0.794512,
		44.323139, 31.826836, 27.428205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221455, 32.680443, 27.275293>,  <44.539288, 32.192852, 26.872047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221455, 32.680443, 27.275293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279648, 32.375729, 27.527803>,  <44.314564, 32.192898, 27.679310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279648, 32.375729, 27.527803>,  <44.221455, 32.680443, 27.275293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279648, 32.375729, 27.527803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005107, 0.638635, 0.769493,
		-0.989347, -0.108727, 0.096803,
		0.145486, -0.761790, 0.631277,
		44.323292, 32.147190, 27.717186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838631, 32.832935, 27.835802>,  <44.221455, 32.680443, 27.275293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838631, 32.832935, 27.835802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085468, 32.557674, 27.988453>,  <44.233570, 32.392517, 28.080044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085468, 32.557674, 27.988453>,  <43.838631, 32.832935, 27.835802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085468, 32.557674, 27.988453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047463, 0.516653, 0.854878,
		-0.785454, -0.509429, 0.351487,
		0.617097, -0.688150, 0.381629,
		44.270596, 32.351231, 28.102942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546261, 32.481663, 28.423119>,  <43.838631, 32.832935, 27.835802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546261, 32.481663, 28.423119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943401, 32.454353, 28.462292>,  <44.181686, 32.437969, 28.485796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943401, 32.454353, 28.462292>,  <43.546261, 32.481663, 28.423119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943401, 32.454353, 28.462292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066104, 0.368683, 0.927202,
		-0.099408, -0.927045, 0.361533,
		0.992848, -0.068272, 0.097931,
		44.241257, 32.433872, 28.491671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713043, 32.285164, 29.171885>,  <43.546261, 32.481663, 28.423119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713043, 32.285164, 29.171885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077545, 32.395069, 29.049173>,  <44.296249, 32.461014, 28.975548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077545, 32.395069, 29.049173>,  <43.713043, 32.285164, 29.171885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077545, 32.395069, 29.049173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215436, 0.316817, 0.923696,
		0.350994, -0.907816, 0.229507,
		0.911258, 0.274768, -0.306777,
		44.350922, 32.477497, 28.957140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243752, 31.959108, 29.627476>,  <43.713043, 32.285164, 29.171885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243752, 31.959108, 29.627476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443954, 32.265476, 29.466053>,  <44.564075, 32.449299, 29.369200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443954, 32.265476, 29.466053>,  <44.243752, 31.959108, 29.627476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443954, 32.265476, 29.466053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209235, 0.345305, 0.914869,
		0.840067, -0.542337, 0.012570,
		0.500508, 0.765921, -0.403556,
		44.594109, 32.495251, 29.344986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838623, 32.114857, 30.049435>,  <44.243752, 31.959108, 29.627476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838623, 32.114857, 30.049435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799244, 32.453259, 29.839834>,  <44.775616, 32.656300, 29.714073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799244, 32.453259, 29.839834>,  <44.838623, 32.114857, 30.049435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799244, 32.453259, 29.839834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236609, 0.531359, 0.813433,
		0.966604, -0.043901, -0.252486,
		-0.098450, 0.846009, -0.524001,
		44.769711, 32.707062, 29.682634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397118, 32.442757, 30.266220>,  <44.838623, 32.114857, 30.049435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397118, 32.442757, 30.266220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148529, 32.719204, 30.118637>,  <44.999378, 32.885075, 30.030087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148529, 32.719204, 30.118637>,  <45.397118, 32.442757, 30.266220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148529, 32.719204, 30.118637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084298, 0.527202, 0.845548,
		0.778891, 0.494379, -0.385900,
		-0.621468, 0.691121, -0.368957,
		44.962090, 32.926540, 30.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729294, 33.103416, 30.343210>,  <45.397118, 32.442757, 30.266220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729294, 33.103416, 30.343210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339317, 33.184818, 30.307251>,  <45.105331, 33.233658, 30.285675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339317, 33.184818, 30.307251>,  <45.729294, 33.103416, 30.343210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339317, 33.184818, 30.307251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065181, 0.647623, 0.759168,
		0.212713, 0.734282, -0.644657,
		-0.974938, 0.203504, -0.089897,
		45.046837, 33.245869, 30.280281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585194, 33.835354, 30.230793>,  <45.729294, 33.103416, 30.343210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585194, 33.835354, 30.230793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246601, 33.704712, 30.398985>,  <45.043446, 33.626328, 30.499899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246601, 33.704712, 30.398985>,  <45.585194, 33.835354, 30.230793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246601, 33.704712, 30.398985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054906, 0.731988, 0.679101,
		-0.529584, 0.597931, -0.601680,
		-0.846479, -0.326605, 0.420479,
		44.992657, 33.606731, 30.525129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135063, 34.429031, 30.406498>,  <45.585194, 33.835354, 30.230793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135063, 34.429031, 30.406498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976162, 34.140427, 30.633343>,  <44.880821, 33.967266, 30.769449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976162, 34.140427, 30.633343>,  <45.135063, 34.429031, 30.406498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976162, 34.140427, 30.633343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112121, 0.651495, 0.750322,
		-0.910834, 0.234482, -0.339704,
		-0.397252, -0.721507, 0.567113,
		44.856987, 33.923973, 30.803476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614883, 34.827942, 30.686174>,  <45.135063, 34.429031, 30.406498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614883, 34.827942, 30.686174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677265, 34.496380, 30.901062>,  <44.714695, 34.297443, 31.029995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677265, 34.496380, 30.901062>,  <44.614883, 34.827942, 30.686174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677265, 34.496380, 30.901062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099937, 0.527840, 0.843444,
		-0.982696, -0.185224, -0.000521,
		0.155951, -0.828901, 0.537217,
		44.724049, 34.247711, 31.062227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065269, 34.766773, 31.037540>,  <44.614883, 34.827942, 30.686174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065269, 34.766773, 31.037540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333466, 34.542057, 31.231377>,  <44.494385, 34.407227, 31.347679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333466, 34.542057, 31.231377>,  <44.065269, 34.766773, 31.037540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333466, 34.542057, 31.231377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126233, 0.557257, 0.820689,
		-0.731098, -0.611438, 0.302721,
		0.670493, -0.561790, 0.484592,
		44.534615, 34.373520, 31.376755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733341, 34.638866, 31.733448>,  <44.065269, 34.766773, 31.037540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733341, 34.638866, 31.733448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126122, 34.585888, 31.787470>,  <44.361790, 34.554100, 31.819883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126122, 34.585888, 31.787470>,  <43.733341, 34.638866, 31.733448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126122, 34.585888, 31.787470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018833, 0.641976, 0.766493,
		-0.188222, -0.755198, 0.627892,
		0.981946, -0.132446, 0.135057,
		44.420704, 34.546154, 31.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794708, 34.576519, 32.408875>,  <43.733341, 34.638866, 31.733448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794708, 34.576519, 32.408875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175755, 34.643230, 32.307125>,  <44.404385, 34.683258, 32.246075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175755, 34.643230, 32.307125>,  <43.794708, 34.576519, 32.408875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175755, 34.643230, 32.307125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092551, 0.637693, 0.764710,
		0.289747, -0.752019, 0.592043,
		0.952618, 0.166778, -0.254370,
		44.461540, 34.693264, 32.230816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239639, 34.439720, 32.970753>,  <43.794708, 34.576519, 32.408875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239639, 34.439720, 32.970753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446121, 34.688290, 32.735001>,  <44.570011, 34.837429, 32.593548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446121, 34.688290, 32.735001>,  <44.239639, 34.439720, 32.970753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446121, 34.688290, 32.735001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092108, 0.643882, 0.759560,
		0.851498, -0.446375, 0.275136,
		0.516204, 0.621422, -0.589380,
		44.600983, 34.874718, 32.558186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887245, 34.610683, 33.352867>,  <44.239639, 34.439720, 32.970753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887245, 34.610683, 33.352867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.845470, 34.909683, 33.090469>,  <44.820408, 35.089085, 32.933029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.845470, 34.909683, 33.090469>,  <44.887245, 34.610683, 33.352867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845470, 34.909683, 33.090469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330176, 0.648253, 0.686114,
		0.938124, -0.144940, -0.314508,
		-0.104435, 0.747503, -0.655997,
		44.814140, 35.133934, 32.893669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299019, 35.107334, 33.624447>,  <44.887245, 34.610683, 33.352867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299019, 35.107334, 33.624447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.139713, 35.345825, 33.345619>,  <45.044128, 35.488918, 33.178322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.139713, 35.345825, 33.345619>,  <45.299019, 35.107334, 33.624447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139713, 35.345825, 33.345619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140787, 0.790663, 0.595845,
		0.906401, 0.139167, -0.398835,
		-0.398266, 0.596225, -0.697065,
		45.020233, 35.524693, 33.136501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379997, 34.823181, 34.425064>,  <45.299019, 35.107334, 33.624447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379997, 34.823181, 34.425064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487095, 34.694019, 34.788170>,  <45.551353, 34.616520, 35.006035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487095, 34.694019, 34.788170>,  <45.379997, 34.823181, 34.425064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487095, 34.694019, 34.788170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746619, -0.525982, -0.407313,
		0.608994, 0.786813, 0.100260,
		0.267744, -0.322907, 0.907769,
		45.567417, 34.597149, 35.060501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088558, 34.943222, 34.599102>,  <45.379997, 34.823181, 34.425064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088558, 34.943222, 34.599102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951641, 34.612038, 34.776783>,  <45.869492, 34.413326, 34.883392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951641, 34.612038, 34.776783>,  <46.088558, 34.943222, 34.599102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951641, 34.612038, 34.776783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638419, -0.551813, -0.536585,
		0.689390, 0.099922, 0.717466,
		-0.342290, -0.827960, 0.444206,
		45.848953, 34.363651, 34.910046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628613, 34.585155, 34.778267>,  <46.088558, 34.943222, 34.599102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628613, 34.585155, 34.778267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.353413, 34.294876, 34.779877>,  <46.188293, 34.120708, 34.780842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.353413, 34.294876, 34.779877>,  <46.628613, 34.585155, 34.778267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353413, 34.294876, 34.779877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601326, -0.573177, -0.556664,
		0.406277, -0.380566, 0.830728,
		-0.688001, -0.725698, 0.004024,
		46.147011, 34.077168, 34.781082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989304, 33.976551, 34.847073>,  <46.628613, 34.585155, 34.778267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989304, 33.976551, 34.847073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635117, 33.858315, 34.703644>,  <46.422604, 33.787373, 34.617588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.635117, 33.858315, 34.703644>,  <46.989304, 33.976551, 34.847073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635117, 33.858315, 34.703644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458176, -0.684187, -0.567418,
		-0.077606, -0.666719, 0.741258,
		-0.885467, -0.295591, -0.358571,
		46.369476, 33.769638, 34.596073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.030174, 33.237232, 34.859287>,  <46.989304, 33.976551, 34.847073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.030174, 33.237232, 34.859287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.754333, 33.331360, 34.585331>,  <46.588829, 33.387836, 34.420956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.754333, 33.331360, 34.585331>,  <47.030174, 33.237232, 34.859287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754333, 33.331360, 34.585331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406380, -0.657053, -0.634930,
		-0.599420, -0.716175, 0.357476,
		-0.689602, 0.235318, -0.684890,
		46.547455, 33.401955, 34.379864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.836430, 32.581997, 34.478806>,  <47.030174, 33.237232, 34.859287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.836430, 32.581997, 34.478806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.666012, 32.844841, 34.230068>,  <46.563763, 33.002548, 34.080826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.666012, 32.844841, 34.230068>,  <46.836430, 32.581997, 34.478806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666012, 32.844841, 34.230068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201058, -0.601386, -0.773247,
		-0.882079, -0.454462, 0.124097,
		-0.426041, 0.657114, -0.621843,
		46.538200, 33.041977, 34.043514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326485, 32.180794, 34.046928>,  <46.836430, 32.581997, 34.478806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326485, 32.180794, 34.046928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.438782, 32.511539, 33.852001>,  <46.506161, 32.709988, 33.735046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.438782, 32.511539, 33.852001>,  <46.326485, 32.180794, 34.046928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438782, 32.511539, 33.852001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167488, -0.542150, -0.823420,
		-0.945055, 0.149553, -0.290697,
		0.280746, 0.826865, -0.487314,
		46.523006, 32.759598, 33.705807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903896, 32.164932, 33.508099>,  <46.326485, 32.180794, 34.046928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903896, 32.164932, 33.508099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223625, 32.386971, 33.416054>,  <46.415462, 32.520195, 33.360828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223625, 32.386971, 33.416054>,  <45.903896, 32.164932, 33.508099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223625, 32.386971, 33.416054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025025, -0.413360, -0.910224,
		-0.600384, 0.721802, -0.344298,
		0.799321, 0.555100, -0.230112,
		46.463421, 32.553501, 33.347019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749908, 32.359474, 32.828346>,  <45.903896, 32.164932, 33.508099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749908, 32.359474, 32.828346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.145786, 32.406719, 32.860737>,  <46.383312, 32.435066, 32.880173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.145786, 32.406719, 32.860737>,  <45.749908, 32.359474, 32.828346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145786, 32.406719, 32.860737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127582, -0.470397, -0.873184,
		-0.065040, 0.874515, -0.480617,
		0.989693, 0.118110, 0.080978,
		46.442696, 32.442154, 32.885029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928127, 32.595325, 32.143703>,  <45.749908, 32.359474, 32.828346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928127, 32.595325, 32.143703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.293568, 32.495987, 32.272491>,  <46.512833, 32.436382, 32.349762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.293568, 32.495987, 32.272491>,  <45.928127, 32.595325, 32.143703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293568, 32.495987, 32.272491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185081, -0.451053, -0.873096,
		0.362052, 0.857249, -0.366117,
		0.913599, -0.248345, 0.321965,
		46.567646, 32.421482, 32.369080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442307, 32.886631, 31.654249>,  <45.928127, 32.595325, 32.143703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442307, 32.886631, 31.654249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657993, 32.604275, 31.837975>,  <46.787407, 32.434860, 31.948210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657993, 32.604275, 31.837975>,  <46.442307, 32.886631, 31.654249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657993, 32.604275, 31.837975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189432, -0.429757, -0.882850,
		0.820585, 0.563057, -0.098015,
		0.539217, -0.705886, 0.459313,
		46.819759, 32.392509, 31.975769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.048489, 32.729889, 31.221838>,  <46.442307, 32.886631, 31.654249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.048489, 32.729889, 31.221838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.976925, 32.419617, 31.463934>,  <46.933987, 32.233452, 31.609192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.976925, 32.419617, 31.463934>,  <47.048489, 32.729889, 31.221838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976925, 32.419617, 31.463934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214774, -0.631117, -0.745361,
		0.960138, -0.003362, 0.279507,
		-0.178908, -0.775680, 0.605238,
		46.923252, 32.186913, 31.645506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677750, 32.272869, 31.220110>,  <47.048489, 32.729889, 31.221838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677750, 32.272869, 31.220110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.378845, 32.037075, 31.342823>,  <47.199505, 31.895599, 31.416451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.378845, 32.037075, 31.342823>,  <47.677750, 32.272869, 31.220110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378845, 32.037075, 31.342823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360011, -0.747143, -0.558722,
		0.558569, -0.307063, 0.770528,
		-0.747257, -0.589483, 0.306785,
		47.154667, 31.860229, 31.434858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894592, 31.603867, 31.375465>,  <47.677750, 32.272869, 31.220110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894592, 31.603867, 31.375465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.502182, 31.547010, 31.322727>,  <47.266735, 31.512897, 31.291084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.502182, 31.547010, 31.322727>,  <47.894592, 31.603867, 31.375465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.502182, 31.547010, 31.322727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190318, -0.576387, -0.794706,
		0.036964, -0.804720, 0.592502,
		-0.981026, -0.142140, -0.131848,
		47.207874, 31.504368, 31.283173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902328, 30.943863, 31.108416>,  <47.894592, 31.603867, 31.375465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902328, 30.943863, 31.108416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.550194, 31.109167, 31.015276>,  <47.338913, 31.208349, 30.959393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.550194, 31.109167, 31.015276>,  <47.902328, 30.943863, 31.108416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.550194, 31.109167, 31.015276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057951, -0.393509, -0.917493,
		-0.470793, -0.821198, 0.322472,
		-0.880338, 0.413261, -0.232850,
		47.286091, 31.233145, 30.945421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.632751, 30.359085, 30.767731>,  <47.902328, 30.943863, 31.108416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.632751, 30.359085, 30.767731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.415066, 30.677296, 30.661171>,  <47.284454, 30.868221, 30.597235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.415066, 30.677296, 30.661171>,  <47.632751, 30.359085, 30.767731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.415066, 30.677296, 30.661171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382592, -0.517936, -0.765092,
		-0.746629, -0.314452, 0.586230,
		-0.544214, 0.795527, -0.266399,
		47.251801, 30.915955, 30.581251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.927460, 30.099720, 30.656271>,  <47.632751, 30.359085, 30.767731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.927460, 30.099720, 30.656271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.933491, 30.459560, 30.481691>,  <46.937107, 30.675465, 30.376944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.933491, 30.459560, 30.481691>,  <46.927460, 30.099720, 30.656271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.933491, 30.459560, 30.481691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347371, -0.404600, -0.845951,
		-0.937607, 0.164363, 0.306396,
		0.015076, 0.899602, -0.436451,
		46.938015, 30.729441, 30.350756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231659, 30.171528, 30.251680>,  <46.927460, 30.099720, 30.656271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231659, 30.171528, 30.251680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.473625, 30.440392, 30.080904>,  <46.618805, 30.601711, 29.978439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.473625, 30.440392, 30.080904>,  <46.231659, 30.171528, 30.251680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473625, 30.440392, 30.080904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435816, -0.169264, -0.883976,
		-0.666440, 0.720797, 0.190548,
		0.604915, 0.672162, -0.426939,
		46.655098, 30.642040, 29.952822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838608, 30.344492, 29.712210>,  <46.231659, 30.171528, 30.251680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838608, 30.344492, 29.712210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.197407, 30.489799, 29.611469>,  <46.412685, 30.576984, 29.551025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.197407, 30.489799, 29.611469>,  <45.838608, 30.344492, 29.712210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197407, 30.489799, 29.611469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246132, -0.062790, -0.967200,
		-0.367167, 0.929566, 0.033090,
		0.896999, 0.363269, -0.251851,
		46.466507, 30.598780, 29.535913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782837, 30.885080, 29.143219>,  <45.838608, 30.344492, 29.712210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782837, 30.885080, 29.143219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.138111, 30.702734, 29.120220>,  <46.351276, 30.593327, 29.106421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.138111, 30.702734, 29.120220>,  <45.782837, 30.885080, 29.143219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138111, 30.702734, 29.120220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199617, -0.270128, -0.941904,
		0.413851, 0.848067, -0.330923,
		0.888190, -0.455865, -0.057496,
		46.404568, 30.565975, 29.102972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041634, 31.179268, 28.556129>,  <45.782837, 30.885080, 29.143219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041634, 31.179268, 28.556129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.226727, 30.836321, 28.646284>,  <46.337784, 30.630552, 28.700377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.226727, 30.836321, 28.646284>,  <46.041634, 31.179268, 28.556129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226727, 30.836321, 28.646284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073788, -0.290610, -0.953992,
		0.883421, 0.424814, -0.197738,
		0.462734, -0.857367, 0.225385,
		46.365547, 30.579111, 28.713900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.588795, 39.498608, 37.344208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390457, 39.158569, 37.415169>,  <41.271454, 38.954544, 37.457745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390457, 39.158569, 37.415169>,  <41.588795, 39.498608, 37.344208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390457, 39.158569, 37.415169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176778, -0.101200, -0.979034,
		0.850229, -0.516809, -0.100099,
		-0.495843, -0.850098, 0.177404,
		41.241703, 38.903542, 37.468391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840420, 38.970184, 36.827721>,  <41.588795, 39.498608, 37.344208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840420, 38.970184, 36.827721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478992, 38.831318, 36.928158>,  <41.262138, 38.747997, 36.988419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478992, 38.831318, 36.928158>,  <41.840420, 38.970184, 36.827721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478992, 38.831318, 36.928158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294082, 0.076342, -0.952726,
		0.311587, -0.934691, -0.171076,
		-0.903565, -0.347167, 0.251089,
		41.207924, 38.727169, 37.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620209, 38.349075, 36.420918>,  <41.840420, 38.970184, 36.827721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620209, 38.349075, 36.420918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275040, 38.525696, 36.519222>,  <41.067940, 38.631668, 36.578205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275040, 38.525696, 36.519222>,  <41.620209, 38.349075, 36.420918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275040, 38.525696, 36.519222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342090, -0.152462, -0.927216,
		-0.371944, -0.884187, 0.282613,
		-0.862921, 0.441551, 0.245764,
		41.016163, 38.658161, 36.592953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245602, 38.080406, 35.903431>,  <41.620209, 38.349075, 36.420918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245602, 38.080406, 35.903431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966839, 38.318634, 36.063236>,  <40.799580, 38.461571, 36.159119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966839, 38.318634, 36.063236>,  <41.245602, 38.080406, 35.903431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966839, 38.318634, 36.063236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573106, -0.127617, -0.809483,
		-0.431122, -0.793099, 0.430264,
		-0.696910, 0.595574, 0.399511,
		40.757767, 38.497307, 36.183090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591785, 37.761940, 35.679916>,  <41.245602, 38.080406, 35.903431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591785, 37.761940, 35.679916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522434, 38.142540, 35.781582>,  <40.480824, 38.370899, 35.842579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522434, 38.142540, 35.781582>,  <40.591785, 37.761940, 35.679916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522434, 38.142540, 35.781582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538733, 0.124409, -0.833240,
		-0.824444, -0.281388, 0.491033,
		-0.173375, 0.951496, 0.254161,
		40.470421, 38.427990, 35.857830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870064, 37.875961, 35.643745>,  <40.591785, 37.761940, 35.679916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870064, 37.875961, 35.643745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012653, 38.246666, 35.596359>,  <40.098209, 38.469090, 35.567928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012653, 38.246666, 35.596359>,  <39.870064, 37.875961, 35.643745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012653, 38.246666, 35.596359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528189, 0.095311, -0.843760,
		-0.770675, 0.363355, 0.523482,
		0.356478, 0.926763, -0.118466,
		40.119598, 38.524696, 35.560818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307796, 38.222599, 35.684383>,  <39.870064, 37.875961, 35.643745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307796, 38.222599, 35.684383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596298, 38.406429, 35.477085>,  <39.769402, 38.516727, 35.352707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596298, 38.406429, 35.477085>,  <39.307796, 38.222599, 35.684383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596298, 38.406429, 35.477085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568451, -0.034783, -0.821982,
		-0.395791, 0.887456, 0.236160,
		0.721258, 0.459578, -0.518242,
		39.812675, 38.544304, 35.321613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939415, 38.531456, 35.162331>,  <39.307796, 38.222599, 35.684383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939415, 38.531456, 35.162331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312233, 38.570984, 35.022884>,  <39.535923, 38.594700, 34.939217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312233, 38.570984, 35.022884>,  <38.939415, 38.531456, 35.162331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312233, 38.570984, 35.022884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345341, -0.049046, -0.937195,
		-0.109712, 0.993896, -0.011586,
		0.932042, 0.098821, -0.348614,
		39.591846, 38.600632, 34.918301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754459, 38.970402, 34.567429>,  <38.939415, 38.531456, 35.162331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754459, 38.970402, 34.567429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113434, 38.800007, 34.521572>,  <39.328819, 38.697769, 34.494057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113434, 38.800007, 34.521572>,  <38.754459, 38.970402, 34.567429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113434, 38.800007, 34.521572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160664, -0.073582, -0.984263,
		0.410847, 0.901732, -0.134476,
		0.897436, -0.425987, -0.114645,
		39.382664, 38.672211, 34.487179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139084, 39.278427, 33.993908>,  <38.754459, 38.970402, 34.567429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139084, 39.278427, 33.993908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317848, 38.923351, 34.038216>,  <39.425106, 38.710304, 34.064800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317848, 38.923351, 34.038216>,  <39.139084, 39.278427, 33.993908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317848, 38.923351, 34.038216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108079, -0.176493, -0.978350,
		0.888024, 0.425267, -0.174818,
		0.446914, -0.887693, 0.110768,
		39.451923, 38.657043, 34.071445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570881, 39.302380, 33.474972>,  <39.139084, 39.278427, 33.993908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570881, 39.302380, 33.474972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545971, 38.911888, 33.558010>,  <39.531025, 38.677593, 33.607834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545971, 38.911888, 33.558010>,  <39.570881, 39.302380, 33.474972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545971, 38.911888, 33.558010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098745, -0.213007, -0.972048,
		0.993162, -0.040038, 0.109663,
		-0.062278, -0.976230, 0.207596,
		39.527287, 38.619019, 33.620289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047771, 38.883053, 33.083363>,  <39.570881, 39.302380, 33.474972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047771, 38.883053, 33.083363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748001, 38.637783, 33.183262>,  <39.568138, 38.490620, 33.243202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748001, 38.637783, 33.183262>,  <40.047771, 38.883053, 33.083363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748001, 38.637783, 33.183262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028508, -0.406749, -0.913095,
		0.661475, -0.677176, 0.322308,
		-0.749425, -0.613178, 0.249749,
		39.523174, 38.453831, 33.258186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222706, 38.273251, 32.805817>,  <40.047771, 38.883053, 33.083363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222706, 38.273251, 32.805817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824333, 38.302437, 32.826962>,  <39.585308, 38.319950, 32.839649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824333, 38.302437, 32.826962>,  <40.222706, 38.273251, 32.805817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824333, 38.302437, 32.826962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076657, -0.377776, -0.922718,
		-0.047358, -0.923017, 0.381833,
		-0.995932, 0.072968, 0.052865,
		39.525555, 38.324326, 32.842819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749920, 37.734856, 32.916756>,  <40.222706, 38.273251, 32.805817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749920, 37.734856, 32.916756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117687, 37.890167, 32.891739>,  <41.338348, 37.983356, 32.876728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117687, 37.890167, 32.891739>,  <40.749920, 37.734856, 32.916756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117687, 37.890167, 32.891739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374295, -0.815060, 0.442245,
		0.120742, -0.430015, -0.894711,
		0.919415, 0.388283, -0.062540,
		41.393513, 38.006653, 32.872978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956223, 36.994164, 33.086506>,  <40.749920, 37.734856, 32.916756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956223, 36.994164, 33.086506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179874, 36.662891, 33.101948>,  <41.314064, 36.464127, 33.111214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179874, 36.662891, 33.101948>,  <40.956223, 36.994164, 33.086506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179874, 36.662891, 33.101948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798783, -0.525638, 0.292661,
		-0.222085, -0.194470, -0.955437,
		0.559128, -0.828183, 0.038603,
		41.347614, 36.414436, 33.113529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649353, 36.412716, 32.626186>,  <40.956223, 36.994164, 33.086506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649353, 36.412716, 32.626186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861477, 36.267181, 32.932491>,  <40.988750, 36.179859, 33.116276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861477, 36.267181, 32.932491>,  <40.649353, 36.412716, 32.626186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861477, 36.267181, 32.932491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772260, -0.580011, 0.259233,
		0.349832, -0.728842, -0.588564,
		0.530313, -0.363836, 0.765762,
		41.020573, 36.158031, 33.162220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497540, 35.663322, 32.667088>,  <40.649353, 36.412716, 32.626186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497540, 35.663322, 32.667088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695107, 35.715179, 33.011005>,  <40.813648, 35.746292, 33.217354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695107, 35.715179, 33.011005>,  <40.497540, 35.663322, 32.667088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695107, 35.715179, 33.011005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585221, -0.681769, 0.438984,
		0.643089, -0.719989, -0.260869,
		0.493916, 0.129640, 0.859791,
		40.843281, 35.754070, 33.268944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648571, 35.029137, 32.943901>,  <40.497540, 35.663322, 32.667088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648571, 35.029137, 32.943901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637104, 35.281017, 33.254425>,  <40.630226, 35.432144, 33.440739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637104, 35.281017, 33.254425>,  <40.648571, 35.029137, 32.943901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637104, 35.281017, 33.254425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730464, -0.543347, 0.413759,
		0.682349, -0.555208, 0.475546,
		-0.028664, 0.629698, 0.776312,
		40.628506, 35.469925, 33.487320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795292, 34.610188, 33.574398>,  <40.648571, 35.029137, 32.943901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795292, 34.610188, 33.574398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600090, 34.948986, 33.658730>,  <40.482967, 35.152264, 33.709328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600090, 34.948986, 33.658730>,  <40.795292, 34.610188, 33.574398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600090, 34.948986, 33.658730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616947, -0.505590, 0.603122,
		0.617434, 0.164257, 0.769282,
		-0.488008, 0.846994, 0.210830,
		40.453686, 35.203083, 33.721977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764919, 34.540768, 34.253117>,  <40.795292, 34.610188, 33.574398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764919, 34.540768, 34.253117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491882, 34.830067, 34.211205>,  <40.328060, 35.003647, 34.186058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491882, 34.830067, 34.211205>,  <40.764919, 34.540768, 34.253117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491882, 34.830067, 34.211205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479559, -0.335104, 0.811005,
		0.551444, 0.603836, 0.575580,
		-0.682593, 0.723248, -0.104784,
		40.287106, 35.047043, 34.179768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663513, 34.699429, 34.900284>,  <40.764919, 34.540768, 34.253117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663513, 34.699429, 34.900284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322002, 34.814133, 34.726467>,  <40.117096, 34.882954, 34.622177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322002, 34.814133, 34.726467>,  <40.663513, 34.699429, 34.900284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322002, 34.814133, 34.726467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506484, -0.264221, 0.820769,
		0.120545, 0.920846, 0.370825,
		-0.853781, 0.286757, -0.434543,
		40.065868, 34.900158, 34.596104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306728, 35.134377, 35.410786>,  <40.663513, 34.699429, 34.900284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306728, 35.134377, 35.410786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010288, 35.020267, 35.167675>,  <39.832424, 34.951801, 35.021809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010288, 35.020267, 35.167675>,  <40.306728, 35.134377, 35.410786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010288, 35.020267, 35.167675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625176, -0.036855, 0.779613,
		-0.244800, 0.957738, -0.151031,
		-0.741099, -0.285271, -0.607777,
		39.787960, 34.934685, 34.985344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857552, 35.625832, 35.454475>,  <40.306728, 35.134377, 35.410786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857552, 35.625832, 35.454475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639175, 35.329937, 35.297127>,  <39.508148, 35.152401, 35.202717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639175, 35.329937, 35.297127>,  <39.857552, 35.625832, 35.454475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639175, 35.329937, 35.297127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708752, 0.157393, 0.687676,
		-0.446784, 0.654232, -0.610216,
		-0.545943, -0.739735, -0.393368,
		39.475391, 35.108017, 35.179115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204655, 35.877956, 35.461166>,  <39.857552, 35.625832, 35.454475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204655, 35.877956, 35.461166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136944, 35.486286, 35.416355>,  <39.096317, 35.251282, 35.389469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136944, 35.486286, 35.416355>,  <39.204655, 35.877956, 35.461166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136944, 35.486286, 35.416355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667168, 0.030185, 0.744295,
		-0.725417, 0.200736, -0.658388,
		-0.169280, -0.979180, -0.112028,
		39.086159, 35.192532, 35.382748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440609, 35.753647, 35.355530>,  <39.204655, 35.877956, 35.461166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440609, 35.753647, 35.355530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582623, 35.406143, 35.493633>,  <38.667831, 35.197639, 35.576496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582623, 35.406143, 35.493633>,  <38.440609, 35.753647, 35.355530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582623, 35.406143, 35.493633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576243, 0.087440, 0.812587,
		-0.736134, -0.487451, -0.469573,
		0.355037, -0.868761, 0.345258,
		38.689133, 35.145515, 35.597210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888718, 35.441746, 35.682224>,  <38.440609, 35.753647, 35.355530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888718, 35.441746, 35.682224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203568, 35.243999, 35.829762>,  <38.392475, 35.125351, 35.918282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203568, 35.243999, 35.829762>,  <37.888718, 35.441746, 35.682224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203568, 35.243999, 35.829762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379707, 0.082873, 0.921387,
		-0.486071, -0.865293, -0.122484,
		0.787119, -0.494368, 0.368840,
		38.439705, 35.095688, 35.940414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609818, 34.962635, 36.046654>,  <37.888718, 35.441746, 35.682224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609818, 34.962635, 36.046654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974018, 35.041283, 36.192162>,  <38.192539, 35.088470, 36.279465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974018, 35.041283, 36.192162>,  <37.609818, 34.962635, 36.046654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974018, 35.041283, 36.192162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400114, 0.196877, 0.895069,
		0.104372, -0.960510, 0.257928,
		0.910503, 0.196620, 0.363765,
		38.247169, 35.100269, 36.301292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667191, 34.495201, 36.558369>,  <37.609818, 34.962635, 36.046654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667191, 34.495201, 36.558369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902958, 34.809563, 36.633148>,  <38.044418, 34.998180, 36.678017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902958, 34.809563, 36.633148>,  <37.667191, 34.495201, 36.558369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902958, 34.809563, 36.633148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288029, -0.011765, 0.957549,
		0.754738, -0.618242, 0.219427,
		0.589415, 0.785900, 0.186951,
		38.079781, 35.045334, 36.689232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921726, 34.239674, 36.702179>,  <37.667191, 34.495201, 36.558369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921726, 34.239674, 36.702179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547626, 34.183533, 36.832169>,  <36.323166, 34.149849, 36.910164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547626, 34.183533, 36.832169>,  <36.921726, 34.239674, 36.702179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547626, 34.183533, 36.832169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353875, 0.393766, -0.848364,
		-0.008893, -0.908433, -0.417937,
		-0.935251, -0.140352, 0.324973,
		36.267052, 34.141426, 36.929661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611950, 34.078842, 36.061367>,  <36.921726, 34.239674, 36.702179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611950, 34.078842, 36.061367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313190, 34.157242, 36.315525>,  <36.133934, 34.204281, 36.468021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313190, 34.157242, 36.315525>,  <36.611950, 34.078842, 36.061367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313190, 34.157242, 36.315525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531420, 0.398409, -0.747571,
		-0.399671, -0.896022, -0.193413,
		-0.746898, 0.195999, 0.635396,
		36.089123, 34.216042, 36.506145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965679, 33.819229, 35.697697>,  <36.611950, 34.078842, 36.061367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965679, 33.819229, 35.697697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839893, 34.097958, 35.955551>,  <35.764423, 34.265194, 36.110264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839893, 34.097958, 35.955551>,  <35.965679, 33.819229, 35.697697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839893, 34.097958, 35.955551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578493, 0.397743, -0.712142,
		-0.752634, -0.596860, 0.278030,
		-0.314465, 0.696821, 0.644634,
		35.745552, 34.307003, 36.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241226, 33.754486, 35.725937>,  <35.965679, 33.819229, 35.697697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241226, 33.754486, 35.725937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321007, 34.125961, 35.851006>,  <35.368877, 34.348846, 35.926048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321007, 34.125961, 35.851006>,  <35.241226, 33.754486, 35.725937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321007, 34.125961, 35.851006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650671, 0.364103, -0.666375,
		-0.732697, -0.070537, 0.676890,
		0.199454, 0.928684, 0.312673,
		35.380844, 34.404568, 35.944809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605244, 34.101337, 35.797684>,  <35.241226, 33.754486, 35.725937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605244, 34.101337, 35.797684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876240, 34.392223, 35.753571>,  <35.038837, 34.566753, 35.727104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876240, 34.392223, 35.753571>,  <34.605244, 34.101337, 35.797684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876240, 34.392223, 35.753571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606877, 0.467955, -0.642432,
		-0.415578, 0.502171, 0.758366,
		0.677492, 0.727215, -0.110284,
		35.079487, 34.610390, 35.720486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196739, 34.662476, 35.646484>,  <34.605244, 34.101337, 35.797684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196739, 34.662476, 35.646484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560272, 34.769230, 35.518238>,  <34.778393, 34.833282, 35.441292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560272, 34.769230, 35.518238>,  <34.196739, 34.662476, 35.646484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560272, 34.769230, 35.518238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415162, 0.503553, -0.757677,
		-0.040763, 0.821711, 0.568445,
		0.908834, 0.266882, -0.320616,
		34.832924, 34.849293, 35.422054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124096, 35.317844, 35.495007>,  <34.196739, 34.662476, 35.646484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124096, 35.317844, 35.495007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453106, 35.223537, 35.287987>,  <34.650513, 35.166954, 35.163773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453106, 35.223537, 35.287987>,  <34.124096, 35.317844, 35.495007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453106, 35.223537, 35.287987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399936, 0.407223, -0.821110,
		0.404352, 0.882373, 0.240659,
		0.822527, -0.235769, -0.517554,
		34.699863, 35.152805, 35.132721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325222, 35.890049, 35.102089>,  <34.124096, 35.317844, 35.495007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325222, 35.890049, 35.102089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522697, 35.597473, 34.913933>,  <34.641182, 35.421928, 34.801041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522697, 35.597473, 34.913933>,  <34.325222, 35.890049, 35.102089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522697, 35.597473, 34.913933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206079, 0.427093, -0.880411,
		0.844869, 0.531585, 0.060116,
		0.493688, -0.731443, -0.470386,
		34.670803, 35.378040, 34.772816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755711, 36.267891, 34.647724>,  <34.325222, 35.890049, 35.102089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755711, 36.267891, 34.647724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694546, 35.894222, 34.518768>,  <34.657845, 35.670021, 34.441395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694546, 35.894222, 34.518768>,  <34.755711, 36.267891, 34.647724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694546, 35.894222, 34.518768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241595, 0.351665, -0.904414,
		0.958253, -0.060410, -0.279467,
		-0.152915, -0.934175, -0.322390,
		34.648670, 35.613972, 34.422050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790260, 36.347618, 33.945896>,  <34.755711, 36.267891, 34.647724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790260, 36.347618, 33.945896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608040, 35.994247, 33.989758>,  <34.498707, 35.782227, 34.016075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608040, 35.994247, 33.989758>,  <34.790260, 36.347618, 33.945896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608040, 35.994247, 33.989758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419988, 0.104678, -0.901472,
		0.784907, -0.456725, -0.418716,
		-0.455555, -0.883428, 0.109656,
		34.471375, 35.729218, 34.022655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780403, 36.299706, 33.267586>,  <34.790260, 36.347618, 33.945896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780403, 36.299706, 33.267586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530991, 36.020496, 33.408424>,  <34.381344, 35.852970, 33.492928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530991, 36.020496, 33.408424>,  <34.780403, 36.299706, 33.267586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530991, 36.020496, 33.408424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546818, 0.067507, -0.834525,
		0.558747, -0.712888, -0.423783,
		-0.623532, -0.698021, 0.352101,
		34.343929, 35.811089, 33.514053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777020, 35.686573, 32.825890>,  <34.780403, 36.299706, 33.267586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777020, 35.686573, 32.825890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426258, 35.682762, 33.018120>,  <34.215801, 35.680477, 33.133457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426258, 35.682762, 33.018120>,  <34.777020, 35.686573, 32.825890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426258, 35.682762, 33.018120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474428, -0.143454, -0.868527,
		0.077216, -0.989611, 0.121274,
		-0.876901, -0.009529, 0.480576,
		34.163189, 35.679905, 33.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.795963, 31.793909, 39.868034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548477, 32.090816, 39.970970>,  <36.399986, 32.268963, 40.032734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548477, 32.090816, 39.970970>,  <36.795963, 31.793909, 39.868034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548477, 32.090816, 39.970970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161590, 0.200324, -0.966312,
		-0.768817, -0.639457, -0.004001,
		-0.618716, 0.742270, 0.257342,
		36.362862, 32.313499, 40.048172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172615, 31.697659, 39.439861>,  <36.795963, 31.793909, 39.868034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172615, 31.697659, 39.439861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188457, 32.080101, 39.555992>,  <36.197964, 32.309566, 39.625671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188457, 32.080101, 39.555992>,  <36.172615, 31.697659, 39.439861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188457, 32.080101, 39.555992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095431, 0.292850, -0.951384,
		-0.994648, 0.009970, 0.102840,
		0.039602, 0.956106, 0.290331,
		36.200336, 32.366932, 39.643093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614086, 31.984751, 39.062843>,  <36.172615, 31.697659, 39.439861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614086, 31.984751, 39.062843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816277, 32.306801, 39.186951>,  <35.937592, 32.500031, 39.261414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816277, 32.306801, 39.186951>,  <35.614086, 31.984751, 39.062843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816277, 32.306801, 39.186951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048461, 0.385513, -0.921429,
		-0.861480, 0.450723, 0.233884,
		0.505474, 0.805126, 0.310269,
		35.967918, 32.548340, 39.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290043, 32.434261, 38.724792>,  <35.614086, 31.984751, 39.062843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290043, 32.434261, 38.724792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634247, 32.606487, 38.833706>,  <35.840771, 32.709824, 38.899055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634247, 32.606487, 38.833706>,  <35.290043, 32.434261, 38.724792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634247, 32.606487, 38.833706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005941, 0.542933, -0.839755,
		-0.509399, 0.721000, 0.469758,
		0.860510, 0.430561, 0.272286,
		35.892399, 32.735657, 38.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186501, 33.139763, 38.531750>,  <35.290043, 32.434261, 38.724792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186501, 33.139763, 38.531750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581200, 33.099209, 38.582413>,  <35.818020, 33.074875, 38.612812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581200, 33.099209, 38.582413>,  <35.186501, 33.139763, 38.531750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581200, 33.099209, 38.582413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162187, 0.636069, -0.754395,
		-0.004079, 0.764942, 0.644086,
		0.986751, -0.101385, 0.126659,
		35.877224, 33.068794, 38.620411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546471, 33.864544, 38.738750>,  <35.186501, 33.139763, 38.531750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546471, 33.864544, 38.738750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811497, 33.630646, 38.551525>,  <35.970512, 33.490307, 38.439190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811497, 33.630646, 38.551525>,  <35.546471, 33.864544, 38.738750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811497, 33.630646, 38.551525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058333, 0.663301, -0.746076,
		0.746731, 0.467018, 0.473588,
		0.662563, -0.584744, -0.468065,
		36.010265, 33.455223, 38.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102036, 34.303936, 38.542763>,  <35.546471, 33.864544, 38.738750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102036, 34.303936, 38.542763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115360, 33.973324, 38.318001>,  <36.123356, 33.774956, 38.183144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115360, 33.973324, 38.318001>,  <36.102036, 34.303936, 38.542763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115360, 33.973324, 38.318001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104578, 0.562012, -0.820491,
		0.993959, -0.031430, 0.105160,
		0.033313, -0.826532, -0.561903,
		36.125355, 33.725365, 38.149429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686447, 34.481060, 38.054176>,  <36.102036, 34.303936, 38.542763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686447, 34.481060, 38.054176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463314, 34.183968, 37.906029>,  <36.329433, 34.005711, 37.817139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463314, 34.183968, 37.906029>,  <36.686447, 34.481060, 38.054176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463314, 34.183968, 37.906029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177797, 0.542835, -0.820803,
		0.810687, -0.392018, -0.434866,
		-0.557831, -0.742732, -0.370370,
		36.295963, 33.961147, 37.794918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954525, 34.413654, 37.419224>,  <36.686447, 34.481060, 38.054176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954525, 34.413654, 37.419224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603645, 34.221607, 37.420830>,  <36.393120, 34.106380, 37.421791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603645, 34.221607, 37.420830>,  <36.954525, 34.413654, 37.419224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603645, 34.221607, 37.420830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281841, 0.508137, -0.813857,
		0.388705, -0.715044, -0.581052,
		-0.877197, -0.480115, 0.004013,
		36.340488, 34.077572, 37.422035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681480, 34.417343, 37.262550>,  <36.954525, 34.413654, 37.419224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681480, 34.417343, 37.262550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863064, 34.772404, 37.231560>,  <37.972015, 34.985439, 37.212963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863064, 34.772404, 37.231560>,  <37.681480, 34.417343, 37.262550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863064, 34.772404, 37.231560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085213, 0.129806, 0.987871,
		0.886938, -0.441851, 0.134566,
		0.453960, 0.887647, -0.077478,
		37.999252, 35.038696, 37.208317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093914, 34.453758, 37.802235>,  <37.681480, 34.417343, 37.262550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093914, 34.453758, 37.802235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044113, 34.834946, 37.691708>,  <38.014233, 35.063660, 37.625389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044113, 34.834946, 37.691708>,  <38.093914, 34.453758, 37.802235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044113, 34.834946, 37.691708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124720, 0.261248, 0.957180,
		0.984350, 0.153631, 0.086329,
		-0.124499, 0.952967, -0.276320,
		38.006763, 35.120834, 37.608810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590630, 34.828690, 38.210133>,  <38.093914, 34.453758, 37.802235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590630, 34.828690, 38.210133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315613, 35.098255, 38.101967>,  <38.150604, 35.259995, 38.037067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315613, 35.098255, 38.101967>,  <38.590630, 34.828690, 38.210133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315613, 35.098255, 38.101967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041104, 0.335678, 0.941079,
		0.724981, 0.658146, -0.203092,
		-0.687541, 0.673917, -0.270413,
		38.109352, 35.300430, 38.020844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869701, 35.493076, 38.371738>,  <38.590630, 34.828690, 38.210133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869701, 35.493076, 38.371738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471310, 35.523651, 38.353035>,  <38.232273, 35.541996, 38.341812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471310, 35.523651, 38.353035>,  <38.869701, 35.493076, 38.371738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471310, 35.523651, 38.353035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013441, 0.388451, 0.921371,
		0.088586, 0.918294, -0.385861,
		-0.995978, 0.076434, -0.046754,
		38.172516, 35.546581, 38.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747616, 36.069607, 38.687691>,  <38.869701, 35.493076, 38.371738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747616, 36.069607, 38.687691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405075, 35.865643, 38.720337>,  <38.199551, 35.743263, 38.739925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405075, 35.865643, 38.720337>,  <38.747616, 36.069607, 38.687691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405075, 35.865643, 38.720337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157937, 0.409084, 0.898725,
		-0.491654, 0.756732, -0.430852,
		-0.856348, -0.509909, 0.081612,
		38.148170, 35.712669, 38.744820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400269, 36.468288, 39.076080>,  <38.747616, 36.069607, 38.687691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400269, 36.468288, 39.076080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167355, 36.143242, 39.085857>,  <38.027607, 35.948215, 39.091724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167355, 36.143242, 39.085857>,  <38.400269, 36.468288, 39.076080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167355, 36.143242, 39.085857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288915, 0.234941, 0.928079,
		-0.759915, 0.533345, -0.371580,
		-0.582286, -0.812616, 0.024444,
		37.992668, 35.899456, 39.093189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866352, 36.667225, 39.319923>,  <38.400269, 36.468288, 39.076080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866352, 36.667225, 39.319923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817886, 36.275074, 39.382126>,  <37.788807, 36.039783, 39.419449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817886, 36.275074, 39.382126>,  <37.866352, 36.667225, 39.319923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817886, 36.275074, 39.382126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189777, 0.176650, 0.965805,
		-0.974322, 0.087511, -0.207457,
		-0.121166, -0.980376, 0.155507,
		37.781536, 35.980961, 39.428780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301647, 36.577515, 39.843227>,  <37.866352, 36.667225, 39.319923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301647, 36.577515, 39.843227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504646, 36.232857, 39.841446>,  <37.626446, 36.026062, 39.840378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504646, 36.232857, 39.841446>,  <37.301647, 36.577515, 39.843227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504646, 36.232857, 39.841446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045282, -0.031837, 0.998467,
		-0.860463, -0.506516, -0.055174,
		0.507496, -0.861642, -0.004458,
		37.656895, 35.974365, 39.840107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945267, 36.132175, 40.222427>,  <37.301647, 36.577515, 39.843227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945267, 36.132175, 40.222427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302559, 35.952347, 40.224152>,  <37.516933, 35.844448, 40.225185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302559, 35.952347, 40.224152>,  <36.945267, 36.132175, 40.222427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302559, 35.952347, 40.224152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051956, -0.093692, 0.994245,
		-0.446580, -0.888317, -0.107047,
		0.893234, -0.449571, 0.004313,
		37.570530, 35.817474, 40.225445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899933, 35.587841, 40.749218>,  <36.945267, 36.132175, 40.222427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899933, 35.587841, 40.749218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293766, 35.644115, 40.707657>,  <37.530067, 35.677879, 40.682720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293766, 35.644115, 40.707657>,  <36.899933, 35.587841, 40.749218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293766, 35.644115, 40.707657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118064, -0.096323, 0.988323,
		0.129032, -0.985358, -0.111448,
		0.984587, 0.140684, -0.103906,
		37.589142, 35.686321, 40.676483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208813, 35.051640, 41.044914>,  <36.899933, 35.587841, 40.749218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208813, 35.051640, 41.044914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479504, 35.346130, 41.043854>,  <37.641918, 35.522823, 41.043217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479504, 35.346130, 41.043854>,  <37.208813, 35.051640, 41.044914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479504, 35.346130, 41.043854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248707, -0.225213, 0.942032,
		0.692950, -0.638162, -0.335513,
		0.676731, 0.736226, -0.002654,
		37.682522, 35.566998, 41.043056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619808, 34.959438, 41.585423>,  <37.208813, 35.051640, 41.044914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619808, 34.959438, 41.585423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794201, 35.312099, 41.513199>,  <37.898838, 35.523697, 41.469864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794201, 35.312099, 41.513199>,  <37.619808, 34.959438, 41.585423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794201, 35.312099, 41.513199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463253, -0.047847, 0.884934,
		0.771569, -0.469459, -0.429290,
		0.435980, 0.881657, -0.180561,
		37.924995, 35.576595, 41.459030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364300, 34.863579, 41.679024>,  <37.619808, 34.959438, 41.585423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364300, 34.863579, 41.679024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294140, 35.256290, 41.708267>,  <38.252045, 35.491917, 41.725815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294140, 35.256290, 41.708267>,  <38.364300, 34.863579, 41.679024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294140, 35.256290, 41.708267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568380, 0.040347, 0.821777,
		0.803853, 0.185692, -0.565100,
		-0.175398, 0.981779, 0.073111,
		38.241520, 35.550823, 41.730202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076073, 35.161301, 41.814972>,  <38.364300, 34.863579, 41.679024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076073, 35.161301, 41.814972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782948, 35.394669, 41.955040>,  <38.607075, 35.534687, 42.039082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782948, 35.394669, 41.955040>,  <39.076073, 35.161301, 41.814972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782948, 35.394669, 41.955040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411776, -0.029450, 0.910809,
		0.541692, 0.811640, -0.218656,
		-0.732810, 0.583415, 0.350167,
		38.563103, 35.569695, 42.060089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.987019, 37.455330, 43.169960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.061928, 37.081619, 43.048592>,  <34.106873, 36.857395, 42.975769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.061928, 37.081619, 43.048592>,  <33.987019, 37.455330, 43.169960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061928, 37.081619, 43.048592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249033, 0.343949, -0.905363,
		0.950217, 0.093987, 0.297077,
		0.187271, -0.934273, -0.303421,
		34.118111, 36.801338, 42.957565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438606, 37.699219, 42.757416>,  <33.987019, 37.455330, 43.169960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438606, 37.699219, 42.757416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359081, 37.315903, 42.675289>,  <34.311367, 37.085915, 42.626011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359081, 37.315903, 42.675289>,  <34.438606, 37.699219, 42.757416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359081, 37.315903, 42.675289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437192, 0.100781, -0.893704,
		0.877119, -0.267443, 0.398920,
		-0.198811, -0.958289, -0.205321,
		34.299438, 37.028416, 42.613693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029331, 37.457329, 42.486046>,  <34.438606, 37.699219, 42.757416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029331, 37.457329, 42.486046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729046, 37.222019, 42.365799>,  <34.548874, 37.080833, 42.293652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729046, 37.222019, 42.365799>,  <35.029331, 37.457329, 42.486046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729046, 37.222019, 42.365799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265922, 0.147466, -0.952649,
		0.604748, -0.795103, 0.045730,
		-0.750710, -0.588273, -0.300615,
		34.503834, 37.045536, 42.275616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342815, 37.038074, 41.882938>,  <35.029331, 37.457329, 42.486046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342815, 37.038074, 41.882938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945450, 37.022652, 41.839775>,  <34.707031, 37.013397, 41.813877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945450, 37.022652, 41.839775>,  <35.342815, 37.038074, 41.882938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945450, 37.022652, 41.839775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094509, 0.256780, -0.961838,
		0.064791, -0.965701, -0.251445,
		-0.993414, -0.038555, -0.107905,
		34.647427, 37.011086, 41.807404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245670, 36.664513, 41.286236>,  <35.342815, 37.038074, 41.882938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245670, 36.664513, 41.286236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.896271, 36.857410, 41.312878>,  <34.686630, 36.973148, 41.328861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.896271, 36.857410, 41.312878>,  <35.245670, 36.664513, 41.286236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896271, 36.857410, 41.312878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029711, 0.189366, -0.981457,
		-0.485915, -0.855325, -0.179739,
		-0.873501, 0.482244, 0.066603,
		34.634220, 37.002083, 41.332859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726147, 36.350418, 40.795830>,  <35.245670, 36.664513, 41.286236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726147, 36.350418, 40.795830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577396, 36.713886, 40.871754>,  <34.488148, 36.931969, 40.917309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577396, 36.713886, 40.871754>,  <34.726147, 36.350418, 40.795830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577396, 36.713886, 40.871754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122326, 0.154725, -0.980355,
		-0.920187, -0.387790, 0.053615,
		-0.371876, 0.908669, 0.189813,
		34.465832, 36.986488, 40.928699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073147, 36.361313, 40.440525>,  <34.726147, 36.350418, 40.795830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073147, 36.361313, 40.440525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187565, 36.741085, 40.492298>,  <34.256214, 36.968948, 40.523361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187565, 36.741085, 40.492298>,  <34.073147, 36.361313, 40.440525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187565, 36.741085, 40.492298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149614, 0.177676, -0.972649,
		-0.946465, 0.258852, 0.192871,
		0.286041, 0.949435, 0.129436,
		34.273376, 37.025917, 40.531128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789143, 36.673550, 39.926048>,  <34.073147, 36.361313, 40.440525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789143, 36.673550, 39.926048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968334, 37.010456, 40.045986>,  <34.075851, 37.212601, 40.117947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968334, 37.010456, 40.045986>,  <33.789143, 36.673550, 39.926048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968334, 37.010456, 40.045986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002098, 0.336366, -0.941729,
		-0.894040, 0.421248, 0.152453,
		0.447982, 0.842264, 0.299841,
		34.102730, 37.263134, 40.135937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325512, 37.307373, 39.834507>,  <33.789143, 36.673550, 39.926048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325512, 37.307373, 39.834507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714870, 37.390491, 39.795876>,  <33.948486, 37.440361, 39.772697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714870, 37.390491, 39.795876>,  <33.325512, 37.307373, 39.834507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714870, 37.390491, 39.795876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139552, 0.203296, -0.969121,
		-0.181743, 0.956814, 0.226885,
		0.973393, 0.207794, -0.096577,
		34.006889, 37.452831, 39.766903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304249, 37.821941, 39.426502>,  <33.325512, 37.307373, 39.834507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304249, 37.821941, 39.426502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692020, 37.729649, 39.393082>,  <33.924683, 37.674274, 39.373032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692020, 37.729649, 39.393082>,  <33.304249, 37.821941, 39.426502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692020, 37.729649, 39.393082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004255, 0.356228, -0.934389,
		0.245353, 0.905465, 0.346318,
		0.969425, -0.230728, -0.083549,
		33.982849, 37.660431, 39.368015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635155, 38.395451, 39.153805>,  <33.304249, 37.821941, 39.426502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635155, 38.395451, 39.153805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914783, 38.112442, 39.112389>,  <34.082561, 37.942638, 39.087540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914783, 38.112442, 39.112389>,  <33.635155, 38.395451, 39.153805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914783, 38.112442, 39.112389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244570, 0.372651, -0.895163,
		0.671928, 0.600458, 0.433547,
		0.699069, -0.707518, -0.103541,
		34.124504, 37.900188, 39.081326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213112, 38.753807, 38.808434>,  <33.635155, 38.395451, 39.153805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213112, 38.753807, 38.808434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.262264, 38.368595, 38.712532>,  <34.291756, 38.137470, 38.654991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.262264, 38.368595, 38.712532>,  <34.213112, 38.753807, 38.808434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262264, 38.368595, 38.712532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367736, 0.268568, -0.890304,
		0.921776, 0.021235, 0.387141,
		0.122880, -0.963027, -0.239751,
		34.299129, 38.079689, 38.640606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899239, 38.625309, 38.664970>,  <34.213112, 38.753807, 38.808434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899239, 38.625309, 38.664970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.670879, 38.355003, 38.478455>,  <34.533863, 38.192822, 38.366547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.670879, 38.355003, 38.478455>,  <34.899239, 38.625309, 38.664970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670879, 38.355003, 38.478455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185078, 0.447396, -0.874976,
		0.799891, -0.585819, -0.130348,
		-0.570895, -0.675760, -0.466291,
		34.499611, 38.152275, 38.338566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181767, 38.512768, 38.037075>,  <34.899239, 38.625309, 38.664970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181767, 38.512768, 38.037075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.816364, 38.361095, 37.978115>,  <34.597122, 38.270092, 37.942741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.816364, 38.361095, 37.978115>,  <35.181767, 38.512768, 38.037075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816364, 38.361095, 37.978115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114597, 0.107802, -0.987546,
		0.390351, -0.919020, -0.055025,
		-0.913506, -0.379184, -0.147398,
		34.542313, 38.247341, 37.933895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803314, 38.016552, 37.962559>,  <35.181767, 38.512768, 38.037075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803314, 38.016552, 37.962559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102654, 38.275085, 37.902920>,  <36.282257, 38.430206, 37.867134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102654, 38.275085, 37.902920>,  <35.803314, 38.016552, 37.962559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102654, 38.275085, 37.902920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204041, -0.010426, 0.978907,
		0.631145, -0.762985, -0.139681,
		0.748347, 0.646332, -0.149100,
		36.327156, 38.468987, 37.858189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371696, 37.670391, 38.340942>,  <35.803314, 38.016552, 37.962559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371696, 37.670391, 38.340942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457935, 38.058235, 38.294670>,  <36.509678, 38.290939, 38.266907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457935, 38.058235, 38.294670>,  <36.371696, 37.670391, 38.340942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457935, 38.058235, 38.294670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276504, 0.052999, 0.959550,
		0.936516, -0.238863, -0.256673,
		0.215598, 0.969606, -0.115681,
		36.522614, 38.349117, 38.259964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084240, 37.756329, 38.524319>,  <36.371696, 37.670391, 38.340942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084240, 37.756329, 38.524319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885288, 38.097916, 38.585442>,  <36.765919, 38.302868, 38.622116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885288, 38.097916, 38.585442>,  <37.084240, 37.756329, 38.524319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885288, 38.097916, 38.585442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267629, -0.016509, 0.963381,
		0.825222, 0.520058, -0.220336,
		-0.497376, 0.853971, 0.152806,
		36.736076, 38.354107, 38.631283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477600, 38.107750, 38.874577>,  <37.084240, 37.756329, 38.524319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477600, 38.107750, 38.874577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.130753, 38.301483, 38.921089>,  <36.922646, 38.417725, 38.948997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.130753, 38.301483, 38.921089>,  <37.477600, 38.107750, 38.874577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130753, 38.301483, 38.921089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206463, 0.137044, 0.968810,
		0.453294, 0.864082, -0.218831,
		-0.867120, 0.484336, 0.116279,
		36.870617, 38.446785, 38.955975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569626, 38.929939, 39.064384>,  <37.477600, 38.107750, 38.874577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569626, 38.929939, 39.064384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224815, 38.776531, 39.196941>,  <37.017929, 38.684486, 39.276474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224815, 38.776531, 39.196941>,  <37.569626, 38.929939, 39.064384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224815, 38.776531, 39.196941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194524, 0.353420, 0.915016,
		-0.468049, 0.853233, -0.230053,
		-0.862027, -0.383521, 0.331392,
		36.966206, 38.661476, 39.296360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359074, 39.340096, 39.626976>,  <37.569626, 38.929939, 39.064384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359074, 39.340096, 39.626976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074200, 39.067078, 39.692600>,  <36.903275, 38.903267, 39.731976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074200, 39.067078, 39.692600>,  <37.359074, 39.340096, 39.626976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074200, 39.067078, 39.692600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060366, 0.292388, 0.954393,
		-0.699388, 0.669804, -0.249438,
		-0.712188, -0.682548, 0.164059,
		36.860542, 38.862312, 39.741817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860363, 39.646801, 40.128471>,  <37.359074, 39.340096, 39.626976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860363, 39.646801, 40.128471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779213, 39.256786, 40.164581>,  <36.730522, 39.022778, 40.186245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779213, 39.256786, 40.164581>,  <36.860363, 39.646801, 40.128471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779213, 39.256786, 40.164581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001452, 0.091888, 0.995768,
		-0.979203, 0.202149, -0.017226,
		-0.202876, -0.975035, 0.090271,
		36.718349, 38.964275, 40.191662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272335, 39.454327, 40.622952>,  <36.860363, 39.646801, 40.128471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272335, 39.454327, 40.622952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504456, 39.128696, 40.613731>,  <36.643726, 38.933319, 40.608200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504456, 39.128696, 40.613731>,  <36.272335, 39.454327, 40.622952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504456, 39.128696, 40.613731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087671, 0.034304, 0.995559,
		-0.809669, -0.579745, 0.091278,
		0.580302, -0.814075, -0.023052,
		36.678547, 38.884476, 40.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010780, 39.074753, 41.278004>,  <36.272335, 39.454327, 40.622952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010780, 39.074753, 41.278004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359386, 38.925407, 41.150845>,  <36.568550, 38.835800, 41.074551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.359386, 38.925407, 41.150845>,  <36.010780, 39.074753, 41.278004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359386, 38.925407, 41.150845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256196, -0.206080, 0.944402,
		-0.418116, -0.904506, -0.083948,
		0.871517, -0.373362, -0.317896,
		36.620842, 38.813400, 41.055477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139271, 38.341419, 41.500313>,  <36.010780, 39.074753, 41.278004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139271, 38.341419, 41.500313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.513798, 38.474594, 41.455662>,  <36.738514, 38.554501, 41.428871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.513798, 38.474594, 41.455662>,  <36.139271, 38.341419, 41.500313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513798, 38.474594, 41.455662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189153, -0.210374, 0.959148,
		0.295856, -0.919181, -0.259953,
		0.936318, 0.332940, -0.111625,
		36.794693, 38.574474, 41.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618298, 37.736828, 41.570866>,  <36.139271, 38.341419, 41.500313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618298, 37.736828, 41.570866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844158, 38.065441, 41.602482>,  <36.979675, 38.262611, 41.621452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844158, 38.065441, 41.602482>,  <36.618298, 37.736828, 41.570866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844158, 38.065441, 41.602482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380333, -0.343998, 0.858494,
		0.732473, -0.454689, -0.506696,
		0.564650, 0.821537, 0.079037,
		37.013554, 38.311901, 41.626194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367893, 37.559334, 41.695042>,  <36.618298, 37.736828, 41.570866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367893, 37.559334, 41.695042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296066, 37.923065, 41.845177>,  <37.252972, 38.141304, 41.935257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296066, 37.923065, 41.845177>,  <37.367893, 37.559334, 41.695042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296066, 37.923065, 41.845177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236995, -0.330320, 0.913631,
		0.954772, 0.253009, -0.156192,
		-0.179563, 0.909327, 0.375342,
		37.242199, 38.195862, 41.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474125, 37.365475, 42.288502>,  <37.367893, 37.559334, 41.695042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474125, 37.365475, 42.288502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422489, 37.757080, 42.351582>,  <37.391506, 37.992043, 42.389431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422489, 37.757080, 42.351582>,  <37.474125, 37.365475, 42.288502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422489, 37.757080, 42.351582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008099, -0.160066, 0.987073,
		0.991600, 0.126143, 0.028591,
		-0.129089, 0.979013, 0.157700,
		37.383762, 38.050785, 42.398891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953243, 37.575302, 42.722946>,  <37.474125, 37.365475, 42.288502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953243, 37.575302, 42.722946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667625, 37.848862, 42.782845>,  <37.496254, 38.012997, 42.818783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667625, 37.848862, 42.782845>,  <37.953243, 37.575302, 42.722946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667625, 37.848862, 42.782845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117384, -0.093911, 0.988636,
		0.690192, 0.723506, -0.013223,
		-0.714042, 0.683901, 0.149744,
		37.453411, 38.054031, 42.827766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647049, 37.954182, 42.786140>,  <37.953243, 37.575302, 42.722946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647049, 37.954182, 42.786140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985493, 38.089741, 42.950703>,  <39.188557, 38.171074, 43.049438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985493, 38.089741, 42.950703>,  <38.647049, 37.954182, 42.786140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985493, 38.089741, 42.950703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256639, 0.417469, -0.871697,
		-0.467161, 0.843132, 0.266250,
		0.846107, 0.338893, 0.411406,
		39.239326, 38.191410, 43.074123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757130, 38.670368, 42.472076>,  <38.647049, 37.954182, 42.786140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757130, 38.670368, 42.472076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118782, 38.560303, 42.602821>,  <39.335773, 38.494263, 42.681267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118782, 38.560303, 42.602821>,  <38.757130, 38.670368, 42.472076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118782, 38.560303, 42.602821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423237, 0.471999, -0.773362,
		0.058525, 0.837556, 0.543207,
		0.904127, -0.275167, 0.326861,
		39.390018, 38.477753, 42.700878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093616, 39.202389, 42.233383>,  <38.757130, 38.670368, 42.472076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093616, 39.202389, 42.233383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.355595, 38.913029, 42.320789>,  <39.512779, 38.739414, 42.373234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.355595, 38.913029, 42.320789>,  <39.093616, 39.202389, 42.233383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355595, 38.913029, 42.320789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533886, 0.238305, -0.811281,
		0.534805, 0.648003, 0.542287,
		0.654942, -0.723397, 0.218513,
		39.552078, 38.696011, 42.386345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752941, 39.541557, 42.113884>,  <39.093616, 39.202389, 42.233383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752941, 39.541557, 42.113884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.816631, 39.147095, 42.095345>,  <39.854847, 38.910419, 42.084221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.816631, 39.147095, 42.095345>,  <39.752941, 39.541557, 42.113884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816631, 39.147095, 42.095345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512400, 0.122679, -0.849939,
		0.843856, 0.111586, 0.524839,
		0.159228, -0.986153, -0.046347,
		39.864399, 38.851250, 42.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378059, 39.466125, 41.839207>,  <39.752941, 39.541557, 42.113884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378059, 39.466125, 41.839207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.242130, 39.100704, 41.749821>,  <40.160572, 38.881451, 41.696190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.242130, 39.100704, 41.749821>,  <40.378059, 39.466125, 41.839207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242130, 39.100704, 41.749821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397055, 0.076029, -0.914640,
		0.852565, -0.399544, 0.336895,
		-0.339825, -0.913556, -0.223461,
		40.140182, 38.826637, 41.682781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923744, 39.132874, 41.450893>,  <40.378059, 39.466125, 41.839207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923744, 39.132874, 41.450893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598846, 38.913570, 41.371220>,  <40.403908, 38.781990, 41.323414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.598846, 38.913570, 41.371220>,  <40.923744, 39.132874, 41.450893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598846, 38.913570, 41.371220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336951, -0.162251, -0.927436,
		0.476157, -0.820418, 0.316524,
		-0.812242, -0.548259, -0.199183,
		40.355175, 38.749092, 41.311466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139275, 38.555054, 41.003296>,  <40.923744, 39.132874, 41.450893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139275, 38.555054, 41.003296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.745388, 38.556362, 40.933632>,  <40.509056, 38.557148, 40.891834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.745388, 38.556362, 40.933632>,  <41.139275, 38.555054, 41.003296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745388, 38.556362, 40.933632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173997, -0.028425, -0.984336,
		-0.008177, -0.999591, 0.027421,
		-0.984712, 0.003278, -0.174158,
		40.449974, 38.557343, 40.881386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903942, 37.926315, 40.661148>,  <41.139275, 38.555054, 41.003296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903942, 37.926315, 40.661148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.673290, 38.239719, 40.568523>,  <40.534901, 38.427761, 40.512947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.673290, 38.239719, 40.568523>,  <40.903942, 37.926315, 40.661148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673290, 38.239719, 40.568523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127999, -0.193294, -0.972756,
		-0.806920, -0.590556, 0.011170,
		-0.576626, 0.783506, -0.231563,
		40.500301, 38.474770, 40.499054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640793, 37.699677, 40.079830>,  <40.903942, 37.926315, 40.661148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640793, 37.699677, 40.079830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.550499, 38.089096, 40.065689>,  <40.496323, 38.322746, 40.057205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.550499, 38.089096, 40.065689>,  <40.640793, 37.699677, 40.079830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550499, 38.089096, 40.065689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033861, -0.028428, -0.999022,
		-0.973601, -0.226709, -0.026548,
		-0.225732, 0.973548, -0.035354,
		40.482780, 38.381161, 40.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133991, 37.677483, 39.563274>,  <40.640793, 37.699677, 40.079830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133991, 37.677483, 39.563274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269970, 38.053192, 39.582016>,  <40.351559, 38.278618, 39.593262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269970, 38.053192, 39.582016>,  <40.133991, 37.677483, 39.563274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269970, 38.053192, 39.582016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048302, 0.032313, -0.998310,
		-0.939203, 0.341637, -0.034384,
		0.339948, 0.939277, 0.046850,
		40.371956, 38.334976, 39.596069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836273, 37.945480, 39.008801>,  <40.133991, 37.677483, 39.563274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836273, 37.945480, 39.008801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145687, 38.183205, 39.096836>,  <40.331337, 38.325840, 39.149658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145687, 38.183205, 39.096836>,  <39.836273, 37.945480, 39.008801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145687, 38.183205, 39.096836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174584, 0.134012, -0.975480,
		-0.609233, 0.792991, -0.000095,
		0.773534, 0.594311, 0.220088,
		40.377747, 38.361500, 39.162861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735752, 38.464520, 38.581928>,  <39.836273, 37.945480, 39.008801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735752, 38.464520, 38.581928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.127975, 38.479855, 38.658901>,  <40.363312, 38.489056, 38.705086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.127975, 38.479855, 38.658901>,  <39.735752, 38.464520, 38.581928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127975, 38.479855, 38.658901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184344, 0.155969, -0.970408,
		-0.067215, 0.987018, 0.145870,
		0.980561, 0.038336, 0.192434,
		40.422142, 38.491356, 38.716633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024586, 38.950802, 38.131737>,  <39.735752, 38.464520, 38.581928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024586, 38.950802, 38.131737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.369980, 38.773575, 38.228138>,  <40.577217, 38.667240, 38.285976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.369980, 38.773575, 38.228138>,  <40.024586, 38.950802, 38.131737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369980, 38.773575, 38.228138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328414, 0.131267, -0.935368,
		0.382793, 0.886827, 0.258857,
		0.863489, -0.443065, 0.240999,
		40.629028, 38.640656, 38.300438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398739, 39.559135, 38.001377>,  <40.024586, 38.950802, 38.131737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398739, 39.559135, 38.001377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563725, 39.195068, 37.986061>,  <40.662716, 38.976627, 37.976871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563725, 39.195068, 37.986061>,  <40.398739, 39.559135, 38.001377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563725, 39.195068, 37.986061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211528, 0.136574, -0.967783,
		0.886076, 0.391074, 0.248858,
		0.412462, -0.910170, -0.038292,
		40.687462, 38.922016, 37.974575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.935844, 35.583797, 26.742832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.176207, 35.683205, 27.046715>,  <29.320423, 35.742847, 27.229044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.176207, 35.683205, 27.046715>,  <28.935844, 35.583797, 26.742832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176207, 35.683205, 27.046715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749478, -0.155190, 0.643582,
		0.277841, -0.956114, 0.093005,
		0.600905, 0.248519, 0.759705,
		29.356478, 35.757759, 27.274626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786308, 35.054905, 27.232672>,  <28.935844, 35.583797, 26.742832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786308, 35.054905, 27.232672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951021, 35.357861, 27.435369>,  <29.049849, 35.539635, 27.556988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951021, 35.357861, 27.435369>,  <28.786308, 35.054905, 27.232672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951021, 35.357861, 27.435369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691891, -0.102050, 0.714754,
		0.593063, -0.644935, 0.482011,
		0.411781, 0.757393, 0.506746,
		29.074556, 35.585079, 27.587393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004261, 34.883495, 27.933405>,  <28.786308, 35.054905, 27.232672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004261, 34.883495, 27.933405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938629, 35.275520, 27.978235>,  <28.899250, 35.510735, 28.005135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938629, 35.275520, 27.978235>,  <29.004261, 34.883495, 27.933405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938629, 35.275520, 27.978235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339261, -0.162753, 0.926506,
		0.926271, 0.113999, 0.359201,
		-0.164081, 0.980059, 0.112078,
		28.889404, 35.569538, 28.011858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247105, 34.997990, 28.600494>,  <29.004261, 34.883495, 27.933405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247105, 34.997990, 28.600494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013084, 35.311031, 28.515406>,  <28.872671, 35.498856, 28.464352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013084, 35.311031, 28.515406>,  <29.247105, 34.997990, 28.600494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013084, 35.311031, 28.515406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360577, -0.016067, 0.932591,
		0.726428, 0.622318, 0.291588,
		-0.585053, 0.782600, -0.212722,
		28.837568, 35.545811, 28.451590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567244, 35.587288, 28.946529>,  <29.247105, 34.997990, 28.600494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567244, 35.587288, 28.946529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177397, 35.653721, 28.886475>,  <28.943489, 35.693581, 28.850441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177397, 35.653721, 28.886475>,  <29.567244, 35.587288, 28.946529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177397, 35.653721, 28.886475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157998, -0.035087, 0.986816,
		0.158623, 0.985488, 0.060437,
		-0.974616, 0.166081, -0.150139,
		28.885012, 35.703545, 28.841433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406935, 35.926403, 29.598709>,  <29.567244, 35.587288, 28.946529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406935, 35.926403, 29.598709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054789, 35.872269, 29.416878>,  <28.843500, 35.839787, 29.307779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054789, 35.872269, 29.416878>,  <29.406935, 35.926403, 29.598709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054789, 35.872269, 29.416878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470908, 0.135066, 0.871781,
		-0.056589, 0.981550, -0.182640,
		-0.880365, -0.135339, -0.454577,
		28.790680, 35.831665, 29.280504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056213, 36.456272, 29.794931>,  <29.406935, 35.926403, 29.598709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056213, 36.456272, 29.794931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764893, 36.205669, 29.683891>,  <28.590099, 36.055309, 29.617268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764893, 36.205669, 29.683891>,  <29.056213, 36.456272, 29.794931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764893, 36.205669, 29.683891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472535, 0.165784, 0.865578,
		-0.496270, 0.761580, -0.416787,
		-0.728304, -0.626507, -0.277600,
		28.546402, 36.017715, 29.600611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497902, 36.794094, 29.811615>,  <29.056213, 36.456272, 29.794931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497902, 36.794094, 29.811615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376673, 36.415199, 29.853344>,  <28.303936, 36.187862, 29.878382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376673, 36.415199, 29.853344>,  <28.497902, 36.794094, 29.811615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376673, 36.415199, 29.853344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520181, 0.256161, 0.814735,
		-0.798473, 0.192657, -0.570372,
		-0.303071, -0.947241, 0.104321,
		28.285751, 36.131027, 29.884640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774799, 36.784641, 30.023643>,  <28.497902, 36.794094, 29.811615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774799, 36.784641, 30.023643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891237, 36.419819, 30.139177>,  <27.961100, 36.200928, 30.208498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.891237, 36.419819, 30.139177>,  <27.774799, 36.784641, 30.023643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891237, 36.419819, 30.139177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477838, 0.122946, 0.869801,
		-0.828815, -0.391211, -0.400024,
		0.291094, -0.912051, 0.288835,
		27.978565, 36.146202, 30.225828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211250, 36.548950, 30.496723>,  <27.774799, 36.784641, 30.023643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211250, 36.548950, 30.496723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512545, 36.293606, 30.560137>,  <27.693321, 36.140400, 30.598185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512545, 36.293606, 30.560137>,  <27.211250, 36.548950, 30.496723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512545, 36.293606, 30.560137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388917, -0.237866, 0.890035,
		-0.530452, -0.732064, -0.427438,
		0.753236, -0.638359, 0.158536,
		27.738516, 36.102097, 30.607698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930725, 35.922714, 30.718201>,  <27.211250, 36.548950, 30.496723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930725, 35.922714, 30.718201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.307135, 35.860168, 30.838217>,  <27.532980, 35.822643, 30.910227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.307135, 35.860168, 30.838217>,  <26.930725, 35.922714, 30.718201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307135, 35.860168, 30.838217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332165, -0.258295, 0.907166,
		-0.064346, -0.953328, -0.294999,
		0.941024, -0.156361, 0.300042,
		27.589441, 35.813259, 30.928228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965050, 35.305412, 30.993961>,  <26.930725, 35.922714, 30.718201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965050, 35.305412, 30.993961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266508, 35.497002, 31.174007>,  <27.447384, 35.611954, 31.282034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266508, 35.497002, 31.174007>,  <26.965050, 35.305412, 30.993961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266508, 35.497002, 31.174007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318410, -0.333042, 0.887524,
		0.575008, -0.812199, -0.098486,
		0.753645, 0.478974, 0.450114,
		27.492601, 35.640694, 31.309042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276968, 34.788082, 31.469284>,  <26.965050, 35.305412, 30.993961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276968, 34.788082, 31.469284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421242, 35.140781, 31.590891>,  <27.507805, 35.352402, 31.663855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421242, 35.140781, 31.590891>,  <27.276968, 34.788082, 31.469284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421242, 35.140781, 31.590891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185880, -0.251461, 0.949850,
		0.913978, -0.399105, 0.073202,
		0.360683, 0.881750, 0.304016,
		27.529448, 35.405308, 31.682096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707508, 34.675362, 31.997801>,  <27.276968, 34.788082, 31.469284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707508, 34.675362, 31.997801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564901, 35.047272, 32.034489>,  <27.479338, 35.270416, 32.056499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.564901, 35.047272, 32.034489>,  <27.707508, 34.675362, 31.997801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564901, 35.047272, 32.034489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036312, -0.111884, 0.993058,
		0.933582, 0.350713, 0.073651,
		-0.356519, 0.929775, 0.091718,
		27.457945, 35.326202, 32.062004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944902, 34.833008, 32.639050>,  <27.707508, 34.675362, 31.997801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944902, 34.833008, 32.639050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675631, 35.124634, 32.589569>,  <27.514069, 35.299610, 32.559879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675631, 35.124634, 32.589569>,  <27.944902, 34.833008, 32.639050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675631, 35.124634, 32.589569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295364, -0.111731, 0.948829,
		0.677932, 0.675268, 0.290553,
		-0.673177, 0.729061, -0.123704,
		27.473677, 35.343353, 32.552460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976599, 35.122074, 33.259747>,  <27.944902, 34.833008, 32.639050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976599, 35.122074, 33.259747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640644, 35.265900, 33.097118>,  <27.439072, 35.352196, 32.999542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640644, 35.265900, 33.097118>,  <27.976599, 35.122074, 33.259747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640644, 35.265900, 33.097118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412456, 0.064090, 0.908720,
		0.352798, 0.930918, 0.094474,
		-0.839889, 0.359561, -0.406574,
		27.388678, 35.373768, 32.975147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915180, 35.786930, 33.458527>,  <27.976599, 35.122074, 33.259747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915180, 35.786930, 33.458527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541285, 35.668182, 33.380417>,  <27.316948, 35.596931, 33.333553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541285, 35.668182, 33.380417>,  <27.915180, 35.786930, 33.458527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541285, 35.668182, 33.380417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274505, 0.254350, 0.927336,
		-0.225632, 0.920420, -0.319244,
		-0.934739, -0.296871, -0.195271,
		27.260862, 35.579121, 33.321835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533798, 36.270515, 33.770016>,  <27.915180, 35.786930, 33.458527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533798, 36.270515, 33.770016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281824, 35.966358, 33.706787>,  <27.130640, 35.783863, 33.668850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281824, 35.966358, 33.706787>,  <27.533798, 36.270515, 33.770016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281824, 35.966358, 33.706787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475727, 0.216908, 0.852428,
		-0.613893, 0.612172, -0.498377,
		-0.629935, -0.760392, -0.158069,
		27.092844, 35.738239, 33.659367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531055, 36.951771, 33.408936>,  <27.533798, 36.270515, 33.770016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531055, 36.951771, 33.408936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555834, 37.350956, 33.402924>,  <27.570702, 37.590469, 33.399315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555834, 37.350956, 33.402924>,  <27.531055, 36.951771, 33.408936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555834, 37.350956, 33.402924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492600, 0.017472, -0.870080,
		-0.868048, 0.061302, 0.492681,
		0.061946, 0.997966, -0.015031,
		27.574417, 37.650345, 33.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872416, 37.382572, 33.455746>,  <27.531055, 36.951771, 33.408936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872416, 37.382572, 33.455746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131689, 37.613159, 33.256729>,  <27.287254, 37.751511, 33.137321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131689, 37.613159, 33.256729>,  <26.872416, 37.382572, 33.455746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131689, 37.613159, 33.256729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716092, 0.239238, -0.655726,
		-0.258974, 0.781314, 0.567873,
		0.648185, 0.576466, -0.497537,
		27.326145, 37.786098, 33.107468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500013, 37.751198, 32.834400>,  <26.872416, 37.382572, 33.455746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500013, 37.751198, 32.834400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877775, 37.877541, 32.797890>,  <27.104433, 37.953346, 32.775982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877775, 37.877541, 32.797890>,  <26.500013, 37.751198, 32.834400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877775, 37.877541, 32.797890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236799, 0.460858, -0.855299,
		-0.228086, 0.829364, 0.510032,
		0.944406, 0.315857, -0.091277,
		27.161097, 37.972298, 32.770508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509480, 38.420273, 32.679504>,  <26.500013, 37.751198, 32.834400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509480, 38.420273, 32.679504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862484, 38.291477, 32.542393>,  <27.074287, 38.214199, 32.460125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862484, 38.291477, 32.542393>,  <26.509480, 38.420273, 32.679504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862484, 38.291477, 32.542393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189661, 0.423303, -0.885914,
		0.430352, 0.846841, 0.312502,
		0.882511, -0.321985, -0.342781,
		27.127237, 38.194881, 32.439560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852385, 39.014194, 32.290440>,  <26.509480, 38.420273, 32.679504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852385, 39.014194, 32.290440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028261, 38.683773, 32.149406>,  <27.133787, 38.485519, 32.064785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028261, 38.683773, 32.149406>,  <26.852385, 39.014194, 32.290440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028261, 38.683773, 32.149406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006189, 0.395343, -0.918513,
		0.898127, 0.401681, 0.178941,
		0.439692, -0.826049, -0.352582,
		27.160170, 38.435959, 32.043633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377789, 39.222542, 31.873871>,  <26.852385, 39.014194, 32.290440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377789, 39.222542, 31.873871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308573, 38.845043, 31.761154>,  <27.267044, 38.618546, 31.693523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308573, 38.845043, 31.761154>,  <27.377789, 39.222542, 31.873871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308573, 38.845043, 31.761154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172963, 0.252545, -0.952000,
		0.969609, -0.213472, 0.119533,
		-0.173038, -0.943743, -0.281792,
		27.256660, 38.561920, 31.676617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868191, 39.057861, 31.450491>,  <27.377789, 39.222542, 31.873871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868191, 39.057861, 31.450491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.614059, 38.768570, 31.342194>,  <27.461580, 38.594997, 31.277216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.614059, 38.768570, 31.342194>,  <27.868191, 39.057861, 31.450491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614059, 38.768570, 31.342194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326323, 0.066325, -0.942929,
		0.699908, -0.687419, 0.193868,
		-0.635329, -0.723226, -0.270742,
		27.423460, 38.551601, 31.260971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261251, 38.755104, 31.006319>,  <27.868191, 39.057861, 31.450491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261251, 38.755104, 31.006319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894857, 38.618366, 30.922308>,  <27.675020, 38.536324, 30.871901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894857, 38.618366, 30.922308>,  <28.261251, 38.755104, 31.006319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894857, 38.618366, 30.922308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287270, -0.193369, -0.938128,
		0.280082, -0.919647, 0.275325,
		-0.915986, -0.341845, -0.210028,
		27.620062, 38.515812, 30.859299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325314, 38.246109, 30.452620>,  <28.261251, 38.755104, 31.006319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325314, 38.246109, 30.452620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931276, 38.290920, 30.400404>,  <27.694855, 38.317806, 30.369074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931276, 38.290920, 30.400404>,  <28.325314, 38.246109, 30.452620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931276, 38.290920, 30.400404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113052, -0.150343, -0.982149,
		-0.129638, -0.982268, 0.135439,
		-0.985095, 0.112012, -0.130538,
		27.635748, 38.324528, 30.361242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090405, 37.644176, 30.071165>,  <28.325314, 38.246109, 30.452620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090405, 37.644176, 30.071165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838427, 37.947018, 30.001923>,  <27.687241, 38.128723, 29.960377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838427, 37.947018, 30.001923>,  <28.090405, 37.644176, 30.071165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838427, 37.947018, 30.001923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153989, -0.096705, -0.983329,
		-0.761222, -0.646098, -0.055667,
		-0.629943, 0.757104, -0.173106,
		27.649443, 38.174149, 29.949991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865976, 37.635838, 29.402563>,  <28.090405, 37.644176, 30.071165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865976, 37.635838, 29.402563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632490, 37.958878, 29.436171>,  <27.492399, 38.152702, 29.456335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632490, 37.958878, 29.436171>,  <27.865976, 37.635838, 29.402563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632490, 37.958878, 29.436171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251355, -0.081337, -0.964471,
		-0.772073, -0.584095, 0.250471,
		-0.583716, 0.807600, 0.084017,
		27.457375, 38.201157, 29.461376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048647, 37.560768, 29.232059>,  <27.865976, 37.635838, 29.402563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048647, 37.560768, 29.232059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190243, 37.927654, 29.158945>,  <27.275200, 38.147785, 29.115076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190243, 37.927654, 29.158945>,  <27.048647, 37.560768, 29.232059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190243, 37.927654, 29.158945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274766, -0.084822, -0.957762,
		-0.893978, 0.389259, 0.221994,
		0.353988, 0.917215, -0.182784,
		27.296438, 38.202820, 29.104111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518644, 37.969360, 28.836403>,  <27.048647, 37.560768, 29.232059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518644, 37.969360, 28.836403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.868500, 38.157101, 28.787880>,  <27.078413, 38.269745, 28.758766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.868500, 38.157101, 28.787880>,  <26.518644, 37.969360, 28.836403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868500, 38.157101, 28.787880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011944, -0.229297, -0.973283,
		-0.484631, 0.852719, -0.194946,
		0.874637, 0.469355, -0.121309,
		27.130892, 38.297909, 28.751488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421661, 38.230408, 28.218925>,  <26.518644, 37.969360, 28.836403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421661, 38.230408, 28.218925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809338, 38.321609, 28.256193>,  <27.041945, 38.376331, 28.278555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809338, 38.321609, 28.256193>,  <26.421661, 38.230408, 28.218925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809338, 38.321609, 28.256193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126314, -0.135361, -0.982712,
		-0.211454, 0.964204, -0.159991,
		0.969191, 0.228007, 0.093170,
		27.100096, 38.390011, 28.284143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609049, 38.705479, 27.695921>,  <26.421661, 38.230408, 28.218925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609049, 38.705479, 27.695921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937387, 38.504639, 27.804810>,  <27.134392, 38.384136, 27.870142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937387, 38.504639, 27.804810>,  <26.609049, 38.705479, 27.695921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937387, 38.504639, 27.804810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322949, 0.014916, -0.946299,
		0.471075, 0.864681, 0.174396,
		0.820848, -0.502099, 0.272221,
		27.183641, 38.354008, 27.886477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172441, 39.074806, 27.317310>,  <26.609049, 38.705479, 27.695921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172441, 39.074806, 27.317310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.329613, 38.718853, 27.410017>,  <27.423916, 38.505280, 27.465641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.329613, 38.718853, 27.410017>,  <27.172441, 39.074806, 27.317310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329613, 38.718853, 27.410017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429395, -0.045315, -0.901979,
		0.813158, 0.453932, 0.364306,
		0.392928, -0.889883, 0.231765,
		27.447491, 38.451889, 27.479546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940519, 39.097462, 27.282419>,  <27.172441, 39.074806, 27.317310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940519, 39.097462, 27.282419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818861, 38.718761, 27.240168>,  <27.745867, 38.491543, 27.214817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818861, 38.718761, 27.240168>,  <27.940519, 39.097462, 27.282419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818861, 38.718761, 27.240168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535202, -0.078092, -0.841106,
		0.788069, -0.312353, 0.530455,
		-0.304146, -0.946751, -0.105630,
		27.727617, 38.434734, 27.208479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571703, 38.857330, 27.116978>,  <27.940519, 39.097462, 27.282419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571703, 38.857330, 27.116978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304789, 38.578094, 27.013128>,  <28.144640, 38.410553, 26.950819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304789, 38.578094, 27.013128>,  <28.571703, 38.857330, 27.116978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304789, 38.578094, 27.013128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520119, -0.187256, -0.833314,
		0.533109, -0.691093, 0.488042,
		-0.667286, -0.698087, -0.259623,
		28.104603, 38.368668, 26.935242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994600, 38.183804, 27.016035>,  <28.571703, 38.857330, 27.116978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994600, 38.183804, 27.016035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655222, 38.142078, 26.808475>,  <28.451595, 38.117043, 26.683939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655222, 38.142078, 26.808475>,  <28.994600, 38.183804, 27.016035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655222, 38.142078, 26.808475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525585, -0.281695, -0.802750,
		-0.062432, -0.953817, 0.293830,
		-0.848447, -0.104315, -0.518899,
		28.400688, 38.110783, 26.652805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068884, 37.511932, 26.655136>,  <28.994600, 38.183804, 27.016035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068884, 37.511932, 26.655136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779196, 37.672916, 26.431162>,  <28.605383, 37.769508, 26.296778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779196, 37.672916, 26.431162>,  <29.068884, 37.511932, 26.655136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779196, 37.672916, 26.431162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441050, -0.353846, -0.824783,
		-0.530077, -0.844284, 0.078756,
		-0.724219, 0.402464, -0.559937,
		28.561930, 37.793655, 26.263180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901129, 36.964394, 26.098696>,  <29.068884, 37.511932, 26.655136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901129, 36.964394, 26.098696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.738979, 37.302635, 25.959768>,  <28.641689, 37.505581, 25.876411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.738979, 37.302635, 25.959768>,  <28.901129, 36.964394, 26.098696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738979, 37.302635, 25.959768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342024, -0.212044, -0.915455,
		-0.847757, -0.489891, -0.203259,
		-0.405373, 0.845603, -0.347317,
		28.617367, 37.556316, 25.855574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386869, 36.828411, 25.471584>,  <28.901129, 36.964394, 26.098696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386869, 36.828411, 25.471584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501242, 37.209286, 25.428528>,  <28.569864, 37.437809, 25.402695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501242, 37.209286, 25.428528>,  <28.386869, 36.828411, 25.471584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501242, 37.209286, 25.428528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313387, -0.199071, -0.928526,
		-0.905557, 0.231761, -0.355323,
		0.285930, 0.952186, -0.107639,
		28.587021, 37.494942, 25.396236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198236, 36.942974, 24.760468>,  <28.386869, 36.828411, 25.471584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198236, 36.942974, 24.760468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449707, 37.238766, 24.856747>,  <28.600590, 37.416241, 24.914515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449707, 37.238766, 24.856747>,  <28.198236, 36.942974, 24.760468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449707, 37.238766, 24.856747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415797, -0.058076, -0.907601,
		-0.657175, 0.670668, -0.343985,
		0.628676, 0.739481, 0.240696,
		28.638309, 37.460609, 24.928955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327063, 37.551144, 24.209528>,  <28.198236, 36.942974, 24.760468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327063, 37.551144, 24.209528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623980, 37.445229, 24.455744>,  <28.802130, 37.381680, 24.603474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623980, 37.445229, 24.455744>,  <28.327063, 37.551144, 24.209528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623980, 37.445229, 24.455744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579482, -0.207581, -0.788106,
		0.336458, 0.941698, -0.000643,
		0.742291, -0.264792, 0.615539,
		28.846666, 37.365791, 24.640406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.440060, 35.606499, 42.323250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046135, 35.641479, 42.383247>,  <38.809780, 35.662468, 42.419247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.046135, 35.641479, 42.383247>,  <39.440060, 35.606499, 42.323250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046135, 35.641479, 42.383247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151315, 0.008656, 0.988448,
		0.085146, 0.996131, -0.021757,
		-0.984812, 0.087455, 0.149993,
		38.750690, 35.667717, 42.428246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250084, 36.201000, 42.816368>,  <39.440060, 35.606499, 42.323250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250084, 36.201000, 42.816368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940247, 35.949791, 42.846275>,  <38.754345, 35.799065, 42.864220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940247, 35.949791, 42.846275>,  <39.250084, 36.201000, 42.816368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940247, 35.949791, 42.846275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093050, 0.003765, 0.995654,
		-0.625575, 0.778186, 0.055521,
		-0.774595, -0.628023, 0.074765,
		38.707867, 35.761383, 42.868706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863583, 36.407776, 43.421288>,  <39.250084, 36.201000, 42.816368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863583, 36.407776, 43.421288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707401, 36.042938, 43.371284>,  <38.613693, 35.824036, 43.341282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707401, 36.042938, 43.371284>,  <38.863583, 36.407776, 43.421288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707401, 36.042938, 43.371284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018734, -0.127887, 0.991612,
		-0.920431, 0.389522, 0.032847,
		-0.390456, -0.912095, -0.125008,
		38.590263, 35.769310, 43.333782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242710, 36.256153, 43.842827>,  <38.863583, 36.407776, 43.421288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242710, 36.256153, 43.842827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.379726, 35.891541, 43.751816>,  <38.461937, 35.672771, 43.697208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.379726, 35.891541, 43.751816>,  <38.242710, 36.256153, 43.842827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379726, 35.891541, 43.751816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237755, -0.150191, 0.959643,
		-0.908921, -0.382816, 0.165275,
		0.342544, -0.911534, -0.227528,
		38.482491, 35.618080, 43.683556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908257, 35.819649, 44.359554>,  <38.242710, 36.256153, 43.842827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908257, 35.819649, 44.359554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201721, 35.598618, 44.201363>,  <38.377800, 35.466000, 44.106449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201721, 35.598618, 44.201363>,  <37.908257, 35.819649, 44.359554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201721, 35.598618, 44.201363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184341, -0.398324, 0.898530,
		-0.654039, -0.732115, -0.190370,
		0.733657, -0.552581, -0.395478,
		38.421818, 35.432842, 44.082718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769981, 35.184780, 44.621605>,  <37.908257, 35.819649, 44.359554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769981, 35.184780, 44.621605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.156185, 35.200817, 44.518700>,  <38.387909, 35.210442, 44.456959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.156185, 35.200817, 44.518700>,  <37.769981, 35.184780, 44.621605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156185, 35.200817, 44.518700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236449, -0.548693, 0.801890,
		-0.109005, -0.835062, -0.539249,
		0.965510, 0.040095, -0.257260,
		38.445839, 35.212845, 44.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125412, 34.522057, 44.778244>,  <37.769981, 35.184780, 44.621605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125412, 34.522057, 44.778244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468529, 34.726154, 44.753460>,  <38.674400, 34.848614, 44.738590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468529, 34.726154, 44.753460>,  <38.125412, 34.522057, 44.778244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468529, 34.726154, 44.753460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358311, -0.507184, 0.783823,
		0.368513, -0.694561, -0.617885,
		0.857794, 0.510244, -0.061965,
		38.725868, 34.879227, 44.734871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711967, 34.078053, 44.854095>,  <38.125412, 34.522057, 44.778244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711967, 34.078053, 44.854095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885681, 34.425537, 44.949368>,  <38.989910, 34.634029, 45.006531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885681, 34.425537, 44.949368>,  <38.711967, 34.078053, 44.854095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885681, 34.425537, 44.949368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432096, -0.432923, 0.791120,
		0.790373, -0.240654, -0.563380,
		0.434286, 0.868714, 0.238185,
		39.015968, 34.686150, 45.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341873, 33.853848, 45.134678>,  <38.711967, 34.078053, 44.854095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341873, 33.853848, 45.134678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.299816, 34.235760, 45.245918>,  <39.274582, 34.464909, 45.312660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.299816, 34.235760, 45.245918>,  <39.341873, 33.853848, 45.134678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299816, 34.235760, 45.245918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523512, -0.184620, 0.831776,
		0.845506, 0.233045, -0.480427,
		-0.105145, 0.954781, 0.278099,
		39.268272, 34.522194, 45.329350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957256, 34.016422, 45.411308>,  <39.341873, 33.853848, 45.134678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957256, 34.016422, 45.411308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.701080, 34.268539, 45.586838>,  <39.547375, 34.419811, 45.692154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.701080, 34.268539, 45.586838>,  <39.957256, 34.016422, 45.411308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701080, 34.268539, 45.586838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399169, -0.214965, 0.891321,
		0.656130, 0.746000, -0.113924,
		-0.640436, 0.630297, 0.438825,
		39.508949, 34.457630, 45.718487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356056, 34.617439, 45.733734>,  <39.957256, 34.016422, 45.411308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356056, 34.617439, 45.733734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.007198, 34.561340, 45.921219>,  <39.797882, 34.527679, 46.033710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.007198, 34.561340, 45.921219>,  <40.356056, 34.617439, 45.733734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007198, 34.561340, 45.921219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489222, -0.259624, 0.832621,
		0.004915, 0.955471, 0.295043,
		-0.872145, -0.140250, 0.468714,
		39.745556, 34.519264, 46.061832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292191, 35.078896, 46.367889>,  <40.356056, 34.617439, 45.733734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292191, 35.078896, 46.367889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056732, 34.757484, 46.403324>,  <39.915459, 34.564640, 46.424583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056732, 34.757484, 46.403324>,  <40.292191, 35.078896, 46.367889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056732, 34.757484, 46.403324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257100, -0.082193, 0.962883,
		-0.766419, 0.589570, 0.254968,
		-0.588644, -0.803524, 0.088584,
		39.880138, 34.516426, 46.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511150, 34.908733, 47.070484>,  <40.292191, 35.078896, 46.367889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511150, 34.908733, 47.070484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.219524, 34.732014, 47.279587>,  <40.044548, 34.625980, 47.405048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.219524, 34.732014, 47.279587>,  <40.511150, 34.908733, 47.070484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219524, 34.732014, 47.279587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465748, 0.239434, 0.851910,
		-0.501541, 0.864571, 0.031206,
		-0.729065, -0.441802, 0.522758,
		40.000805, 34.599472, 47.436413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982670, 35.389042, 47.535194>,  <40.511150, 34.908733, 47.070484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982670, 35.389042, 47.535194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001938, 35.022217, 47.693520>,  <40.013496, 34.802120, 47.788517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001938, 35.022217, 47.693520>,  <39.982670, 35.389042, 47.535194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001938, 35.022217, 47.693520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296197, 0.391564, 0.871175,
		-0.953912, 0.075278, 0.290492,
		0.048166, -0.917066, 0.395815,
		40.016388, 34.747097, 47.812263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151089, 36.092915, 47.660698>,  <39.982670, 35.389042, 47.535194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151089, 36.092915, 47.660698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.848755, 36.299366, 47.821861>,  <39.667355, 36.423237, 47.918560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.848755, 36.299366, 47.821861>,  <40.151089, 36.092915, 47.660698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848755, 36.299366, 47.821861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078965, 0.682705, -0.726415,
		-0.649984, -0.517234, -0.556767,
		-0.755834, 0.516124, 0.402904,
		39.622005, 36.454205, 47.942734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650459, 36.289101, 47.151974>,  <40.151089, 36.092915, 47.660698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650459, 36.289101, 47.151974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605427, 36.565128, 47.437946>,  <39.578407, 36.730743, 47.609531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605427, 36.565128, 47.437946>,  <39.650459, 36.289101, 47.151974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605427, 36.565128, 47.437946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038903, 0.722019, -0.690779,
		-0.992881, -0.049955, -0.108131,
		-0.112580, 0.690068, 0.714935,
		39.571651, 36.772148, 47.652428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109550, 36.797798, 46.962826>,  <39.650459, 36.289101, 47.151974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109550, 36.797798, 46.962826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.292923, 37.009464, 47.248432>,  <39.402946, 37.136463, 47.419796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.292923, 37.009464, 47.248432>,  <39.109550, 36.797798, 46.962826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292923, 37.009464, 47.248432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010951, 0.799991, -0.599911,
		-0.888660, 0.282840, 0.360949,
		0.458435, 0.529164, 0.714018,
		39.430454, 37.168213, 47.462639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638443, 37.313240, 47.073803>,  <39.109550, 36.797798, 46.962826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638443, 37.313240, 47.073803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013859, 37.402374, 47.179237>,  <39.239109, 37.455856, 47.242500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013859, 37.402374, 47.179237>,  <38.638443, 37.313240, 47.073803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013859, 37.402374, 47.179237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018269, 0.730528, -0.682639,
		-0.344679, 0.645501, 0.681561,
		0.938543, 0.222840, 0.263590,
		39.295422, 37.469227, 47.258316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490040, 37.963161, 47.079071>,  <38.638443, 37.313240, 47.073803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490040, 37.963161, 47.079071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881378, 37.888401, 47.043488>,  <39.116180, 37.843544, 47.022137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881378, 37.888401, 47.043488>,  <38.490040, 37.963161, 47.079071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881378, 37.888401, 47.043488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075332, 0.721782, -0.688008,
		0.192795, 0.666407, 0.720230,
		0.978343, -0.186900, -0.088954,
		39.174881, 37.832333, 47.016800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822041, 38.544537, 46.943283>,  <38.490040, 37.963161, 47.079071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822041, 38.544537, 46.943283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.112843, 38.300594, 46.817081>,  <39.287323, 38.154228, 46.741360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.112843, 38.300594, 46.817081>,  <38.822041, 38.544537, 46.943283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112843, 38.300594, 46.817081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048550, 0.503993, -0.862342,
		0.684919, 0.611606, 0.396012,
		0.727001, -0.609860, -0.315501,
		39.330944, 38.117638, 46.722431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117813, 38.882374, 46.411545>,  <38.822041, 38.544537, 46.943283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117813, 38.882374, 46.411545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282352, 38.523685, 46.346191>,  <39.381077, 38.308472, 46.306980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282352, 38.523685, 46.346191>,  <39.117813, 38.882374, 46.411545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282352, 38.523685, 46.346191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204627, 0.265525, -0.942138,
		0.888213, 0.354113, 0.292715,
		0.411346, -0.896717, -0.163382,
		39.405758, 38.254669, 46.297176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811367, 38.930485, 46.064804>,  <39.117813, 38.882374, 46.411545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811367, 38.930485, 46.064804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.684486, 38.561390, 45.977219>,  <39.608356, 38.339935, 45.924667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.684486, 38.561390, 45.977219>,  <39.811367, 38.930485, 46.064804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684486, 38.561390, 45.977219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106149, 0.194892, -0.975064,
		0.942398, -0.332538, 0.036126,
		-0.317205, -0.922733, -0.218965,
		39.589325, 38.284569, 45.911530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147408, 38.657337, 45.453472>,  <39.811367, 38.930485, 46.064804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147408, 38.657337, 45.453472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.842415, 38.400970, 45.488884>,  <39.659420, 38.247150, 45.510132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.842415, 38.400970, 45.488884>,  <40.147408, 38.657337, 45.453472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842415, 38.400970, 45.488884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048266, -0.080109, -0.995617,
		0.645204, -0.763416, 0.030147,
		-0.762484, -0.640920, 0.088534,
		39.613670, 38.208694, 45.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290276, 38.054214, 45.087879>,  <40.147408, 38.657337, 45.453472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290276, 38.054214, 45.087879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.892937, 38.024567, 45.123119>,  <39.654533, 38.006779, 45.144264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.892937, 38.024567, 45.123119>,  <40.290276, 38.054214, 45.087879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892937, 38.024567, 45.123119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073989, -0.175312, -0.981729,
		0.088210, -0.981719, 0.168662,
		-0.993350, -0.074119, 0.088101,
		39.594933, 38.002331, 45.149548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139317, 37.502125, 44.613850>,  <40.290276, 38.054214, 45.087879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139317, 37.502125, 44.613850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803402, 37.714222, 44.660507>,  <39.601852, 37.841480, 44.688499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803402, 37.714222, 44.660507>,  <40.139317, 37.502125, 44.613850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803402, 37.714222, 44.660507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102001, 0.056922, -0.993154,
		-0.533251, -0.845934, 0.006283,
		-0.839786, 0.530241, 0.116640,
		39.551468, 37.873295, 44.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667706, 37.226883, 44.184956>,  <40.139317, 37.502125, 44.613850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667706, 37.226883, 44.184956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520176, 37.592331, 44.253384>,  <39.431660, 37.811600, 44.294441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.520176, 37.592331, 44.253384>,  <39.667706, 37.226883, 44.184956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520176, 37.592331, 44.253384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157016, 0.120160, -0.980259,
		-0.916141, -0.388404, 0.099136,
		-0.368824, 0.913621, 0.171069,
		39.409527, 37.866417, 44.304703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973755, 37.167263, 43.869480>,  <39.667706, 37.226883, 44.184956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973755, 37.167263, 43.869480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080616, 37.551006, 43.905827>,  <39.144733, 37.781254, 43.927635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080616, 37.551006, 43.905827>,  <38.973755, 37.167263, 43.869480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080616, 37.551006, 43.905827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201088, 0.147717, -0.968372,
		-0.942441, 0.240429, 0.232379,
		0.267151, 0.959361, 0.090867,
		39.160763, 37.838814, 43.933086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689274, 37.436943, 43.307636>,  <38.973755, 37.167263, 43.869480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689274, 37.436943, 43.307636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925835, 37.738914, 43.420998>,  <39.067772, 37.920097, 43.489014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925835, 37.738914, 43.420998>,  <38.689274, 37.436943, 43.307636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925835, 37.738914, 43.420998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075638, 0.297971, -0.951574,
		-0.802821, 0.584200, 0.119120,
		0.591403, 0.754933, 0.283405,
		39.103256, 37.965393, 43.506020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124084, 37.883320, 43.441410>,  <38.689274, 37.436943, 43.307636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124084, 37.883320, 43.441410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.741432, 37.952385, 43.347561>,  <37.511841, 37.993824, 43.291252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.741432, 37.952385, 43.347561>,  <38.124084, 37.883320, 43.441410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741432, 37.952385, 43.347561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283151, -0.361937, 0.888159,
		0.068434, 0.916073, 0.395130,
		-0.956631, 0.172662, -0.234618,
		37.454445, 38.004185, 43.277176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895454, 38.332745, 43.997620>,  <38.124084, 37.883320, 43.441410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895454, 38.332745, 43.997620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564056, 38.176502, 43.837109>,  <37.365219, 38.082756, 43.740803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564056, 38.176502, 43.837109>,  <37.895454, 38.332745, 43.997620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564056, 38.176502, 43.837109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236967, -0.404724, 0.883202,
		-0.507389, 0.826818, 0.242752,
		-0.828494, -0.390603, -0.401281,
		37.315510, 38.059322, 43.716724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406048, 38.371902, 44.504734>,  <37.895454, 38.332745, 43.997620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406048, 38.371902, 44.504734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177532, 38.128960, 44.283920>,  <37.040421, 37.983192, 44.151432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.177532, 38.128960, 44.283920>,  <37.406048, 38.371902, 44.504734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177532, 38.128960, 44.283920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266129, -0.499176, 0.824620,
		-0.776403, 0.618010, 0.123539,
		-0.571292, -0.607360, -0.552032,
		37.006145, 37.946751, 44.118309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747288, 38.370064, 44.714993>,  <37.406048, 38.371902, 44.504734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747288, 38.370064, 44.714993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771069, 38.020210, 44.522545>,  <36.785339, 37.810299, 44.407074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771069, 38.020210, 44.522545>,  <36.747288, 38.370064, 44.714993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771069, 38.020210, 44.522545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346537, -0.470085, 0.811746,
		-0.936150, 0.118465, -0.331042,
		0.059454, -0.874635, -0.481123,
		36.788906, 37.757820, 44.378208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194290, 37.973198, 45.014229>,  <36.747288, 38.370064, 44.714993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194290, 37.973198, 45.014229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428928, 37.699749, 44.840534>,  <36.569714, 37.535679, 44.736317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428928, 37.699749, 44.840534>,  <36.194290, 37.973198, 45.014229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428928, 37.699749, 44.840534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055022, -0.568576, 0.820789,
		-0.808007, -0.457580, -0.371139,
		0.586597, -0.683624, -0.434236,
		36.604908, 37.494663, 44.710262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876633, 37.360016, 45.095364>,  <36.194290, 37.973198, 45.014229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876633, 37.360016, 45.095364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257328, 37.244480, 45.053856>,  <36.485744, 37.175159, 45.028950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257328, 37.244480, 45.053856>,  <35.876633, 37.360016, 45.095364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257328, 37.244480, 45.053856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073613, -0.543063, 0.836459,
		-0.297954, -0.788451, -0.538116,
		0.951738, -0.288839, -0.103768,
		36.542850, 37.157829, 45.022724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885681, 36.601746, 45.194977>,  <35.876633, 37.360016, 45.095364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885681, 36.601746, 45.194977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247433, 36.752628, 45.274796>,  <36.464481, 36.843159, 45.322685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247433, 36.752628, 45.274796>,  <35.885681, 36.601746, 45.194977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247433, 36.752628, 45.274796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050649, -0.559186, 0.827494,
		0.423723, -0.738258, -0.524819,
		0.904375, 0.377209, 0.199548,
		36.518745, 36.865791, 45.334660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679760, 35.847446, 45.027691>,  <35.885681, 36.601746, 45.194977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679760, 35.847446, 45.027691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315048, 35.734497, 45.146973>,  <35.096222, 35.666729, 45.218540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315048, 35.734497, 45.146973>,  <35.679760, 35.847446, 45.027691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315048, 35.734497, 45.146973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376292, 0.283568, -0.882039,
		0.164500, -0.916437, -0.364805,
		-0.911781, -0.282369, 0.298201,
		35.041515, 35.649784, 45.236431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519032, 35.369072, 44.474575>,  <35.679760, 35.847446, 45.027691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519032, 35.369072, 44.474575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182423, 35.510963, 44.637554>,  <34.980457, 35.596100, 44.735340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182423, 35.510963, 44.637554>,  <35.519032, 35.369072, 44.474575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182423, 35.510963, 44.637554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281523, 0.355756, -0.891169,
		-0.461075, -0.864642, -0.199512,
		-0.841519, 0.354728, 0.407446,
		34.929966, 35.617382, 44.759789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915554, 35.099426, 44.072094>,  <35.519032, 35.369072, 44.474575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915554, 35.099426, 44.072094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.793243, 35.428596, 44.263634>,  <34.719856, 35.626099, 44.378559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.793243, 35.428596, 44.263634>,  <34.915554, 35.099426, 44.072094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793243, 35.428596, 44.263634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283095, 0.401611, -0.870957,
		-0.909043, -0.401878, 0.110163,
		-0.305776, 0.822923, 0.478851,
		34.701511, 35.675472, 44.407288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231297, 35.320766, 43.735970>,  <34.915554, 35.099426, 44.072094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231297, 35.320766, 43.735970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362385, 35.648380, 43.924339>,  <34.441040, 35.844948, 44.037361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362385, 35.648380, 43.924339>,  <34.231297, 35.320766, 43.735970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362385, 35.648380, 43.924339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248520, 0.555634, -0.793416,
		-0.911501, 0.142987, 0.385642,
		0.327724, 0.819039, 0.470926,
		34.460701, 35.894093, 44.065617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625298, 35.748150, 43.885571>,  <34.231297, 35.320766, 43.735970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625298, 35.748150, 43.885571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942406, 35.991573, 43.899296>,  <34.132671, 36.137627, 43.907532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942406, 35.991573, 43.899296>,  <33.625298, 35.748150, 43.885571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942406, 35.991573, 43.899296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447296, 0.619089, -0.645488,
		-0.414063, 0.496372, 0.762998,
		0.792766, 0.608559, 0.034317,
		34.180237, 36.174141, 43.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300938, 36.401340, 43.743938>,  <33.625298, 35.748150, 43.885571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300938, 36.401340, 43.743938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693249, 36.414921, 43.667076>,  <33.928635, 36.423069, 43.620960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693249, 36.414921, 43.667076>,  <33.300938, 36.401340, 43.743938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693249, 36.414921, 43.667076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172432, 0.611762, -0.772020,
		0.091344, 0.790313, 0.605856,
		0.980777, 0.033950, -0.192156,
		33.987480, 36.425106, 43.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382610, 37.008530, 43.416821>,  <33.300938, 36.401340, 43.743938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382610, 37.008530, 43.416821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714458, 36.800289, 43.336128>,  <33.913567, 36.675346, 43.287712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714458, 36.800289, 43.336128>,  <33.382610, 37.008530, 43.416821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714458, 36.800289, 43.336128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043895, 0.299387, -0.953121,
		0.556593, 0.799588, 0.225527,
		0.829625, -0.520602, -0.201735,
		33.963345, 36.644108, 43.275608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.196053, 32.435593, 47.129852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457687, 32.666046, 46.933796>,  <37.614666, 32.804317, 46.816162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457687, 32.666046, 46.933796>,  <37.196053, 32.435593, 47.129852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457687, 32.666046, 46.933796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508310, -0.145085, -0.848864,
		-0.560173, 0.804375, 0.197957,
		0.654085, 0.576134, -0.490145,
		37.653912, 32.838886, 46.786751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711021, 32.869350, 46.761600>,  <37.196053, 32.435593, 47.129852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711021, 32.869350, 46.761600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.073799, 32.932735, 46.605480>,  <37.291466, 32.970768, 46.511806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.073799, 32.932735, 46.605480>,  <36.711021, 32.869350, 46.761600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073799, 32.932735, 46.605480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410689, 0.126525, -0.902954,
		-0.093700, 0.979225, 0.179830,
		0.906948, 0.158461, -0.390302,
		37.345882, 32.980274, 46.488388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714401, 33.518417, 46.388954>,  <36.711021, 32.869350, 46.761600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714401, 33.518417, 46.388954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.982292, 33.265823, 46.232655>,  <37.143028, 33.114265, 46.138874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.982292, 33.265823, 46.232655>,  <36.714401, 33.518417, 46.388954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982292, 33.265823, 46.232655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392173, 0.146066, -0.908221,
		0.630607, 0.761502, -0.149828,
		0.669727, -0.631489, -0.390751,
		37.183212, 33.076378, 46.115429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836140, 33.713356, 45.719730>,  <36.714401, 33.518417, 46.388954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836140, 33.713356, 45.719730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.977024, 33.339054, 45.712650>,  <37.061554, 33.114475, 45.708405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.977024, 33.339054, 45.712650>,  <36.836140, 33.713356, 45.719730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977024, 33.339054, 45.712650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172918, -0.046478, -0.983839,
		0.919807, 0.349581, -0.178179,
		0.352213, -0.935753, -0.017698,
		37.082687, 33.058327, 45.707340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331345, 33.663708, 45.156303>,  <36.836140, 33.713356, 45.719730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331345, 33.663708, 45.156303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215405, 33.291183, 45.244518>,  <37.145840, 33.067669, 45.297447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215405, 33.291183, 45.244518>,  <37.331345, 33.663708, 45.156303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215405, 33.291183, 45.244518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037595, -0.219173, -0.974961,
		0.956333, -0.290886, 0.028515,
		-0.289852, -0.931315, 0.220539,
		37.128448, 33.011787, 45.310680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705135, 33.202488, 44.745155>,  <37.331345, 33.663708, 45.156303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705135, 33.202488, 44.745155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.369808, 32.997540, 44.819672>,  <37.168613, 32.874569, 44.864380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.369808, 32.997540, 44.819672>,  <37.705135, 33.202488, 44.745155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369808, 32.997540, 44.819672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152613, -0.107488, -0.982423,
		0.523390, -0.852010, 0.011914,
		-0.838315, -0.512373, 0.186286,
		37.118313, 32.843826, 44.875557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633644, 32.736477, 44.189430>,  <37.705135, 33.202488, 44.745155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633644, 32.736477, 44.189430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.281513, 32.690857, 44.373615>,  <37.070236, 32.663486, 44.484127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.281513, 32.690857, 44.373615>,  <37.633644, 32.736477, 44.189430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281513, 32.690857, 44.373615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415304, -0.283785, -0.864285,
		0.229242, -0.952081, 0.202458,
		-0.880325, -0.114049, 0.460458,
		37.017414, 32.656643, 44.511753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415436, 32.006554, 44.118065>,  <37.633644, 32.736477, 44.189430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415436, 32.006554, 44.118065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080227, 32.216755, 44.176807>,  <36.879101, 32.342876, 44.212051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080227, 32.216755, 44.176807>,  <37.415436, 32.006554, 44.118065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080227, 32.216755, 44.176807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286478, -0.194696, -0.938096,
		-0.464381, -0.828215, 0.313705,
		-0.838022, 0.525503, 0.146852,
		36.828819, 32.374405, 44.220863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870426, 31.560133, 43.904385>,  <37.415436, 32.006554, 44.118065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870426, 31.560133, 43.904385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.726036, 31.933096, 43.897255>,  <36.639404, 32.156872, 43.892975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.726036, 31.933096, 43.897255>,  <36.870426, 31.560133, 43.904385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726036, 31.933096, 43.897255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445373, -0.189153, -0.875136,
		-0.819355, -0.307960, 0.483548,
		-0.360971, 0.932407, -0.017827,
		36.617744, 32.212818, 43.891907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191814, 31.472927, 43.695805>,  <36.870426, 31.560133, 43.904385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191814, 31.472927, 43.695805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287476, 31.847960, 43.594814>,  <36.344872, 32.072979, 43.534222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287476, 31.847960, 43.594814>,  <36.191814, 31.472927, 43.695805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287476, 31.847960, 43.594814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534021, -0.090156, -0.840651,
		-0.810942, 0.335874, 0.479127,
		0.239157, 0.937582, -0.252475,
		36.359222, 32.129234, 43.519073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590900, 31.747902, 43.338551>,  <36.191814, 31.472927, 43.695805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590900, 31.747902, 43.338551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.897938, 31.982611, 43.235397>,  <36.082161, 32.123436, 43.173504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.897938, 31.982611, 43.235397>,  <35.590900, 31.747902, 43.338551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897938, 31.982611, 43.235397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282552, -0.051361, -0.957876,
		-0.575301, 0.808121, 0.126370,
		0.767589, 0.586773, -0.257885,
		36.128216, 32.158642, 43.158031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336227, 32.393848, 42.996532>,  <35.590900, 31.747902, 43.338551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336227, 32.393848, 42.996532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.679157, 32.222317, 42.882626>,  <35.884914, 32.119396, 42.814281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.679157, 32.222317, 42.882626>,  <35.336227, 32.393848, 42.996532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679157, 32.222317, 42.882626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418216, -0.257685, -0.871030,
		0.300145, 0.865852, -0.400265,
		0.857326, -0.428833, -0.284771,
		35.936356, 32.093666, 42.797195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942036, 32.810848, 43.472977>,  <35.336227, 32.393848, 42.996532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942036, 32.810848, 43.472977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548599, 32.882782, 43.467125>,  <34.312538, 32.925941, 43.463612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548599, 32.882782, 43.467125>,  <34.942036, 32.810848, 43.472977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548599, 32.882782, 43.467125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050400, -0.195972, 0.979314,
		0.173249, 0.963978, 0.201819,
		-0.983588, 0.179837, -0.014633,
		34.253525, 32.936733, 43.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868561, 33.288067, 43.970192>,  <34.942036, 32.810848, 43.472977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868561, 33.288067, 43.970192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.503315, 33.127953, 43.939224>,  <34.284168, 33.031883, 43.920643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.503315, 33.127953, 43.939224>,  <34.868561, 33.288067, 43.970192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503315, 33.127953, 43.939224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010447, -0.212801, 0.977040,
		-0.407566, 0.891342, 0.198493,
		-0.913116, -0.400282, -0.077418,
		34.229382, 33.007870, 43.916000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479755, 33.537022, 44.557636>,  <34.868561, 33.288067, 43.970192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479755, 33.537022, 44.557636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.272926, 33.216866, 44.436310>,  <34.148827, 33.024773, 44.363514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.272926, 33.216866, 44.436310>,  <34.479755, 33.537022, 44.557636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272926, 33.216866, 44.436310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023647, -0.340877, 0.939810,
		-0.855613, 0.493126, 0.157333,
		-0.517076, -0.800393, -0.303320,
		34.117802, 32.976749, 44.345314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771019, 33.419479, 44.881943>,  <34.479755, 33.537022, 44.557636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771019, 33.419479, 44.881943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885311, 33.048454, 44.785618>,  <33.953884, 32.825840, 44.727825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885311, 33.048454, 44.785618>,  <33.771019, 33.419479, 44.881943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885311, 33.048454, 44.785618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123370, -0.284797, 0.950616,
		-0.950337, -0.241908, -0.195807,
		0.285727, -0.927562, -0.240808,
		33.971027, 32.770187, 44.713375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341682, 33.068806, 45.281490>,  <33.771019, 33.419479, 44.881943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341682, 33.068806, 45.281490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.597168, 32.776871, 45.184017>,  <33.750462, 32.601711, 45.125534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.597168, 32.776871, 45.184017>,  <33.341682, 33.068806, 45.281490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597168, 32.776871, 45.184017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029668, -0.339827, 0.940020,
		-0.768870, -0.593176, -0.238706,
		0.638716, -0.729835, -0.243685,
		33.788784, 32.557919, 45.110912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057293, 32.315971, 45.491550>,  <33.341682, 33.068806, 45.281490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057293, 32.315971, 45.491550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457264, 32.315701, 45.486889>,  <33.697247, 32.315536, 45.484093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457264, 32.315701, 45.486889>,  <33.057293, 32.315971, 45.491550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457264, 32.315701, 45.486889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009360, -0.549596, 0.835378,
		-0.006969, -0.835430, -0.549553,
		0.999932, -0.000678, -0.011650,
		33.757244, 32.315498, 45.483395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258644, 31.559065, 45.658958>,  <33.057293, 32.315971, 45.491550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258644, 31.559065, 45.658958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577995, 31.793362, 45.714809>,  <33.769608, 31.933939, 45.748318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577995, 31.793362, 45.714809>,  <33.258644, 31.559065, 45.658958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577995, 31.793362, 45.714809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160572, -0.430576, 0.888156,
		0.580348, -0.686668, -0.437817,
		0.798382, 0.585740, 0.139624,
		33.817509, 31.969084, 45.756695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718979, 31.128859, 45.993843>,  <33.258644, 31.559065, 45.658958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718979, 31.128859, 45.993843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856747, 31.495218, 46.076305>,  <33.939407, 31.715034, 46.125782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.856747, 31.495218, 46.076305>,  <33.718979, 31.128859, 45.993843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856747, 31.495218, 46.076305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096819, -0.253073, 0.962590,
		0.933808, -0.311579, -0.175841,
		0.344424, 0.915900, 0.206154,
		33.960075, 31.769989, 46.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306007, 30.999020, 46.485008>,  <33.718979, 31.128859, 45.993843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306007, 30.999020, 46.485008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.214958, 31.386473, 46.524876>,  <34.160328, 31.618946, 46.548798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.214958, 31.386473, 46.524876>,  <34.306007, 30.999020, 46.485008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214958, 31.386473, 46.524876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221987, -0.048040, 0.973865,
		0.948108, 0.243800, -0.204089,
		-0.227624, 0.968635, 0.099668,
		34.146671, 31.677063, 46.554775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010303, 31.529421, 46.601238>,  <34.306007, 30.999020, 46.485008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010303, 31.529421, 46.601238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.657341, 31.655062, 46.741348>,  <34.445564, 31.730446, 46.825413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.657341, 31.655062, 46.741348>,  <35.010303, 31.529421, 46.601238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657341, 31.655062, 46.741348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401120, 0.113177, 0.909007,
		0.245876, 0.942620, -0.225860,
		-0.882410, 0.314100, 0.350276,
		34.392616, 31.749292, 46.846432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203266, 31.653051, 47.161507>,  <35.010303, 31.529421, 46.601238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203266, 31.653051, 47.161507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.817276, 31.728182, 47.234768>,  <34.585682, 31.773260, 47.278725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.817276, 31.728182, 47.234768>,  <35.203266, 31.653051, 47.161507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817276, 31.728182, 47.234768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221718, 0.210704, 0.952074,
		0.140235, 0.959336, -0.244968,
		-0.964974, 0.187828, 0.183154,
		34.527782, 31.784531, 47.289715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236938, 32.249065, 47.566547>,  <35.203266, 31.653051, 47.161507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236938, 32.249065, 47.566547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875805, 32.089321, 47.630291>,  <34.659122, 31.993475, 47.668537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875805, 32.089321, 47.630291>,  <35.236938, 32.249065, 47.566547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875805, 32.089321, 47.630291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104158, 0.156444, 0.982179,
		-0.417174, 0.903347, -0.099647,
		-0.902838, -0.399361, 0.159355,
		34.604954, 31.969513, 47.678097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825405, 32.736256, 47.956509>,  <35.236938, 32.249065, 47.566547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825405, 32.736256, 47.956509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688652, 32.367462, 48.029247>,  <34.606602, 32.146187, 48.072891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688652, 32.367462, 48.029247>,  <34.825405, 32.736256, 47.956509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688652, 32.367462, 48.029247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081177, 0.163804, 0.983147,
		-0.936231, 0.350881, 0.018842,
		-0.341881, -0.921982, 0.181842,
		34.586086, 32.090866, 48.083801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992718, 33.170368, 47.376183>,  <34.825405, 32.736256, 47.956509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992718, 33.170368, 47.376183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.880444, 33.459663, 47.628574>,  <34.813080, 33.633240, 47.780010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.880444, 33.459663, 47.628574>,  <34.992718, 33.170368, 47.376183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880444, 33.459663, 47.628574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098386, 0.675628, -0.730648,
		-0.954745, -0.143002, -0.260794,
		-0.280684, 0.723241, 0.630983,
		34.796238, 33.676636, 47.817871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437393, 33.522594, 47.156250>,  <34.992718, 33.170368, 47.376183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437393, 33.522594, 47.156250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.641846, 33.766380, 47.398670>,  <34.764519, 33.912651, 47.544121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.641846, 33.766380, 47.398670>,  <34.437393, 33.522594, 47.156250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641846, 33.766380, 47.398670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038003, 0.688403, -0.724332,
		-0.858662, 0.393260, 0.328703,
		0.511131, 0.609465, 0.606051,
		34.795185, 33.949219, 47.580486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092327, 34.066006, 47.133705>,  <34.437393, 33.522594, 47.156250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092327, 34.066006, 47.133705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446941, 34.208115, 47.252254>,  <34.659710, 34.293381, 47.323383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446941, 34.208115, 47.252254>,  <34.092327, 34.066006, 47.133705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446941, 34.208115, 47.252254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066300, 0.731528, -0.678580,
		-0.457890, 0.581934, 0.672078,
		0.886533, 0.355274, 0.296377,
		34.712902, 34.314697, 47.341167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977028, 34.797073, 47.242355>,  <34.092327, 34.066006, 47.133705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977028, 34.797073, 47.242355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364464, 34.725670, 47.173115>,  <34.596928, 34.682827, 47.131569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364464, 34.725670, 47.173115>,  <33.977028, 34.797073, 47.242355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364464, 34.725670, 47.173115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014581, 0.735741, -0.677106,
		0.248227, 0.653315, 0.715236,
		0.968592, -0.178505, -0.173105,
		34.655041, 34.672119, 47.121181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211197, 35.335079, 47.062183>,  <33.977028, 34.797073, 47.242355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211197, 35.335079, 47.062183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552826, 35.160465, 46.949047>,  <34.757805, 35.055698, 46.881165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552826, 35.160465, 46.949047>,  <34.211197, 35.335079, 47.062183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552826, 35.160465, 46.949047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066751, 0.631254, -0.772699,
		0.515853, 0.641061, 0.568275,
		0.854073, -0.436532, -0.282843,
		34.809048, 35.029507, 46.864193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814289, 35.856407, 46.906715>,  <34.211197, 35.335079, 47.062183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814289, 35.856407, 46.906715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.877121, 35.525082, 46.691601>,  <34.914822, 35.326286, 46.562531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.877121, 35.525082, 46.691601>,  <34.814289, 35.856407, 46.906715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877121, 35.525082, 46.691601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003960, 0.545073, -0.838379,
		0.987578, 0.129565, 0.088902,
		0.157082, -0.828317, -0.537789,
		34.924244, 35.276588, 46.530266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368477, 35.982056, 46.414295>,  <34.814289, 35.856407, 46.906715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368477, 35.982056, 46.414295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.220425, 35.665924, 46.218998>,  <35.131592, 35.476246, 46.101818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.220425, 35.665924, 46.218998>,  <35.368477, 35.982056, 46.414295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220425, 35.665924, 46.218998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122659, 0.562548, -0.817615,
		0.920847, -0.242735, -0.305157,
		-0.370130, -0.790328, -0.488247,
		35.109386, 35.428825, 46.072525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710125, 35.960716, 45.733433>,  <35.368477, 35.982056, 46.414295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710125, 35.960716, 45.733433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.369656, 35.756260, 45.685707>,  <35.165375, 35.633587, 45.657070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.369656, 35.756260, 45.685707>,  <35.710125, 35.960716, 45.733433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369656, 35.756260, 45.685707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064772, 0.327866, -0.942501,
		0.520872, -0.794504, -0.312179,
		-0.851174, -0.511142, -0.119314,
		35.114304, 35.602917, 45.649914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380871, 36.065880, 45.426254>,  <35.710125, 35.960716, 45.733433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380871, 36.065880, 45.426254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611958, 36.370644, 45.543385>,  <36.750610, 36.553501, 45.613663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611958, 36.370644, 45.543385>,  <36.380871, 36.065880, 45.426254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611958, 36.370644, 45.543385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006860, -0.354204, 0.935143,
		0.816212, -0.542252, -0.199402,
		0.577712, 0.761907, 0.292825,
		36.785271, 36.599216, 45.631233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848297, 35.662952, 45.976070>,  <36.380871, 36.065880, 45.426254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848297, 35.662952, 45.976070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831310, 36.058292, 46.034531>,  <36.821117, 36.295498, 46.069607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831310, 36.058292, 46.034531>,  <36.848297, 35.662952, 45.976070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831310, 36.058292, 46.034531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308120, -0.126193, 0.942941,
		0.950399, 0.085078, -0.299171,
		-0.042470, 0.988351, 0.146148,
		36.818569, 36.354797, 46.078377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496555, 35.797924, 46.195988>,  <36.848297, 35.662952, 45.976070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496555, 35.797924, 46.195988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.246212, 36.087330, 46.312481>,  <37.096004, 36.260975, 46.382378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.246212, 36.087330, 46.312481>,  <37.496555, 35.797924, 46.195988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246212, 36.087330, 46.312481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287301, -0.133282, 0.948522,
		0.725089, 0.677317, -0.124451,
		-0.625863, 0.723518, 0.291235,
		37.058453, 36.304386, 46.399853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840668, 36.169090, 46.697788>,  <37.496555, 35.797924, 46.195988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840668, 36.169090, 46.697788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.454227, 36.255142, 46.754871>,  <37.222363, 36.306774, 46.789120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.454227, 36.255142, 46.754871>,  <37.840668, 36.169090, 46.697788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454227, 36.255142, 46.754871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124226, -0.097183, 0.987483,
		0.226309, 0.971737, 0.067163,
		-0.966101, 0.215133, 0.142708,
		37.164398, 36.319683, 46.797684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788986, 36.792740, 47.096348>,  <37.840668, 36.169090, 46.697788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788986, 36.792740, 47.096348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.444286, 36.597118, 47.150341>,  <37.237465, 36.479748, 47.182735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.444286, 36.597118, 47.150341>,  <37.788986, 36.792740, 47.096348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444286, 36.597118, 47.150341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198278, -0.079751, 0.976896,
		-0.466986, 0.868602, 0.165693,
		-0.861748, -0.489050, 0.134982,
		37.185760, 36.450405, 47.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491756, 37.097260, 47.716007>,  <37.788986, 36.792740, 47.096348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491756, 37.097260, 47.716007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.317123, 36.742481, 47.655708>,  <37.212345, 36.529613, 47.619530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.317123, 36.742481, 47.655708>,  <37.491756, 37.097260, 47.716007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317123, 36.742481, 47.655708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033580, -0.151377, 0.987905,
		-0.899038, 0.436363, 0.036305,
		-0.436582, -0.886945, -0.150747,
		37.186150, 36.476398, 47.610485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875187, 37.089207, 48.247528>,  <37.491756, 37.097260, 47.716007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875187, 37.089207, 48.247528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985596, 36.719139, 48.143318>,  <37.051842, 36.497097, 48.080791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985596, 36.719139, 48.143318>,  <36.875187, 37.089207, 48.247528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985596, 36.719139, 48.143318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043477, -0.258764, 0.964962,
		-0.960168, -0.277675, -0.031200,
		0.276019, -0.925169, -0.260529,
		37.068401, 36.441589, 48.065159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413414, 36.657337, 48.721436>,  <36.875187, 37.089207, 48.247528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413414, 36.657337, 48.721436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683784, 36.386898, 48.604130>,  <36.846008, 36.224632, 48.533745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683784, 36.386898, 48.604130>,  <36.413414, 36.657337, 48.721436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683784, 36.386898, 48.604130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099012, -0.311016, 0.945233,
		-0.730284, -0.667949, -0.143283,
		0.675931, -0.676102, -0.293265,
		36.886562, 36.184067, 48.516151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219467, 36.002113, 49.055183>,  <36.413414, 36.657337, 48.721436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219467, 36.002113, 49.055183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.609039, 35.970337, 48.970188>,  <36.842781, 35.951271, 48.919193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.609039, 35.970337, 48.970188>,  <36.219467, 36.002113, 49.055183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609039, 35.970337, 48.970188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181160, -0.291395, 0.939292,
		-0.136533, -0.953299, -0.269408,
		0.973930, -0.079438, -0.212485,
		36.901218, 35.946507, 48.906445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.618580, 38.357929, 32.718170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863201, 38.127193, 32.934780>,  <37.009975, 37.988750, 33.064747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863201, 38.127193, 32.934780>,  <36.618580, 38.357929, 32.718170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863201, 38.127193, 32.934780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523685, 0.217947, 0.823561,
		-0.593089, -0.787243, -0.168798,
		0.611554, -0.576842, 0.541530,
		37.046669, 37.954140, 33.097240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247093, 38.015636, 33.249847>,  <36.618580, 38.357929, 32.718170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247093, 38.015636, 33.249847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625278, 38.025921, 33.379730>,  <36.852192, 38.032089, 33.457661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625278, 38.025921, 33.379730>,  <36.247093, 38.015636, 33.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625278, 38.025921, 33.379730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317148, 0.299829, 0.899733,
		-0.074226, -0.953646, 0.291631,
		0.945467, 0.025706, 0.324703,
		36.908920, 38.033634, 33.477142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219017, 37.661697, 33.915482>,  <36.247093, 38.015636, 33.249847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219017, 37.661697, 33.915482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563049, 37.865749, 33.917965>,  <36.769466, 37.988178, 33.919453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563049, 37.865749, 33.917965>,  <36.219017, 37.661697, 33.915482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563049, 37.865749, 33.917965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156877, 0.252884, 0.954693,
		0.485448, -0.822082, 0.297527,
		0.860075, 0.510129, 0.006204,
		36.821072, 38.018787, 33.919827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627716, 37.467472, 34.492107>,  <36.219017, 37.661697, 33.915482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627716, 37.467472, 34.492107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783329, 37.827045, 34.411545>,  <36.876698, 38.042789, 34.363205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783329, 37.827045, 34.411545>,  <36.627716, 37.467472, 34.492107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783329, 37.827045, 34.411545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049537, 0.238730, 0.969822,
		0.919892, -0.367314, 0.137404,
		0.389032, 0.898937, -0.201411,
		36.900040, 38.096725, 34.351120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282314, 37.602829, 34.976547>,  <36.627716, 37.467472, 34.492107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282314, 37.602829, 34.976547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150543, 37.963203, 34.863556>,  <37.071480, 38.179428, 34.795761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150543, 37.963203, 34.863556>,  <37.282314, 37.602829, 34.976547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150543, 37.963203, 34.863556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063983, 0.319795, 0.945324,
		0.942010, 0.293342, -0.162994,
		-0.329427, 0.900934, -0.282482,
		37.051716, 38.233482, 34.778812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675598, 38.048161, 35.314301>,  <37.282314, 37.602829, 34.976547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675598, 38.048161, 35.314301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346729, 38.256004, 35.221317>,  <37.149410, 38.380711, 35.165527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346729, 38.256004, 35.221317>,  <37.675598, 38.048161, 35.314301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346729, 38.256004, 35.221317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031553, 0.366144, 0.930023,
		0.568367, 0.771972, -0.284637,
		-0.822170, 0.519614, -0.232463,
		37.100079, 38.411888, 35.151577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752293, 38.808163, 35.655758>,  <37.675598, 38.048161, 35.314301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752293, 38.808163, 35.655758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364029, 38.777027, 35.564758>,  <37.131069, 38.758347, 35.510159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364029, 38.777027, 35.564758>,  <37.752293, 38.808163, 35.655758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364029, 38.777027, 35.564758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237811, 0.450484, 0.860529,
		0.035497, 0.889384, -0.455780,
		-0.970663, -0.077843, -0.227497,
		37.072830, 38.753674, 35.496510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437496, 39.388058, 35.961315>,  <37.752293, 38.808163, 35.655758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437496, 39.388058, 35.961315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125282, 39.139267, 35.936333>,  <36.937954, 38.989990, 35.921341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125282, 39.139267, 35.936333>,  <37.437496, 39.388058, 35.961315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125282, 39.139267, 35.936333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300609, 0.285871, 0.909897,
		-0.548082, 0.728985, -0.410106,
		-0.780539, -0.621980, -0.062459,
		36.891121, 38.952675, 35.917595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030506, 39.706955, 36.475475>,  <37.437496, 39.388058, 35.961315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030506, 39.706955, 36.475475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834583, 39.373901, 36.372093>,  <36.717030, 39.174068, 36.310062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834583, 39.373901, 36.372093>,  <37.030506, 39.706955, 36.475475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834583, 39.373901, 36.372093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438252, -0.021127, 0.898603,
		-0.753671, 0.553415, -0.354557,
		-0.489810, -0.832637, -0.258458,
		36.687641, 39.124111, 36.294556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272968, 39.828426, 36.649555>,  <37.030506, 39.706955, 36.475475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272968, 39.828426, 36.649555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323833, 39.431744, 36.641998>,  <36.354351, 39.193733, 36.637466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323833, 39.431744, 36.641998>,  <36.272968, 39.828426, 36.649555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323833, 39.431744, 36.641998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397493, -0.068396, 0.915053,
		-0.908752, -0.108850, -0.402892,
		0.127160, -0.991703, -0.018888,
		36.361980, 39.134232, 36.636333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703663, 39.530647, 36.891144>,  <36.272968, 39.828426, 36.649555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703663, 39.530647, 36.891144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985760, 39.256390, 36.963272>,  <36.155018, 39.091835, 37.006550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985760, 39.256390, 36.963272>,  <35.703663, 39.530647, 36.891144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985760, 39.256390, 36.963272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183120, 0.069543, 0.980628,
		-0.684905, -0.724604, -0.076511,
		0.705247, -0.685647, 0.180320,
		36.197334, 39.050697, 37.017368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511257, 39.128269, 37.412666>,  <35.703663, 39.530647, 36.891144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511257, 39.128269, 37.412666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902412, 39.047382, 37.434006>,  <36.137104, 38.998848, 37.446808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902412, 39.047382, 37.434006>,  <35.511257, 39.128269, 37.412666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902412, 39.047382, 37.434006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079601, -0.124020, 0.989082,
		-0.193396, -0.971456, -0.137374,
		0.977886, -0.202220, 0.053344,
		36.195778, 38.986717, 37.450008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232323, 38.437817, 37.298973>,  <35.511257, 39.128269, 37.412666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232323, 38.437817, 37.298973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845165, 38.396370, 37.390579>,  <34.612869, 38.371502, 37.445541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845165, 38.396370, 37.390579>,  <35.232323, 38.437817, 37.298973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845165, 38.396370, 37.390579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243734, 0.164081, -0.955862,
		0.061459, -0.980991, -0.184066,
		-0.967893, -0.103609, 0.229016,
		34.554798, 38.365288, 37.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020187, 38.127876, 36.748924>,  <35.232323, 38.437817, 37.298973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020187, 38.127876, 36.748924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672390, 38.209145, 36.929016>,  <34.463711, 38.257904, 37.037071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672390, 38.209145, 36.929016>,  <35.020187, 38.127876, 36.748924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672390, 38.209145, 36.929016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471007, -0.066495, -0.879620,
		-0.148774, -0.976883, 0.153511,
		-0.869494, 0.203169, 0.450226,
		34.411541, 38.270096, 37.064083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471832, 37.589149, 36.582790>,  <35.020187, 38.127876, 36.748924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471832, 37.589149, 36.582790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290424, 37.938335, 36.654636>,  <34.181580, 38.147846, 36.697742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290424, 37.938335, 36.654636>,  <34.471832, 37.589149, 36.582790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290424, 37.938335, 36.654636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514640, -0.091969, -0.852460,
		-0.727646, -0.479040, 0.490970,
		-0.453516, 0.872962, 0.179612,
		34.154369, 38.200226, 36.708519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718140, 37.448578, 36.539997>,  <34.471832, 37.589149, 36.582790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718140, 37.448578, 36.539997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800838, 37.831631, 36.459808>,  <33.850456, 38.061462, 36.411697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800838, 37.831631, 36.459808>,  <33.718140, 37.448578, 36.539997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800838, 37.831631, 36.459808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494126, -0.074644, -0.866180,
		-0.844450, 0.278137, 0.457760,
		0.206748, 0.957637, -0.200468,
		33.862862, 38.118923, 36.399670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144257, 37.669701, 36.344303>,  <33.718140, 37.448578, 36.539997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144257, 37.669701, 36.344303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370842, 37.953224, 36.176155>,  <33.506794, 38.123337, 36.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370842, 37.953224, 36.176155>,  <33.144257, 37.669701, 36.344303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370842, 37.953224, 36.176155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652666, 0.074439, -0.753980,
		-0.503137, 0.701461, 0.504783,
		0.566463, 0.708810, -0.420367,
		33.540779, 38.165867, 36.050045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713535, 38.171528, 36.192135>,  <33.144257, 37.669701, 36.344303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713535, 38.171528, 36.192135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023388, 38.232872, 35.946720>,  <33.209297, 38.269680, 35.799473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023388, 38.232872, 35.946720>,  <32.713535, 38.171528, 36.192135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023388, 38.232872, 35.946720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630217, 0.106373, -0.769098,
		-0.052688, 0.982428, 0.179052,
		0.774630, 0.153364, -0.613538,
		33.255775, 38.278881, 35.762657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526276, 38.838913, 35.755436>,  <32.713535, 38.171528, 36.192135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526276, 38.838913, 35.755436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805710, 38.628193, 35.561749>,  <32.973370, 38.501762, 35.445538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805710, 38.628193, 35.561749>,  <32.526276, 38.838913, 35.755436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805710, 38.628193, 35.561749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447771, 0.205988, -0.870097,
		0.558109, 0.824654, -0.091985,
		0.698581, -0.526797, -0.484220,
		33.015285, 38.470154, 35.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613369, 39.275837, 35.183067>,  <32.526276, 38.838913, 35.755436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613369, 39.275837, 35.183067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755791, 38.919331, 35.070728>,  <32.841244, 38.705429, 35.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755791, 38.919331, 35.070728>,  <32.613369, 39.275837, 35.183067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755791, 38.919331, 35.070728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562994, 0.035278, -0.825708,
		0.745830, 0.452114, -0.489214,
		0.356056, -0.891262, -0.280848,
		32.862606, 38.651951, 34.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827133, 39.280876, 34.365524>,  <32.613369, 39.275837, 35.183067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827133, 39.280876, 34.365524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792244, 38.897102, 34.472771>,  <32.771309, 38.666840, 34.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792244, 38.897102, 34.472771>,  <32.827133, 39.280876, 34.365524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792244, 38.897102, 34.472771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650141, -0.149097, -0.745041,
		0.754790, -0.239299, -0.610760,
		-0.087225, -0.959430, 0.268115,
		32.766075, 38.609272, 34.553204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856998, 38.932411, 33.719513>,  <32.827133, 39.280876, 34.365524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856998, 38.932411, 33.719513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670750, 38.689514, 33.977024>,  <32.558998, 38.543777, 34.131531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670750, 38.689514, 33.977024>,  <32.856998, 38.932411, 33.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670750, 38.689514, 33.977024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703848, -0.186862, -0.685333,
		0.536461, -0.772229, -0.340399,
		-0.465626, -0.607244, 0.643776,
		32.531063, 38.507339, 34.170158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698032, 38.351673, 33.317932>,  <32.856998, 38.932411, 33.719513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698032, 38.351673, 33.317932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455200, 38.338203, 33.635502>,  <32.309502, 38.330124, 33.826046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455200, 38.338203, 33.635502>,  <32.698032, 38.351673, 33.317932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455200, 38.338203, 33.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768255, -0.230453, -0.597223,
		0.203073, -0.972501, 0.114034,
		-0.607079, -0.033672, 0.793927,
		32.273075, 38.328102, 33.873680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224293, 37.910225, 33.020771>,  <32.698032, 38.351673, 33.317932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224293, 37.910225, 33.020771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048233, 38.033817, 33.358006>,  <31.942596, 38.107971, 33.560349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048233, 38.033817, 33.358006>,  <32.224293, 37.910225, 33.020771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048233, 38.033817, 33.358006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897919, -0.148884, -0.414215,
		-0.002459, -0.939345, 0.342966,
		-0.440153, 0.308975, 0.843090,
		31.916187, 38.126511, 33.610931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704187, 37.388371, 33.233437>,  <32.224293, 37.910225, 33.020771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704187, 37.388371, 33.233437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595930, 37.750744, 33.363689>,  <31.530975, 37.968166, 33.441841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595930, 37.750744, 33.363689>,  <31.704187, 37.388371, 33.233437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595930, 37.750744, 33.363689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890750, -0.107369, -0.441629,
		-0.365124, -0.409579, 0.836020,
		-0.270644, 0.905934, 0.325630,
		31.514736, 38.022526, 33.461380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024527, 37.310432, 33.460861>,  <31.704187, 37.388371, 33.233437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024527, 37.310432, 33.460861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038954, 37.704899, 33.396137>,  <31.047611, 37.941578, 33.357304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038954, 37.704899, 33.396137>,  <31.024527, 37.310432, 33.460861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038954, 37.704899, 33.396137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956016, -0.013112, -0.293022,
		-0.291089, 0.165265, 0.942314,
		0.036070, 0.986162, -0.161813,
		31.049774, 38.000748, 33.347595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035984, 36.715523, 33.821636>,  <31.024527, 37.310432, 33.460861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035984, 36.715523, 33.821636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944044, 36.366814, 33.648575>,  <30.888880, 36.157589, 33.544739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944044, 36.366814, 33.648575>,  <31.035984, 36.715523, 33.821636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944044, 36.366814, 33.648575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472842, -0.488588, 0.733282,
		-0.850641, -0.036031, 0.524511,
		-0.229849, -0.871771, -0.432649,
		30.875090, 36.105282, 33.518780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732143, 36.285805, 34.313148>,  <31.035984, 36.715523, 33.821636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732143, 36.285805, 34.313148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918785, 36.065350, 34.036446>,  <31.030769, 35.933075, 33.870422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918785, 36.065350, 34.036446>,  <30.732143, 36.285805, 34.313148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918785, 36.065350, 34.036446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612310, -0.363102, 0.702306,
		-0.638246, -0.751269, 0.168042,
		0.466604, -0.551137, -0.691757,
		31.058767, 35.900009, 33.828918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571030, 35.693951, 34.398151>,  <30.732143, 36.285805, 34.313148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571030, 35.693951, 34.398151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937651, 35.736938, 34.244072>,  <31.157623, 35.762730, 34.151623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937651, 35.736938, 34.244072>,  <30.571030, 35.693951, 34.398151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937651, 35.736938, 34.244072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399763, -0.220030, 0.889818,
		0.010874, -0.969555, -0.244632,
		0.916554, 0.107471, -0.385200,
		31.212616, 35.769180, 34.128513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910997, 35.109417, 34.547562>,  <30.571030, 35.693951, 34.398151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910997, 35.109417, 34.547562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218885, 35.355274, 34.478569>,  <31.403618, 35.502789, 34.437172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218885, 35.355274, 34.478569>,  <30.910997, 35.109417, 34.547562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218885, 35.355274, 34.478569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458213, -0.343805, 0.819658,
		0.444493, -0.709941, -0.546269,
		0.769719, 0.614640, -0.172485,
		31.449800, 35.539665, 34.426823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440903, 34.724251, 34.708687>,  <30.910997, 35.109417, 34.547562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440903, 34.724251, 34.708687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600803, 35.089146, 34.744507>,  <31.696743, 35.308083, 34.765999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600803, 35.089146, 34.744507>,  <31.440903, 34.724251, 34.708687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600803, 35.089146, 34.744507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467550, -0.286960, 0.836092,
		0.788413, -0.292360, -0.541230,
		0.399752, 0.912238, 0.089550,
		31.720730, 35.362816, 34.771374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182674, 34.588467, 34.687862>,  <31.440903, 34.724251, 34.708687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182674, 34.588467, 34.687862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099369, 34.930077, 34.878555>,  <32.049385, 35.135040, 34.992970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099369, 34.930077, 34.878555>,  <32.182674, 34.588467, 34.687862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099369, 34.930077, 34.878555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437645, -0.354530, 0.826302,
		0.874695, 0.380729, -0.299923,
		-0.208265, 0.854022, 0.476730,
		32.036888, 35.186283, 35.021576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771542, 34.753025, 35.113255>,  <32.182674, 34.588467, 34.687862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771542, 34.753025, 35.113255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472694, 34.976009, 35.258060>,  <32.293385, 35.109798, 35.344944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472694, 34.976009, 35.258060>,  <32.771542, 34.753025, 35.113255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472694, 34.976009, 35.258060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360314, -0.118015, 0.925336,
		0.558559, 0.821774, -0.112688,
		-0.747118, 0.557458, 0.362015,
		32.248558, 35.143246, 35.366665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137573, 35.220123, 35.720997>,  <32.771542, 34.753025, 35.113255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137573, 35.220123, 35.720997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745689, 35.265118, 35.787354>,  <32.510559, 35.292114, 35.827168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745689, 35.265118, 35.787354>,  <33.137573, 35.220123, 35.720997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745689, 35.265118, 35.787354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152881, -0.115825, 0.981434,
		0.129615, 0.986879, 0.096277,
		-0.979708, 0.112489, 0.165887,
		32.451778, 35.298866, 35.837120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959869, 35.694637, 36.316128>,  <33.137573, 35.220123, 35.720997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959869, 35.694637, 36.316128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629383, 35.470360, 36.294277>,  <32.431091, 35.335793, 36.281166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629383, 35.470360, 36.294277>,  <32.959869, 35.694637, 36.316128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629383, 35.470360, 36.294277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026122, -0.058739, 0.997932,
		-0.562746, 0.825935, 0.033885,
		-0.826217, -0.560697, -0.054630,
		32.381519, 35.302151, 36.277889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651352, 35.887127, 36.820770>,  <32.959869, 35.694637, 36.316128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651352, 35.887127, 36.820770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467068, 35.542233, 36.736584>,  <32.356499, 35.335297, 36.686073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467068, 35.542233, 36.736584>,  <32.651352, 35.887127, 36.820770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467068, 35.542233, 36.736584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152458, -0.156727, 0.975804,
		-0.874360, 0.481647, -0.059250,
		-0.460707, -0.862237, -0.210467,
		32.328857, 35.283562, 36.673443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909960, 35.925613, 37.115433>,  <32.651352, 35.887127, 36.820770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909960, 35.925613, 37.115433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022175, 35.543823, 37.074879>,  <32.089504, 35.314751, 37.050549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022175, 35.543823, 37.074879>,  <31.909960, 35.925613, 37.115433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022175, 35.543823, 37.074879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177072, -0.155275, 0.971872,
		-0.943369, -0.254692, -0.212571,
		0.280535, -0.954475, -0.101382,
		32.106335, 35.257481, 37.044464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558613, 35.575626, 37.615490>,  <31.909960, 35.925613, 37.115433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558613, 35.575626, 37.615490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851126, 35.322437, 37.513851>,  <32.026634, 35.170525, 37.452869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851126, 35.322437, 37.513851>,  <31.558613, 35.575626, 37.615490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851126, 35.322437, 37.513851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076115, -0.294472, 0.952624,
		-0.677813, -0.715979, -0.167163,
		0.731284, -0.632977, -0.254094,
		32.070511, 35.132545, 37.437622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448309, 34.990246, 38.047451>,  <31.558613, 35.575626, 37.615490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448309, 34.990246, 38.047451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819860, 34.886059, 37.942120>,  <32.042789, 34.823547, 37.878922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819860, 34.886059, 37.942120>,  <31.448309, 34.990246, 38.047451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819860, 34.886059, 37.942120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137740, -0.417056, 0.898383,
		-0.343818, -0.870761, -0.351518,
		0.928879, -0.260462, -0.263330,
		32.098522, 34.807919, 37.863121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544756, 34.265518, 38.197113>,  <31.448309, 34.990246, 38.047451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544756, 34.265518, 38.197113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911606, 34.424801, 38.190060>,  <32.131714, 34.520370, 38.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911606, 34.424801, 38.190060>,  <31.544756, 34.265518, 38.197113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911606, 34.424801, 38.190060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179342, -0.372722, 0.910448,
		0.355978, -0.838156, -0.413249,
		0.917124, 0.398212, -0.017635,
		32.186745, 34.544266, 38.184769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103409, 33.757633, 38.236485>,  <31.544756, 34.265518, 38.197113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103409, 33.757633, 38.236485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297737, 34.090614, 38.343067>,  <32.414333, 34.290405, 38.407017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297737, 34.090614, 38.343067>,  <32.103409, 33.757633, 38.236485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297737, 34.090614, 38.343067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391202, -0.479695, 0.785400,
		0.781627, -0.277326, -0.558704,
		0.485819, 0.832456, 0.266452,
		32.443481, 34.340351, 38.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620956, 33.434650, 38.520145>,  <32.103409, 33.757633, 38.236485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620956, 33.434650, 38.520145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618118, 33.814545, 38.645336>,  <32.616417, 34.042480, 38.720451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618118, 33.814545, 38.645336>,  <32.620956, 33.434650, 38.520145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618118, 33.814545, 38.645336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498988, -0.267873, 0.824169,
		0.866580, 0.162017, -0.472006,
		-0.007092, 0.949734, 0.312978,
		32.615990, 34.099464, 38.739231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298672, 33.620808, 38.711109>,  <32.620956, 33.434650, 38.520145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298672, 33.620808, 38.711109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056992, 33.872902, 38.906147>,  <32.911983, 34.024158, 39.023170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056992, 33.872902, 38.906147>,  <33.298672, 33.620808, 38.711109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056992, 33.872902, 38.906147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454402, -0.230158, 0.860550,
		0.654573, 0.741506, -0.147320,
		-0.604196, 0.630235, 0.487597,
		32.875732, 34.061974, 39.052425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733662, 33.874775, 39.159393>,  <33.298672, 33.620808, 38.711109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733662, 33.874775, 39.159393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373199, 33.954899, 39.313168>,  <33.156921, 34.002975, 39.405434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373199, 33.954899, 39.313168>,  <33.733662, 33.874775, 39.159393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373199, 33.954899, 39.313168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384972, -0.037897, 0.922150,
		0.199286, 0.978999, -0.042963,
		-0.901156, 0.200311, 0.384440,
		33.102852, 34.014992, 39.428501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805862, 34.343300, 39.691914>,  <33.733662, 33.874775, 39.159393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805862, 34.343300, 39.691914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435482, 34.237644, 39.799873>,  <33.213253, 34.174252, 39.864651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435482, 34.237644, 39.799873>,  <33.805862, 34.343300, 39.691914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435482, 34.237644, 39.799873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261785, 0.066164, 0.962856,
		-0.272187, 0.962212, 0.007883,
		-0.925950, -0.264141, 0.269901,
		33.157696, 34.158401, 39.880844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504913, 34.821911, 40.263535>,  <33.805862, 34.343300, 39.691914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504913, 34.821911, 40.263535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307312, 34.475994, 40.299530>,  <33.188751, 34.268444, 40.321129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307312, 34.475994, 40.299530>,  <33.504913, 34.821911, 40.263535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307312, 34.475994, 40.299530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183348, -0.002440, 0.983045,
		-0.849909, 0.502126, 0.159763,
		-0.494003, -0.864791, 0.089990,
		33.159111, 34.216557, 40.326527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297855, 34.805779, 40.908440>,  <33.504913, 34.821911, 40.263535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297855, 34.805779, 40.908440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241837, 34.420177, 40.818035>,  <33.208225, 34.188816, 40.763794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241837, 34.420177, 40.818035>,  <33.297855, 34.805779, 40.908440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241837, 34.420177, 40.818035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111262, -0.242132, 0.963843,
		-0.983874, 0.109833, 0.141166,
		-0.140043, -0.964006, -0.226007,
		33.199825, 34.130974, 40.750233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735577, 34.488808, 41.467827>,  <33.297855, 34.805779, 40.908440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735577, 34.488808, 41.467827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917564, 34.181873, 41.287075>,  <33.026756, 33.997711, 41.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917564, 34.181873, 41.287075>,  <32.735577, 34.488808, 41.467827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917564, 34.181873, 41.287075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133500, -0.442938, 0.886557,
		-0.880443, -0.463683, -0.099085,
		0.454970, -0.767335, -0.451884,
		33.054054, 33.951672, 41.151508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427120, 33.849384, 41.690388>,  <32.735577, 34.488808, 41.467827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427120, 33.849384, 41.690388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782238, 33.734413, 41.546608>,  <32.995308, 33.665428, 41.460339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782238, 33.734413, 41.546608>,  <32.427120, 33.849384, 41.690388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782238, 33.734413, 41.546608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179326, -0.503252, 0.845328,
		-0.423866, -0.814937, -0.395241,
		0.887795, -0.287429, -0.359451,
		33.048576, 33.648186, 41.438774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538166, 33.250385, 41.982056>,  <32.427120, 33.849384, 41.690388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538166, 33.250385, 41.982056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897728, 33.343945, 41.833858>,  <33.113464, 33.400078, 41.744942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897728, 33.343945, 41.833858>,  <32.538166, 33.250385, 41.982056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897728, 33.343945, 41.833858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436217, -0.556997, 0.706731,
		-0.041060, -0.796898, -0.602717,
		0.898904, 0.233897, -0.370491,
		33.167400, 33.414112, 41.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983681, 32.569519, 42.080864>,  <32.538166, 33.250385, 41.982056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983681, 32.569519, 42.080864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223206, 32.883171, 42.015663>,  <33.366920, 33.071362, 41.976543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223206, 32.883171, 42.015663>,  <32.983681, 32.569519, 42.080864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223206, 32.883171, 42.015663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670673, -0.379706, 0.637198,
		0.437750, -0.490883, -0.753265,
		0.598809, 0.784128, -0.163006,
		33.402847, 33.118408, 41.966763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586845, 32.278690, 42.131058>,  <32.983681, 32.569519, 42.080864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586845, 32.278690, 42.131058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664761, 32.667145, 42.186134>,  <33.711510, 32.900215, 42.219181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664761, 32.667145, 42.186134>,  <33.586845, 32.278690, 42.131058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664761, 32.667145, 42.186134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712539, -0.236577, 0.660545,
		0.674052, -0.030554, -0.738052,
		0.194789, 0.971132, 0.137694,
		33.723198, 32.958485, 42.227444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249756, 32.286686, 42.323185>,  <33.586845, 32.278690, 42.131058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249756, 32.286686, 42.323185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133533, 32.645531, 42.456314>,  <34.063801, 32.860836, 42.536194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133533, 32.645531, 42.456314>,  <34.249756, 32.286686, 42.323185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133533, 32.645531, 42.456314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513497, -0.147313, 0.845352,
		0.807403, 0.416525, -0.417861,
		-0.290554, 0.897110, 0.332825,
		34.046368, 32.914665, 42.556160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803005, 32.706696, 42.537384>,  <34.249756, 32.286686, 42.323185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803005, 32.706696, 42.537384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468277, 32.818390, 42.725750>,  <34.267441, 32.885406, 42.838772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468277, 32.818390, 42.725750>,  <34.803005, 32.706696, 42.537384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468277, 32.818390, 42.725750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433040, -0.188698, 0.881402,
		0.334980, 0.941499, 0.036986,
		-0.836818, 0.279235, 0.470917,
		34.217232, 32.902161, 42.867023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309937, 33.153866, 42.011749>,  <34.803005, 32.706696, 42.537384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309937, 33.153866, 42.011749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628693, 32.927021, 42.095043>,  <35.819946, 32.790916, 42.145020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628693, 32.927021, 42.095043>,  <35.309937, 33.153866, 42.011749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628693, 32.927021, 42.095043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346145, 0.146118, -0.926732,
		0.495131, 0.810579, 0.312741,
		0.796887, -0.567108, 0.208230,
		35.867760, 32.756889, 42.157513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039867, 33.492329, 41.872952>,  <35.309937, 33.153866, 42.011749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039867, 33.492329, 41.872952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105186, 33.097713, 41.876534>,  <36.144379, 32.860943, 41.878681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105186, 33.097713, 41.876534>,  <36.039867, 33.492329, 41.872952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105186, 33.097713, 41.876534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331031, 0.046242, -0.942486,
		0.929383, 0.156866, 0.334126,
		0.163295, -0.986537, 0.008951,
		36.154175, 32.801754, 41.879219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626202, 33.347507, 41.533989>,  <36.039867, 33.492329, 41.872952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626202, 33.347507, 41.533989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408661, 33.014473, 41.491997>,  <36.278137, 32.814651, 41.466801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408661, 33.014473, 41.491997>,  <36.626202, 33.347507, 41.533989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408661, 33.014473, 41.491997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284629, -0.065335, -0.956409,
		0.789435, -0.550027, 0.272512,
		-0.543855, -0.832587, -0.104976,
		36.245502, 32.764698, 41.460503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030380, 32.946251, 41.057232>,  <36.626202, 33.347507, 41.533989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030380, 32.946251, 41.057232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687752, 32.742527, 41.024021>,  <36.482174, 32.620293, 41.004093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687752, 32.742527, 41.024021>,  <37.030380, 32.946251, 41.057232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687752, 32.742527, 41.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088795, 0.013030, -0.995965,
		0.508336, -0.860485, 0.034063,
		-0.856568, -0.509310, -0.083031,
		36.430782, 32.589733, 40.999111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156120, 32.376110, 40.681019>,  <37.030380, 32.946251, 41.057232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156120, 32.376110, 40.681019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774319, 32.490555, 40.647408>,  <36.545238, 32.559219, 40.627243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774319, 32.490555, 40.647408>,  <37.156120, 32.376110, 40.681019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774319, 32.490555, 40.647408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147429, 0.207861, -0.966984,
		-0.259196, -0.935380, -0.240585,
		-0.954506, 0.286107, -0.084025,
		36.487968, 32.576385, 40.622200>
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
