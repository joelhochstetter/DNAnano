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
	<0.228591, 0.791544, 2.323629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.496918, 0.703213, 2.040436>,  <0.657914, 0.650214, 1.870520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.496918, 0.703213, 2.040436>,  <0.228591, 0.791544, 2.323629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.496918, 0.703213, 2.040436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475579, 0.860602, 0.182180,
		0.569061, -0.458911, 0.682328,
		0.670816, -0.220829, -0.707983,
		0.698163, 0.636964, 1.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.908205, 0.896491, 2.625230>,  <0.228591, 0.791544, 2.323629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.908205, 0.896491, 2.625230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.873192, 0.952896, 2.230778>,  <0.852184, 0.986739, 1.994106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.873192, 0.952896, 2.230778>,  <0.908205, 0.896491, 2.625230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.873192, 0.952896, 2.230778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371133, 0.923279, 0.099083,
		0.924445, -0.357312, -0.133153,
		-0.087534, 0.141014, -0.986130,
		0.846932, 0.995200, 1.934939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.611681, 1.171843, 2.474370>,  <0.908205, 0.896491, 2.625230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.611681, 1.171843, 2.474370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338516, 1.310852, 2.217354>,  <1.174617, 1.394257, 2.063144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.338516, 1.310852, 2.217354>,  <1.611681, 1.171843, 2.474370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.338516, 1.310852, 2.217354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286653, 0.936526, 0.201862,
		0.671909, -0.046333, -0.739183,
		-0.682911, 0.347522, -0.642542,
		1.133643, 1.415109, 2.024591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.890167, 1.786313, 2.252441>,  <1.611681, 1.171843, 2.474370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.890167, 1.786313, 2.252441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.511642, 1.818853, 2.127300>,  <1.284528, 1.838378, 2.052216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.511642, 1.818853, 2.127300>,  <1.890167, 1.786313, 2.252441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.511642, 1.818853, 2.127300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065008, 0.995936, 0.062340,
		0.316651, 0.038655, -0.947754,
		-0.946312, 0.081351, -0.312851,
		1.227749, 1.843259, 2.033445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.859591, 2.270213, 1.647954>,  <1.890167, 1.786313, 2.252441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.859591, 2.270213, 1.647954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.477989, 2.278063, 1.767612>,  <1.249028, 2.282773, 1.839408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.477989, 2.278063, 1.767612>,  <1.859591, 2.270213, 1.647954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.477989, 2.278063, 1.767612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023564, 0.989859, -0.140083,
		-0.298862, -0.140689, -0.943869,
		-0.954006, 0.019624, 0.299146,
		1.191787, 2.283950, 1.857356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.526186, 2.578411, 1.117567>,  <1.859591, 2.270213, 1.647954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.526186, 2.578411, 1.117567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.293892, 2.601999, 1.442348>,  <1.154516, 2.616153, 1.637217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.293892, 2.601999, 1.442348>,  <1.526186, 2.578411, 1.117567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.293892, 2.601999, 1.442348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030382, 0.995108, -0.094005,
		-0.813526, -0.079261, -0.576102,
		-0.580735, 0.058972, 0.811954,
		1.119671, 2.619691, 1.685935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.024036, 2.983414, 0.930911>,  <1.526186, 2.578411, 1.117567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.024036, 2.983414, 0.930911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.055862, 3.019287, 1.328026>,  <1.074958, 3.040811, 1.566295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.055862, 3.019287, 1.328026>,  <1.024036, 2.983414, 0.930911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.055862, 3.019287, 1.328026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027396, 0.995372, -0.092111,
		-0.996453, 0.034527, 0.076741,
		0.079567, 0.089682, 0.992787,
		1.079732, 3.046192, 1.625862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.628075, 3.597618, 1.044467>,  <1.024036, 2.983414, 0.930911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.628075, 3.597618, 1.044467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.815109, 3.546246, 1.394295>,  <0.927330, 3.515422, 1.604191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.815109, 3.546246, 1.394295>,  <0.628075, 3.597618, 1.044467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.815109, 3.546246, 1.394295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166699, 0.984448, 0.055443,
		-0.868088, 0.119865, 0.481722,
		0.467584, -0.128432, 0.874568,
		0.955385, 3.507716, 1.656665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.265507, 3.705132, 2.307929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.991394, 3.757870, 2.021431>,  <2.826926, 3.789512, 1.849532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.991394, 3.757870, 2.021431>,  <3.265507, 3.705132, 2.307929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.991394, 3.757870, 2.021431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515223, -0.782849, 0.348845,
		-0.514718, 0.608083, 0.604401,
		-0.685281, 0.131845, -0.716244,
		2.785810, 3.797423, 1.806558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.571556, 3.629899, 2.637692>,  <3.265507, 3.705132, 2.307929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.571556, 3.629899, 2.637692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.558685, 3.537666, 2.248684>,  <2.550963, 3.482327, 2.015279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.558685, 3.537666, 2.248684>,  <2.571556, 3.629899, 2.637692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.558685, 3.537666, 2.248684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547720, -0.809844, 0.210132,
		-0.836043, 0.539431, -0.100235,
		-0.032177, -0.230580, -0.972521,
		2.549032, 3.468492, 1.956928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.977783, 3.617765, 2.247525>,  <2.571556, 3.629899, 2.637692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.977783, 3.617765, 2.247525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.608612, 3.764046, 2.199413>,  <1.387109, 3.851814, 2.170546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.608612, 3.764046, 2.199413>,  <1.977783, 3.617765, 2.247525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.608612, 3.764046, 2.199413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380913, -0.912734, 0.147719,
		-0.055762, 0.182150, 0.981688,
		-0.922928, 0.365701, -0.120280,
		1.331734, 3.873756, 2.163329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506866, 3.377636, 2.828048>,  <1.977783, 3.617765, 2.247525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506866, 3.377636, 2.828048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.320938, 3.422970, 2.476799>,  <1.209382, 3.450170, 2.266050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.320938, 3.422970, 2.476799>,  <1.506866, 3.377636, 2.828048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.320938, 3.422970, 2.476799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272404, -0.961974, 0.020036,
		-0.842460, 0.248517, 0.478016,
		-0.464819, 0.113334, -0.878122,
		1.181492, 3.456970, 2.213362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.804826, 3.083112, 2.925723>,  <1.506866, 3.377636, 2.828048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.804826, 3.083112, 2.925723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.916168, 3.077534, 2.541573>,  <0.982973, 3.074187, 2.311082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.916168, 3.077534, 2.541573>,  <0.804826, 3.083112, 2.925723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.916168, 3.077534, 2.541573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305065, -0.949402, -0.074634,
		-0.910743, 0.313752, -0.268526,
		0.278355, -0.013945, -0.960377,
		0.999675, 3.073350, 2.253459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.180674, 2.752143, 2.602323>,  <0.804826, 3.083112, 2.925723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.180674, 2.752143, 2.602323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.485168, 2.718678, 2.345100>,  <0.667865, 2.698598, 2.190767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.485168, 2.718678, 2.345100>,  <0.180674, 2.752143, 2.602323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.485168, 2.718678, 2.345100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113393, -0.993538, -0.004969,
		-0.638485, 0.076701, -0.765803,
		0.761235, -0.083664, -0.643056,
		0.713539, 2.693578, 2.152184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.007392, 2.192007, 2.408774>,  <0.180674, 2.752143, 2.602323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.007392, 2.192007, 2.408774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.364990, 2.240753, 2.236301>,  <0.579549, 2.270001, 2.132818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.364990, 2.240753, 2.236301>,  <0.007392, 2.192007, 2.408774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.364990, 2.240753, 2.236301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060282, -0.986267, -0.153766,
		-0.444000, 0.111474, -0.889066,
		0.893997, 0.121867, -0.431183,
		0.633189, 2.277313, 2.106947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.017103, 1.914549, 1.684042>,  <0.007392, 2.192007, 2.408774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.017103, 1.914549, 1.684042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.385666, 1.910416, 1.839428>,  <0.606803, 1.907936, 1.932659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.385666, 1.910416, 1.839428>,  <0.017103, 1.914549, 1.684042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.385666, 1.910416, 1.839428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042372, -0.991014, -0.126866,
		0.386284, 0.133356, -0.912689,
		0.921406, -0.010334, 0.388464,
		0.662088, 1.907315, 1.955967>
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
