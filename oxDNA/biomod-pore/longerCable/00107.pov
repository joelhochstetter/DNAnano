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
	<24.553669, 35.010956, 34.879940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265322, 34.797932, 35.057358>,  <24.092314, 34.670116, 35.163807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265322, 34.797932, 35.057358>,  <24.553669, 35.010956, 34.879940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265322, 34.797932, 35.057358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039336, 0.607497, 0.793347,
		-0.691957, 0.589345, -0.416975,
		-0.720867, -0.532560, 0.443544,
		24.049061, 34.638165, 35.190422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934301, 35.355312, 35.052036>,  <24.553669, 35.010956, 34.879940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934301, 35.355312, 35.052036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.056097, 35.073235, 35.308155>,  <24.129175, 34.903988, 35.461826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.056097, 35.073235, 35.308155>,  <23.934301, 35.355312, 35.052036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.056097, 35.073235, 35.308155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220817, 0.706164, 0.672734,
		-0.926567, -0.063451, 0.370739,
		0.304489, -0.705199, 0.640298,
		24.147444, 34.861675, 35.500244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.280001, 35.631107, 34.413506>,  <23.934301, 35.355312, 35.052036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.280001, 35.631107, 34.413506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242136, 35.234303, 34.380135>,  <24.219418, 34.996220, 34.360111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242136, 35.234303, 34.380135>,  <24.280001, 35.631107, 34.413506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242136, 35.234303, 34.380135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370703, 0.042656, -0.927771,
		0.923915, -0.118751, 0.363702,
		-0.094660, -0.992007, -0.083432,
		24.213737, 34.936699, 34.355106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849901, 35.199673, 34.198395>,  <24.280001, 35.631107, 34.413506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849901, 35.199673, 34.198395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515162, 35.032547, 34.056908>,  <24.314318, 34.932270, 33.972015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515162, 35.032547, 34.056908>,  <24.849901, 35.199673, 34.198395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.515162, 35.032547, 34.056908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328220, 0.134181, -0.935023,
		0.438130, -0.898568, 0.024847,
		-0.836848, -0.417817, -0.353716,
		24.264107, 34.907204, 33.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099321, 34.508347, 34.031372>,  <24.849901, 35.199673, 34.198395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099321, 34.508347, 34.031372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282951, 34.173378, 34.150017>,  <25.393129, 33.972397, 34.221203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282951, 34.173378, 34.150017>,  <25.099321, 34.508347, 34.031372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282951, 34.173378, 34.150017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320033, 0.155574, 0.934546,
		-0.828752, -0.523952, -0.196582,
		0.459074, -0.837419, 0.296614,
		25.420673, 33.922153, 34.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733015, 34.544144, 33.721222>,  <25.099321, 34.508347, 34.031372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733015, 34.544144, 33.721222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779696, 34.146935, 33.714520>,  <25.807703, 33.908607, 33.710499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779696, 34.146935, 33.714520>,  <25.733015, 34.544144, 33.721222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779696, 34.146935, 33.714520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949858, 0.116523, -0.290161,
		0.290089, 0.017950, 0.956831,
		0.116701, -0.993026, -0.016752,
		25.814705, 33.849026, 33.709496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195778, 34.357533, 34.153515>,  <25.733015, 34.544144, 33.721222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195778, 34.357533, 34.153515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191681, 34.087341, 33.858589>,  <26.189222, 33.925228, 33.681633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191681, 34.087341, 33.858589>,  <26.195778, 34.357533, 34.153515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191681, 34.087341, 33.858589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936234, 0.252514, -0.244341,
		0.351228, -0.692800, 0.629815,
		-0.010242, -0.675474, -0.737313,
		26.188608, 33.884701, 33.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550766, 34.366550, 34.844303>,  <26.195778, 34.357533, 34.153515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550766, 34.366550, 34.844303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817078, 34.590549, 34.647068>,  <26.976864, 34.724949, 34.528725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817078, 34.590549, 34.647068>,  <26.550766, 34.366550, 34.844303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817078, 34.590549, 34.647068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721667, 0.651182, -0.234858,
		0.189570, 0.512210, 0.837678,
		0.665778, 0.560002, -0.493090,
		27.016811, 34.758549, 34.499142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182228, 35.016525, 34.762478>,  <26.550766, 34.366550, 34.844303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182228, 35.016525, 34.762478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482767, 35.087547, 34.508251>,  <26.663090, 35.130161, 34.355713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482767, 35.087547, 34.508251>,  <26.182228, 35.016525, 34.762478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482767, 35.087547, 34.508251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614555, 0.539148, -0.575884,
		0.240415, 0.823282, 0.514206,
		0.751347, 0.177556, -0.635571,
		26.708172, 35.140816, 34.317581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130680, 35.730030, 34.594864>,  <26.182228, 35.016525, 34.762478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130680, 35.730030, 34.594864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335032, 35.546444, 34.304111>,  <26.457642, 35.436291, 34.129662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335032, 35.546444, 34.304111>,  <26.130680, 35.730030, 34.594864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335032, 35.546444, 34.304111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485855, 0.543399, -0.684589,
		0.709188, 0.702901, 0.054621,
		0.510879, -0.458964, -0.726880,
		26.488295, 35.408756, 34.086048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248262, 36.280891, 34.119514>,  <26.130680, 35.730030, 34.594864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248262, 36.280891, 34.119514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290432, 35.951443, 33.896610>,  <26.315733, 35.753773, 33.762867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290432, 35.951443, 33.896610>,  <26.248262, 36.280891, 34.119514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290432, 35.951443, 33.896610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595543, 0.396483, -0.698662,
		0.796376, 0.405526, -0.448703,
		0.105422, -0.823620, -0.557258,
		26.322058, 35.704357, 33.729431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035540, 36.458721, 33.445557>,  <26.248262, 36.280891, 34.119514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035540, 36.458721, 33.445557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039566, 36.058815, 33.437931>,  <26.041983, 35.818871, 33.433353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039566, 36.058815, 33.437931>,  <26.035540, 36.458721, 33.445557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039566, 36.058815, 33.437931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735579, 0.005512, -0.677417,
		0.677364, 0.020844, -0.735352,
		0.010067, -0.999767, -0.019066,
		26.042585, 35.758884, 33.432213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608696, 36.216946, 32.841194>,  <26.035540, 36.458721, 33.445557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608696, 36.216946, 32.841194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696918, 35.872765, 33.024925>,  <25.749853, 35.666256, 33.135162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696918, 35.872765, 33.024925>,  <25.608696, 36.216946, 32.841194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696918, 35.872765, 33.024925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639293, -0.483197, -0.598186,
		0.736654, -0.161711, -0.656651,
		0.220558, -0.860448, 0.459329,
		25.763086, 35.614632, 33.162724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059998, 35.750919, 32.463161>,  <25.608696, 36.216946, 32.841194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059998, 35.750919, 32.463161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774963, 35.610664, 32.706234>,  <25.603943, 35.526512, 32.852077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774963, 35.610664, 32.706234>,  <26.059998, 35.750919, 32.463161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774963, 35.610664, 32.706234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541064, -0.276731, -0.794148,
		0.446623, -0.894691, 0.007476,
		-0.712586, -0.350640, 0.607679,
		25.561188, 35.505474, 32.888538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982435, 35.016178, 32.359600>,  <26.059998, 35.750919, 32.463161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982435, 35.016178, 32.359600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669575, 35.242599, 32.463768>,  <25.481857, 35.378452, 32.526268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669575, 35.242599, 32.463768>,  <25.982435, 35.016178, 32.359600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669575, 35.242599, 32.463768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446794, -0.218203, -0.867619,
		-0.434297, -0.794963, 0.423579,
		-0.782152, 0.566057, 0.260420,
		25.434929, 35.412415, 32.541893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840675, 34.818062, 33.037090>,  <25.982435, 35.016178, 32.359600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840675, 34.818062, 33.037090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053467, 35.145660, 33.123100>,  <26.181143, 35.342220, 33.174706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053467, 35.145660, 33.123100>,  <25.840675, 34.818062, 33.037090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053467, 35.145660, 33.123100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576040, -0.536161, 0.617017,
		0.620626, -0.204376, -0.757004,
		0.531980, 0.819000, 0.215026,
		26.213060, 35.391361, 33.187607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545958, 34.589893, 33.063957>,  <25.840675, 34.818062, 33.037090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545958, 34.589893, 33.063957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505636, 34.941406, 33.250538>,  <26.481443, 35.152313, 33.362488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505636, 34.941406, 33.250538>,  <26.545958, 34.589893, 33.063957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505636, 34.941406, 33.250538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609012, -0.316240, 0.727390,
		0.786730, 0.357399, -0.503311,
		-0.100801, 0.878782, 0.466456,
		26.475395, 35.205040, 33.390476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160223, 34.795856, 33.158863>,  <26.545958, 34.589893, 33.063957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160223, 34.795856, 33.158863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958683, 35.012566, 33.427971>,  <26.837759, 35.142590, 33.589436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958683, 35.012566, 33.427971>,  <27.160223, 34.795856, 33.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958683, 35.012566, 33.427971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708983, -0.185539, 0.680381,
		0.493437, 0.819791, -0.290624,
		-0.503849, 0.541772, 0.672770,
		26.807528, 35.175098, 33.629803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692005, 35.203266, 33.487312>,  <27.160223, 34.795856, 33.158863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692005, 35.203266, 33.487312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380228, 35.180653, 33.736877>,  <27.193161, 35.167084, 33.886616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380228, 35.180653, 33.736877>,  <27.692005, 35.203266, 33.487312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380228, 35.180653, 33.736877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606789, -0.315805, 0.729434,
		0.155799, 0.947138, 0.280456,
		-0.779444, -0.056533, 0.623915,
		27.146395, 35.163692, 33.924053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796267, 35.689987, 34.031605>,  <27.692005, 35.203266, 33.487312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796267, 35.689987, 34.031605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571604, 35.380066, 34.147686>,  <27.436806, 35.194115, 34.217335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571604, 35.380066, 34.147686>,  <27.796267, 35.689987, 34.031605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571604, 35.380066, 34.147686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747350, -0.324614, 0.579735,
		-0.354975, 0.542500, 0.761371,
		-0.561658, -0.774803, 0.290208,
		27.403107, 35.147625, 34.234749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945150, 35.569790, 34.689957>,  <27.796267, 35.689987, 34.031605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945150, 35.569790, 34.689957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781952, 35.215294, 34.602222>,  <27.684032, 35.002594, 34.549580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781952, 35.215294, 34.602222>,  <27.945150, 35.569790, 34.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781952, 35.215294, 34.602222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804872, -0.462551, 0.371788,
		-0.430950, -0.024850, 0.902034,
		-0.407998, -0.886244, -0.219337,
		27.659552, 34.949421, 34.536423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851789, 35.190701, 35.284863>,  <27.945150, 35.569790, 34.689957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851789, 35.190701, 35.284863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929516, 34.948971, 34.975792>,  <27.976152, 34.803932, 34.790348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929516, 34.948971, 34.975792>,  <27.851789, 35.190701, 35.284863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929516, 34.948971, 34.975792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766230, -0.398311, 0.504223,
		-0.612481, -0.690028, 0.385653,
		0.194318, -0.604326, -0.772678,
		27.987812, 34.767673, 34.743988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936306, 34.540409, 35.550716>,  <27.851789, 35.190701, 35.284863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936306, 34.540409, 35.550716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106726, 34.525028, 35.189163>,  <28.208977, 34.515800, 34.972233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106726, 34.525028, 35.189163>,  <27.936306, 34.540409, 35.550716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106726, 34.525028, 35.189163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795450, -0.460024, 0.394509,
		-0.430977, -0.887073, -0.165408,
		0.426050, -0.038451, -0.903882,
		28.234541, 34.513493, 34.917999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249987, 33.830635, 35.526516>,  <27.936306, 34.540409, 35.550716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249987, 33.830635, 35.526516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434155, 34.087276, 35.281124>,  <28.544655, 34.241261, 35.133888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434155, 34.087276, 35.281124>,  <28.249987, 33.830635, 35.526516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434155, 34.087276, 35.281124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874436, -0.446833, 0.188950,
		-0.152894, -0.623448, -0.766770,
		0.460419, 0.641602, -0.613483,
		28.572281, 34.279758, 35.097080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573463, 33.536163, 34.891708>,  <28.249987, 33.830635, 35.526516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573463, 33.536163, 34.891708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754848, 33.854759, 35.051697>,  <28.863680, 34.045918, 35.147690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754848, 33.854759, 35.051697>,  <28.573463, 33.536163, 34.891708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754848, 33.854759, 35.051697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789926, -0.566996, 0.233522,
		0.412781, 0.210058, -0.886277,
		0.453463, 0.796487, 0.399975,
		28.890888, 34.093704, 35.171688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882189, 33.353279, 34.921368>,  <28.573463, 33.536163, 34.891708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882189, 33.353279, 34.921368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494816, 33.452991, 34.921738>,  <27.262392, 33.512817, 34.921959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494816, 33.452991, 34.921738>,  <27.882189, 33.353279, 34.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494816, 33.452991, 34.921738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192819, 0.751426, -0.631015,
		-0.157996, -0.610915, -0.775771,
		-0.968431, 0.249282, 0.000926,
		27.204287, 33.527775, 34.922016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850056, 32.838211, 35.508549>,  <27.882189, 33.353279, 34.921368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850056, 32.838211, 35.508549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598793, 32.538212, 35.425674>,  <27.448036, 32.358212, 35.375950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598793, 32.538212, 35.425674>,  <27.850056, 32.838211, 35.508549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598793, 32.538212, 35.425674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776740, -0.620091, -0.110279,
		-0.045765, -0.230201, 0.972066,
		-0.628156, -0.749996, -0.207185,
		27.410347, 32.313213, 35.363518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067261, 32.193146, 35.902046>,  <27.850056, 32.838211, 35.508549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067261, 32.193146, 35.902046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869890, 32.126236, 35.560627>,  <27.751467, 32.086090, 35.355774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869890, 32.126236, 35.560627>,  <28.067261, 32.193146, 35.902046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869890, 32.126236, 35.560627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658250, -0.713267, -0.240743,
		-0.568538, -0.680638, 0.462057,
		-0.493429, -0.167277, -0.853549,
		27.721861, 32.076054, 35.304562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832701, 32.183617, 35.730591>,  <28.067261, 32.193146, 35.902046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832701, 32.183617, 35.730591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567617, 31.927551, 35.886032>,  <28.408567, 31.773912, 35.979298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567617, 31.927551, 35.886032>,  <28.832701, 32.183617, 35.730591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567617, 31.927551, 35.886032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270611, 0.279147, 0.921329,
		-0.698275, 0.715733, -0.011758,
		-0.662707, -0.640159, 0.388606,
		28.368805, 31.735504, 36.002613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554865, 32.404774, 35.462090>,  <28.832701, 32.183617, 35.730591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554865, 32.404774, 35.462090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854771, 32.171936, 35.336216>,  <30.034714, 32.032234, 35.260693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854771, 32.171936, 35.336216>,  <29.554865, 32.404774, 35.462090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854771, 32.171936, 35.336216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492101, -0.808428, 0.322925,
		-0.442369, -0.087262, -0.892578,
		0.749764, -0.582090, -0.314681,
		30.079700, 31.997309, 35.241810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295456, 31.875050, 34.954559>,  <29.554865, 32.404774, 35.462090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295456, 31.875050, 34.954559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617031, 31.763132, 35.164471>,  <29.809977, 31.695982, 35.290417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617031, 31.763132, 35.164471>,  <29.295456, 31.875050, 34.954559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617031, 31.763132, 35.164471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495235, -0.803536, 0.330260,
		0.329275, -0.525399, -0.784559,
		0.803940, -0.279795, 0.524781,
		29.858213, 31.679193, 35.321903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362026, 31.188187, 34.869934>,  <29.295456, 31.875050, 34.954559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362026, 31.188187, 34.869934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559595, 31.268324, 35.208378>,  <29.678137, 31.316406, 35.411446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559595, 31.268324, 35.208378>,  <29.362026, 31.188187, 34.869934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559595, 31.268324, 35.208378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375616, -0.828450, 0.415431,
		0.784190, -0.523003, -0.333936,
		0.493921, 0.200345, 0.846111,
		29.707771, 31.328428, 35.462212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815687, 30.610350, 35.017574>,  <29.362026, 31.188187, 34.869934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815687, 30.610350, 35.017574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778404, 30.799238, 35.368191>,  <29.756035, 30.912571, 35.578560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778404, 30.799238, 35.368191>,  <29.815687, 30.610350, 35.017574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778404, 30.799238, 35.368191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214473, -0.869226, 0.445475,
		0.972273, -0.146473, 0.182296,
		-0.093207, 0.472221, 0.876539,
		29.750443, 30.940905, 35.631153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088615, 30.113573, 35.471298>,  <29.815687, 30.610350, 35.017574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088615, 30.113573, 35.471298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861147, 30.360607, 35.688629>,  <29.724667, 30.508827, 35.819027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861147, 30.360607, 35.688629>,  <30.088615, 30.113573, 35.471298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861147, 30.360607, 35.688629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450912, -0.786487, 0.422037,
		0.687961, -0.004990, 0.725731,
		-0.568672, 0.617586, 0.543323,
		29.690546, 30.545883, 35.851627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080967, 29.891977, 36.183655>,  <30.088615, 30.113573, 35.471298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080967, 29.891977, 36.183655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747007, 30.094242, 36.096706>,  <29.546631, 30.215601, 36.044537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747007, 30.094242, 36.096706>,  <30.080967, 29.891977, 36.183655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747007, 30.094242, 36.096706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547882, -0.725751, 0.416067,
		0.052635, 0.466465, 0.882972,
		-0.834898, 0.505664, -0.217368,
		29.496538, 30.245941, 36.031494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690483, 29.262905, 36.374729>,  <30.080967, 29.891977, 36.183655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690483, 29.262905, 36.374729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343700, 29.376522, 36.538536>,  <29.135632, 29.444693, 36.636822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343700, 29.376522, 36.538536>,  <29.690483, 29.262905, 36.374729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343700, 29.376522, 36.538536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258632, 0.958803, -0.117501,
		-0.426026, 0.004047, -0.904702,
		-0.866955, 0.284044, 0.409522,
		29.083614, 29.461735, 36.661392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199335, 29.510170, 35.887794>,  <29.690483, 29.262905, 36.374729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199335, 29.510170, 35.887794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129910, 29.679640, 36.243408>,  <29.088253, 29.781321, 36.456776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129910, 29.679640, 36.243408>,  <29.199335, 29.510170, 35.887794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129910, 29.679640, 36.243408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150354, 0.903549, -0.401239,
		-0.973277, 0.064028, -0.220526,
		-0.173566, 0.423674, 0.889031,
		29.077839, 29.806742, 36.510117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777601, 30.106188, 35.867275>,  <29.199335, 29.510170, 35.887794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777601, 30.106188, 35.867275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998383, 30.157736, 36.196819>,  <29.130852, 30.188665, 36.394547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998383, 30.157736, 36.196819>,  <28.777601, 30.106188, 35.867275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998383, 30.157736, 36.196819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121507, 0.965011, -0.232358,
		-0.824975, 0.228355, 0.516982,
		0.551954, 0.128872, 0.823856,
		29.163969, 30.196398, 36.443977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557207, 30.746914, 36.351376>,  <28.777601, 30.106188, 35.867275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557207, 30.746914, 36.351376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937046, 30.624060, 36.326290>,  <29.164949, 30.550348, 36.311241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937046, 30.624060, 36.326290>,  <28.557207, 30.746914, 36.351376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937046, 30.624060, 36.326290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259600, 0.882644, -0.391850,
		0.175702, 0.355820, 0.917889,
		0.949598, -0.307133, -0.062712,
		29.221926, 30.531919, 36.307476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892998, 31.282743, 36.606903>,  <28.557207, 30.746914, 36.351376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892998, 31.282743, 36.606903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137594, 31.068733, 36.373726>,  <29.284353, 30.940327, 36.233818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137594, 31.068733, 36.373726>,  <28.892998, 31.282743, 36.606903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137594, 31.068733, 36.373726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527017, 0.824935, -0.204295,
		0.590194, -0.182297, 0.786409,
		0.611493, -0.535024, -0.582945,
		29.321043, 30.908226, 36.198841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524288, 31.650599, 36.730068>,  <28.892998, 31.282743, 36.606903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524288, 31.650599, 36.730068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580484, 31.425997, 36.403885>,  <29.614202, 31.291235, 36.208176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580484, 31.425997, 36.403885>,  <29.524288, 31.650599, 36.730068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580484, 31.425997, 36.403885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500125, 0.751073, -0.431005,
		0.854481, -0.347280, 0.386341,
		0.140491, -0.561504, -0.815461,
		29.622631, 31.257545, 36.159248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313065, 31.647005, 36.575443>,  <29.524288, 31.650599, 36.730068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313065, 31.647005, 36.575443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124722, 31.556911, 36.234253>,  <30.011717, 31.502855, 36.029537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124722, 31.556911, 36.234253>,  <30.313065, 31.647005, 36.575443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124722, 31.556911, 36.234253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475655, 0.749478, -0.460472,
		0.742995, -0.622539, -0.245770,
		-0.470861, -0.225227, -0.852973,
		29.983465, 31.489342, 35.978359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534561, 32.232780, 36.145039>,  <30.313065, 31.647005, 36.575443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534561, 32.232780, 36.145039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769457, 32.236790, 35.821297>,  <30.910395, 32.239197, 35.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769457, 32.236790, 35.821297>,  <30.534561, 32.232780, 36.145039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769457, 32.236790, 35.821297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297441, 0.932634, -0.204261,
		0.752781, 0.360684, 0.550660,
		0.587239, 0.010026, -0.809352,
		30.945629, 32.239796, 35.578491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238194, 31.801256, 36.303120>,  <30.534561, 32.232780, 36.145039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238194, 31.801256, 36.303120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296453, 31.668911, 36.676067>,  <31.331409, 31.589504, 36.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296453, 31.668911, 36.676067>,  <31.238194, 31.801256, 36.303120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296453, 31.668911, 36.676067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944577, -0.233754, -0.230506,
		0.294212, 0.914269, 0.278481,
		0.145649, -0.330865, 0.932371,
		31.340149, 31.569651, 36.955780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740976, 31.577137, 35.925358>,  <31.238194, 31.801256, 36.303120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740976, 31.577137, 35.925358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822908, 31.960323, 36.005707>,  <31.872068, 32.190235, 36.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822908, 31.960323, 36.005707>,  <31.740976, 31.577137, 35.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822908, 31.960323, 36.005707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966664, 0.165774, 0.195139,
		0.153636, -0.234147, 0.959985,
		0.204832, 0.957964, 0.200873,
		31.884357, 32.247711, 36.065968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378197, 31.464392, 36.359188>,  <31.740976, 31.577137, 35.925358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378197, 31.464392, 36.359188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678543, 31.216604, 36.267570>,  <32.858749, 31.067932, 36.212601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678543, 31.216604, 36.267570>,  <32.378197, 31.464392, 36.359188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678543, 31.216604, 36.267570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074864, -0.424384, 0.902382,
		-0.656200, -0.660419, -0.365031,
		0.750864, -0.619471, -0.229039,
		32.903801, 31.030764, 36.198860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133945, 30.770523, 36.515087>,  <32.378197, 31.464392, 36.359188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133945, 30.770523, 36.515087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532993, 30.743570, 36.520866>,  <32.772423, 30.727398, 36.524334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532993, 30.743570, 36.520866>,  <32.133945, 30.770523, 36.515087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532993, 30.743570, 36.520866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042221, -0.431936, 0.900916,
		-0.054466, -0.899384, -0.433754,
		0.997622, -0.067383, 0.014447,
		32.832279, 30.723354, 36.525200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348858, 30.019108, 36.748646>,  <32.133945, 30.770523, 36.515087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348858, 30.019108, 36.748646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610622, 30.313698, 36.817181>,  <32.767681, 30.490452, 36.858303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610622, 30.313698, 36.817181>,  <32.348858, 30.019108, 36.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610622, 30.313698, 36.817181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154760, -0.352255, 0.923020,
		0.740135, -0.577515, -0.344496,
		0.654409, 0.736473, 0.171340,
		32.806946, 30.534639, 36.868584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948711, 29.639084, 36.292747>,  <32.348858, 30.019108, 36.748646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948711, 29.639084, 36.292747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230671, 29.866867, 36.461906>,  <33.399845, 30.003536, 36.563400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230671, 29.866867, 36.461906>,  <32.948711, 29.639084, 36.292747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230671, 29.866867, 36.461906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252811, -0.758755, 0.600314,
		0.662729, -0.316245, -0.678807,
		0.704895, 0.569456, 0.422899,
		33.442139, 30.037704, 36.588776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624001, 29.313946, 36.409668>,  <32.948711, 29.639084, 36.292747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624001, 29.313946, 36.409668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584824, 29.612175, 36.673344>,  <33.561317, 29.791113, 36.831547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584824, 29.612175, 36.673344>,  <33.624001, 29.313946, 36.409668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584824, 29.612175, 36.673344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256832, -0.620996, 0.740541,
		0.961480, 0.241830, -0.130666,
		-0.097942, 0.745575, 0.659185,
		33.555443, 29.835848, 36.871098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096706, 29.178394, 36.947308>,  <33.624001, 29.313946, 36.409668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096706, 29.178394, 36.947308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857231, 29.438999, 37.133686>,  <33.713547, 29.595362, 37.245514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857231, 29.438999, 37.133686>,  <34.096706, 29.178394, 36.947308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857231, 29.438999, 37.133686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013206, -0.589671, 0.807535,
		0.800875, 0.477307, 0.361632,
		-0.598686, 0.651510, 0.465950,
		33.677624, 29.634453, 37.273472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317364, 29.440779, 37.740562>,  <34.096706, 29.178394, 36.947308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317364, 29.440779, 37.740562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930847, 29.391811, 37.649971>,  <33.698936, 29.362431, 37.595615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930847, 29.391811, 37.649971>,  <34.317364, 29.440779, 37.740562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930847, 29.391811, 37.649971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011997, -0.857347, 0.514599,
		-0.257167, 0.499970, 0.826979,
		-0.966293, -0.122416, -0.226479,
		33.640961, 29.355087, 37.582027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062637, 29.184450, 38.417320>,  <34.317364, 29.440779, 37.740562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062637, 29.184450, 38.417320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869118, 29.098417, 38.077984>,  <33.753006, 29.046799, 37.874382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869118, 29.098417, 38.077984>,  <34.062637, 29.184450, 38.417320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869118, 29.098417, 38.077984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028049, -0.972644, 0.230600,
		-0.874731, 0.087768, 0.476594,
		-0.483795, -0.215081, -0.848341,
		33.723980, 29.033894, 37.823483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348240, 29.910601, 38.404209>,  <34.062637, 29.184450, 38.417320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348240, 29.910601, 38.404209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960819, 29.977541, 38.330570>,  <33.728367, 30.017704, 38.286385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960819, 29.977541, 38.330570>,  <34.348240, 29.910601, 38.404209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960819, 29.977541, 38.330570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248280, -0.697703, 0.671988,
		-0.015991, 0.696566, 0.717314,
		-0.968556, 0.167349, -0.184101,
		33.670254, 30.027746, 38.275341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022278, 30.050674, 39.024643>,  <34.348240, 29.910601, 38.404209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022278, 30.050674, 39.024643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794998, 29.868092, 38.750767>,  <33.658630, 29.758543, 38.586441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794998, 29.868092, 38.750767>,  <34.022278, 30.050674, 39.024643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794998, 29.868092, 38.750767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303807, -0.656908, 0.690053,
		-0.764756, 0.600101, 0.234579,
		-0.568199, -0.456455, -0.684689,
		33.624538, 29.731155, 38.545361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445278, 29.980698, 39.370991>,  <34.022278, 30.050674, 39.024643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445278, 29.980698, 39.370991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412048, 29.721184, 39.068420>,  <33.392109, 29.565475, 38.886879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412048, 29.721184, 39.068420>,  <33.445278, 29.980698, 39.370991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412048, 29.721184, 39.068420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121827, -0.746743, 0.653860,
		-0.989068, 0.146473, -0.017003,
		-0.083076, -0.648784, -0.756424,
		33.387127, 29.526548, 38.841492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921322, 29.601706, 39.533817>,  <33.445278, 29.980698, 39.370991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921322, 29.601706, 39.533817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136600, 29.372536, 39.286560>,  <33.265770, 29.235033, 39.138206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136600, 29.372536, 39.286560>,  <32.921322, 29.601706, 39.533817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136600, 29.372536, 39.286560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155557, -0.788346, 0.595242,
		-0.828339, -0.224202, -0.513409,
		0.538198, -0.572926, -0.618141,
		33.298061, 29.200659, 39.101116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354916, 29.075069, 39.723087>,  <32.921322, 29.601706, 39.533817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354916, 29.075069, 39.723087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139771, 28.802746, 39.524208>,  <33.010685, 28.639353, 39.404881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139771, 28.802746, 39.524208>,  <33.354916, 29.075069, 39.723087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139771, 28.802746, 39.524208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412618, 0.301704, -0.859488,
		0.735153, -0.667439, 0.118638,
		-0.537863, -0.680808, -0.497197,
		32.978413, 28.598503, 39.375050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826305, 28.607185, 39.248478>,  <33.354916, 29.075069, 39.723087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826305, 28.607185, 39.248478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445374, 28.668579, 39.143013>,  <33.216816, 28.705416, 39.079735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445374, 28.668579, 39.143013>,  <33.826305, 28.607185, 39.248478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445374, 28.668579, 39.143013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302500, 0.587308, -0.750709,
		0.039633, -0.794678, -0.605736,
		-0.952325, 0.153483, -0.263667,
		33.159676, 28.714624, 39.063911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634758, 28.453222, 38.531040>,  <33.826305, 28.607185, 39.248478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634758, 28.453222, 38.531040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327145, 28.699541, 38.599602>,  <33.142574, 28.847332, 38.640739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327145, 28.699541, 38.599602>,  <33.634758, 28.453222, 38.531040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327145, 28.699541, 38.599602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338833, 0.620101, -0.707578,
		-0.542010, -0.486077, -0.685532,
		-0.769036, 0.615796, 0.171402,
		33.096436, 28.884279, 38.651024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211674, 28.651014, 37.949371>,  <33.634758, 28.453222, 38.531040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211674, 28.651014, 37.949371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241909, 28.934814, 38.229626>,  <33.260048, 29.105095, 38.397778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241909, 28.934814, 38.229626>,  <33.211674, 28.651014, 37.949371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241909, 28.934814, 38.229626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263142, 0.663549, -0.700328,
		-0.961792, 0.237301, -0.136546,
		0.075584, 0.709500, 0.700640,
		33.264584, 29.147665, 38.439819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738411, 29.140921, 37.790359>,  <33.211674, 28.651014, 37.949371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738411, 29.140921, 37.790359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020527, 29.328133, 38.003342>,  <33.189796, 29.440460, 38.131130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020527, 29.328133, 38.003342>,  <32.738411, 29.140921, 37.790359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020527, 29.328133, 38.003342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058436, 0.710146, -0.701625,
		-0.706505, 0.525965, 0.473511,
		0.705292, 0.468031, 0.532457,
		33.232113, 29.468542, 38.163078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599361, 29.810535, 37.765919>,  <32.738411, 29.140921, 37.790359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599361, 29.810535, 37.765919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995094, 29.766733, 37.804344>,  <33.232533, 29.740452, 37.827400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995094, 29.766733, 37.804344>,  <32.599361, 29.810535, 37.765919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995094, 29.766733, 37.804344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145616, 0.725622, -0.672510,
		0.003940, 0.679324, 0.733828,
		0.989333, -0.109506, 0.096062,
		33.291893, 29.733881, 37.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820034, 30.416943, 37.873501>,  <32.599361, 29.810535, 37.765919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820034, 30.416943, 37.873501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105141, 30.194473, 37.702557>,  <33.276203, 30.060991, 37.599991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105141, 30.194473, 37.702557>,  <32.820034, 30.416943, 37.873501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105141, 30.194473, 37.702557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120489, 0.697327, -0.706553,
		0.690979, 0.452111, 0.564042,
		0.712762, -0.556174, -0.427364,
		33.318970, 30.027620, 37.574348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382687, 30.885220, 37.652882>,  <32.820034, 30.416943, 37.873501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382687, 30.885220, 37.652882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414909, 30.556416, 37.427383>,  <33.434242, 30.359133, 37.292084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414909, 30.556416, 37.427383>,  <33.382687, 30.885220, 37.652882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414909, 30.556416, 37.427383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065654, 0.559980, -0.825901,
		0.994586, 0.103542, -0.008859,
		0.080555, -0.822011, -0.563746,
		33.439075, 30.309813, 37.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923111, 30.858274, 37.109425>,  <33.382687, 30.885220, 37.652882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923111, 30.858274, 37.109425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629826, 30.634672, 36.954552>,  <33.453854, 30.500511, 36.861629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629826, 30.634672, 36.954552>,  <33.923111, 30.858274, 37.109425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629826, 30.634672, 36.954552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038560, 0.602652, -0.797072,
		0.678904, -0.569494, -0.463428,
		-0.733214, -0.559005, -0.387183,
		33.409863, 30.466970, 36.838398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133236, 30.516073, 36.549213>,  <33.923111, 30.858274, 37.109425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133236, 30.516073, 36.549213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737003, 30.550117, 36.506298>,  <33.499264, 30.570545, 36.480549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737003, 30.550117, 36.506298>,  <34.133236, 30.516073, 36.549213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737003, 30.550117, 36.506298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135609, 0.500443, -0.855083,
		-0.019089, -0.861576, -0.507270,
		-0.990579, 0.085113, -0.107285,
		33.439831, 30.575651, 36.474113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973003, 30.320688, 35.913044>,  <34.133236, 30.516073, 36.549213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973003, 30.320688, 35.913044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631981, 30.511023, 35.999508>,  <33.427368, 30.625223, 36.051388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631981, 30.511023, 35.999508>,  <33.973003, 30.320688, 35.913044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631981, 30.511023, 35.999508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008126, 0.401479, -0.915832,
		-0.522570, -0.782556, -0.338417,
		-0.852557, 0.475837, 0.216160,
		33.376213, 30.653774, 36.064358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462589, 30.071613, 35.356522>,  <33.973003, 30.320688, 35.913044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462589, 30.071613, 35.356522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386288, 30.424114, 35.529499>,  <33.340508, 30.635614, 35.633286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386288, 30.424114, 35.529499>,  <33.462589, 30.071613, 35.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386288, 30.424114, 35.529499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022974, 0.436407, -0.899456,
		-0.981370, -0.181506, -0.062999,
		-0.190750, 0.881252, 0.432447,
		33.329063, 30.688490, 35.659233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794361, 30.294783, 35.216946>,  <33.462589, 30.071613, 35.356522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794361, 30.294783, 35.216946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999409, 30.631351, 35.285332>,  <33.122437, 30.833294, 35.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999409, 30.631351, 35.285332>,  <32.794361, 30.294783, 35.216946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999409, 30.631351, 35.285332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274323, 0.349179, -0.896002,
		-0.813615, 0.412407, 0.409818,
		0.512617, 0.841424, 0.170965,
		33.153194, 30.883780, 35.336620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386898, 30.852591, 35.000572>,  <32.794361, 30.294783, 35.216946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386898, 30.852591, 35.000572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753834, 31.006388, 35.041851>,  <32.973995, 31.098667, 35.066616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753834, 31.006388, 35.041851>,  <32.386898, 30.852591, 35.000572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753834, 31.006388, 35.041851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145616, 0.565323, -0.811915,
		-0.370515, 0.729777, 0.574582,
		0.917341, 0.384495, 0.103193,
		33.029037, 31.121737, 35.072807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241753, 31.471308, 34.899754>,  <32.386898, 30.852591, 35.000572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241753, 31.471308, 34.899754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638168, 31.461746, 34.847202>,  <32.876019, 31.456009, 34.815670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638168, 31.461746, 34.847202>,  <32.241753, 31.471308, 34.899754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638168, 31.461746, 34.847202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086642, 0.633566, -0.768822,
		0.101616, 0.773319, 0.625821,
		0.991044, -0.023902, -0.131382,
		32.935482, 31.454576, 34.807789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502460, 32.196423, 34.616276>,  <32.241753, 31.471308, 34.899754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502460, 32.196423, 34.616276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804852, 31.954805, 34.515377>,  <32.986286, 31.809834, 34.454838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804852, 31.954805, 34.515377>,  <32.502460, 32.196423, 34.616276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804852, 31.954805, 34.515377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109415, 0.496528, -0.861097,
		0.645391, 0.623368, 0.441455,
		0.755975, -0.604047, -0.252249,
		33.031643, 31.773592, 34.439701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047428, 32.598083, 34.313908>,  <32.502460, 32.196423, 34.616276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047428, 32.598083, 34.313908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101986, 32.224972, 34.180450>,  <33.134720, 32.001106, 34.100376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101986, 32.224972, 34.180450>,  <33.047428, 32.598083, 34.313908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101986, 32.224972, 34.180450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202766, 0.355947, -0.912243,
		0.969681, 0.056775, 0.237686,
		0.136396, -0.932780, -0.333643,
		33.142906, 31.945137, 34.080357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641022, 32.614704, 33.874615>,  <33.047428, 32.598083, 34.313908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641022, 32.614704, 33.874615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437408, 32.290562, 33.758545>,  <33.315239, 32.096077, 33.688904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437408, 32.290562, 33.758545>,  <33.641022, 32.614704, 33.874615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437408, 32.290562, 33.758545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119790, 0.267140, -0.956183,
		0.852368, -0.521493, -0.038911,
		-0.509037, -0.810359, -0.290171,
		33.284698, 32.047455, 33.671494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752163, 32.623299, 33.124065>,  <33.641022, 32.614704, 33.874615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752163, 32.623299, 33.124065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442398, 32.375877, 33.177246>,  <33.256538, 32.227425, 33.209156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442398, 32.375877, 33.177246>,  <33.752163, 32.623299, 33.124065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442398, 32.375877, 33.177246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252529, 0.109519, -0.961371,
		0.580103, -0.778069, -0.241016,
		-0.774409, -0.618558, 0.132953,
		33.210075, 32.190311, 33.217133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763538, 32.253532, 32.549847>,  <33.752163, 32.623299, 33.124065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763538, 32.253532, 32.549847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387699, 32.239685, 32.686058>,  <33.162197, 32.231377, 32.767784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387699, 32.239685, 32.686058>,  <33.763538, 32.253532, 32.549847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387699, 32.239685, 32.686058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342272, 0.103725, -0.933858,
		-0.002996, -0.994003, -0.109308,
		-0.939596, -0.034615, 0.340530,
		33.105820, 32.229301, 32.788216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427307, 31.807837, 32.042149>,  <33.763538, 32.253532, 32.549847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427307, 31.807837, 32.042149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142868, 32.019531, 32.227295>,  <32.972206, 32.146549, 32.338383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142868, 32.019531, 32.227295>,  <33.427307, 31.807837, 32.042149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142868, 32.019531, 32.227295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429432, 0.194342, -0.881941,
		-0.556712, -0.825916, 0.089076,
		-0.711098, 0.529239, 0.462867,
		32.929539, 32.178303, 32.366154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800056, 31.542934, 31.792194>,  <33.427307, 31.807837, 32.042149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800056, 31.542934, 31.792194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727615, 31.904366, 31.947500>,  <32.684151, 32.121223, 32.040684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727615, 31.904366, 31.947500>,  <32.800056, 31.542934, 31.792194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727615, 31.904366, 31.947500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472569, 0.266273, -0.840105,
		-0.862485, -0.335626, 0.378781,
		-0.181102, 0.903579, 0.388263,
		32.673286, 32.175438, 32.063980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367741, 31.882435, 31.334303>,  <32.800056, 31.542934, 31.792194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367741, 31.882435, 31.334303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429432, 32.200581, 31.568775>,  <32.466446, 32.391468, 31.709457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429432, 32.200581, 31.568775>,  <32.367741, 31.882435, 31.334303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429432, 32.200581, 31.568775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577850, 0.553846, -0.599453,
		-0.801437, -0.246269, 0.545023,
		0.154232, 0.795365, 0.586179,
		32.475700, 32.439190, 31.744629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684753, 32.170628, 31.533102>,  <32.367741, 31.882435, 31.334303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684753, 32.170628, 31.533102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961296, 32.459503, 31.541735>,  <32.127224, 32.632828, 31.546915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961296, 32.459503, 31.541735>,  <31.684753, 32.170628, 31.533102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961296, 32.459503, 31.541735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513364, 0.512030, -0.688682,
		-0.508410, 0.465047, 0.724742,
		0.691359, 0.722190, 0.021583,
		32.168705, 32.676159, 31.548210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382328, 32.900024, 31.551998>,  <31.684753, 32.170628, 31.533102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382328, 32.900024, 31.551998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750261, 32.966557, 31.409878>,  <31.971022, 33.006477, 31.324606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750261, 32.966557, 31.409878>,  <31.382328, 32.900024, 31.551998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750261, 32.966557, 31.409878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368176, 0.678727, -0.635433,
		0.135459, 0.715307, 0.685556,
		0.919835, 0.166330, -0.355299,
		32.026211, 33.016457, 31.303288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513300, 33.557758, 31.661722>,  <31.382328, 32.900024, 31.551998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513300, 33.557758, 31.661722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767952, 33.450886, 31.372360>,  <31.920744, 33.386765, 31.198744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767952, 33.450886, 31.372360>,  <31.513300, 33.557758, 31.661722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767952, 33.450886, 31.372360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382280, 0.705356, -0.596938,
		0.669748, 0.656573, 0.346914,
		0.636632, -0.267180, -0.723405,
		31.958942, 33.370731, 31.155338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787102, 34.170628, 31.354662>,  <31.513300, 33.557758, 31.661722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787102, 34.170628, 31.354662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854229, 33.894787, 31.072874>,  <31.894505, 33.729282, 30.903801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854229, 33.894787, 31.072874>,  <31.787102, 34.170628, 31.354662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854229, 33.894787, 31.072874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023018, 0.711671, -0.702136,
		0.985549, 0.134046, 0.103558,
		0.167818, -0.689606, -0.704472,
		31.904573, 33.687904, 30.861532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987240, 34.556816, 30.805796>,  <31.787102, 34.170628, 31.354662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987240, 34.556816, 30.805796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913965, 34.202366, 30.635509>,  <31.870001, 33.989697, 30.533339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913965, 34.202366, 30.635509>,  <31.987240, 34.556816, 30.805796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913965, 34.202366, 30.635509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188656, 0.456680, -0.869398,
		0.964807, -0.078947, -0.250829,
		-0.183185, -0.886121, -0.425714,
		31.859009, 33.936531, 30.507795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390640, 34.535587, 30.168173>,  <31.987240, 34.556816, 30.805796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390640, 34.535587, 30.168173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058929, 34.312477, 30.154345>,  <31.859903, 34.178612, 30.146048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058929, 34.312477, 30.154345>,  <32.390640, 34.535587, 30.168173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058929, 34.312477, 30.154345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292695, 0.486197, -0.823372,
		0.476032, -0.672702, -0.566449,
		-0.829290, -0.557749, -0.034549,
		31.810146, 34.145145, 30.143974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330723, 34.249504, 29.434917>,  <32.390640, 34.535587, 30.168173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330723, 34.249504, 29.434917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970041, 34.221752, 29.605618>,  <31.753633, 34.205101, 29.708038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970041, 34.221752, 29.605618>,  <32.330723, 34.249504, 29.434917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970041, 34.221752, 29.605618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415885, 0.409036, -0.812237,
		-0.118202, -0.909877, -0.397684,
		-0.901703, -0.069383, 0.426753,
		31.699530, 34.200935, 29.733643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921198, 33.853527, 28.860123>,  <32.330723, 34.249504, 29.434917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921198, 33.853527, 28.860123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673712, 34.040562, 29.112648>,  <31.525219, 34.152782, 29.264164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673712, 34.040562, 29.112648>,  <31.921198, 33.853527, 28.860123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673712, 34.040562, 29.112648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538408, 0.332825, -0.774173,
		-0.572107, -0.818897, 0.045827,
		-0.618716, 0.467584, 0.631313,
		31.488096, 34.180836, 29.302042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261385, 33.685230, 28.602726>,  <31.921198, 33.853527, 28.860123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261385, 33.685230, 28.602726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189093, 34.003056, 28.834589>,  <31.145718, 34.193752, 28.973707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189093, 34.003056, 28.834589>,  <31.261385, 33.685230, 28.602726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189093, 34.003056, 28.834589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651871, 0.344549, -0.675537,
		-0.736478, -0.499954, 0.455683,
		-0.180733, 0.794564, 0.579658,
		31.134872, 34.241425, 29.008486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497606, 33.821724, 28.662987>,  <31.261385, 33.685230, 28.602726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497606, 33.821724, 28.662987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682386, 34.167961, 28.740292>,  <30.793255, 34.375702, 28.786674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682386, 34.167961, 28.740292>,  <30.497606, 33.821724, 28.662987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682386, 34.167961, 28.740292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583927, 0.460847, -0.668318,
		-0.667556, 0.195878, 0.718331,
		0.461950, 0.865593, 0.193263,
		30.820971, 34.427639, 28.798271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023560, 34.293968, 28.516991>,  <30.497606, 33.821724, 28.662987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023560, 34.293968, 28.516991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315845, 34.562004, 28.569204>,  <30.491217, 34.722824, 28.600533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315845, 34.562004, 28.569204>,  <30.023560, 34.293968, 28.516991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315845, 34.562004, 28.569204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494431, 0.651302, -0.575625,
		-0.470736, 0.356077, 0.807227,
		0.730716, 0.670086, 0.130536,
		30.535061, 34.763031, 28.608364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701654, 34.925339, 28.695864>,  <30.023560, 34.293968, 28.516991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701654, 34.925339, 28.695864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058954, 35.002216, 28.533298>,  <30.273335, 35.048344, 28.435759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058954, 35.002216, 28.533298>,  <29.701654, 34.925339, 28.695864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058954, 35.002216, 28.533298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431729, 0.618826, -0.656251,
		0.125375, 0.761655, 0.635739,
		0.893248, 0.192190, -0.406413,
		30.326929, 35.059872, 28.411375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652700, 35.618584, 28.465296>,  <29.701654, 34.925339, 28.695864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652700, 35.618584, 28.465296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947989, 35.453690, 28.251719>,  <30.125160, 35.354752, 28.123571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947989, 35.453690, 28.251719>,  <29.652700, 35.618584, 28.465296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947989, 35.453690, 28.251719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379844, 0.400089, -0.834055,
		0.557450, 0.818531, 0.138768,
		0.738219, -0.412234, -0.533944,
		30.169455, 35.330021, 28.091536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734711, 36.153191, 28.089546>,  <29.652700, 35.618584, 28.465296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734711, 36.153191, 28.089546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907043, 35.828918, 27.930965>,  <30.010443, 35.634354, 27.835817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907043, 35.828918, 27.930965>,  <29.734711, 36.153191, 28.089546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907043, 35.828918, 27.930965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450939, 0.187138, -0.872716,
		0.781688, 0.554771, -0.284943,
		0.430833, -0.810684, -0.396452,
		30.036293, 35.585712, 27.812031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846073, 36.402752, 27.443401>,  <29.734711, 36.153191, 28.089546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846073, 36.402752, 27.443401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915115, 36.009804, 27.414690>,  <29.956541, 35.774033, 27.397463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915115, 36.009804, 27.414690>,  <29.846073, 36.402752, 27.443401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915115, 36.009804, 27.414690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234545, 0.029785, -0.971649,
		0.956659, 0.184548, -0.225269,
		0.172606, -0.982372, -0.071779,
		29.966898, 35.715092, 27.393156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414103, 36.203754, 26.876780>,  <29.846073, 36.402752, 27.443401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414103, 36.203754, 26.876780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168081, 35.892242, 26.926115>,  <30.020470, 35.705334, 26.955717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168081, 35.892242, 26.926115>,  <30.414103, 36.203754, 26.876780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168081, 35.892242, 26.926115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338457, 0.119479, -0.933366,
		0.712151, -0.615813, -0.337069,
		-0.615052, -0.778780, 0.123339,
		29.983566, 35.658607, 26.963118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556862, 35.805710, 26.277023>,  <30.414103, 36.203754, 26.876780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556862, 35.805710, 26.277023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205158, 35.712555, 26.443237>,  <29.994137, 35.656662, 26.542965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205158, 35.712555, 26.443237>,  <30.556862, 35.805710, 26.277023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205158, 35.712555, 26.443237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467141, 0.250920, -0.847832,
		0.093182, -0.939576, -0.329414,
		-0.879259, -0.232886, 0.415533,
		29.941381, 35.642689, 26.567898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221693, 35.234406, 25.886980>,  <30.556862, 35.805710, 26.277023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221693, 35.234406, 25.886980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932371, 35.441406, 26.069859>,  <29.758778, 35.565605, 26.179585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932371, 35.441406, 26.069859>,  <30.221693, 35.234406, 25.886980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932371, 35.441406, 26.069859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501147, 0.062100, -0.863131,
		-0.475061, -0.853428, 0.214426,
		-0.723304, 0.517499, 0.457194,
		29.715380, 35.596657, 26.207016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623226, 34.979958, 25.624964>,  <30.221693, 35.234406, 25.886980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623226, 34.979958, 25.624964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483940, 35.321159, 25.780466>,  <29.400368, 35.525879, 25.873768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483940, 35.321159, 25.780466>,  <29.623226, 34.979958, 25.624964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483940, 35.321159, 25.780466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616379, 0.104107, -0.780537,
		-0.706273, -0.511416, 0.489522,
		-0.348217, 0.853004, 0.388754,
		29.379475, 35.577061, 25.897093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882233, 34.996864, 25.410210>,  <29.623226, 34.979958, 25.624964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882233, 34.996864, 25.410210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980822, 35.361504, 25.541805>,  <29.039976, 35.580288, 25.620762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980822, 35.361504, 25.541805>,  <28.882233, 34.996864, 25.410210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980822, 35.361504, 25.541805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627196, 0.408826, -0.662938,
		-0.738834, -0.042943, 0.672518,
		0.246474, 0.911601, 0.328989,
		29.054764, 35.634983, 25.640501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267340, 35.377068, 25.575796>,  <28.882233, 34.996864, 25.410210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267340, 35.377068, 25.575796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545717, 35.650322, 25.487267>,  <28.712744, 35.814274, 25.434149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545717, 35.650322, 25.487267>,  <28.267340, 35.377068, 25.575796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545717, 35.650322, 25.487267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653645, 0.475028, -0.589150,
		-0.297336, 0.554682, 0.777123,
		0.695946, 0.683137, -0.221322,
		28.754501, 35.855263, 25.420870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869516, 35.984055, 25.479839>,  <28.267340, 35.377068, 25.575796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869516, 35.984055, 25.479839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219116, 36.101898, 25.325268>,  <28.428877, 36.172604, 25.232525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219116, 36.101898, 25.325268>,  <27.869516, 35.984055, 25.479839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219116, 36.101898, 25.325268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479795, 0.649110, -0.590299,
		0.076928, 0.701330, 0.708674,
		0.874002, 0.294608, -0.386429,
		28.481318, 36.190281, 25.209339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857813, 36.671078, 25.647423>,  <27.869516, 35.984055, 25.479839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857813, 36.671078, 25.647423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112345, 36.613602, 25.344255>,  <28.265064, 36.579117, 25.162355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112345, 36.613602, 25.344255>,  <27.857813, 36.671078, 25.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112345, 36.613602, 25.344255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436864, 0.742642, -0.507576,
		0.635794, 0.654093, 0.409792,
		0.636330, -0.143690, -0.757916,
		28.303244, 36.570496, 25.116880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276564, 37.276138, 25.574963>,  <27.857813, 36.671078, 25.647423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276564, 37.276138, 25.574963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294931, 37.115955, 25.208897>,  <28.305952, 37.019848, 24.989258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294931, 37.115955, 25.208897>,  <28.276564, 37.276138, 25.574963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294931, 37.115955, 25.208897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441027, 0.813885, -0.378266,
		0.896318, 0.420982, -0.139240,
		0.045918, -0.400456, -0.915165,
		28.308706, 36.995819, 24.934347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413031, 37.823208, 25.115164>,  <28.276564, 37.276138, 25.574963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413031, 37.823208, 25.115164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283768, 37.551846, 24.851246>,  <28.206209, 37.389027, 24.692894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283768, 37.551846, 24.851246>,  <28.413031, 37.823208, 25.115164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283768, 37.551846, 24.851246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585048, 0.691226, -0.424176,
		0.743833, 0.248937, -0.620277,
		-0.323158, -0.678408, -0.659796,
		28.186821, 37.348324, 24.653307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434429, 38.147114, 24.447710>,  <28.413031, 37.823208, 25.115164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434429, 38.147114, 24.447710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171593, 37.851250, 24.389572>,  <28.013891, 37.673729, 24.354689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171593, 37.851250, 24.389572>,  <28.434429, 38.147114, 24.447710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171593, 37.851250, 24.389572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627423, 0.643531, -0.438416,
		0.417815, -0.196887, -0.886942,
		-0.657093, -0.739664, -0.145346,
		27.974464, 37.629349, 24.345968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239426, 38.284710, 23.780901>,  <28.434429, 38.147114, 24.447710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239426, 38.284710, 23.780901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958448, 38.085487, 23.984276>,  <27.789862, 37.965954, 24.106300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958448, 38.085487, 23.984276>,  <28.239426, 38.284710, 23.780901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958448, 38.085487, 23.984276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687652, 0.659192, -0.304305,
		-0.183595, -0.563385, -0.805537,
		-0.702445, -0.498060, 0.508437,
		27.747715, 37.936069, 24.136806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714279, 38.324318, 23.385773>,  <28.239426, 38.284710, 23.780901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714279, 38.324318, 23.385773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523792, 38.208813, 23.717999>,  <27.409500, 38.139511, 23.917334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523792, 38.208813, 23.717999>,  <27.714279, 38.324318, 23.385773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523792, 38.208813, 23.717999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712127, 0.680746, -0.171639,
		-0.515839, -0.673204, -0.529817,
		-0.476219, -0.288759, 0.830562,
		27.380926, 38.122185, 23.967167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987984, 38.235306, 23.239565>,  <27.714279, 38.324318, 23.385773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987984, 38.235306, 23.239565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993130, 38.235348, 23.639532>,  <26.996218, 38.235374, 23.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993130, 38.235348, 23.639532>,  <26.987984, 38.235306, 23.239565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993130, 38.235348, 23.639532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822087, 0.569264, 0.010519,
		-0.569216, -0.822154, 0.007411,
		0.012867, 0.000105, 0.999917,
		26.996990, 38.235378, 23.939507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343628, 38.016785, 23.400417>,  <26.987984, 38.235306, 23.239565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343628, 38.016785, 23.400417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484657, 38.237579, 23.702675>,  <26.569275, 38.370056, 23.884029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484657, 38.237579, 23.702675>,  <26.343628, 38.016785, 23.400417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484657, 38.237579, 23.702675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797707, 0.599456, -0.065696,
		-0.489238, -0.579619, 0.651681,
		0.352575, 0.551991, 0.755643,
		26.590429, 38.403175, 23.929367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835308, 38.217308, 23.924086>,  <26.343628, 38.016785, 23.400417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835308, 38.217308, 23.924086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100298, 38.516594, 23.938509>,  <26.259293, 38.696167, 23.947163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100298, 38.516594, 23.938509>,  <25.835308, 38.217308, 23.924086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100298, 38.516594, 23.938509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747266, 0.663453, -0.037730,
		-0.052154, -0.001951, 0.998637,
		0.662475, 0.748216, 0.036060,
		26.299040, 38.741058, 23.949327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514288, 38.887466, 24.212055>,  <25.835308, 38.217308, 23.924086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514288, 38.887466, 24.212055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612392, 38.984081, 23.836500>,  <25.671255, 39.042049, 23.611168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612392, 38.984081, 23.836500>,  <25.514288, 38.887466, 24.212055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612392, 38.984081, 23.836500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155839, 0.965693, 0.207728,
		0.956849, 0.095367, 0.274490,
		0.245263, 0.241540, -0.938885,
		25.685970, 39.056541, 23.554834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028923, 39.345577, 24.233387>,  <25.514288, 38.887466, 24.212055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028923, 39.345577, 24.233387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823896, 39.400841, 23.894403>,  <25.700880, 39.433998, 23.691013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823896, 39.400841, 23.894403>,  <26.028923, 39.345577, 24.233387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823896, 39.400841, 23.894403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189781, 0.944333, 0.268735,
		0.837412, 0.298577, -0.457813,
		-0.512566, 0.138158, -0.847460,
		25.670126, 39.442287, 23.640165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354464, 39.874199, 23.780005>,  <26.028923, 39.345577, 24.233387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354464, 39.874199, 23.780005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960566, 39.855957, 23.712835>,  <25.724226, 39.845013, 23.672533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960566, 39.855957, 23.712835>,  <26.354464, 39.874199, 23.780005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960566, 39.855957, 23.712835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092604, 0.954383, 0.283861,
		0.147317, 0.295081, -0.944047,
		-0.984745, -0.045605, -0.167923,
		25.665142, 39.842274, 23.662458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073595, 40.259968, 23.253107>,  <26.354464, 39.874199, 23.780005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073595, 40.259968, 23.253107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771257, 40.212181, 23.510612>,  <25.589855, 40.183510, 23.665115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771257, 40.212181, 23.510612>,  <26.073595, 40.259968, 23.253107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771257, 40.212181, 23.510612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042074, 0.972320, 0.229834,
		-0.653400, 0.200804, -0.729895,
		-0.755843, -0.119464, 0.643762,
		25.544504, 40.176342, 23.703741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427261, 40.688087, 23.188314>,  <26.073595, 40.259968, 23.253107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427261, 40.688087, 23.188314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502502, 40.632381, 23.577206>,  <25.547647, 40.598957, 23.810539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502502, 40.632381, 23.577206>,  <25.427261, 40.688087, 23.188314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502502, 40.632381, 23.577206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052773, 0.989900, 0.131582,
		-0.980731, 0.026557, 0.193551,
		0.188102, -0.139261, 0.972226,
		25.558933, 40.590603, 23.868874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846642, 41.080334, 23.631180>,  <25.427261, 40.688087, 23.188314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846642, 41.080334, 23.631180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221945, 41.038208, 23.762987>,  <25.447126, 41.012932, 23.842072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221945, 41.038208, 23.762987>,  <24.846642, 41.080334, 23.631180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221945, 41.038208, 23.762987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042907, 0.980606, 0.191236,
		-0.343268, -0.165290, 0.924579,
		0.938257, -0.105316, 0.329519,
		25.503422, 41.006615, 23.861843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892527, 41.409706, 24.399342>,  <24.846642, 41.080334, 23.631180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892527, 41.409706, 24.399342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189281, 41.444633, 24.133417>,  <25.367334, 41.465591, 23.973862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189281, 41.444633, 24.133417>,  <24.892527, 41.409706, 24.399342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189281, 41.444633, 24.133417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130395, 0.991344, -0.015300,
		0.657721, 0.098039, 0.746854,
		0.741889, 0.087323, -0.664812,
		25.411848, 41.470829, 23.933973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558193, 41.416607, 24.744453>,  <24.892527, 41.409706, 24.399342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558193, 41.416607, 24.744453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507650, 41.029922, 24.833460>,  <25.477325, 40.797913, 24.886864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507650, 41.029922, 24.833460>,  <25.558193, 41.416607, 24.744453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507650, 41.029922, 24.833460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834913, 0.017493, 0.550104,
		-0.535681, 0.255290, 0.804906,
		-0.126355, -0.966706, 0.222516,
		25.469744, 40.739910, 24.900215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870331, 41.492344, 25.287247>,  <25.558193, 41.416607, 24.744453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870331, 41.492344, 25.287247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805737, 41.099945, 25.244221>,  <25.766979, 40.864506, 25.218405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805737, 41.099945, 25.244221>,  <25.870331, 41.492344, 25.287247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805737, 41.099945, 25.244221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741805, -0.192548, 0.642379,
		-0.650883, 0.023942, 0.758801,
		-0.161485, -0.980995, -0.107566,
		25.757292, 40.805645, 25.211950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660128, 41.174732, 25.907480>,  <25.870331, 41.492344, 25.287247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660128, 41.174732, 25.907480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820942, 40.877724, 25.693182>,  <25.917431, 40.699516, 25.564604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820942, 40.877724, 25.693182>,  <25.660128, 41.174732, 25.907480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820942, 40.877724, 25.693182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570520, -0.254496, 0.780857,
		-0.716151, -0.619588, 0.321308,
		0.402038, -0.742525, -0.535745,
		25.941553, 40.654968, 25.532459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607697, 40.552872, 26.265203>,  <25.660128, 41.174732, 25.907480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607697, 40.552872, 26.265203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916641, 40.517418, 26.013617>,  <26.102009, 40.496147, 25.862665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916641, 40.517418, 26.013617>,  <25.607697, 40.552872, 26.265203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916641, 40.517418, 26.013617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582210, -0.297096, 0.756813,
		-0.253944, -0.950724, -0.177861,
		0.772362, -0.088636, -0.628967,
		26.148350, 40.490829, 25.824926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957567, 39.953987, 26.370077>,  <25.607697, 40.552872, 26.265203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957567, 39.953987, 26.370077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235498, 40.181564, 26.194113>,  <26.402258, 40.318111, 26.088535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235498, 40.181564, 26.194113>,  <25.957567, 39.953987, 26.370077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235498, 40.181564, 26.194113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642019, -0.215066, 0.735907,
		0.324078, -0.793759, -0.514704,
		0.694828, 0.568941, -0.439910,
		26.443947, 40.352245, 26.062140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575933, 39.552101, 26.397188>,  <25.957567, 39.953987, 26.370077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575933, 39.552101, 26.397188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712442, 39.924198, 26.343266>,  <26.794348, 40.147457, 26.310911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712442, 39.924198, 26.343266>,  <26.575933, 39.552101, 26.397188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712442, 39.924198, 26.343266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773203, -0.196275, 0.603019,
		0.534498, -0.310028, -0.786253,
		0.341274, 0.930247, -0.134806,
		26.814825, 40.203274, 26.302824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308334, 39.501255, 26.262592>,  <26.575933, 39.552101, 26.397188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308334, 39.501255, 26.262592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246437, 39.879021, 26.378611>,  <27.209299, 40.105682, 26.448221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246437, 39.879021, 26.378611>,  <27.308334, 39.501255, 26.262592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246437, 39.879021, 26.378611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774442, -0.066330, 0.629157,
		0.613427, 0.321984, -0.721133,
		-0.154746, 0.944418, 0.290047,
		27.200014, 40.162346, 26.465624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986420, 39.852268, 26.238737>,  <27.308334, 39.501255, 26.262592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986420, 39.852268, 26.238737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742319, 40.049053, 26.487114>,  <27.595860, 40.167122, 26.636141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742319, 40.049053, 26.487114>,  <27.986420, 39.852268, 26.238737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742319, 40.049053, 26.487114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759495, 0.140399, 0.635181,
		0.225302, 0.859224, -0.459318,
		-0.610251, 0.491958, 0.620944,
		27.559244, 40.196640, 26.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454605, 40.231808, 26.663002>,  <27.986420, 39.852268, 26.238737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454605, 40.231808, 26.663002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108194, 40.281239, 26.856794>,  <27.900347, 40.310898, 26.973070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108194, 40.281239, 26.856794>,  <28.454605, 40.231808, 26.663002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108194, 40.281239, 26.856794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499803, 0.240706, 0.832020,
		-0.013795, 0.962699, -0.270225,
		-0.866029, 0.123581, 0.484480,
		27.848385, 40.318314, 27.002138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609520, 40.825748, 26.952414>,  <28.454605, 40.231808, 26.663002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609520, 40.825748, 26.952414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304829, 40.674515, 27.162868>,  <28.122013, 40.583775, 27.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304829, 40.674515, 27.162868>,  <28.609520, 40.825748, 26.952414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304829, 40.674515, 27.162868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477991, 0.220260, 0.850300,
		-0.437371, 0.899188, 0.012941,
		-0.761729, -0.378083, 0.526139,
		28.076309, 40.561089, 27.320709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448130, 41.300621, 27.473375>,  <28.609520, 40.825748, 26.952414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448130, 41.300621, 27.473375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311802, 40.947456, 27.602568>,  <28.230005, 40.735558, 27.680084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311802, 40.947456, 27.602568>,  <28.448130, 41.300621, 27.473375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311802, 40.947456, 27.602568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355121, 0.197196, 0.913785,
		-0.870478, 0.426132, 0.246331,
		-0.340817, -0.882907, 0.322983,
		28.209557, 40.682583, 27.699463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304899, 41.461956, 28.183517>,  <28.448130, 41.300621, 27.473375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304899, 41.461956, 28.183517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313896, 41.063309, 28.151899>,  <28.319294, 40.824120, 28.132929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313896, 41.063309, 28.151899>,  <28.304899, 41.461956, 28.183517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313896, 41.063309, 28.151899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489668, -0.057949, 0.869981,
		-0.871619, -0.058272, 0.486708,
		0.022491, -0.996617, -0.079043,
		28.320644, 40.764324, 28.128187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098423, 41.143089, 28.849253>,  <28.304899, 41.461956, 28.183517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098423, 41.143089, 28.849253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303930, 40.849789, 28.671091>,  <28.427235, 40.673809, 28.564194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303930, 40.849789, 28.671091>,  <28.098423, 41.143089, 28.849253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303930, 40.849789, 28.671091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401588, -0.253233, 0.880113,
		-0.758137, -0.631041, 0.164363,
		0.513765, -0.733253, -0.445404,
		28.458059, 40.629814, 28.537470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121668, 40.653473, 29.370640>,  <28.098423, 41.143089, 28.849253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121668, 40.653473, 29.370640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400402, 40.540295, 29.107016>,  <28.567642, 40.472385, 28.948841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400402, 40.540295, 29.107016>,  <28.121668, 40.653473, 29.370640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400402, 40.540295, 29.107016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508832, -0.452580, 0.732299,
		-0.505481, -0.845642, -0.171399,
		0.696834, -0.282950, -0.659060,
		28.609453, 40.455410, 28.909298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147097, 39.899658, 29.516748>,  <28.121668, 40.653473, 29.370640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147097, 39.899658, 29.516748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477751, 40.027760, 29.331659>,  <28.676144, 40.104622, 29.220606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477751, 40.027760, 29.331659>,  <28.147097, 39.899658, 29.516748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477751, 40.027760, 29.331659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562345, -0.439285, 0.700569,
		0.021092, -0.839325, -0.543220,
		0.826634, 0.320254, -0.462725,
		28.725740, 40.123837, 29.192842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534731, 39.271717, 29.338575>,  <28.147097, 39.899658, 29.516748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534731, 39.271717, 29.338575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803476, 39.567883, 29.346504>,  <28.964724, 39.745583, 29.351261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803476, 39.567883, 29.346504>,  <28.534731, 39.271717, 29.338575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803476, 39.567883, 29.346504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556593, -0.522358, 0.646023,
		0.488676, -0.423007, -0.763060,
		0.671863, 0.740410, 0.019821,
		29.005035, 39.790005, 29.352451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165733, 38.970394, 29.174181>,  <28.534731, 39.271717, 29.338575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165733, 38.970394, 29.174181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276373, 39.317459, 29.339424>,  <29.342756, 39.525696, 29.438570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276373, 39.317459, 29.339424>,  <29.165733, 38.970394, 29.174181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276373, 39.317459, 29.339424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525594, -0.496475, 0.690843,
		0.804514, 0.026040, -0.593362,
		0.276600, 0.867660, 0.413108,
		29.359352, 39.577759, 29.463356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764839, 38.731899, 29.557030>,  <29.165733, 38.970394, 29.174181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764839, 38.731899, 29.557030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668011, 39.085350, 29.717335>,  <29.609915, 39.297421, 29.813519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668011, 39.085350, 29.717335>,  <29.764839, 38.731899, 29.557030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668011, 39.085350, 29.717335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476217, -0.251671, 0.842543,
		0.845352, 0.394804, -0.359875,
		-0.242069, 0.883624, 0.400763,
		29.595390, 39.350437, 29.837564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359148, 38.963329, 29.888542>,  <29.764839, 38.731899, 29.557030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359148, 38.963329, 29.888542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064701, 39.165539, 30.068577>,  <29.888033, 39.286865, 30.176598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064701, 39.165539, 30.068577>,  <30.359148, 38.963329, 29.888542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064701, 39.165539, 30.068577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454640, -0.123337, 0.882095,
		0.501429, 0.853954, -0.139039,
		-0.736119, 0.505520, 0.450086,
		29.843864, 39.317196, 30.203602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693565, 39.449677, 30.388657>,  <30.359148, 38.963329, 29.888542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693565, 39.449677, 30.388657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315826, 39.410744, 30.514343>,  <30.089184, 39.387383, 30.589756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315826, 39.410744, 30.514343>,  <30.693565, 39.449677, 30.388657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315826, 39.410744, 30.514343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327755, -0.197140, 0.923965,
		-0.027991, 0.975531, 0.218071,
		-0.944348, -0.097337, 0.314217,
		30.032522, 39.381542, 30.608608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711021, 39.636555, 31.057621>,  <30.693565, 39.449677, 30.388657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711021, 39.636555, 31.057621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366161, 39.434311, 31.044638>,  <30.159245, 39.312965, 31.036848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366161, 39.434311, 31.044638>,  <30.711021, 39.636555, 31.057621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366161, 39.434311, 31.044638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074919, -0.190582, 0.978808,
		-0.501080, 0.841450, 0.202190,
		-0.862152, -0.505609, -0.032456,
		30.107515, 39.282627, 31.034901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508493, 39.763847, 31.694902>,  <30.711021, 39.636555, 31.057621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508493, 39.763847, 31.694902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301970, 39.463654, 31.529881>,  <30.178055, 39.283539, 31.430868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301970, 39.463654, 31.529881>,  <30.508493, 39.763847, 31.694902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301970, 39.463654, 31.529881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160051, -0.557797, 0.814399,
		-0.841314, 0.354451, 0.408111,
		-0.516308, -0.750484, -0.412553,
		30.147078, 39.238510, 31.406115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069948, 39.564156, 32.188076>,  <30.508493, 39.763847, 31.694902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069948, 39.564156, 32.188076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083830, 39.235718, 31.960182>,  <30.092159, 39.038654, 31.823446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083830, 39.235718, 31.960182>,  <30.069948, 39.564156, 32.188076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083830, 39.235718, 31.960182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172160, -0.556644, 0.812717,
		-0.984457, -0.126289, 0.122042,
		0.034703, -0.821096, -0.569734,
		30.094240, 38.989388, 31.789263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683743, 39.064571, 32.543167>,  <30.069948, 39.564156, 32.188076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683743, 39.064571, 32.543167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888554, 38.843708, 32.279972>,  <30.011440, 38.711189, 32.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888554, 38.843708, 32.279972>,  <29.683743, 39.064571, 32.543167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888554, 38.843708, 32.279972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267525, -0.625414, 0.732999,
		-0.816245, -0.551346, -0.172514,
		0.512029, -0.552155, -0.657990,
		30.042162, 38.678062, 32.082577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451950, 38.421715, 32.531929>,  <29.683743, 39.064571, 32.543167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451950, 38.421715, 32.531929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820686, 38.376133, 32.383751>,  <30.041927, 38.348782, 32.294846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820686, 38.376133, 32.383751>,  <29.451950, 38.421715, 32.531929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820686, 38.376133, 32.383751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223496, -0.624572, 0.748304,
		-0.316643, -0.772608, -0.550285,
		0.921838, -0.113959, -0.370441,
		30.097239, 38.341946, 32.272617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498886, 37.688610, 32.535408>,  <29.451950, 38.421715, 32.531929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498886, 37.688610, 32.535408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866430, 37.842083, 32.498573>,  <30.086958, 37.934166, 32.476475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866430, 37.842083, 32.498573>,  <29.498886, 37.688610, 32.535408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866430, 37.842083, 32.498573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352002, -0.691631, 0.630667,
		0.178291, -0.611909, -0.770571,
		0.918862, 0.383685, -0.092082,
		30.142088, 37.957188, 32.470947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934156, 37.190975, 32.344799>,  <29.498886, 37.688610, 32.535408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934156, 37.190975, 32.344799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156168, 37.467041, 32.530533>,  <30.289375, 37.632683, 32.641975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156168, 37.467041, 32.530533>,  <29.934156, 37.190975, 32.344799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156168, 37.467041, 32.530533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243731, -0.668643, 0.702504,
		0.795322, -0.276737, -0.539332,
		0.555029, 0.690169, 0.464337,
		30.322678, 37.674091, 32.669834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367706, 36.719849, 32.593178>,  <29.934156, 37.190975, 32.344799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367706, 36.719849, 32.593178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364353, 37.073456, 32.780132>,  <30.362341, 37.285618, 32.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364353, 37.073456, 32.780132>,  <30.367706, 36.719849, 32.593178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364353, 37.073456, 32.780132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369296, -0.431622, 0.822996,
		0.929274, 0.179500, -0.322846,
		-0.008381, 0.884015, 0.467384,
		30.361839, 37.338661, 32.920349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027218, 36.830910, 32.883270>,  <30.367706, 36.719849, 32.593178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027218, 36.830910, 32.883270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861774, 37.083015, 33.146084>,  <30.762508, 37.234280, 33.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861774, 37.083015, 33.146084>,  <31.027218, 36.830910, 32.883270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861774, 37.083015, 33.146084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414246, -0.512357, 0.752257,
		0.810758, 0.583313, -0.049171,
		-0.413608, 0.630267, 0.657032,
		30.737692, 37.272095, 33.343193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548449, 36.955360, 33.399540>,  <31.027218, 36.830910, 32.883270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548449, 36.955360, 33.399540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197569, 37.030537, 33.576267>,  <30.987041, 37.075642, 33.682304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197569, 37.030537, 33.576267>,  <31.548449, 36.955360, 33.399540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197569, 37.030537, 33.576267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292368, -0.520828, 0.802034,
		0.380845, 0.832716, 0.401921,
		-0.877199, 0.187941, 0.441814,
		30.934410, 37.086918, 33.708813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690653, 37.224602, 34.107140>,  <31.548449, 36.955360, 33.399540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690653, 37.224602, 34.107140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307537, 37.110565, 34.121918>,  <31.077667, 37.042145, 34.130783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307537, 37.110565, 34.121918>,  <31.690653, 37.224602, 34.107140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307537, 37.110565, 34.121918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170486, -0.459837, 0.871484,
		-0.231464, 0.840996, 0.489030,
		-0.957789, -0.285090, 0.036943,
		31.020201, 37.025040, 34.132999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511127, 37.311111, 34.751007>,  <31.690653, 37.224602, 34.107140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511127, 37.311111, 34.751007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232910, 37.058727, 34.613541>,  <31.065979, 36.907295, 34.531059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232910, 37.058727, 34.613541>,  <31.511127, 37.311111, 34.751007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232910, 37.058727, 34.613541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060542, -0.528094, 0.847025,
		-0.715929, 0.568336, 0.405512,
		-0.695543, -0.630960, -0.343670,
		31.024248, 36.869438, 34.510441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926403, 37.112587, 35.214676>,  <31.511127, 37.311111, 34.751007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926403, 37.112587, 35.214676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967278, 36.784393, 34.989693>,  <30.991802, 36.587479, 34.854702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967278, 36.784393, 34.989693>,  <30.926403, 37.112587, 35.214676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967278, 36.784393, 34.989693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197425, -0.537446, 0.819862,
		-0.974977, -0.194824, 0.107064,
		0.102188, -0.820485, -0.562461,
		30.997934, 36.538246, 34.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531038, 36.498409, 35.581753>,  <30.926403, 37.112587, 35.214676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531038, 36.498409, 35.581753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773138, 36.299213, 35.333340>,  <30.918398, 36.179695, 35.184292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773138, 36.299213, 35.333340>,  <30.531038, 36.498409, 35.581753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773138, 36.299213, 35.333340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153351, -0.692599, 0.704834,
		-0.781126, -0.521835, -0.342826,
		0.605248, -0.497991, -0.621031,
		30.954714, 36.149815, 35.147030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423725, 35.766037, 35.705753>,  <30.531038, 36.498409, 35.581753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423725, 35.766037, 35.705753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764870, 35.780243, 35.497383>,  <30.969557, 35.788769, 35.372360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764870, 35.780243, 35.497383>,  <30.423725, 35.766037, 35.705753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764870, 35.780243, 35.497383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355463, -0.770283, 0.529443,
		-0.382457, -0.636712, -0.669569,
		0.852861, 0.035518, -0.520928,
		31.020727, 35.790897, 35.341106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532829, 35.119591, 35.387291>,  <30.423725, 35.766037, 35.705753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532829, 35.119591, 35.387291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891716, 35.295551, 35.402699>,  <31.107048, 35.401127, 35.411942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891716, 35.295551, 35.402699>,  <30.532829, 35.119591, 35.387291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891716, 35.295551, 35.402699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424553, -0.883313, 0.198778,
		0.121465, -0.161995, -0.979287,
		0.897218, 0.439904, 0.038516,
		31.160881, 35.427521, 35.414253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996731, 34.596558, 35.086395>,  <30.532829, 35.119591, 35.387291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996731, 34.596558, 35.086395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241560, 34.849033, 35.276958>,  <31.388458, 35.000519, 35.391296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241560, 34.849033, 35.276958>,  <30.996731, 34.596558, 35.086395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241560, 34.849033, 35.276958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449905, -0.773376, 0.446627,
		0.650347, -0.059032, -0.757340,
		0.612073, 0.631194, 0.476404,
		31.425182, 35.038391, 35.419880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735653, 34.354408, 34.916168>,  <30.996731, 34.596558, 35.086395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735653, 34.354408, 34.916168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752827, 34.553932, 35.262424>,  <31.763132, 34.673649, 35.470181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752827, 34.553932, 35.262424>,  <31.735653, 34.354408, 34.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752827, 34.553932, 35.262424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473772, -0.772994, 0.421925,
		0.879600, 0.392002, -0.269513,
		0.042937, 0.498813, 0.865645,
		31.765707, 34.703575, 35.522118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359669, 34.264065, 35.046635>,  <31.735653, 34.354408, 34.916168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359669, 34.264065, 35.046635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238075, 34.379871, 35.409683>,  <32.165119, 34.449356, 35.627510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238075, 34.379871, 35.409683>,  <32.359669, 34.264065, 35.046635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238075, 34.379871, 35.409683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605709, -0.676615, 0.418699,
		0.735330, 0.677031, 0.030314,
		-0.303983, 0.289521, 0.907619,
		32.146881, 34.466728, 35.681969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993206, 34.439262, 35.469357>,  <32.359669, 34.264065, 35.046635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993206, 34.439262, 35.469357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701500, 34.359566, 35.731190>,  <32.526478, 34.311749, 35.888290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701500, 34.359566, 35.731190>,  <32.993206, 34.439262, 35.469357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701500, 34.359566, 35.731190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640431, -0.535550, 0.550485,
		0.240881, 0.820663, 0.518159,
		-0.729263, -0.199244, 0.654582,
		32.482719, 34.299793, 35.927563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252758, 34.559746, 36.197243>,  <32.993206, 34.439262, 35.469357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252758, 34.559746, 36.197243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932487, 34.320351, 36.208027>,  <32.740326, 34.176712, 36.214497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932487, 34.320351, 36.208027>,  <33.252758, 34.559746, 36.197243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932487, 34.320351, 36.208027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582714, -0.767545, 0.267058,
		-0.139134, 0.229540, 0.963303,
		-0.800679, -0.598487, 0.026964,
		32.692284, 34.140804, 36.216118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034889, 34.707973, 36.118935>,  <33.252758, 34.559746, 36.197243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034889, 34.707973, 36.118935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328094, 34.976906, 36.160252>,  <34.504017, 35.138264, 36.185043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328094, 34.976906, 36.160252>,  <34.034889, 34.707973, 36.118935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328094, 34.976906, 36.160252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495750, 0.632007, -0.595650,
		-0.465755, 0.385409, 0.796575,
		0.733010, 0.672329, 0.103294,
		34.547997, 35.178604, 36.191238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734730, 35.298729, 36.497177>,  <34.034889, 34.707973, 36.118935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734730, 35.298729, 36.497177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049648, 35.426926, 36.286484>,  <34.238598, 35.503845, 36.160069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049648, 35.426926, 36.286484>,  <33.734730, 35.298729, 36.497177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049648, 35.426926, 36.286484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594166, 0.622585, -0.509269,
		0.164722, 0.713914, 0.680583,
		0.787295, 0.320492, -0.526736,
		34.285835, 35.523075, 36.128464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450237, 35.825008, 36.261978>,  <33.734730, 35.298729, 36.497177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450237, 35.825008, 36.261978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798878, 35.817245, 36.066044>,  <34.008060, 35.812588, 35.948483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798878, 35.817245, 36.066044>,  <33.450237, 35.825008, 36.261978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798878, 35.817245, 36.066044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389120, 0.580366, -0.715375,
		0.298169, 0.814125, 0.498294,
		0.871597, -0.019406, -0.489839,
		34.060356, 35.811424, 35.919090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604439, 36.474155, 36.144840>,  <33.450237, 35.825008, 36.261978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604439, 36.474155, 36.144840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811306, 36.290447, 35.855949>,  <33.935429, 36.180222, 35.682617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811306, 36.290447, 35.855949>,  <33.604439, 36.474155, 36.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811306, 36.290447, 35.855949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257728, 0.721100, -0.643110,
		0.816156, 0.518735, 0.254565,
		0.517171, -0.459270, -0.722223,
		33.966457, 36.152668, 35.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095188, 36.954376, 35.838112>,  <33.604439, 36.474155, 36.144840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095188, 36.954376, 35.838112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048496, 36.679768, 35.551041>,  <34.020481, 36.515003, 35.378799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048496, 36.679768, 35.551041>,  <34.095188, 36.954376, 35.838112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048496, 36.679768, 35.551041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230880, 0.721577, -0.652703,
		0.965955, 0.089508, -0.242734,
		-0.116729, -0.686524, -0.717676,
		34.013477, 36.473812, 35.335739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593849, 37.161583, 35.355515>,  <34.095188, 36.954376, 35.838112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593849, 37.161583, 35.355515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332458, 36.927406, 35.163586>,  <34.175625, 36.786900, 35.048428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332458, 36.927406, 35.163586>,  <34.593849, 37.161583, 35.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332458, 36.927406, 35.163586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186889, 0.739052, -0.647205,
		0.733511, -0.333261, -0.592367,
		-0.653478, -0.585439, -0.479820,
		34.136417, 36.751774, 35.019638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743492, 37.193443, 34.651520>,  <34.593849, 37.161583, 35.355515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743492, 37.193443, 34.651520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355236, 37.097305, 34.647812>,  <34.122280, 37.039623, 34.645588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355236, 37.097305, 34.647812>,  <34.743492, 37.193443, 34.651520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355236, 37.097305, 34.647812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203175, 0.839939, -0.503212,
		0.128730, -0.486556, -0.864114,
		-0.970644, -0.240345, -0.009270,
		34.064041, 37.025204, 34.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561779, 36.978466, 33.867767>,  <34.743492, 37.193443, 34.651520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561779, 36.978466, 33.867767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232304, 37.070461, 34.075089>,  <34.034618, 37.125660, 34.199482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232304, 37.070461, 34.075089>,  <34.561779, 36.978466, 33.867767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232304, 37.070461, 34.075089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327109, 0.553904, -0.765631,
		-0.463177, -0.800185, -0.381014,
		-0.823691, 0.229989, 0.518303,
		33.985195, 37.139458, 34.230579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148190, 37.091637, 33.359608>,  <34.561779, 36.978466, 33.867767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148190, 37.091637, 33.359608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926147, 37.229996, 33.662186>,  <33.792923, 37.313011, 33.843735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926147, 37.229996, 33.662186>,  <34.148190, 37.091637, 33.359608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926147, 37.229996, 33.662186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476428, 0.613248, -0.630035,
		-0.681815, -0.710130, -0.175626,
		-0.555108, 0.345894, 0.756447,
		33.759613, 37.333763, 33.889118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437763, 37.222553, 33.071724>,  <34.148190, 37.091637, 33.359608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437763, 37.222553, 33.071724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451950, 37.472462, 33.383724>,  <33.460461, 37.622406, 33.570923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451950, 37.472462, 33.383724>,  <33.437763, 37.222553, 33.071724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451950, 37.472462, 33.383724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503543, 0.685350, -0.526060,
		-0.863242, -0.374107, 0.338906,
		0.035467, 0.624771, 0.780002,
		33.462589, 37.659893, 33.617725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789295, 37.609871, 33.050518>,  <33.437763, 37.222553, 33.071724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789295, 37.609871, 33.050518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999889, 37.838612, 33.302170>,  <33.126247, 37.975857, 33.453159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999889, 37.838612, 33.302170>,  <32.789295, 37.609871, 33.050518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999889, 37.838612, 33.302170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556772, 0.791141, -0.253181,
		-0.642509, -0.216983, 0.734916,
		0.526486, 0.571851, 0.629125,
		33.157837, 38.010166, 33.490906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291496, 38.066666, 33.519371>,  <32.789295, 37.609871, 33.050518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291496, 38.066666, 33.519371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659134, 38.219299, 33.480053>,  <32.879715, 38.310879, 33.456463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659134, 38.219299, 33.480053>,  <32.291496, 38.066666, 33.519371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659134, 38.219299, 33.480053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386457, 0.824218, -0.413903,
		-0.076921, 0.418403, 0.904998,
		0.919094, 0.381581, -0.098295,
		32.934860, 38.333775, 33.450565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127518, 38.696350, 33.639000>,  <32.291496, 38.066666, 33.519371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127518, 38.696350, 33.639000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495472, 38.714600, 33.483189>,  <32.716244, 38.725552, 33.389702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495472, 38.714600, 33.483189>,  <32.127518, 38.696350, 33.639000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495472, 38.714600, 33.483189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260088, 0.814357, -0.518823,
		0.293541, 0.578568, 0.760981,
		0.919885, 0.045626, -0.389526,
		32.771439, 38.728287, 33.366329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383236, 39.351318, 33.786736>,  <32.127518, 38.696350, 33.639000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383236, 39.351318, 33.786736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561790, 39.225719, 33.451557>,  <32.668922, 39.150360, 33.250450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561790, 39.225719, 33.451557>,  <32.383236, 39.351318, 33.786736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561790, 39.225719, 33.451557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286331, 0.837060, -0.466204,
		0.847796, 0.448034, 0.283740,
		0.446383, -0.314002, -0.837941,
		32.695705, 39.131519, 33.200176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770988, 39.910885, 33.648144>,  <32.383236, 39.351318, 33.786736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770988, 39.910885, 33.648144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743225, 39.687469, 33.317516>,  <32.726566, 39.553421, 33.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743225, 39.687469, 33.317516>,  <32.770988, 39.910885, 33.648144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743225, 39.687469, 33.317516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078022, 0.829067, -0.553679,
		0.994533, 0.026062, -0.101120,
		-0.069405, -0.558541, -0.826568,
		32.722404, 39.519909, 33.069546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042717, 40.338978, 33.145607>,  <32.770988, 39.910885, 33.648144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042717, 40.338978, 33.145607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855846, 40.059418, 32.928982>,  <32.743725, 39.891682, 32.799007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855846, 40.059418, 32.928982>,  <33.042717, 40.338978, 33.145607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855846, 40.059418, 32.928982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368599, 0.710700, -0.599199,
		0.803669, -0.080310, -0.589633,
		-0.467174, -0.698896, -0.541566,
		32.715694, 39.849751, 32.766510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315723, 40.373840, 32.407238>,  <33.042717, 40.338978, 33.145607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315723, 40.373840, 32.407238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954746, 40.204605, 32.374748>,  <32.738159, 40.103062, 32.355255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954746, 40.204605, 32.374748>,  <33.315723, 40.373840, 32.407238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954746, 40.204605, 32.374748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240835, 0.651761, -0.719171,
		0.357215, -0.629445, -0.690070,
		-0.902439, -0.423092, -0.081227,
		32.684013, 40.077679, 32.350380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253883, 40.388069, 31.709335>,  <33.315723, 40.373840, 32.407238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253883, 40.388069, 31.709335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879833, 40.291695, 31.813251>,  <32.655403, 40.233868, 31.875601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879833, 40.291695, 31.813251>,  <33.253883, 40.388069, 31.709335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879833, 40.291695, 31.813251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344321, 0.444994, -0.826694,
		0.083578, -0.862513, -0.499085,
		-0.935124, -0.240939, 0.259790,
		32.599297, 40.219414, 31.891188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970295, 40.105877, 31.124090>,  <33.253883, 40.388069, 31.709335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970295, 40.105877, 31.124090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656246, 40.238331, 31.333447>,  <32.467815, 40.317802, 31.459061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656246, 40.238331, 31.333447>,  <32.970295, 40.105877, 31.124090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656246, 40.238331, 31.333447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387079, 0.397354, -0.832034,
		-0.483483, -0.855840, -0.183797,
		-0.785120, 0.331130, 0.523391,
		32.420712, 40.337669, 31.490463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311237, 39.932388, 30.789446>,  <32.970295, 40.105877, 31.124090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311237, 39.932388, 30.789446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218670, 40.236237, 31.032564>,  <32.163132, 40.418545, 31.178436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218670, 40.236237, 31.032564>,  <32.311237, 39.932388, 30.789446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218670, 40.236237, 31.032564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518397, 0.432386, -0.737772,
		-0.823233, -0.485812, 0.293727,
		-0.231415, 0.759625, 0.607797,
		32.149246, 40.464123, 31.214903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614286, 39.964588, 30.885050>,  <32.311237, 39.932388, 30.789446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614286, 39.964588, 30.885050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779926, 40.326496, 30.924875>,  <31.879311, 40.543640, 30.948771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779926, 40.326496, 30.924875>,  <31.614286, 39.964588, 30.885050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779926, 40.326496, 30.924875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489792, 0.313685, -0.813453,
		-0.767220, 0.288083, 0.573045,
		0.414098, 0.904770, 0.099565,
		31.904156, 40.597927, 30.954744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068258, 40.550011, 30.730835>,  <31.614286, 39.964588, 30.885050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068258, 40.550011, 30.730835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436520, 40.698009, 30.681042>,  <31.657476, 40.786808, 30.651167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436520, 40.698009, 30.681042>,  <31.068258, 40.550011, 30.730835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436520, 40.698009, 30.681042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295931, 0.453520, -0.840681,
		-0.254595, 0.810816, 0.527029,
		0.920655, 0.369997, -0.124482,
		31.712717, 40.809010, 30.643698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102001, 41.392895, 30.749939>,  <31.068258, 40.550011, 30.730835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102001, 41.392895, 30.749939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359243, 41.178432, 30.531233>,  <31.513588, 41.049755, 30.400009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359243, 41.178432, 30.531233>,  <31.102001, 41.392895, 30.749939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359243, 41.178432, 30.531233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421785, 0.347929, -0.837283,
		0.639152, 0.769077, -0.002390,
		0.643104, -0.536159, -0.546765,
		31.552174, 41.017586, 30.367203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188816, 41.832726, 30.114882>,  <31.102001, 41.392895, 30.749939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188816, 41.832726, 30.114882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357412, 41.482864, 30.019106>,  <31.458570, 41.272949, 29.961641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357412, 41.482864, 30.019106>,  <31.188816, 41.832726, 30.114882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357412, 41.482864, 30.019106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359090, 0.081474, -0.929740,
		0.832707, 0.477856, -0.279738,
		0.421490, -0.874652, -0.239437,
		31.483860, 41.220470, 29.947275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630045, 41.986721, 29.540859>,  <31.188816, 41.832726, 30.114882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630045, 41.986721, 29.540859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524153, 41.601192, 29.528406>,  <31.460617, 41.369877, 29.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524153, 41.601192, 29.528406>,  <31.630045, 41.986721, 29.540859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524153, 41.601192, 29.528406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386331, 0.135582, -0.912341,
		0.883553, -0.229498, -0.408247,
		-0.264731, -0.963820, -0.031132,
		31.444733, 41.312046, 29.519066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861145, 41.716747, 28.866188>,  <31.630045, 41.986721, 29.540859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861145, 41.716747, 28.866188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574654, 41.461567, 28.979353>,  <31.402760, 41.308460, 29.047253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574654, 41.461567, 28.979353>,  <31.861145, 41.716747, 28.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574654, 41.461567, 28.979353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363363, -0.005206, -0.931633,
		0.595807, -0.770061, -0.228078,
		-0.716227, -0.637949, 0.282914,
		31.359785, 41.270184, 29.064226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908289, 41.058811, 28.461372>,  <31.861145, 41.716747, 28.866188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908289, 41.058811, 28.461372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533800, 41.105640, 28.593906>,  <31.309107, 41.133739, 28.673428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533800, 41.105640, 28.593906>,  <31.908289, 41.058811, 28.461372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533800, 41.105640, 28.593906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332035, 0.014049, -0.943162,
		-0.115078, -0.993024, 0.025721,
		-0.936221, 0.117077, 0.331336,
		31.252934, 41.140762, 28.693308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500343, 40.591644, 28.075649>,  <31.908289, 41.058811, 28.461372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500343, 40.591644, 28.075649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252573, 40.883259, 28.192148>,  <31.103910, 41.058228, 28.262049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252573, 40.883259, 28.192148>,  <31.500343, 40.591644, 28.075649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252573, 40.883259, 28.192148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296306, 0.126446, -0.946686,
		-0.726992, -0.672699, 0.137693,
		-0.619424, 0.729032, 0.291249,
		31.066746, 41.101967, 28.279524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868500, 40.372639, 27.861813>,  <31.500343, 40.591644, 28.075649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868500, 40.372639, 27.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861053, 40.770451, 27.902927>,  <30.856586, 41.009136, 27.927595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861053, 40.770451, 27.902927>,  <30.868500, 40.372639, 27.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861053, 40.770451, 27.902927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445946, 0.083752, -0.891133,
		-0.894866, -0.062423, 0.441948,
		-0.018613, 0.994529, 0.102785,
		30.855469, 41.068810, 27.933764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183290, 40.529106, 27.756287>,  <30.868500, 40.372639, 27.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183290, 40.529106, 27.756287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375315, 40.876652, 27.707916>,  <30.490530, 41.085178, 27.678894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375315, 40.876652, 27.707916>,  <30.183290, 40.529106, 27.756287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375315, 40.876652, 27.707916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471987, 0.139629, -0.870478,
		-0.739439, 0.474958, 0.477121,
		0.480061, 0.868861, -0.120927,
		30.519333, 41.137310, 27.671638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652884, 40.987068, 27.573853>,  <30.183290, 40.529106, 27.756287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652884, 40.987068, 27.573853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987083, 41.157139, 27.434620>,  <30.187603, 41.259182, 27.351080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987083, 41.157139, 27.434620>,  <29.652884, 40.987068, 27.573853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987083, 41.157139, 27.434620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395071, 0.024535, -0.918323,
		-0.381912, 0.904776, 0.188475,
		0.835501, 0.425179, -0.348081,
		30.237734, 41.284691, 27.330196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468838, 41.496861, 27.204819>,  <29.652884, 40.987068, 27.573853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468838, 41.496861, 27.204819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825958, 41.515499, 27.025604>,  <30.040230, 41.526684, 26.918076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825958, 41.515499, 27.025604>,  <29.468838, 41.496861, 27.204819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825958, 41.515499, 27.025604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438751, 0.315217, -0.841508,
		0.102014, 0.947875, 0.301871,
		0.892799, 0.046601, -0.448038,
		30.093798, 41.529480, 26.891193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470970, 42.111870, 26.788765>,  <29.468838, 41.496861, 27.204819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470970, 42.111870, 26.788765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779186, 41.898438, 26.649303>,  <29.964115, 41.770378, 26.565626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779186, 41.898438, 26.649303>,  <29.470970, 42.111870, 26.788765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779186, 41.898438, 26.649303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225546, 0.283354, -0.932115,
		0.596151, 0.796870, 0.097989,
		0.770540, -0.533581, -0.348653,
		30.010349, 41.738365, 26.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907120, 42.568012, 26.419777>,  <29.470970, 42.111870, 26.788765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907120, 42.568012, 26.419777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992844, 42.201355, 26.284815>,  <30.044277, 41.981361, 26.203838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992844, 42.201355, 26.284815>,  <29.907120, 42.568012, 26.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992844, 42.201355, 26.284815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123958, 0.317114, -0.940252,
		0.968868, 0.243330, -0.045664,
		0.214310, -0.916640, -0.337404,
		30.057137, 41.926361, 26.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422955, 42.614395, 25.897234>,  <29.907120, 42.568012, 26.419777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422955, 42.614395, 25.897234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219856, 42.273994, 25.843578>,  <30.097998, 42.069756, 25.811384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219856, 42.273994, 25.843578>,  <30.422955, 42.614395, 25.897234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219856, 42.273994, 25.843578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168190, 0.250626, -0.953362,
		0.844929, -0.461505, -0.270384,
		-0.507746, -0.850999, -0.134141,
		30.067532, 42.018696, 25.803335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644005, 42.423775, 25.236471>,  <30.422955, 42.614395, 25.897234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644005, 42.423775, 25.236471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317236, 42.204182, 25.307186>,  <30.121174, 42.072426, 25.349615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317236, 42.204182, 25.307186>,  <30.644005, 42.423775, 25.236471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317236, 42.204182, 25.307186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314250, 0.166664, -0.934596,
		0.483614, -0.819049, -0.308670,
		-0.816924, -0.548983, 0.176785,
		30.072159, 42.039486, 25.360222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692257, 41.844406, 24.799412>,  <30.644005, 42.423775, 25.236471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692257, 41.844406, 24.799412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321180, 41.971851, 24.877258>,  <30.098536, 42.048321, 24.923965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321180, 41.971851, 24.877258>,  <30.692257, 41.844406, 24.799412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321180, 41.971851, 24.877258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189633, 0.046910, -0.980734,
		-0.321609, -0.946722, 0.016903,
		-0.927689, 0.318618, 0.194616,
		30.042873, 42.067436, 24.935642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335899, 41.299511, 24.336121>,  <30.692257, 41.844406, 24.799412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335899, 41.299511, 24.336121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545349, 41.177677, 24.017864>,  <30.671019, 41.104576, 23.826910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545349, 41.177677, 24.017864>,  <30.335899, 41.299511, 24.336121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545349, 41.177677, 24.017864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651249, -0.458997, 0.604314,
		-0.549264, -0.834594, -0.041980,
		0.523626, -0.304589, -0.795639,
		30.702436, 41.086300, 23.779173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330975, 40.624367, 24.334280>,  <30.335899, 41.299511, 24.336121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330975, 40.624367, 24.334280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654869, 40.711781, 24.116447>,  <30.849207, 40.764229, 23.985748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654869, 40.711781, 24.116447>,  <30.330975, 40.624367, 24.334280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654869, 40.711781, 24.116447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546802, -0.617750, 0.565148,
		-0.212912, -0.755400, -0.619709,
		0.809738, 0.218532, -0.544581,
		30.897791, 40.777340, 23.953074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544493, 39.984348, 24.221430>,  <30.330975, 40.624367, 24.334280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544493, 39.984348, 24.221430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850504, 40.224957, 24.129427>,  <31.034111, 40.369320, 24.074226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850504, 40.224957, 24.129427>,  <30.544493, 39.984348, 24.221430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850504, 40.224957, 24.129427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602568, -0.542574, 0.585257,
		0.227249, -0.586332, -0.777542,
		0.765029, 0.601521, -0.230005,
		31.080013, 40.405415, 24.060425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127180, 39.574524, 24.227571>,  <30.544493, 39.984348, 24.221430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127180, 39.574524, 24.227571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304714, 39.930241, 24.271694>,  <31.411234, 40.143669, 24.298168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304714, 39.930241, 24.271694>,  <31.127180, 39.574524, 24.227571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304714, 39.930241, 24.271694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657031, -0.406655, 0.634777,
		0.609360, -0.209261, -0.764781,
		0.443836, 0.889293, 0.110308,
		31.437864, 40.197029, 24.304787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848648, 39.472431, 24.188223>,  <31.127180, 39.574524, 24.227571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848648, 39.472431, 24.188223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855646, 39.834591, 24.357903>,  <31.859846, 40.051888, 24.459711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855646, 39.834591, 24.357903>,  <31.848648, 39.472431, 24.188223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855646, 39.834591, 24.357903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820713, -0.255329, 0.511114,
		0.571072, 0.339205, -0.747540,
		0.017496, 0.905399, 0.424201,
		31.860895, 40.106209, 24.485163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600166, 39.798229, 24.215242>,  <31.848648, 39.472431, 24.188223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600166, 39.798229, 24.215242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364208, 39.946140, 24.502378>,  <32.222633, 40.034889, 24.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364208, 39.946140, 24.502378>,  <32.600166, 39.798229, 24.215242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364208, 39.946140, 24.502378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688690, -0.233742, 0.686346,
		0.421586, 0.899237, -0.116782,
		-0.589891, 0.369780, 0.717838,
		32.187241, 40.057076, 24.717730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083767, 40.053459, 24.622856>,  <32.600166, 39.798229, 24.215242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083767, 40.053459, 24.622856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747181, 40.057755, 24.838938>,  <32.545231, 40.060333, 24.968586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747181, 40.057755, 24.838938>,  <33.083767, 40.053459, 24.622856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747181, 40.057755, 24.838938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539237, -0.046302, 0.840880,
		0.034043, 0.998870, 0.033170,
		-0.841466, 0.010740, 0.540204,
		32.494740, 40.060978, 25.000999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147953, 40.657379, 25.056181>,  <33.083767, 40.053459, 24.622856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147953, 40.657379, 25.056181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881104, 40.411896, 25.225088>,  <32.720993, 40.264606, 25.326431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881104, 40.411896, 25.225088>,  <33.147953, 40.657379, 25.056181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881104, 40.411896, 25.225088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447507, 0.123012, 0.885780,
		-0.595553, 0.779892, 0.192573,
		-0.667124, -0.613707, 0.422267,
		32.680965, 40.227783, 25.351768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059929, 40.962177, 25.802073>,  <33.147953, 40.657379, 25.056181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059929, 40.962177, 25.802073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935749, 40.583408, 25.768692>,  <32.861240, 40.356148, 25.748663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935749, 40.583408, 25.768692>,  <33.059929, 40.962177, 25.802073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935749, 40.583408, 25.768692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413511, -0.213575, 0.885096,
		-0.855937, 0.240272, 0.457866,
		-0.310452, -0.946919, -0.083451,
		32.842613, 40.299332, 25.743656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646954, 40.774094, 26.363867>,  <33.059929, 40.962177, 25.802073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646954, 40.774094, 26.363867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772152, 40.417568, 26.232658>,  <32.847271, 40.203651, 26.153933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772152, 40.417568, 26.232658>,  <32.646954, 40.774094, 26.363867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772152, 40.417568, 26.232658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401134, -0.189000, 0.896310,
		-0.860888, -0.412119, 0.298380,
		0.312992, -0.891312, -0.328022,
		32.866051, 40.150173, 26.134253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397423, 40.335629, 26.902719>,  <32.646954, 40.774094, 26.363867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397423, 40.335629, 26.902719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685940, 40.137264, 26.709301>,  <32.859051, 40.018246, 26.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685940, 40.137264, 26.709301>,  <32.397423, 40.335629, 26.902719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685940, 40.137264, 26.709301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364823, -0.321427, 0.873836,
		-0.588767, -0.806698, -0.050923,
		0.721289, -0.495908, -0.483547,
		32.902328, 39.988491, 26.564238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324181, 39.665291, 27.146477>,  <32.397423, 40.335629, 26.902719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324181, 39.665291, 27.146477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702156, 39.681221, 27.016554>,  <32.928944, 39.690781, 26.938601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702156, 39.681221, 27.016554>,  <32.324181, 39.665291, 27.146477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702156, 39.681221, 27.016554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323067, -0.271543, 0.906583,
		-0.052090, -0.961602, -0.269459,
		0.944942, 0.039829, -0.324806,
		32.985638, 39.693169, 26.919111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530289, 38.987492, 27.336376>,  <32.324181, 39.665291, 27.146477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530289, 38.987492, 27.336376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866638, 39.198246, 27.286856>,  <33.068447, 39.324699, 27.257143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866638, 39.198246, 27.286856>,  <32.530289, 38.987492, 27.336376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866638, 39.198246, 27.286856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363665, -0.380603, 0.850229,
		0.400855, -0.759955, -0.511648,
		0.840870, 0.526887, -0.123802,
		33.118900, 39.356312, 27.249716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151203, 38.520241, 27.448624>,  <32.530289, 38.987492, 27.336376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151203, 38.520241, 27.448624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289101, 38.894295, 27.481325>,  <33.371838, 39.118725, 27.500946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289101, 38.894295, 27.481325>,  <33.151203, 38.520241, 27.448624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289101, 38.894295, 27.481325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482174, -0.251133, 0.839310,
		0.805396, -0.249922, -0.537471,
		0.344739, 0.935132, 0.081756,
		33.392521, 39.174835, 27.505852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807213, 38.401123, 27.493511>,  <33.151203, 38.520241, 27.448624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807213, 38.401123, 27.493511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722618, 38.755390, 27.658852>,  <33.671860, 38.967953, 27.758057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722618, 38.755390, 27.658852>,  <33.807213, 38.401123, 27.493511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722618, 38.755390, 27.658852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412889, -0.302369, 0.859125,
		0.885886, 0.352364, -0.301736,
		-0.211490, 0.885670, 0.413352,
		33.659172, 39.021091, 27.782858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468849, 38.613873, 27.909256>,  <33.807213, 38.401123, 27.493511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468849, 38.613873, 27.909256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206711, 38.874588, 28.061932>,  <34.049427, 39.031017, 28.153536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206711, 38.874588, 28.061932>,  <34.468849, 38.613873, 27.909256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206711, 38.874588, 28.061932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514507, 0.015256, 0.857350,
		0.552990, 0.758246, -0.345349,
		-0.655351, 0.651790, 0.381687,
		34.010105, 39.070126, 28.176437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847908, 39.078621, 28.398695>,  <34.468849, 38.613873, 27.909256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847908, 39.078621, 28.398695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463371, 39.098923, 28.506948>,  <34.232651, 39.111103, 28.571901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463371, 39.098923, 28.506948>,  <34.847908, 39.078621, 28.398695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463371, 39.098923, 28.506948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273431, 0.060046, 0.960015,
		0.032478, 0.996904, -0.071603,
		-0.961343, 0.050758, 0.270635,
		34.174969, 39.114151, 28.588139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827736, 39.555389, 28.962576>,  <34.847908, 39.078621, 28.398695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827736, 39.555389, 28.962576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481930, 39.363384, 29.022190>,  <34.274448, 39.248180, 29.057959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481930, 39.363384, 29.022190>,  <34.827736, 39.555389, 28.962576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481930, 39.363384, 29.022190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054436, 0.205356, 0.977172,
		-0.499656, 0.852890, -0.151403,
		-0.864512, -0.480008, 0.149035,
		34.222576, 39.219383, 29.066900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240967, 40.103996, 29.271023>,  <34.827736, 39.555389, 28.962576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240967, 40.103996, 29.271023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186916, 39.719582, 29.367472>,  <34.154484, 39.488934, 29.425341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186916, 39.719582, 29.367472>,  <34.240967, 40.103996, 29.271023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186916, 39.719582, 29.367472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030224, 0.239245, 0.970489,
		-0.990367, 0.138429, -0.003283,
		-0.135130, -0.961041, 0.241124,
		34.146378, 39.431271, 29.439810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014797, 40.203465, 29.842459>,  <34.240967, 40.103996, 29.271023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014797, 40.203465, 29.842459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075012, 39.808105, 29.850615>,  <34.111141, 39.570892, 29.855509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075012, 39.808105, 29.850615>,  <34.014797, 40.203465, 29.842459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075012, 39.808105, 29.850615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068149, 0.030952, 0.997195,
		-0.986253, -0.148725, 0.072018,
		0.150537, -0.988394, 0.020391,
		34.120174, 39.511589, 29.856731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520721, 39.878811, 30.394848>,  <34.014797, 40.203465, 29.842459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520721, 39.878811, 30.394848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817482, 39.617847, 30.332956>,  <33.995537, 39.461269, 30.295822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817482, 39.617847, 30.332956>,  <33.520721, 39.878811, 30.394848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817482, 39.617847, 30.332956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235864, 0.037922, 0.971046,
		-0.627654, -0.756916, 0.182015,
		0.741902, -0.652411, -0.154727,
		34.040054, 39.422123, 30.286537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410202, 39.394444, 30.885223>,  <33.520721, 39.878811, 30.394848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410202, 39.394444, 30.885223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790810, 39.338402, 30.775696>,  <34.019176, 39.304775, 30.709978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790810, 39.338402, 30.775696>,  <33.410202, 39.394444, 30.885223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790810, 39.338402, 30.775696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269111, -0.051897, 0.961710,
		-0.148950, -0.988776, -0.011677,
		0.951521, -0.140104, -0.273821,
		34.076267, 39.296371, 30.693550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617279, 38.912605, 31.321987>,  <33.410202, 39.394444, 30.885223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617279, 38.912605, 31.321987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965565, 39.071510, 31.206026>,  <34.174538, 39.166851, 31.136450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965565, 39.071510, 31.206026>,  <33.617279, 38.912605, 31.321987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965565, 39.071510, 31.206026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403017, -0.238561, 0.883553,
		0.281841, -0.886157, -0.367821,
		0.870714, 0.397259, -0.289900,
		34.226780, 39.190689, 31.119057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155659, 38.404781, 31.649292>,  <33.617279, 38.912605, 31.321987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155659, 38.404781, 31.649292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348885, 38.738136, 31.541883>,  <34.464821, 38.938148, 31.477438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348885, 38.738136, 31.541883>,  <34.155659, 38.404781, 31.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348885, 38.738136, 31.541883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601880, -0.093329, 0.793114,
		0.635913, -0.544747, -0.546685,
		0.483069, 0.833391, -0.268523,
		34.493805, 38.988152, 31.461327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789734, 38.300755, 31.661556>,  <34.155659, 38.404781, 31.649292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789734, 38.300755, 31.661556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 38.698631, 31.685047>,  <34.843788, 38.937359, 31.699142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 38.698631, 31.685047>,  <34.789734, 38.300755, 31.661556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823517, 38.698631, 31.685047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651025, -0.099708, 0.752479,
		0.754343, -0.025321, -0.655992,
		0.084461, 0.994695, 0.058729,
		34.848854, 38.997040, 31.702665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499439, 38.474903, 31.589825>,  <34.789734, 38.300755, 31.661556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499439, 38.474903, 31.589825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343597, 38.796196, 31.770058>,  <35.250092, 38.988972, 31.878197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343597, 38.796196, 31.770058>,  <35.499439, 38.474903, 31.589825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343597, 38.796196, 31.770058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644952, -0.111297, 0.756075,
		0.657453, 0.585175, -0.474685,
		-0.389606, 0.803233, 0.450582,
		35.226715, 39.037167, 31.905231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017960, 38.944942, 31.701897>,  <35.499439, 38.474903, 31.589825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017960, 38.944942, 31.701897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722740, 39.049236, 31.950830>,  <35.545609, 39.111813, 32.100189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722740, 39.049236, 31.950830>,  <36.017960, 38.944942, 31.701897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722740, 39.049236, 31.950830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636545, -0.036881, 0.770357,
		0.223810, 0.964706, -0.138748,
		-0.738051, 0.260733, 0.622333,
		35.501324, 39.127457, 32.137531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277878, 39.534313, 32.049786>,  <36.017960, 38.944942, 31.701897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277878, 39.534313, 32.049786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979385, 39.389175, 32.273029>,  <35.800289, 39.302094, 32.406975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979385, 39.389175, 32.273029>,  <36.277878, 39.534313, 32.049786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979385, 39.389175, 32.273029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618612, -0.068306, 0.782722,
		-0.245882, 0.929344, 0.275429,
		-0.746232, -0.362841, 0.558108,
		35.755516, 39.280323, 32.440460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489094, 39.891960, 32.728218>,  <36.277878, 39.534313, 32.049786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489094, 39.891960, 32.728218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236790, 39.587421, 32.788216>,  <36.085407, 39.404697, 32.824215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236790, 39.587421, 32.788216>,  <36.489094, 39.891960, 32.728218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236790, 39.587421, 32.788216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639242, -0.400234, 0.656646,
		-0.439903, 0.510065, 0.739134,
		-0.630758, -0.761346, 0.149990,
		36.047562, 39.359016, 32.833214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470612, 39.802151, 33.470654>,  <36.489094, 39.891960, 32.728218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470612, 39.802151, 33.470654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335079, 39.452896, 33.330463>,  <36.253761, 39.243343, 33.246349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335079, 39.452896, 33.330463>,  <36.470612, 39.802151, 33.470654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335079, 39.452896, 33.330463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637515, -0.487024, 0.596977,
		-0.691931, -0.021161, 0.721654,
		-0.338830, -0.873132, -0.350478,
		36.233429, 39.190956, 33.225319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516384, 39.382336, 34.024872>,  <36.470612, 39.802151, 33.470654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516384, 39.382336, 34.024872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469952, 39.125134, 33.722065>,  <36.442093, 38.970814, 33.540382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469952, 39.125134, 33.722065>,  <36.516384, 39.382336, 34.024872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469952, 39.125134, 33.722065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617636, -0.643619, 0.451975,
		-0.777851, -0.415096, 0.471851,
		-0.116079, -0.643001, -0.757018,
		36.435127, 38.932232, 33.494961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323593, 38.829178, 34.352581>,  <36.516384, 39.382336, 34.024872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323593, 38.829178, 34.352581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486271, 38.729782, 34.000935>,  <36.583878, 38.670143, 33.789948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486271, 38.729782, 34.000935>,  <36.323593, 38.829178, 34.352581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486271, 38.729782, 34.000935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691220, -0.545502, 0.473966,
		-0.597338, -0.800424, -0.050090,
		0.406697, -0.248495, -0.879117,
		36.608280, 38.655235, 33.737198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437431, 38.080853, 34.369766>,  <36.323593, 38.829178, 34.352581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437431, 38.080853, 34.369766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680298, 38.222813, 34.085400>,  <36.826015, 38.307987, 33.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680298, 38.222813, 34.085400>,  <36.437431, 38.080853, 34.369766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680298, 38.222813, 34.085400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737417, -0.584891, 0.337814,
		-0.295919, -0.729350, -0.616831,
		0.607164, 0.354896, -0.710915,
		36.862446, 38.329281, 33.872124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605278, 37.452843, 33.992664>,  <36.437431, 38.080853, 34.369766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605278, 37.452843, 33.992664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867611, 37.747597, 33.927078>,  <37.025013, 37.924450, 33.887726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867611, 37.747597, 33.927078>,  <36.605278, 37.452843, 33.992664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867611, 37.747597, 33.927078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746395, -0.600440, 0.286995,
		0.113032, -0.310603, -0.943795,
		0.655834, 0.736883, -0.163964,
		37.064362, 37.968662, 33.877888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130459, 37.126022, 33.990086>,  <36.605278, 37.452843, 33.992664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130459, 37.126022, 33.990086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315952, 37.478630, 34.025570>,  <37.427250, 37.690197, 34.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315952, 37.478630, 34.025570>,  <37.130459, 37.126022, 33.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315952, 37.478630, 34.025570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879019, -0.470304, 0.078355,
		0.110791, 0.041640, -0.992971,
		0.463735, 0.881522, 0.088708,
		37.455074, 37.743088, 34.052181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745132, 37.173004, 33.501553>,  <37.130459, 37.126022, 33.990086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745132, 37.173004, 33.501553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818707, 37.458996, 33.771358>,  <37.862850, 37.630589, 33.933243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818707, 37.458996, 33.771358>,  <37.745132, 37.173004, 33.501553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818707, 37.458996, 33.771358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926788, -0.354763, 0.123314,
		0.327461, 0.602454, -0.727886,
		0.183936, 0.714977, 0.674518,
		37.873886, 37.673489, 33.973713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366985, 37.410164, 33.323517>,  <37.745132, 37.173004, 33.501553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366985, 37.410164, 33.323517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322758, 37.540073, 33.699238>,  <38.296223, 37.618019, 33.924671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322758, 37.540073, 33.699238>,  <38.366985, 37.410164, 33.323517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322758, 37.540073, 33.699238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895421, -0.377557, 0.235950,
		0.431272, 0.867162, -0.249067,
		-0.110570, 0.324779, 0.939305,
		38.289585, 37.637508, 33.981030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028004, 37.585815, 33.553337>,  <38.366985, 37.410164, 33.323517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028004, 37.585815, 33.553337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829243, 37.531387, 33.896164>,  <38.709984, 37.498730, 34.101860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829243, 37.531387, 33.896164>,  <39.028004, 37.585815, 33.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829243, 37.531387, 33.896164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800638, -0.452867, 0.392289,
		0.334758, 0.881133, 0.333978,
		-0.496906, -0.136073, 0.857069,
		38.680172, 37.490566, 34.153286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399849, 37.849121, 34.125065>,  <39.028004, 37.585815, 33.553337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399849, 37.849121, 34.125065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146614, 37.597622, 34.305676>,  <38.994675, 37.446724, 34.414043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146614, 37.597622, 34.305676>,  <39.399849, 37.849121, 34.125065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146614, 37.597622, 34.305676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760316, -0.395576, 0.515208,
		-0.145322, 0.669475, 0.728481,
		-0.633088, -0.628747, 0.451527,
		38.956688, 37.408997, 34.441135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568508, 37.821762, 34.855671>,  <39.399849, 37.849121, 34.125065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568508, 37.821762, 34.855671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347988, 37.492195, 34.803177>,  <39.215675, 37.294456, 34.771679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347988, 37.492195, 34.803177>,  <39.568508, 37.821762, 34.855671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347988, 37.492195, 34.803177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688791, -0.538244, 0.485654,
		-0.470776, 0.177349, 0.864244,
		-0.551305, -0.823918, -0.131236,
		39.182598, 37.245018, 34.763805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722065, 37.419060, 35.514927>,  <39.568508, 37.821762, 34.855671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722065, 37.419060, 35.514927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497971, 37.164928, 35.302326>,  <39.363514, 37.012451, 35.174767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497971, 37.164928, 35.302326>,  <39.722065, 37.419060, 35.514927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497971, 37.164928, 35.302326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490886, -0.771489, 0.404766,
		-0.667210, -0.034145, 0.744087,
		-0.560234, -0.635326, -0.531506,
		39.329899, 36.974331, 35.142876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216232, 36.993214, 35.987026>,  <39.722065, 37.419060, 35.514927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216232, 36.993214, 35.987026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284191, 36.787388, 35.650845>,  <39.324966, 36.663895, 35.449135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284191, 36.787388, 35.650845>,  <39.216232, 36.993214, 35.987026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284191, 36.787388, 35.650845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320687, -0.777562, 0.540886,
		-0.931823, -0.361419, 0.032905,
		0.169900, -0.514562, -0.840452,
		39.335159, 36.633018, 35.398708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964767, 36.251305, 36.054863>,  <39.216232, 36.993214, 35.987026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964767, 36.251305, 36.054863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227848, 36.223972, 35.754795>,  <39.385696, 36.207573, 35.574753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227848, 36.223972, 35.754795>,  <38.964767, 36.251305, 36.054863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227848, 36.223972, 35.754795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285002, -0.899273, 0.331785,
		-0.697280, -0.432016, -0.571981,
		0.657704, -0.068331, -0.750171,
		39.425159, 36.203472, 35.529743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975071, 35.641914, 36.102077>,  <38.964767, 36.251305, 36.054863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975071, 35.641914, 36.102077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298000, 35.699661, 35.873203>,  <39.491756, 35.734310, 35.735878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298000, 35.699661, 35.873203>,  <38.975071, 35.641914, 36.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298000, 35.699661, 35.873203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386049, -0.862549, 0.327071,
		-0.446319, -0.484942, -0.752084,
		0.807320, 0.144363, -0.572184,
		39.540195, 35.742970, 35.701550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027393, 35.129421, 35.622585>,  <38.975071, 35.641914, 36.102077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027393, 35.129421, 35.622585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396534, 35.262283, 35.700573>,  <39.618019, 35.342003, 35.747364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396534, 35.262283, 35.700573>,  <39.027393, 35.129421, 35.622585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396534, 35.262283, 35.700573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307517, -0.940236, 0.146249,
		0.231894, -0.075010, -0.969845,
		0.922853, 0.332158, 0.194969,
		39.673389, 35.361931, 35.759064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396919, 34.463547, 35.484909>,  <39.027393, 35.129421, 35.622585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396919, 34.463547, 35.484909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701984, 34.689495, 35.610931>,  <39.885025, 34.825066, 35.686546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701984, 34.689495, 35.610931>,  <39.396919, 34.463547, 35.484909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701984, 34.689495, 35.610931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502831, -0.824195, 0.260507,
		0.406820, -0.040260, -0.912621,
		0.762665, 0.564873, 0.315055,
		39.930782, 34.858955, 35.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016941, 34.282063, 35.186134>,  <39.396919, 34.463547, 35.484909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016941, 34.282063, 35.186134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128033, 34.471302, 35.520569>,  <40.194687, 34.584846, 35.721230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128033, 34.471302, 35.520569>,  <40.016941, 34.282063, 35.186134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128033, 34.471302, 35.520569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565820, -0.783907, 0.255613,
		0.776345, 0.402084, -0.485403,
		0.277733, 0.473095, 0.836090,
		40.211353, 34.613232, 35.771397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771759, 34.303093, 35.208088>,  <40.016941, 34.282063, 35.186134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771759, 34.303093, 35.208088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645836, 34.351456, 35.584656>,  <40.570282, 34.380474, 35.810596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645836, 34.351456, 35.584656>,  <40.771759, 34.303093, 35.208088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645836, 34.351456, 35.584656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613141, -0.731223, 0.298949,
		0.724535, 0.671337, 0.156062,
		-0.314811, 0.120911, 0.941421,
		40.551392, 34.387730, 35.867081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380844, 34.243130, 35.643051>,  <40.771759, 34.303093, 35.208088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380844, 34.243130, 35.643051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079323, 34.163425, 35.893517>,  <40.898411, 34.115601, 36.043797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079323, 34.163425, 35.893517>,  <41.380844, 34.243130, 35.643051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079323, 34.163425, 35.893517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525431, -0.755015, 0.392268,
		0.394595, 0.624696, 0.673832,
		-0.753801, -0.199265, 0.626161,
		40.853184, 34.103645, 36.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611866, 34.325176, 36.229721>,  <41.380844, 34.243130, 35.643051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611866, 34.325176, 36.229721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297344, 34.087231, 36.296490>,  <41.108631, 33.944462, 36.336552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297344, 34.087231, 36.296490>,  <41.611866, 34.325176, 36.229721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297344, 34.087231, 36.296490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603535, -0.681727, 0.413515,
		-0.132191, 0.425891, 0.895066,
		-0.786302, -0.594867, 0.166922,
		41.061455, 33.908772, 36.346565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735813, 33.995346, 36.853870>,  <41.611866, 34.325176, 36.229721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735813, 33.995346, 36.853870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441002, 33.751328, 36.737507>,  <41.264114, 33.604916, 36.667686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441002, 33.751328, 36.737507>,  <41.735813, 33.995346, 36.853870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441002, 33.751328, 36.737507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384136, -0.732261, 0.562347,
		-0.556082, 0.302716, 0.774039,
		-0.737030, -0.610046, -0.290913,
		41.219894, 33.568314, 36.650234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362221, 33.664860, 37.463726>,  <41.735813, 33.995346, 36.853870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362221, 33.664860, 37.463726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274662, 33.438297, 37.145916>,  <41.222126, 33.302361, 36.955231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274662, 33.438297, 37.145916>,  <41.362221, 33.664860, 37.463726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274662, 33.438297, 37.145916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252245, -0.819441, 0.514674,
		-0.942581, -0.087756, 0.322243,
		-0.218893, -0.566406, -0.794525,
		41.208996, 33.268375, 36.907558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830315, 33.093651, 37.652428>,  <41.362221, 33.664860, 37.463726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830315, 33.093651, 37.652428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014324, 32.953533, 37.326073>,  <41.124729, 32.869465, 37.130260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014324, 32.953533, 37.326073>,  <40.830315, 33.093651, 37.652428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014324, 32.953533, 37.326073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149420, -0.875244, 0.460023,
		-0.875244, -0.333531, -0.350292,
		-0.460023, 0.350292, 0.815888,
		41.152332, 32.848446, 37.081306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749260, 32.390541, 37.626736>,  <40.830315, 33.093651, 37.652428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749260, 32.390541, 37.626736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053326, 32.395779, 37.366894>,  <41.235764, 32.398922, 37.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053326, 32.395779, 37.366894>,  <40.749260, 32.390541, 37.626736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053326, 32.395779, 37.366894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307225, -0.888209, 0.341611,
		-0.572509, -0.459254, -0.679205,
		0.760162, 0.013094, -0.649602,
		41.281376, 32.399708, 37.172012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801174, 31.692696, 37.327106>,  <40.749260, 32.390541, 37.626736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801174, 31.692696, 37.327106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150471, 31.878101, 37.266960>,  <41.360046, 31.989346, 37.230873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150471, 31.878101, 37.266960>,  <40.801174, 31.692696, 37.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150471, 31.878101, 37.266960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487294, -0.831268, 0.267466,
		-0.001017, -0.306832, -0.951763,
		0.873238, 0.463516, -0.150363,
		41.412441, 32.017155, 37.221851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281624, 31.184893, 36.999184>,  <40.801174, 31.692696, 37.327106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281624, 31.184893, 36.999184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486172, 31.465162, 37.198204>,  <41.608902, 31.633324, 37.317616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486172, 31.465162, 37.198204>,  <41.281624, 31.184893, 36.999184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486172, 31.465162, 37.198204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557788, -0.711070, 0.428079,
		0.653735, 0.058619, -0.754450,
		0.511373, 0.700673, 0.497548,
		41.639584, 31.675364, 37.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017441, 31.066578, 36.897720>,  <41.281624, 31.184893, 36.999184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017441, 31.066578, 36.897720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942669, 31.258757, 37.240467>,  <41.897804, 31.374063, 37.446117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942669, 31.258757, 37.240467>,  <42.017441, 31.066578, 36.897720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942669, 31.258757, 37.240467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646562, -0.596520, 0.475522,
		0.739603, 0.642911, -0.199129,
		-0.186934, 0.480447, 0.856870,
		41.886589, 31.402891, 37.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588032, 31.356037, 37.125137>,  <42.017441, 31.066578, 36.897720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588032, 31.356037, 37.125137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342987, 31.245943, 37.421505>,  <42.195961, 31.179886, 37.599323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342987, 31.245943, 37.421505>,  <42.588032, 31.356037, 37.125137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342987, 31.245943, 37.421505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695938, -0.632206, 0.340568,
		0.374674, 0.724265, 0.578843,
		-0.612609, -0.275237, 0.740915,
		42.159203, 31.163372, 37.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966484, 31.420210, 37.776840>,  <42.588032, 31.356037, 37.125137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966484, 31.420210, 37.776840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678005, 31.147171, 37.824051>,  <42.504917, 30.983349, 37.852379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678005, 31.147171, 37.824051>,  <42.966484, 31.420210, 37.776840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678005, 31.147171, 37.824051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657595, -0.621047, 0.426462,
		-0.217800, 0.385180, 0.896772,
		-0.721202, -0.682596, 0.118028,
		42.461643, 30.942392, 37.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135387, 31.068216, 38.355549>,  <42.966484, 31.420210, 37.776840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135387, 31.068216, 38.355549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873825, 30.820238, 38.182079>,  <42.716888, 30.671452, 38.077999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873825, 30.820238, 38.182079>,  <43.135387, 31.068216, 38.355549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873825, 30.820238, 38.182079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588478, -0.777023, 0.223447,
		-0.475498, -0.109092, 0.872926,
		-0.653908, -0.619946, -0.433672,
		42.677654, 30.634254, 38.051979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033642, 30.534309, 38.828964>,  <43.135387, 31.068216, 38.355549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033642, 30.534309, 38.828964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936314, 30.403114, 38.463840>,  <42.877914, 30.324398, 38.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936314, 30.403114, 38.463840>,  <43.033642, 30.534309, 38.828964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936314, 30.403114, 38.463840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693710, -0.716590, 0.072563,
		-0.677909, -0.615568, 0.401890,
		-0.243323, -0.327986, -0.912808,
		42.863316, 30.304718, 38.189999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187366, 29.954411, 38.803131>,  <43.033642, 30.534309, 38.828964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187366, 29.954411, 38.803131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203476, 29.947643, 38.403515>,  <43.213142, 29.943583, 38.163742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203476, 29.947643, 38.403515>,  <43.187366, 29.954411, 38.803131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203476, 29.947643, 38.403515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945053, -0.323998, 0.043587,
		-0.324426, -0.945906, 0.002942,
		0.040276, -0.016921, -0.999045,
		43.215557, 29.942568, 38.103802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658230, 29.714142, 38.352543>,  <43.187366, 29.954411, 38.803131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658230, 29.714142, 38.352543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519154, 29.391222, 38.161804>,  <43.435707, 29.197470, 38.047359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519154, 29.391222, 38.161804>,  <43.658230, 29.714142, 38.352543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519154, 29.391222, 38.161804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858943, 0.478165, -0.183236,
		0.375937, 0.345875, -0.859675,
		-0.347689, -0.807297, -0.476847,
		43.414848, 29.149033, 38.018749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596218, 29.818230, 37.564228>,  <43.658230, 29.714142, 38.352543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596218, 29.818230, 37.564228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303467, 29.592226, 37.716610>,  <43.127815, 29.456623, 37.808041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303467, 29.592226, 37.716610>,  <43.596218, 29.818230, 37.564228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303467, 29.592226, 37.716610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666025, 0.711334, -0.224533,
		-0.144122, -0.418054, -0.896917,
		-0.731874, -0.565009, 0.380953,
		43.083904, 29.422724, 37.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095448, 29.746309, 37.064293>,  <43.596218, 29.818230, 37.564228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095448, 29.746309, 37.064293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945168, 29.732742, 37.434742>,  <42.855000, 29.724602, 37.657009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945168, 29.732742, 37.434742>,  <43.095448, 29.746309, 37.064293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945168, 29.732742, 37.434742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467052, 0.870071, -0.157605,
		-0.800444, -0.491759, -0.342728,
		-0.375701, -0.033918, 0.926120,
		42.832458, 29.722567, 37.712578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407574, 29.805454, 37.131241>,  <43.095448, 29.746309, 37.064293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407574, 29.805454, 37.131241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586452, 29.973881, 37.446892>,  <42.693779, 30.074936, 37.636280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586452, 29.973881, 37.446892>,  <42.407574, 29.805454, 37.131241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586452, 29.973881, 37.446892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306929, 0.900931, -0.306786,
		-0.840124, -0.105012, 0.532131,
		0.447197, 0.421065, 0.789125,
		42.720612, 30.100201, 37.683628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025196, 30.383404, 37.280781>,  <42.407574, 29.805454, 37.131241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025196, 30.383404, 37.280781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394135, 30.464199, 37.412521>,  <42.615498, 30.512676, 37.491566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394135, 30.464199, 37.412521>,  <42.025196, 30.383404, 37.280781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394135, 30.464199, 37.412521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012239, 0.836749, -0.547450,
		-0.386160, 0.508971, 0.769304,
		0.922351, 0.201988, 0.329348,
		42.670841, 30.524796, 37.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850712, 29.758696, 37.582691>,  <42.025196, 30.383404, 37.280781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850712, 29.758696, 37.582691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114391, 30.026604, 37.719433>,  <42.272598, 30.187349, 37.801479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114391, 30.026604, 37.719433>,  <41.850712, 29.758696, 37.582691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114391, 30.026604, 37.719433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703709, 0.709698, -0.033509,
		-0.265059, -0.218480, 0.939154,
		0.659195, 0.669772, 0.341858,
		42.312149, 30.227535, 37.821991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550148, 30.165756, 38.192684>,  <41.850712, 29.758696, 37.582691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550148, 30.165756, 38.192684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832626, 30.393002, 38.023674>,  <42.002113, 30.529348, 37.922268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832626, 30.393002, 38.023674>,  <41.550148, 30.165756, 38.192684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832626, 30.393002, 38.023674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665339, 0.736558, -0.121682,
		0.242089, 0.367057, 0.898144,
		0.706199, 0.568112, -0.422530,
		42.044487, 30.563435, 37.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485138, 30.727396, 38.612305>,  <41.550148, 30.165756, 38.192684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485138, 30.727396, 38.612305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670799, 30.832443, 38.273933>,  <41.782196, 30.895472, 38.070911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670799, 30.832443, 38.273933>,  <41.485138, 30.727396, 38.612305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670799, 30.832443, 38.273933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775394, 0.582127, -0.244729,
		0.428168, 0.769520, 0.473827,
		0.464151, 0.262617, -0.845929,
		41.810043, 30.911228, 38.020153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972301, 31.455387, 38.522064>,  <41.485138, 30.727396, 38.612305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972301, 31.455387, 38.522064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720634, 31.284014, 38.262650>,  <41.569633, 31.181189, 38.107002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720634, 31.284014, 38.262650>,  <41.972301, 31.455387, 38.522064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720634, 31.284014, 38.262650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530112, 0.846728, -0.045086,
		0.568448, 0.315429, -0.759850,
		-0.629165, -0.428435, -0.648533,
		41.531883, 31.155483, 38.068089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921200, 31.904772, 37.861294>,  <41.972301, 31.455387, 38.522064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921200, 31.904772, 37.861294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601601, 31.677362, 37.939659>,  <41.409840, 31.540916, 37.986679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601601, 31.677362, 37.939659>,  <41.921200, 31.904772, 37.861294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601601, 31.677362, 37.939659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601099, 0.746044, -0.286529,
		0.016739, -0.346699, -0.937827,
		-0.798999, -0.568523, 0.195912,
		41.361900, 31.506805, 37.998432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358147, 32.426182, 37.598553>,  <41.921200, 31.904772, 37.861294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358147, 32.426182, 37.598553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180752, 32.135799, 37.388294>,  <42.074314, 31.961569, 37.262138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180752, 32.135799, 37.388294>,  <42.358147, 32.426182, 37.598553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180752, 32.135799, 37.388294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535426, 0.684911, -0.494182,
		0.718779, 0.062286, -0.692443,
		-0.443482, -0.725959, -0.525649,
		42.047707, 31.918011, 37.230602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446259, 32.674950, 36.856533>,  <42.358147, 32.426182, 37.598553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446259, 32.674950, 36.856533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141235, 32.437401, 36.959148>,  <41.958221, 32.294872, 37.020718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141235, 32.437401, 36.959148>,  <42.446259, 32.674950, 36.856533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141235, 32.437401, 36.959148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639455, 0.631906, -0.437941,
		0.097972, -0.498004, -0.861623,
		-0.762561, -0.593875, 0.256542,
		41.912468, 32.259239, 37.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224171, 32.388260, 36.257084>,  <42.446259, 32.674950, 36.856533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224171, 32.388260, 36.257084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939705, 32.410866, 36.537384>,  <41.769024, 32.424427, 36.705563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939705, 32.410866, 36.537384>,  <42.224171, 32.388260, 36.257084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939705, 32.410866, 36.537384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516154, 0.634773, -0.575020,
		-0.477311, -0.770629, -0.422262,
		-0.711168, 0.056511, 0.700747,
		41.726353, 32.427818, 36.747608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536888, 32.219620, 35.939995>,  <42.224171, 32.388260, 36.257084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536888, 32.219620, 35.939995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494549, 32.449211, 36.264797>,  <41.469143, 32.586964, 36.459679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494549, 32.449211, 36.264797>,  <41.536888, 32.219620, 35.939995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494549, 32.449211, 36.264797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626445, 0.595680, -0.502725,
		-0.772245, -0.561888, 0.296511,
		-0.105850, 0.573975, 0.812003,
		41.462795, 32.621403, 36.508400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812744, 32.427338, 36.007320>,  <41.536888, 32.219620, 35.939995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812744, 32.427338, 36.007320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962959, 32.706833, 36.250874>,  <41.053089, 32.874531, 36.397007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962959, 32.706833, 36.250874>,  <40.812744, 32.427338, 36.007320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962959, 32.706833, 36.250874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703730, 0.642490, -0.303265,
		-0.603105, -0.314603, 0.733000,
		0.375537, 0.698735, 0.608885,
		41.075619, 32.916454, 36.433540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404209, 32.965263, 35.712772>,  <40.812744, 32.427338, 36.007320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404209, 32.965263, 35.712772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585873, 33.104862, 36.040661>,  <40.694870, 33.188622, 36.237392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585873, 33.104862, 36.040661>,  <40.404209, 32.965263, 35.712772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585873, 33.104862, 36.040661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433799, 0.890272, -0.138688,
		-0.778176, -0.292607, 0.555719,
		0.454160, 0.348994, 0.819721,
		40.722122, 33.209560, 36.286575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860157, 33.312302, 36.127911>,  <40.404209, 32.965263, 35.712772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860157, 33.312302, 36.127911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205612, 33.465435, 36.259098>,  <40.412888, 33.557316, 36.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205612, 33.465435, 36.259098>,  <39.860157, 33.312302, 36.127911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205612, 33.465435, 36.259098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401612, 0.915739, -0.011360,
		-0.304686, -0.121907, 0.944619,
		0.863640, 0.382832, 0.327972,
		40.464703, 33.580284, 36.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838890, 33.764950, 36.819489>,  <39.860157, 33.312302, 36.127911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838890, 33.764950, 36.819489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157280, 33.894817, 36.615128>,  <40.348312, 33.972736, 36.492512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157280, 33.894817, 36.615128>,  <39.838890, 33.764950, 36.819489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157280, 33.894817, 36.615128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376890, 0.926257, 0.001428,
		0.473693, 0.191418, 0.859636,
		0.795970, 0.324665, -0.510905,
		40.396072, 33.992218, 36.461857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233078, 34.456749, 37.144726>,  <39.838890, 33.764950, 36.819489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233078, 34.456749, 37.144726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332413, 34.440144, 36.757610>,  <40.392014, 34.430180, 36.525341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332413, 34.440144, 36.757610>,  <40.233078, 34.456749, 37.144726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332413, 34.440144, 36.757610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336655, 0.933105, -0.126410,
		0.908292, 0.357201, 0.217746,
		0.248334, -0.041512, -0.967785,
		40.406914, 34.427689, 36.467274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482697, 35.250820, 36.846596>,  <40.233078, 34.456749, 37.144726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482697, 35.250820, 36.846596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380787, 35.056271, 36.512283>,  <40.319641, 34.939541, 36.311695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380787, 35.056271, 36.512283>,  <40.482697, 35.250820, 36.846596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380787, 35.056271, 36.512283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348979, 0.852302, -0.389609,
		0.901835, 0.192410, -0.386875,
		-0.254770, -0.486374, -0.835782,
		40.304356, 34.910358, 36.261547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692181, 35.700211, 36.462021>,  <40.482697, 35.250820, 36.846596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692181, 35.700211, 36.462021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457619, 35.460835, 36.243668>,  <40.316879, 35.317207, 36.112656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457619, 35.460835, 36.243668>,  <40.692181, 35.700211, 36.462021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457619, 35.460835, 36.243668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275974, 0.781205, -0.559962,
		0.761550, -0.177720, -0.623264,
		-0.586413, -0.598444, -0.545880,
		40.281696, 35.281300, 36.079903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757626, 36.077312, 35.827587>,  <40.692181, 35.700211, 36.462021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757626, 36.077312, 35.827587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448788, 35.830933, 35.765007>,  <40.263485, 35.683105, 35.727459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448788, 35.830933, 35.765007>,  <40.757626, 36.077312, 35.827587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448788, 35.830933, 35.765007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466072, 0.716173, -0.519493,
		0.432031, -0.328177, -0.840029,
		-0.772092, -0.615951, -0.156454,
		40.217159, 35.646149, 35.718071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660603, 36.022835, 35.110519>,  <40.757626, 36.077312, 35.827587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660603, 36.022835, 35.110519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307804, 35.934135, 35.276848>,  <40.096123, 35.880917, 35.376644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307804, 35.934135, 35.276848>,  <40.660603, 36.022835, 35.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307804, 35.934135, 35.276848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441544, 0.697194, -0.564765,
		-0.164669, -0.681723, -0.712838,
		-0.882000, -0.221750, 0.415817,
		40.043205, 35.867611, 35.401592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193214, 36.015968, 34.513897>,  <40.660603, 36.022835, 35.110519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193214, 36.015968, 34.513897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965343, 36.070599, 34.838074>,  <39.828621, 36.103378, 35.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965343, 36.070599, 34.838074>,  <40.193214, 36.015968, 34.513897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965343, 36.070599, 34.838074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479453, 0.745685, -0.462686,
		-0.667525, -0.652150, -0.359318,
		-0.569679, 0.136579, 0.810439,
		39.794441, 36.111572, 35.081207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504570, 35.975861, 34.289185>,  <40.193214, 36.015968, 34.513897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504570, 35.975861, 34.289185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457027, 36.189693, 34.623871>,  <39.428501, 36.317993, 34.824684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457027, 36.189693, 34.623871>,  <39.504570, 35.975861, 34.289185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457027, 36.189693, 34.623871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482686, 0.705307, -0.519188,
		-0.867691, -0.465581, 0.174205,
		-0.118856, 0.534581, 0.836717,
		39.421371, 36.350067, 34.874886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274307, 36.196095, 33.600235>,  <39.504570, 35.975861, 34.289185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274307, 36.196095, 33.600235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502216, 36.200706, 33.271545>,  <39.638962, 36.203476, 33.074333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502216, 36.200706, 33.271545>,  <39.274307, 36.196095, 33.600235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502216, 36.200706, 33.271545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740927, -0.439758, 0.507583,
		-0.355503, -0.898043, -0.259110,
		0.569776, 0.011534, -0.821719,
		39.673149, 36.204166, 33.025028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554058, 35.397591, 33.353355>,  <39.274307, 36.196095, 33.600235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554058, 35.397591, 33.353355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780933, 35.702511, 33.228649>,  <39.917057, 35.885464, 33.153824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780933, 35.702511, 33.228649>,  <39.554058, 35.397591, 33.353355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780933, 35.702511, 33.228649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806444, -0.437206, 0.398118,
		0.167181, -0.477227, -0.862731,
		0.567184, 0.762302, -0.311765,
		39.951088, 35.931202, 33.135120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221317, 35.165680, 33.106342>,  <39.554058, 35.397591, 33.353355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221317, 35.165680, 33.106342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276768, 35.546722, 33.214649>,  <40.310036, 35.775349, 33.279633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276768, 35.546722, 33.214649>,  <40.221317, 35.165680, 33.106342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276768, 35.546722, 33.214649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841786, -0.257370, 0.474508,
		0.521709, 0.162152, -0.837572,
		0.138623, 0.952611, 0.270770,
		40.318356, 35.832504, 33.295879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921944, 35.566692, 32.971672>,  <40.221317, 35.165680, 33.106342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921944, 35.566692, 32.971672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738125, 35.680977, 33.308048>,  <40.627834, 35.749546, 33.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738125, 35.680977, 33.308048>,  <40.921944, 35.566692, 32.971672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738125, 35.680977, 33.308048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736879, -0.405922, 0.540590,
		0.495810, 0.868100, -0.023995,
		-0.459546, 0.285711, 0.840944,
		40.600262, 35.766689, 33.560333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301807, 36.079899, 33.291458>,  <40.921944, 35.566692, 32.971672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301807, 36.079899, 33.291458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106319, 35.850803, 33.554703>,  <40.989025, 35.713345, 33.712650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106319, 35.850803, 33.554703>,  <41.301807, 36.079899, 33.291458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106319, 35.850803, 33.554703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854746, -0.163188, 0.492725,
		-0.174808, 0.803328, 0.569303,
		-0.488723, -0.572742, 0.658115,
		40.959702, 35.678982, 33.752136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581196, 36.220558, 33.974598>,  <41.301807, 36.079899, 33.291458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581196, 36.220558, 33.974598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434242, 35.849026, 33.955395>,  <41.346069, 35.626106, 33.943871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434242, 35.849026, 33.955395>,  <41.581196, 36.220558, 33.974598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434242, 35.849026, 33.955395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747024, -0.325433, 0.579697,
		-0.554065, 0.177104, 0.813416,
		-0.367379, -0.928831, -0.048010,
		41.324028, 35.570377, 33.940990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704662, 35.975491, 34.662251>,  <41.581196, 36.220558, 33.974598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704662, 35.975491, 34.662251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701958, 35.676270, 34.396809>,  <41.700336, 35.496738, 34.237541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701958, 35.676270, 34.396809>,  <41.704662, 35.975491, 34.662251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701958, 35.676270, 34.396809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773142, -0.424786, 0.470964,
		-0.634196, -0.509878, 0.581223,
		-0.006761, -0.748051, -0.663606,
		41.699928, 35.451855, 34.197727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966522, 35.458115, 35.105175>,  <41.704662, 35.975491, 34.662251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966522, 35.458115, 35.105175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036388, 35.351326, 34.726078>,  <42.078308, 35.287254, 34.498619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036388, 35.351326, 34.726078>,  <41.966522, 35.458115, 35.105175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036388, 35.351326, 34.726078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829352, -0.478926, 0.287758,
		-0.530722, -0.836275, 0.137759,
		0.174668, -0.266970, -0.947744,
		42.088787, 35.271236, 34.441753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953449, 34.716434, 34.810665>,  <41.966522, 35.458115, 35.105175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953449, 34.716434, 34.810665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203022, 34.925144, 34.577957>,  <42.352768, 35.050369, 34.438332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203022, 34.925144, 34.577957>,  <41.953449, 34.716434, 34.810665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203022, 34.925144, 34.577957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745556, -0.620544, 0.243045,
		-0.234200, -0.585387, -0.776191,
		0.623936, 0.521773, -0.581771,
		42.390202, 35.081676, 34.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536854, 34.338509, 34.962536>,  <41.953449, 34.716434, 34.810665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536854, 34.338509, 34.962536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670853, 34.596821, 34.688091>,  <42.751251, 34.751808, 34.523426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670853, 34.596821, 34.688091>,  <42.536854, 34.338509, 34.962536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670853, 34.596821, 34.688091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935158, -0.316863, 0.158360,
		-0.115137, -0.694672, -0.710052,
		0.334998, 0.645777, -0.686111,
		42.771351, 34.790554, 34.482258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038921, 34.865986, 34.884140>,  <42.536854, 34.338509, 34.962536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038921, 34.865986, 34.884140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997452, 34.714268, 35.251919>,  <42.972569, 34.623238, 35.472588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997452, 34.714268, 35.251919>,  <43.038921, 34.865986, 34.884140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997452, 34.714268, 35.251919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586256, -0.723466, -0.364556,
		0.803465, -0.576827, -0.147362,
		-0.103674, -0.379300, 0.919447,
		42.966351, 34.600479, 35.527752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515995, 34.225952, 34.675575>,  <43.038921, 34.865986, 34.884140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515995, 34.225952, 34.675575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656326, 34.600368, 34.664665>,  <43.740524, 34.825020, 34.658119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656326, 34.600368, 34.664665>,  <43.515995, 34.225952, 34.675575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656326, 34.600368, 34.664665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851048, -0.330855, -0.407741,
		-0.390689, 0.119831, -0.912690,
		0.350828, 0.936043, -0.027280,
		43.761574, 34.881180, 34.656483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765881, 34.402222, 33.999920>,  <43.515995, 34.225952, 34.675575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765881, 34.402222, 33.999920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940823, 34.561466, 34.322468>,  <44.045788, 34.657013, 34.515995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940823, 34.561466, 34.322468>,  <43.765881, 34.402222, 33.999920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940823, 34.561466, 34.322468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886913, -0.339191, -0.313582,
		0.148671, 0.852324, -0.501439,
		0.437357, 0.398112, 0.806366,
		44.072029, 34.680901, 34.564377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330097, 34.846363, 33.831787>,  <43.765881, 34.402222, 33.999920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330097, 34.846363, 33.831787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380299, 34.657791, 34.180958>,  <44.410419, 34.544647, 34.390461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380299, 34.657791, 34.180958>,  <44.330097, 34.846363, 33.831787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380299, 34.657791, 34.180958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892177, -0.331192, -0.307136,
		0.433900, 0.817351, 0.379036,
		0.125504, -0.471433, 0.872926,
		44.417950, 34.516361, 34.442837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987183, 34.993359, 34.069397>,  <44.330097, 34.846363, 33.831787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987183, 34.993359, 34.069397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889336, 34.637009, 34.222496>,  <44.830627, 34.423199, 34.314358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889336, 34.637009, 34.222496>,  <44.987183, 34.993359, 34.069397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889336, 34.637009, 34.222496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827281, -0.397648, -0.396842,
		0.505738, 0.219570, 0.834277,
		-0.244614, -0.890879, 0.382752,
		44.815952, 34.369743, 34.337322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571205, 34.771805, 34.332329>,  <44.987183, 34.993359, 34.069397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571205, 34.771805, 34.332329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371685, 34.458282, 34.184361>,  <45.251972, 34.270168, 34.095581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371685, 34.458282, 34.184361>,  <45.571205, 34.771805, 34.332329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371685, 34.458282, 34.184361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705715, -0.119520, -0.698342,
		0.503154, -0.609392, 0.612762,
		-0.498801, -0.783809, -0.369921,
		45.222046, 34.223141, 34.073383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173882, 34.416286, 33.959846>,  <45.571205, 34.771805, 34.332329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173882, 34.416286, 33.959846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437595, 34.222202, 34.189598>,  <46.595821, 34.105751, 34.327450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437595, 34.222202, 34.189598>,  <46.173882, 34.416286, 33.959846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437595, 34.222202, 34.189598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649078, 0.752869, -0.109027,
		-0.379534, 0.444698, 0.811294,
		0.659282, -0.485213, 0.574383,
		46.635380, 34.076637, 34.361912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801353, 34.765915, 33.694565>,  <46.173882, 34.416286, 33.959846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801353, 34.765915, 33.694565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927532, 34.494453, 33.959873>,  <47.003239, 34.331577, 34.119057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927532, 34.494453, 33.959873>,  <46.801353, 34.765915, 33.694565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927532, 34.494453, 33.959873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847692, 0.515677, 0.124478,
		-0.426509, 0.522980, 0.737958,
		0.315448, -0.678652, 0.663267,
		47.022167, 34.290859, 34.158852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992195, 35.264503, 34.173084>,  <46.801353, 34.765915, 33.694565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992195, 35.264503, 34.173084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172878, 34.913696, 34.238564>,  <47.281288, 34.703213, 34.277851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172878, 34.913696, 34.238564>,  <46.992195, 35.264503, 34.173084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172878, 34.913696, 34.238564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658941, 0.451658, 0.601499,
		-0.601460, -0.163839, 0.781923,
		0.451710, -0.877019, 0.163694,
		47.308392, 34.650589, 34.287670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123402, 35.304489, 34.849144>,  <46.992195, 35.264503, 34.173084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123402, 35.304489, 34.849144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361206, 35.030998, 34.679878>,  <47.503891, 34.866905, 34.578320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361206, 35.030998, 34.679878>,  <47.123402, 35.304489, 34.849144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.361206, 35.030998, 34.679878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775969, 0.349895, 0.524830,
		-0.210777, -0.640383, 0.738568,
		0.594513, -0.683728, -0.423167,
		47.539558, 34.825878, 34.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446564, 34.807274, 35.299423>,  <47.123402, 35.304489, 34.849144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446564, 34.807274, 35.299423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671696, 34.898777, 34.981709>,  <47.806774, 34.953678, 34.791080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671696, 34.898777, 34.981709>,  <47.446564, 34.807274, 35.299423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671696, 34.898777, 34.981709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673772, 0.429663, 0.601183,
		0.478801, -0.873533, 0.087697,
		0.562833, 0.228759, -0.794285,
		47.840546, 34.967403, 34.743423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.777969, 35.515942, 26.930092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510170, 35.224442, 26.987625>,  <33.349491, 35.049541, 27.022144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510170, 35.224442, 26.987625>,  <33.777969, 35.515942, 26.930092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510170, 35.224442, 26.987625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487055, -0.284481, 0.825741,
		-0.560843, 0.622890, 0.545402,
		-0.669502, -0.728752, 0.143832,
		33.309319, 35.005817, 27.030775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483627, 35.583191, 27.608942>,  <33.777969, 35.515942, 26.930092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483627, 35.583191, 27.608942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375229, 35.207676, 27.523861>,  <33.310192, 34.982368, 27.472813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375229, 35.207676, 27.523861>,  <33.483627, 35.583191, 27.608942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375229, 35.207676, 27.523861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361719, -0.304090, 0.881299,
		-0.892033, 0.161888, 0.421984,
		-0.270993, -0.938787, -0.212701,
		33.293930, 34.926041, 27.460051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081924, 35.314354, 28.191111>,  <33.483627, 35.583191, 27.608942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081924, 35.314354, 28.191111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.236038, 34.994942, 28.006111>,  <33.328506, 34.803295, 27.895111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.236038, 34.994942, 28.006111>,  <33.081924, 35.314354, 28.191111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236038, 34.994942, 28.006111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235892, -0.399314, 0.885948,
		-0.892138, -0.450443, 0.034517,
		0.385285, -0.798530, -0.462499,
		33.351624, 34.755383, 27.867361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807060, 34.758492, 28.563885>,  <33.081924, 35.314354, 28.191111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807060, 34.758492, 28.563885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125454, 34.616169, 28.368002>,  <33.316490, 34.530777, 28.250471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125454, 34.616169, 28.368002>,  <32.807060, 34.758492, 28.563885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125454, 34.616169, 28.368002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346914, -0.394823, 0.850744,
		-0.496046, -0.847065, -0.190840,
		0.795983, -0.355803, -0.489709,
		33.364250, 34.509430, 28.221088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789478, 34.048672, 28.528934>,  <32.807060, 34.758492, 28.563885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789478, 34.048672, 28.528934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172810, 34.162556, 28.519552>,  <33.402809, 34.230888, 28.513924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172810, 34.162556, 28.519552>,  <32.789478, 34.048672, 28.528934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172810, 34.162556, 28.519552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149730, -0.430664, 0.890005,
		0.243296, -0.856426, -0.455347,
		0.958326, 0.284714, -0.023453,
		33.460308, 34.247971, 28.512516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169624, 33.510380, 28.911121>,  <32.789478, 34.048672, 28.528934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169624, 33.510380, 28.911121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461334, 33.781231, 28.871811>,  <33.636360, 33.943741, 28.848225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461334, 33.781231, 28.871811>,  <33.169624, 33.510380, 28.911121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461334, 33.781231, 28.871811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454085, -0.371520, 0.809802,
		0.511826, -0.635195, -0.578413,
		0.729274, 0.677126, -0.098279,
		33.680115, 33.984367, 28.842327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764015, 33.153389, 29.087976>,  <33.169624, 33.510380, 28.911121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764015, 33.153389, 29.087976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.890411, 33.531654, 29.118631>,  <33.966248, 33.758614, 29.137024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.890411, 33.531654, 29.118631>,  <33.764015, 33.153389, 29.087976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890411, 33.531654, 29.118631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399527, -0.205896, 0.893300,
		0.860539, -0.251656, -0.442879,
		0.315991, 0.945662, 0.076638,
		33.985210, 33.815353, 29.141623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396545, 33.034039, 29.439568>,  <33.764015, 33.153389, 29.087976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396545, 33.034039, 29.439568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310215, 33.421650, 29.487568>,  <34.258419, 33.654217, 29.516367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310215, 33.421650, 29.487568>,  <34.396545, 33.034039, 29.439568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310215, 33.421650, 29.487568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345155, -0.039250, 0.937725,
		0.913394, 0.243801, -0.325995,
		-0.215823, 0.969031, 0.120000,
		34.245468, 33.712360, 29.523567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060368, 33.331863, 29.661985>,  <34.396545, 33.034039, 29.439568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060368, 33.331863, 29.661985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768978, 33.576820, 29.784822>,  <34.594147, 33.723793, 29.858524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768978, 33.576820, 29.784822>,  <35.060368, 33.331863, 29.661985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768978, 33.576820, 29.784822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460467, 0.105780, 0.881352,
		0.507249, 0.783445, -0.359044,
		-0.728470, 0.612392, 0.307094,
		34.550438, 33.760540, 29.876951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365982, 33.883030, 29.984022>,  <35.060368, 33.331863, 29.661985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365982, 33.883030, 29.984022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990284, 33.944687, 30.106695>,  <34.764866, 33.981682, 30.180300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990284, 33.944687, 30.106695>,  <35.365982, 33.883030, 29.984022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990284, 33.944687, 30.106695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334356, 0.208896, 0.919004,
		0.077591, 0.965714, -0.247743,
		-0.939247, 0.154141, 0.306684,
		34.708511, 33.990929, 30.198700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417992, 34.566738, 30.339293>,  <35.365982, 33.883030, 29.984022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417992, 34.566738, 30.339293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124069, 34.323826, 30.460136>,  <34.947716, 34.178078, 30.532642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.124069, 34.323826, 30.460136>,  <35.417992, 34.566738, 30.339293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124069, 34.323826, 30.460136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339904, 0.055752, 0.938806,
		-0.586959, 0.792531, 0.165449,
		-0.734809, -0.607277, 0.302109,
		34.903625, 34.141644, 30.550770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149235, 34.852173, 30.942200>,  <35.417992, 34.566738, 30.339293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149235, 34.852173, 30.942200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.056606, 34.465408, 30.985010>,  <35.001030, 34.233349, 31.010696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.056606, 34.465408, 30.985010>,  <35.149235, 34.852173, 30.942200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056606, 34.465408, 30.985010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302465, 0.033004, 0.952589,
		-0.924602, 0.252964, 0.284814,
		-0.231571, -0.966912, 0.107028,
		34.987133, 34.175335, 31.017118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846302, 34.830700, 31.604551>,  <35.149235, 34.852173, 30.942200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846302, 34.830700, 31.604551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948582, 34.452332, 31.524708>,  <35.009949, 34.225311, 31.476803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948582, 34.452332, 31.524708>,  <34.846302, 34.830700, 31.604551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948582, 34.452332, 31.524708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464247, -0.060962, 0.883605,
		-0.847992, -0.318607, 0.423554,
		0.255702, -0.945925, -0.199608,
		35.025291, 34.168552, 31.464825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602200, 34.591686, 32.145134>,  <34.846302, 34.830700, 31.604551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602200, 34.591686, 32.145134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822479, 34.281963, 32.020439>,  <34.954647, 34.096130, 31.945621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822479, 34.281963, 32.020439>,  <34.602200, 34.591686, 32.145134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822479, 34.281963, 32.020439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168474, -0.262677, 0.950062,
		-0.817525, -0.575718, -0.014206,
		0.550699, -0.774305, -0.311739,
		34.987690, 34.049671, 31.926918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362865, 33.945393, 32.444351>,  <34.602200, 34.591686, 32.145134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362865, 33.945393, 32.444351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742203, 33.868450, 32.343445>,  <34.969807, 33.822285, 32.282898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742203, 33.868450, 32.343445>,  <34.362865, 33.945393, 32.444351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742203, 33.868450, 32.343445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234844, -0.108949, 0.965908,
		-0.213284, -0.975258, -0.058147,
		0.948345, -0.192357, -0.252271,
		35.026707, 33.810745, 32.267765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495331, 33.389210, 32.809799>,  <34.362865, 33.945393, 32.444351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495331, 33.389210, 32.809799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.871986, 33.492722, 32.723690>,  <35.097980, 33.554829, 32.672024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.871986, 33.492722, 32.723690>,  <34.495331, 33.389210, 32.809799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871986, 33.492722, 32.723690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292322, -0.311542, 0.904151,
		0.166908, -0.914317, -0.369008,
		0.941642, 0.258779, -0.215276,
		35.154480, 33.570354, 32.659107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918224, 32.852673, 33.070229>,  <34.495331, 33.389210, 32.809799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918224, 32.852673, 33.070229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160542, 33.169525, 33.040474>,  <35.305931, 33.359638, 33.022621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.160542, 33.169525, 33.040474>,  <34.918224, 32.852673, 33.070229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160542, 33.169525, 33.040474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477428, -0.287136, 0.830431,
		0.636453, -0.538588, -0.552133,
		0.605798, 0.792134, -0.074389,
		35.342281, 33.407166, 33.018158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689789, 32.608128, 33.139957>,  <34.918224, 32.852673, 33.070229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689789, 32.608128, 33.139957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734238, 32.999355, 33.210430>,  <35.760906, 33.234093, 33.252712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734238, 32.999355, 33.210430>,  <35.689789, 32.608128, 33.139957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734238, 32.999355, 33.210430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361169, -0.204903, 0.909710,
		0.925856, -0.037460, -0.376016,
		0.111125, 0.978065, 0.176181,
		35.767574, 33.292774, 33.263283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288071, 32.658611, 33.578861>,  <35.689789, 32.608128, 33.139957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288071, 32.658611, 33.578861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073444, 32.989166, 33.647182>,  <35.944668, 33.187500, 33.688175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073444, 32.989166, 33.647182>,  <36.288071, 32.658611, 33.578861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073444, 32.989166, 33.647182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233469, -0.049122, 0.971123,
		0.810917, 0.560951, -0.166579,
		-0.536569, 0.826391, 0.170799,
		35.912472, 33.237083, 33.698421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696739, 33.041988, 33.893578>,  <36.288071, 32.658611, 33.578861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696739, 33.041988, 33.893578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352772, 33.220024, 33.993534>,  <36.146393, 33.326843, 34.053509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352772, 33.220024, 33.993534>,  <36.696739, 33.041988, 33.893578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352772, 33.220024, 33.993534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338768, 0.131439, 0.931644,
		0.381815, 0.885790, -0.263807,
		-0.859915, 0.445085, 0.249891,
		36.094799, 33.353550, 34.068501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915596, 33.576584, 34.362560>,  <36.696739, 33.041988, 33.893578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915596, 33.576584, 34.362560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528282, 33.507149, 34.434441>,  <36.295895, 33.465488, 34.477570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528282, 33.507149, 34.434441>,  <36.915596, 33.576584, 34.362560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528282, 33.507149, 34.434441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154028, 0.151555, 0.976374,
		-0.196719, 0.973087, -0.120012,
		-0.968286, -0.173586, 0.179696,
		36.237797, 33.455074, 34.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709099, 34.234138, 34.837879>,  <36.915596, 33.576584, 34.362560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709099, 34.234138, 34.837879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482845, 33.906147, 34.872978>,  <36.347095, 33.709354, 34.894035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482845, 33.906147, 34.872978>,  <36.709099, 34.234138, 34.837879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482845, 33.906147, 34.872978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077719, 0.158932, 0.984226,
		-0.820987, 0.549890, -0.153625,
		-0.565632, -0.819977, 0.087744,
		36.313156, 33.660152, 34.899300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232933, 34.573616, 35.273647>,  <36.709099, 34.234138, 34.837879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232933, 34.573616, 35.273647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553585, 34.492077, 35.048851>,  <37.745975, 34.443153, 34.913971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553585, 34.492077, 35.048851>,  <37.232933, 34.573616, 35.273647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553585, 34.492077, 35.048851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400818, 0.514207, -0.758245,
		0.443548, 0.833089, 0.330498,
		0.801630, -0.203848, -0.561993,
		37.794075, 34.430923, 34.880253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197941, 35.059460, 34.832012>,  <37.232933, 34.573616, 35.273647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197941, 35.059460, 34.832012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475391, 34.818378, 34.674206>,  <37.641861, 34.673729, 34.579521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475391, 34.818378, 34.674206>,  <37.197941, 35.059460, 34.832012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475391, 34.818378, 34.674206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170106, 0.395139, -0.902734,
		0.699966, 0.693265, 0.171555,
		0.693622, -0.602701, -0.394512,
		37.683479, 34.637569, 34.555851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564041, 35.489403, 34.547291>,  <37.197941, 35.059460, 34.832012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564041, 35.489403, 34.547291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636375, 35.141872, 34.362930>,  <37.679775, 34.933353, 34.252312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636375, 35.141872, 34.362930>,  <37.564041, 35.489403, 34.547291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636375, 35.141872, 34.362930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158258, 0.436818, -0.885519,
		0.970696, 0.233078, -0.058505,
		0.180839, -0.868829, -0.460904,
		37.690628, 34.881222, 34.224659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056870, 35.553497, 34.050026>,  <37.564041, 35.489403, 34.547291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056870, 35.553497, 34.050026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875481, 35.222889, 33.916626>,  <37.766647, 35.024525, 33.836586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875481, 35.222889, 33.916626>,  <38.056870, 35.553497, 34.050026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875481, 35.222889, 33.916626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047603, 0.396115, -0.916966,
		0.889999, -0.399942, -0.218972,
		-0.453471, -0.826523, -0.333504,
		37.739441, 34.974934, 33.816574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410881, 35.375717, 33.341293>,  <38.056870, 35.553497, 34.050026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410881, 35.375717, 33.341293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059513, 35.184578, 33.338779>,  <37.848694, 35.069893, 33.337273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059513, 35.184578, 33.338779>,  <38.410881, 35.375717, 33.341293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059513, 35.184578, 33.338779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072216, 0.145731, -0.986685,
		0.472404, -0.866268, -0.162521,
		-0.878418, -0.477851, -0.006286,
		37.795986, 35.041222, 33.336895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440266, 35.105663, 32.657883>,  <38.410881, 35.375717, 33.341293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440266, 35.105663, 32.657883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054890, 35.083256, 32.762684>,  <37.823666, 35.069813, 32.825565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054890, 35.083256, 32.762684>,  <38.440266, 35.105663, 32.657883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054890, 35.083256, 32.762684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266887, 0.114594, -0.956890,
		0.023580, -0.991831, -0.125356,
		-0.963440, -0.056019, 0.262005,
		37.765858, 35.066452, 32.841286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137821, 34.649975, 32.215008>,  <38.440266, 35.105663, 32.657883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137821, 34.649975, 32.215008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822895, 34.857906, 32.347622>,  <37.633942, 34.982666, 32.427193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822895, 34.857906, 32.347622>,  <38.137821, 34.649975, 32.215008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822895, 34.857906, 32.347622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239899, 0.237074, -0.941406,
		-0.567968, -0.820716, -0.061945,
		-0.787312, 0.519828, 0.331539,
		37.586700, 35.013855, 32.447083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556831, 34.561573, 31.610270>,  <38.137821, 34.649975, 32.215008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556831, 34.561573, 31.610270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446960, 34.885159, 31.818163>,  <37.381039, 35.079311, 31.942900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446960, 34.885159, 31.818163>,  <37.556831, 34.561573, 31.610270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446960, 34.885159, 31.818163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528343, 0.324632, -0.784517,
		-0.803372, -0.490087, 0.338243,
		-0.274677, 0.808968, 0.519734,
		37.364559, 35.127850, 31.974083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865494, 34.618206, 31.552380>,  <37.556831, 34.561573, 31.610270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865494, 34.618206, 31.552380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001492, 34.981098, 31.651449>,  <37.083088, 35.198833, 31.710890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001492, 34.981098, 31.651449>,  <36.865494, 34.618206, 31.552380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001492, 34.981098, 31.651449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411970, 0.380429, -0.827982,
		-0.845391, 0.179474, 0.503094,
		0.339992, 0.907228, 0.247673,
		37.103489, 35.253265, 31.725752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265415, 35.085350, 31.443920>,  <36.865494, 34.618206, 31.552380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265415, 35.085350, 31.443920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571854, 35.342426, 31.446453>,  <36.755718, 35.496674, 31.447973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571854, 35.342426, 31.446453>,  <36.265415, 35.085350, 31.443920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571854, 35.342426, 31.446453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439159, 0.530624, -0.724968,
		-0.469291, 0.552616, 0.688754,
		0.766098, 0.642693, 0.006331,
		36.801682, 35.535233, 31.448353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948448, 35.792561, 31.424456>,  <36.265415, 35.085350, 31.443920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948448, 35.792561, 31.424456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332226, 35.835381, 31.320137>,  <36.562492, 35.861073, 31.257545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332226, 35.835381, 31.320137>,  <35.948448, 35.792561, 31.424456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332226, 35.835381, 31.320137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275935, 0.546127, -0.790952,
		0.057753, 0.830834, 0.553516,
		0.959440, 0.107055, -0.260796,
		36.620056, 35.867496, 31.241898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933300, 36.444534, 31.316059>,  <35.948448, 35.792561, 31.424456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933300, 36.444534, 31.316059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262405, 36.313526, 31.130247>,  <36.459869, 36.234921, 31.018759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262405, 36.313526, 31.130247>,  <35.933300, 36.444534, 31.316059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262405, 36.313526, 31.130247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287123, 0.465847, -0.836987,
		0.490528, 0.822022, 0.289245,
		0.822765, -0.327516, -0.464532,
		36.509235, 36.215271, 30.990887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184769, 37.053074, 31.055365>,  <35.933300, 36.444534, 31.316059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184769, 37.053074, 31.055365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320244, 36.741947, 30.843592>,  <36.401527, 36.555271, 30.716528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320244, 36.741947, 30.843592>,  <36.184769, 37.053074, 31.055365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320244, 36.741947, 30.843592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338317, 0.424384, -0.839904,
		0.877971, 0.463580, -0.119414,
		0.338685, -0.777812, -0.529434,
		36.421848, 36.508602, 30.684761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253136, 37.293282, 30.430069>,  <36.184769, 37.053074, 31.055365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253136, 37.293282, 30.430069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310925, 36.917625, 30.305395>,  <36.345596, 36.692234, 30.230591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310925, 36.917625, 30.305395>,  <36.253136, 37.293282, 30.430069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310925, 36.917625, 30.305395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373635, 0.239895, -0.896017,
		0.916256, 0.245905, -0.316237,
		0.144471, -0.939138, -0.311684,
		36.354267, 36.635883, 30.211889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630875, 37.411446, 29.792191>,  <36.253136, 37.293282, 30.430069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630875, 37.411446, 29.792191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453236, 37.053055, 29.793165>,  <36.346653, 36.838020, 29.793751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453236, 37.053055, 29.793165>,  <36.630875, 37.411446, 29.792191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453236, 37.053055, 29.793165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307764, 0.149987, -0.939566,
		0.841465, -0.418005, -0.342358,
		-0.444093, -0.895977, 0.002438,
		36.320007, 36.784260, 29.793898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792526, 37.115788, 29.160221>,  <36.630875, 37.411446, 29.792191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792526, 37.115788, 29.160221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465931, 36.908867, 29.262777>,  <36.269974, 36.784714, 29.324312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465931, 36.908867, 29.262777>,  <36.792526, 37.115788, 29.160221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465931, 36.908867, 29.262777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355053, 0.099704, -0.929514,
		0.455277, -0.849975, -0.265077,
		-0.816493, -0.517303, 0.256393,
		36.220982, 36.753677, 29.339695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619015, 36.573700, 28.532934>,  <36.792526, 37.115788, 29.160221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619015, 36.573700, 28.532934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.274929, 36.590759, 28.736195>,  <36.068478, 36.600994, 28.858150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.274929, 36.590759, 28.736195>,  <36.619015, 36.573700, 28.532934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274929, 36.590759, 28.736195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506342, 0.046678, -0.861069,
		-0.060446, -0.997999, -0.018556,
		-0.860212, 0.042653, 0.508150,
		36.016865, 36.603554, 28.888639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154938, 36.141003, 28.187632>,  <36.619015, 36.573700, 28.532934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154938, 36.141003, 28.187632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903831, 36.366760, 28.402060>,  <35.753166, 36.502216, 28.530716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903831, 36.366760, 28.402060>,  <36.154938, 36.141003, 28.187632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903831, 36.366760, 28.402060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595697, 0.094965, -0.797576,
		-0.501054, -0.820026, 0.276591,
		-0.627766, 0.564393, 0.536069,
		35.715500, 36.536079, 28.562880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.447411, 35.824413, 28.159264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380966, 36.211445, 28.235369>,  <35.341099, 36.443665, 28.281031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380966, 36.211445, 28.235369>,  <35.447411, 35.824413, 28.159264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380966, 36.211445, 28.235369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509180, 0.081072, -0.856833,
		-0.844479, -0.239204, 0.479205,
		-0.166108, 0.967579, 0.190262,
		35.331135, 36.501717, 28.292448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729053, 35.941128, 28.083721>,  <35.447411, 35.824413, 28.159264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729053, 35.941128, 28.083721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876450, 36.311314, 28.048559>,  <34.964886, 36.533424, 28.027462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876450, 36.311314, 28.048559>,  <34.729053, 35.941128, 28.083721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876450, 36.311314, 28.048559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620419, 0.174402, -0.764633,
		-0.692311, 0.336299, 0.638443,
		0.368491, 0.925466, -0.087906,
		34.986996, 36.588955, 28.022188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120510, 36.368664, 27.963066>,  <34.729053, 35.941128, 28.083721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120510, 36.368664, 27.963066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.418743, 36.605446, 27.840630>,  <34.597683, 36.747517, 27.767168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.418743, 36.605446, 27.840630>,  <34.120510, 36.368664, 27.963066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418743, 36.605446, 27.840630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581395, 0.353310, -0.732907,
		-0.325704, 0.724404, 0.607582,
		0.745585, 0.591956, -0.306090,
		34.642418, 36.783031, 27.748802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772865, 36.884693, 27.705111>,  <34.120510, 36.368664, 27.963066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772865, 36.884693, 27.705111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139080, 36.943100, 27.555195>,  <34.358810, 36.978142, 27.465246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139080, 36.943100, 27.555195>,  <33.772865, 36.884693, 27.705111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139080, 36.943100, 27.555195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397791, 0.466695, -0.789911,
		0.059573, 0.872282, 0.485361,
		0.915540, 0.146015, -0.374788,
		34.413742, 36.986904, 27.442759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722164, 37.383179, 27.290852>,  <33.772865, 36.884693, 27.705111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722164, 37.383179, 27.290852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069355, 37.248447, 27.144886>,  <34.277668, 37.167606, 27.057306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069355, 37.248447, 27.144886>,  <33.722164, 37.383179, 27.290852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069355, 37.248447, 27.144886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253267, 0.331830, -0.908705,
		0.427170, 0.881155, 0.202712,
		0.867975, -0.336831, -0.364916,
		34.329746, 37.147400, 27.035412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875111, 37.907276, 26.744524>,  <33.722164, 37.383179, 27.290852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875111, 37.907276, 26.744524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046574, 37.552967, 26.673349>,  <34.149452, 37.340382, 26.630646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.046574, 37.552967, 26.673349>,  <33.875111, 37.907276, 26.744524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046574, 37.552967, 26.673349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137727, 0.130579, -0.981825,
		0.892907, 0.445374, -0.066021,
		0.428658, -0.885772, -0.177935,
		34.175171, 37.287235, 26.619968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270950, 38.067875, 26.195229>,  <33.875111, 37.907276, 26.744524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270950, 38.067875, 26.195229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260651, 37.668129, 26.185335>,  <34.254471, 37.428284, 26.179399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260651, 37.668129, 26.185335>,  <34.270950, 38.067875, 26.195229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260651, 37.668129, 26.185335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031430, 0.025537, -0.999180,
		0.999174, -0.024952, -0.032068,
		-0.025750, -0.999362, -0.024731,
		34.252926, 37.368320, 26.177916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702637, 37.910038, 25.662487>,  <34.270950, 38.067875, 26.195229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702637, 37.910038, 25.662487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470787, 37.588741, 25.717382>,  <34.331676, 37.395962, 25.750320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470787, 37.588741, 25.717382>,  <34.702637, 37.910038, 25.662487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470787, 37.588741, 25.717382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242363, 0.009137, -0.970143,
		0.778006, -0.595581, -0.199972,
		-0.579626, -0.803243, 0.137238,
		34.296898, 37.347767, 25.758554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903358, 37.472206, 25.144627>,  <34.702637, 37.910038, 25.662487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903358, 37.472206, 25.144627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530766, 37.379833, 25.257057>,  <34.307209, 37.324409, 25.324514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530766, 37.379833, 25.257057>,  <34.903358, 37.472206, 25.144627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530766, 37.379833, 25.257057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337359, 0.259319, -0.904954,
		0.136093, -0.937777, -0.319459,
		-0.931486, -0.230931, 0.281076,
		34.251320, 37.310555, 25.341379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634659, 37.181458, 24.630432>,  <34.903358, 37.472206, 25.144627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634659, 37.181458, 24.630432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308826, 37.283756, 24.838680>,  <34.113327, 37.345135, 24.963629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308826, 37.283756, 24.838680>,  <34.634659, 37.181458, 24.630432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308826, 37.283756, 24.838680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439256, 0.314204, -0.841623,
		-0.378823, -0.914259, -0.143608,
		-0.814584, 0.255745, 0.520621,
		34.064449, 37.360481, 24.994867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103622, 36.853558, 24.330088>,  <34.634659, 37.181458, 24.630432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103622, 36.853558, 24.330088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935974, 37.152115, 24.536863>,  <33.835384, 37.331249, 24.660929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935974, 37.152115, 24.536863>,  <34.103622, 36.853558, 24.330088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935974, 37.152115, 24.536863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425765, 0.341298, -0.837998,
		-0.801909, -0.571320, 0.174743,
		-0.419125, 0.746398, 0.516937,
		33.810238, 37.376034, 24.691944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391747, 36.774948, 24.170502>,  <34.103622, 36.853558, 24.330088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391747, 36.774948, 24.170502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447956, 37.143394, 24.315722>,  <33.481682, 37.364460, 24.402853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447956, 37.143394, 24.315722>,  <33.391747, 36.774948, 24.170502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447956, 37.143394, 24.315722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638565, 0.364547, -0.677746,
		-0.756629, -0.136593, 0.639418,
		0.140522, 0.921112, 0.363050,
		33.490112, 37.419727, 24.424637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708931, 36.918350, 24.200497>,  <33.391747, 36.774948, 24.170502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708931, 36.918350, 24.200497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.925201, 37.254841, 24.199768>,  <33.054962, 37.456734, 24.199331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.925201, 37.254841, 24.199768>,  <32.708931, 36.918350, 24.200497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925201, 37.254841, 24.199768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635284, 0.406891, -0.656394,
		-0.551436, 0.356054, 0.754416,
		0.540677, 0.841228, -0.001821,
		33.087406, 37.507210, 24.199223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344128, 37.436317, 24.410748>,  <32.708931, 36.918350, 24.200497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344128, 37.436317, 24.410748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609818, 37.632763, 24.185320>,  <32.769230, 37.750629, 24.050064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609818, 37.632763, 24.185320>,  <32.344128, 37.436317, 24.410748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609818, 37.632763, 24.185320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747526, 0.433315, -0.503430,
		-0.003040, 0.755673, 0.654941,
		0.664225, 0.491117, -0.563569,
		32.809086, 37.780098, 24.016249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043865, 38.087833, 24.114733>,  <32.344128, 37.436317, 24.410748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043865, 38.087833, 24.114733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364014, 38.029785, 23.882065>,  <32.556103, 37.994957, 23.742464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364014, 38.029785, 23.882065>,  <32.043865, 38.087833, 24.114733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364014, 38.029785, 23.882065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470661, 0.448849, -0.759614,
		0.371317, 0.881745, 0.290945,
		0.800376, -0.145121, -0.581669,
		32.604126, 37.986248, 23.707563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326305, 38.770985, 23.865793>,  <32.043865, 38.087833, 24.114733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326305, 38.770985, 23.865793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415302, 38.471806, 23.615652>,  <32.468700, 38.292297, 23.465567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415302, 38.471806, 23.615652>,  <32.326305, 38.770985, 23.865793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415302, 38.471806, 23.615652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436693, 0.497031, -0.749840,
		0.871664, 0.439920, -0.216040,
		0.222491, -0.747951, -0.625354,
		32.482048, 38.247421, 23.428045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368065, 39.109535, 23.321686>,  <32.326305, 38.770985, 23.865793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368065, 39.109535, 23.321686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356342, 38.739788, 23.169535>,  <32.349308, 38.517941, 23.078243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356342, 38.739788, 23.169535>,  <32.368065, 39.109535, 23.321686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356342, 38.739788, 23.169535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288228, 0.372193, -0.882268,
		0.957113, 0.083780, -0.277336,
		-0.029306, -0.924366, -0.380378,
		32.347549, 38.462479, 23.055422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489353, 39.253345, 22.611391>,  <32.368065, 39.109535, 23.321686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489353, 39.253345, 22.611391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358398, 38.875576, 22.623270>,  <32.279827, 38.648914, 22.630398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358398, 38.875576, 22.623270>,  <32.489353, 39.253345, 22.611391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358398, 38.875576, 22.623270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602379, 0.184395, -0.776619,
		0.727983, -0.272140, -0.629270,
		-0.327384, -0.944425, 0.029695,
		32.260181, 38.592247, 22.632179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580158, 38.987278, 21.866135>,  <32.489353, 39.253345, 22.611391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580158, 38.987278, 21.866135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.299698, 38.780361, 22.062418>,  <32.131420, 38.656212, 22.180187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.299698, 38.780361, 22.062418>,  <32.580158, 38.987278, 21.866135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299698, 38.780361, 22.062418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660614, 0.212349, -0.720068,
		0.268289, -0.829042, -0.490623,
		-0.701150, -0.517299, 0.490705,
		32.089352, 38.625172, 22.209629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232601, 38.647076, 21.410069>,  <32.580158, 38.987278, 21.866135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232601, 38.647076, 21.410069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978748, 38.631641, 21.718807>,  <31.826435, 38.622383, 21.904051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978748, 38.631641, 21.718807>,  <32.232601, 38.647076, 21.410069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978748, 38.631641, 21.718807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765882, 0.164856, -0.621488,
		-0.103265, -0.985563, -0.134174,
		-0.634635, -0.038584, 0.771848,
		31.788359, 38.620068, 21.950361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625320, 38.440327, 21.079576>,  <32.232601, 38.647076, 21.410069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625320, 38.440327, 21.079576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476738, 38.568817, 21.428022>,  <31.387589, 38.645912, 21.637089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.476738, 38.568817, 21.428022>,  <31.625320, 38.440327, 21.079576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476738, 38.568817, 21.428022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858864, 0.237504, -0.453810,
		-0.352667, -0.916738, 0.187665,
		-0.371454, 0.321223, 0.871113,
		31.365301, 38.665184, 21.689356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959969, 38.175568, 21.145967>,  <31.625320, 38.440327, 21.079576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959969, 38.175568, 21.145967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983267, 38.500507, 21.378071>,  <30.997246, 38.695473, 21.517332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983267, 38.500507, 21.378071>,  <30.959969, 38.175568, 21.145967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983267, 38.500507, 21.378071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875060, 0.321306, -0.361983,
		-0.480496, -0.486675, 0.729569,
		0.058247, 0.812349, 0.580257,
		31.000740, 38.744213, 21.552147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293766, 38.235359, 21.399738>,  <30.959969, 38.175568, 21.145967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293766, 38.235359, 21.399738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454256, 38.600563, 21.429220>,  <30.550550, 38.819687, 21.446909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454256, 38.600563, 21.429220>,  <30.293766, 38.235359, 21.399738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454256, 38.600563, 21.429220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865149, 0.404165, -0.296930,
		-0.300889, 0.055370, 0.952050,
		0.401227, 0.913009, 0.073705,
		30.574625, 38.874466, 21.451332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774067, 38.791935, 21.581205>,  <30.293766, 38.235359, 21.399738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774067, 38.791935, 21.581205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068996, 38.979912, 21.387087>,  <30.245955, 39.092697, 21.270617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068996, 38.979912, 21.387087>,  <29.774067, 38.791935, 21.581205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068996, 38.979912, 21.387087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673628, 0.565469, -0.475889,
		0.050782, 0.677793, 0.733497,
		0.737324, 0.469937, -0.485296,
		30.290194, 39.120892, 21.241499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047073, 38.565266, 21.233530>,  <29.774067, 38.791935, 21.581205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047073, 38.565266, 21.233530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121061, 38.899578, 21.440315>,  <29.165453, 39.100166, 21.564386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121061, 38.899578, 21.440315>,  <29.047073, 38.565266, 21.233530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121061, 38.899578, 21.440315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167156, -0.491620, 0.854616,
		0.968424, -0.244491, 0.048772,
		0.184968, 0.835783, 0.516965,
		29.176552, 39.150314, 21.595406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098408, 37.810936, 21.217220>,  <29.047073, 38.565266, 21.233530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098408, 37.810936, 21.217220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.033504, 37.418362, 21.176334>,  <28.994562, 37.182816, 21.151804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.033504, 37.418362, 21.176334>,  <29.098408, 37.810936, 21.217220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033504, 37.418362, 21.176334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507081, -0.171797, 0.844604,
		-0.846488, 0.085213, 0.525545,
		-0.162259, -0.981440, -0.102214,
		28.984827, 37.123928, 21.145670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775263, 37.591084, 21.835752>,  <29.098408, 37.810936, 21.217220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775263, 37.591084, 21.835752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.951986, 37.267925, 21.679745>,  <29.058020, 37.074032, 21.586140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.951986, 37.267925, 21.679745>,  <28.775263, 37.591084, 21.835752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951986, 37.267925, 21.679745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414117, -0.201999, 0.887527,
		-0.795810, -0.553629, 0.245318,
		0.441807, -0.807893, -0.390020,
		29.084528, 37.025558, 21.562738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585749, 36.955063, 22.243498>,  <28.775263, 37.591084, 21.835752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585749, 36.955063, 22.243498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937910, 36.899559, 22.062109>,  <29.149206, 36.866257, 21.953276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937910, 36.899559, 22.062109>,  <28.585749, 36.955063, 22.243498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937910, 36.899559, 22.062109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406394, -0.272062, 0.872253,
		-0.244413, -0.952221, -0.183129,
		0.880401, -0.138768, -0.453473,
		29.202030, 36.857929, 21.926067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832422, 36.339516, 22.536249>,  <28.585749, 36.955063, 22.243498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832422, 36.339516, 22.536249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167913, 36.494846, 22.383547>,  <29.369207, 36.588043, 22.291925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167913, 36.494846, 22.383547>,  <28.832422, 36.339516, 22.536249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167913, 36.494846, 22.383547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442858, -0.078470, 0.893151,
		0.316879, -0.918175, -0.237789,
		0.838728, 0.388327, -0.381755,
		29.419533, 36.611343, 22.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331259, 35.843861, 22.653421>,  <28.832422, 36.339516, 22.536249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331259, 35.843861, 22.653421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530756, 36.184887, 22.590958>,  <29.650454, 36.389503, 22.553480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530756, 36.184887, 22.590958>,  <29.331259, 35.843861, 22.653421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530756, 36.184887, 22.590958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472436, -0.116348, 0.873652,
		0.726678, -0.509502, -0.460811,
		0.498741, 0.852567, -0.156160,
		29.680378, 36.440659, 22.544109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055706, 35.628567, 22.629768>,  <29.331259, 35.843861, 22.653421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055706, 35.628567, 22.629768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082226, 36.025150, 22.674683>,  <30.098137, 36.263100, 22.701632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082226, 36.025150, 22.674683>,  <30.055706, 35.628567, 22.629768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082226, 36.025150, 22.674683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726287, -0.125117, 0.675909,
		0.684187, 0.036740, -0.728381,
		0.066300, 0.991461, 0.112288,
		30.102116, 36.322590, 22.708368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760601, 35.812950, 22.724159>,  <30.055706, 35.628567, 22.629768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760601, 35.812950, 22.724159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574961, 36.142387, 22.854580>,  <30.463575, 36.340050, 22.932833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574961, 36.142387, 22.854580>,  <30.760601, 35.812950, 22.724159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574961, 36.142387, 22.854580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632145, 0.050106, 0.773228,
		0.620486, 0.564969, -0.543882,
		-0.464102, 0.823589, 0.326052,
		30.435730, 36.389465, 22.952396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323877, 36.379982, 22.748108>,  <30.760601, 35.812950, 22.724159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323877, 36.379982, 22.748108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010628, 36.447170, 22.987608>,  <30.822678, 36.487484, 23.131308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010628, 36.447170, 22.987608>,  <31.323877, 36.379982, 22.748108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010628, 36.447170, 22.987608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621844, 0.203891, 0.756134,
		0.004931, 0.964476, -0.264125,
		-0.783125, 0.167973, 0.598748,
		30.775690, 36.497562, 23.167233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513809, 36.884026, 23.207373>,  <31.323877, 36.379982, 22.748108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513809, 36.884026, 23.207373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232067, 36.660564, 23.382545>,  <31.063021, 36.526485, 23.487650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232067, 36.660564, 23.382545>,  <31.513809, 36.884026, 23.207373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232067, 36.660564, 23.382545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503572, 0.041567, 0.862953,
		-0.500298, 0.828357, 0.252045,
		-0.704356, -0.558656, 0.437933,
		31.020760, 36.492966, 23.513926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539072, 37.131924, 23.848894>,  <31.513809, 36.884026, 23.207373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539072, 37.131924, 23.848894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362532, 36.776775, 23.900885>,  <31.256607, 36.563686, 23.932079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.362532, 36.776775, 23.900885>,  <31.539072, 37.131924, 23.848894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362532, 36.776775, 23.900885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515828, -0.132507, 0.846382,
		-0.734256, 0.440596, 0.516471,
		-0.441349, -0.887872, 0.129978,
		31.230127, 36.510414, 23.939878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488436, 37.083824, 24.604467>,  <31.539072, 37.131924, 23.848894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488436, 37.083824, 24.604467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394978, 36.722740, 24.459959>,  <31.338903, 36.506088, 24.373253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394978, 36.722740, 24.459959>,  <31.488436, 37.083824, 24.604467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394978, 36.722740, 24.459959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604486, -0.425882, 0.673217,
		-0.761582, -0.061092, 0.645183,
		-0.233644, -0.902714, -0.361273,
		31.324884, 36.451927, 24.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262703, 36.775600, 25.223196>,  <31.488436, 37.083824, 24.604467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262703, 36.775600, 25.223196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.321905, 36.460125, 24.984510>,  <31.357428, 36.270840, 24.841299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.321905, 36.460125, 24.984510>,  <31.262703, 36.775600, 25.223196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321905, 36.460125, 24.984510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396049, -0.505602, 0.766493,
		-0.906222, -0.349775, 0.237525,
		0.148007, -0.788685, -0.596716,
		31.366308, 36.223518, 24.805496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982645, 36.208298, 25.603020>,  <31.262703, 36.775600, 25.223196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982645, 36.208298, 25.603020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241194, 36.084290, 25.324139>,  <31.396322, 36.009884, 25.156809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241194, 36.084290, 25.324139>,  <30.982645, 36.208298, 25.603020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241194, 36.084290, 25.324139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552406, -0.440196, 0.707867,
		-0.526360, -0.842683, -0.113271,
		0.646369, -0.310021, -0.697204,
		31.435104, 35.991283, 25.114977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064440, 35.492748, 25.697905>,  <30.982645, 36.208298, 25.603020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064440, 35.492748, 25.697905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403936, 35.571980, 25.501780>,  <31.607634, 35.619518, 25.384104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403936, 35.571980, 25.501780>,  <31.064440, 35.492748, 25.697905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403936, 35.571980, 25.501780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513758, -0.528525, 0.675806,
		-0.125278, -0.825485, -0.550345,
		0.848739, 0.198081, -0.490312,
		31.658558, 35.631405, 25.354687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360996, 34.845016, 25.493292>,  <31.064440, 35.492748, 25.697905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360996, 34.845016, 25.493292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653105, 35.118080, 25.503733>,  <31.828369, 35.281918, 25.509998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653105, 35.118080, 25.503733>,  <31.360996, 34.845016, 25.493292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653105, 35.118080, 25.503733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429600, -0.488599, 0.759417,
		0.531178, -0.543365, -0.650080,
		0.730269, 0.682661, 0.026104,
		31.872185, 35.322880, 25.511564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025593, 34.431370, 25.398113>,  <31.360996, 34.845016, 25.493292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025593, 34.431370, 25.398113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.106800, 34.789417, 25.556881>,  <32.155525, 35.004246, 25.652142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.106800, 34.789417, 25.556881>,  <32.025593, 34.431370, 25.398113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106800, 34.789417, 25.556881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582699, -0.436211, 0.685698,
		0.786922, 0.092076, -0.610144,
		0.203015, 0.895121, 0.396917,
		32.167706, 35.057953, 25.675957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657326, 34.232525, 25.714699>,  <32.025593, 34.431370, 25.398113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657326, 34.232525, 25.714699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595875, 34.608765, 25.835804>,  <32.559006, 34.834511, 25.908468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595875, 34.608765, 25.835804>,  <32.657326, 34.232525, 25.714699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595875, 34.608765, 25.835804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716284, -0.105063, 0.689854,
		0.680687, 0.322846, -0.657598,
		-0.153627, 0.940602, 0.302765,
		32.549786, 34.890945, 25.926634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346703, 34.663746, 25.739470>,  <32.657326, 34.232525, 25.714699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346703, 34.663746, 25.739470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086025, 34.821918, 25.998371>,  <32.929619, 34.916821, 26.153711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086025, 34.821918, 25.998371>,  <33.346703, 34.663746, 25.739470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086025, 34.821918, 25.998371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693192, -0.035876, 0.719859,
		0.307873, 0.917796, -0.250728,
		-0.651689, 0.395428, 0.647255,
		32.890518, 34.940548, 26.192547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713390, 35.117943, 26.218527>,  <33.346703, 34.663746, 25.739470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713390, 35.117943, 26.218527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376034, 35.034325, 26.416513>,  <33.173622, 34.984154, 26.535305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376034, 35.034325, 26.416513>,  <33.713390, 35.117943, 26.218527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376034, 35.034325, 26.416513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501579, 0.023970, 0.864780,
		-0.192646, 0.977611, 0.084639,
		-0.843390, -0.209050, 0.494967,
		33.123016, 34.971611, 26.565004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.545063, 35.905022, 30.284092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209766, 35.986393, 30.486462>,  <37.008587, 36.035217, 30.607883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209766, 35.986393, 30.486462>,  <37.545063, 35.905022, 30.284092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209766, 35.986393, 30.486462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466894, -0.211539, 0.858639,
		0.281696, 0.955964, 0.082341,
		-0.838246, 0.203431, 0.505924,
		36.958294, 36.047421, 30.638239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840725, 35.965946, 30.855860>,  <37.545063, 35.905022, 30.284092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840725, 35.965946, 30.855860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463322, 35.945278, 30.986780>,  <37.236881, 35.932877, 31.065332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463322, 35.945278, 30.986780>,  <37.840725, 35.965946, 30.855860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463322, 35.945278, 30.986780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327802, -0.289777, 0.899208,
		0.048386, 0.955699, 0.290342,
		-0.943506, -0.051666, 0.327301,
		37.180271, 35.929779, 31.084970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856754, 36.298161, 31.499767>,  <37.840725, 35.965946, 30.855860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856754, 36.298161, 31.499767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.533875, 36.062084, 31.495586>,  <37.340149, 35.920437, 31.493078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.533875, 36.062084, 31.495586>,  <37.856754, 36.298161, 31.499767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533875, 36.062084, 31.495586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163978, -0.241208, 0.956520,
		-0.567049, 0.770386, 0.291480,
		-0.807197, -0.590190, -0.010450,
		37.291714, 35.885029, 31.492451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330429, 36.473881, 32.075321>,  <37.856754, 36.298161, 31.499767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330429, 36.473881, 32.075321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288555, 36.089592, 31.972523>,  <37.263432, 35.859016, 31.910843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288555, 36.089592, 31.972523>,  <37.330429, 36.473881, 32.075321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288555, 36.089592, 31.972523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142351, -0.270232, 0.952214,
		-0.984265, 0.063100, 0.165049,
		-0.104687, -0.960725, -0.256997,
		37.257149, 35.801373, 31.895424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993534, 36.194252, 32.636738>,  <37.330429, 36.473881, 32.075321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993534, 36.194252, 32.636738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.110619, 35.856728, 32.456825>,  <37.180870, 35.654213, 32.348877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.110619, 35.856728, 32.456825>,  <36.993534, 36.194252, 32.636738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110619, 35.856728, 32.456825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056191, -0.454394, 0.889027,
		-0.954548, -0.285503, -0.085592,
		0.292712, -0.843810, -0.449783,
		37.198433, 35.603584, 32.321892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533478, 35.617611, 32.929470>,  <36.993534, 36.194252, 32.636738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533478, 35.617611, 32.929470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.863781, 35.453888, 32.774242>,  <37.061962, 35.355656, 32.681107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.863781, 35.453888, 32.774242>,  <36.533478, 35.617611, 32.929470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863781, 35.453888, 32.774242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131294, -0.529640, 0.838000,
		-0.548538, -0.742932, -0.383612,
		0.825753, -0.409309, -0.388070,
		37.111507, 35.331097, 32.657822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508385, 35.014996, 33.166771>,  <36.533478, 35.617611, 32.929470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508385, 35.014996, 33.166771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897984, 35.027348, 33.077000>,  <37.131744, 35.034760, 33.023136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897984, 35.027348, 33.077000>,  <36.508385, 35.014996, 33.166771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897984, 35.027348, 33.077000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202567, -0.562309, 0.801732,
		-0.101440, -0.826350, -0.553945,
		0.974000, 0.030884, -0.224432,
		37.190186, 35.036613, 33.009670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716537, 34.308964, 33.338116>,  <36.508385, 35.014996, 33.166771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716537, 34.308964, 33.338116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036942, 34.548420, 33.339344>,  <37.229183, 34.692093, 33.340080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036942, 34.548420, 33.339344>,  <36.716537, 34.308964, 33.338116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036942, 34.548420, 33.339344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299332, -0.404947, 0.863955,
		0.518444, -0.691117, -0.503560,
		0.801009, 0.598644, 0.003069,
		37.277245, 34.728012, 33.340263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294762, 33.820835, 33.496552>,  <36.716537, 34.308964, 33.338116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294762, 33.820835, 33.496552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396454, 34.191181, 33.608364>,  <37.457470, 34.413387, 33.675453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396454, 34.191181, 33.608364>,  <37.294762, 33.820835, 33.496552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396454, 34.191181, 33.608364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408982, -0.364838, 0.836437,
		0.876412, -0.098326, -0.471416,
		0.254234, 0.925865, 0.279535,
		37.472725, 34.468941, 33.692226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951500, 33.704617, 33.681400>,  <37.294762, 33.820835, 33.496552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951500, 33.704617, 33.681400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.851101, 34.052704, 33.850971>,  <37.790859, 34.261559, 33.952713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.851101, 34.052704, 33.850971>,  <37.951500, 33.704617, 33.681400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851101, 34.052704, 33.850971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470908, -0.272857, 0.838924,
		0.845721, 0.410202, -0.341307,
		-0.251000, 0.870220, 0.423929,
		37.775803, 34.313770, 33.978149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606159, 34.081497, 33.887539>,  <37.951500, 33.704617, 33.681400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606159, 34.081497, 33.887539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298836, 34.217018, 34.104767>,  <38.114441, 34.298328, 34.235104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298836, 34.217018, 34.104767>,  <38.606159, 34.081497, 33.887539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298836, 34.217018, 34.104767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465113, -0.287383, 0.837306,
		0.439748, 0.895894, 0.063217,
		-0.768305, 0.338800, 0.543068,
		38.068344, 34.318657, 34.267689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906033, 34.272018, 34.443913>,  <38.606159, 34.081497, 33.887539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906033, 34.272018, 34.443913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523140, 34.266026, 34.559490>,  <38.293404, 34.262428, 34.628838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523140, 34.266026, 34.559490>,  <38.906033, 34.272018, 34.443913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523140, 34.266026, 34.559490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286103, -0.197766, 0.937568,
		0.043094, 0.980135, 0.193595,
		-0.957229, -0.014985, 0.288942,
		38.235970, 34.261532, 34.646172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862770, 35.055225, 34.200954>,  <38.906033, 34.272018, 34.443913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862770, 35.055225, 34.200954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156246, 35.229782, 34.409286>,  <39.332333, 35.334515, 34.534286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156246, 35.229782, 34.409286>,  <38.862770, 35.055225, 34.200954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156246, 35.229782, 34.409286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651131, 0.232419, 0.722502,
		0.194233, -0.869226, 0.454664,
		0.733691, 0.436380, 0.520836,
		39.376354, 35.360699, 34.565536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548866, 35.482563, 34.700996>,  <38.862770, 35.055225, 34.200954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548866, 35.482563, 34.700996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916092, 35.564636, 34.836674>,  <39.136429, 35.613880, 34.918079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916092, 35.564636, 34.836674>,  <38.548866, 35.482563, 34.700996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916092, 35.564636, 34.836674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395025, 0.545309, 0.739320,
		-0.033271, -0.812735, 0.581683,
		0.918068, 0.205181, 0.339193,
		39.191513, 35.626190, 34.938431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790955, 36.086552, 34.347580>,  <38.548866, 35.482563, 34.700996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790955, 36.086552, 34.347580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960270, 36.341877, 34.604759>,  <39.061859, 36.495071, 34.759068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960270, 36.341877, 34.604759>,  <38.790955, 36.086552, 34.347580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960270, 36.341877, 34.604759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656759, 0.705033, -0.267575,
		-0.624094, -0.308998, 0.717654,
		0.423289, 0.638317, 0.642944,
		39.087257, 36.533371, 34.797642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247433, 36.343945, 34.692673>,  <38.790955, 36.086552, 34.347580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247433, 36.343945, 34.692673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555233, 36.598495, 34.714188>,  <38.739914, 36.751225, 34.727097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555233, 36.598495, 34.714188>,  <38.247433, 36.343945, 34.692673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555233, 36.598495, 34.714188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596586, 0.746329, -0.295091,
		-0.227928, 0.194987, 0.953954,
		0.769502, 0.636375, 0.053783,
		38.786083, 36.789410, 34.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061970, 36.807655, 35.164612>,  <38.247433, 36.343945, 34.692673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061970, 36.807655, 35.164612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338184, 36.961548, 34.919617>,  <38.503914, 37.053883, 34.772621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338184, 36.961548, 34.919617>,  <38.061970, 36.807655, 35.164612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338184, 36.961548, 34.919617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659987, 0.681614, -0.315940,
		0.295929, 0.622403, 0.724597,
		0.690538, 0.384729, -0.612488,
		38.545345, 37.076965, 34.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110954, 37.475849, 35.300671>,  <38.061970, 36.807655, 35.164612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110954, 37.475849, 35.300671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282253, 37.501228, 34.940098>,  <38.385033, 37.516457, 34.723755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282253, 37.501228, 34.940098>,  <38.110954, 37.475849, 35.300671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282253, 37.501228, 34.940098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647800, 0.717051, -0.257281,
		0.630048, 0.694127, 0.348176,
		0.428246, 0.063449, -0.901432,
		38.410728, 37.520264, 34.669666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269958, 38.155838, 35.197712>,  <38.110954, 37.475849, 35.300671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269958, 38.155838, 35.197712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.248318, 37.978607, 34.839771>,  <38.235332, 37.872269, 34.625008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.248318, 37.978607, 34.839771>,  <38.269958, 38.155838, 35.197712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248318, 37.978607, 34.839771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790519, 0.566503, -0.232708,
		0.610043, 0.694807, -0.380909,
		-0.054099, -0.443077, -0.894850,
		38.232086, 37.845684, 34.571316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113758, 38.660378, 34.837791>,  <38.269958, 38.155838, 35.197712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113758, 38.660378, 34.837791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026569, 38.366131, 34.581242>,  <37.974255, 38.189583, 34.427311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026569, 38.366131, 34.581242>,  <38.113758, 38.660378, 34.837791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026569, 38.366131, 34.581242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693851, 0.578962, -0.428222,
		0.686337, 0.351678, -0.636603,
		-0.217973, -0.735612, -0.641375,
		37.961178, 38.145447, 34.388828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943977, 38.964237, 34.156361>,  <38.113758, 38.660378, 34.837791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943977, 38.964237, 34.156361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787601, 38.597164, 34.127998>,  <37.693775, 38.376923, 34.110981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787601, 38.597164, 34.127998>,  <37.943977, 38.964237, 34.156361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787601, 38.597164, 34.127998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626604, 0.321783, -0.709805,
		0.674191, -0.233062, -0.700820,
		-0.390941, -0.917680, -0.070906,
		37.670319, 38.321861, 34.106728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991177, 38.848457, 33.502895>,  <37.943977, 38.964237, 34.156361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991177, 38.848457, 33.502895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.719318, 38.584301, 33.630627>,  <37.556202, 38.425808, 33.707264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.719318, 38.584301, 33.630627>,  <37.991177, 38.848457, 33.502895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719318, 38.584301, 33.630627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674896, 0.392396, -0.624933,
		0.287395, -0.640246, -0.712383,
		-0.679647, -0.660387, 0.319326,
		37.515423, 38.386185, 33.726425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620811, 38.640194, 32.855156>,  <37.991177, 38.848457, 33.502895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620811, 38.640194, 32.855156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387119, 38.548820, 33.166668>,  <37.246902, 38.493996, 33.353573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387119, 38.548820, 33.166668>,  <37.620811, 38.640194, 32.855156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387119, 38.548820, 33.166668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804680, 0.287971, -0.519195,
		-0.105662, -0.929994, -0.352060,
		-0.584231, -0.228436, 0.778775,
		37.211849, 38.480289, 33.400299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023918, 38.419708, 32.536957>,  <37.620811, 38.640194, 32.855156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023918, 38.419708, 32.536957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906036, 38.503792, 32.909832>,  <36.835308, 38.554241, 33.133556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906036, 38.503792, 32.909832>,  <37.023918, 38.419708, 32.536957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906036, 38.503792, 32.909832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847652, 0.392869, -0.356567,
		-0.441178, -0.895247, 0.062402,
		-0.294700, 0.210205, 0.932183,
		36.817627, 38.566853, 33.189487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395317, 37.988052, 32.689869>,  <37.023918, 38.419708, 32.536957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395317, 37.988052, 32.689869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.410591, 38.316792, 32.917240>,  <36.419758, 38.514034, 33.053661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.410591, 38.316792, 32.917240>,  <36.395317, 37.988052, 32.689869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410591, 38.316792, 32.917240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937014, 0.227095, -0.265391,
		-0.347198, -0.522487, 0.778756,
		0.038188, 0.821848, 0.568425,
		36.422047, 38.563347, 33.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762268, 38.027657, 32.806747>,  <36.395317, 37.988052, 32.689869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762268, 38.027657, 32.806747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.890018, 38.388725, 32.922115>,  <35.966671, 38.605366, 32.991337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.890018, 38.388725, 32.922115>,  <35.762268, 38.027657, 32.806747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890018, 38.388725, 32.922115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888111, 0.391283, -0.241158,
		-0.330539, -0.179126, 0.926638,
		0.319380, 0.902670, 0.288417,
		35.985832, 38.659527, 33.008640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221077, 38.370796, 33.263718>,  <35.762268, 38.027657, 32.806747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221077, 38.370796, 33.263718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463314, 38.645390, 33.102722>,  <35.608654, 38.810146, 33.006126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.463314, 38.645390, 33.102722>,  <35.221077, 38.370796, 33.263718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463314, 38.645390, 33.102722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784745, 0.431259, -0.445186,
		-0.132040, 0.585448, 0.799885,
		0.605591, 0.686488, -0.402485,
		35.644993, 38.851337, 32.981976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815002, 38.876320, 33.287968>,  <35.221077, 38.370796, 33.263718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815002, 38.876320, 33.287968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098785, 39.001549, 33.035412>,  <35.269054, 39.076687, 32.883877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.098785, 39.001549, 33.035412>,  <34.815002, 38.876320, 33.287968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098785, 39.001549, 33.035412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701168, 0.223377, -0.677101,
		-0.070940, 0.923087, 0.377991,
		0.709458, 0.313069, -0.631393,
		35.311623, 39.095470, 32.845993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088379, 38.882450, 33.484463>,  <34.815002, 38.876320, 33.287968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088379, 38.882450, 33.484463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.735161, 38.695499, 33.467583>,  <33.523228, 38.583328, 33.457455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.735161, 38.695499, 33.467583>,  <34.088379, 38.882450, 33.484463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735161, 38.695499, 33.467583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366894, -0.743660, 0.558891,
		-0.292595, 0.478045, 0.828167,
		-0.883050, -0.467379, -0.042199,
		33.470245, 38.555286, 33.454922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856136, 38.783840, 34.165932>,  <34.088379, 38.882450, 33.484463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856136, 38.783840, 34.165932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.673431, 38.520424, 33.926701>,  <33.563808, 38.362373, 33.783161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.673431, 38.520424, 33.926701>,  <33.856136, 38.783840, 34.165932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673431, 38.520424, 33.926701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299026, -0.746843, 0.593977,
		-0.837827, 0.092464, 0.538049,
		-0.456760, -0.658541, -0.598076,
		33.536404, 38.322861, 33.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782108, 38.305157, 34.686558>,  <33.856136, 38.783840, 34.165932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782108, 38.305157, 34.686558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.674152, 38.103683, 34.358299>,  <33.609379, 37.982800, 34.161343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.674152, 38.103683, 34.358299>,  <33.782108, 38.305157, 34.686558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674152, 38.103683, 34.358299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131088, -0.863559, 0.486910,
		-0.953925, 0.023837, 0.299096,
		-0.269893, -0.503684, -0.820646,
		33.593185, 37.952579, 34.112106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095787, 37.955544, 34.841793>,  <33.782108, 38.305157, 34.686558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095787, 37.955544, 34.841793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.301342, 37.757008, 34.561916>,  <33.424675, 37.637886, 34.393990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.301342, 37.757008, 34.561916>,  <33.095787, 37.955544, 34.841793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301342, 37.757008, 34.561916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013333, -0.810906, 0.585024,
		-0.857756, -0.309964, -0.410094,
		0.513884, -0.496340, -0.699693,
		33.455509, 37.608105, 34.352009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747242, 37.283447, 34.688457>,  <33.095787, 37.955544, 34.841793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747242, 37.283447, 34.688457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135281, 37.252556, 34.596420>,  <33.368103, 37.234020, 34.541199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135281, 37.252556, 34.596420>,  <32.747242, 37.283447, 34.688457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135281, 37.252556, 34.596420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050973, -0.862055, 0.504245,
		-0.237293, -0.500897, -0.832343,
		0.970100, -0.077226, -0.230092,
		33.426311, 37.229389, 34.527393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852234, 36.671028, 34.726639>,  <32.747242, 37.283447, 34.688457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852234, 36.671028, 34.726639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.236656, 36.773506, 34.685204>,  <33.467312, 36.834995, 34.660343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.236656, 36.773506, 34.685204>,  <32.852234, 36.671028, 34.726639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236656, 36.773506, 34.685204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272731, -0.818906, 0.504987,
		0.044549, -0.513572, -0.856889,
		0.961059, 0.256197, -0.103585,
		33.524975, 36.850365, 34.654129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246170, 36.087307, 34.377972>,  <32.852234, 36.671028, 34.726639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246170, 36.087307, 34.377972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.518108, 36.301697, 34.578186>,  <33.681271, 36.430332, 34.698315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.518108, 36.301697, 34.578186>,  <33.246170, 36.087307, 34.377972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518108, 36.301697, 34.578186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374007, -0.840500, 0.392017,
		0.630815, -0.079306, -0.771870,
		0.679846, 0.535975, 0.500540,
		33.722061, 36.462490, 34.728348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913017, 35.606720, 34.411270>,  <33.246170, 36.087307, 34.377972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913017, 35.606720, 34.411270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.938087, 35.886257, 34.696278>,  <33.953129, 36.053982, 34.867283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.938087, 35.886257, 34.696278>,  <33.913017, 35.606720, 34.411270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938087, 35.886257, 34.696278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313257, -0.691622, 0.650791,
		0.947598, 0.182412, -0.262268,
		0.062678, 0.698846, 0.712521,
		33.956890, 36.095909, 34.910034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523506, 35.438675, 34.763088>,  <33.913017, 35.606720, 34.411270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523506, 35.438675, 34.763088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359077, 35.669800, 35.045128>,  <34.260422, 35.808475, 35.214352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.359077, 35.669800, 35.045128>,  <34.523506, 35.438675, 34.763088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359077, 35.669800, 35.045128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449202, -0.544654, 0.708216,
		0.793245, 0.607858, -0.035660,
		-0.411072, 0.577808, 0.705094,
		34.235756, 35.843143, 35.256657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121605, 35.592579, 35.163586>,  <34.523506, 35.438675, 34.763088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121605, 35.592579, 35.163586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.803337, 35.666954, 35.394180>,  <34.612377, 35.711578, 35.532539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.803337, 35.666954, 35.394180>,  <35.121605, 35.592579, 35.163586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803337, 35.666954, 35.394180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456379, -0.441762, 0.772375,
		0.398286, 0.877652, 0.266637,
		-0.795667, 0.185939, 0.576490,
		34.564636, 35.722736, 35.567127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318024, 36.042152, 35.660011>,  <35.121605, 35.592579, 35.163586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318024, 36.042152, 35.660011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988144, 35.877892, 35.815571>,  <34.790218, 35.779335, 35.908905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988144, 35.877892, 35.815571>,  <35.318024, 36.042152, 35.660011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988144, 35.877892, 35.815571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538909, -0.361914, 0.760655,
		-0.171614, 0.836891, 0.519771,
		-0.824697, -0.410648, 0.388899,
		34.740734, 35.754696, 35.932240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384212, 36.180286, 36.331089>,  <35.318024, 36.042152, 35.660011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384212, 36.180286, 36.331089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.147549, 35.859634, 36.296848>,  <35.005550, 35.667244, 36.276306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.147549, 35.859634, 36.296848>,  <35.384212, 36.180286, 36.331089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147549, 35.859634, 36.296848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562370, -0.486464, 0.668650,
		-0.577652, 0.347474, 0.738634,
		-0.591657, -0.801633, -0.085598,
		34.970051, 35.619144, 36.271168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.290836, 41.693886, 31.338833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072632, 41.364288, 31.277571>,  <31.941710, 41.166531, 31.240814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072632, 41.364288, 31.277571>,  <32.290836, 41.693886, 31.338833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072632, 41.364288, 31.277571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424761, -0.429349, 0.797018,
		-0.722493, 0.369727, 0.584214,
		-0.545511, -0.823991, -0.153156,
		31.908979, 41.117092, 31.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944870, 41.529491, 31.908821>,  <32.290836, 41.693886, 31.338833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944870, 41.529491, 31.908821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984159, 41.188786, 31.702969>,  <32.007732, 40.984360, 31.579456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984159, 41.188786, 31.702969>,  <31.944870, 41.529491, 31.908821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984159, 41.188786, 31.702969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179435, -0.493498, 0.851036,
		-0.978854, -0.175935, 0.104364,
		0.098223, -0.851767, -0.514631,
		32.013626, 40.933254, 31.548578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606861, 40.938309, 32.314743>,  <31.944870, 41.529491, 31.908821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606861, 40.938309, 32.314743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832043, 40.733982, 32.054852>,  <31.967152, 40.611385, 31.898916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832043, 40.733982, 32.054852>,  <31.606861, 40.938309, 32.314743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832043, 40.733982, 32.054852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275123, -0.625476, 0.730128,
		-0.779352, -0.589784, -0.211576,
		0.562954, -0.510818, -0.649729,
		32.000927, 40.580738, 31.859932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371075, 40.254444, 32.331642>,  <31.606861, 40.938309, 32.314743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371075, 40.254444, 32.331642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753729, 40.237122, 32.216419>,  <31.983320, 40.226730, 32.147285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753729, 40.237122, 32.216419>,  <31.371075, 40.254444, 32.331642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753729, 40.237122, 32.216419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140313, -0.798101, 0.585958,
		-0.255272, -0.600966, -0.757414,
		0.956634, -0.043303, -0.288056,
		32.040718, 40.224129, 32.130001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489845, 39.545784, 32.180359>,  <31.371075, 40.254444, 32.331642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489845, 39.545784, 32.180359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856606, 39.697422, 32.230274>,  <32.076664, 39.788406, 32.260223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856606, 39.697422, 32.230274>,  <31.489845, 39.545784, 32.180359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856606, 39.697422, 32.230274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206307, -0.717861, 0.664916,
		0.341653, -0.583918, -0.736420,
		0.916903, 0.379099, 0.124793,
		32.131676, 39.811153, 32.267712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939735, 39.006943, 32.070065>,  <31.489845, 39.545784, 32.180359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939735, 39.006943, 32.070065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175388, 39.252842, 32.279831>,  <32.316780, 39.400379, 32.405689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175388, 39.252842, 32.279831>,  <31.939735, 39.006943, 32.070065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175388, 39.252842, 32.279831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220481, -0.746672, 0.627590,
		0.777374, -0.254109, -0.575428,
		0.589132, 0.614743, 0.524417,
		32.352127, 39.437263, 32.437157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661987, 38.671059, 32.158455>,  <31.939735, 39.006943, 32.070065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661987, 38.671059, 32.158455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676632, 38.972149, 32.421383>,  <32.685417, 39.152802, 32.579140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676632, 38.972149, 32.421383>,  <32.661987, 38.671059, 32.158455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676632, 38.972149, 32.421383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512249, -0.578907, 0.634403,
		0.858056, 0.313485, -0.406776,
		0.036610, 0.752724, 0.657317,
		32.687614, 39.197968, 32.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384377, 38.629044, 32.280235>,  <32.661987, 38.671059, 32.158455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384377, 38.629044, 32.280235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177452, 38.799805, 32.576923>,  <33.053295, 38.902260, 32.754936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177452, 38.799805, 32.576923>,  <33.384377, 38.629044, 32.280235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177452, 38.799805, 32.576923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531099, -0.519463, 0.669397,
		0.671060, 0.740213, 0.041998,
		-0.517313, 0.426900, 0.741717,
		33.022259, 38.927876, 32.799438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894676, 38.952854, 32.773232>,  <33.384377, 38.629044, 32.280235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894676, 38.952854, 32.773232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546730, 38.844364, 32.938042>,  <33.337963, 38.779270, 33.036930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546730, 38.844364, 32.938042>,  <33.894676, 38.952854, 32.773232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546730, 38.844364, 32.938042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493177, -0.460880, 0.737812,
		-0.010214, 0.845002, 0.534665,
		-0.869869, -0.271220, 0.412029,
		33.285770, 38.762997, 33.061649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526951, 39.434322, 32.942898>,  <33.894676, 38.952854, 32.773232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526951, 39.434322, 32.942898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831043, 39.351456, 32.696606>,  <35.013500, 39.301735, 32.548828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831043, 39.351456, 32.696606>,  <34.526951, 39.434322, 32.942898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831043, 39.351456, 32.696606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534773, 0.338589, -0.774193,
		0.368871, 0.917844, 0.146617,
		0.760231, -0.207171, -0.615734,
		35.059113, 39.289303, 32.511887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682495, 40.089325, 32.446316>,  <34.526951, 39.434322, 32.942898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682495, 40.089325, 32.446316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837772, 39.753788, 32.293655>,  <34.930939, 39.552467, 32.202061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837772, 39.753788, 32.293655>,  <34.682495, 40.089325, 32.446316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837772, 39.753788, 32.293655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335054, 0.257322, -0.906379,
		0.858512, 0.479725, -0.181165,
		0.388195, -0.838838, -0.381648,
		34.954231, 39.502136, 32.179161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016129, 40.286121, 31.827328>,  <34.682495, 40.089325, 32.446316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016129, 40.286121, 31.827328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957275, 39.893673, 31.777121>,  <34.921963, 39.658203, 31.746996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957275, 39.893673, 31.777121>,  <35.016129, 40.286121, 31.827328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957275, 39.893673, 31.777121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196600, 0.153372, -0.968414,
		0.969382, -0.117806, -0.215454,
		-0.147130, -0.981121, -0.125516,
		34.913136, 39.599335, 31.739466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253735, 40.050251, 31.214499>,  <35.016129, 40.286121, 31.827328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253735, 40.050251, 31.214499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021034, 39.730404, 31.274069>,  <34.881413, 39.538494, 31.309811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021034, 39.730404, 31.274069>,  <35.253735, 40.050251, 31.214499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021034, 39.730404, 31.274069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159254, -0.067576, -0.984922,
		0.797625, -0.596695, -0.088030,
		-0.581750, -0.799618, 0.148926,
		34.846508, 39.490520, 31.318747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342178, 39.637711, 30.641371>,  <35.253735, 40.050251, 31.214499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342178, 39.637711, 30.641371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009521, 39.480907, 30.798697>,  <34.809925, 39.386826, 30.893091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009521, 39.480907, 30.798697>,  <35.342178, 39.637711, 30.641371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009521, 39.480907, 30.798697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302387, -0.274368, -0.912844,
		0.465754, -0.878096, 0.109639,
		-0.831646, -0.392007, 0.393313,
		34.760029, 39.363304, 30.916691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306469, 38.975346, 30.498514>,  <35.342178, 39.637711, 30.641371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306469, 38.975346, 30.498514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924213, 39.083111, 30.546116>,  <34.694859, 39.147770, 30.574677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924213, 39.083111, 30.546116>,  <35.306469, 38.975346, 30.498514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924213, 39.083111, 30.546116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203905, -0.313628, -0.927394,
		-0.212531, -0.910524, 0.354651,
		-0.955643, 0.269415, 0.119005,
		34.637520, 39.163937, 30.581818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973351, 38.487968, 30.096277>,  <35.306469, 38.975346, 30.498514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973351, 38.487968, 30.096277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688122, 38.762211, 30.154894>,  <34.516983, 38.926758, 30.190063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688122, 38.762211, 30.154894>,  <34.973351, 38.487968, 30.096277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688122, 38.762211, 30.154894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362061, -0.181126, -0.914388,
		-0.600367, -0.705080, 0.377387,
		-0.713071, 0.685606, 0.146540,
		34.474201, 38.967892, 30.198856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325500, 38.176544, 29.827543>,  <34.973351, 38.487968, 30.096277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325500, 38.176544, 29.827543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281334, 38.573982, 29.837080>,  <34.254833, 38.812447, 29.842802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281334, 38.573982, 29.837080>,  <34.325500, 38.176544, 29.827543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281334, 38.573982, 29.837080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240015, -0.003377, -0.970763,
		-0.964469, -0.112915, 0.238851,
		-0.110420, 0.993599, 0.023844,
		34.248207, 38.872063, 29.844233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696842, 38.254459, 29.608986>,  <34.325500, 38.176544, 29.827543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696842, 38.254459, 29.608986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860092, 38.615913, 29.557022>,  <33.958042, 38.832787, 29.525845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860092, 38.615913, 29.557022>,  <33.696842, 38.254459, 29.608986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860092, 38.615913, 29.557022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487473, 0.095391, -0.867912,
		-0.771885, 0.417540, 0.479430,
		0.408122, 0.903638, -0.129909,
		33.982529, 38.887005, 29.518049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148754, 38.620346, 29.329054>,  <33.696842, 38.254459, 29.608986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148754, 38.620346, 29.329054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490433, 38.803001, 29.229589>,  <33.695438, 38.912594, 29.169910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490433, 38.803001, 29.229589>,  <33.148754, 38.620346, 29.329054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490433, 38.803001, 29.229589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376356, 0.213021, -0.901653,
		-0.358758, 0.863773, 0.353819,
		0.854195, 0.456637, -0.248663,
		33.746693, 38.939991, 29.154991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930737, 39.193535, 29.000862>,  <33.148754, 38.620346, 29.329054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930737, 39.193535, 29.000862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304947, 39.179424, 28.860264>,  <33.529472, 39.170956, 28.775904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304947, 39.179424, 28.860264>,  <32.930737, 39.193535, 29.000862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304947, 39.179424, 28.860264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327607, 0.285627, -0.900606,
		0.132169, 0.957691, 0.255654,
		0.935524, -0.035279, -0.351498,
		33.585606, 39.168842, 28.754814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032589, 39.711063, 28.628332>,  <32.930737, 39.193535, 29.000862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032589, 39.711063, 28.628332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332279, 39.490913, 28.480953>,  <33.512093, 39.358822, 28.392527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332279, 39.490913, 28.480953>,  <33.032589, 39.711063, 28.628332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332279, 39.490913, 28.480953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123089, 0.430901, -0.893965,
		0.650779, 0.715131, 0.255096,
		0.749223, -0.550374, -0.368446,
		33.557045, 39.325802, 28.370419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458702, 40.166607, 28.284046>,  <33.032589, 39.711063, 28.628332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458702, 40.166607, 28.284046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564449, 39.825008, 28.104807>,  <33.627899, 39.620049, 27.997263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564449, 39.825008, 28.104807>,  <33.458702, 40.166607, 28.284046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564449, 39.825008, 28.104807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108100, 0.435461, -0.893693,
		0.958343, 0.284707, 0.022806,
		0.264372, -0.854000, -0.448098,
		33.643761, 39.568810, 27.970377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941528, 40.291306, 27.676523>,  <33.458702, 40.166607, 28.284046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941528, 40.291306, 27.676523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754219, 39.942524, 27.619358>,  <33.641834, 39.733257, 27.585058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754219, 39.942524, 27.619358>,  <33.941528, 40.291306, 27.676523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754219, 39.942524, 27.619358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155228, 0.240411, -0.958179,
		0.869842, -0.426505, -0.247929,
		-0.468273, -0.871950, -0.142913,
		33.613735, 39.680939, 27.576485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.875488, 34.388268, 27.211531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.890928, 34.782894, 27.275015>,  <29.900192, 35.019672, 27.313105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.890928, 34.782894, 27.275015>,  <29.875488, 34.388268, 27.211531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890928, 34.782894, 27.275015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720144, -0.137578, 0.680048,
		0.692750, 0.088043, -0.715783,
		0.038602, 0.986570, 0.158711,
		29.902510, 35.078865, 27.322628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576384, 34.592499, 27.145243>,  <29.875488, 34.388268, 27.211531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576384, 34.592499, 27.145243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.417263, 34.887428, 27.363638>,  <30.321791, 35.064388, 27.494675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.417263, 34.887428, 27.363638>,  <30.576384, 34.592499, 27.145243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417263, 34.887428, 27.363638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699115, -0.141767, 0.700814,
		0.594132, 0.660494, -0.459081,
		-0.397801, 0.737326, 0.545989,
		30.297922, 35.108627, 27.527435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120483, 34.840511, 27.366352>,  <30.576384, 34.592499, 27.145243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120483, 34.840511, 27.366352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.843573, 34.995564, 27.609825>,  <30.677425, 35.088593, 27.755909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.843573, 34.995564, 27.609825>,  <31.120483, 34.840511, 27.366352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843573, 34.995564, 27.609825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580252, -0.202453, 0.788873,
		0.429019, 0.899309, -0.084768,
		-0.692279, 0.387628, 0.608682,
		30.635889, 35.111851, 27.792429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455902, 35.321617, 27.824638>,  <31.120483, 34.840511, 27.366352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455902, 35.321617, 27.824638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.117735, 35.204990, 28.003637>,  <30.914835, 35.135014, 28.111036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.117735, 35.204990, 28.003637>,  <31.455902, 35.321617, 27.824638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117735, 35.204990, 28.003637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515943, -0.229208, 0.825389,
		-0.138089, 0.928682, 0.344210,
		-0.845419, -0.291570, 0.447496,
		30.864109, 35.117519, 28.137886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612589, 35.476967, 28.555960>,  <31.455902, 35.321617, 27.824638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612589, 35.476967, 28.555960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.262016, 35.287334, 28.589695>,  <31.051672, 35.173553, 28.609936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.262016, 35.287334, 28.589695>,  <31.612589, 35.476967, 28.555960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262016, 35.287334, 28.589695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282816, -0.365046, 0.886993,
		-0.389722, 0.801240, 0.454016,
		-0.876431, -0.474084, 0.084337,
		30.999086, 35.145107, 28.614996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341440, 35.568523, 29.183294>,  <31.612589, 35.476967, 28.555960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341440, 35.568523, 29.183294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.190512, 35.215954, 29.069647>,  <31.099955, 35.004414, 29.001457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.190512, 35.215954, 29.069647>,  <31.341440, 35.568523, 29.183294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190512, 35.215954, 29.069647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311991, -0.409850, 0.857137,
		-0.871947, 0.234771, 0.429640,
		-0.377319, -0.881423, -0.284121,
		31.077316, 34.951527, 28.984411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979631, 35.311878, 29.801168>,  <31.341440, 35.568523, 29.183294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979631, 35.311878, 29.801168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.015007, 34.979343, 29.581694>,  <31.036232, 34.779823, 29.450008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.015007, 34.979343, 29.581694>,  <30.979631, 35.311878, 29.801168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015007, 34.979343, 29.581694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254768, -0.513646, 0.819305,
		-0.962949, -0.212248, 0.166370,
		0.088441, -0.831335, -0.548689,
		31.041540, 34.729942, 29.417088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709770, 34.761082, 30.145964>,  <30.979631, 35.311878, 29.801168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709770, 34.761082, 30.145964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.960283, 34.586208, 29.887772>,  <31.110590, 34.481285, 29.732857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.960283, 34.586208, 29.887772>,  <30.709770, 34.761082, 30.145964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960283, 34.586208, 29.887772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260521, -0.663006, 0.701820,
		-0.734780, -0.607697, -0.301333,
		0.626280, -0.437180, -0.645482,
		31.148169, 34.455055, 29.694128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510096, 34.109566, 30.179632>,  <30.709770, 34.761082, 30.145964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510096, 34.109566, 30.179632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.889282, 34.132412, 30.054348>,  <31.116795, 34.146122, 29.979177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.889282, 34.132412, 30.054348>,  <30.510096, 34.109566, 30.179632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889282, 34.132412, 30.054348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260387, -0.705180, 0.659485,
		-0.183200, -0.706724, -0.683359,
		0.947964, 0.057120, -0.313211,
		31.173672, 34.149548, 29.960384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799824, 33.357166, 30.047665>,  <30.510096, 34.109566, 30.179632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799824, 33.357166, 30.047665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124447, 33.588871, 30.078194>,  <31.319221, 33.727894, 30.096510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124447, 33.588871, 30.078194>,  <30.799824, 33.357166, 30.047665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124447, 33.588871, 30.078194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364050, -0.603505, 0.709401,
		0.456992, -0.547935, -0.700661,
		0.811558, 0.579266, 0.076322,
		31.367914, 33.762650, 30.101089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389467, 32.862732, 29.971289>,  <30.799824, 33.357166, 30.047665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389467, 32.862732, 29.971289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.541496, 33.195210, 30.133604>,  <31.632713, 33.394695, 30.230993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.541496, 33.195210, 30.133604>,  <31.389467, 32.862732, 29.971289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541496, 33.195210, 30.133604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660498, -0.551016, 0.510023,
		0.647524, 0.074177, -0.758426,
		0.380073, 0.831191, 0.405790,
		31.655518, 33.444569, 30.255341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112175, 32.870975, 29.877737>,  <31.389467, 32.862732, 29.971289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112175, 32.870975, 29.877737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038532, 33.108490, 30.191048>,  <31.994347, 33.250999, 30.379034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038532, 33.108490, 30.191048>,  <32.112175, 32.870975, 29.877737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038532, 33.108490, 30.191048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677404, -0.500768, 0.538847,
		0.712200, 0.629800, -0.310037,
		-0.184109, 0.593787, 0.783276,
		31.983299, 33.286625, 30.426031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790161, 32.986767, 30.186552>,  <32.112175, 32.870975, 29.877737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790161, 32.986767, 30.186552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.533451, 33.107094, 30.468723>,  <32.379425, 33.179291, 30.638025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.533451, 33.107094, 30.468723>,  <32.790161, 32.986767, 30.186552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533451, 33.107094, 30.468723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531912, -0.488022, 0.692029,
		0.552439, 0.819355, 0.153193,
		-0.641779, 0.300819, 0.705427,
		32.340916, 33.197338, 30.680351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239780, 33.204662, 30.713047>,  <32.790161, 32.986767, 30.186552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239780, 33.204662, 30.713047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884148, 33.126663, 30.878698>,  <32.670769, 33.079865, 30.978088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884148, 33.126663, 30.878698>,  <33.239780, 33.204662, 30.713047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884148, 33.126663, 30.878698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453128, -0.503020, 0.735966,
		0.064807, 0.841991, 0.535586,
		-0.889087, -0.194993, 0.414129,
		32.617420, 33.068165, 31.002937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482609, 33.970539, 30.573191>,  <33.239780, 33.204662, 30.713047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482609, 33.970539, 30.573191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870625, 33.992012, 30.478411>,  <34.103436, 34.004894, 30.421543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.870625, 33.992012, 30.478411>,  <33.482609, 33.970539, 30.573191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870625, 33.992012, 30.478411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242952, 0.210854, -0.946845,
		-0.000863, 0.976043, 0.217578,
		0.970038, 0.053678, -0.236949,
		34.161636, 34.008114, 30.407326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564072, 34.615166, 30.150917>,  <33.482609, 33.970539, 30.573191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564072, 34.615166, 30.150917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882618, 34.384495, 30.077978>,  <34.073746, 34.246094, 30.034214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882618, 34.384495, 30.077978>,  <33.564072, 34.615166, 30.150917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882618, 34.384495, 30.077978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095423, 0.177920, -0.979407,
		0.597242, 0.797365, 0.086661,
		0.796364, -0.576674, -0.182349,
		34.121529, 34.211491, 30.023273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038780, 34.964554, 29.888075>,  <33.564072, 34.615166, 30.150917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038780, 34.964554, 29.888075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.112312, 34.593838, 29.757067>,  <34.156433, 34.371410, 29.678463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.112312, 34.593838, 29.757067>,  <34.038780, 34.964554, 29.888075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112312, 34.593838, 29.757067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136894, 0.305811, -0.942199,
		0.973378, 0.218043, -0.070654,
		0.183833, -0.926788, -0.327519,
		34.167461, 34.315800, 29.658812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530437, 35.028061, 29.324591>,  <34.038780, 34.964554, 29.888075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530437, 35.028061, 29.324591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.347759, 34.676155, 29.271770>,  <34.238152, 34.465012, 29.240078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.347759, 34.676155, 29.271770>,  <34.530437, 35.028061, 29.324591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347759, 34.676155, 29.271770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157388, 0.225993, -0.961331,
		0.875592, -0.418250, -0.241674,
		-0.456693, -0.879770, -0.132050,
		34.210751, 34.412224, 29.232155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685894, 34.895363, 28.639986>,  <34.530437, 35.028061, 29.324591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685894, 34.895363, 28.639986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415665, 34.608974, 28.710402>,  <34.253529, 34.437141, 28.752651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415665, 34.608974, 28.710402>,  <34.685894, 34.895363, 28.639986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415665, 34.608974, 28.710402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237211, -0.015001, -0.971342,
		0.698090, -0.697973, -0.159701,
		-0.675575, -0.715967, 0.176039,
		34.212994, 34.394184, 28.763212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757660, 34.465855, 28.120884>,  <34.685894, 34.895363, 28.639986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757660, 34.465855, 28.120884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385437, 34.393166, 28.248030>,  <34.162102, 34.349552, 28.324318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385437, 34.393166, 28.248030>,  <34.757660, 34.465855, 28.120884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385437, 34.393166, 28.248030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341729, 0.119345, -0.932190,
		0.131458, -0.976082, -0.173156,
		-0.930559, -0.181717, 0.317866,
		34.106270, 34.338650, 28.343390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359764, 33.952530, 27.625563>,  <34.757660, 34.465855, 28.120884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359764, 33.952530, 27.625563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.050114, 34.134724, 27.801409>,  <33.864323, 34.244038, 27.906916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.050114, 34.134724, 27.801409>,  <34.359764, 33.952530, 27.625563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050114, 34.134724, 27.801409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415586, 0.158168, -0.895696,
		-0.477506, -0.876082, 0.066850,
		-0.774129, 0.455482, 0.439613,
		33.817875, 34.271370, 27.933292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765625, 33.675552, 27.288258>,  <34.359764, 33.952530, 27.625563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765625, 33.675552, 27.288258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.617771, 34.006020, 27.458349>,  <33.529060, 34.204300, 27.560404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.617771, 34.006020, 27.458349>,  <33.765625, 33.675552, 27.288258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617771, 34.006020, 27.458349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403656, 0.269427, -0.874340,
		-0.836920, -0.494830, 0.233899,
		-0.369631, 0.826167, 0.425230,
		33.506882, 34.253868, 27.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015060, 33.686489, 27.167360>,  <33.765625, 33.675552, 27.288258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015060, 33.686489, 27.167360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095119, 34.067501, 27.259127>,  <33.143154, 34.296108, 27.314186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095119, 34.067501, 27.259127>,  <33.015060, 33.686489, 27.167360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095119, 34.067501, 27.259127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535204, 0.302426, -0.788730,
		-0.820669, 0.035078, 0.570327,
		0.200149, 0.952527, 0.229417,
		33.155163, 34.353260, 27.327951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367214, 34.076477, 27.159426>,  <33.015060, 33.686489, 27.167360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367214, 34.076477, 27.159426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.649559, 34.352795, 27.096739>,  <32.818966, 34.518585, 27.059126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.649559, 34.352795, 27.096739>,  <32.367214, 34.076477, 27.159426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649559, 34.352795, 27.096739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549654, 0.394602, -0.736322,
		-0.446805, 0.605884, 0.658232,
		0.705865, 0.690792, -0.156717,
		32.861320, 34.560032, 27.049725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016399, 34.682426, 27.137218>,  <32.367214, 34.076477, 27.159426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016399, 34.682426, 27.137218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.370667, 34.774948, 26.976173>,  <32.583225, 34.830460, 26.879547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.370667, 34.774948, 26.976173>,  <32.016399, 34.682426, 27.137218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370667, 34.774948, 26.976173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464141, 0.465461, -0.753604,
		0.013089, 0.854309, 0.519600,
		0.885664, 0.231304, -0.402613,
		32.636364, 34.844337, 26.855389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980793, 35.373428, 27.039877>,  <32.016399, 34.682426, 27.137218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980793, 35.373428, 27.039877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256393, 35.255165, 26.775194>,  <32.421753, 35.184208, 26.616385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256393, 35.255165, 26.775194>,  <31.980793, 35.373428, 27.039877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256393, 35.255165, 26.775194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483717, 0.492305, -0.723639,
		0.539715, 0.818670, 0.196183,
		0.689003, -0.295662, -0.661709,
		32.463093, 35.166466, 26.576681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315380, 35.959717, 26.714991>,  <31.980793, 35.373428, 27.039877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315380, 35.959717, 26.714991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.379086, 35.660217, 26.457615>,  <32.417309, 35.480518, 26.303190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.379086, 35.660217, 26.457615>,  <32.315380, 35.959717, 26.714991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379086, 35.660217, 26.457615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437301, 0.530825, -0.725942,
		0.885100, 0.396995, -0.242885,
		0.159266, -0.748745, -0.643440,
		32.426865, 35.435593, 26.264584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584797, 36.231705, 26.105532>,  <32.315380, 35.959717, 26.714991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584797, 36.231705, 26.105532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.444107, 35.879902, 25.977312>,  <32.359692, 35.668819, 25.900381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.444107, 35.879902, 25.977312>,  <32.584797, 36.231705, 26.105532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444107, 35.879902, 25.977312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378301, 0.446769, -0.810731,
		0.856257, -0.163893, -0.489861,
		-0.351728, -0.879509, -0.320548,
		32.338589, 35.616051, 25.881147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333679, 36.415760, 25.893555>,  <32.584797, 36.231705, 26.105532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333679, 36.415760, 25.893555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608116, 36.705601, 25.867531>,  <33.772778, 36.879505, 25.851917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608116, 36.705601, 25.867531>,  <33.333679, 36.415760, 25.893555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608116, 36.705601, 25.867531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522789, -0.428856, 0.736732,
		0.505935, -0.539478, -0.673047,
		0.686091, 0.724600, -0.065060,
		33.813942, 36.922981, 25.848013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922367, 36.130047, 26.233036>,  <33.333679, 36.415760, 25.893555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922367, 36.130047, 26.233036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.032532, 36.513496, 26.204231>,  <34.098633, 36.743565, 26.186949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.032532, 36.513496, 26.204231>,  <33.922367, 36.130047, 26.233036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032532, 36.513496, 26.204231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612295, -0.117177, 0.781898,
		0.741109, -0.259439, -0.619233,
		0.275414, 0.958625, -0.072012,
		34.115154, 36.801083, 26.182627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639824, 36.175186, 26.184097>,  <33.922367, 36.130047, 26.233036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639824, 36.175186, 26.184097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505043, 36.511917, 26.352760>,  <34.424175, 36.713955, 26.453959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505043, 36.511917, 26.352760>,  <34.639824, 36.175186, 26.184097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505043, 36.511917, 26.352760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646034, -0.119068, 0.753965,
		0.684912, 0.526455, -0.503727,
		-0.336951, 0.841824, 0.421659,
		34.403957, 36.764465, 26.479258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213974, 36.397690, 26.455290>,  <34.639824, 36.175186, 26.184097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213974, 36.397690, 26.455290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955696, 36.636562, 26.645641>,  <34.800732, 36.779884, 26.759853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955696, 36.636562, 26.645641>,  <35.213974, 36.397690, 26.455290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955696, 36.636562, 26.645641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527068, -0.102390, 0.843632,
		0.552524, 0.795547, -0.248641,
		-0.645691, 0.597178, 0.475880,
		34.761990, 36.815716, 26.788406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578907, 36.891098, 26.883371>,  <35.213974, 36.397690, 26.455290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578907, 36.891098, 26.883371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220776, 36.943188, 27.053751>,  <35.005898, 36.974442, 27.155979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220776, 36.943188, 27.053751>,  <35.578907, 36.891098, 26.883371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220776, 36.943188, 27.053751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427819, -0.014682, 0.903745,
		0.123941, 0.991376, -0.042566,
		-0.895326, 0.130222, 0.425949,
		34.952179, 36.982254, 27.181536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633541, 37.470352, 27.276142>,  <35.578907, 36.891098, 26.883371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633541, 37.470352, 27.276142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.333412, 37.251926, 27.425184>,  <35.153336, 37.120872, 27.514610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.333412, 37.251926, 27.425184>,  <35.633541, 37.470352, 27.276142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333412, 37.251926, 27.425184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468174, -0.040997, 0.882685,
		-0.466727, 0.836739, 0.286414,
		-0.750319, -0.546065, 0.372605,
		35.108315, 37.088108, 27.536966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466053, 37.775124, 27.954672>,  <35.633541, 37.470352, 27.276142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466053, 37.775124, 27.954672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315479, 37.404968, 27.972340>,  <35.225136, 37.182873, 27.982941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315479, 37.404968, 27.972340>,  <35.466053, 37.775124, 27.954672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315479, 37.404968, 27.972340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378873, -0.110262, 0.918856,
		-0.845430, 0.362623, 0.392112,
		-0.376434, -0.925390, 0.044169,
		35.202549, 37.127350, 27.985590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100368, 37.728794, 28.621992>,  <35.466053, 37.775124, 27.954672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100368, 37.728794, 28.621992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181866, 37.355072, 28.504988>,  <35.230762, 37.130840, 28.434786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.181866, 37.355072, 28.504988>,  <35.100368, 37.728794, 28.621992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181866, 37.355072, 28.504988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330155, -0.215708, 0.918949,
		-0.921677, -0.283801, 0.264517,
		0.203741, -0.934306, -0.292511,
		35.242989, 37.074780, 28.417234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885857, 37.371876, 29.189096>,  <35.100368, 37.728794, 28.621992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885857, 37.371876, 29.189096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139992, 37.130814, 28.995953>,  <35.292473, 36.986176, 28.880066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.139992, 37.130814, 28.995953>,  <34.885857, 37.371876, 29.189096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139992, 37.130814, 28.995953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463863, -0.202077, 0.862552,
		-0.617395, -0.771993, 0.151161,
		0.635338, -0.602653, -0.482860,
		35.330593, 36.950016, 28.851095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907192, 36.688248, 29.532646>,  <34.885857, 37.371876, 29.189096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907192, 36.688248, 29.532646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258091, 36.680214, 29.340799>,  <35.468632, 36.675396, 29.225691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258091, 36.680214, 29.340799>,  <34.907192, 36.688248, 29.532646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258091, 36.680214, 29.340799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441666, -0.357662, 0.822806,
		-0.188065, -0.933635, -0.304888,
		0.877247, -0.020082, -0.479618,
		35.521267, 36.674191, 29.196915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249577, 36.093422, 29.796749>,  <34.907192, 36.688248, 29.532646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249577, 36.093422, 29.796749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558079, 36.292774, 29.638365>,  <35.743179, 36.412388, 29.543335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558079, 36.292774, 29.638365>,  <35.249577, 36.093422, 29.796749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558079, 36.292774, 29.638365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599170, -0.358443, 0.715901,
		0.214863, -0.789388, -0.575065,
		0.771252, 0.498383, -0.395961,
		35.789455, 36.442287, 29.519577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649960, 35.616344, 29.880209>,  <35.249577, 36.093422, 29.796749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649960, 35.616344, 29.880209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861900, 35.954174, 29.849367>,  <35.989067, 36.156872, 29.830862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.861900, 35.954174, 29.849367>,  <35.649960, 35.616344, 29.880209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861900, 35.954174, 29.849367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644882, -0.342184, 0.683401,
		0.550801, -0.411825, -0.725960,
		0.529854, 0.844577, -0.077103,
		36.020855, 36.207546, 29.826237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346157, 35.429611, 29.811928>,  <35.649960, 35.616344, 29.880209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346157, 35.429611, 29.811928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.349354, 35.804436, 29.951555>,  <36.351273, 36.029331, 30.035332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.349354, 35.804436, 29.951555>,  <36.346157, 35.429611, 29.811928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349354, 35.804436, 29.951555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712886, -0.250136, 0.655153,
		0.701235, 0.243611, -0.670018,
		0.007993, 0.937062, 0.349071,
		36.351753, 36.085556, 30.056276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985119, 35.583664, 29.944407>,  <36.346157, 35.429611, 29.811928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985119, 35.583664, 29.944407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798347, 35.853523, 30.173080>,  <36.686283, 36.015438, 30.310284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798347, 35.853523, 30.173080>,  <36.985119, 35.583664, 29.944407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798347, 35.853523, 30.173080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602929, -0.230032, 0.763912,
		0.646881, 0.701377, -0.299359,
		-0.466928, 0.674652, 0.571684,
		36.658268, 36.055920, 30.344585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.221863, 40.035770, 27.014343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883827, 39.828640, 27.067541>,  <33.681007, 39.704361, 27.099461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883827, 39.828640, 27.067541>,  <34.221863, 40.035770, 27.014343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883827, 39.828640, 27.067541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258410, 0.177851, -0.949523,
		0.468031, -0.836797, -0.284110,
		-0.845086, -0.517822, 0.132997,
		33.630302, 39.673294, 27.107441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204586, 39.538044, 26.452999>,  <34.221863, 40.035770, 27.014343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204586, 39.538044, 26.452999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828312, 39.590443, 26.578192>,  <33.602547, 39.621880, 26.653307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828312, 39.590443, 26.578192>,  <34.204586, 39.538044, 26.452999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828312, 39.590443, 26.578192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297964, 0.122252, -0.946716,
		-0.162276, -0.983817, -0.075969,
		-0.940682, 0.130994, 0.312981,
		33.546108, 39.629742, 26.672087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812252, 39.312611, 25.940651>,  <34.204586, 39.538044, 26.452999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812252, 39.312611, 25.940651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518894, 39.498653, 26.138971>,  <33.342880, 39.610279, 26.257963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518894, 39.498653, 26.138971>,  <33.812252, 39.312611, 25.940651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518894, 39.498653, 26.138971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460994, 0.195757, -0.865542,
		-0.499624, -0.863341, 0.070844,
		-0.733390, 0.465104, 0.495800,
		33.298878, 39.638184, 26.287712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173157, 38.953011, 25.784071>,  <33.812252, 39.312611, 25.940651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173157, 38.953011, 25.784071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080700, 39.326176, 25.894526>,  <33.025227, 39.550076, 25.960798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.080700, 39.326176, 25.894526>,  <33.173157, 38.953011, 25.784071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080700, 39.326176, 25.894526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672578, 0.051864, -0.738207,
		-0.703002, -0.356353, 0.615467,
		-0.231142, 0.932911, 0.276136,
		33.011356, 39.606049, 25.977365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390564, 39.027870, 25.635580>,  <33.173157, 38.953011, 25.784071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390564, 39.027870, 25.635580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525734, 39.398720, 25.700384>,  <32.606838, 39.621231, 25.739267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525734, 39.398720, 25.700384>,  <32.390564, 39.027870, 25.635580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525734, 39.398720, 25.700384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707885, 0.363814, -0.605424,
		-0.620244, 0.089905, 0.779240,
		0.337929, 0.927123, 0.162011,
		32.627113, 39.676857, 25.748987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817654, 39.445473, 25.969604>,  <32.390564, 39.027870, 25.635580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817654, 39.445473, 25.969604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.085232, 39.664421, 25.768448>,  <32.245777, 39.795792, 25.647755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.085232, 39.664421, 25.768448>,  <31.817654, 39.445473, 25.969604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085232, 39.664421, 25.768448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712570, 0.279674, -0.643449,
		-0.211560, 0.788776, 0.577127,
		0.668944, 0.547372, -0.502890,
		32.285915, 39.828632, 25.617580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523582, 40.083801, 25.843506>,  <31.817654, 39.445473, 25.969604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523582, 40.083801, 25.843506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817877, 40.057800, 25.573849>,  <31.994453, 40.042198, 25.412054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817877, 40.057800, 25.573849>,  <31.523582, 40.083801, 25.843506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817877, 40.057800, 25.573849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557227, 0.507673, -0.657088,
		0.384956, 0.859094, 0.337293,
		0.735735, -0.065001, -0.674143,
		32.038597, 40.038300, 25.371607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501928, 40.734505, 25.570169>,  <31.523582, 40.083801, 25.843506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501928, 40.734505, 25.570169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721567, 40.522873, 25.311382>,  <31.853350, 40.395893, 25.156111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721567, 40.522873, 25.311382>,  <31.501928, 40.734505, 25.570169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721567, 40.522873, 25.311382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428662, 0.486241, -0.761458,
		0.717454, 0.695445, 0.040197,
		0.549097, -0.529080, -0.646967,
		31.886297, 40.364147, 25.117292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817692, 41.247707, 25.140724>,  <31.501928, 40.734505, 25.570169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817692, 41.247707, 25.140724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830315, 40.892876, 24.956512>,  <31.837889, 40.679977, 24.845985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830315, 40.892876, 24.956512>,  <31.817692, 41.247707, 25.140724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830315, 40.892876, 24.956512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588723, 0.355852, -0.725793,
		0.807719, 0.294027, -0.511017,
		0.031557, -0.887084, -0.460529,
		31.839781, 40.626751, 24.818354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031929, 41.362484, 24.521441>,  <31.817692, 41.247707, 25.140724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031929, 41.362484, 24.521441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.825676, 41.024403, 24.465204>,  <31.701925, 40.821556, 24.431461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.825676, 41.024403, 24.465204>,  <32.031929, 41.362484, 24.521441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825676, 41.024403, 24.465204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372920, 0.369111, -0.851286,
		0.771401, -0.386517, -0.505515,
		-0.515628, -0.845199, -0.140592,
		31.670988, 40.770844, 24.423027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049637, 41.289467, 23.833969>,  <32.031929, 41.362484, 24.521441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049637, 41.289467, 23.833969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760479, 41.024239, 23.911699>,  <31.586985, 40.865101, 23.958338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760479, 41.024239, 23.911699>,  <32.049637, 41.289467, 23.833969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760479, 41.024239, 23.911699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461283, 0.253735, -0.850198,
		0.514437, -0.704239, -0.489287,
		-0.722892, -0.663073, 0.194323,
		31.543612, 40.825317, 23.969995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945734, 40.989960, 23.229414>,  <32.049637, 41.289467, 23.833969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945734, 40.989960, 23.229414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613699, 40.920135, 23.441257>,  <31.414478, 40.878242, 23.568363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613699, 40.920135, 23.441257>,  <31.945734, 40.989960, 23.229414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613699, 40.920135, 23.441257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557599, 0.270643, -0.784752,
		-0.006349, -0.946721, -0.321991,
		-0.830086, -0.174559, 0.529609,
		31.364674, 40.867767, 23.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486294, 40.650043, 22.770227>,  <31.945734, 40.989960, 23.229414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486294, 40.650043, 22.770227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256914, 40.805252, 23.058838>,  <31.119287, 40.898376, 23.232004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256914, 40.805252, 23.058838>,  <31.486294, 40.650043, 22.770227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256914, 40.805252, 23.058838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587529, 0.419001, -0.692277,
		-0.570936, -0.820903, -0.012304,
		-0.573448, 0.388017, 0.721527,
		31.084881, 40.921658, 23.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894520, 40.428101, 22.675438>,  <31.486294, 40.650043, 22.770227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894520, 40.428101, 22.675438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.830729, 40.755741, 22.895851>,  <30.792454, 40.952328, 23.028099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.830729, 40.755741, 22.895851>,  <30.894520, 40.428101, 22.675438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830729, 40.755741, 22.895851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561313, 0.383929, -0.733162,
		-0.812092, -0.426225, 0.398545,
		-0.159479, 0.819104, 0.551031,
		30.782885, 41.001472, 23.061161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086632, 39.809536, 22.293316>,  <30.894520, 40.428101, 22.675438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086632, 39.809536, 22.293316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050873, 39.473343, 22.079548>,  <31.029417, 39.271629, 21.951286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050873, 39.473343, 22.079548>,  <31.086632, 39.809536, 22.293316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050873, 39.473343, 22.079548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735076, -0.417734, 0.534006,
		-0.672065, -0.345100, 0.655159,
		-0.089397, -0.840478, -0.534419,
		31.024054, 39.221199, 21.919222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053812, 39.304928, 22.721655>,  <31.086632, 39.809536, 22.293316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053812, 39.304928, 22.721655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161978, 39.098675, 22.396448>,  <31.226877, 38.974922, 22.201324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161978, 39.098675, 22.396448>,  <31.053812, 39.304928, 22.721655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161978, 39.098675, 22.396448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637801, -0.536633, 0.552480,
		-0.721170, -0.667941, 0.183761,
		0.270412, -0.515636, -0.813017,
		31.243101, 38.943985, 22.152542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938606, 38.670109, 22.932951>,  <31.053812, 39.304928, 22.721655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938606, 38.670109, 22.932951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.216558, 38.675922, 22.645359>,  <31.383329, 38.679409, 22.472805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.216558, 38.675922, 22.645359>,  <30.938606, 38.670109, 22.932951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216558, 38.675922, 22.645359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599479, -0.563929, 0.567988,
		-0.397198, -0.825696, -0.400575,
		0.694880, 0.014532, -0.718978,
		31.425022, 38.680283, 22.429665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163042, 37.975475, 22.901911>,  <30.938606, 38.670109, 22.932951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163042, 37.975475, 22.901911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445015, 38.154018, 22.681427>,  <31.614199, 38.261147, 22.549137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445015, 38.154018, 22.681427>,  <31.163042, 37.975475, 22.901911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445015, 38.154018, 22.681427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708110, -0.487396, 0.510906,
		-0.040609, -0.750472, -0.659654,
		0.704934, 0.446360, -0.551209,
		31.656494, 38.287926, 22.516064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684660, 37.431591, 22.745686>,  <31.163042, 37.975475, 22.901911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684660, 37.431591, 22.745686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870153, 37.782566, 22.696602>,  <31.981449, 37.993149, 22.667150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870153, 37.782566, 22.696602>,  <31.684660, 37.431591, 22.745686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870153, 37.782566, 22.696602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780795, -0.339287, 0.524636,
		0.418700, -0.339103, -0.842437,
		0.463734, 0.877436, -0.122710,
		32.009274, 38.045795, 22.659788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385536, 37.354759, 22.430922>,  <31.684660, 37.431591, 22.745686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385536, 37.354759, 22.430922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370213, 37.684891, 22.656261>,  <32.361019, 37.882969, 22.791466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370213, 37.684891, 22.656261>,  <32.385536, 37.354759, 22.430922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370213, 37.684891, 22.656261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683224, -0.389767, 0.617484,
		0.729203, 0.408549, -0.548954,
		-0.038308, 0.825330, 0.563350,
		32.358719, 37.932491, 22.825266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084198, 37.442566, 22.620249>,  <32.385536, 37.354759, 22.430922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084198, 37.442566, 22.620249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881397, 37.672764, 22.876923>,  <32.759716, 37.810883, 23.030928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881397, 37.672764, 22.876923>,  <33.084198, 37.442566, 22.620249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881397, 37.672764, 22.876923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596094, -0.303630, 0.743290,
		0.622593, 0.759353, -0.189107,
		-0.507001, 0.575492, 0.641684,
		32.729298, 37.845413, 23.069427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584263, 37.938976, 22.842634>,  <33.084198, 37.442566, 22.620249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584263, 37.938976, 22.842634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288662, 37.918816, 23.111361>,  <33.111301, 37.906719, 23.272596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288662, 37.918816, 23.111361>,  <33.584263, 37.938976, 22.842634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288662, 37.918816, 23.111361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668259, -0.181368, 0.721482,
		0.085480, 0.982123, 0.167715,
		-0.739002, -0.050404, 0.671815,
		33.066963, 37.903694, 23.312904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814747, 38.294941, 23.360987>,  <33.584263, 37.938976, 22.842634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814747, 38.294941, 23.360987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502781, 38.120960, 23.541006>,  <33.315601, 38.016571, 23.649017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502781, 38.120960, 23.541006>,  <33.814747, 38.294941, 23.360987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502781, 38.120960, 23.541006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523511, -0.059258, 0.849956,
		-0.343021, 0.898502, 0.273918,
		-0.779919, -0.434952, 0.450049,
		33.268806, 37.990475, 23.676022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793335, 38.566277, 24.099850>,  <33.814747, 38.294941, 23.360987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793335, 38.566277, 24.099850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597157, 38.218002, 24.114618>,  <33.479450, 38.009037, 24.123480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597157, 38.218002, 24.114618>,  <33.793335, 38.566277, 24.099850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597157, 38.218002, 24.114618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407011, -0.191392, 0.893147,
		-0.770584, 0.453072, 0.448247,
		-0.490451, -0.870686, 0.036922,
		33.450020, 37.956795, 24.125694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597294, 38.633610, 24.821354>,  <33.793335, 38.566277, 24.099850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597294, 38.633610, 24.821354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562851, 38.261208, 24.679474>,  <33.542187, 38.037766, 24.594347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562851, 38.261208, 24.679474>,  <33.597294, 38.633610, 24.821354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562851, 38.261208, 24.679474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383786, -0.359541, 0.850552,
		-0.919399, -0.062891, 0.388267,
		-0.086106, -0.931008, -0.354698,
		33.537018, 37.981907, 24.573065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332375, 38.352936, 25.404940>,  <33.597294, 38.633610, 24.821354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332375, 38.352936, 25.404940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456760, 38.061317, 25.161039>,  <33.531391, 37.886349, 25.014698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456760, 38.061317, 25.161039>,  <33.332375, 38.352936, 25.404940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456760, 38.061317, 25.161039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115624, -0.607776, 0.785646,
		-0.943363, -0.314808, -0.104700,
		0.310962, -0.729043, -0.609753,
		33.550049, 37.842606, 24.978113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062294, 37.785786, 25.680506>,  <33.332375, 38.352936, 25.404940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062294, 37.785786, 25.680506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358173, 37.638172, 25.455416>,  <33.535702, 37.549603, 25.320362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358173, 37.638172, 25.455416>,  <33.062294, 37.785786, 25.680506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358173, 37.638172, 25.455416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231530, -0.645606, 0.727727,
		-0.631858, -0.668585, -0.392109,
		0.739696, -0.369035, -0.562728,
		33.580082, 37.527462, 25.286598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966179, 37.000729, 25.659279>,  <33.062294, 37.785786, 25.680506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966179, 37.000729, 25.659279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348919, 37.088749, 25.583363>,  <33.578564, 37.141560, 25.537813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348919, 37.088749, 25.583363>,  <32.966179, 37.000729, 25.659279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348919, 37.088749, 25.583363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281730, -0.542432, 0.791452,
		0.071211, -0.810768, -0.581020,
		0.956848, 0.220051, -0.189790,
		33.635975, 37.154762, 25.526426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779289, 36.310081, 25.430723>,  <32.966179, 37.000729, 25.659279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779289, 36.310081, 25.430723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.512238, 36.015369, 25.473467>,  <32.352005, 35.838543, 25.499113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.512238, 36.015369, 25.473467>,  <32.779289, 36.310081, 25.430723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512238, 36.015369, 25.473467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411559, 0.245642, -0.877656,
		0.620392, -0.629930, -0.467228,
		-0.667633, -0.736782, 0.106859,
		32.311947, 35.794334, 25.505524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756569, 35.949902, 24.756195>,  <32.779289, 36.310081, 25.430723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756569, 35.949902, 24.756195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407990, 35.849182, 24.924561>,  <32.198841, 35.788750, 25.025579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407990, 35.849182, 24.924561>,  <32.756569, 35.949902, 24.756195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407990, 35.849182, 24.924561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466425, 0.160005, -0.869969,
		0.151656, -0.954477, -0.256856,
		-0.871463, -0.251740, 0.420926,
		32.146553, 35.773643, 25.050835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324646, 35.552399, 24.302229>,  <32.756569, 35.949902, 24.756195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324646, 35.552399, 24.302229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034081, 35.677425, 24.547058>,  <31.859743, 35.752441, 24.693956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034081, 35.677425, 24.547058>,  <32.324646, 35.552399, 24.302229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034081, 35.677425, 24.547058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544852, 0.280906, -0.790081,
		-0.418886, -0.907411, -0.033751,
		-0.726409, 0.312565, 0.612073,
		31.816158, 35.771194, 24.730680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693508, 35.237556, 24.069429>,  <32.324646, 35.552399, 24.302229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693508, 35.237556, 24.069429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.602629, 35.563251, 24.283119>,  <31.548101, 35.758671, 24.411333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.602629, 35.563251, 24.283119>,  <31.693508, 35.237556, 24.069429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602629, 35.563251, 24.283119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716222, 0.231986, -0.658186,
		-0.659854, -0.532162, 0.530469,
		-0.227200, 0.814240, 0.534223,
		31.534468, 35.807522, 24.443386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984045, 35.251591, 23.977160>,  <31.693508, 35.237556, 24.069429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984045, 35.251591, 23.977160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078671, 35.621052, 24.097765>,  <31.135447, 35.842728, 24.170128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078671, 35.621052, 24.097765>,  <30.984045, 35.251591, 23.977160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078671, 35.621052, 24.097765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686511, 0.378494, -0.620841,
		-0.687560, -0.060122, 0.723634,
		0.236565, 0.923649, 0.301512,
		31.149641, 35.898148, 24.188219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414980, 35.531364, 24.111336>,  <30.984045, 35.251591, 23.977160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414980, 35.531364, 24.111336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666420, 35.833023, 24.035309>,  <30.817284, 36.014019, 23.989693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666420, 35.833023, 24.035309>,  <30.414980, 35.531364, 24.111336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666420, 35.833023, 24.035309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672357, 0.404121, -0.620180,
		-0.390896, 0.517638, 0.761085,
		0.628599, 0.754146, -0.190068,
		30.855000, 36.059265, 23.978289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990810, 36.076900, 24.115068>,  <30.414980, 35.531364, 24.111336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990810, 36.076900, 24.115068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.322069, 36.197514, 23.926071>,  <30.520824, 36.269882, 23.812672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.322069, 36.197514, 23.926071>,  <29.990810, 36.076900, 24.115068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322069, 36.197514, 23.926071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557866, 0.361569, -0.747030,
		-0.054418, 0.882238, 0.467649,
		0.828145, 0.301537, -0.472495,
		30.570513, 36.287975, 23.784323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600420, 36.416302, 24.675438>,  <29.990810, 36.076900, 24.115068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600420, 36.416302, 24.675438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254221, 36.374573, 24.871408>,  <29.046501, 36.349537, 24.988991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254221, 36.374573, 24.871408>,  <29.600420, 36.416302, 24.675438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254221, 36.374573, 24.871408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466033, -0.526276, 0.711229,
		0.183643, 0.843890, 0.504107,
		-0.865499, -0.104318, 0.489928,
		28.994572, 36.343277, 25.018387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662781, 36.814213, 25.271955>,  <29.600420, 36.416302, 24.675438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662781, 36.814213, 25.271955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387150, 36.528088, 25.318441>,  <29.221771, 36.356415, 25.346333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387150, 36.528088, 25.318441>,  <29.662781, 36.814213, 25.271955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387150, 36.528088, 25.318441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579086, -0.447090, 0.681740,
		-0.435696, 0.537070, 0.722305,
		-0.689077, -0.715309, 0.116214,
		29.180426, 36.313496, 25.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315937, 36.845211, 26.004580>,  <29.662781, 36.814213, 25.271955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315937, 36.845211, 26.004580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268574, 36.468006, 25.880194>,  <29.240156, 36.241684, 25.805561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.268574, 36.468006, 25.880194>,  <29.315937, 36.845211, 26.004580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268574, 36.468006, 25.880194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171121, -0.327863, 0.929098,
		-0.978109, 0.056801, 0.200191,
		-0.118409, -0.943016, -0.310966,
		29.233051, 36.185101, 25.786903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910921, 36.603443, 26.501240>,  <29.315937, 36.845211, 26.004580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910921, 36.603443, 26.501240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.053722, 36.279049, 26.315834>,  <29.139402, 36.084412, 26.204590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.053722, 36.279049, 26.315834>,  <28.910921, 36.603443, 26.501240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053722, 36.279049, 26.315834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284160, -0.378406, 0.880944,
		-0.889833, -0.446211, 0.095359,
		0.357002, -0.810990, -0.463514,
		29.160824, 36.035751, 26.176781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678726, 35.991348, 26.839085>,  <28.910921, 36.603443, 26.501240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678726, 35.991348, 26.839085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.998638, 35.852783, 26.642982>,  <29.190586, 35.769646, 26.525322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.998638, 35.852783, 26.642982>,  <28.678726, 35.991348, 26.839085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998638, 35.852783, 26.642982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353127, -0.388941, 0.850897,
		-0.485443, -0.853653, -0.188738,
		0.799779, -0.346414, -0.490256,
		29.238573, 35.748859, 26.495905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822514, 35.379074, 27.189034>,  <28.678726, 35.991348, 26.839085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822514, 35.379074, 27.189034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.154760, 35.403191, 26.967604>,  <29.354109, 35.417660, 26.834745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.154760, 35.403191, 26.967604>,  <28.822514, 35.379074, 27.189034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154760, 35.403191, 26.967604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543313, -0.305595, 0.781935,
		-0.122021, -0.950250, -0.286592,
		0.830615, 0.060297, -0.553573,
		29.403944, 35.421280, 26.801531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146214, 34.692989, 27.080431>,  <28.822514, 35.379074, 27.189034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146214, 34.692989, 27.080431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.416552, 34.987804, 27.080770>,  <29.578754, 35.164696, 27.080975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.416552, 34.987804, 27.080770>,  <29.146214, 34.692989, 27.080431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416552, 34.987804, 27.080770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479523, -0.440582, 0.758911,
		0.559722, -0.512501, -0.651194,
		0.675847, 0.737041, 0.000847,
		29.619307, 35.208916, 27.081024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.976768, 42.765217, 25.300777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164303, 42.534836, 25.032906>,  <29.276823, 42.396606, 24.872183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164303, 42.534836, 25.032906>,  <28.976768, 42.765217, 25.300777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164303, 42.534836, 25.032906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291456, -0.614830, 0.732828,
		-0.833814, -0.538758, -0.120389,
		0.468836, -0.575955, -0.669678,
		29.304955, 42.362049, 24.832003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840895, 42.096451, 25.352850>,  <28.976768, 42.765217, 25.300777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840895, 42.096451, 25.352850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204672, 42.056156, 25.191475>,  <29.422939, 42.031979, 25.094650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204672, 42.056156, 25.191475>,  <28.840895, 42.096451, 25.352850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204672, 42.056156, 25.191475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275273, -0.581329, 0.765690,
		-0.311664, -0.807408, -0.500956,
		0.909445, -0.100739, -0.403437,
		29.477505, 42.025936, 25.070444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998547, 41.412113, 25.554955>,  <28.840895, 42.096451, 25.352850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998547, 41.412113, 25.554955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341269, 41.603634, 25.478390>,  <29.546902, 41.718544, 25.432451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341269, 41.603634, 25.478390>,  <28.998547, 41.412113, 25.554955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341269, 41.603634, 25.478390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418535, -0.428933, 0.800528,
		0.301189, -0.766008, -0.567906,
		0.856804, 0.478799, -0.191411,
		29.598310, 41.747272, 25.420967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521704, 40.879097, 25.556232>,  <28.998547, 41.412113, 25.554955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521704, 40.879097, 25.556232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679827, 41.234055, 25.651112>,  <29.774700, 41.447029, 25.708038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679827, 41.234055, 25.651112>,  <29.521704, 40.879097, 25.556232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679827, 41.234055, 25.651112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476769, -0.418945, 0.772772,
		0.785126, -0.192395, -0.588695,
		0.395308, 0.887395, 0.237196,
		29.798420, 41.500275, 25.722271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258926, 40.767006, 25.670956>,  <29.521704, 40.879097, 25.556232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258926, 40.767006, 25.670956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197664, 41.120850, 25.847145>,  <30.160908, 41.333157, 25.952858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197664, 41.120850, 25.847145>,  <30.258926, 40.767006, 25.670956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197664, 41.120850, 25.847145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545412, -0.296025, 0.784153,
		0.824057, 0.360336, -0.437136,
		-0.153155, 0.884606, 0.440473,
		30.151718, 41.386230, 25.979286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939360, 40.956017, 25.971817>,  <30.258926, 40.767006, 25.670956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939360, 40.956017, 25.971817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656075, 41.172482, 26.153183>,  <30.486103, 41.302361, 26.262003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.656075, 41.172482, 26.153183>,  <30.939360, 40.956017, 25.971817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656075, 41.172482, 26.153183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481509, -0.099441, 0.870781,
		0.516319, 0.835020, -0.190148,
		-0.708211, 0.541159, 0.453413,
		30.443611, 41.334827, 26.289207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246803, 41.436886, 26.346434>,  <30.939360, 40.956017, 25.971817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246803, 41.436886, 26.346434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.890818, 41.416592, 26.527712>,  <30.677225, 41.404415, 26.636478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.890818, 41.416592, 26.527712>,  <31.246803, 41.436886, 26.346434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890818, 41.416592, 26.527712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455443, -0.048656, 0.888934,
		-0.023053, 0.997526, 0.066411,
		-0.889966, -0.050739, 0.453195,
		30.623827, 41.401371, 26.663670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340712, 41.928951, 27.008902>,  <31.246803, 41.436886, 26.346434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340712, 41.928951, 27.008902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001625, 41.737251, 27.099848>,  <30.798172, 41.622231, 27.154415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001625, 41.737251, 27.099848>,  <31.340712, 41.928951, 27.008902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001625, 41.737251, 27.099848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164885, 0.169326, 0.971670,
		-0.504170, 0.861191, -0.064520,
		-0.847718, -0.479248, 0.227366,
		30.747311, 41.593475, 27.168058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973291, 42.342007, 27.446795>,  <31.340712, 41.928951, 27.008902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973291, 42.342007, 27.446795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849804, 41.968880, 27.521145>,  <30.775711, 41.745003, 27.565756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849804, 41.968880, 27.521145>,  <30.973291, 42.342007, 27.446795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849804, 41.968880, 27.521145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342873, 0.073144, 0.936530,
		-0.887204, 0.352855, 0.297256,
		-0.308717, -0.932815, 0.185878,
		30.757189, 41.689034, 27.576908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653858, 42.365021, 28.062405>,  <30.973291, 42.342007, 27.446795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653858, 42.365021, 28.062405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.712469, 41.971622, 28.019939>,  <30.747635, 41.735584, 27.994461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.712469, 41.971622, 28.019939>,  <30.653858, 42.365021, 28.062405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712469, 41.971622, 28.019939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238074, -0.069106, 0.968785,
		-0.960131, -0.167227, 0.224018,
		0.146526, -0.983494, -0.106163,
		30.756428, 41.676575, 27.988091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227503, 42.023315, 28.560556>,  <30.653858, 42.365021, 28.062405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227503, 42.023315, 28.560556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515270, 41.759720, 28.472757>,  <30.687931, 41.601562, 28.420078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515270, 41.759720, 28.472757>,  <30.227503, 42.023315, 28.560556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515270, 41.759720, 28.472757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082964, -0.232223, 0.969118,
		-0.689606, -0.715409, -0.112393,
		0.719416, -0.658985, -0.219496,
		30.731094, 41.562023, 28.406908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029791, 41.372162, 28.928383>,  <30.227503, 42.023315, 28.560556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029791, 41.372162, 28.928383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421738, 41.315662, 28.871948>,  <30.656906, 41.281761, 28.838087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421738, 41.315662, 28.871948>,  <30.029791, 41.372162, 28.928383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421738, 41.315662, 28.871948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056556, -0.481359, 0.874697,
		-0.191462, -0.865068, -0.463680,
		0.979869, -0.141248, -0.141087,
		30.715698, 41.273289, 28.829622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717163, 40.733917, 28.615801>,  <30.029791, 41.372162, 28.928383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717163, 40.733917, 28.615801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421768, 40.525146, 28.786556>,  <29.244532, 40.399883, 28.889009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421768, 40.525146, 28.786556>,  <29.717163, 40.733917, 28.615801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421768, 40.525146, 28.786556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475932, -0.044986, -0.878331,
		0.477628, -0.851804, -0.215179,
		-0.738486, -0.521926, 0.426887,
		29.200222, 40.368568, 28.914623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621326, 40.166069, 28.164282>,  <29.717163, 40.733917, 28.615801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621326, 40.166069, 28.164282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293127, 40.244484, 28.379076>,  <29.096207, 40.291534, 28.507952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293127, 40.244484, 28.379076>,  <29.621326, 40.166069, 28.164282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293127, 40.244484, 28.379076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528390, 0.098376, -0.843283,
		-0.218142, -0.975649, 0.022867,
		-0.820499, 0.196038, 0.536983,
		29.046978, 40.303295, 28.540171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098942, 39.614773, 28.069342>,  <29.621326, 40.166069, 28.164282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098942, 39.614773, 28.069342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871624, 39.917168, 28.199284>,  <28.735233, 40.098602, 28.277248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871624, 39.917168, 28.199284>,  <29.098942, 39.614773, 28.069342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871624, 39.917168, 28.199284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578379, -0.086199, -0.811201,
		-0.585253, -0.648889, 0.486232,
		-0.568293, 0.755984, 0.324856,
		28.701136, 40.143963, 28.296740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437414, 39.424500, 27.978830>,  <29.098942, 39.614773, 28.069342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437414, 39.424500, 27.978830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397261, 39.819866, 28.024355>,  <28.373169, 40.057087, 28.051670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.397261, 39.819866, 28.024355>,  <28.437414, 39.424500, 27.978830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397261, 39.819866, 28.024355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603272, 0.030498, -0.796952,
		-0.791193, -0.148662, 0.593223,
		-0.100384, 0.988418, 0.113813,
		28.367146, 40.116390, 28.058498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723501, 39.582283, 28.160841>,  <28.437414, 39.424500, 27.978830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723501, 39.582283, 28.160841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879948, 39.925209, 28.026949>,  <27.973816, 40.130962, 27.946613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879948, 39.925209, 28.026949>,  <27.723501, 39.582283, 28.160841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879948, 39.925209, 28.026949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743455, 0.079922, -0.663994,
		-0.542497, 0.508556, 0.668631,
		0.391116, 0.857312, -0.334730,
		27.997282, 40.182404, 27.926529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187195, 39.969250, 28.066017>,  <27.723501, 39.582283, 28.160841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187195, 39.969250, 28.066017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451178, 40.147625, 27.824158>,  <27.609568, 40.254650, 27.679043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451178, 40.147625, 27.824158>,  <27.187195, 39.969250, 28.066017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451178, 40.147625, 27.824158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716984, 0.133362, -0.684214,
		-0.224477, 0.885075, 0.407741,
		0.659958, 0.445933, -0.604647,
		27.649164, 40.281406, 27.642763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799236, 40.533691, 27.763950>,  <27.187195, 39.969250, 28.066017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799236, 40.533691, 27.763950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115906, 40.472305, 27.527407>,  <27.305906, 40.435474, 27.385481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115906, 40.472305, 27.527407>,  <26.799236, 40.533691, 27.763950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115906, 40.472305, 27.527407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554841, 0.224594, -0.801068,
		0.255751, 0.962292, 0.092657,
		0.791671, -0.153464, -0.591359,
		27.353407, 40.426266, 27.349998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740665, 41.046085, 27.172649>,  <26.799236, 40.533691, 27.763950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740665, 41.046085, 27.172649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011072, 40.789043, 27.028393>,  <27.173317, 40.634819, 26.941839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011072, 40.789043, 27.028393>,  <26.740665, 41.046085, 27.172649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011072, 40.789043, 27.028393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398688, 0.092637, -0.912396,
		0.619716, 0.760580, -0.193573,
		0.676018, -0.642602, -0.360642,
		27.213877, 40.596264, 26.920200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910126, 41.406143, 26.596947>,  <26.740665, 41.046085, 27.172649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910126, 41.406143, 26.596947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015081, 41.020275, 26.587399>,  <27.078054, 40.788754, 26.581671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015081, 41.020275, 26.587399>,  <26.910126, 41.406143, 26.596947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015081, 41.020275, 26.587399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465147, -0.104770, -0.879012,
		0.845453, 0.241744, -0.476202,
		0.262388, -0.964667, -0.023869,
		27.093798, 40.730873, 26.580238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101963, 41.393612, 25.875113>,  <26.910126, 41.406143, 26.596947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101963, 41.393612, 25.875113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035856, 41.020065, 26.001974>,  <26.996191, 40.795937, 26.078091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035856, 41.020065, 26.001974>,  <27.101963, 41.393612, 25.875113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035856, 41.020065, 26.001974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484183, -0.203330, -0.851013,
		0.859216, -0.294207, -0.418556,
		-0.165269, -0.933862, 0.317154,
		26.986275, 40.739906, 26.097120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313589, 40.962353, 25.316673>,  <27.101963, 41.393612, 25.875113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313589, 40.962353, 25.316673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062248, 40.757462, 25.550869>,  <26.911444, 40.634525, 25.691387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062248, 40.757462, 25.550869>,  <27.313589, 40.962353, 25.316673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062248, 40.757462, 25.550869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627798, -0.110559, -0.770484,
		0.459394, -0.851704, -0.252105,
		-0.628352, -0.512227, 0.585489,
		26.873743, 40.603794, 25.726515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114937, 40.394707, 24.968433>,  <27.313589, 40.962353, 25.316673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114937, 40.394707, 24.968433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819521, 40.415539, 25.237312>,  <26.642271, 40.428040, 25.398640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819521, 40.415539, 25.237312>,  <27.114937, 40.394707, 24.968433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819521, 40.415539, 25.237312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665497, -0.216086, -0.714438,
		0.108044, -0.974984, 0.194247,
		-0.738540, 0.052081, 0.672195,
		26.597960, 40.431164, 25.438971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641251, 39.749950, 24.917353>,  <27.114937, 40.394707, 24.968433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641251, 39.749950, 24.917353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423058, 40.048153, 25.070547>,  <26.292143, 40.227074, 25.162464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423058, 40.048153, 25.070547>,  <26.641251, 39.749950, 24.917353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423058, 40.048153, 25.070547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723780, -0.188594, -0.663759,
		-0.422605, -0.639264, 0.642454,
		-0.545480, 0.745503, 0.382985,
		26.259413, 40.271805, 25.185442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129185, 39.091297, 24.913317>,  <26.641251, 39.749950, 24.917353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129185, 39.091297, 24.913317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948658, 38.864693, 24.637526>,  <26.840342, 38.728729, 24.472052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948658, 38.864693, 24.637526>,  <27.129185, 39.091297, 24.913317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948658, 38.864693, 24.637526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722282, -0.685643, 0.090567,
		-0.524042, -0.457122, 0.718623,
		-0.451319, -0.566509, -0.689477,
		26.813263, 38.694740, 24.430683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870373, 38.302525, 25.214497>,  <27.129185, 39.091297, 24.913317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870373, 38.302525, 25.214497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916796, 38.283142, 24.817673>,  <26.944651, 38.271511, 24.579578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916796, 38.283142, 24.817673>,  <26.870373, 38.302525, 25.214497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916796, 38.283142, 24.817673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481623, -0.870783, 0.098876,
		-0.868659, -0.489275, -0.077728,
		0.116061, -0.048454, -0.992060,
		26.951614, 38.268604, 24.520056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788309, 37.695000, 25.103626>,  <26.870373, 38.302525, 25.214497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788309, 37.695000, 25.103626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944347, 37.807690, 24.752979>,  <27.037970, 37.875305, 24.542591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944347, 37.807690, 24.752979>,  <26.788309, 37.695000, 25.103626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944347, 37.807690, 24.752979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529168, -0.847712, -0.036955,
		-0.753530, -0.449461, -0.479768,
		0.390095, 0.281724, -0.876617,
		27.061377, 37.892208, 24.489994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824450, 37.196461, 24.700485>,  <26.788309, 37.695000, 25.103626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824450, 37.196461, 24.700485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.096003, 37.401829, 24.490526>,  <27.258934, 37.525051, 24.364550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.096003, 37.401829, 24.490526>,  <26.824450, 37.196461, 24.700485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096003, 37.401829, 24.490526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583927, -0.810918, -0.037962,
		-0.445140, -0.280731, -0.850318,
		0.678881, 0.513422, -0.524899,
		27.299667, 37.555855, 24.333057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117527, 36.678371, 24.183655>,  <26.824450, 37.196461, 24.700485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117527, 36.678371, 24.183655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375505, 36.980358, 24.231098>,  <27.530293, 37.161552, 24.259565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375505, 36.980358, 24.231098>,  <27.117527, 36.678371, 24.183655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375505, 36.980358, 24.231098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763430, -0.629367, -0.145161,
		-0.034942, 0.184171, -0.982273,
		0.644945, 0.754969, 0.118611,
		27.568989, 37.206848, 24.266682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703308, 36.446217, 23.791265>,  <27.117527, 36.678371, 24.183655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703308, 36.446217, 23.791265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.850294, 36.711483, 24.052090>,  <27.938486, 36.870644, 24.208584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.850294, 36.711483, 24.052090>,  <27.703308, 36.446217, 23.791265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850294, 36.711483, 24.052090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763591, -0.615379, 0.195545,
		0.530942, 0.426051, -0.732517,
		0.367463, 0.663166, 0.652059,
		27.960533, 36.910435, 24.247707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411047, 36.446899, 23.736300>,  <27.703308, 36.446217, 23.791265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411047, 36.446899, 23.736300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370949, 36.607883, 24.100273>,  <28.346889, 36.704475, 24.318657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370949, 36.607883, 24.100273>,  <28.411047, 36.446899, 23.736300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370949, 36.607883, 24.100273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627280, -0.684325, 0.371779,
		0.772315, 0.608051, -0.183854,
		-0.100245, 0.402459, 0.909933,
		28.340876, 36.728622, 24.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067226, 36.508369, 24.018158>,  <28.411047, 36.446899, 23.736300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067226, 36.508369, 24.018158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854292, 36.537491, 24.355516>,  <28.726532, 36.554966, 24.557932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854292, 36.537491, 24.355516>,  <29.067226, 36.508369, 24.018158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854292, 36.537491, 24.355516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728534, -0.467980, 0.500234,
		0.431113, 0.880735, 0.196080,
		-0.532335, 0.072807, 0.843397,
		28.694592, 36.559334, 24.608536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737131, 36.746433, 23.929882>,  <29.067226, 36.508369, 24.018158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737131, 36.746433, 23.929882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059225, 36.676743, 23.703171>,  <30.252481, 36.634926, 23.567144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059225, 36.676743, 23.703171>,  <29.737131, 36.746433, 23.929882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059225, 36.676743, 23.703171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500678, 0.312308, -0.807332,
		0.317670, 0.933867, 0.164249,
		0.805237, -0.174229, -0.566778,
		30.300797, 36.624474, 23.533138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987726, 37.396317, 23.548960>,  <29.737131, 36.746433, 23.929882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987726, 37.396317, 23.548960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126169, 37.079086, 23.348463>,  <30.209236, 36.888748, 23.228165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126169, 37.079086, 23.348463>,  <29.987726, 37.396317, 23.548960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126169, 37.079086, 23.348463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380307, 0.369802, -0.847711,
		0.857657, 0.484025, -0.173620,
		0.346108, -0.793074, -0.501241,
		30.230001, 36.841164, 23.198092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187399, 37.664196, 22.876696>,  <29.987726, 37.396317, 23.548960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187399, 37.664196, 22.876696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178242, 37.269524, 22.812279>,  <30.172747, 37.032719, 22.773628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178242, 37.269524, 22.812279>,  <30.187399, 37.664196, 22.876696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178242, 37.269524, 22.812279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405675, 0.156395, -0.900538,
		0.913731, 0.044713, -0.403853,
		-0.022895, -0.986682, -0.161042,
		30.171373, 36.973518, 22.763966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352528, 37.542507, 22.166777>,  <30.187399, 37.664196, 22.876696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352528, 37.542507, 22.166777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.188940, 37.197033, 22.284620>,  <30.090788, 36.989750, 22.355326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.188940, 37.197033, 22.284620>,  <30.352528, 37.542507, 22.166777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188940, 37.197033, 22.284620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412864, -0.112787, -0.903783,
		0.813810, -0.491253, -0.310457,
		-0.408970, -0.863684, 0.294607,
		30.066250, 36.937927, 22.373003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495832, 37.044209, 21.710741>,  <30.352528, 37.542507, 22.166777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495832, 37.044209, 21.710741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155092, 36.911057, 21.872503>,  <29.950649, 36.831165, 21.969561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155092, 36.911057, 21.872503>,  <30.495832, 37.044209, 21.710741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155092, 36.911057, 21.872503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422207, -0.020557, -0.906267,
		0.309992, -0.942745, -0.123033,
		-0.851849, -0.332881, 0.404406,
		29.899538, 36.811192, 21.993826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239277, 36.546906, 21.233757>,  <30.495832, 37.044209, 21.710741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239277, 36.546906, 21.233757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925356, 36.666794, 21.450739>,  <29.737003, 36.738728, 21.580929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925356, 36.666794, 21.450739>,  <30.239277, 36.546906, 21.233757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925356, 36.666794, 21.450739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600693, -0.152496, -0.784801,
		-0.152496, -0.941761, 0.299717,
		0.784801, -0.299717, -0.542455,
		29.689915, 36.756710, 21.613476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690624, 35.968475, 21.209948>,  <30.239277, 36.546906, 21.233757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690624, 35.968475, 21.209948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503063, 36.313774, 21.284710>,  <29.390526, 36.520954, 21.329567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503063, 36.313774, 21.284710>,  <29.690624, 35.968475, 21.209948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503063, 36.313774, 21.284710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722249, -0.252937, -0.643723,
		-0.508418, -0.436836, 0.742082,
		-0.468901, 0.863248, 0.186906,
		29.362392, 36.572750, 21.340782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963785, 35.840332, 21.190294>,  <29.690624, 35.968475, 21.209948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963785, 35.840332, 21.190294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980650, 36.237000, 21.141592>,  <28.990768, 36.474998, 21.112371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980650, 36.237000, 21.141592>,  <28.963785, 35.840332, 21.190294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980650, 36.237000, 21.141592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823224, -0.034573, -0.566663,
		-0.566149, 0.124125, 0.814904,
		0.042163, 0.991664, -0.121756,
		28.993299, 36.534500, 21.105064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341673, 36.255814, 21.354610>,  <28.963785, 35.840332, 21.190294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341673, 36.255814, 21.354610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557091, 36.443138, 21.074425>,  <28.686342, 36.555534, 20.906313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557091, 36.443138, 21.074425>,  <28.341673, 36.255814, 21.354610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557091, 36.443138, 21.074425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807421, 0.049134, -0.587926,
		-0.240917, 0.882195, 0.404588,
		0.538544, 0.468315, -0.700465,
		28.718655, 36.583633, 20.864285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.248852, 32.774014, 34.808567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525501, 33.059929, 34.849998>,  <35.691490, 33.231480, 34.874855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525501, 33.059929, 34.849998>,  <35.248852, 32.774014, 34.808567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525501, 33.059929, 34.849998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120761, 0.255831, -0.959149,
		-0.712088, 0.650866, 0.263258,
		0.691627, 0.714790, 0.103575,
		35.732990, 33.274364, 34.881073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920033, 33.385914, 34.657440>,  <35.248852, 32.774014, 34.808567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920033, 33.385914, 34.657440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317333, 33.398811, 34.612888>,  <35.555714, 33.406551, 34.586159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317333, 33.398811, 34.612888>,  <34.920033, 33.385914, 34.657440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317333, 33.398811, 34.612888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115573, 0.353048, -0.928440,
		0.009381, 0.935049, 0.354394,
		0.993255, 0.032248, -0.111378,
		35.615311, 33.408485, 34.579475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021141, 34.033363, 34.265491>,  <34.920033, 33.385914, 34.657440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021141, 34.033363, 34.265491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369110, 33.840881, 34.222282>,  <35.577892, 33.725391, 34.196358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369110, 33.840881, 34.222282>,  <35.021141, 34.033363, 34.265491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369110, 33.840881, 34.222282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061756, 0.323592, -0.944179,
		0.489302, 0.814694, 0.311218,
		0.869925, -0.481208, -0.108022,
		35.630089, 33.696518, 34.189877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371819, 34.445717, 33.821545>,  <35.021141, 34.033363, 34.265491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371819, 34.445717, 33.821545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540901, 34.084427, 33.791874>,  <35.642349, 33.867653, 33.774071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540901, 34.084427, 33.791874>,  <35.371819, 34.445717, 33.821545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540901, 34.084427, 33.791874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073005, 0.047646, -0.996193,
		0.903322, 0.426511, -0.045800,
		0.422705, -0.903227, -0.074177,
		35.667713, 33.813457, 33.769619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826275, 34.605919, 33.406467>,  <35.371819, 34.445717, 33.821545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826275, 34.605919, 33.406467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794140, 34.209385, 33.364906>,  <35.774860, 33.971462, 33.339970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794140, 34.209385, 33.364906>,  <35.826275, 34.605919, 33.406467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794140, 34.209385, 33.364906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213770, 0.118953, -0.969614,
		0.973575, -0.055685, -0.221475,
		-0.080338, -0.991337, -0.103906,
		35.770039, 33.911983, 33.333736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253368, 34.378849, 32.797806>,  <35.826275, 34.605919, 33.406467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253368, 34.378849, 32.797806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972652, 34.107937, 32.886150>,  <35.804222, 33.945389, 32.939159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972652, 34.107937, 32.886150>,  <36.253368, 34.378849, 32.797806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972652, 34.107937, 32.886150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155366, -0.157059, -0.975292,
		0.695231, -0.718769, 0.004997,
		-0.701794, -0.677276, 0.220865,
		35.762115, 33.904755, 32.952412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334892, 33.908436, 32.242512>,  <36.253368, 34.378849, 32.797806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334892, 33.908436, 32.242512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980721, 33.803642, 32.396069>,  <35.768215, 33.740765, 32.488205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980721, 33.803642, 32.396069>,  <36.334892, 33.908436, 32.242512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980721, 33.803642, 32.396069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383971, -0.053063, -0.921819,
		0.261872, -0.963612, -0.053611,
		-0.885432, -0.261984, 0.383895,
		35.715092, 33.725048, 32.511238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146416, 33.337639, 31.831951>,  <36.334892, 33.908436, 32.242512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146416, 33.337639, 31.831951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814770, 33.515396, 31.967646>,  <35.615784, 33.622051, 32.049065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814770, 33.515396, 31.967646>,  <36.146416, 33.337639, 31.831951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814770, 33.515396, 31.967646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441009, -0.146914, -0.885396,
		-0.343626, -0.883703, 0.317791,
		-0.829115, 0.444394, 0.339237,
		35.566036, 33.648712, 32.069416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646667, 32.995628, 31.536924>,  <36.146416, 33.337639, 31.831951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646667, 32.995628, 31.536924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472408, 33.339199, 31.644588>,  <35.367851, 33.545341, 31.709187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472408, 33.339199, 31.644588>,  <35.646667, 32.995628, 31.536924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472408, 33.339199, 31.644588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449677, 0.051358, -0.891713,
		-0.779743, -0.509511, 0.363867,
		-0.435650, 0.858930, 0.269162,
		35.341713, 33.596878, 31.725338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261864, 32.979870, 31.041315>,  <35.646667, 32.995628, 31.536924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261864, 32.979870, 31.041315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182861, 33.343029, 31.189215>,  <35.135460, 33.560925, 31.277954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182861, 33.343029, 31.189215>,  <35.261864, 32.979870, 31.041315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182861, 33.343029, 31.189215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648332, 0.161935, -0.743937,
		-0.735293, -0.386654, 0.556635,
		-0.197508, 0.907896, 0.369750,
		35.123608, 33.615398, 31.300140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536228, 33.028744, 31.047758>,  <35.261864, 32.979870, 31.041315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536228, 33.028744, 31.047758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717953, 33.383892, 31.018684>,  <34.826988, 33.596981, 31.001240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717953, 33.383892, 31.018684>,  <34.536228, 33.028744, 31.047758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717953, 33.383892, 31.018684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630196, 0.262645, -0.730664,
		-0.629647, 0.377753, 0.678857,
		0.454309, 0.887874, -0.072685,
		34.854244, 33.650253, 30.996880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937897, 33.494678, 31.121559>,  <34.536228, 33.028744, 31.047758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937897, 33.494678, 31.121559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229580, 33.705742, 30.947279>,  <34.404591, 33.832378, 30.842710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229580, 33.705742, 30.947279>,  <33.937897, 33.494678, 31.121559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229580, 33.705742, 30.947279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566548, 0.108455, -0.816860,
		-0.383766, 0.842507, 0.378028,
		0.729210, 0.527654, -0.435699,
		34.448341, 33.864037, 30.816568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212788, 33.431324, 31.519545>,  <33.937897, 33.494678, 31.121559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212788, 33.431324, 31.519545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897690, 33.185131, 31.529688>,  <32.708630, 33.037415, 31.535774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897690, 33.185131, 31.529688>,  <33.212788, 33.431324, 31.519545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897690, 33.185131, 31.529688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361552, -0.428633, 0.827982,
		-0.498735, 0.661408, 0.560181,
		-0.787746, -0.615478, 0.025359,
		32.661366, 33.000488, 31.537296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936821, 33.554985, 32.201832>,  <33.212788, 33.431324, 31.519545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936821, 33.554985, 32.201832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806835, 33.202827, 32.063671>,  <32.728844, 32.991531, 31.980774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806835, 33.202827, 32.063671>,  <32.936821, 33.554985, 32.201832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806835, 33.202827, 32.063671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264311, -0.435218, 0.860654,
		-0.908040, 0.188388, 0.374129,
		-0.324965, -0.880395, -0.345402,
		32.709347, 32.938709, 31.960051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394432, 33.336998, 32.637596>,  <32.936821, 33.554985, 32.201832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394432, 33.336998, 32.637596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473553, 32.983776, 32.467381>,  <32.521027, 32.771843, 32.365250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473553, 32.983776, 32.467381>,  <32.394432, 33.336998, 32.637596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473553, 32.983776, 32.467381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200733, -0.388430, 0.899349,
		-0.959469, -0.263315, 0.100425,
		0.197804, -0.883056, -0.425542,
		32.532894, 32.718861, 32.339718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016521, 32.867283, 33.019299>,  <32.394432, 33.336998, 32.637596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016521, 32.867283, 33.019299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281948, 32.649094, 32.814499>,  <32.441204, 32.518181, 32.691620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281948, 32.649094, 32.814499>,  <32.016521, 32.867283, 33.019299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281948, 32.649094, 32.814499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165964, -0.559999, 0.811700,
		-0.729477, -0.623590, -0.281067,
		0.663565, -0.545470, -0.512000,
		32.481018, 32.485455, 32.660900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995724, 32.213123, 33.324253>,  <32.016521, 32.867283, 33.019299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995724, 32.213123, 33.324253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333553, 32.166458, 33.115223>,  <32.536251, 32.138458, 32.989803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333553, 32.166458, 33.115223>,  <31.995724, 32.213123, 33.324253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333553, 32.166458, 33.115223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403371, -0.503197, 0.764254,
		-0.352117, -0.856261, -0.377929,
		0.844574, -0.116661, -0.522575,
		32.586926, 32.131458, 32.958450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130344, 31.528219, 33.408211>,  <31.995724, 32.213123, 33.324253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130344, 31.528219, 33.408211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478779, 31.708023, 33.329067>,  <32.687840, 31.815905, 33.281582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478779, 31.708023, 33.329067>,  <32.130344, 31.528219, 33.408211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478779, 31.708023, 33.329067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363328, -0.318747, 0.875439,
		0.330452, -0.834471, -0.440976,
		0.871088, 0.449510, -0.197856,
		32.740105, 31.842876, 33.269711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574501, 31.036797, 33.256302>,  <32.130344, 31.528219, 33.408211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574501, 31.036797, 33.256302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788406, 31.343506, 33.398338>,  <32.916752, 31.527531, 33.483559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788406, 31.343506, 33.398338>,  <32.574501, 31.036797, 33.256302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788406, 31.343506, 33.398338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203375, -0.524662, 0.826661,
		0.820162, -0.369854, -0.436513,
		0.534765, 0.766771, 0.355088,
		32.948837, 31.573538, 33.504864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222897, 30.769720, 33.605923>,  <32.574501, 31.036797, 33.256302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222897, 30.769720, 33.605923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200066, 31.142086, 33.750225>,  <33.186367, 31.365505, 33.836807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200066, 31.142086, 33.750225>,  <33.222897, 30.769720, 33.605923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200066, 31.142086, 33.750225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221030, -0.340594, 0.913861,
		0.973595, 0.131897, -0.186320,
		-0.057076, 0.930913, 0.360754,
		33.182941, 31.421360, 33.858452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882389, 30.903122, 34.025196>,  <33.222897, 30.769720, 33.605923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882389, 30.903122, 34.025196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598316, 31.154964, 34.151203>,  <33.427872, 31.306070, 34.226807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598316, 31.154964, 34.151203>,  <33.882389, 30.903122, 34.025196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598316, 31.154964, 34.151203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197572, -0.251233, 0.947548,
		0.675723, 0.735173, 0.054030,
		-0.710186, 0.629606, 0.315013,
		33.385262, 31.343845, 34.245708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248199, 31.237940, 34.514576>,  <33.882389, 30.903122, 34.025196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248199, 31.237940, 34.514576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865799, 31.303074, 34.612183>,  <33.636356, 31.342154, 34.670746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865799, 31.303074, 34.612183>,  <34.248199, 31.237940, 34.514576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865799, 31.303074, 34.612183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187960, -0.298640, 0.935674,
		0.225231, 0.940372, 0.254894,
		-0.956003, 0.162833, 0.244015,
		33.578999, 31.351923, 34.685387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270149, 31.439835, 35.254501>,  <34.248199, 31.237940, 34.514576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270149, 31.439835, 35.254501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880138, 31.379610, 35.189201>,  <33.646130, 31.343475, 35.150021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880138, 31.379610, 35.189201>,  <34.270149, 31.439835, 35.254501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880138, 31.379610, 35.189201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138745, -0.160997, 0.977154,
		-0.173403, 0.975403, 0.136088,
		-0.975029, -0.150560, -0.163249,
		33.587631, 31.334442, 35.140228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889542, 31.820578, 35.848942>,  <34.270149, 31.439835, 35.254501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889542, 31.820578, 35.848942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630798, 31.563053, 35.685436>,  <33.475552, 31.408539, 35.587334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630798, 31.563053, 35.685436>,  <33.889542, 31.820578, 35.848942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630798, 31.563053, 35.685436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283932, -0.294150, 0.912611,
		-0.707784, 0.706389, 0.007475,
		-0.646857, -0.643809, -0.408761,
		33.436741, 31.369911, 35.562809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205956, 31.879137, 36.126305>,  <33.889542, 31.820578, 35.848942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205956, 31.879137, 36.126305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228794, 31.509428, 35.975327>,  <33.242496, 31.287603, 35.884739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228794, 31.509428, 35.975327>,  <33.205956, 31.879137, 36.126305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228794, 31.509428, 35.975327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245419, -0.379450, 0.892069,
		-0.967734, 0.041700, -0.248498,
		0.057093, -0.924272, -0.377441,
		33.245922, 31.232147, 35.862095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416462, 32.694744, 36.064449>,  <33.205956, 31.879137, 36.126305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416462, 32.694744, 36.064449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185974, 32.768497, 36.382938>,  <33.047680, 32.812748, 36.574032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185974, 32.768497, 36.382938>,  <33.416462, 32.694744, 36.064449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185974, 32.768497, 36.382938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577691, 0.597261, -0.556375,
		-0.578139, -0.780566, -0.237639,
		-0.576219, 0.184380, 0.796226,
		33.013107, 32.823811, 36.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865681, 32.916790, 35.786980>,  <33.416462, 32.694744, 36.064449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865681, 32.916790, 35.786980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773972, 33.038425, 36.156837>,  <32.718945, 33.111408, 36.378750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773972, 33.038425, 36.156837>,  <32.865681, 32.916790, 35.786980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773972, 33.038425, 36.156837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546006, 0.746235, -0.380802,
		-0.805798, -0.592169, -0.005058,
		-0.229273, 0.304088, 0.924643,
		32.705189, 33.129650, 36.434231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078815, 33.178761, 35.796143>,  <32.865681, 32.916790, 35.786980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078815, 33.178761, 35.796143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267773, 33.340900, 36.109203>,  <32.381145, 33.438183, 36.297039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267773, 33.340900, 36.109203>,  <32.078815, 33.178761, 35.796143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267773, 33.340900, 36.109203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533207, 0.838480, -0.112434,
		-0.701810, -0.364201, 0.612225,
		0.472390, 0.405350, 0.782648,
		32.409489, 33.462505, 36.343998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626278, 33.442451, 36.343567>,  <32.078815, 33.178761, 35.796143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626278, 33.442451, 36.343567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961790, 33.654552, 36.294117>,  <32.163097, 33.781811, 36.264446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961790, 33.654552, 36.294117>,  <31.626278, 33.442451, 36.343567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961790, 33.654552, 36.294117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538226, 0.773206, -0.335358,
		-0.082233, 0.347832, 0.933943,
		0.838779, 0.530250, -0.123629,
		32.213425, 33.813629, 36.257027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430521, 34.067047, 36.628601>,  <31.626278, 33.442451, 36.343567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430521, 34.067047, 36.628601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766159, 34.124786, 36.418808>,  <31.967543, 34.159431, 36.292934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766159, 34.124786, 36.418808>,  <31.430521, 34.067047, 36.628601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766159, 34.124786, 36.418808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368876, 0.859608, -0.353561,
		0.399810, 0.490140, 0.774542,
		0.839096, 0.144353, -0.524480,
		32.017887, 34.168091, 36.261463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705261, 34.781944, 36.836575>,  <31.430521, 34.067047, 36.628601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705261, 34.781944, 36.836575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848040, 34.679436, 36.477261>,  <31.933706, 34.617931, 36.261673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848040, 34.679436, 36.477261>,  <31.705261, 34.781944, 36.836575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848040, 34.679436, 36.477261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406240, 0.823345, -0.396323,
		0.841164, 0.506385, 0.189782,
		0.356948, -0.256276, -0.898282,
		31.955124, 34.602554, 36.207775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889297, 35.406540, 36.636322>,  <31.705261, 34.781944, 36.836575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889297, 35.406540, 36.636322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866800, 35.194134, 36.298122>,  <31.853302, 35.066692, 36.095203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866800, 35.194134, 36.298122>,  <31.889297, 35.406540, 36.636322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866800, 35.194134, 36.298122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211020, 0.834028, -0.509772,
		0.975862, 0.149744, -0.158964,
		-0.056245, -0.531012, -0.845496,
		31.849926, 35.034832, 36.044476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176338, 35.867115, 36.049877>,  <31.889297, 35.406540, 36.636322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176338, 35.867115, 36.049877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951206, 35.605667, 35.847492>,  <31.816128, 35.448799, 35.726063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951206, 35.605667, 35.847492>,  <32.176338, 35.867115, 36.049877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951206, 35.605667, 35.847492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280173, 0.726743, -0.627175,
		0.777643, -0.211234, -0.592159,
		-0.562828, -0.653625, -0.505964,
		31.782358, 35.409580, 35.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361248, 35.988598, 35.381618>,  <32.176338, 35.867115, 36.049877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361248, 35.988598, 35.381618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000877, 35.815014, 35.381176>,  <31.784655, 35.710861, 35.380909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000877, 35.815014, 35.381176>,  <32.361248, 35.988598, 35.381618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000877, 35.815014, 35.381176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335130, 0.697364, -0.633539,
		0.275703, -0.570403, -0.773710,
		-0.900930, -0.433962, -0.001106,
		31.730598, 35.684826, 35.380844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178646, 35.932697, 34.667755>,  <32.361248, 35.988598, 35.381618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178646, 35.932697, 34.667755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834728, 35.871651, 34.862675>,  <31.628378, 35.835022, 34.979626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834728, 35.871651, 34.862675>,  <32.178646, 35.932697, 34.667755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834728, 35.871651, 34.862675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487431, 0.529709, -0.694132,
		-0.152188, -0.834335, -0.529833,
		-0.859796, -0.152619, 0.487296,
		31.576790, 35.825863, 35.008865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647617, 35.631123, 34.167397>,  <32.178646, 35.932697, 34.667755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647617, 35.631123, 34.167397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435854, 35.785172, 34.469765>,  <31.308796, 35.877602, 34.651184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435854, 35.785172, 34.469765>,  <31.647617, 35.631123, 34.167397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435854, 35.785172, 34.469765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576259, 0.490680, -0.653574,
		-0.622619, -0.781610, -0.037839,
		-0.529407, 0.385123, 0.755916,
		31.277031, 35.900707, 34.696541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926218, 35.536507, 34.003437>,  <31.647617, 35.631123, 34.167397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926218, 35.536507, 34.003437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943848, 35.843975, 34.258686>,  <30.954426, 36.028458, 34.411835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943848, 35.843975, 34.258686>,  <30.926218, 35.536507, 34.003437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943848, 35.843975, 34.258686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490049, 0.573251, -0.656686,
		-0.870580, -0.283768, 0.401953,
		0.044074, 0.768674, 0.638121,
		30.957069, 36.074577, 34.450123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262018, 35.990955, 33.925323>,  <30.926218, 35.536507, 34.003437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262018, 35.990955, 33.925323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.507994, 36.246407, 34.110367>,  <30.655579, 36.399677, 34.221394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.507994, 36.246407, 34.110367>,  <30.262018, 35.990955, 33.925323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507994, 36.246407, 34.110367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336527, 0.743059, -0.578458,
		-0.713163, 0.200037, 0.671851,
		0.614938, 0.638630, 0.462605,
		30.692474, 36.437996, 34.249149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808846, 36.609795, 34.093842>,  <30.262018, 35.990955, 33.925323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808846, 36.609795, 34.093842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188068, 36.735962, 34.110321>,  <30.415602, 36.811665, 34.120209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188068, 36.735962, 34.110321>,  <29.808846, 36.609795, 34.093842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188068, 36.735962, 34.110321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247615, 0.813067, -0.526885,
		-0.199687, 0.489316, 0.848938,
		0.948057, 0.315422, 0.041197,
		30.472485, 36.830589, 34.122681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777931, 37.326099, 34.280025>,  <29.808846, 36.609795, 34.093842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777931, 37.326099, 34.280025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.126101, 37.250343, 34.098259>,  <30.335003, 37.204891, 33.989201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.126101, 37.250343, 34.098259>,  <29.777931, 37.326099, 34.280025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126101, 37.250343, 34.098259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187047, 0.726600, -0.661109,
		0.455386, 0.660443, 0.597026,
		0.870424, -0.189388, -0.454417,
		30.387228, 37.193527, 33.961933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108038, 37.999783, 34.196285>,  <29.777931, 37.326099, 34.280025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108038, 37.999783, 34.196285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.253944, 37.727142, 33.942554>,  <30.341488, 37.563560, 33.790318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.253944, 37.727142, 33.942554>,  <30.108038, 37.999783, 34.196285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253944, 37.727142, 33.942554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160538, 0.625025, -0.763918,
		0.917156, 0.380484, 0.118565,
		0.364765, -0.681598, -0.634327,
		30.363375, 37.522663, 33.752254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502367, 38.459473, 33.717987>,  <30.108038, 37.999783, 34.196285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502367, 38.459473, 33.717987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531343, 38.124050, 33.501995>,  <30.548729, 37.922798, 33.372398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531343, 38.124050, 33.501995>,  <30.502367, 38.459473, 33.717987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531343, 38.124050, 33.501995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134691, 0.528220, -0.838357,
		0.988236, 0.133461, -0.074682,
		0.072440, -0.838553, -0.539983,
		30.553076, 37.872482, 33.340000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000126, 38.633793, 33.158394>,  <30.502367, 38.459473, 33.717987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000126, 38.633793, 33.158394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784321, 38.317146, 33.043663>,  <30.654839, 38.127159, 32.974823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784321, 38.317146, 33.043663>,  <31.000126, 38.633793, 33.158394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784321, 38.317146, 33.043663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256412, 0.478954, -0.839557,
		0.801985, -0.379404, -0.461381,
		-0.539512, -0.791616, -0.286830,
		30.622467, 38.079662, 32.957615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379368, 38.421581, 32.498119>,  <31.000126, 38.633793, 33.158394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379368, 38.421581, 32.498119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.002434, 38.287941, 32.490307>,  <30.776274, 38.207756, 32.485619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.002434, 38.287941, 32.490307>,  <31.379368, 38.421581, 32.498119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002434, 38.287941, 32.490307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140385, 0.447590, -0.883150,
		0.303801, -0.829482, -0.468683,
		-0.942336, -0.334098, -0.019531,
		30.719732, 38.187710, 32.484447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310095, 38.323746, 31.812284>,  <31.379368, 38.421581, 32.498119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310095, 38.323746, 31.812284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940645, 38.360851, 31.961048>,  <30.718975, 38.383114, 32.050304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940645, 38.360851, 31.961048>,  <31.310095, 38.323746, 31.812284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940645, 38.360851, 31.961048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301243, 0.424285, -0.853952,
		-0.237010, -0.900765, -0.363936,
		-0.923623, 0.092762, 0.371909,
		30.663559, 38.388680, 32.072620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913410, 38.162266, 31.224148>,  <31.310095, 38.323746, 31.812284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913410, 38.162266, 31.224148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669781, 38.315361, 31.502008>,  <30.523603, 38.407219, 31.668724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669781, 38.315361, 31.502008>,  <30.913410, 38.162266, 31.224148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669781, 38.315361, 31.502008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482002, 0.516925, -0.707434,
		-0.629842, -0.765704, -0.130368,
		-0.609076, 0.382734, 0.694652,
		30.487059, 38.430180, 31.710403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259624, 38.037144, 30.976938>,  <30.913410, 38.162266, 31.224148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259624, 38.037144, 30.976938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208757, 38.336079, 31.237804>,  <30.178238, 38.515438, 31.394323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.208757, 38.336079, 31.237804>,  <30.259624, 38.037144, 30.976938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208757, 38.336079, 31.237804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512655, 0.513350, -0.688227,
		-0.849125, -0.421856, 0.317843,
		-0.127168, 0.747335, 0.652165,
		30.170607, 38.560280, 31.433455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578217, 38.147148, 30.930943>,  <30.259624, 38.037144, 30.976938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578217, 38.147148, 30.930943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.725565, 38.484680, 31.087025>,  <29.813974, 38.687199, 31.180674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.725565, 38.484680, 31.087025>,  <29.578217, 38.147148, 30.930943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725565, 38.484680, 31.087025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460348, 0.530212, -0.712008,
		-0.807703, 0.082651, 0.583768,
		0.368369, 0.843827, 0.390206,
		29.836075, 38.737827, 31.204086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012047, 38.605289, 30.998846>,  <29.578217, 38.147148, 30.930943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012047, 38.605289, 30.998846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.336077, 38.838764, 31.021086>,  <29.530495, 38.978848, 31.034430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.336077, 38.838764, 31.021086>,  <29.012047, 38.605289, 30.998846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336077, 38.838764, 31.021086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379828, 0.594647, -0.708608,
		-0.446665, 0.552908, 0.703409,
		0.810075, 0.583685, 0.055598,
		29.579100, 39.013870, 31.037766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792654, 39.269814, 30.972681>,  <29.012047, 38.605289, 30.998846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792654, 39.269814, 30.972681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.174669, 39.298458, 30.857599>,  <29.403879, 39.315643, 30.788549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.174669, 39.298458, 30.857599>,  <28.792654, 39.269814, 30.972681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174669, 39.298458, 30.857599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274027, 0.583656, -0.764366,
		0.113185, 0.808837, 0.577037,
		0.955038, 0.071609, -0.287704,
		29.461182, 39.319942, 30.771288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886215, 39.948429, 30.824482>,  <28.792654, 39.269814, 30.972681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886215, 39.948429, 30.824482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.173143, 39.747742, 30.631100>,  <29.345301, 39.627327, 30.515070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.173143, 39.747742, 30.631100>,  <28.886215, 39.948429, 30.824482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173143, 39.747742, 30.631100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166303, 0.550532, -0.818082,
		0.676606, 0.667226, 0.311470,
		0.717319, -0.501721, -0.483455,
		29.388340, 39.597225, 30.486063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176689, 40.430939, 30.444727>,  <28.886215, 39.948429, 30.824482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176689, 40.430939, 30.444727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.290922, 40.092815, 30.264111>,  <29.359461, 39.889938, 30.155741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.290922, 40.092815, 30.264111>,  <29.176689, 40.430939, 30.444727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290922, 40.092815, 30.264111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274633, 0.379218, -0.883612,
		0.918161, 0.376351, -0.123853,
		0.285581, -0.845313, -0.451541,
		29.376596, 39.839222, 30.128649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791891, 40.643818, 30.047457>,  <29.176689, 40.430939, 30.444727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791891, 40.643818, 30.047457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.633688, 40.318020, 29.877674>,  <29.538765, 40.122540, 29.775805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.633688, 40.318020, 29.877674>,  <29.791891, 40.643818, 30.047457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633688, 40.318020, 29.877674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326547, 0.556644, -0.763881,
		0.858452, -0.163516, -0.486130,
		-0.395509, -0.814500, -0.424457,
		29.515036, 40.073669, 29.750338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715376, 40.857437, 29.363884>,  <29.791891, 40.643818, 30.047457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715376, 40.857437, 29.363884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482824, 40.532124, 29.354319>,  <29.343294, 40.336937, 29.348579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482824, 40.532124, 29.354319>,  <29.715376, 40.857437, 29.363884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482824, 40.532124, 29.354319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325381, 0.259337, -0.909325,
		0.745740, -0.520880, -0.415399,
		-0.581378, -0.813282, -0.023914,
		29.308411, 40.288139, 29.347145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449234, 40.443661, 29.416759>,  <29.715376, 40.857437, 29.363884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449234, 40.443661, 29.416759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761946, 40.662724, 29.297501>,  <30.949572, 40.794163, 29.225945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761946, 40.662724, 29.297501>,  <30.449234, 40.443661, 29.416759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761946, 40.662724, 29.297501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443229, -0.151741, 0.883472,
		0.438602, -0.822826, -0.361367,
		0.781778, 0.547661, -0.298147,
		30.996479, 40.827023, 29.208057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156725, 40.041084, 29.387505>,  <30.449234, 40.443661, 29.416759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156725, 40.041084, 29.387505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243038, 40.429054, 29.432556>,  <31.294827, 40.661835, 29.459587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243038, 40.429054, 29.432556>,  <31.156725, 40.041084, 29.387505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243038, 40.429054, 29.432556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643144, -0.227970, 0.731024,
		0.734714, -0.085303, -0.672993,
		0.215781, 0.969924, 0.112630,
		31.307772, 40.720032, 29.466345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804247, 40.011982, 29.665617>,  <31.156725, 40.041084, 29.387505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804247, 40.011982, 29.665617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729696, 40.396702, 29.745817>,  <31.684967, 40.627533, 29.793938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729696, 40.396702, 29.745817>,  <31.804247, 40.011982, 29.665617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729696, 40.396702, 29.745817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616775, -0.044314, 0.785891,
		0.764757, 0.270134, -0.584957,
		-0.186374, 0.961802, 0.200501,
		31.673784, 40.685242, 29.805967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453831, 40.342686, 29.757561>,  <31.804247, 40.011982, 29.665617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453831, 40.342686, 29.757561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173965, 40.539036, 29.965219>,  <32.006046, 40.656845, 30.089815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173965, 40.539036, 29.965219>,  <32.453831, 40.342686, 29.757561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173965, 40.539036, 29.965219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570830, -0.052927, 0.819361,
		0.429680, 0.869622, -0.243174,
		-0.699663, 0.490874, 0.519147,
		31.964066, 40.686298, 30.120964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642876, 40.982052, 30.081776>,  <32.453831, 40.342686, 29.757561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642876, 40.982052, 30.081776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.373108, 40.798744, 30.313343>,  <32.211246, 40.688759, 30.452284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.373108, 40.798744, 30.313343>,  <32.642876, 40.982052, 30.081776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373108, 40.798744, 30.313343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657616, -0.016328, 0.753176,
		-0.335706, 0.888663, 0.312378,
		-0.674420, -0.458271, 0.578918,
		32.170780, 40.661263, 30.487019>
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
