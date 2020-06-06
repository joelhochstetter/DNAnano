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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.941463, 34.274918, 51.099178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875595, 34.402779, 50.725933>,  <39.836075, 34.479496, 50.501987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875595, 34.402779, 50.725933>,  <39.941463, 34.274918, 51.099178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875595, 34.402779, 50.725933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965918, -0.139284, -0.218179,
		-0.199710, -0.937240, -0.285825,
		-0.164675, 0.319657, -0.933114,
		39.826191, 34.498676, 50.445999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192234, 33.718735, 50.633656>,  <39.941463, 34.274918, 51.099178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192234, 33.718735, 50.633656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195389, 34.068878, 50.440289>,  <40.197281, 34.278965, 50.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195389, 34.068878, 50.440289>,  <40.192234, 33.718735, 50.633656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195389, 34.068878, 50.440289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933122, -0.180229, -0.311128,
		-0.359474, -0.448634, -0.818234,
		0.007887, 0.875354, -0.483418,
		40.197754, 34.331486, 50.295261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502285, 33.548336, 50.070263>,  <40.192234, 33.718735, 50.633656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502285, 33.548336, 50.070263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559544, 33.944122, 50.078892>,  <40.593899, 34.181595, 50.084068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559544, 33.944122, 50.078892>,  <40.502285, 33.548336, 50.070263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559544, 33.944122, 50.078892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969463, -0.135799, -0.204205,
		-0.199125, 0.050140, -0.978691,
		0.143144, 0.989467, 0.021568,
		40.602486, 34.240963, 50.085361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973927, 33.738480, 49.517914>,  <40.502285, 33.548336, 50.070263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973927, 33.738480, 49.517914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002213, 34.049744, 49.767544>,  <41.019184, 34.236504, 49.917320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002213, 34.049744, 49.767544>,  <40.973927, 33.738480, 49.517914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002213, 34.049744, 49.767544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991881, 0.011438, -0.126654,
		-0.105695, 0.627962, -0.771033,
		0.070715, 0.778160, 0.624072,
		41.023426, 34.283192, 49.954765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408974, 34.131435, 49.149540>,  <40.973927, 33.738480, 49.517914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408974, 34.131435, 49.149540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424728, 34.244938, 49.532776>,  <41.434181, 34.313042, 49.762718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424728, 34.244938, 49.532776>,  <41.408974, 34.131435, 49.149540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424728, 34.244938, 49.532776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990901, 0.112409, -0.074030,
		-0.128704, 0.952284, -0.276748,
		0.039389, 0.283758, 0.958087,
		41.436546, 34.330067, 49.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999355, 34.542000, 49.106625>,  <41.408974, 34.131435, 49.149540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999355, 34.542000, 49.106625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923763, 34.525082, 49.499054>,  <41.878410, 34.514931, 49.734512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923763, 34.525082, 49.499054>,  <41.999355, 34.542000, 49.106625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923763, 34.525082, 49.499054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965603, 0.173706, 0.193488,
		-0.178602, 0.983889, 0.008018,
		-0.188978, -0.042300, 0.981070,
		41.867069, 34.512390, 49.793373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267326, 35.150581, 49.394760>,  <41.999355, 34.542000, 49.106625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267326, 35.150581, 49.394760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267933, 34.863266, 49.673058>,  <42.268299, 34.690876, 49.840034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267933, 34.863266, 49.673058>,  <42.267326, 35.150581, 49.394760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267933, 34.863266, 49.673058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951885, 0.214249, 0.219117,
		-0.306452, 0.661931, 0.684058,
		0.001518, -0.718293, 0.695739,
		42.268387, 34.647778, 49.881779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402737, 35.434521, 50.044395>,  <42.267326, 35.150581, 49.394760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402737, 35.434521, 50.044395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531273, 35.057850, 50.084354>,  <42.608395, 34.831848, 50.108330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531273, 35.057850, 50.084354>,  <42.402737, 35.434521, 50.044395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531273, 35.057850, 50.084354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843185, 0.332542, 0.422439,
		-0.431023, -0.051514, 0.900869,
		0.321338, -0.941681, 0.099897,
		42.627674, 34.775345, 50.114323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890572, 35.507359, 50.560413>,  <42.402737, 35.434521, 50.044395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890572, 35.507359, 50.560413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957577, 35.130619, 50.443890>,  <42.997780, 34.904575, 50.373974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957577, 35.130619, 50.443890>,  <42.890572, 35.507359, 50.560413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957577, 35.130619, 50.443890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912715, 0.036461, 0.406966,
		-0.372678, -0.334058, 0.865746,
		0.167516, -0.941847, -0.291311,
		43.007832, 34.848064, 50.356495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146973, 35.117657, 51.128418>,  <42.890572, 35.507359, 50.560413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146973, 35.117657, 51.128418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284897, 34.941498, 50.796837>,  <43.367653, 34.835804, 50.597889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284897, 34.941498, 50.796837>,  <43.146973, 35.117657, 51.128418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284897, 34.941498, 50.796837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903213, -0.084774, 0.420737,
		-0.255563, -0.893794, 0.368538,
		0.344809, -0.440393, -0.828951,
		43.388340, 34.809380, 50.548153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501102, 34.583439, 51.391991>,  <43.146973, 35.117657, 51.128418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501102, 34.583439, 51.391991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651047, 34.625923, 51.023602>,  <43.741013, 34.651413, 50.802567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651047, 34.625923, 51.023602>,  <43.501102, 34.583439, 51.391991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651047, 34.625923, 51.023602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922074, -0.145812, 0.358494,
		-0.096213, -0.983595, -0.152594,
		0.374863, 0.106211, -0.920976,
		43.763504, 34.657787, 50.747307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979824, 34.050797, 51.327667>,  <43.501102, 34.583439, 51.391991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979824, 34.050797, 51.327667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075706, 34.301231, 51.030869>,  <44.133236, 34.451492, 50.852791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075706, 34.301231, 51.030869>,  <43.979824, 34.050797, 51.327667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075706, 34.301231, 51.030869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968873, -0.105572, 0.223918,
		0.061858, -0.772572, -0.631906,
		0.239705, 0.626088, -0.741994,
		44.147617, 34.489059, 50.808270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602921, 33.767273, 51.134186>,  <43.979824, 34.050797, 51.327667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602921, 33.767273, 51.134186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575962, 34.147842, 51.014015>,  <44.559788, 34.376183, 50.941914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575962, 34.147842, 51.014015>,  <44.602921, 33.767273, 51.134186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575962, 34.147842, 51.014015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963434, 0.140322, 0.228266,
		0.259334, -0.274054, -0.926089,
		-0.067393, 0.951422, -0.300423,
		44.555744, 34.433270, 50.923889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215557, 33.795300, 50.742607>,  <44.602921, 33.767273, 51.134186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215557, 33.795300, 50.742607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092438, 34.171093, 50.802773>,  <45.018566, 34.396568, 50.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092438, 34.171093, 50.802773>,  <45.215557, 33.795300, 50.742607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092438, 34.171093, 50.802773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947268, 0.317399, -0.044060,
		-0.089134, 0.128919, -0.987641,
		-0.307796, 0.939488, 0.150412,
		45.000099, 34.452938, 50.847897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512047, 34.188343, 50.230869>,  <45.215557, 33.795300, 50.742607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512047, 34.188343, 50.230869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427410, 34.418285, 50.547039>,  <45.376629, 34.556252, 50.736740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427410, 34.418285, 50.547039>,  <45.512047, 34.188343, 50.230869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427410, 34.418285, 50.547039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961501, 0.267525, 0.062819,
		-0.175347, 0.773288, -0.609327,
		-0.211587, 0.574853, 0.790427,
		45.363934, 34.590740, 50.784168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830128, 34.820259, 50.103897>,  <45.512047, 34.188343, 50.230869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830128, 34.820259, 50.103897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784920, 34.806671, 50.501102>,  <45.757793, 34.798519, 50.739426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784920, 34.806671, 50.501102>,  <45.830128, 34.820259, 50.103897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784920, 34.806671, 50.501102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912378, 0.392195, 0.117259,
		-0.393438, 0.919255, -0.013336,
		-0.113021, -0.033966, 0.993012,
		45.751015, 34.796482, 50.799007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189995, 35.449516, 50.373173>,  <45.830128, 34.820259, 50.103897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189995, 35.449516, 50.373173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192837, 35.223503, 50.703190>,  <46.194542, 35.087894, 50.901199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192837, 35.223503, 50.703190>,  <46.189995, 35.449516, 50.373173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192837, 35.223503, 50.703190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907671, 0.349868, 0.231789,
		-0.419623, 0.747217, 0.515348,
		0.007107, -0.565030, 0.825040,
		46.194969, 35.053993, 50.950703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701965, 35.684464, 50.763615>,  <46.189995, 35.449516, 50.373173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701965, 35.684464, 50.763615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656460, 35.347908, 50.974945>,  <46.629158, 35.145977, 51.101742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656460, 35.347908, 50.974945>,  <46.701965, 35.684464, 50.763615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656460, 35.347908, 50.974945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936071, 0.087416, 0.340777,
		-0.332909, 0.533318, 0.777653,
		-0.113763, -0.841386, 0.528326,
		46.622330, 35.095493, 51.133442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791275, 35.759964, 51.528984>,  <46.701965, 35.684464, 50.763615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791275, 35.759964, 51.528984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889725, 35.381664, 51.444157>,  <46.948795, 35.154682, 51.393261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889725, 35.381664, 51.444157>,  <46.791275, 35.759964, 51.528984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889725, 35.381664, 51.444157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911159, 0.151165, 0.383326,
		-0.330474, -0.287578, 0.898936,
		0.246124, -0.945752, -0.212073,
		46.963562, 35.097939, 51.380535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.063480, 35.433929, 52.185337>,  <46.791275, 35.759964, 51.528984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.063480, 35.433929, 52.185337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.184227, 35.196217, 51.887154>,  <47.256676, 35.053589, 51.708244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.184227, 35.196217, 51.887154>,  <47.063480, 35.433929, 52.185337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.184227, 35.196217, 51.887154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938797, 0.049189, 0.340939,
		-0.165946, -0.802750, 0.572760,
		0.301863, -0.594283, -0.745457,
		47.274784, 35.017933, 51.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668961, 35.127876, 52.460197>,  <47.063480, 35.433929, 52.185337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668961, 35.127876, 52.460197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720650, 35.000282, 52.084633>,  <47.751663, 34.923725, 51.859295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720650, 35.000282, 52.084633>,  <47.668961, 35.127876, 52.460197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720650, 35.000282, 52.084633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974834, -0.132588, 0.179216,
		-0.181656, -0.938438, 0.293828,
		0.129225, -0.318989, -0.938907,
		47.759418, 34.904587, 51.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.205473, 34.779030, 51.506081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.300276, 34.710789, 51.888645>,  <24.357159, 34.669846, 52.118183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.300276, 34.710789, 51.888645>,  <24.205473, 34.779030, 51.506081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.300276, 34.710789, 51.888645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970995, 0.009634, -0.238904,
		0.031543, 0.985293, 0.167937,
		0.237008, -0.170602, 0.956411,
		24.371378, 34.659607, 52.175568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683916, 35.330986, 51.789165>,  <24.205473, 34.779030, 51.506081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683916, 35.330986, 51.789165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.749674, 34.964436, 51.935169>,  <24.789127, 34.744507, 52.022770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.749674, 34.964436, 51.935169>,  <24.683916, 35.330986, 51.789165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749674, 34.964436, 51.935169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943868, 0.038657, -0.328053,
		0.286510, 0.398449, 0.871293,
		0.164393, -0.916375, 0.365008,
		24.798992, 34.689522, 52.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356819, 35.385273, 52.292633>,  <24.683916, 35.330986, 51.789165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356819, 35.385273, 52.292633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.304996, 35.001690, 52.191742>,  <25.273903, 34.771542, 52.131207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.304996, 35.001690, 52.191742>,  <25.356819, 35.385273, 52.292633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304996, 35.001690, 52.191742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991571, -0.125673, -0.031517,
		-0.001475, -0.254182, 0.967155,
		-0.129557, -0.958957, -0.252224,
		25.266130, 34.714005, 52.116074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931408, 35.006145, 52.649002>,  <25.356819, 35.385273, 52.292633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931408, 35.006145, 52.649002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.809917, 34.777702, 52.343952>,  <25.737024, 34.640636, 52.160923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.809917, 34.777702, 52.343952>,  <25.931408, 35.006145, 52.649002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809917, 34.777702, 52.343952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921546, -0.379302, -0.082971,
		-0.241879, -0.727990, 0.641503,
		-0.303725, -0.571105, -0.762621,
		25.718800, 34.606369, 52.115166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254374, 34.384083, 52.824596>,  <25.931408, 35.006145, 52.649002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254374, 34.384083, 52.824596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.155235, 34.335136, 52.440178>,  <26.095753, 34.305771, 52.209526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.155235, 34.335136, 52.440178>,  <26.254374, 34.384083, 52.824596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155235, 34.335136, 52.440178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944352, -0.251961, -0.211460,
		-0.216271, -0.959971, 0.178000,
		-0.247844, -0.122362, -0.961042,
		26.080883, 34.298428, 52.151867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425499, 33.686256, 52.572647>,  <26.254374, 34.384083, 52.824596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425499, 33.686256, 52.572647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.415545, 33.939655, 52.263309>,  <26.409573, 34.091694, 52.077709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.415545, 33.939655, 52.263309>,  <26.425499, 33.686256, 52.572647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415545, 33.939655, 52.263309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909358, -0.306999, -0.280748,
		-0.415269, -0.710232, -0.568438,
		-0.024886, 0.633500, -0.773342,
		26.408079, 34.129704, 52.031307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542191, 33.206005, 52.108002>,  <26.425499, 33.686256, 52.572647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542191, 33.206005, 52.108002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.625542, 33.575890, 51.980568>,  <26.675552, 33.797821, 51.904110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.625542, 33.575890, 51.980568>,  <26.542191, 33.206005, 52.108002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625542, 33.575890, 51.980568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813983, -0.344549, -0.467672,
		-0.542227, -0.161866, -0.824493,
		0.208378, 0.924708, -0.318580,
		26.688055, 33.853302, 51.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060125, 33.139172, 51.701214>,  <26.542191, 33.206005, 52.108002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060125, 33.139172, 51.701214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.067842, 33.539085, 51.698055>,  <27.072474, 33.779034, 51.696159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.067842, 33.539085, 51.698055>,  <27.060125, 33.139172, 51.701214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067842, 33.539085, 51.698055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804545, -0.020210, -0.593548,
		-0.593578, 0.005101, -0.804760,
		0.019292, 0.999783, -0.007892,
		27.073629, 33.839020, 51.695686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107723, 33.370949, 51.028057>,  <27.060125, 33.139172, 51.701214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107723, 33.370949, 51.028057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.272743, 33.640034, 51.273743>,  <27.371756, 33.801487, 51.421154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.272743, 33.640034, 51.273743>,  <27.107723, 33.370949, 51.028057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272743, 33.640034, 51.273743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843158, -0.026773, -0.536999,
		-0.344802, 0.739418, -0.578249,
		0.412548, 0.672714, 0.614215,
		27.396507, 33.841846, 51.458008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630642, 33.738029, 50.611996>,  <27.107723, 33.370949, 51.028057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630642, 33.738029, 50.611996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.716238, 33.839005, 50.989456>,  <27.767595, 33.899590, 51.215935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.716238, 33.839005, 50.989456>,  <27.630642, 33.738029, 50.611996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716238, 33.839005, 50.989456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975642, -0.007488, -0.219240,
		-0.048278, 0.967584, -0.247893,
		0.213989, 0.252439, 0.943654,
		27.780436, 33.914738, 51.272552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227943, 34.154530, 50.532902>,  <27.630642, 33.738029, 50.611996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227943, 34.154530, 50.532902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.198360, 34.033253, 50.912922>,  <28.180611, 33.960487, 51.140934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.198360, 34.033253, 50.912922>,  <28.227943, 34.154530, 50.532902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198360, 34.033253, 50.912922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989841, -0.138313, 0.032914,
		0.121426, 0.942838, 0.310342,
		-0.073957, -0.303193, 0.950055,
		28.176172, 33.942295, 51.197937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731693, 34.585793, 50.938324>,  <28.227943, 34.154530, 50.532902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731693, 34.585793, 50.938324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.686602, 34.240005, 51.134277>,  <28.659548, 34.032532, 51.251850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.686602, 34.240005, 51.134277>,  <28.731693, 34.585793, 50.938324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686602, 34.240005, 51.134277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974335, -0.192849, -0.116105,
		0.194843, 0.464222, 0.864022,
		-0.112728, -0.864469, 0.489883,
		28.652782, 33.980663, 51.281242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242718, 34.637722, 51.509846>,  <28.731693, 34.585793, 50.938324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242718, 34.637722, 51.509846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.153267, 34.256538, 51.428001>,  <29.099596, 34.027828, 51.378895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.153267, 34.256538, 51.428001>,  <29.242718, 34.637722, 51.509846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153267, 34.256538, 51.428001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974480, -0.214408, -0.066467,
		0.019469, -0.214254, 0.976584,
		-0.223628, -0.952956, -0.204611,
		29.086178, 33.970654, 51.366619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740942, 34.108372, 51.992153>,  <29.242718, 34.637722, 51.509846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740942, 34.108372, 51.992153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620634, 33.888035, 51.680740>,  <29.548450, 33.755833, 51.493893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620634, 33.888035, 51.680740>,  <29.740942, 34.108372, 51.992153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620634, 33.888035, 51.680740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934830, -0.331858, -0.126348,
		-0.188764, -0.765795, 0.614758,
		-0.300769, -0.550844, -0.778530,
		29.530403, 33.722782, 51.447182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198034, 33.591164, 52.024975>,  <29.740942, 34.108372, 51.992153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198034, 33.591164, 52.024975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.047918, 33.533699, 51.658691>,  <29.957848, 33.499218, 51.438923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.047918, 33.533699, 51.658691>,  <30.198034, 33.591164, 52.024975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047918, 33.533699, 51.658691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924402, -0.130592, -0.358366,
		-0.068098, -0.980972, 0.181815,
		-0.375291, -0.143666, -0.915705,
		29.935331, 33.490601, 51.383980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707291, 33.106544, 51.806301>,  <30.198034, 33.591164, 52.024975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707291, 33.106544, 51.806301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.517384, 33.276634, 51.498074>,  <30.403440, 33.378689, 51.313137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.517384, 33.276634, 51.498074>,  <30.707291, 33.106544, 51.806301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517384, 33.276634, 51.498074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867906, 0.080893, -0.490096,
		-0.146069, -0.901464, -0.407463,
		-0.474765, 0.425228, -0.770571,
		30.374954, 33.404202, 51.266903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914221, 32.740311, 51.162025>,  <30.707291, 33.106544, 51.806301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914221, 32.740311, 51.162025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.817017, 33.122467, 51.094887>,  <30.758694, 33.351761, 51.054604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.817017, 33.122467, 51.094887>,  <30.914221, 32.740311, 51.162025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817017, 33.122467, 51.094887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834161, 0.117509, -0.538856,
		-0.495096, -0.270957, -0.825507,
		-0.243011, 0.955392, -0.167844,
		30.744114, 33.409084, 51.044533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054127, 32.774460, 50.453484>,  <30.914221, 32.740311, 51.162025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054127, 32.774460, 50.453484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.019161, 33.162376, 50.544586>,  <30.998182, 33.395126, 50.599247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.019161, 33.162376, 50.544586>,  <31.054127, 32.774460, 50.453484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019161, 33.162376, 50.544586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707830, 0.221340, -0.670809,
		-0.700953, 0.102573, -0.705793,
		-0.087413, 0.969787, 0.227753,
		30.992937, 33.453312, 50.612911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984695, 33.182125, 49.796307>,  <31.054127, 32.774460, 50.453484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984695, 33.182125, 49.796307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.130449, 33.438824, 50.066235>,  <31.217901, 33.592842, 50.228191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.130449, 33.438824, 50.066235>,  <30.984695, 33.182125, 49.796307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130449, 33.438824, 50.066235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683638, 0.307716, -0.661778,
		-0.632347, 0.702476, -0.326595,
		0.364384, 0.641746, 0.674823,
		31.239765, 33.631348, 50.268681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973658, 33.847847, 49.453384>,  <30.984695, 33.182125, 49.796307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973658, 33.847847, 49.453384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.239073, 33.873440, 49.751545>,  <31.398321, 33.888794, 49.930443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.239073, 33.873440, 49.751545>,  <30.973658, 33.847847, 49.453384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239073, 33.873440, 49.751545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649087, 0.446220, -0.616096,
		-0.372030, 0.892634, 0.254556,
		0.663536, 0.063978, 0.745404,
		31.438133, 33.892632, 49.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301794, 34.560715, 49.365540>,  <30.973658, 33.847847, 49.453384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301794, 34.560715, 49.365540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.558599, 34.354839, 49.592842>,  <31.712683, 34.231316, 49.729225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.558599, 34.354839, 49.592842>,  <31.301794, 34.560715, 49.365540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558599, 34.354839, 49.592842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751441, 0.275302, -0.599620,
		0.152173, 0.811977, 0.563504,
		0.642012, -0.514686, 0.568259,
		31.751204, 34.200432, 49.763321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.535233, 35.011166, 34.908443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.146656, 35.027905, 34.815018>,  <23.913509, 35.037949, 34.758961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.146656, 35.027905, 34.815018>,  <24.535233, 35.011166, 34.908443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.146656, 35.027905, 34.815018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200656, 0.380497, 0.902751,
		0.126651, 0.923835, -0.361233,
		-0.971441, 0.041850, -0.233563,
		23.855225, 35.040459, 34.744949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476959, 35.634953, 34.480434>,  <24.535233, 35.011166, 34.908443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476959, 35.634953, 34.480434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.646093, 35.323700, 34.294651>,  <24.747574, 35.136948, 34.183182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.646093, 35.323700, 34.294651>,  <24.476959, 35.634953, 34.480434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646093, 35.323700, 34.294651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768406, 0.579556, -0.271416,
		0.480375, -0.242125, 0.842980,
		0.422837, -0.778133, -0.464455,
		24.772943, 35.090260, 34.155315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854816, 35.898808, 35.016018>,  <24.476959, 35.634953, 34.480434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854816, 35.898808, 35.016018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.638723, 36.057384, 35.312931>,  <24.509068, 36.152531, 35.491077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.638723, 36.057384, 35.312931>,  <24.854816, 35.898808, 35.016018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638723, 36.057384, 35.312931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184268, -0.804941, 0.564017,
		0.821092, 0.441480, 0.361805,
		-0.540234, 0.396441, 0.742282,
		24.476654, 36.176315, 35.535614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258671, 36.057079, 35.571899>,  <24.854816, 35.898808, 35.016018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258671, 36.057079, 35.571899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.888678, 35.974751, 35.699680>,  <24.666681, 35.925354, 35.776348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.888678, 35.974751, 35.699680>,  <25.258671, 36.057079, 35.571899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888678, 35.974751, 35.699680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372798, -0.654493, 0.657769,
		0.073694, 0.727514, 0.682124,
		-0.924982, -0.205821, 0.319448,
		24.611183, 35.913006, 35.795513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338820, 35.740318, 36.187641>,  <25.258671, 36.057079, 35.571899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338820, 35.740318, 36.187641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.088558, 35.428345, 36.193981>,  <24.938400, 35.241158, 36.197784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.088558, 35.428345, 36.193981>,  <25.338820, 35.740318, 36.187641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088558, 35.428345, 36.193981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160080, 0.148244, 0.975909,
		-0.763498, 0.608045, -0.217603,
		-0.625655, -0.779939, 0.015848,
		24.900862, 35.194363, 36.198734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644791, 35.889938, 36.372597>,  <25.338820, 35.740318, 36.187641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644791, 35.889938, 36.372597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.811741, 35.542782, 36.480339>,  <24.911911, 35.334488, 36.544987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.811741, 35.542782, 36.480339>,  <24.644791, 35.889938, 36.372597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811741, 35.542782, 36.480339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385885, 0.099089, 0.917210,
		-0.822732, -0.486764, -0.293550,
		0.417378, -0.867895, 0.269359,
		24.936954, 35.282413, 36.561146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515978, 35.934315, 37.064983>,  <24.644791, 35.889938, 36.372597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515978, 35.934315, 37.064983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.749580, 35.609840, 37.077030>,  <24.889742, 35.415154, 37.084259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.749580, 35.609840, 37.077030>,  <24.515978, 35.934315, 37.064983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749580, 35.609840, 37.077030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233942, -0.132663, 0.963157,
		-0.777308, -0.569536, -0.267248,
		0.584006, -0.811190, 0.030118,
		24.924782, 35.366482, 37.086067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.264389, 35.321369, 37.489624>,  <24.515978, 35.934315, 37.064983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.264389, 35.321369, 37.489624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.660122, 35.274868, 37.524738>,  <24.897562, 35.246967, 37.545807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.660122, 35.274868, 37.524738>,  <24.264389, 35.321369, 37.489624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660122, 35.274868, 37.524738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103910, -0.140839, 0.984564,
		-0.102093, -0.983183, -0.151416,
		0.989333, -0.116251, 0.087784,
		24.956923, 35.239990, 37.551075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565491, 34.639267, 37.843639>,  <24.264389, 35.321369, 37.489624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565491, 34.639267, 37.843639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.798712, 34.957584, 37.909077>,  <24.938644, 35.148575, 37.948338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.798712, 34.957584, 37.909077>,  <24.565491, 34.639267, 37.843639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798712, 34.957584, 37.909077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048436, -0.166955, 0.984774,
		0.810989, -0.582099, -0.058799,
		0.583053, 0.795793, 0.163593,
		24.973627, 35.196323, 37.958153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148371, 34.543556, 38.339828>,  <24.565491, 34.639267, 37.843639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148371, 34.543556, 38.339828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.005152, 34.916775, 38.353859>,  <24.919220, 35.140705, 38.362278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.005152, 34.916775, 38.353859>,  <25.148371, 34.543556, 38.339828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005152, 34.916775, 38.353859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287145, -0.145777, 0.946730,
		0.888453, 0.328905, 0.320114,
		-0.358050, 0.933044, 0.035072,
		24.897738, 35.196690, 38.364380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027092, 34.606777, 39.056385>,  <25.148371, 34.543556, 38.339828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027092, 34.606777, 39.056385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.920341, 34.962917, 38.908844>,  <24.856291, 35.176601, 38.820320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.920341, 34.962917, 38.908844>,  <25.027092, 34.606777, 39.056385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920341, 34.962917, 38.908844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310638, 0.282832, 0.907475,
		0.912295, 0.356761, 0.201097,
		-0.266875, 0.890353, -0.368850,
		24.840279, 35.230022, 38.798187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386702, 35.206875, 39.395477>,  <25.027092, 34.606777, 39.056385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386702, 35.206875, 39.395477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.013340, 35.237064, 39.255157>,  <24.789322, 35.255180, 39.170967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.013340, 35.237064, 39.255157>,  <25.386702, 35.206875, 39.395477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013340, 35.237064, 39.255157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341168, 0.116219, 0.932790,
		0.111172, 0.990352, -0.082730,
		-0.933405, 0.075476, -0.350796,
		24.733318, 35.259708, 39.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884119, 35.098209, 39.837719>,  <25.386702, 35.206875, 39.395477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884119, 35.098209, 39.837719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.060270, 35.310684, 40.127243>,  <26.165960, 35.438171, 40.300957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.060270, 35.310684, 40.127243>,  <25.884119, 35.098209, 39.837719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060270, 35.310684, 40.127243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309814, 0.846584, -0.432795,
		-0.842664, -0.033655, 0.537387,
		0.440377, 0.531191, 0.723813,
		26.192383, 35.470043, 40.344387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348402, 34.550636, 39.656528>,  <25.884119, 35.098209, 39.837719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348402, 34.550636, 39.656528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.725426, 34.467968, 39.761497>,  <26.951639, 34.418365, 39.824478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.725426, 34.467968, 39.761497>,  <26.348402, 34.550636, 39.656528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725426, 34.467968, 39.761497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310366, -0.251365, 0.916782,
		-0.123508, -0.945570, -0.301071,
		0.942560, -0.206672, 0.262426,
		27.008194, 34.405968, 39.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478100, 33.849888, 39.891525>,  <26.348402, 34.550636, 39.656528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478100, 33.849888, 39.891525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.756891, 34.070873, 40.074394>,  <26.924166, 34.203465, 40.184116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.756891, 34.070873, 40.074394>,  <26.478100, 33.849888, 39.891525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756891, 34.070873, 40.074394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080424, -0.573289, 0.815396,
		0.712570, -0.605080, -0.355138,
		0.696977, 0.552465, 0.457171,
		26.965984, 34.236614, 40.211544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028620, 33.350552, 40.215275>,  <26.478100, 33.849888, 39.891525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028620, 33.350552, 40.215275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.961510, 33.690029, 40.415901>,  <26.921244, 33.893715, 40.536278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.961510, 33.690029, 40.415901>,  <27.028620, 33.350552, 40.215275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961510, 33.690029, 40.415901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028234, -0.512708, 0.858099,
		0.985421, 0.129808, 0.109982,
		-0.167777, 0.848693, 0.501568,
		26.911177, 33.944637, 40.566372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413641, 33.606358, 40.820751>,  <27.028620, 33.350552, 40.215275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413641, 33.606358, 40.820751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050722, 33.757580, 40.894379>,  <26.832970, 33.848312, 40.938557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.050722, 33.757580, 40.894379>,  <27.413641, 33.606358, 40.820751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050722, 33.757580, 40.894379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061173, -0.314425, 0.947309,
		0.416012, 0.870753, 0.262151,
		-0.907299, 0.378055, 0.184071,
		26.778532, 33.870995, 40.949600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366486, 34.014572, 41.408699>,  <27.413641, 33.606358, 40.820751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366486, 34.014572, 41.408699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.013704, 33.832821, 41.358585>,  <26.802034, 33.723770, 41.328518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.013704, 33.832821, 41.358585>,  <27.366486, 34.014572, 41.408699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013704, 33.832821, 41.358585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117216, -0.468908, 0.875434,
		-0.456526, 0.757408, 0.466816,
		-0.881955, -0.454377, -0.125289,
		26.749119, 33.696507, 41.320999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364134, 34.457241, 42.018288>,  <27.366486, 34.014572, 41.408699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364134, 34.457241, 42.018288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.231510, 34.287361, 42.355263>,  <27.151936, 34.185432, 42.557449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.231510, 34.287361, 42.355263>,  <27.364134, 34.457241, 42.018288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231510, 34.287361, 42.355263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942182, -0.103061, 0.318859,
		-0.048596, 0.899450, 0.434313,
		-0.331558, -0.424697, 0.842438,
		27.132042, 34.159950, 42.607994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598108, 34.785046, 42.728661>,  <27.364134, 34.457241, 42.018288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598108, 34.785046, 42.728661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.560015, 34.388592, 42.765724>,  <27.537159, 34.150719, 42.787964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.560015, 34.388592, 42.765724>,  <27.598108, 34.785046, 42.728661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560015, 34.388592, 42.765724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985233, -0.080542, 0.151094,
		-0.142291, 0.105682, 0.984167,
		-0.095234, -0.991133, 0.092661,
		27.531445, 34.091251, 42.793522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763308, 34.704899, 43.343235>,  <27.598108, 34.785046, 42.728661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763308, 34.704899, 43.343235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856802, 34.421879, 43.076481>,  <27.912899, 34.252068, 42.916428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.856802, 34.421879, 43.076481>,  <27.763308, 34.704899, 43.343235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856802, 34.421879, 43.076481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957355, 0.287270, 0.030758,
		0.169814, -0.645637, 0.744524,
		0.233738, -0.707551, -0.666887,
		27.926924, 34.209614, 42.876415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209183, 34.448959, 43.991108>,  <27.763308, 34.704899, 43.343235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209183, 34.448959, 43.991108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.294058, 34.244377, 43.658028>,  <28.344982, 34.121628, 43.458179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.294058, 34.244377, 43.658028>,  <28.209183, 34.448959, 43.991108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294058, 34.244377, 43.658028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878724, 0.472687, -0.066417,
		0.427576, -0.717620, 0.549728,
		0.212187, -0.511457, -0.832699,
		28.357714, 34.090939, 43.408218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778654, 34.088493, 44.081818>,  <28.209183, 34.448959, 43.991108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778654, 34.088493, 44.081818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.731461, 34.199409, 43.700413>,  <28.703144, 34.265961, 43.471569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.731461, 34.199409, 43.700413>,  <28.778654, 34.088493, 44.081818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731461, 34.199409, 43.700413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787064, 0.611600, 0.080470,
		0.605483, -0.740982, -0.290405,
		-0.117985, 0.277291, -0.953514,
		28.696066, 34.282597, 43.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449610, 34.027294, 43.621357>,  <28.778654, 34.088493, 44.081818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449610, 34.027294, 43.621357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196598, 34.327084, 43.543182>,  <29.044792, 34.506958, 43.496277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196598, 34.327084, 43.543182>,  <29.449610, 34.027294, 43.621357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196598, 34.327084, 43.543182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673820, 0.656895, 0.338312,
		0.381937, 0.082303, -0.920516,
		-0.632527, 0.749476, -0.195435,
		29.006840, 34.551926, 43.484550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579266, 34.500851, 43.046364>,  <29.449610, 34.027294, 43.621357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579266, 34.500851, 43.046364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427364, 34.702572, 43.356579>,  <29.336224, 34.823605, 43.542709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427364, 34.702572, 43.356579>,  <29.579266, 34.500851, 43.046364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427364, 34.702572, 43.356579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921873, 0.276125, 0.271854,
		-0.077049, 0.818188, -0.569765,
		-0.379754, 0.504305, 0.775541,
		29.313438, 34.853863, 43.589241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491177, 35.316029, 43.105442>,  <29.579266, 34.500851, 43.046364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491177, 35.316029, 43.105442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599573, 35.083385, 43.412243>,  <29.664612, 34.943798, 43.596325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599573, 35.083385, 43.412243>,  <29.491177, 35.316029, 43.105442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599573, 35.083385, 43.412243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929856, 0.364175, -0.052379,
		-0.248858, 0.727395, 0.639504,
		0.270992, -0.581612, 0.767001,
		29.680870, 34.908901, 43.642342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987972, 35.649445, 43.557091>,  <29.491177, 35.316029, 43.105442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987972, 35.649445, 43.557091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073570, 35.266228, 43.633377>,  <30.124929, 35.036297, 43.679150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073570, 35.266228, 43.633377>,  <29.987972, 35.649445, 43.557091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073570, 35.266228, 43.633377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972023, 0.228197, 0.055656,
		-0.096840, 0.173466, 0.980067,
		0.213994, -0.958037, 0.190711,
		30.137768, 34.978817, 43.690590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336292, 35.551449, 44.251625>,  <29.987972, 35.649445, 43.557091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336292, 35.551449, 44.251625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424351, 35.299137, 43.953995>,  <30.477186, 35.147751, 43.775417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424351, 35.299137, 43.953995>,  <30.336292, 35.551449, 44.251625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424351, 35.299137, 43.953995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973762, 0.187186, 0.129420,
		0.057645, -0.753044, 0.655440,
		0.220148, -0.630782, -0.744076,
		30.490395, 35.109901, 43.730770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841356, 36.171898, 44.093658>,  <30.336292, 35.551449, 44.251625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841356, 36.171898, 44.093658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212225, 36.156891, 44.242764>,  <31.434746, 36.147888, 44.332226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212225, 36.156891, 44.242764>,  <30.841356, 36.171898, 44.093658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212225, 36.156891, 44.242764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337883, 0.346076, 0.875252,
		-0.161838, -0.937456, 0.308195,
		0.927170, -0.037515, 0.372758,
		31.490376, 36.145638, 44.354591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875607, 35.728130, 44.754021>,  <30.841356, 36.171898, 44.093658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875607, 35.728130, 44.754021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141079, 36.027039, 44.740696>,  <31.300362, 36.206383, 44.732700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141079, 36.027039, 44.740696>,  <30.875607, 35.728130, 44.754021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141079, 36.027039, 44.740696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341984, 0.342730, 0.874976,
		0.665263, -0.569313, 0.483019,
		0.663680, 0.747274, -0.033309,
		31.340183, 36.251221, 44.730701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374441, 35.618233, 45.338421>,  <30.875607, 35.728130, 44.754021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374441, 35.618233, 45.338421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315424, 36.000340, 45.235897>,  <31.280014, 36.229603, 45.174381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315424, 36.000340, 45.235897>,  <31.374441, 35.618233, 45.338421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315424, 36.000340, 45.235897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350491, 0.191832, 0.916710,
		0.924872, 0.225087, 0.306509,
		-0.147541, 0.955268, -0.256311,
		31.271162, 36.286919, 45.159004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289013, 36.074322, 45.994339>,  <31.374441, 35.618233, 45.338421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289013, 36.074322, 45.994339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686237, 36.120125, 46.005070>,  <31.924572, 36.147606, 46.011509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686237, 36.120125, 46.005070>,  <31.289013, 36.074322, 45.994339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686237, 36.120125, 46.005070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000111, -0.227174, 0.973854,
		0.117606, -0.967099, -0.225585,
		0.993060, 0.114506, 0.026824,
		31.984156, 36.154476, 46.013119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552221, 35.327560, 46.285122>,  <31.289013, 36.074322, 45.994339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552221, 35.327560, 46.285122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773115, 35.653255, 46.356747>,  <31.905651, 35.848671, 46.399723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773115, 35.653255, 46.356747>,  <31.552221, 35.327560, 46.285122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773115, 35.653255, 46.356747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058315, -0.251983, 0.965973,
		0.831648, -0.523000, -0.186636,
		0.552233, 0.814233, 0.179062,
		31.938786, 35.897526, 46.410465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187840, 35.151592, 46.516758>,  <31.552221, 35.327560, 46.285122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187840, 35.151592, 46.516758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.127968, 35.529007, 46.634960>,  <32.092045, 35.755455, 46.705883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.127968, 35.529007, 46.634960>,  <32.187840, 35.151592, 46.516758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127968, 35.529007, 46.634960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196824, -0.264458, 0.944099,
		0.968946, 0.199479, -0.146127,
		-0.149683, 0.943542, 0.295507,
		32.083061, 35.812069, 46.723614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610832, 35.229668, 47.148312>,  <32.187840, 35.151592, 46.516758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610832, 35.229668, 47.148312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335331, 35.516411, 47.191639>,  <32.170033, 35.688457, 47.217636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335331, 35.516411, 47.191639>,  <32.610832, 35.229668, 47.148312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335331, 35.516411, 47.191639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168301, 0.012769, 0.985653,
		0.705192, 0.697100, -0.129443,
		-0.688751, 0.716860, 0.108318,
		32.128704, 35.731468, 47.224133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751183, 35.665798, 47.712288>,  <32.610832, 35.229668, 47.148312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751183, 35.665798, 47.712288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365082, 35.768913, 47.695122>,  <32.133423, 35.830780, 47.684822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365082, 35.768913, 47.695122>,  <32.751183, 35.665798, 47.712288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365082, 35.768913, 47.695122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011213, 0.204911, 0.978716,
		0.261092, 0.944224, -0.200680,
		-0.965249, 0.257785, -0.042913,
		32.075508, 35.846249, 47.682247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763309, 36.409771, 47.895344>,  <32.751183, 35.665798, 47.712288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763309, 36.409771, 47.895344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447186, 36.178314, 47.975929>,  <32.257511, 36.039440, 48.024281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447186, 36.178314, 47.975929>,  <32.763309, 36.409771, 47.895344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447186, 36.178314, 47.975929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073723, 0.236613, 0.968803,
		-0.608259, 0.780505, -0.144338,
		-0.790308, -0.578642, 0.201463,
		32.210094, 36.004723, 48.036369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784885, 35.994644, 48.494034>,  <32.763309, 36.409771, 47.895344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784885, 35.994644, 48.494034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492832, 35.783482, 48.320499>,  <32.317600, 35.656784, 48.216377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492832, 35.783482, 48.320499>,  <32.784885, 35.994644, 48.494034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492832, 35.783482, 48.320499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508409, 0.843913, -0.171260,
		0.456532, 0.095524, -0.884564,
		-0.730136, -0.527907, -0.433839,
		32.273792, 35.625111, 48.190350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617558, 35.723885, 49.231636>,  <32.784885, 35.994644, 48.494034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617558, 35.723885, 49.231636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291592, 35.932625, 49.332504>,  <32.096012, 36.057869, 49.393024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291592, 35.932625, 49.332504>,  <32.617558, 35.723885, 49.231636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291592, 35.932625, 49.332504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526411, -0.484374, -0.698765,
		-0.242504, -0.702179, 0.669430,
		-0.814913, 0.521849, 0.252172,
		32.047119, 36.089180, 49.408157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067314, 35.118225, 49.565861>,  <32.617558, 35.723885, 49.231636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067314, 35.118225, 49.565861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149944, 34.738453, 49.660439>,  <32.199520, 34.510590, 49.717186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149944, 34.738453, 49.660439>,  <32.067314, 35.118225, 49.565861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149944, 34.738453, 49.660439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908836, 0.096683, -0.405796,
		0.362416, 0.298715, 0.882850,
		0.206574, -0.949432, 0.236444,
		32.211918, 34.453625, 49.731373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676430, 35.224327, 50.057697>,  <32.067314, 35.118225, 49.565861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676430, 35.224327, 50.057697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650211, 34.856514, 49.902691>,  <32.634480, 34.635826, 49.809689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650211, 34.856514, 49.902691>,  <32.676430, 35.224327, 50.057697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650211, 34.856514, 49.902691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822017, 0.170399, -0.543371,
		0.565678, -0.354155, 0.744703,
		-0.065542, -0.919532, -0.387513,
		32.630550, 34.580654, 49.786438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279549, 34.903107, 50.172035>,  <32.676430, 35.224327, 50.057697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279549, 34.903107, 50.172035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129578, 34.682381, 49.874062>,  <33.039597, 34.549946, 49.695278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129578, 34.682381, 49.874062>,  <33.279549, 34.903107, 50.172035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129578, 34.682381, 49.874062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846594, 0.123645, -0.517678,
		0.377771, -0.824749, 0.420806,
		-0.374924, -0.551816, -0.744937,
		33.017101, 34.516834, 49.650581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778255, 34.358753, 50.001686>,  <33.279549, 34.903107, 50.172035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778255, 34.358753, 50.001686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571915, 34.416691, 49.663948>,  <33.448109, 34.451454, 49.461304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571915, 34.416691, 49.663948>,  <33.778255, 34.358753, 50.001686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571915, 34.416691, 49.663948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831951, 0.319793, -0.453420,
		0.204339, -0.936350, -0.285470,
		-0.515851, 0.144846, -0.844344,
		33.417160, 34.460144, 49.410645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103241, 33.894573, 49.586010>,  <33.778255, 34.358753, 50.001686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103241, 33.894573, 49.586010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905827, 34.163151, 49.364895>,  <33.787376, 34.324299, 49.232224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905827, 34.163151, 49.364895>,  <34.103241, 33.894573, 49.586010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905827, 34.163151, 49.364895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773405, 0.048095, -0.632085,
		-0.397826, -0.739489, -0.543038,
		-0.493538, 0.671448, -0.552791,
		33.757767, 34.364586, 49.199059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162571, 33.625824, 48.908165>,  <34.103241, 33.894573, 49.586010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162571, 33.625824, 48.908165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076664, 34.016018, 48.888996>,  <34.025120, 34.250137, 48.877495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076664, 34.016018, 48.888996>,  <34.162571, 33.625824, 48.908165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076664, 34.016018, 48.888996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697771, 0.118919, -0.706380,
		-0.683368, -0.185144, -0.706208,
		-0.214763, 0.975490, -0.047922,
		34.012234, 34.308666, 48.874619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018311, 33.827122, 48.195896>,  <34.162571, 33.625824, 48.908165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018311, 33.827122, 48.195896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.142124, 34.163376, 48.373665>,  <34.216412, 34.365128, 48.480328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.142124, 34.163376, 48.373665>,  <34.018311, 33.827122, 48.195896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142124, 34.163376, 48.373665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723134, 0.095391, -0.684089,
		-0.617465, 0.533131, -0.578366,
		0.309539, 0.840638, 0.444426,
		34.234985, 34.415565, 48.506992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010475, 34.419289, 47.606628>,  <34.018311, 33.827122, 48.195896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010475, 34.419289, 47.606628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255360, 34.519367, 47.906654>,  <34.402290, 34.579414, 48.086670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255360, 34.519367, 47.906654>,  <34.010475, 34.419289, 47.606628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255360, 34.519367, 47.906654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600542, 0.469932, -0.646926,
		-0.514338, 0.846502, 0.137446,
		0.612215, 0.250196, 0.750063,
		34.439026, 34.594425, 48.131672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302319, 35.141083, 47.497601>,  <34.010475, 34.419289, 47.606628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302319, 35.141083, 47.497601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554138, 35.001526, 47.775291>,  <34.705231, 34.917793, 47.941906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554138, 35.001526, 47.775291>,  <34.302319, 35.141083, 47.497601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554138, 35.001526, 47.775291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776746, 0.303818, -0.551689,
		-0.018438, 0.886548, 0.462269,
		0.629545, -0.348893, 0.694224,
		34.743000, 34.896858, 47.983559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768318, 35.603100, 47.397663>,  <34.302319, 35.141083, 47.497601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768318, 35.603100, 47.397663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952435, 35.316330, 47.607098>,  <35.062904, 35.144268, 47.732758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952435, 35.316330, 47.607098>,  <34.768318, 35.603100, 47.397663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952435, 35.316330, 47.607098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836209, 0.152069, -0.526906,
		0.298133, 0.680359, 0.669499,
		0.460295, -0.716929, 0.523585,
		35.090523, 35.101250, 47.764172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412125, 35.902996, 47.620930>,  <34.768318, 35.603100, 47.397663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412125, 35.902996, 47.620930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467663, 35.507126, 47.606655>,  <35.500984, 35.269604, 47.598091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467663, 35.507126, 47.606655>,  <35.412125, 35.902996, 47.620930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467663, 35.507126, 47.606655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782843, 0.131752, -0.608111,
		0.606531, 0.056496, 0.793050,
		0.138842, -0.989672, -0.035685,
		35.509315, 35.210224, 47.595951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128735, 35.776554, 47.556877>,  <35.412125, 35.902996, 47.620930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128735, 35.776554, 47.556877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021946, 35.409302, 47.439739>,  <35.957874, 35.188950, 47.369457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021946, 35.409302, 47.439739>,  <36.128735, 35.776554, 47.556877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021946, 35.409302, 47.439739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570394, 0.094391, -0.815929,
		0.776773, -0.384869, 0.498497,
		-0.266972, -0.918132, -0.292848,
		35.941853, 35.133862, 47.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667400, 35.446545, 47.423050>,  <36.128735, 35.776554, 47.556877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667400, 35.446545, 47.423050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409046, 35.221027, 47.217148>,  <36.254032, 35.085716, 47.093609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409046, 35.221027, 47.217148>,  <36.667400, 35.446545, 47.423050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409046, 35.221027, 47.217148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649247, -0.050924, -0.758871,
		0.401631, -0.824346, 0.398931,
		-0.645888, -0.563791, -0.514752,
		36.215279, 35.051891, 47.062721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025372, 34.884373, 47.216396>,  <36.667400, 35.446545, 47.423050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025372, 34.884373, 47.216396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719555, 34.879200, 46.958622>,  <36.536064, 34.876095, 46.803955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719555, 34.879200, 46.958622>,  <37.025372, 34.884373, 47.216396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719555, 34.879200, 46.958622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644409, 0.006983, -0.764649,
		0.014402, -0.999892, 0.003006,
		-0.764546, -0.012950, -0.644440,
		36.490192, 34.875320, 46.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211967, 34.387291, 46.796680>,  <37.025372, 34.884373, 47.216396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211967, 34.387291, 46.796680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983795, 34.648682, 46.597652>,  <36.846889, 34.805515, 46.478233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983795, 34.648682, 46.597652>,  <37.211967, 34.387291, 46.796680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983795, 34.648682, 46.597652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745196, 0.157027, -0.648094,
		-0.345380, -0.740484, -0.576538,
		-0.570435, 0.653472, -0.497571,
		36.812664, 34.844723, 46.448380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673203, 33.883801, 47.015259>,  <37.211967, 34.387291, 46.796680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673203, 33.883801, 47.015259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024063, 34.056778, 46.931740>,  <38.234577, 34.160564, 46.881626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024063, 34.056778, 46.931740>,  <37.673203, 33.883801, 47.015259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024063, 34.056778, 46.931740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216562, 0.031863, 0.975749,
		0.428614, -0.901096, -0.065704,
		0.877149, 0.432448, -0.208800,
		38.287209, 34.186512, 46.869099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267921, 33.537666, 47.313972>,  <37.673203, 33.883801, 47.015259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267921, 33.537666, 47.313972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387791, 33.918224, 47.285568>,  <38.459713, 34.146561, 47.268524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387791, 33.918224, 47.285568>,  <38.267921, 33.537666, 47.313972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387791, 33.918224, 47.285568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183396, 0.015601, 0.982915,
		0.936250, -0.307572, -0.169807,
		0.299669, 0.951397, -0.071014,
		38.477692, 34.203644, 47.264263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933590, 33.547447, 47.619888>,  <38.267921, 33.537666, 47.313972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933590, 33.547447, 47.619888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773426, 33.911915, 47.658768>,  <38.677330, 34.130596, 47.682095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773426, 33.911915, 47.658768>,  <38.933590, 33.547447, 47.619888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773426, 33.911915, 47.658768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372242, 0.064812, 0.925870,
		0.837323, 0.406906, -0.365126,
		-0.400406, 0.911168, 0.097199,
		38.653305, 34.185265, 47.687927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232571, 33.200336, 48.255901>,  <38.933590, 33.547447, 47.619888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232571, 33.200336, 48.255901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152081, 33.530796, 48.466423>,  <39.103786, 33.729073, 48.592735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.152081, 33.530796, 48.466423>,  <39.232571, 33.200336, 48.255901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152081, 33.530796, 48.466423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516092, -0.546085, 0.659878,
		0.832560, -0.138836, 0.536253,
		-0.201226, 0.826145, 0.526301,
		39.091713, 33.778641, 48.624313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416046, 33.277073, 48.933571>,  <39.232571, 33.200336, 48.255901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416046, 33.277073, 48.933571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065849, 33.450584, 48.848392>,  <38.855732, 33.554691, 48.797287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065849, 33.450584, 48.848392>,  <39.416046, 33.277073, 48.933571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065849, 33.450584, 48.848392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469493, -0.659233, 0.587357,
		0.114402, 0.614204, 0.780811,
		-0.875493, 0.433780, -0.212947,
		38.803200, 33.580719, 48.784508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983387, 33.138710, 49.533062>,  <39.416046, 33.277073, 48.933571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983387, 33.138710, 49.533062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.715141, 33.176147, 49.238708>,  <38.554195, 33.198612, 49.062096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.715141, 33.176147, 49.238708>,  <38.983387, 33.138710, 49.533062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715141, 33.176147, 49.238708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485631, -0.805276, 0.340138,
		-0.560750, 0.585467, 0.585481,
		-0.670613, 0.093595, -0.735879,
		38.513958, 33.204227, 49.017944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233391, 32.982826, 49.825165>,  <38.983387, 33.138710, 49.533062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233391, 32.982826, 49.825165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237370, 32.918373, 49.430412>,  <38.239758, 32.879700, 49.193562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237370, 32.918373, 49.430412>,  <38.233391, 32.982826, 49.825165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237370, 32.918373, 49.430412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446891, -0.883604, 0.139764,
		-0.894533, 0.439638, -0.080802,
		0.009952, -0.161133, -0.986883,
		38.240356, 32.870033, 49.134346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908550, 32.986187, 50.541882>,  <38.233391, 32.982826, 49.825165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908550, 32.986187, 50.541882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670395, 33.269165, 50.389553>,  <37.527500, 33.438953, 50.298157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670395, 33.269165, 50.389553>,  <37.908550, 32.986187, 50.541882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670395, 33.269165, 50.389553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484120, 0.062384, 0.872775,
		0.641201, 0.704006, 0.305348,
		-0.595390, 0.707449, -0.380824,
		37.491779, 33.481400, 50.275307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900867, 33.553795, 50.975403>,  <37.908550, 32.986187, 50.541882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900867, 33.553795, 50.975403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566410, 33.606239, 50.762360>,  <37.365734, 33.637707, 50.634533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566410, 33.606239, 50.762360>,  <37.900867, 33.553795, 50.975403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566410, 33.606239, 50.762360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523686, 0.097970, 0.846259,
		0.163133, 0.986515, -0.013256,
		-0.836146, 0.131111, -0.532607,
		37.315567, 33.645573, 50.602577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514252, 34.179066, 51.261749>,  <37.900867, 33.553795, 50.975403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514252, 34.179066, 51.261749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246071, 33.959026, 51.062599>,  <37.085163, 33.827003, 50.943108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246071, 33.959026, 51.062599>,  <37.514252, 34.179066, 51.261749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246071, 33.959026, 51.062599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623235, 0.053455, 0.780205,
		-0.402576, 0.833387, -0.378680,
		-0.670455, -0.550099, -0.497876,
		37.044933, 33.793995, 50.913235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856144, 34.505676, 51.355759>,  <37.514252, 34.179066, 51.261749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856144, 34.505676, 51.355759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750359, 34.140324, 51.231964>,  <36.686886, 33.921112, 51.157688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.750359, 34.140324, 51.231964>,  <36.856144, 34.505676, 51.355759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750359, 34.140324, 51.231964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683676, -0.048770, 0.728154,
		-0.680179, 0.404164, -0.611562,
		-0.264468, -0.913385, -0.309490,
		36.671017, 33.866306, 51.139118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121452, 34.503483, 51.263123>,  <36.856144, 34.505676, 51.355759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121452, 34.503483, 51.263123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233482, 34.127117, 51.339272>,  <36.300701, 33.901299, 51.384960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233482, 34.127117, 51.339272>,  <36.121452, 34.503483, 51.263123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233482, 34.127117, 51.339272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670066, -0.049601, 0.740642,
		-0.687439, -0.334992, -0.644367,
		0.280071, -0.940914, 0.190370,
		36.317505, 33.844841, 51.396381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516987, 34.145927, 51.338837>,  <36.121452, 34.503483, 51.263123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516987, 34.145927, 51.338837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755863, 33.879105, 51.517002>,  <35.899189, 33.719009, 51.623901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755863, 33.879105, 51.517002>,  <35.516987, 34.145927, 51.338837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755863, 33.879105, 51.517002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685219, -0.135624, 0.715599,
		-0.416940, -0.732554, -0.538076,
		0.597190, -0.667062, 0.445413,
		35.935020, 33.678986, 51.650627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115246, 33.503956, 51.516212>,  <35.516987, 34.145927, 51.338837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115246, 33.503956, 51.516212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433331, 33.503529, 51.758747>,  <35.624180, 33.503273, 51.904266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433331, 33.503529, 51.758747>,  <35.115246, 33.503956, 51.516212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433331, 33.503529, 51.758747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575537, -0.315980, 0.754264,
		0.190784, -0.948765, -0.251885,
		0.795210, -0.001068, 0.606333,
		35.671894, 33.503208, 51.940647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072956, 32.814640, 51.936325>,  <35.115246, 33.503956, 51.516212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072956, 32.814640, 51.936325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311127, 33.063808, 52.139275>,  <35.454029, 33.213310, 52.261044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311127, 33.063808, 52.139275>,  <35.072956, 32.814640, 51.936325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311127, 33.063808, 52.139275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406042, -0.311614, 0.859085,
		0.693248, -0.717542, 0.067387,
		0.595430, 0.622921, 0.507378,
		35.489758, 33.250683, 52.291489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339592, 32.382111, 52.435116>,  <35.072956, 32.814640, 51.936325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339592, 32.382111, 52.435116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391960, 32.757015, 52.564362>,  <35.423382, 32.981956, 52.641911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391960, 32.757015, 52.564362>,  <35.339592, 32.382111, 52.435116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391960, 32.757015, 52.564362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241096, -0.286039, 0.927391,
		0.961630, -0.199316, 0.188521,
		0.130919, 0.937259, 0.323118,
		35.431236, 33.038193, 52.661297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836388, 32.324333, 53.070000>,  <35.339592, 32.382111, 52.435116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836388, 32.324333, 53.070000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661503, 32.681953, 53.109035>,  <35.556572, 32.896526, 53.132458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661503, 32.681953, 53.109035>,  <35.836388, 32.324333, 53.070000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661503, 32.681953, 53.109035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259084, -0.229119, 0.938286,
		0.861233, 0.384943, 0.331807,
		-0.437210, 0.894049, 0.097592,
		35.530338, 32.950169, 53.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069035, 32.620350, 53.726418>,  <35.836388, 32.324333, 53.070000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069035, 32.620350, 53.726418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731342, 32.817547, 53.642292>,  <35.528725, 32.935863, 53.591816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731342, 32.817547, 53.642292>,  <36.069035, 32.620350, 53.726418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731342, 32.817547, 53.642292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326460, -0.161765, 0.931266,
		0.425082, 0.854865, 0.297509,
		-0.844233, 0.492989, -0.210316,
		35.478073, 32.965443, 53.579197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940205, 32.971943, 54.358788>,  <36.069035, 32.620350, 53.726418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940205, 32.971943, 54.358788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597328, 32.991165, 54.153687>,  <35.391602, 33.002697, 54.030628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597328, 32.991165, 54.153687>,  <35.940205, 32.971943, 54.358788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597328, 32.991165, 54.153687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514729, -0.111880, 0.850022,
		-0.016522, 0.992559, 0.120636,
		-0.857193, 0.048051, -0.512748,
		35.340172, 33.005581, 53.999863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608143, 33.569725, 54.717216>,  <35.940205, 32.971943, 54.358788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608143, 33.569725, 54.717216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349785, 33.330803, 54.527039>,  <35.194771, 33.187450, 54.412933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349785, 33.330803, 54.527039>,  <35.608143, 33.569725, 54.717216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349785, 33.330803, 54.527039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613388, 0.035260, 0.788994,
		-0.454505, 0.801240, -0.389152,
		-0.645896, -0.597303, -0.475445,
		35.156017, 33.151611, 54.384403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982403, 33.934246, 54.493755>,  <35.608143, 33.569725, 54.717216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982403, 33.934246, 54.493755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866959, 33.552769, 54.527645>,  <34.797691, 33.323883, 54.547981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866959, 33.552769, 54.527645>,  <34.982403, 33.934246, 54.493755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866959, 33.552769, 54.527645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582571, 0.245146, 0.774929,
		-0.759813, 0.174293, -0.626344,
		-0.288610, -0.953690, 0.084727,
		34.780376, 33.266663, 54.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399395, 33.974930, 54.899811>,  <34.982403, 33.934246, 54.493755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399395, 33.974930, 54.899811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455399, 33.578899, 54.894897>,  <34.489002, 33.341282, 54.891949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455399, 33.578899, 54.894897>,  <34.399395, 33.974930, 54.899811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455399, 33.578899, 54.894897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529399, -0.085332, 0.844071,
		-0.836740, -0.111676, -0.536092,
		0.140008, -0.990074, -0.012280,
		34.497402, 33.281876, 54.891212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755676, 33.500565, 54.902336>,  <34.399395, 33.974930, 54.899811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755676, 33.500565, 54.902336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063198, 33.328735, 55.091824>,  <34.247711, 33.225639, 55.205517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063198, 33.328735, 55.091824>,  <33.755676, 33.500565, 54.902336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063198, 33.328735, 55.091824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525801, -0.003015, 0.850603,
		-0.363964, -0.903029, -0.228186,
		0.768807, -0.429569, 0.473716,
		34.293839, 33.199863, 55.233940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471951, 33.062332, 55.397137>,  <33.755676, 33.500565, 54.902336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471951, 33.062332, 55.397137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850422, 33.070541, 55.526337>,  <34.077503, 33.075466, 55.603855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850422, 33.070541, 55.526337>,  <33.471951, 33.062332, 55.397137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850422, 33.070541, 55.526337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320048, -0.089164, 0.943196,
		0.048161, -0.995805, -0.077795,
		0.946177, 0.020527, 0.322999,
		34.134274, 33.076698, 55.623238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531830, 32.562294, 55.936211>,  <33.471951, 33.062332, 55.397137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531830, 32.562294, 55.936211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833443, 32.816742, 56.001671>,  <34.014412, 32.969410, 56.040947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833443, 32.816742, 56.001671>,  <33.531830, 32.562294, 55.936211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833443, 32.816742, 56.001671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273935, 0.078108, 0.958571,
		0.596988, -0.767623, 0.233152,
		0.754033, 0.636124, 0.163649,
		34.059654, 33.007580, 56.050766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771851, 32.217522, 56.451233>,  <33.531830, 32.562294, 55.936211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771851, 32.217522, 56.451233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.950539, 32.574787, 56.471992>,  <34.057751, 32.789146, 56.484447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.950539, 32.574787, 56.471992>,  <33.771851, 32.217522, 56.451233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950539, 32.574787, 56.471992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014047, -0.051004, 0.998600,
		0.894563, -0.446824, -0.010238,
		0.446720, 0.893167, 0.051903,
		34.084557, 32.842739, 56.487564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213253, 32.228905, 57.014313>,  <33.771851, 32.217522, 56.451233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213253, 32.228905, 57.014313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155678, 32.621021, 56.960178>,  <34.121132, 32.856293, 56.927700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155678, 32.621021, 56.960178>,  <34.213253, 32.228905, 57.014313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155678, 32.621021, 56.960178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055816, 0.128497, 0.990138,
		0.988012, 0.150069, 0.036221,
		-0.143934, 0.980290, -0.135333,
		34.112499, 32.915108, 56.919579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621830, 32.571331, 57.476887>,  <34.213253, 32.228905, 57.014313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621830, 32.571331, 57.476887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327534, 32.827045, 57.387440>,  <34.150955, 32.980473, 57.333771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327534, 32.827045, 57.387440>,  <34.621830, 32.571331, 57.476887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327534, 32.827045, 57.387440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079520, 0.246348, 0.965913,
		0.672581, 0.728442, -0.130412,
		-0.735738, 0.639285, -0.223615,
		34.106812, 33.018829, 57.320354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585720, 33.124805, 57.978920>,  <34.621830, 32.571331, 57.476887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585720, 33.124805, 57.978920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232929, 33.183987, 57.799934>,  <34.021255, 33.219494, 57.692543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232929, 33.183987, 57.799934>,  <34.585720, 33.124805, 57.978920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232929, 33.183987, 57.799934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380908, 0.335338, 0.861660,
		0.277536, 0.930408, -0.239405,
		-0.881977, 0.147951, -0.447468,
		33.968338, 33.228371, 57.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358364, 33.768932, 58.240364>,  <34.585720, 33.124805, 57.978920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358364, 33.768932, 58.240364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029236, 33.580109, 58.113792>,  <33.831760, 33.466816, 58.037849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029236, 33.580109, 58.113792>,  <34.358364, 33.768932, 58.240364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029236, 33.580109, 58.113792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475024, 0.265646, 0.838919,
		-0.311959, 0.840592, -0.442817,
		-0.822821, -0.472057, -0.316431,
		33.782391, 33.438492, 58.018864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797005, 34.189941, 58.596889>,  <34.358364, 33.768932, 58.240364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797005, 34.189941, 58.596889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635593, 33.847004, 58.469059>,  <33.538746, 33.641243, 58.392361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635593, 33.847004, 58.469059>,  <33.797005, 34.189941, 58.596889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635593, 33.847004, 58.469059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654883, 0.026711, 0.755258,
		-0.638978, 0.514054, -0.572237,
		-0.403528, -0.857342, -0.319578,
		33.514534, 33.589802, 58.373184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143589, 34.344959, 58.519825>,  <33.797005, 34.189941, 58.596889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143589, 34.344959, 58.519825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139771, 33.947723, 58.566624>,  <33.137478, 33.709381, 58.594704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139771, 33.947723, 58.566624>,  <33.143589, 34.344959, 58.519825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139771, 33.947723, 58.566624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791786, 0.078965, 0.605673,
		-0.610724, -0.086851, -0.787066,
		-0.009548, -0.993087, 0.116993,
		33.136906, 33.649796, 58.601723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453156, 34.172707, 58.470970>,  <33.143589, 34.344959, 58.519825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453156, 34.172707, 58.470970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624149, 33.865231, 58.661289>,  <32.726746, 33.680748, 58.775478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624149, 33.865231, 58.661289>,  <32.453156, 34.172707, 58.470970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624149, 33.865231, 58.661289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697851, 0.053984, 0.714205,
		-0.574685, -0.637344, -0.513351,
		0.427482, -0.768686, 0.475796,
		32.752396, 33.634624, 58.804028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952511, 33.924999, 58.792034>,  <32.453156, 34.172707, 58.470970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952511, 33.924999, 58.792034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237968, 33.743668, 59.005653>,  <32.409245, 33.634869, 59.133823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237968, 33.743668, 59.005653>,  <31.952511, 33.924999, 58.792034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237968, 33.743668, 59.005653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600728, -0.003895, 0.799444,
		-0.360333, -0.891334, -0.275108,
		0.713643, -0.453331, 0.534046,
		32.452061, 33.607670, 59.165867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731735, 33.345459, 59.161175>,  <31.952511, 33.924999, 58.792034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731735, 33.345459, 59.161175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047352, 33.485901, 59.362823>,  <32.236721, 33.570168, 59.483814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047352, 33.485901, 59.362823>,  <31.731735, 33.345459, 59.161175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047352, 33.485901, 59.362823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603977, 0.293274, 0.741081,
		0.112349, -0.889223, 0.443464,
		0.789043, 0.351102, 0.504122,
		32.284065, 33.591232, 59.514061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774103, 32.989876, 59.702194>,  <31.731735, 33.345459, 59.161175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774103, 32.989876, 59.702194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.955746, 33.323196, 59.828297>,  <32.064732, 33.523190, 59.903957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.955746, 33.323196, 59.828297>,  <31.774103, 32.989876, 59.702194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955746, 33.323196, 59.828297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642792, 0.061412, 0.763575,
		0.616931, -0.549391, 0.563530,
		0.454108, 0.833305, 0.315257,
		32.091980, 33.573189, 59.922874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883774, 32.933308, 60.392895>,  <31.774103, 32.989876, 59.702194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883774, 32.933308, 60.392895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964508, 33.324078, 60.364933>,  <32.012947, 33.558540, 60.348156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964508, 33.324078, 60.364933>,  <31.883774, 32.933308, 60.392895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964508, 33.324078, 60.364933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630231, 0.184177, 0.754247,
		0.749714, -0.108179, 0.652860,
		0.201836, 0.976922, -0.069902,
		32.025059, 33.617153, 60.343964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947437, 33.128376, 61.025444>,  <31.883774, 32.933308, 60.392895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947437, 33.128376, 61.025444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840933, 33.449043, 60.811367>,  <31.777029, 33.641445, 60.682922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840933, 33.449043, 60.811367>,  <31.947437, 33.128376, 61.025444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840933, 33.449043, 60.811367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643411, 0.265610, 0.717965,
		0.717723, 0.535515, 0.445082,
		-0.266263, 0.801671, -0.535190,
		31.761055, 33.689545, 60.650810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924204, 33.694595, 61.520897>,  <31.947437, 33.128376, 61.025444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924204, 33.694595, 61.520897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711311, 33.830715, 61.210819>,  <31.583576, 33.912388, 61.024773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711311, 33.830715, 61.210819>,  <31.924204, 33.694595, 61.520897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711311, 33.830715, 61.210819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552706, 0.553923, 0.622644,
		0.641284, 0.759844, -0.106729,
		-0.532232, 0.340302, -0.775193,
		31.551641, 33.932804, 60.978260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773113, 34.355129, 61.722244>,  <31.924204, 33.694595, 61.520897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773113, 34.355129, 61.722244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.527327, 34.279671, 61.415821>,  <31.379854, 34.234394, 61.231968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.527327, 34.279671, 61.415821>,  <31.773113, 34.355129, 61.722244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527327, 34.279671, 61.415821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698820, 0.580807, 0.417509,
		0.366167, 0.791880, -0.488720,
		-0.614469, -0.188649, -0.766055,
		31.342985, 34.223076, 61.186005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664600, 34.948532, 61.447857>,  <31.773113, 34.355129, 61.722244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664600, 34.948532, 61.447857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335386, 34.730877, 61.382710>,  <31.137857, 34.600285, 61.343620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335386, 34.730877, 61.382710>,  <31.664600, 34.948532, 61.447857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335386, 34.730877, 61.382710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517448, 0.600070, 0.610052,
		-0.234215, 0.586374, -0.775441,
		-0.823038, -0.544134, -0.162873,
		31.088474, 34.567638, 61.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052204, 35.434570, 61.283234>,  <31.664600, 34.948532, 61.447857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052204, 35.434570, 61.283234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900219, 35.081936, 61.395260>,  <30.809029, 34.870358, 61.462475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900219, 35.081936, 61.395260>,  <31.052204, 35.434570, 61.283234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900219, 35.081936, 61.395260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671142, 0.471104, 0.572388,
		-0.636550, 0.029520, -0.770670,
		-0.379963, -0.881583, 0.280069,
		30.786230, 34.817459, 61.479282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299610, 35.594925, 61.386780>,  <31.052204, 35.434570, 61.283234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299610, 35.594925, 61.386780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370138, 35.263424, 61.599228>,  <30.412455, 35.064526, 61.726696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370138, 35.263424, 61.599228>,  <30.299610, 35.594925, 61.386780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370138, 35.263424, 61.599228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643823, 0.311054, 0.699098,
		-0.744583, -0.465210, -0.478724,
		0.176318, -0.828750, 0.531118,
		30.423033, 35.014797, 61.758564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703375, 35.649990, 61.844814>,  <30.299610, 35.594925, 61.386780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703375, 35.649990, 61.844814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.907225, 35.345337, 62.004913>,  <30.029533, 35.162544, 62.100975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.907225, 35.345337, 62.004913>,  <29.703375, 35.649990, 61.844814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907225, 35.345337, 62.004913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450759, 0.159903, 0.878207,
		-0.732872, -0.627972, -0.261822,
		0.509623, -0.761631, 0.400252,
		30.060112, 35.116848, 62.124989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177740, 35.181385, 62.210186>,  <29.703375, 35.649990, 61.844814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177740, 35.181385, 62.210186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548388, 35.151928, 62.357674>,  <29.770775, 35.134254, 62.446167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548388, 35.151928, 62.357674>,  <29.177740, 35.181385, 62.210186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548388, 35.151928, 62.357674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369267, 0.006588, 0.929300,
		-0.070867, -0.997263, -0.021090,
		0.926617, -0.073645, 0.368723,
		29.826372, 35.129837, 62.468292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165831, 34.710442, 62.781166>,  <29.177740, 35.181385, 62.210186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165831, 34.710442, 62.781166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.509283, 34.895687, 62.869057>,  <29.715355, 35.006832, 62.921791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.509283, 34.895687, 62.869057>,  <29.165831, 34.710442, 62.781166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509283, 34.895687, 62.869057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234968, -0.025365, 0.971672,
		0.455565, -0.885937, 0.087036,
		0.858633, 0.463111, 0.219722,
		29.766872, 35.034618, 62.934975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496201, 34.228725, 63.244846>,  <29.165831, 34.710442, 62.781166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496201, 34.228725, 63.244846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.654690, 34.588486, 63.318687>,  <29.749783, 34.804344, 63.362991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.654690, 34.588486, 63.318687>,  <29.496201, 34.228725, 63.244846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654690, 34.588486, 63.318687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422764, 0.000240, 0.906240,
		0.815033, -0.437115, 0.380331,
		0.396222, 0.899405, 0.184601,
		29.773556, 34.858307, 63.374069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794497, 34.045982, 63.860004>,  <29.496201, 34.228725, 63.244846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794497, 34.045982, 63.860004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.723530, 34.435612, 63.803864>,  <29.680950, 34.669392, 63.770180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.723530, 34.435612, 63.803864>,  <29.794497, 34.045982, 63.860004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723530, 34.435612, 63.803864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420413, 0.053933, 0.905728,
		0.889818, 0.219698, 0.399946,
		-0.177416, 0.974076, -0.140355,
		29.670305, 34.727833, 63.761757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030962, 34.350819, 64.459068>,  <29.794497, 34.045982, 63.860004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030962, 34.350819, 64.459068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781414, 34.612900, 64.288658>,  <29.631685, 34.770149, 64.186409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781414, 34.612900, 64.288658>,  <30.030962, 34.350819, 64.459068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781414, 34.612900, 64.288658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301047, 0.301587, 0.904663,
		0.721219, 0.692647, 0.009095,
		-0.623869, 0.655199, -0.426030,
		29.594254, 34.809460, 64.160851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226318, 35.075397, 64.366150>,  <30.030962, 34.350819, 64.459068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226318, 35.075397, 64.366150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.863029, 34.923481, 64.436455>,  <29.645056, 34.832333, 64.478638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.863029, 34.923481, 64.436455>,  <30.226318, 35.075397, 64.366150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863029, 34.923481, 64.436455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208399, -0.046260, 0.976949,
		-0.362906, 0.923915, 0.121163,
		-0.908223, -0.379791, 0.175755,
		29.590563, 34.809544, 64.489182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895781, 35.339130, 64.979607>,  <30.226318, 35.075397, 64.366150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895781, 35.339130, 64.979607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703094, 34.989788, 64.950775>,  <29.587482, 34.780182, 64.933479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703094, 34.989788, 64.950775>,  <29.895781, 35.339130, 64.979607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703094, 34.989788, 64.950775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167634, 0.011107, 0.985787,
		-0.860146, 0.486950, -0.151755,
		-0.481714, -0.873360, -0.072076,
		29.558580, 34.727779, 64.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962196, 35.996445, 64.574295>,  <29.895781, 35.339130, 64.979607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962196, 35.996445, 64.574295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.632452, 35.941483, 64.793945>,  <29.434605, 35.908504, 64.925735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.632452, 35.941483, 64.793945>,  <29.962196, 35.996445, 64.574295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632452, 35.941483, 64.793945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558987, -0.044687, 0.827971,
		-0.089227, 0.989507, 0.113645,
		-0.824362, -0.137403, 0.549134,
		29.385143, 35.900261, 64.958687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874905, 36.477001, 65.088425>,  <29.962196, 35.996445, 64.574295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874905, 36.477001, 65.088425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735331, 36.121811, 65.208252>,  <29.651587, 35.908695, 65.280144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.735331, 36.121811, 65.208252>,  <29.874905, 36.477001, 65.088425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735331, 36.121811, 65.208252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453156, 0.119924, 0.883328,
		-0.820302, 0.443971, 0.360548,
		-0.348934, -0.887980, 0.299563,
		29.630650, 35.855415, 65.298119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439539, 36.573353, 65.639420>,  <29.874905, 36.477001, 65.088425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439539, 36.573353, 65.639420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601112, 36.207581, 65.649719>,  <29.698057, 35.988117, 65.655899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601112, 36.207581, 65.649719>,  <29.439539, 36.573353, 65.639420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601112, 36.207581, 65.649719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428449, 0.213972, 0.877865,
		-0.808250, -0.343571, 0.478216,
		0.403933, -0.914426, 0.025740,
		29.722292, 35.933254, 65.657440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232374, 37.335632, 65.410027>,  <29.439539, 36.573353, 65.639420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232374, 37.335632, 65.410027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008003, 37.607143, 65.220451>,  <28.873381, 37.770050, 65.106705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.008003, 37.607143, 65.220451>,  <29.232374, 37.335632, 65.410027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008003, 37.607143, 65.220451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632652, -0.017782, -0.774233,
		-0.533959, -0.734130, -0.419455,
		-0.560928, 0.678777, -0.473943,
		28.839725, 37.810776, 65.078270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064850, 37.047104, 64.750046>,  <29.232374, 37.335632, 65.410027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064850, 37.047104, 64.750046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.085041, 37.446033, 64.771210>,  <29.097157, 37.685390, 64.783913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.085041, 37.446033, 64.771210>,  <29.064850, 37.047104, 64.750046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085041, 37.446033, 64.771210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490294, 0.021413, -0.871294,
		-0.870094, 0.069925, -0.487901,
		0.050478, 0.997322, 0.052915,
		29.100185, 37.745232, 64.787086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758539, 37.441422, 64.156715>,  <29.064850, 37.047104, 64.750046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758539, 37.441422, 64.156715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.053867, 37.647480, 64.330841>,  <29.231064, 37.771114, 64.435318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.053867, 37.647480, 64.330841>,  <28.758539, 37.441422, 64.156715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053867, 37.647480, 64.330841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506398, 0.002899, -0.862295,
		-0.445472, 0.857096, -0.258730,
		0.738319, 0.515149, 0.435323,
		29.275364, 37.802025, 64.461441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940849, 38.210361, 63.939747>,  <28.758539, 37.441422, 64.156715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940849, 38.210361, 63.939747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266947, 38.026474, 64.080620>,  <29.462605, 37.916142, 64.165146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266947, 38.026474, 64.080620>,  <28.940849, 38.210361, 63.939747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266947, 38.026474, 64.080620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484613, 0.208597, -0.849492,
		0.317066, 0.863216, 0.392845,
		0.815242, -0.459723, 0.352187,
		29.511518, 37.888557, 64.186279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491961, 38.698315, 63.816193>,  <28.940849, 38.210361, 63.939747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491961, 38.698315, 63.816193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603174, 38.314194, 63.825253>,  <29.669903, 38.083721, 63.830688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.603174, 38.314194, 63.825253>,  <29.491961, 38.698315, 63.816193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603174, 38.314194, 63.825253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511857, 0.128163, -0.849456,
		0.812834, 0.247770, 0.527172,
		0.278034, -0.960304, 0.022647,
		29.686584, 38.026104, 63.832047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210567, 38.665222, 63.720875>,  <29.491961, 38.698315, 63.816193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210567, 38.665222, 63.720875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082472, 38.301140, 63.615818>,  <30.005615, 38.082691, 63.552784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082472, 38.301140, 63.615818>,  <30.210567, 38.665222, 63.720875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082472, 38.301140, 63.615818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474595, 0.085802, -0.876012,
		0.819883, -0.405181, 0.404500,
		-0.320237, -0.910201, -0.262645,
		29.986401, 38.028080, 63.537025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824154, 38.271168, 63.429443>,  <30.210567, 38.665222, 63.720875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824154, 38.271168, 63.429443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.493132, 38.086575, 63.301579>,  <30.294518, 37.975819, 63.224861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.493132, 38.086575, 63.301579>,  <30.824154, 38.271168, 63.429443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493132, 38.086575, 63.301579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377037, -0.035018, -0.925536,
		0.415925, -0.886458, 0.202975,
		-0.827556, -0.461483, -0.319662,
		30.244865, 37.948132, 63.205681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057943, 37.820221, 62.891697>,  <30.824154, 38.271168, 63.429443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057943, 37.820221, 62.891697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663567, 37.845604, 62.829865>,  <30.426941, 37.860832, 62.792767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663567, 37.845604, 62.829865>,  <31.057943, 37.820221, 62.891697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663567, 37.845604, 62.829865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141902, -0.170557, -0.975076,
		-0.088241, -0.983302, 0.159155,
		-0.985940, 0.063458, -0.154583,
		30.367785, 37.864643, 62.783489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917068, 37.396759, 62.313843>,  <31.057943, 37.820221, 62.891697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917068, 37.396759, 62.313843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.559402, 37.575066, 62.330608>,  <30.344803, 37.682049, 62.340668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.559402, 37.575066, 62.330608>,  <30.917068, 37.396759, 62.313843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559402, 37.575066, 62.330608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128666, -0.166168, -0.977667,
		-0.428850, -0.879589, 0.205937,
		-0.894165, 0.445770, 0.041912,
		30.291153, 37.708797, 62.343182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473583, 36.856319, 62.184311>,  <30.917068, 37.396759, 62.313843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473583, 36.856319, 62.184311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346882, 37.224716, 62.093582>,  <30.270861, 37.445755, 62.039146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346882, 37.224716, 62.093582>,  <30.473583, 36.856319, 62.184311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346882, 37.224716, 62.093582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154927, -0.185689, -0.970318,
		-0.935770, -0.342493, -0.083868,
		-0.316754, 0.920988, -0.226823,
		30.251856, 37.501011, 62.025536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235584, 36.755524, 61.577648>,  <30.473583, 36.856319, 62.184311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235584, 36.755524, 61.577648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231075, 37.154953, 61.598537>,  <30.228369, 37.394611, 61.611073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231075, 37.154953, 61.598537>,  <30.235584, 36.755524, 61.577648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231075, 37.154953, 61.598537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031311, 0.052552, -0.998127,
		-0.999446, -0.009618, -0.031858,
		-0.011274, 0.998572, 0.052222,
		30.227694, 37.454525, 61.614204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738199, 37.088249, 61.071865>,  <30.235584, 36.755524, 61.577648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738199, 37.088249, 61.071865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017345, 37.360363, 61.161480>,  <30.184834, 37.523632, 61.215248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.017345, 37.360363, 61.161480>,  <29.738199, 37.088249, 61.071865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017345, 37.360363, 61.161480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111907, 0.205391, -0.972261,
		-0.707431, 0.703580, 0.067207,
		0.697867, 0.680287, 0.224035,
		30.226706, 37.564449, 61.228691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703451, 37.612465, 60.479340>,  <29.738199, 37.088249, 61.071865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703451, 37.612465, 60.479340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065609, 37.677410, 60.636257>,  <30.282904, 37.716377, 60.730408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065609, 37.677410, 60.636257>,  <29.703451, 37.612465, 60.479340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065609, 37.677410, 60.636257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390852, 0.042114, -0.919490,
		-0.165815, 0.985832, -0.025331,
		0.905395, 0.162366, 0.392297,
		30.337227, 37.726120, 60.753948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939028, 38.123623, 60.089954>,  <29.703451, 37.612465, 60.479340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939028, 38.123623, 60.089954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269003, 37.959755, 60.245720>,  <30.466988, 37.861435, 60.339180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269003, 37.959755, 60.245720>,  <29.939028, 38.123623, 60.089954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269003, 37.959755, 60.245720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453337, 0.068078, -0.888736,
		0.337580, 0.909689, 0.241880,
		0.824940, -0.409673, 0.389414,
		30.516485, 37.836853, 60.362545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513058, 38.499634, 59.691235>,  <29.939028, 38.123623, 60.089954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513058, 38.499634, 59.691235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680864, 38.182533, 59.868122>,  <30.781548, 37.992271, 59.974255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680864, 38.182533, 59.868122>,  <30.513058, 38.499634, 59.691235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680864, 38.182533, 59.868122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661550, -0.066576, -0.746940,
		0.621578, 0.605899, 0.496515,
		0.419515, -0.792751, 0.442215,
		30.806719, 37.944710, 60.000786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171356, 38.661736, 59.648193>,  <30.513058, 38.499634, 59.691235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171356, 38.661736, 59.648193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137844, 38.265896, 59.694984>,  <31.117737, 38.028393, 59.723061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137844, 38.265896, 59.694984>,  <31.171356, 38.661736, 59.648193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137844, 38.265896, 59.694984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618835, -0.143679, -0.772269,
		0.781040, 0.007687, 0.624434,
		-0.083782, -0.989594, 0.116976,
		31.112709, 37.969017, 59.730076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875685, 38.449108, 59.770332>,  <31.171356, 38.661736, 59.648193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875685, 38.449108, 59.770332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689837, 38.113487, 59.657112>,  <31.578327, 37.912113, 59.589180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.689837, 38.113487, 59.657112>,  <31.875685, 38.449108, 59.770332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689837, 38.113487, 59.657112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662507, -0.117289, -0.739816,
		0.587548, -0.531254, 0.610374,
		-0.464621, -0.839054, -0.283046,
		31.550449, 37.861771, 59.572197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374107, 38.065502, 59.532066>,  <31.875685, 38.449108, 59.770332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374107, 38.065502, 59.532066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.049835, 37.906868, 59.359779>,  <31.855272, 37.811687, 59.256405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.049835, 37.906868, 59.359779>,  <32.374107, 38.065502, 59.532066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049835, 37.906868, 59.359779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530084, -0.184768, -0.827570,
		0.248616, -0.899213, 0.360009,
		-0.810680, -0.396582, -0.430722,
		31.806631, 37.787895, 59.230564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612160, 37.460724, 59.144112>,  <32.374107, 38.065502, 59.532066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612160, 37.460724, 59.144112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254177, 37.532166, 58.980572>,  <32.039387, 37.575031, 58.882450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254177, 37.532166, 58.980572>,  <32.612160, 37.460724, 59.144112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254177, 37.532166, 58.980572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369279, -0.217717, -0.903456,
		-0.250375, -0.959531, 0.128892,
		-0.894956, 0.178605, -0.408845,
		31.985691, 37.585747, 58.857918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361000, 36.858818, 58.585354>,  <32.612160, 37.460724, 59.144112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361000, 36.858818, 58.585354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166931, 37.193439, 58.483540>,  <32.050491, 37.394211, 58.422451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166931, 37.193439, 58.483540>,  <32.361000, 36.858818, 58.585354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166931, 37.193439, 58.483540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288326, -0.121762, -0.949759,
		-0.825516, -0.534187, -0.182124,
		-0.485173, 0.836552, -0.254536,
		32.021378, 37.444405, 58.407177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182819, 36.758389, 57.876175>,  <32.361000, 36.858818, 58.585354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182819, 36.758389, 57.876175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082005, 37.145313, 57.887352>,  <32.021515, 37.377468, 57.894058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082005, 37.145313, 57.887352>,  <32.182819, 36.758389, 57.876175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082005, 37.145313, 57.887352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218514, 0.085018, -0.972123,
		-0.942724, -0.238907, -0.232799,
		-0.252039, 0.967313, 0.027944,
		32.006393, 37.435509, 57.895737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661081, 36.915054, 57.398766>,  <32.182819, 36.758389, 57.876175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661081, 36.915054, 57.398766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884430, 37.240162, 57.465240>,  <32.018440, 37.435226, 57.505127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884430, 37.240162, 57.465240>,  <31.661081, 36.915054, 57.398766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884430, 37.240162, 57.465240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199871, 0.062628, -0.977819,
		-0.805153, 0.579204, -0.127480,
		0.558373, 0.812773, 0.166191,
		32.051941, 37.483994, 57.515099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451529, 37.398731, 56.889992>,  <31.661081, 36.915054, 57.398766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451529, 37.398731, 56.889992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809423, 37.524597, 57.016758>,  <32.024162, 37.600117, 57.092815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809423, 37.524597, 57.016758>,  <31.451529, 37.398731, 56.889992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809423, 37.524597, 57.016758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278501, 0.161596, -0.946744,
		-0.349115, 0.935348, 0.056953,
		0.894738, 0.314661, 0.316911,
		32.077847, 37.618996, 57.111832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597103, 37.991051, 56.456753>,  <31.451529, 37.398731, 56.889992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597103, 37.991051, 56.456753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.941275, 37.890770, 56.634205>,  <32.147778, 37.830601, 56.740677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.941275, 37.890770, 56.634205>,  <31.597103, 37.991051, 56.456753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941275, 37.890770, 56.634205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498747, 0.235864, -0.834038,
		0.104461, 0.938890, 0.327983,
		0.860430, -0.250705, 0.443630,
		32.199402, 37.815559, 56.767292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060856, 38.449677, 56.152962>,  <31.597103, 37.991051, 56.456753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060856, 38.449677, 56.152962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288586, 38.148430, 56.284832>,  <32.425224, 37.967682, 56.363953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288586, 38.148430, 56.284832>,  <32.060856, 38.449677, 56.152962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288586, 38.148430, 56.284832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452979, -0.047283, -0.890267,
		0.686064, 0.656184, 0.314227,
		0.569321, -0.753118, 0.329676,
		32.459381, 37.922493, 56.383736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790470, 38.659782, 56.070599>,  <32.060856, 38.449677, 56.152962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790470, 38.659782, 56.070599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767117, 38.262337, 56.109207>,  <32.753105, 38.023869, 56.132374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.767117, 38.262337, 56.109207>,  <32.790470, 38.659782, 56.070599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767117, 38.262337, 56.109207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581887, -0.112434, -0.805460,
		0.811172, 0.009141, 0.584737,
		-0.058382, -0.993617, 0.096522,
		32.749603, 37.964252, 56.138165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484276, 38.396431, 56.052128>,  <32.790470, 38.659782, 56.070599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484276, 38.396431, 56.052128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256393, 38.089817, 55.933559>,  <33.119663, 37.905849, 55.862419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256393, 38.089817, 55.933559>,  <33.484276, 38.396431, 56.052128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256393, 38.089817, 55.933559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608551, -0.151052, -0.779005,
		0.552358, -0.624189, 0.552529,
		-0.569707, -0.766532, -0.296417,
		33.085480, 37.859856, 55.844635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938084, 37.958229, 55.805538>,  <33.484276, 38.396431, 56.052128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938084, 37.958229, 55.805538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607861, 37.808304, 55.636791>,  <33.409729, 37.718349, 55.535542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607861, 37.808304, 55.636791>,  <33.938084, 37.958229, 55.805538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607861, 37.808304, 55.636791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544011, -0.329830, -0.771534,
		0.150040, -0.866444, 0.476197,
		-0.825554, -0.374817, -0.421867,
		33.360195, 37.695858, 55.510231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158184, 37.493214, 55.498432>,  <33.938084, 37.958229, 55.805538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158184, 37.493214, 55.498432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792980, 37.480934, 55.335720>,  <33.573856, 37.473568, 55.238094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792980, 37.480934, 55.335720>,  <34.158184, 37.493214, 55.498432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792980, 37.480934, 55.335720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387163, -0.379350, -0.840356,
		-0.128512, -0.924744, 0.358236,
		-0.913011, -0.030700, -0.406778,
		33.519077, 37.471725, 55.213688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099846, 36.854107, 55.332504>,  <34.158184, 37.493214, 55.498432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099846, 36.854107, 55.332504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853985, 37.059639, 55.093113>,  <33.706467, 37.182957, 54.949478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853985, 37.059639, 55.093113>,  <34.099846, 36.854107, 55.332504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853985, 37.059639, 55.093113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431784, -0.415785, -0.800428,
		-0.660123, -0.750401, 0.033700,
		-0.614654, 0.513830, -0.598481,
		33.669590, 37.213787, 54.913570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083145, 36.446835, 54.752598>,  <34.099846, 36.854107, 55.332504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083145, 36.446835, 54.752598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916111, 36.778183, 54.603241>,  <33.815891, 36.976994, 54.513626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916111, 36.778183, 54.603241>,  <34.083145, 36.446835, 54.752598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916111, 36.778183, 54.603241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407991, -0.196245, -0.891645,
		-0.811889, -0.524681, -0.256018,
		-0.417587, 0.828370, -0.373395,
		33.790836, 37.026695, 54.491222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752010, 36.319702, 54.110638>,  <34.083145, 36.446835, 54.752598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752010, 36.319702, 54.110638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840202, 36.709858, 54.109699>,  <33.893120, 36.943951, 54.109135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840202, 36.709858, 54.109699>,  <33.752010, 36.319702, 54.110638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840202, 36.709858, 54.109699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548097, -0.125887, -0.826887,
		-0.806831, 0.181028, -0.562364,
		0.220483, 0.975388, -0.002348,
		33.906349, 37.002476, 54.108994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614243, 36.506783, 53.447067>,  <33.752010, 36.319702, 54.110638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614243, 36.506783, 53.447067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842674, 36.804226, 53.586159>,  <33.979733, 36.982693, 53.669613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842674, 36.804226, 53.586159>,  <33.614243, 36.506783, 53.447067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842674, 36.804226, 53.586159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630981, -0.126668, -0.765388,
		-0.525101, 0.656509, -0.541539,
		0.571079, 0.743607, 0.347731,
		34.014000, 37.027309, 53.690479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717644, 36.906780, 52.936459>,  <33.614243, 36.506783, 53.447067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717644, 36.906780, 52.936459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011570, 37.005478, 53.189175>,  <34.187927, 37.064697, 53.340805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011570, 37.005478, 53.189175>,  <33.717644, 36.906780, 52.936459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011570, 37.005478, 53.189175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659444, -0.042003, -0.750579,
		-0.158661, 0.968171, -0.193576,
		0.734820, 0.246740, 0.631790,
		34.232018, 37.079498, 53.378712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020706, 37.439770, 52.551056>,  <33.717644, 36.906780, 52.936459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020706, 37.439770, 52.551056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296329, 37.314247, 52.812351>,  <34.461704, 37.238934, 52.969128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296329, 37.314247, 52.812351>,  <34.020706, 37.439770, 52.551056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296329, 37.314247, 52.812351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684030, -0.016116, -0.729276,
		0.239376, 0.949351, 0.203546,
		0.689059, -0.313803, 0.653243,
		34.503048, 37.220108, 53.008324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570892, 37.826717, 52.418133>,  <34.020706, 37.439770, 52.551056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570892, 37.826717, 52.418133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723297, 37.516346, 52.619236>,  <34.814739, 37.330124, 52.739899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723297, 37.516346, 52.619236>,  <34.570892, 37.826717, 52.418133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723297, 37.516346, 52.619236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752066, -0.056203, -0.656687,
		0.537797, 0.628315, 0.562134,
		0.381013, -0.775926, 0.502760,
		34.837601, 37.283569, 52.770065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305096, 37.901558, 52.460617>,  <34.570892, 37.826717, 52.418133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305096, 37.901558, 52.460617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225941, 37.514725, 52.524609>,  <35.178448, 37.282623, 52.563004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225941, 37.514725, 52.524609>,  <35.305096, 37.901558, 52.460617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225941, 37.514725, 52.524609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617264, -0.249724, -0.746072,
		0.761464, -0.048887, 0.646362,
		-0.197885, -0.967082, 0.159980,
		35.166576, 37.224602, 52.572601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993572, 37.696335, 52.216854>,  <35.305096, 37.901558, 52.460617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993572, 37.696335, 52.216854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761330, 37.374981, 52.269726>,  <35.621983, 37.182171, 52.301449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761330, 37.374981, 52.269726>,  <35.993572, 37.696335, 52.216854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761330, 37.374981, 52.269726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510292, -0.485574, -0.709803,
		0.634428, -0.344664, 0.691887,
		-0.580606, -0.803383, 0.132182,
		35.587147, 37.133965, 52.309380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381496, 37.090511, 52.352848>,  <35.993572, 37.696335, 52.216854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381496, 37.090511, 52.352848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.032940, 36.965427, 52.201649>,  <35.823807, 36.890377, 52.110931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.032940, 36.965427, 52.201649>,  <36.381496, 37.090511, 52.352848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032940, 36.965427, 52.201649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485277, -0.436445, -0.757643,
		0.071952, -0.843638, 0.532069,
		-0.871395, -0.312714, -0.377995,
		35.771523, 36.871613, 52.088249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520882, 36.382557, 52.291256>,  <36.381496, 37.090511, 52.352848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520882, 36.382557, 52.291256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206051, 36.452095, 52.054516>,  <36.017151, 36.493816, 51.912472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206051, 36.452095, 52.054516>,  <36.520882, 36.382557, 52.291256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206051, 36.452095, 52.054516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462981, -0.467538, -0.753032,
		-0.407618, -0.866711, 0.287506,
		-0.787081, 0.173840, -0.591847,
		35.969929, 36.504250, 51.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393967, 35.768429, 51.957272>,  <36.520882, 36.382557, 52.291256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393967, 35.768429, 51.957272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193073, 36.031498, 51.732693>,  <36.072536, 36.189339, 51.597946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193073, 36.031498, 51.732693>,  <36.393967, 35.768429, 51.957272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193073, 36.031498, 51.732693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434528, -0.369410, -0.821415,
		-0.747628, -0.656508, -0.100247,
		-0.502233, 0.657673, -0.561452,
		36.042404, 36.228802, 51.564259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064461, 35.397343, 51.348812>,  <36.393967, 35.768429, 51.957272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064461, 35.397343, 51.348812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072212, 35.775101, 51.217522>,  <36.076862, 36.001755, 51.138748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072212, 35.775101, 51.217522>,  <36.064461, 35.397343, 51.348812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072212, 35.775101, 51.217522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300161, -0.318641, -0.899095,
		-0.953692, -0.081102, -0.289646,
		0.019375, 0.944400, -0.328229,
		36.078026, 36.058422, 51.119053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782326, 35.410583, 50.646873>,  <36.064461, 35.397343, 51.348812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782326, 35.410583, 50.646873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013203, 35.729687, 50.716652>,  <36.151730, 35.921146, 50.758518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013203, 35.729687, 50.716652>,  <35.782326, 35.410583, 50.646873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013203, 35.729687, 50.716652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213425, 0.058830, -0.975187,
		-0.788222, 0.600106, -0.136304,
		0.577196, 0.797754, 0.174449,
		36.186363, 35.969013, 50.768986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534256, 36.005024, 50.179359>,  <35.782326, 35.410583, 50.646873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534256, 36.005024, 50.179359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.921787, 36.035873, 50.273529>,  <36.154305, 36.054382, 50.330029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.921787, 36.035873, 50.273529>,  <35.534256, 36.005024, 50.179359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921787, 36.035873, 50.273529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236820, -0.009407, -0.971508,
		-0.072711, 0.996977, -0.027378,
		0.968829, 0.077123, 0.235420,
		36.212437, 36.059010, 50.344154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518948, 36.836887, 50.159958>,  <35.534256, 36.005024, 50.179359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518948, 36.836887, 50.159958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311069, 36.975948, 49.847790>,  <35.186344, 37.059387, 49.660488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311069, 36.975948, 49.847790>,  <35.518948, 36.836887, 50.159958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311069, 36.975948, 49.847790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680903, 0.383197, 0.624124,
		0.516034, 0.855744, 0.037574,
		-0.519692, 0.347654, -0.780421,
		35.155163, 37.080246, 49.613663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351242, 37.623886, 50.292782>,  <35.518948, 36.836887, 50.159958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351242, 37.623886, 50.292782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098572, 37.404709, 50.073418>,  <34.946972, 37.273201, 49.941799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098572, 37.404709, 50.073418>,  <35.351242, 37.623886, 50.292782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098572, 37.404709, 50.073418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773612, 0.399788, 0.491623,
		-0.050135, 0.734799, -0.676429,
		-0.631672, -0.547942, -0.548406,
		34.909069, 37.240326, 49.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851486, 38.109493, 50.101017>,  <35.351242, 37.623886, 50.292782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851486, 38.109493, 50.101017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663715, 37.762608, 50.034584>,  <34.551052, 37.554478, 49.994724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663715, 37.762608, 50.034584>,  <34.851486, 38.109493, 50.101017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663715, 37.762608, 50.034584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848890, 0.391491, 0.355135,
		-0.242956, 0.307698, -0.919942,
		-0.469423, -0.867212, -0.166086,
		34.522888, 37.502445, 49.984756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179859, 38.335915, 49.902126>,  <34.851486, 38.109493, 50.101017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179859, 38.335915, 49.902126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125267, 37.956490, 50.016388>,  <34.092510, 37.728832, 50.084946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.125267, 37.956490, 50.016388>,  <34.179859, 38.335915, 49.902126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125267, 37.956490, 50.016388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958539, 0.199260, 0.203711,
		-0.250152, -0.246005, -0.936433,
		-0.136480, -0.948566, 0.285650,
		34.084324, 37.671921, 50.102081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503841, 38.105881, 49.691971>,  <34.179859, 38.335915, 49.902126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503841, 38.105881, 49.691971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595436, 37.861511, 49.995110>,  <33.650394, 37.714890, 50.176994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595436, 37.861511, 49.995110>,  <33.503841, 38.105881, 49.691971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595436, 37.861511, 49.995110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868730, 0.222990, 0.442249,
		-0.439174, -0.759634, -0.479669,
		0.228986, -0.610927, 0.757848,
		33.664131, 37.678234, 50.222466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896996, 37.870712, 49.954418>,  <33.503841, 38.105881, 49.691971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896996, 37.870712, 49.954418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124653, 37.773552, 50.268635>,  <33.261246, 37.715256, 50.457165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124653, 37.773552, 50.268635>,  <32.896996, 37.870712, 49.954418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124653, 37.773552, 50.268635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789180, 0.106801, 0.604805,
		-0.230805, -0.964154, -0.130908,
		0.569144, -0.242902, 0.785541,
		33.295395, 37.700684, 50.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512608, 37.364307, 50.394138>,  <32.896996, 37.870712, 49.954418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512608, 37.364307, 50.394138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.773624, 37.533352, 50.645721>,  <32.930237, 37.634781, 50.796669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.773624, 37.533352, 50.645721>,  <32.512608, 37.364307, 50.394138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773624, 37.533352, 50.645721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712112, 0.058309, 0.699641,
		0.259005, -0.904432, 0.338998,
		0.652544, 0.422615, 0.628954,
		32.969387, 37.660137, 50.834408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380775, 36.950806, 51.030022>,  <32.512608, 37.364307, 50.394138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380775, 36.950806, 51.030022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576229, 37.288292, 51.118912>,  <32.693501, 37.490784, 51.172245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576229, 37.288292, 51.118912>,  <32.380775, 36.950806, 51.030022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576229, 37.288292, 51.118912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551578, 0.101371, 0.827941,
		0.676017, -0.527136, 0.514906,
		0.488634, 0.843713, 0.222228,
		32.722820, 37.541405, 51.185581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448082, 36.939175, 51.740215>,  <32.380775, 36.950806, 51.030022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448082, 36.939175, 51.740215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490101, 37.327419, 51.653606>,  <32.515312, 37.560368, 51.601643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490101, 37.327419, 51.653606>,  <32.448082, 36.939175, 51.740215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490101, 37.327419, 51.653606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419660, 0.240655, 0.875197,
		0.901583, -0.001069, 0.432606,
		0.105044, 0.970610, -0.216522,
		32.521614, 37.618603, 51.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800682, 37.242588, 52.313099>,  <32.448082, 36.939175, 51.740215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800682, 37.242588, 52.313099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607498, 37.526905, 52.108540>,  <32.491589, 37.697495, 51.985806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607498, 37.526905, 52.108540>,  <32.800682, 37.242588, 52.313099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607498, 37.526905, 52.108540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532105, 0.225598, 0.816070,
		0.695424, 0.666247, 0.269260,
		-0.482959, 0.710789, -0.511400,
		32.462612, 37.740143, 51.955120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722164, 37.707867, 52.758835>,  <32.800682, 37.242588, 52.313099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722164, 37.707867, 52.758835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458786, 37.857788, 52.497768>,  <32.300758, 37.947742, 52.341129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458786, 37.857788, 52.497768>,  <32.722164, 37.707867, 52.758835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458786, 37.857788, 52.497768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631696, 0.196219, 0.749972,
		0.409158, 0.906102, 0.107562,
		-0.658445, 0.374803, -0.652666,
		32.261253, 37.970230, 52.301968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520702, 38.424194, 52.942989>,  <32.722164, 37.707867, 52.758835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520702, 38.424194, 52.942989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211227, 38.289280, 52.728462>,  <32.025543, 38.208332, 52.599747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211227, 38.289280, 52.728462>,  <32.520702, 38.424194, 52.942989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211227, 38.289280, 52.728462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611350, 0.175259, 0.771710,
		-0.166291, 0.924945, -0.341796,
		-0.773692, -0.337285, -0.536321,
		31.979120, 38.188095, 52.567566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014126, 38.997005, 52.967194>,  <32.520702, 38.424194, 52.942989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014126, 38.997005, 52.967194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.824163, 38.657990, 52.872417>,  <31.710186, 38.454578, 52.815552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.824163, 38.657990, 52.872417>,  <32.014126, 38.997005, 52.967194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824163, 38.657990, 52.872417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698517, 0.199259, 0.687292,
		-0.535296, 0.491902, -0.686651,
		-0.474902, -0.847542, -0.236939,
		31.681692, 38.403728, 52.801334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312304, 39.224232, 52.977962>,  <32.014126, 38.997005, 52.967194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312304, 39.224232, 52.977962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.297285, 38.825775, 53.009708>,  <31.288275, 38.586700, 53.028755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.297285, 38.825775, 53.009708>,  <31.312304, 39.224232, 52.977962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297285, 38.825775, 53.009708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749637, 0.080593, 0.656924,
		-0.660783, -0.034831, -0.749768,
		-0.037545, -0.996138, 0.079365,
		31.286022, 38.526932, 53.033520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551361, 39.025913, 53.030678>,  <31.312304, 39.224232, 52.977962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551361, 39.025913, 53.030678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759760, 38.711548, 53.163887>,  <30.884800, 38.522930, 53.243813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759760, 38.711548, 53.163887>,  <30.551361, 39.025913, 53.030678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759760, 38.711548, 53.163887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568794, -0.028758, 0.821977,
		-0.636424, -0.617669, -0.462005,
		0.520996, -0.785912, 0.333024,
		30.916059, 38.475773, 53.263794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031528, 38.556152, 53.373768>,  <30.551361, 39.025913, 53.030678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031528, 38.556152, 53.373768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380339, 38.434814, 53.527420>,  <30.589624, 38.362011, 53.619610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380339, 38.434814, 53.527420>,  <30.031528, 38.556152, 53.373768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380339, 38.434814, 53.527420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447596, -0.176638, 0.876616,
		-0.198085, -0.936359, -0.289818,
		0.872020, -0.303366, 0.384121,
		30.641947, 38.343811, 53.642658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885990, 37.992382, 53.666729>,  <30.031528, 38.556152, 53.373768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885990, 37.992382, 53.666729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209284, 38.136246, 53.853233>,  <30.403259, 38.222565, 53.965137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209284, 38.136246, 53.853233>,  <29.885990, 37.992382, 53.666729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209284, 38.136246, 53.853233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448449, -0.137232, 0.883210,
		0.381644, -0.922936, 0.050374,
		0.808233, 0.359662, 0.466264,
		30.451754, 38.244144, 53.993111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926996, 37.537449, 54.188103>,  <29.885990, 37.992382, 53.666729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926996, 37.537449, 54.188103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133038, 37.851959, 54.324593>,  <30.256662, 38.040665, 54.406487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133038, 37.851959, 54.324593>,  <29.926996, 37.537449, 54.188103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133038, 37.851959, 54.324593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306130, -0.203079, 0.930077,
		0.800596, -0.583544, 0.136097,
		0.515102, 0.786279, 0.341225,
		30.287569, 38.087845, 54.426960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250568, 37.285805, 54.730598>,  <29.926996, 37.537449, 54.188103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250568, 37.285805, 54.730598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261686, 37.679573, 54.800056>,  <30.268358, 37.915833, 54.841732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.261686, 37.679573, 54.800056>,  <30.250568, 37.285805, 54.730598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261686, 37.679573, 54.800056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120525, -0.169141, 0.978195,
		0.992321, -0.048118, 0.113946,
		0.027796, 0.984416, 0.173641,
		30.270025, 37.974899, 54.852150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775717, 37.348843, 55.243324>,  <30.250568, 37.285805, 54.730598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775717, 37.348843, 55.243324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549160, 37.678482, 55.246323>,  <30.413225, 37.876266, 55.248119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549160, 37.678482, 55.246323>,  <30.775717, 37.348843, 55.243324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549160, 37.678482, 55.246323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141829, -0.106425, 0.984154,
		0.811839, 0.556356, 0.177160,
		-0.566394, 0.824101, 0.007492,
		30.379242, 37.925713, 55.248569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883781, 37.622089, 55.933292>,  <30.775717, 37.348843, 55.243324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883781, 37.622089, 55.933292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549767, 37.814930, 55.827240>,  <30.349358, 37.930634, 55.763607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549767, 37.814930, 55.827240>,  <30.883781, 37.622089, 55.933292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549767, 37.814930, 55.827240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268648, 0.063278, 0.961158,
		0.480149, 0.873829, 0.076674,
		-0.835036, 0.482098, -0.265135,
		30.299255, 37.959560, 55.747700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858685, 38.237293, 56.322445>,  <30.883781, 37.622089, 55.933292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858685, 38.237293, 56.322445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500351, 38.099689, 56.209915>,  <30.285351, 38.017128, 56.142399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500351, 38.099689, 56.209915>,  <30.858685, 38.237293, 56.322445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500351, 38.099689, 56.209915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317022, 0.051091, 0.947041,
		-0.311417, 0.937576, -0.154827,
		-0.895833, -0.344008, -0.281321,
		30.231602, 37.996487, 56.125519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460894, 38.560642, 56.814972>,  <30.858685, 38.237293, 56.322445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460894, 38.560642, 56.814972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222340, 38.281380, 56.656532>,  <30.079206, 38.113823, 56.561466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222340, 38.281380, 56.656532>,  <30.460894, 38.560642, 56.814972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222340, 38.281380, 56.656532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418958, -0.150180, 0.895500,
		-0.684689, 0.700013, -0.202935,
		-0.596384, -0.698161, -0.396102,
		30.043425, 38.071930, 56.537701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770205, 38.733181, 57.068024>,  <30.460894, 38.560642, 56.814972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770205, 38.733181, 57.068024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760157, 38.357906, 56.929935>,  <29.754128, 38.132744, 56.847080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760157, 38.357906, 56.929935>,  <29.770205, 38.733181, 57.068024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760157, 38.357906, 56.929935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549863, -0.275434, 0.788534,
		-0.834877, 0.209632, -0.508955,
		-0.025119, -0.938185, -0.345223,
		29.752621, 38.076450, 56.826370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057713, 38.453049, 56.874847>,  <29.770205, 38.733181, 57.068024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057713, 38.453049, 56.874847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290085, 38.134342, 56.941402>,  <29.429508, 37.943119, 56.981335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290085, 38.134342, 56.941402>,  <29.057713, 38.453049, 56.874847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290085, 38.134342, 56.941402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476153, -0.166866, 0.863385,
		-0.660151, -0.580793, -0.476320,
		0.580930, -0.796765, 0.166390,
		29.464363, 37.895313, 56.991318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570551, 37.889069, 57.072979>,  <29.057713, 38.453049, 56.874847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570551, 37.889069, 57.072979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937767, 37.774208, 57.182339>,  <29.158096, 37.705292, 57.247955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937767, 37.774208, 57.182339>,  <28.570551, 37.889069, 57.072979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937767, 37.774208, 57.182339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380188, -0.441863, 0.812536,
		-0.112519, -0.849882, -0.514821,
		0.918039, -0.287154, 0.273397,
		29.213179, 37.688061, 57.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535383, 37.244247, 57.233616>,  <28.570551, 37.889069, 57.072979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535383, 37.244247, 57.233616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.881546, 37.313004, 57.421883>,  <29.089243, 37.354256, 57.534843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.881546, 37.313004, 57.421883>,  <28.535383, 37.244247, 57.233616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881546, 37.313004, 57.421883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290581, -0.593078, 0.750880,
		0.408208, -0.786583, -0.463307,
		0.865407, 0.171887, 0.470665,
		29.141169, 37.364571, 57.563084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713812, 36.571850, 57.363964>,  <28.535383, 37.244247, 57.233616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713812, 36.571850, 57.363964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.922445, 36.809662, 57.608746>,  <29.047626, 36.952347, 57.755615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.922445, 36.809662, 57.608746>,  <28.713812, 36.571850, 57.363964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922445, 36.809662, 57.608746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239286, -0.586527, 0.773775,
		0.818958, -0.550021, -0.163662,
		0.521585, 0.594527, 0.611953,
		29.078920, 36.988022, 57.792332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937611, 36.076523, 57.846642>,  <28.713812, 36.571850, 57.363964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937611, 36.076523, 57.846642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969105, 36.442497, 58.004982>,  <28.988001, 36.662083, 58.099987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969105, 36.442497, 58.004982>,  <28.937611, 36.076523, 57.846642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969105, 36.442497, 58.004982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536432, -0.295806, 0.790405,
		0.840263, -0.274579, 0.467509,
		0.078737, 0.914934, 0.395848,
		28.992725, 36.716976, 58.123737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191868, 36.068050, 58.617886>,  <28.937611, 36.076523, 57.846642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191868, 36.068050, 58.617886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.042982, 36.438950, 58.601562>,  <28.953651, 36.661491, 58.591770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.042982, 36.438950, 58.601562>,  <29.191868, 36.068050, 58.617886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042982, 36.438950, 58.601562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530916, -0.176645, 0.828809,
		0.761305, 0.330158, 0.558041,
		-0.372214, 0.927250, -0.040805,
		28.931318, 36.717125, 58.589321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314304, 36.298580, 59.338600>,  <29.191868, 36.068050, 58.617886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314304, 36.298580, 59.338600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.043333, 36.523441, 59.148834>,  <28.880751, 36.658360, 59.034973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.043333, 36.523441, 59.148834>,  <29.314304, 36.298580, 59.338600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043333, 36.523441, 59.148834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663998, -0.189781, 0.723249,
		0.316543, 0.804962, 0.501833,
		-0.677427, 0.562156, -0.474420,
		28.840105, 36.692089, 59.006508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059710, 36.888123, 59.790352>,  <29.314304, 36.298580, 59.338600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059710, 36.888123, 59.790352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.759253, 36.795467, 59.543087>,  <28.578979, 36.739872, 59.394726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.759253, 36.795467, 59.543087>,  <29.059710, 36.888123, 59.790352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759253, 36.795467, 59.543087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605791, -0.130206, 0.784897,
		-0.262304, 0.964048, -0.042524,
		-0.751142, -0.231642, -0.618165,
		28.533911, 36.725975, 59.357639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510347, 37.292797, 60.023468>,  <29.059710, 36.888123, 59.790352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510347, 37.292797, 60.023468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.364120, 36.981129, 59.819801>,  <28.276384, 36.794128, 59.697601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.364120, 36.981129, 59.819801>,  <28.510347, 37.292797, 60.023468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364120, 36.981129, 59.819801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632255, -0.193589, 0.750185,
		-0.683091, 0.596169, -0.421864,
		-0.365568, -0.779170, -0.509170,
		28.254450, 36.747379, 59.667049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818474, 37.253139, 60.220116>,  <28.510347, 37.292797, 60.023468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818474, 37.253139, 60.220116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.858370, 36.894962, 60.046570>,  <27.882307, 36.680058, 59.942444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.858370, 36.894962, 60.046570>,  <27.818474, 37.253139, 60.220116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858370, 36.894962, 60.046570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500139, -0.422067, 0.756122,
		-0.860182, 0.141578, -0.489941,
		0.099738, -0.895441, -0.433863,
		27.888290, 36.626331, 59.916412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230818, 36.967155, 60.334003>,  <27.818474, 37.253139, 60.220116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230818, 36.967155, 60.334003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.436077, 36.633949, 60.251278>,  <27.559233, 36.434025, 60.201645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.436077, 36.633949, 60.251278>,  <27.230818, 36.967155, 60.334003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436077, 36.633949, 60.251278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531673, -0.497660, 0.685316,
		-0.673798, -0.241714, -0.698263,
		0.513148, -0.833012, -0.206810,
		27.590021, 36.384045, 60.189236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746098, 36.279751, 60.101593>,  <27.230818, 36.967155, 60.334003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746098, 36.279751, 60.101593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.107044, 36.149063, 60.214012>,  <27.323612, 36.070648, 60.281464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.107044, 36.149063, 60.214012>,  <26.746098, 36.279751, 60.101593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107044, 36.149063, 60.214012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418111, -0.505583, 0.754698,
		-0.104486, -0.798522, -0.592828,
		0.902367, -0.326723, 0.281044,
		27.377754, 36.051044, 60.298325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567934, 35.593876, 60.258862>,  <26.746098, 36.279751, 60.101593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567934, 35.593876, 60.258862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.918911, 35.666439, 60.436485>,  <27.129498, 35.709976, 60.543060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.918911, 35.666439, 60.436485>,  <26.567934, 35.593876, 60.258862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918911, 35.666439, 60.436485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315153, -0.479896, 0.818766,
		0.361631, -0.858366, -0.363911,
		0.877441, 0.181404, 0.444061,
		27.182144, 35.720860, 60.569702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702032, 34.978554, 60.605427>,  <26.567934, 35.593876, 60.258862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702032, 34.978554, 60.605427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.893250, 35.290634, 60.766800>,  <27.007980, 35.477882, 60.863625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.893250, 35.290634, 60.766800>,  <26.702032, 34.978554, 60.605427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893250, 35.290634, 60.766800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257051, -0.314932, 0.913643,
		0.839881, -0.540463, 0.050001,
		0.478044, 0.780203, 0.403432,
		27.036663, 35.524696, 60.887829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975468, 35.089615, 60.394337>,  <26.702032, 34.978554, 60.605427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975468, 35.089615, 60.394337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.668919, 34.849045, 60.304039>,  <25.484989, 34.704704, 60.249859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.668919, 34.849045, 60.304039>,  <25.975468, 35.089615, 60.394337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668919, 34.849045, 60.304039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253942, 0.039161, -0.966426,
		0.590071, -0.797970, 0.122715,
		-0.766374, -0.601423, -0.225746,
		25.439007, 34.668617, 60.236317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149696, 34.479347, 60.039116>,  <25.975468, 35.089615, 60.394337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149696, 34.479347, 60.039116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.770298, 34.497276, 59.913677>,  <25.542658, 34.508034, 59.838413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.770298, 34.497276, 59.913677>,  <26.149696, 34.479347, 60.039116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770298, 34.497276, 59.913677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301950, -0.171475, -0.937775,
		-0.095804, -0.984168, 0.149111,
		-0.948497, 0.044819, -0.313597,
		25.485748, 34.510723, 59.819599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156111, 33.948338, 59.591885>,  <26.149696, 34.479347, 60.039116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156111, 33.948338, 59.591885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.831793, 34.159626, 59.491013>,  <25.637203, 34.286400, 59.430489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.831793, 34.159626, 59.491013>,  <26.156111, 33.948338, 59.591885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831793, 34.159626, 59.491013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190469, -0.169289, -0.966986,
		-0.553477, -0.832058, 0.036648,
		-0.810793, 0.528225, -0.252179,
		25.588554, 34.318092, 59.415359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878582, 33.543613, 59.002026>,  <26.156111, 33.948338, 59.591885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878582, 33.543613, 59.002026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.753548, 33.923553, 58.998741>,  <25.678526, 34.151520, 58.996769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.753548, 33.923553, 58.998741>,  <25.878582, 33.543613, 59.002026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753548, 33.923553, 58.998741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122027, 0.031580, -0.992024,
		-0.942018, -0.311097, -0.125779,
		-0.312588, 0.949853, -0.008213,
		25.659771, 34.208511, 58.996277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452908, 33.599049, 58.357876>,  <25.878582, 33.543613, 59.002026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452908, 33.599049, 58.357876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.518141, 33.978676, 58.465706>,  <25.557280, 34.206451, 58.530403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.518141, 33.978676, 58.465706>,  <25.452908, 33.599049, 58.357876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518141, 33.978676, 58.465706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050361, 0.280883, -0.958420,
		-0.985326, 0.142725, 0.093603,
		0.163082, 0.949070, 0.269574,
		25.567066, 34.263397, 58.546577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022696, 34.070820, 57.897034>,  <25.452908, 33.599049, 58.357876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022696, 34.070820, 57.897034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.326744, 34.300835, 58.018066>,  <25.509172, 34.438843, 58.090687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.326744, 34.300835, 58.018066>,  <25.022696, 34.070820, 57.897034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326744, 34.300835, 58.018066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052575, 0.409706, -0.910702,
		-0.647651, 0.708151, 0.281194,
		0.760121, 0.575034, 0.302577,
		25.554781, 34.473343, 58.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739347, 34.685024, 57.730358>,  <25.022696, 34.070820, 57.897034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739347, 34.685024, 57.730358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.138069, 34.706150, 57.754341>,  <25.377302, 34.718826, 57.768730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.138069, 34.706150, 57.754341>,  <24.739347, 34.685024, 57.730358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138069, 34.706150, 57.754341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020568, 0.555537, -0.831237,
		-0.077210, 0.829813, 0.552674,
		0.996803, 0.052813, 0.059960,
		25.437111, 34.721992, 57.772327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897678, 35.340073, 57.492832>,  <24.739347, 34.685024, 57.730358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897678, 35.340073, 57.492832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.256006, 35.163944, 57.468750>,  <25.471003, 35.058266, 57.454300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.256006, 35.163944, 57.468750>,  <24.897678, 35.340073, 57.492832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256006, 35.163944, 57.468750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229942, 0.575154, -0.785064,
		0.380312, 0.689429, 0.616482,
		0.895818, -0.440324, -0.060210,
		25.524752, 35.031849, 57.450687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378960, 35.876755, 57.256165>,  <24.897678, 35.340073, 57.492832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378960, 35.876755, 57.256165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.602766, 35.553753, 57.181465>,  <25.737049, 35.359951, 57.136646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.602766, 35.553753, 57.181465>,  <25.378960, 35.876755, 57.256165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602766, 35.553753, 57.181465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415551, 0.468262, -0.779774,
		0.717119, 0.358694, 0.597561,
		0.559516, -0.807508, -0.186744,
		25.770620, 35.311501, 57.125443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078306, 36.142841, 57.283298>,  <25.378960, 35.876755, 57.256165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078306, 36.142841, 57.283298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.033508, 35.807533, 57.069847>,  <26.006630, 35.606350, 56.941776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.033508, 35.807533, 57.069847>,  <26.078306, 36.142841, 57.283298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033508, 35.807533, 57.069847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510765, 0.412082, -0.754524,
		0.852394, -0.357063, 0.382007,
		-0.111995, -0.838268, -0.533632,
		25.999910, 35.556053, 56.909756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720213, 35.876736, 57.162216>,  <26.078306, 36.142841, 57.283298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720213, 35.876736, 57.162216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.545450, 35.681892, 56.859737>,  <26.440594, 35.564987, 56.678249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.545450, 35.681892, 56.859737>,  <26.720213, 35.876736, 57.162216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545450, 35.681892, 56.859737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701835, 0.341224, -0.625296,
		0.562621, -0.803922, 0.192788,
		-0.436905, -0.487110, -0.756200,
		26.414379, 35.535759, 56.632877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293362, 35.571087, 56.740837>,  <26.720213, 35.876736, 57.162216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293362, 35.571087, 56.740837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.974550, 35.584442, 56.499630>,  <26.783264, 35.592457, 56.354904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.974550, 35.584442, 56.499630>,  <27.293362, 35.571087, 56.740837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974550, 35.584442, 56.499630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593660, 0.226768, -0.772104,
		0.110964, -0.973376, -0.200564,
		-0.797029, 0.033391, -0.603018,
		26.735441, 35.594460, 56.318726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448008, 35.215485, 56.060955>,  <27.293362, 35.571087, 56.740837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448008, 35.215485, 56.060955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.178404, 35.510963, 56.058502>,  <27.016642, 35.688251, 56.057030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.178404, 35.510963, 56.058502>,  <27.448008, 35.215485, 56.060955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178404, 35.510963, 56.058502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394435, 0.352851, -0.848479,
		-0.624604, -0.574303, -0.529193,
		-0.674011, 0.738696, -0.006133,
		26.976200, 35.732571, 56.056664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003099, 35.110123, 55.481640>,  <27.448008, 35.215485, 56.060955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003099, 35.110123, 55.481640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.973032, 35.501423, 55.558979>,  <26.954992, 35.736202, 55.605385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.973032, 35.501423, 55.558979>,  <27.003099, 35.110123, 55.481640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973032, 35.501423, 55.558979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276340, 0.206741, -0.938560,
		-0.958116, -0.017118, -0.285869,
		-0.075167, 0.978246, 0.193352,
		26.950481, 35.794895, 55.616985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853159, 35.364811, 54.844261>,  <27.003099, 35.110123, 55.481640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853159, 35.364811, 54.844261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.951454, 35.696999, 55.044231>,  <27.010431, 35.896313, 55.164215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.951454, 35.696999, 55.044231>,  <26.853159, 35.364811, 54.844261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951454, 35.696999, 55.044231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256425, 0.441677, -0.859748,
		-0.934804, 0.339467, -0.104417,
		0.245738, 0.830472, 0.499930,
		27.025175, 35.946140, 55.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592003, 35.940422, 54.465660>,  <26.853159, 35.364811, 54.844261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592003, 35.940422, 54.465660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.884157, 36.086941, 54.696262>,  <27.059450, 36.174854, 54.834625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.884157, 36.086941, 54.696262>,  <26.592003, 35.940422, 54.465660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884157, 36.086941, 54.696262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427741, 0.412750, -0.804161,
		-0.532519, 0.833943, 0.144784,
		0.730385, 0.366301, 0.576509,
		27.103273, 36.196831, 54.869213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682390, 36.661964, 54.244728>,  <26.592003, 35.940422, 54.465660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682390, 36.661964, 54.244728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.020695, 36.551804, 54.427528>,  <27.223677, 36.485706, 54.537209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.020695, 36.551804, 54.427528>,  <26.682390, 36.661964, 54.244728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020695, 36.551804, 54.427528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533470, 0.452595, -0.714540,
		-0.010052, 0.848123, 0.529703,
		0.845759, -0.275399, 0.456998,
		27.274422, 36.469185, 54.564629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107170, 37.249557, 54.082073>,  <26.682390, 36.661964, 54.244728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107170, 37.249557, 54.082073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.364424, 36.984016, 54.234741>,  <27.518776, 36.824692, 54.326340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.364424, 36.984016, 54.234741>,  <27.107170, 37.249557, 54.082073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364424, 36.984016, 54.234741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750532, 0.447597, -0.486167,
		0.151913, 0.599124, 0.786112,
		0.643136, -0.663857, 0.381666,
		27.557365, 36.784859, 54.349239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656191, 37.608868, 54.297653>,  <27.107170, 37.249557, 54.082073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656191, 37.608868, 54.297653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.801401, 37.238224, 54.258450>,  <27.888527, 37.015839, 54.234928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.801401, 37.238224, 54.258450>,  <27.656191, 37.608868, 54.297653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801401, 37.238224, 54.258450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823287, 0.368235, -0.431974,
		0.436362, 0.076127, 0.896545,
		0.363024, -0.926611, -0.098009,
		27.910309, 36.960239, 54.229046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324341, 37.573105, 54.420662>,  <27.656191, 37.608868, 54.297653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324341, 37.573105, 54.420662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285423, 37.235275, 54.210052>,  <28.262074, 37.032578, 54.083687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285423, 37.235275, 54.210052>,  <28.324341, 37.573105, 54.420662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285423, 37.235275, 54.210052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900989, 0.149993, -0.407088,
		0.422791, -0.513998, 0.746361,
		-0.097294, -0.844576, -0.526522,
		28.256235, 36.981903, 54.052097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022875, 37.352650, 54.329464>,  <28.324341, 37.573105, 54.420662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022875, 37.352650, 54.329464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.828785, 37.141365, 54.050739>,  <28.712332, 37.014595, 53.883503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.828785, 37.141365, 54.050739>,  <29.022875, 37.352650, 54.329464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828785, 37.141365, 54.050739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807532, 0.034916, -0.588789,
		0.335334, -0.848395, 0.409605,
		-0.485224, -0.528211, -0.696815,
		28.683218, 36.982903, 53.841694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539333, 36.895123, 54.057915>,  <29.022875, 37.352650, 54.329464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539333, 36.895123, 54.057915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241871, 36.937561, 53.793880>,  <29.063393, 36.963024, 53.635460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241871, 36.937561, 53.793880>,  <29.539333, 36.895123, 54.057915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241871, 36.937561, 53.793880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665633, 0.209779, -0.716187,
		0.062485, -0.971975, -0.226628,
		-0.743658, 0.106100, -0.660087,
		29.018774, 36.969391, 53.595856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767851, 36.463230, 53.547623>,  <29.539333, 36.895123, 54.057915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767851, 36.463230, 53.547623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494619, 36.695744, 53.370758>,  <29.330681, 36.835251, 53.264641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.494619, 36.695744, 53.370758>,  <29.767851, 36.463230, 53.547623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494619, 36.695744, 53.370758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510599, -0.052781, -0.858198,
		-0.522197, -0.811985, -0.260751,
		-0.683081, 0.581288, -0.442161,
		29.289696, 36.870129, 53.238110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628172, 36.102303, 52.935108>,  <29.767851, 36.463230, 53.547623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628172, 36.102303, 52.935108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480841, 36.470520, 52.883049>,  <29.392443, 36.691448, 52.851814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480841, 36.470520, 52.883049>,  <29.628172, 36.102303, 52.935108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480841, 36.470520, 52.883049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240021, -0.041088, -0.969898,
		-0.898179, -0.388478, -0.205815,
		-0.368327, 0.920542, -0.130147,
		29.370342, 36.746681, 52.844006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322006, 36.060345, 52.287109>,  <29.628172, 36.102303, 52.935108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322006, 36.060345, 52.287109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363617, 36.456688, 52.321476>,  <29.388584, 36.694492, 52.342098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363617, 36.456688, 52.321476>,  <29.322006, 36.060345, 52.287109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363617, 36.456688, 52.321476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104517, 0.075018, -0.991690,
		-0.989068, 0.112142, -0.095758,
		0.104027, 0.990857, 0.085919,
		29.394825, 36.753944, 52.347252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869017, 36.381561, 51.766891>,  <29.322006, 36.060345, 52.287109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869017, 36.381561, 51.766891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.146149, 36.658886, 51.846191>,  <29.312428, 36.825279, 51.893772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.146149, 36.658886, 51.846191>,  <28.869017, 36.381561, 51.766891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146149, 36.658886, 51.846191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208600, 0.070475, -0.975459,
		-0.690269, 0.717184, -0.095797,
		0.692832, 0.693312, 0.198251,
		29.353998, 36.866879, 51.905666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702045, 37.012836, 51.386673>,  <28.869017, 36.381561, 51.766891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702045, 37.012836, 51.386673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091988, 37.010780, 51.475788>,  <29.325953, 37.009544, 51.529255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091988, 37.010780, 51.475788>,  <28.702045, 37.012836, 51.386673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091988, 37.010780, 51.475788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220453, 0.168360, -0.960758,
		-0.032568, 0.985712, 0.165260,
		0.974854, -0.005142, 0.222786,
		29.384443, 37.009239, 51.542625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027143, 37.426804, 50.771732>,  <28.702045, 37.012836, 51.386673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027143, 37.426804, 50.771732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334497, 37.238987, 50.945683>,  <29.518909, 37.126297, 51.050053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334497, 37.238987, 50.945683>,  <29.027143, 37.426804, 50.771732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334497, 37.238987, 50.945683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540881, 0.113226, -0.833443,
		0.342096, 0.875621, 0.340967,
		0.768386, -0.469541, 0.434873,
		29.565014, 37.098125, 51.076145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542671, 37.619141, 50.406017>,  <29.027143, 37.426804, 50.771732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542671, 37.619141, 50.406017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.704592, 37.287071, 50.559353>,  <29.801744, 37.087830, 50.651356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.704592, 37.287071, 50.559353>,  <29.542671, 37.619141, 50.406017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704592, 37.287071, 50.559353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600504, -0.074805, -0.796115,
		0.689589, 0.552465, 0.468241,
		0.404799, -0.830172, 0.383342,
		29.826031, 37.038021, 50.674355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271248, 37.543056, 50.213848>,  <29.542671, 37.619141, 50.406017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271248, 37.543056, 50.213848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171860, 37.161434, 50.280838>,  <30.112226, 36.932461, 50.321033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171860, 37.161434, 50.280838>,  <30.271248, 37.543056, 50.213848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171860, 37.161434, 50.280838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413323, -0.260796, -0.872438,
		0.876029, -0.147551, 0.459132,
		-0.248469, -0.954051, 0.167479,
		30.097319, 36.875217, 50.331081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921392, 37.037292, 50.032471>,  <30.271248, 37.543056, 50.213848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921392, 37.037292, 50.032471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.633759, 36.761581, 50.067810>,  <30.461178, 36.596153, 50.089012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.633759, 36.761581, 50.067810>,  <30.921392, 37.037292, 50.032471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633759, 36.761581, 50.067810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499107, -0.600735, -0.624507,
		0.483535, -0.404980, 0.776006,
		-0.719087, -0.689281, 0.088348,
		30.418032, 36.554798, 50.094315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300110, 36.377579, 50.098339>,  <30.921392, 37.037292, 50.032471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300110, 36.377579, 50.098339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928413, 36.313541, 49.965145>,  <30.705395, 36.275120, 49.885227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928413, 36.313541, 49.965145>,  <31.300110, 36.377579, 50.098339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928413, 36.313541, 49.965145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358641, -0.607455, -0.708784,
		-0.088802, -0.778054, 0.621889,
		-0.929242, -0.160094, -0.332985,
		30.649641, 36.265514, 49.865250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224308, 35.588486, 50.011131>,  <31.300110, 36.377579, 50.098339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224308, 35.588486, 50.011131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.953932, 35.778488, 49.785751>,  <30.791706, 35.892490, 49.650524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.953932, 35.778488, 49.785751>,  <31.224308, 35.588486, 50.011131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953932, 35.778488, 49.785751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240316, -0.580697, -0.777843,
		-0.696675, -0.661179, 0.278363,
		-0.675938, 0.475008, -0.563449,
		30.751150, 35.920990, 49.616718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902311, 35.032341, 49.720295>,  <31.224308, 35.588486, 50.011131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902311, 35.032341, 49.720295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802851, 35.319073, 49.459732>,  <30.743176, 35.491112, 49.303394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802851, 35.319073, 49.459732>,  <30.902311, 35.032341, 49.720295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802851, 35.319073, 49.459732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017773, -0.669037, -0.743016,
		-0.968430, -0.196328, 0.153616,
		-0.248649, 0.716830, -0.651405,
		30.728256, 35.534122, 49.264309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368835, 34.701584, 49.429100>,  <30.902311, 35.032341, 49.720295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368835, 34.701584, 49.429100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446560, 35.014599, 49.192497>,  <30.493195, 35.202408, 49.050533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446560, 35.014599, 49.192497>,  <30.368835, 34.701584, 49.429100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446560, 35.014599, 49.192497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222784, -0.552041, -0.803504,
		-0.955307, 0.287909, 0.067069,
		0.194311, 0.782534, -0.591510,
		30.504852, 35.249359, 49.015045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739414, 34.901180, 48.944992>,  <30.368835, 34.701584, 49.429100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739414, 34.901180, 48.944992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.084126, 35.033211, 48.790905>,  <30.290953, 35.112431, 48.698452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.084126, 35.033211, 48.790905>,  <29.739414, 34.901180, 48.944992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084126, 35.033211, 48.790905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175326, -0.518767, -0.836744,
		-0.476026, 0.788625, -0.389191,
		0.861777, 0.330077, -0.385214,
		30.342659, 35.132233, 48.675343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667583, 35.054401, 48.180752>,  <29.739414, 34.901180, 48.944992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667583, 35.054401, 48.180752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058479, 34.997623, 48.243820>,  <30.293016, 34.963558, 48.281662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058479, 34.997623, 48.243820>,  <29.667583, 35.054401, 48.180752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058479, 34.997623, 48.243820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056013, -0.544209, -0.837078,
		0.204621, 0.826855, -0.523870,
		0.977237, -0.141941, 0.157671,
		30.351650, 34.955040, 48.291122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017078, 34.993435, 47.552444>,  <29.667583, 35.054401, 48.180752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017078, 34.993435, 47.552444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272602, 34.806831, 47.797161>,  <30.425917, 34.694870, 47.943993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272602, 34.806831, 47.797161>,  <30.017078, 34.993435, 47.552444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272602, 34.806831, 47.797161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094965, -0.741298, -0.664423,
		0.763483, 0.482538, -0.429245,
		0.638808, -0.466513, 0.611793,
		30.464245, 34.666878, 47.980698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493282, 34.914616, 46.993622>,  <30.017078, 34.993435, 47.552444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493282, 34.914616, 46.993622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636248, 34.682243, 47.286133>,  <30.722027, 34.542820, 47.461639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636248, 34.682243, 47.286133>,  <30.493282, 34.914616, 46.993622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636248, 34.682243, 47.286133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108136, -0.803475, -0.585436,
		0.927666, 0.130164, -0.349991,
		0.357412, -0.580935, 0.731280,
		30.743471, 34.507961, 47.505516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172260, 34.534786, 46.783737>,  <30.493282, 34.914616, 46.993622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172260, 34.534786, 46.783737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004028, 34.332474, 47.085014>,  <30.903090, 34.211086, 47.265781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004028, 34.332474, 47.085014>,  <31.172260, 34.534786, 46.783737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004028, 34.332474, 47.085014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254508, -0.731082, -0.633045,
		0.870826, -0.457940, 0.178754,
		-0.420580, -0.505777, 0.753194,
		30.877853, 34.180740, 47.310974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472992, 33.802822, 46.822510>,  <31.172260, 34.534786, 46.783737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472992, 33.802822, 46.822510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.094723, 33.836113, 46.948223>,  <30.867762, 33.856087, 47.023651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.094723, 33.836113, 46.948223>,  <31.472992, 33.802822, 46.822510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094723, 33.836113, 46.948223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270808, -0.736557, -0.619797,
		0.179901, -0.671236, 0.719082,
		-0.945673, 0.083231, 0.314283,
		30.811020, 33.861084, 47.042507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408073, 33.183666, 46.650368>,  <31.472992, 33.802822, 46.822510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408073, 33.183666, 46.650368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076874, 33.404293, 46.690739>,  <30.878153, 33.536671, 46.714962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076874, 33.404293, 46.690739>,  <31.408073, 33.183666, 46.650368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076874, 33.404293, 46.690739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475659, -0.595605, -0.647304,
		-0.296920, -0.583975, 0.755521,
		-0.828002, 0.551568, 0.100926,
		30.828474, 33.569763, 46.721016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994225, 33.316021, 47.055786>,  <31.408073, 33.183666, 46.650368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994225, 33.316021, 47.055786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089195, 33.052204, 46.770512>,  <32.146179, 32.893913, 46.599346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089195, 33.052204, 46.770512>,  <31.994225, 33.316021, 47.055786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089195, 33.052204, 46.770512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963618, 0.067138, 0.258713,
		-0.122750, -0.748663, 0.651488,
		0.237429, -0.659543, -0.713184,
		32.160423, 32.854340, 46.556557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269676, 32.730652, 47.364529>,  <31.994225, 33.316021, 47.055786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269676, 32.730652, 47.364529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.418713, 32.769154, 46.995331>,  <32.508133, 32.792255, 46.773811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.418713, 32.769154, 46.995331>,  <32.269676, 32.730652, 47.364529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418713, 32.769154, 46.995331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927780, -0.060180, 0.368243,
		-0.020103, -0.993536, -0.111721,
		0.372586, 0.096250, -0.922993,
		32.530487, 32.798027, 46.718433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777267, 32.254448, 47.200294>,  <32.269676, 32.730652, 47.364529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777267, 32.254448, 47.200294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.890759, 32.543148, 46.947765>,  <32.958855, 32.716370, 46.796246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.890759, 32.543148, 46.947765>,  <32.777267, 32.254448, 47.200294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890759, 32.543148, 46.947765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925697, -0.034397, 0.376699,
		0.250168, -0.691295, -0.677884,
		0.283728, 0.721753, -0.631325,
		32.975876, 32.759674, 46.758369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278275, 31.957594, 46.825848>,  <32.777267, 32.254448, 47.200294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278275, 31.957594, 46.825848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320732, 32.355328, 46.828022>,  <33.346207, 32.593967, 46.829327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320732, 32.355328, 46.828022>,  <33.278275, 31.957594, 46.825848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320732, 32.355328, 46.828022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890930, -0.097532, 0.443544,
		0.441562, -0.042237, -0.896236,
		0.106145, 0.994336, 0.005436,
		33.352577, 32.653629, 46.829655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897041, 32.177258, 46.409389>,  <33.278275, 31.957594, 46.825848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897041, 32.177258, 46.409389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807232, 32.468872, 46.668034>,  <33.753345, 32.643841, 46.823219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807232, 32.468872, 46.668034>,  <33.897041, 32.177258, 46.409389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807232, 32.468872, 46.668034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920572, -0.058935, 0.386100,
		0.319587, 0.681938, -0.657894,
		-0.224523, 0.729032, 0.646608,
		33.739876, 32.687580, 46.862015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415409, 32.648308, 46.387714>,  <33.897041, 32.177258, 46.409389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415409, 32.648308, 46.387714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250114, 32.733265, 46.741917>,  <34.150936, 32.784241, 46.954437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250114, 32.733265, 46.741917>,  <34.415409, 32.648308, 46.387714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250114, 32.733265, 46.741917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890759, -0.107726, 0.441524,
		0.189168, 0.971229, -0.144673,
		-0.413235, 0.212391, 0.885509,
		34.126144, 32.796982, 47.007568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775898, 33.217098, 46.687607>,  <34.415409, 32.648308, 46.387714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775898, 33.217098, 46.687607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624287, 32.997536, 46.985611>,  <34.533318, 32.865799, 47.164413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624287, 32.997536, 46.985611>,  <34.775898, 33.217098, 46.687607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624287, 32.997536, 46.985611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851752, 0.107774, 0.512742,
		-0.361740, 0.828907, 0.426682,
		-0.379030, -0.548906, 0.745009,
		34.510578, 32.832863, 47.209114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048897, 33.511665, 47.363686>,  <34.775898, 33.217098, 46.687607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048897, 33.511665, 47.363686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915836, 33.150280, 47.471832>,  <34.835999, 32.933449, 47.536720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915836, 33.150280, 47.471832>,  <35.048897, 33.511665, 47.363686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915836, 33.150280, 47.471832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774176, -0.097910, 0.625352,
		-0.538509, 0.417341, 0.732008,
		-0.332656, -0.903460, 0.270370,
		34.816040, 32.879242, 47.552944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153683, 33.534184, 48.032440>,  <35.048897, 33.511665, 47.363686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153683, 33.534184, 48.032440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124920, 33.145939, 47.940575>,  <35.107662, 32.912991, 47.885456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124920, 33.145939, 47.940575>,  <35.153683, 33.534184, 48.032440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124920, 33.145939, 47.940575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842057, -0.182486, 0.507581,
		-0.534573, -0.156891, 0.830431,
		-0.071907, -0.970610, -0.229664,
		35.103348, 32.854755, 47.871677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129738, 33.230892, 48.714855>,  <35.153683, 33.534184, 48.032440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129738, 33.230892, 48.714855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246834, 32.947853, 48.457603>,  <35.317093, 32.778030, 48.303253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246834, 32.947853, 48.457603>,  <35.129738, 33.230892, 48.714855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246834, 32.947853, 48.457603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792236, -0.197126, 0.577497,
		-0.535411, -0.678566, 0.502875,
		0.292740, -0.707594, -0.643128,
		35.334656, 32.735577, 48.264664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300812, 32.677841, 49.167297>,  <35.129738, 33.230892, 48.714855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300812, 32.677841, 49.167297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485619, 32.612614, 48.818596>,  <35.596504, 32.573479, 48.609375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485619, 32.612614, 48.818596>,  <35.300812, 32.677841, 49.167297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485619, 32.612614, 48.818596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815548, -0.308091, 0.489859,
		-0.348459, -0.937277, -0.009354,
		0.462016, -0.163067, -0.871751,
		35.624222, 32.563694, 48.557072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571430, 31.984432, 49.230976>,  <35.300812, 32.677841, 49.167297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571430, 31.984432, 49.230976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787636, 32.156490, 48.941753>,  <35.917358, 32.259724, 48.768219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787636, 32.156490, 48.941753>,  <35.571430, 31.984432, 49.230976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787636, 32.156490, 48.941753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841109, -0.256480, 0.476186,
		0.019378, -0.865560, -0.500430,
		0.540518, 0.430144, -0.723060,
		35.949791, 32.285534, 48.724834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081192, 31.552097, 49.115452>,  <35.571430, 31.984432, 49.230976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081192, 31.552097, 49.115452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241207, 31.885180, 48.962315>,  <36.337215, 32.085030, 48.870434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241207, 31.885180, 48.962315>,  <36.081192, 31.552097, 49.115452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241207, 31.885180, 48.962315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909512, -0.309212, 0.277807,
		0.112952, -0.459333, -0.881053,
		0.400038, 0.832707, -0.382843,
		36.361217, 32.134991, 48.847462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737511, 31.396507, 48.790424>,  <36.081192, 31.552097, 49.115452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737511, 31.396507, 48.790424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767960, 31.795345, 48.789165>,  <36.786228, 32.034649, 48.788410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767960, 31.795345, 48.789165>,  <36.737511, 31.396507, 48.790424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767960, 31.795345, 48.789165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993551, -0.076116, -0.084037,
		-0.084032, 0.003271, -0.996458,
		0.076121, 0.997094, -0.003146,
		36.790794, 32.094475, 48.788223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317379, 31.519558, 48.333210>,  <36.737511, 31.396507, 48.790424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317379, 31.519558, 48.333210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291866, 31.848833, 48.558880>,  <37.276558, 32.046398, 48.694283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291866, 31.848833, 48.558880>,  <37.317379, 31.519558, 48.333210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291866, 31.848833, 48.558880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994592, 0.098866, -0.031808,
		-0.081962, 0.559092, -0.825044,
		-0.063785, 0.823190, 0.564172,
		37.272732, 32.095791, 48.728130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934067, 31.924749, 48.119877>,  <37.317379, 31.519558, 48.333210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934067, 31.924749, 48.119877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804806, 32.042603, 48.479603>,  <37.727249, 32.113316, 48.695438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804806, 32.042603, 48.479603>,  <37.934067, 31.924749, 48.119877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804806, 32.042603, 48.479603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945182, 0.147620, 0.291272,
		-0.046939, 0.944140, -0.326183,
		-0.323153, 0.294631, 0.899314,
		37.707859, 32.130993, 48.749397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429256, 32.254925, 47.611382>,  <37.934067, 31.924749, 48.119877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429256, 32.254925, 47.611382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601997, 32.580753, 47.456470>,  <38.705643, 32.776249, 47.363525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601997, 32.580753, 47.456470>,  <38.429256, 32.254925, 47.611382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601997, 32.580753, 47.456470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174700, -0.496788, -0.850107,
		-0.884863, 0.299465, -0.356845,
		0.431853, 0.814569, -0.387273,
		38.731552, 32.825123, 47.340290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186073, 32.663425, 47.042431>,  <38.429256, 32.254925, 47.611382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186073, 32.663425, 47.042431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584152, 32.673580, 47.004612>,  <38.822998, 32.679672, 46.981922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584152, 32.673580, 47.004612>,  <38.186073, 32.663425, 47.042431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584152, 32.673580, 47.004612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080762, -0.332924, -0.939489,
		-0.055323, 0.942612, -0.329275,
		0.995197, 0.025383, -0.094546,
		38.882710, 32.681194, 46.976250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365906, 32.896084, 46.449490>,  <38.186073, 32.663425, 47.042431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365906, 32.896084, 46.449490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638126, 32.620182, 46.548355>,  <38.801460, 32.454639, 46.607674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638126, 32.620182, 46.548355>,  <38.365906, 32.896084, 46.449490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638126, 32.620182, 46.548355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048108, -0.378669, -0.924281,
		0.731118, 0.617131, -0.290886,
		0.680552, -0.689753, 0.247163,
		38.842293, 32.413258, 46.622505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891140, 32.855804, 45.870354>,  <38.365906, 32.896084, 46.449490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891140, 32.855804, 45.870354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926933, 32.492451, 46.033737>,  <38.948410, 32.274441, 46.131767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926933, 32.492451, 46.033737>,  <38.891140, 32.855804, 45.870354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926933, 32.492451, 46.033737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309539, -0.364428, -0.878281,
		0.946666, 0.205029, 0.248568,
		0.089488, -0.908381, 0.408456,
		38.953781, 32.219936, 46.156273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626255, 32.609333, 45.718800>,  <38.891140, 32.855804, 45.870354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626255, 32.609333, 45.718800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.372929, 32.306442, 45.782707>,  <39.220932, 32.124710, 45.821053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.372929, 32.306442, 45.782707>,  <39.626255, 32.609333, 45.718800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372929, 32.306442, 45.782707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392642, -0.492294, -0.776839,
		0.666894, -0.429252, 0.609094,
		-0.633313, -0.757225, 0.159765,
		39.182934, 32.079273, 45.830635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253605, 33.015923, 45.897175>,  <39.626255, 32.609333, 45.718800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253605, 33.015923, 45.897175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591805, 32.952923, 45.693089>,  <40.794724, 32.915123, 45.570637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591805, 32.952923, 45.693089>,  <40.253605, 33.015923, 45.897175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591805, 32.952923, 45.693089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497137, -0.580926, -0.644499,
		-0.194887, 0.798572, -0.569475,
		0.845502, -0.157503, -0.510215,
		40.845455, 32.905670, 45.540024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323692, 33.271103, 45.188129>,  <40.253605, 33.015923, 45.897175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323692, 33.271103, 45.188129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528446, 32.931427, 45.240055>,  <40.651299, 32.727623, 45.271210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528446, 32.931427, 45.240055>,  <40.323692, 33.271103, 45.188129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528446, 32.931427, 45.240055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568357, -0.448091, -0.690062,
		0.644162, 0.279449, -0.712013,
		0.511884, -0.849189, 0.129817,
		40.682011, 32.676670, 45.278999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477871, 33.080341, 44.527199>,  <40.323692, 33.271103, 45.188129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477871, 33.080341, 44.527199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484093, 32.751369, 44.754662>,  <40.487827, 32.553986, 44.891140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484093, 32.751369, 44.754662>,  <40.477871, 33.080341, 44.527199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484093, 32.751369, 44.754662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582418, -0.469735, -0.663429,
		0.812741, -0.320877, -0.486303,
		0.015555, -0.822428, 0.568657,
		40.488758, 32.504642, 44.925259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764240, 32.584076, 44.111752>,  <40.477871, 33.080341, 44.527199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764240, 32.584076, 44.111752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881741, 32.436447, 43.759048>,  <40.952240, 32.347870, 43.547428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881741, 32.436447, 43.759048>,  <40.764240, 32.584076, 44.111752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881741, 32.436447, 43.759048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851217, -0.520693, -0.065632,
		-0.434901, 0.769846, -0.467118,
		0.293751, -0.369075, -0.881756,
		40.969868, 32.325726, 43.494522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054779, 32.392986, 44.364079>,  <40.764240, 32.584076, 44.111752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054779, 32.392986, 44.364079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852501, 32.051212, 44.411762>,  <39.731133, 31.846148, 44.440372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852501, 32.051212, 44.411762>,  <40.054779, 32.392986, 44.364079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852501, 32.051212, 44.411762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608003, 0.451008, 0.653394,
		-0.612047, 0.257940, -0.747573,
		-0.505698, -0.854435, 0.119210,
		39.700790, 31.794882, 44.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297745, 32.341206, 43.635654>,  <40.054779, 32.392986, 44.364079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297745, 32.341206, 43.635654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.526859, 32.016769, 43.683067>,  <40.664330, 31.822107, 43.711514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.526859, 32.016769, 43.683067>,  <40.297745, 32.341206, 43.635654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526859, 32.016769, 43.683067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240912, -0.304786, -0.921448,
		0.783503, 0.499238, -0.369978,
		0.572787, -0.811090, 0.118528,
		40.698696, 31.773443, 43.718624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554363, 32.047211, 43.080936>,  <40.297745, 32.341206, 43.635654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554363, 32.047211, 43.080936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597809, 31.674963, 43.220734>,  <40.623875, 31.451614, 43.304611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597809, 31.674963, 43.220734>,  <40.554363, 32.047211, 43.080936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597809, 31.674963, 43.220734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082485, -0.358798, -0.929764,
		0.990656, 0.072156, -0.115732,
		0.108612, -0.930623, 0.349493,
		40.630394, 31.395777, 43.325581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096920, 32.230473, 42.591511>,  <40.554363, 32.047211, 43.080936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096920, 32.230473, 42.591511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980389, 32.611717, 42.624275>,  <40.910469, 32.840462, 42.643932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980389, 32.611717, 42.624275>,  <41.096920, 32.230473, 42.591511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980389, 32.611717, 42.624275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921063, 0.302599, -0.245106,
		-0.258399, 0.004039, -0.966030,
		-0.291330, 0.953109, 0.081911,
		40.892990, 32.897652, 42.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250576, 32.606991, 41.958858>,  <41.096920, 32.230473, 42.591511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250576, 32.606991, 41.958858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.289246, 32.782925, 42.316002>,  <41.312447, 32.888485, 42.530289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.289246, 32.782925, 42.316002>,  <41.250576, 32.606991, 41.958858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289246, 32.782925, 42.316002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955413, 0.210444, -0.207120,
		-0.278996, 0.873074, -0.399880,
		0.096678, 0.439836, 0.892859,
		41.318249, 32.914875, 42.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598480, 33.299801, 41.910118>,  <41.250576, 32.606991, 41.958858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598480, 33.299801, 41.910118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.683205, 33.157906, 42.274384>,  <41.734039, 33.072769, 42.492943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.683205, 33.157906, 42.274384>,  <41.598480, 33.299801, 41.910118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683205, 33.157906, 42.274384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971698, 0.176160, -0.157385,
		-0.104591, 0.918222, 0.382007,
		0.211809, -0.354735, 0.910659,
		41.746746, 33.051487, 42.547581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042221, 33.770691, 42.182552>,  <41.598480, 33.299801, 41.910118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042221, 33.770691, 42.182552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102608, 33.407509, 42.338924>,  <42.138840, 33.189598, 42.432747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102608, 33.407509, 42.338924>,  <42.042221, 33.770691, 42.182552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102608, 33.407509, 42.338924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988310, 0.130127, -0.079435,
		0.021252, 0.398354, 0.916986,
		0.150968, -0.907954, 0.390932,
		42.147900, 33.135124, 42.456203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514893, 33.850540, 42.807526>,  <42.042221, 33.770691, 42.182552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514893, 33.850540, 42.807526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520996, 33.482662, 42.650593>,  <42.524658, 33.261936, 42.556431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520996, 33.482662, 42.650593>,  <42.514893, 33.850540, 42.807526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520996, 33.482662, 42.650593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994763, 0.053626, -0.087016,
		0.101068, -0.388952, 0.915697,
		0.015260, -0.919696, -0.392335,
		42.525574, 33.206753, 42.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975254, 33.440540, 43.155842>,  <42.514893, 33.850540, 42.807526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975254, 33.440540, 43.155842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.940128, 33.260471, 42.800396>,  <42.919052, 33.152431, 42.587128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.940128, 33.260471, 42.800396>,  <42.975254, 33.440540, 43.155842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940128, 33.260471, 42.800396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993919, -0.099093, -0.048020,
		-0.066439, -0.887429, 0.456132,
		-0.087814, -0.450168, -0.888616,
		42.913784, 33.125420, 42.533810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166080, 32.723614, 43.183392>,  <42.975254, 33.440540, 43.155842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166080, 32.723614, 43.183392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.218498, 32.905834, 42.831188>,  <43.249950, 33.015167, 42.619865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.218498, 32.905834, 42.831188>,  <43.166080, 32.723614, 43.183392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218498, 32.905834, 42.831188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985042, -0.160069, 0.063791,
		-0.111882, -0.875700, -0.469715,
		0.131049, 0.455552, -0.880510,
		43.257812, 33.042500, 42.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598377, 32.352119, 42.715221>,  <43.166080, 32.723614, 43.183392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598377, 32.352119, 42.715221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.623837, 32.729923, 42.586319>,  <43.639114, 32.956604, 42.508976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.623837, 32.729923, 42.586319>,  <43.598377, 32.352119, 42.715221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623837, 32.729923, 42.586319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996786, -0.044425, 0.066672,
		0.048656, -0.325468, -0.944300,
		0.063651, 0.944509, -0.322260,
		43.642933, 33.013275, 42.489639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893703, 32.391453, 41.951046>,  <43.598377, 32.352119, 42.715221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893703, 32.391453, 41.951046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.011196, 32.687267, 42.193306>,  <44.081692, 32.864754, 42.338661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.011196, 32.687267, 42.193306>,  <43.893703, 32.391453, 41.951046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011196, 32.687267, 42.193306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955885, -0.225917, -0.187739,
		-0.002012, 0.634076, -0.773268,
		0.293735, 0.739533, 0.605649,
		44.099316, 32.909126, 42.375000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289307, 32.887756, 41.541801>,  <43.893703, 32.391453, 41.951046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289307, 32.887756, 41.541801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.422562, 32.826504, 41.913944>,  <44.502514, 32.789753, 42.137230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.422562, 32.826504, 41.913944>,  <44.289307, 32.887756, 41.541801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422562, 32.826504, 41.913944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898427, -0.247842, -0.362496,
		0.286090, 0.956622, 0.055008,
		0.333138, -0.153127, 0.930361,
		44.522503, 32.780567, 42.193054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063812, 33.179325, 41.590084>,  <44.289307, 32.887756, 41.541801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063812, 33.179325, 41.590084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.074215, 32.924633, 41.898346>,  <45.080456, 32.771820, 42.083302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.074215, 32.924633, 41.898346>,  <45.063812, 33.179325, 41.590084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074215, 32.924633, 41.898346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858213, -0.381109, -0.343841,
		0.512635, 0.670325, 0.536536,
		0.026006, -0.636727, 0.770651,
		45.082016, 32.733616, 42.129539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821659, 33.196911, 41.667625>,  <45.063812, 33.179325, 41.590084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821659, 33.196911, 41.667625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.126545, 33.019455, 41.856186>,  <46.309475, 32.912979, 41.969322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.126545, 33.019455, 41.856186>,  <45.821659, 33.196911, 41.667625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.126545, 33.019455, 41.856186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646913, 0.548170, -0.530107,
		-0.023228, 0.709007, 0.704819,
		0.762210, -0.443644, 0.471398,
		46.355209, 32.886360, 41.997604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190834, 33.753174, 41.924114>,  <45.821659, 33.196911, 41.667625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190834, 33.753174, 41.924114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.435127, 33.439617, 41.879356>,  <46.581703, 33.251484, 41.852501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.435127, 33.439617, 41.879356>,  <46.190834, 33.753174, 41.924114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435127, 33.439617, 41.879356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716523, 0.607248, -0.343285,
		0.337046, 0.129480, 0.932542,
		0.610733, -0.783891, -0.111895,
		46.618347, 33.204449, 41.845787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945026, 33.921314, 42.159142>,  <46.190834, 33.753174, 41.924114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945026, 33.921314, 42.159142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.939011, 33.640205, 41.874641>,  <46.935402, 33.471539, 41.703941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.939011, 33.640205, 41.874641>,  <46.945026, 33.921314, 42.159142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.939011, 33.640205, 41.874641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648716, 0.534441, -0.541793,
		0.760882, -0.469551, 0.447863,
		-0.015043, -0.702776, -0.711252,
		46.934498, 33.429371, 41.661266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.629650, 33.700089, 41.967865>,  <46.945026, 33.921314, 42.159142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.629650, 33.700089, 41.967865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.379902, 33.622082, 41.665306>,  <47.230053, 33.575279, 41.483772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.379902, 33.622082, 41.665306>,  <47.629650, 33.700089, 41.967865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379902, 33.622082, 41.665306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567603, 0.551992, -0.610845,
		0.536646, -0.810725, -0.233958,
		-0.624371, -0.195012, -0.756394,
		47.192593, 33.563580, 41.438389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.123260, 33.512909, 41.353283>,  <47.629650, 33.700089, 41.967865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.123260, 33.512909, 41.353283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.765224, 33.638725, 41.226864>,  <47.550404, 33.714214, 41.151012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.765224, 33.638725, 41.226864>,  <48.123260, 33.512909, 41.353283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.765224, 33.638725, 41.226864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445777, 0.647153, -0.618447,
		0.010004, -0.694449, -0.719472,
		-0.895088, 0.314537, -0.316043,
		47.496696, 33.733086, 41.132050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.062565, 33.445782, 40.563961>,  <48.123260, 33.512909, 41.353283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.062565, 33.445782, 40.563961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.865196, 33.752052, 40.729019>,  <47.746777, 33.935814, 40.828053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.865196, 33.752052, 40.729019>,  <48.062565, 33.445782, 40.563961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865196, 33.752052, 40.729019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621096, 0.642288, -0.449117,
		-0.608914, 0.034687, -0.792477,
		-0.493420, 0.765678, 0.412642,
		47.717171, 33.981754, 40.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.360535, 33.797844, 39.921242>,  <48.062565, 33.445782, 40.563961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.360535, 33.797844, 39.921242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.087318, 33.721771, 39.639168>,  <47.923389, 33.676128, 39.469925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.087318, 33.721771, 39.639168>,  <48.360535, 33.797844, 39.921242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.087318, 33.721771, 39.639168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695892, 0.462643, 0.549268,
		0.221787, 0.865905, -0.448351,
		-0.683040, -0.190183, -0.705185,
		47.882408, 33.664715, 39.427612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.652275, 33.345528, 39.499023>,  <48.360535, 33.797844, 39.921242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.652275, 33.345528, 39.499023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.838223, 33.120918, 39.225208>,  <48.949791, 32.986153, 39.060921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.838223, 33.120918, 39.225208>,  <48.652275, 33.345528, 39.499023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.838223, 33.120918, 39.225208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884370, -0.257576, -0.389286,
		0.042273, 0.786350, -0.616334,
		0.464868, -0.561523, -0.684536,
		48.977684, 32.952461, 39.019848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.395279, 33.585476, 38.818123>,  <48.652275, 33.345528, 39.499023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.395279, 33.585476, 38.818123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.529938, 33.209408, 38.839066>,  <48.610733, 32.983765, 38.851631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.529938, 33.209408, 38.839066>,  <48.395279, 33.585476, 38.818123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.529938, 33.209408, 38.839066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888784, -0.335625, -0.312119,
		0.311017, 0.058543, -0.948599,
		0.336646, -0.940175, 0.052353,
		48.630932, 32.927357, 38.854771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.177685, 33.355911, 38.251080>,  <48.395279, 33.585476, 38.818123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.177685, 33.355911, 38.251080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.223904, 33.078548, 38.535568>,  <48.251633, 32.912132, 38.706261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.223904, 33.078548, 38.535568>,  <48.177685, 33.355911, 38.251080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.223904, 33.078548, 38.535568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785860, -0.501740, -0.361498,
		0.607514, -0.517154, -0.602892,
		0.115545, -0.693404, 0.711225,
		48.258568, 32.870529, 38.748936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414555, 33.491936, 37.955368>,  <48.177685, 33.355911, 38.251080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414555, 33.491936, 37.955368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.430611, 33.768612, 38.243801>,  <47.440243, 33.934616, 38.416859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.430611, 33.768612, 38.243801>,  <47.414555, 33.491936, 37.955368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430611, 33.768612, 38.243801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777890, 0.431300, -0.457020,
		-0.627117, 0.579263, -0.520748,
		0.040136, 0.691690, 0.721078,
		47.442650, 33.976120, 38.460125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318211, 34.267857, 37.838715>,  <47.414555, 33.491936, 37.955368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318211, 34.267857, 37.838715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.595680, 34.208168, 38.120579>,  <47.762161, 34.172356, 38.289696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.595680, 34.208168, 38.120579>,  <47.318211, 34.267857, 37.838715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.595680, 34.208168, 38.120579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638646, 0.579816, -0.505909,
		-0.333080, 0.800966, 0.497505,
		0.693678, -0.149222, 0.704659,
		47.803783, 34.163403, 38.331978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.914646, 34.313553, 37.285347>,  <47.318211, 34.267857, 37.838715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.914646, 34.313553, 37.285347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.168236, 34.159294, 37.553482>,  <48.320389, 34.066738, 37.714363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.168236, 34.159294, 37.553482>,  <47.914646, 34.313553, 37.285347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.168236, 34.159294, 37.553482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740854, 0.551487, -0.383402,
		-0.221825, 0.739690, 0.635336,
		0.633979, -0.385644, 0.670336,
		48.358429, 34.043602, 37.754581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.274906, 34.828518, 37.499577>,  <47.914646, 34.313553, 37.285347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.274906, 34.828518, 37.499577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.497372, 34.509846, 37.594227>,  <48.630852, 34.318642, 37.651016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.497372, 34.509846, 37.594227>,  <48.274906, 34.828518, 37.499577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.497372, 34.509846, 37.594227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810118, 0.456159, -0.368276,
		0.185458, 0.396515, 0.899100,
		0.556160, -0.796677, 0.236626,
		48.664219, 34.270844, 37.665215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.420197, 35.491570, 37.213318>,  <48.274906, 34.828518, 37.499577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.420197, 35.491570, 37.213318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.687679, 35.776031, 37.300121>,  <48.848167, 35.946709, 37.352203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.687679, 35.776031, 37.300121>,  <48.420197, 35.491570, 37.213318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.687679, 35.776031, 37.300121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365201, 0.059918, 0.928998,
		0.647657, -0.700479, 0.299782,
		0.668706, 0.711153, 0.217010,
		48.888290, 35.989376, 37.365223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.178482, 35.008904, 36.605019>,  <48.420197, 35.491570, 37.213318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.178482, 35.008904, 36.605019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.137218, 34.690910, 36.365902>,  <48.112461, 34.500114, 36.222431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.137218, 34.690910, 36.365902>,  <48.178482, 35.008904, 36.605019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.137218, 34.690910, 36.365902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453441, 0.572502, -0.683105,
		0.885296, 0.200592, -0.419540,
		-0.103162, -0.794987, -0.597791,
		48.106270, 34.452415, 36.186565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.488167, 35.180264, 35.916279>,  <48.178482, 35.008904, 36.605019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.488167, 35.180264, 35.916279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.174343, 34.932659, 35.901913>,  <47.986050, 34.784096, 35.893291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.174343, 34.932659, 35.901913>,  <48.488167, 35.180264, 35.916279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.174343, 34.932659, 35.901913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492797, 0.657650, -0.569779,
		0.376319, -0.429327, -0.821013,
		-0.784560, -0.619011, -0.035915,
		47.938976, 34.746956, 35.891140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.307411, 35.146854, 35.237434>,  <48.488167, 35.180264, 35.916279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.307411, 35.146854, 35.237434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.995205, 35.022957, 35.454639>,  <47.807880, 34.948620, 35.584961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.995205, 35.022957, 35.454639>,  <48.307411, 35.146854, 35.237434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.995205, 35.022957, 35.454639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580383, 0.681796, -0.445319,
		-0.232287, -0.662731, -0.711921,
		-0.780511, -0.309745, 0.543010,
		47.761051, 34.930035, 35.617542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716522, 35.077831, 34.683952>,  <48.307411, 35.146854, 35.237434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716522, 35.077831, 34.683952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.646343, 35.147881, 35.071468>,  <47.604237, 35.189911, 35.303978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.646343, 35.147881, 35.071468>,  <47.716522, 35.077831, 34.683952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646343, 35.147881, 35.071468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757227, 0.604863, -0.246473,
		-0.629147, -0.776835, 0.026490,
		-0.175446, 0.175127, 0.968788,
		47.593708, 35.200420, 35.362106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.993246, 30.770573, 57.078854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.297878, 30.917057, 57.292725>,  <31.480658, 31.004948, 57.421047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.297878, 30.917057, 57.292725>,  <30.993246, 30.770573, 57.078854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297878, 30.917057, 57.292725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558613, 0.047316, -0.828078,
		-0.328552, 0.929327, -0.168536,
		0.761581, 0.366213, 0.534680,
		31.526352, 31.026920, 57.453129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248590, 31.353485, 56.754181>,  <30.993246, 30.770573, 57.078854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248590, 31.353485, 56.754181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.560669, 31.247814, 56.980988>,  <31.747915, 31.184412, 57.117073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.560669, 31.247814, 56.980988>,  <31.248590, 31.353485, 56.754181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560669, 31.247814, 56.980988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599906, 0.059178, -0.797879,
		0.177227, 0.962657, 0.204652,
		0.780194, -0.264177, 0.567016,
		31.794727, 31.168560, 57.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805729, 31.843510, 56.669834>,  <31.248590, 31.353485, 56.754181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805729, 31.843510, 56.669834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.000210, 31.527485, 56.819187>,  <32.116898, 31.337870, 56.908798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.000210, 31.527485, 56.819187>,  <31.805729, 31.843510, 56.669834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000210, 31.527485, 56.819187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622755, 0.013532, -0.782300,
		0.613012, 0.612879, 0.498593,
		0.486202, -0.790061, 0.373378,
		32.146072, 31.290466, 56.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507244, 32.025536, 56.855267>,  <31.805729, 31.843510, 56.669834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507244, 32.025536, 56.855267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.501316, 31.630692, 56.791527>,  <32.497757, 31.393785, 56.753281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.501316, 31.630692, 56.791527>,  <32.507244, 32.025536, 56.855267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501316, 31.630692, 56.791527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654360, 0.110926, -0.748003,
		0.756038, -0.115362, 0.644281,
		-0.014824, -0.987110, -0.159352,
		32.496868, 31.334558, 56.743721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119003, 31.903551, 56.709698>,  <32.507244, 32.025536, 56.855267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119003, 31.903551, 56.709698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.926704, 31.584253, 56.564541>,  <32.811325, 31.392673, 56.477448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.926704, 31.584253, 56.564541>,  <33.119003, 31.903551, 56.709698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926704, 31.584253, 56.564541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590878, 0.010872, -0.806688,
		0.647880, -0.602234, 0.466439,
		-0.480744, -0.798246, -0.362890,
		32.782482, 31.344780, 56.455673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704670, 31.453154, 56.416283>,  <33.119003, 31.903551, 56.709698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704670, 31.453154, 56.416283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.351585, 31.353888, 56.256668>,  <33.139732, 31.294327, 56.160900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.351585, 31.353888, 56.256668>,  <33.704670, 31.453154, 56.416283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351585, 31.353888, 56.256668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446193, -0.176271, -0.877405,
		0.147404, -0.952545, 0.266327,
		-0.882714, -0.248166, -0.399036,
		33.086773, 31.279438, 56.136959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798920, 30.892448, 55.905590>,  <33.704670, 31.453154, 56.416283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798920, 30.892448, 55.905590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444824, 31.025085, 55.775116>,  <33.232365, 31.104668, 55.696831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444824, 31.025085, 55.775116>,  <33.798920, 30.892448, 55.905590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444824, 31.025085, 55.775116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264857, -0.217114, -0.939528,
		-0.382362, -0.918099, 0.104372,
		-0.885240, 0.331596, -0.326181,
		33.179253, 31.124563, 55.677261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640110, 30.411388, 55.380894>,  <33.798920, 30.892448, 55.905590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640110, 30.411388, 55.380894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.394531, 30.722065, 55.324574>,  <33.247185, 30.908470, 55.290783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.394531, 30.722065, 55.324574>,  <33.640110, 30.411388, 55.380894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394531, 30.722065, 55.324574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133341, -0.073765, -0.988321,
		-0.778005, -0.625549, -0.058277,
		-0.613945, 0.776690, -0.140801,
		33.210346, 30.955072, 55.282333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369850, 30.210417, 54.841125>,  <33.640110, 30.411388, 55.380894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369850, 30.210417, 54.841125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.278625, 30.599314, 54.820217>,  <33.223892, 30.832651, 54.807671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.278625, 30.599314, 54.820217>,  <33.369850, 30.210417, 54.841125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278625, 30.599314, 54.820217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171301, -0.012781, -0.985136,
		-0.958460, -0.233624, -0.163631,
		-0.228060, 0.972243, -0.052270,
		33.210209, 30.890987, 54.804535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953121, 30.330870, 54.261040>,  <33.369850, 30.210417, 54.841125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953121, 30.330870, 54.261040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.074268, 30.709211, 54.307735>,  <33.146957, 30.936216, 54.335754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.074268, 30.709211, 54.307735>,  <32.953121, 30.330870, 54.261040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074268, 30.709211, 54.307735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099693, 0.153263, -0.983144,
		-0.947804, 0.286124, 0.140714,
		0.302867, 0.945856, 0.116738,
		33.165127, 30.992968, 54.342758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440750, 30.823595, 53.960083>,  <32.953121, 30.330870, 54.261040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440750, 30.823595, 53.960083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.809868, 30.977358, 53.970566>,  <33.031338, 31.069614, 53.976856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.809868, 30.977358, 53.970566>,  <32.440750, 30.823595, 53.960083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809868, 30.977358, 53.970566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037579, 0.157486, -0.986806,
		-0.383461, 0.909632, 0.159772,
		0.922792, 0.384406, 0.026206,
		33.086704, 31.092680, 53.978428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356087, 31.479980, 53.646759>,  <32.440750, 30.823595, 53.960083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356087, 31.479980, 53.646759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.749546, 31.410978, 53.626072>,  <32.985622, 31.369577, 53.613659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.749546, 31.410978, 53.626072>,  <32.356087, 31.479980, 53.646759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749546, 31.410978, 53.626072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003843, 0.307212, -0.951633,
		0.180050, 0.935876, 0.302851,
		0.983650, -0.172505, -0.051717,
		33.044640, 31.359226, 53.610558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492527, 31.998137, 53.205734>,  <32.356087, 31.479980, 53.646759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492527, 31.998137, 53.205734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.816715, 31.764042, 53.195583>,  <33.011227, 31.623585, 53.189491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.816715, 31.764042, 53.195583>,  <32.492527, 31.998137, 53.205734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816715, 31.764042, 53.195583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013244, 0.061615, -0.998012,
		0.585635, 0.808519, 0.057688,
		0.810467, -0.585235, -0.025376,
		33.059856, 31.588470, 53.187969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186996, 32.410278, 52.983326>,  <32.492527, 31.998137, 53.205734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186996, 32.410278, 52.983326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.171230, 32.023438, 52.882805>,  <33.161770, 31.791332, 52.822491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.171230, 32.023438, 52.882805>,  <33.186996, 32.410278, 52.983326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171230, 32.023438, 52.882805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119334, 0.245143, -0.962114,
		0.992072, -0.067909, 0.105747,
		-0.039413, -0.967105, -0.251304,
		33.159405, 31.733305, 52.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530514, 32.410366, 52.410164>,  <33.186996, 32.410278, 52.983326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530514, 32.410366, 52.410164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.332848, 32.063187, 52.390308>,  <33.214249, 31.854877, 52.378395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.332848, 32.063187, 52.390308>,  <33.530514, 32.410366, 52.410164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332848, 32.063187, 52.390308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080286, 0.011297, -0.996708,
		0.865655, -0.496520, 0.064102,
		-0.494161, -0.867952, -0.049643,
		33.184601, 31.802801, 52.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872337, 32.040291, 51.913734>,  <33.530514, 32.410366, 52.410164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872337, 32.040291, 51.913734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.511940, 31.867723, 51.932026>,  <33.295704, 31.764181, 51.943001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.511940, 31.867723, 51.932026>,  <33.872337, 32.040291, 51.913734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511940, 31.867723, 51.932026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001215, -0.107906, -0.994160,
		0.433838, -0.895673, 0.097746,
		-0.900990, -0.431423, 0.045725,
		33.241642, 31.738297, 51.945744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854336, 31.711218, 51.341003>,  <33.872337, 32.040291, 51.913734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854336, 31.711218, 51.341003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.467773, 31.640266, 51.415398>,  <33.235836, 31.597696, 51.460033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.467773, 31.640266, 51.415398>,  <33.854336, 31.711218, 51.341003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467773, 31.640266, 51.415398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191544, 0.014564, -0.981376,
		0.171369, -0.984035, -0.048051,
		-0.966408, -0.177381, 0.185990,
		33.177853, 31.587053, 51.471195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634594, 31.072012, 50.947727>,  <33.854336, 31.711218, 51.341003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634594, 31.072012, 50.947727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.310329, 31.292236, 51.027439>,  <33.115772, 31.424372, 51.075264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.310329, 31.292236, 51.027439>,  <33.634594, 31.072012, 50.947727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310329, 31.292236, 51.027439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239400, -0.001072, -0.970920,
		-0.534339, -0.834793, 0.132674,
		-0.810660, 0.550563, 0.199277,
		33.067131, 31.457405, 51.087223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127640, 30.744888, 50.685272>,  <33.634594, 31.072012, 50.947727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127640, 30.744888, 50.685272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.979782, 31.115461, 50.713787>,  <32.891068, 31.337805, 50.730896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.979782, 31.115461, 50.713787>,  <33.127640, 30.744888, 50.685272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979782, 31.115461, 50.713787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202870, -0.005600, -0.979190,
		-0.906756, -0.376414, 0.190016,
		-0.369645, 0.926435, 0.071285,
		32.868889, 31.393393, 50.735172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554371, 30.707069, 50.287270>,  <33.127640, 30.744888, 50.685272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554371, 30.707069, 50.287270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.638718, 31.097530, 50.307922>,  <32.689327, 31.331806, 50.320316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.638718, 31.097530, 50.307922>,  <32.554371, 30.707069, 50.287270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638718, 31.097530, 50.307922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229389, 0.100760, -0.968105,
		-0.950219, 0.192297, 0.245165,
		0.210866, 0.976150, 0.051634,
		32.701977, 31.390375, 50.323414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025928, 31.030407, 50.018059>,  <32.554371, 30.707069, 50.287270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025928, 31.030407, 50.018059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.330814, 31.285534, 49.973850>,  <32.513748, 31.438610, 49.947327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.330814, 31.285534, 49.973850>,  <32.025928, 31.030407, 50.018059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330814, 31.285534, 49.973850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228801, 0.105743, -0.967713,
		-0.605536, 0.762895, 0.226533,
		0.762218, 0.637816, -0.110520,
		32.559479, 31.476879, 49.940693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783401, 31.696108, 49.562824>,  <32.025928, 31.030407, 50.018059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783401, 31.696108, 49.562824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.177910, 31.632082, 49.546570>,  <32.414616, 31.593666, 49.536819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.177910, 31.632082, 49.546570>,  <31.783401, 31.696108, 49.562824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177910, 31.632082, 49.546570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043071, -0.011791, -0.999002,
		0.159425, 0.987036, -0.018524,
		0.986270, -0.160064, -0.040632,
		32.473789, 31.584063, 49.534382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184370, 31.563053, 49.226269>,  <31.783401, 31.696108, 49.562824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184370, 31.563053, 49.226269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.813555, 31.594282, 49.079571>,  <30.591064, 31.613020, 48.991550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.813555, 31.594282, 49.079571>,  <31.184370, 31.563053, 49.226269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813555, 31.594282, 49.079571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374957, -0.187845, 0.907812,
		0.001984, 0.979091, 0.203414,
		-0.927040, 0.078073, -0.366744,
		30.535442, 31.617704, 48.969547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817574, 31.763750, 49.836407>,  <31.184370, 31.563053, 49.226269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817574, 31.763750, 49.836407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.518969, 31.701227, 49.577705>,  <30.339806, 31.663713, 49.422485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.518969, 31.701227, 49.577705>,  <30.817574, 31.763750, 49.836407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518969, 31.701227, 49.577705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552470, -0.396084, 0.733413,
		-0.370807, 0.904812, 0.209326,
		-0.746512, -0.156308, -0.646752,
		30.295015, 31.654335, 49.383678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080912, 32.157936, 50.034904>,  <30.817574, 31.763750, 49.836407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080912, 32.157936, 50.034904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.968740, 31.870445, 49.780411>,  <29.901438, 31.697950, 49.627716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.968740, 31.870445, 49.780411>,  <30.080912, 32.157936, 50.034904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968740, 31.870445, 49.780411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703540, -0.297009, 0.645613,
		-0.652987, 0.628662, -0.422364,
		-0.280426, -0.718727, -0.636233,
		29.884613, 31.654827, 49.589542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426067, 32.207760, 49.753540>,  <30.080912, 32.157936, 50.034904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426067, 32.207760, 49.753540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.499052, 31.814476, 49.751965>,  <29.542843, 31.578506, 49.751019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.499052, 31.814476, 49.751965>,  <29.426067, 32.207760, 49.753540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499052, 31.814476, 49.751965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781337, -0.147429, 0.606447,
		-0.596842, -0.107576, -0.795115,
		0.182463, -0.983205, -0.003939,
		29.553791, 31.519514, 49.750782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849192, 32.110676, 50.126766>,  <29.426067, 32.207760, 49.753540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849192, 32.110676, 50.126766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.028912, 31.757599, 50.071655>,  <29.136744, 31.545752, 50.038589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.028912, 31.757599, 50.071655>,  <28.849192, 32.110676, 50.126766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028912, 31.757599, 50.071655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583661, -0.406778, 0.702760,
		-0.676365, -0.235337, -0.697959,
		0.449299, -0.882694, -0.137773,
		29.163702, 31.492790, 50.030323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259718, 31.542847, 49.982952>,  <28.849192, 32.110676, 50.126766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259718, 31.542847, 49.982952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.595327, 31.362587, 50.104908>,  <28.796694, 31.254431, 50.178082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.595327, 31.362587, 50.104908>,  <28.259718, 31.542847, 49.982952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595327, 31.362587, 50.104908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504411, -0.434160, 0.746375,
		-0.203982, -0.780015, -0.591581,
		0.839024, -0.450647, 0.304887,
		28.847034, 31.227392, 50.196373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111454, 30.801893, 50.152168>,  <28.259718, 31.542847, 49.982952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111454, 30.801893, 50.152168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.441748, 30.896635, 50.356937>,  <28.639923, 30.953480, 50.479797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.441748, 30.896635, 50.356937>,  <28.111454, 30.801893, 50.152168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441748, 30.896635, 50.356937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427008, -0.330502, 0.841684,
		0.368547, -0.913602, -0.171769,
		0.825734, 0.236854, 0.511921,
		28.689468, 30.967691, 50.510513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287045, 30.240870, 50.504707>,  <28.111454, 30.801893, 50.152168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287045, 30.240870, 50.504707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.451925, 30.535109, 50.719738>,  <28.550854, 30.711651, 50.848755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.451925, 30.535109, 50.719738>,  <28.287045, 30.240870, 50.504707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451925, 30.535109, 50.719738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227638, -0.488170, 0.842538,
		0.882196, -0.469670, -0.033775,
		0.412203, 0.735595, 0.537576,
		28.575586, 30.755787, 50.881012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712624, 29.900562, 51.074234>,  <28.287045, 30.240870, 50.504707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712624, 29.900562, 51.074234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.704947, 30.282629, 51.192410>,  <28.700340, 30.511869, 51.263317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.704947, 30.282629, 51.192410>,  <28.712624, 29.900562, 51.074234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704947, 30.282629, 51.192410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193807, -0.286336, 0.938323,
		0.980852, 0.075269, -0.179622,
		-0.019195, 0.955168, 0.295441,
		28.699188, 30.569180, 51.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384159, 30.046825, 51.504677>,  <28.712624, 29.900562, 51.074234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384159, 30.046825, 51.504677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.111906, 30.323877, 51.600182>,  <28.948555, 30.490108, 51.657486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.111906, 30.323877, 51.600182>,  <29.384159, 30.046825, 51.504677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111906, 30.323877, 51.600182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252356, -0.084306, 0.963955,
		0.687791, 0.716351, -0.117408,
		-0.680632, 0.692628, 0.238761,
		28.907717, 30.531666, 51.671810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687195, 30.435177, 52.043365>,  <29.384159, 30.046825, 51.504677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687195, 30.435177, 52.043365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.300890, 30.523462, 52.097900>,  <29.069107, 30.576433, 52.130619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.300890, 30.523462, 52.097900>,  <29.687195, 30.435177, 52.043365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300890, 30.523462, 52.097900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171277, 0.147759, 0.974080,
		0.194847, 0.964081, -0.180503,
		-0.965763, 0.220713, 0.136335,
		29.011162, 30.589676, 52.138802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667667, 31.050234, 52.496101>,  <29.687195, 30.435177, 52.043365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667667, 31.050234, 52.496101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.312836, 30.870956, 52.540298>,  <29.099936, 30.763390, 52.566818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.312836, 30.870956, 52.540298>,  <29.667667, 31.050234, 52.496101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312836, 30.870956, 52.540298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004939, 0.248567, 0.968602,
		-0.461586, 0.858683, -0.222713,
		-0.887082, -0.448193, 0.110495,
		29.046711, 30.736498, 52.573448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103840, 31.578415, 52.784081>,  <29.667667, 31.050234, 52.496101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103840, 31.578415, 52.784081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.019842, 31.199135, 52.879429>,  <28.969444, 30.971567, 52.936638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.019842, 31.199135, 52.879429>,  <29.103840, 31.578415, 52.784081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019842, 31.199135, 52.879429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056864, 0.255237, 0.965205,
		-0.976048, 0.189131, -0.107517,
		-0.209993, -0.948200, 0.238369,
		28.956844, 30.914675, 52.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832216, 31.675966, 53.418358>,  <29.103840, 31.578415, 52.784081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832216, 31.675966, 53.418358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.847569, 31.276451, 53.406006>,  <28.856779, 31.036743, 53.398594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.847569, 31.276451, 53.406006>,  <28.832216, 31.675966, 53.418358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847569, 31.276451, 53.406006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172534, -0.037066, 0.984306,
		-0.984255, -0.032449, -0.173748,
		0.038380, -0.998786, -0.030883,
		28.859083, 30.976816, 53.396740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210033, 31.383007, 53.482567>,  <28.832216, 31.675966, 53.418358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210033, 31.383007, 53.482567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.453186, 31.086275, 53.595825>,  <28.599077, 30.908236, 53.663780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.453186, 31.086275, 53.595825>,  <28.210033, 31.383007, 53.482567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453186, 31.086275, 53.595825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183997, 0.215281, 0.959062,
		-0.772417, -0.635091, -0.005630,
		0.607879, -0.741831, 0.283142,
		28.635550, 30.863726, 53.680767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841303, 30.994499, 54.099216>,  <28.210033, 31.383007, 53.482567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841303, 30.994499, 54.099216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.234438, 30.921553, 54.110352>,  <28.470318, 30.877785, 54.117031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.234438, 30.921553, 54.110352>,  <27.841303, 30.994499, 54.099216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234438, 30.921553, 54.110352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009106, 0.102763, 0.994664,
		-0.184256, -0.977845, 0.099339,
		0.982836, -0.182368, 0.027839,
		28.529289, 30.866842, 54.118702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969469, 30.485870, 54.612900>,  <27.841303, 30.994499, 54.099216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969469, 30.485870, 54.612900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.321625, 30.670151, 54.567883>,  <28.532919, 30.780720, 54.540871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.321625, 30.670151, 54.567883>,  <27.969469, 30.485870, 54.612900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321625, 30.670151, 54.567883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077151, 0.095019, 0.992481,
		0.467932, -0.882454, 0.048110,
		0.880390, 0.460702, -0.112545,
		28.585741, 30.808361, 54.534119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405855, 30.138603, 55.087547>,  <27.969469, 30.485870, 54.612900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405855, 30.138603, 55.087547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.572416, 30.493248, 55.007015>,  <28.672352, 30.706034, 54.958698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.572416, 30.493248, 55.007015>,  <28.405855, 30.138603, 55.087547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572416, 30.493248, 55.007015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128422, 0.161861, 0.978422,
		0.900065, -0.433271, -0.046461,
		0.416402, 0.886610, -0.201327,
		28.697336, 30.759232, 54.946617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.275320, 30.049870, 55.285290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179956, 30.437592, 55.261246>,  <29.122738, 30.670225, 55.246819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179956, 30.437592, 55.261246>,  <29.275320, 30.049870, 55.285290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179956, 30.437592, 55.261246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055466, 0.075380, 0.995611,
		0.969579, 0.234030, -0.071734,
		-0.238410, 0.969303, -0.060106,
		29.108433, 30.728382, 55.243214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671782, 30.322563, 55.747700>,  <29.275320, 30.049870, 55.285290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671782, 30.322563, 55.747700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386604, 30.597855, 55.693951>,  <29.215498, 30.763029, 55.661701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386604, 30.597855, 55.693951>,  <29.671782, 30.322563, 55.747700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386604, 30.597855, 55.693951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012435, 0.204002, 0.978891,
		0.701111, 0.696223, -0.154000,
		-0.712943, 0.688227, -0.134371,
		29.172722, 30.804323, 55.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881128, 30.875456, 56.169334>,  <29.671782, 30.322563, 55.747700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881128, 30.875456, 56.169334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490681, 30.940071, 56.111237>,  <29.256413, 30.978840, 56.076378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490681, 30.940071, 56.111237>,  <29.881128, 30.875456, 56.169334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490681, 30.940071, 56.111237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070532, 0.396706, 0.915232,
		0.205464, 0.903620, -0.375839,
		-0.976120, 0.161538, -0.145243,
		29.197845, 30.988533, 56.067665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828722, 31.525412, 56.432346>,  <29.881128, 30.875456, 56.169334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828722, 31.525412, 56.432346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448544, 31.401207, 56.426285>,  <29.220436, 31.326683, 56.422646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448544, 31.401207, 56.426285>,  <29.828722, 31.525412, 56.432346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448544, 31.401207, 56.426285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147898, 0.408744, 0.900586,
		-0.273449, 0.858202, -0.434415,
		-0.950448, -0.310513, -0.015156,
		29.163408, 31.308052, 56.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356258, 32.127514, 56.627018>,  <29.828722, 31.525412, 56.432346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356258, 32.127514, 56.627018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143661, 31.795900, 56.696548>,  <29.016104, 31.596931, 56.738266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143661, 31.795900, 56.696548>,  <29.356258, 32.127514, 56.627018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143661, 31.795900, 56.696548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276982, 0.364025, 0.889251,
		-0.800499, 0.424482, -0.423104,
		-0.531491, -0.829036, 0.173827,
		28.984215, 31.547190, 56.748695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704620, 32.285603, 56.922527>,  <29.356258, 32.127514, 56.627018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704620, 32.285603, 56.922527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733931, 31.906851, 57.047783>,  <28.751516, 31.679600, 57.122936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733931, 31.906851, 57.047783>,  <28.704620, 32.285603, 56.922527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733931, 31.906851, 57.047783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316421, 0.275685, 0.907676,
		-0.945784, -0.165595, -0.279410,
		0.073277, -0.946877, 0.313136,
		28.755915, 31.622787, 57.141724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133776, 32.237167, 57.338814>,  <28.704620, 32.285603, 56.922527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133776, 32.237167, 57.338814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368109, 31.930216, 57.443062>,  <28.508709, 31.746044, 57.505611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368109, 31.930216, 57.443062>,  <28.133776, 32.237167, 57.338814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368109, 31.930216, 57.443062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329483, 0.068284, 0.941689,
		-0.740431, -0.637544, -0.212836,
		0.585835, -0.767382, 0.260620,
		28.543859, 31.700001, 57.521248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721092, 31.734324, 57.672951>,  <28.133776, 32.237167, 57.338814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721092, 31.734324, 57.672951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080250, 31.615763, 57.803139>,  <28.295744, 31.544626, 57.881252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080250, 31.615763, 57.803139>,  <27.721092, 31.734324, 57.672951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080250, 31.615763, 57.803139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380834, -0.152175, 0.912035,
		-0.220799, -0.942862, -0.249516,
		0.897894, -0.296401, 0.325473,
		28.349619, 31.526842, 57.900780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563131, 31.198292, 58.093346>,  <27.721092, 31.734324, 57.672951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563131, 31.198292, 58.093346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926477, 31.301706, 58.224819>,  <28.144485, 31.363754, 58.303703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926477, 31.301706, 58.224819>,  <27.563131, 31.198292, 58.093346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926477, 31.301706, 58.224819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303731, -0.132369, 0.943518,
		0.287442, -0.956889, -0.041714,
		0.908364, 0.258536, 0.328685,
		28.198986, 31.379267, 58.323425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700077, 30.638330, 58.487610>,  <27.563131, 31.198292, 58.093346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700077, 30.638330, 58.487610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934849, 30.942598, 58.598530>,  <28.075712, 31.125160, 58.665081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934849, 30.942598, 58.598530>,  <27.700077, 30.638330, 58.487610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934849, 30.942598, 58.598530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332836, -0.085531, 0.939098,
		0.738063, -0.643477, 0.202978,
		0.586927, 0.760672, 0.277299,
		28.110928, 31.170799, 58.681721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012144, 30.447823, 59.141563>,  <27.700077, 30.638330, 58.487610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012144, 30.447823, 59.141563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032131, 30.847162, 59.130241>,  <28.044123, 31.086765, 59.123447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032131, 30.847162, 59.130241>,  <28.012144, 30.447823, 59.141563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032131, 30.847162, 59.130241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260080, 0.040367, 0.964743,
		0.964293, -0.040845, 0.261668,
		0.049967, 0.998350, -0.028303,
		28.047121, 31.146667, 59.121750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402044, 30.757040, 59.800564>,  <28.012144, 30.447823, 59.141563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402044, 30.757040, 59.800564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184219, 31.059526, 59.655460>,  <28.053524, 31.241018, 59.568398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184219, 31.059526, 59.655460>,  <28.402044, 30.757040, 59.800564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184219, 31.059526, 59.655460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250800, 0.265900, 0.930804,
		0.800345, 0.597859, 0.044860,
		-0.544561, 0.756216, -0.362755,
		28.020851, 31.286390, 59.546635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415255, 31.360001, 60.324577>,  <28.402044, 30.757040, 59.800564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415255, 31.360001, 60.324577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145170, 31.459768, 60.046906>,  <27.983120, 31.519629, 59.880302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145170, 31.459768, 60.046906>,  <28.415255, 31.360001, 60.324577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145170, 31.459768, 60.046906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592478, 0.377205, 0.711819,
		0.439389, 0.891912, -0.106916,
		-0.675209, 0.249420, -0.694178,
		27.942608, 31.534594, 59.838654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281134, 31.951971, 60.506283>,  <28.415255, 31.360001, 60.324577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281134, 31.951971, 60.506283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961359, 31.825573, 60.301910>,  <27.769495, 31.749735, 60.179287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961359, 31.825573, 60.301910>,  <28.281134, 31.951971, 60.506283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961359, 31.825573, 60.301910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600487, 0.395134, 0.695187,
		-0.017789, 0.862564, -0.505635,
		-0.799437, -0.315993, -0.510929,
		27.721527, 31.730776, 60.148632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868824, 32.522530, 60.520317>,  <28.281134, 31.951971, 60.506283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868824, 32.522530, 60.520317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622532, 32.215107, 60.450817>,  <27.474756, 32.030651, 60.409119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622532, 32.215107, 60.450817>,  <27.868824, 32.522530, 60.520317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622532, 32.215107, 60.450817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726324, 0.468110, 0.503316,
		-0.305495, 0.436105, -0.846454,
		-0.615732, -0.768560, -0.173748,
		27.437813, 31.984539, 60.398693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253479, 32.756687, 60.218155>,  <27.868824, 32.522530, 60.520317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253479, 32.756687, 60.218155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170723, 32.423000, 60.422619>,  <27.121069, 32.222790, 60.545296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170723, 32.423000, 60.422619>,  <27.253479, 32.756687, 60.218155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170723, 32.423000, 60.422619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813691, 0.436812, 0.383540,
		-0.543234, -0.336572, -0.769166,
		-0.206892, -0.834215, 0.511157,
		27.108656, 32.172737, 60.575966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441912, 32.702461, 60.140934>,  <27.253479, 32.756687, 60.218155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441912, 32.702461, 60.140934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532145, 32.422985, 60.412506>,  <26.586285, 32.255299, 60.575451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532145, 32.422985, 60.412506>,  <26.441912, 32.702461, 60.140934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532145, 32.422985, 60.412506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763309, 0.306282, 0.568815,
		-0.605368, -0.646549, -0.464224,
		0.225583, -0.698689, 0.678930,
		26.599819, 32.213379, 60.616184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802361, 32.406528, 60.325836>,  <26.441912, 32.702461, 60.140934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802361, 32.406528, 60.325836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057352, 32.296436, 60.613689>,  <26.210348, 32.230381, 60.786400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057352, 32.296436, 60.613689>,  <25.802361, 32.406528, 60.325836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057352, 32.296436, 60.613689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707812, 0.159734, 0.688104,
		-0.304336, -0.948015, -0.092984,
		0.637481, -0.275230, 0.719629,
		26.248596, 32.213867, 60.829578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376177, 31.875153, 60.742603>,  <25.802361, 32.406528, 60.325836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376177, 31.875153, 60.742603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658796, 32.074436, 60.943630>,  <25.828369, 32.194008, 61.064247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658796, 32.074436, 60.943630>,  <25.376177, 31.875153, 60.742603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658796, 32.074436, 60.943630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695358, 0.356908, 0.623774,
		0.131398, -0.790193, 0.598606,
		0.706549, 0.498208, 0.502570,
		25.870762, 32.223900, 61.094402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184221, 31.904713, 61.471569>,  <25.376177, 31.875153, 60.742603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184221, 31.904713, 61.471569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451046, 32.201389, 61.443516>,  <25.611141, 32.379395, 61.426685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451046, 32.201389, 61.443516>,  <25.184221, 31.904713, 61.471569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451046, 32.201389, 61.443516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451699, 0.477510, 0.753626,
		0.592449, -0.471036, 0.653551,
		0.667062, 0.741694, -0.070134,
		25.651165, 32.423897, 61.422478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328470, 31.959724, 62.108250>,  <25.184221, 31.904713, 61.471569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328470, 31.959724, 62.108250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463644, 32.301861, 61.951180>,  <25.544748, 32.507141, 61.856937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463644, 32.301861, 61.951180>,  <25.328470, 31.959724, 62.108250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463644, 32.301861, 61.951180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436970, 0.512117, 0.739455,
		0.833581, -0.078298, 0.546819,
		0.337933, 0.855340, -0.392677,
		25.565023, 32.558464, 61.833378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596085, 32.478275, 62.607132>,  <25.328470, 31.959724, 62.108250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596085, 32.478275, 62.607132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482466, 32.704372, 62.297340>,  <25.414295, 32.840031, 62.111465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482466, 32.704372, 62.297340>,  <25.596085, 32.478275, 62.607132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482466, 32.704372, 62.297340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443681, 0.638576, 0.628783,
		0.849979, 0.522225, 0.069402,
		-0.284048, 0.565245, -0.774477,
		25.397251, 32.873947, 62.064999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502028, 33.066319, 62.800846>,  <25.596085, 32.478275, 62.607132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502028, 33.066319, 62.800846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270910, 33.134033, 62.481472>,  <25.132240, 33.174664, 62.289848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270910, 33.134033, 62.481472>,  <25.502028, 33.066319, 62.800846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270910, 33.134033, 62.481472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512381, 0.686232, 0.516286,
		0.635313, 0.707409, -0.309758,
		-0.577792, 0.169289, -0.798435,
		25.097572, 33.184818, 62.241943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001116, 32.894695, 63.385471>,  <25.502028, 33.066319, 62.800846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001116, 32.894695, 63.385471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258808, 33.128685, 63.582561>,  <26.413424, 33.269077, 63.700813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258808, 33.128685, 63.582561>,  <26.001116, 32.894695, 63.385471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258808, 33.128685, 63.582561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763316, -0.532292, -0.366078,
		0.048126, 0.611941, -0.789438,
		0.644230, 0.584973, 0.492722,
		26.452078, 33.304176, 63.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526503, 33.038258, 62.976448>,  <26.001116, 32.894695, 63.385471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526503, 33.038258, 62.976448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708063, 33.117657, 63.323914>,  <26.816999, 33.165295, 63.532391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708063, 33.117657, 63.323914>,  <26.526503, 33.038258, 62.976448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708063, 33.117657, 63.323914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888443, -0.026290, -0.458233,
		-0.068120, 0.979749, -0.188286,
		0.453903, 0.198496, 0.868661,
		26.844234, 33.177204, 63.584511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037327, 33.577419, 62.850769>,  <26.526503, 33.038258, 62.976448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037327, 33.577419, 62.850769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149801, 33.407288, 63.194870>,  <27.217285, 33.305210, 63.401329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149801, 33.407288, 63.194870>,  <27.037327, 33.577419, 62.850769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149801, 33.407288, 63.194870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923105, -0.125160, -0.363611,
		0.262322, 0.896345, 0.357426,
		0.281185, -0.425325, 0.860252,
		27.234158, 33.279690, 63.452946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590176, 33.905800, 62.919750>,  <27.037327, 33.577419, 62.850769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590176, 33.905800, 62.919750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642853, 33.581577, 63.148014>,  <27.674459, 33.387043, 63.284973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642853, 33.581577, 63.148014>,  <27.590176, 33.905800, 62.919750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642853, 33.581577, 63.148014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917609, -0.118118, -0.379529,
		0.375034, 0.573627, 0.728218,
		0.131692, -0.810556, 0.570663,
		27.682360, 33.338409, 63.319214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212833, 33.979240, 63.260677>,  <27.590176, 33.905800, 62.919750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212833, 33.979240, 63.260677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131794, 33.588993, 63.226936>,  <28.083170, 33.354843, 63.206692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131794, 33.588993, 63.226936>,  <28.212833, 33.979240, 63.260677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131794, 33.588993, 63.226936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938450, -0.168826, -0.301345,
		0.279757, -0.140215, 0.949777,
		-0.202600, -0.975622, -0.084355,
		28.071014, 33.296307, 63.201630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802256, 33.609955, 63.349457>,  <28.212833, 33.979240, 63.260677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802256, 33.609955, 63.349457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591244, 33.320053, 63.172169>,  <28.464638, 33.146111, 63.065796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591244, 33.320053, 63.172169>,  <28.802256, 33.609955, 63.349457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591244, 33.320053, 63.172169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837936, -0.357973, -0.411969,
		0.139916, -0.588716, 0.796139,
		-0.527528, -0.724755, -0.443221,
		28.432985, 33.102627, 63.039204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234056, 33.119377, 63.337608>,  <28.802256, 33.609955, 63.349457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234056, 33.119377, 63.337608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962706, 32.972515, 63.083050>,  <28.799894, 32.884396, 62.930313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962706, 32.972515, 63.083050>,  <29.234056, 33.119377, 63.337608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962706, 32.972515, 63.083050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730927, -0.425092, -0.533894,
		-0.074504, -0.827341, 0.556738,
		-0.678377, -0.367157, -0.636396,
		28.759193, 32.862370, 62.892132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472826, 32.480320, 63.119709>,  <29.234056, 33.119377, 63.337608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472826, 32.480320, 63.119709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197884, 32.540730, 62.835533>,  <29.032917, 32.576977, 62.665028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197884, 32.540730, 62.835533>,  <29.472826, 32.480320, 63.119709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197884, 32.540730, 62.835533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539744, -0.548321, -0.638765,
		-0.486021, -0.822518, 0.295378,
		-0.687357, 0.151025, -0.710445,
		28.991676, 32.586037, 62.622398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348240, 31.882889, 62.858555>,  <29.472826, 32.480320, 63.119709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348240, 31.882889, 62.858555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255407, 32.159073, 62.584503>,  <29.199707, 32.324783, 62.420071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255407, 32.159073, 62.584503>,  <29.348240, 31.882889, 62.858555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255407, 32.159073, 62.584503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628520, -0.431118, -0.647379,
		-0.742361, -0.580863, -0.333912,
		-0.232083, 0.690460, -0.685130,
		29.185781, 32.366211, 62.378963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148272, 31.457548, 62.324512>,  <29.348240, 31.882889, 62.858555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148272, 31.457548, 62.324512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221045, 31.801205, 62.133190>,  <29.264708, 32.007397, 62.018394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221045, 31.801205, 62.133190>,  <29.148272, 31.457548, 62.324512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221045, 31.801205, 62.133190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586636, -0.485214, -0.648403,
		-0.789151, -0.162628, -0.592278,
		0.181933, 0.859139, -0.478310,
		29.275625, 32.058945, 61.989697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015463, 31.323511, 61.630653>,  <29.148272, 31.457548, 62.324512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015463, 31.323511, 61.630653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257458, 31.641720, 61.644127>,  <29.402655, 31.832645, 61.652210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257458, 31.641720, 61.644127>,  <29.015463, 31.323511, 61.630653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257458, 31.641720, 61.644127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532880, -0.373094, -0.759499,
		-0.591634, 0.477433, -0.649635,
		0.604985, 0.795524, 0.033680,
		29.438953, 31.880377, 61.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839809, 31.662857, 61.029644>,  <29.015463, 31.323511, 61.630653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839809, 31.662857, 61.029644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207111, 31.749210, 61.162430>,  <29.427492, 31.801022, 61.242100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207111, 31.749210, 61.162430>,  <28.839809, 31.662857, 61.029644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207111, 31.749210, 61.162430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384849, -0.289087, -0.876538,
		-0.093263, 0.932643, -0.348538,
		0.918255, 0.215884, 0.331966,
		29.482588, 31.813976, 61.262020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108692, 32.042759, 60.446400>,  <28.839809, 31.662857, 61.029644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108692, 32.042759, 60.446400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456717, 31.992294, 60.637009>,  <29.665531, 31.962015, 60.751373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456717, 31.992294, 60.637009>,  <29.108692, 32.042759, 60.446400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456717, 31.992294, 60.637009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467443, -0.095730, -0.878824,
		0.156492, 0.987380, -0.024317,
		0.870061, -0.126162, 0.476525,
		29.717735, 31.954445, 60.779964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630091, 32.516064, 60.140175>,  <29.108692, 32.042759, 60.446400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630091, 32.516064, 60.140175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804653, 32.200108, 60.312508>,  <29.909391, 32.010532, 60.415909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804653, 32.200108, 60.312508>,  <29.630091, 32.516064, 60.140175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804653, 32.200108, 60.312508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502516, -0.183218, -0.844932,
		0.746342, 0.585235, 0.316975,
		0.436408, -0.789893, 0.430833,
		29.935575, 31.963140, 60.441757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336710, 32.665218, 60.057087>,  <29.630091, 32.516064, 60.140175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336710, 32.665218, 60.057087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318872, 32.266281, 60.080154>,  <30.308170, 32.026920, 60.093994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318872, 32.266281, 60.080154>,  <30.336710, 32.665218, 60.057087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318872, 32.266281, 60.080154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469809, -0.071881, -0.879837,
		0.881641, -0.012143, 0.471765,
		-0.044595, -0.997339, 0.057669,
		30.305494, 31.967079, 60.097454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080311, 32.395031, 59.986752>,  <30.336710, 32.665218, 60.057087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080311, 32.395031, 59.986752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842716, 32.087093, 59.893349>,  <30.700159, 31.902330, 59.837307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842716, 32.087093, 59.893349>,  <31.080311, 32.395031, 59.986752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842716, 32.087093, 59.893349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663822, -0.305063, -0.682845,
		0.454448, -0.560607, 0.692240,
		-0.593984, -0.769842, -0.233508,
		30.664520, 31.856140, 59.823296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487036, 31.821505, 59.853016>,  <31.080311, 32.395031, 59.986752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487036, 31.821505, 59.853016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153746, 31.715071, 59.659134>,  <30.953772, 31.651211, 59.542805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153746, 31.715071, 59.659134>,  <31.487036, 31.821505, 59.853016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153746, 31.715071, 59.659134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552615, -0.370814, -0.746400,
		0.018870, -0.889773, 0.456013,
		-0.833223, -0.266084, -0.484705,
		30.903778, 31.635246, 59.513721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679634, 31.135412, 59.614300>,  <31.487036, 31.821505, 59.853016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679634, 31.135412, 59.614300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375824, 31.268785, 59.390892>,  <31.193539, 31.348810, 59.256847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375824, 31.268785, 59.390892>,  <31.679634, 31.135412, 59.614300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375824, 31.268785, 59.390892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370205, -0.484428, -0.792640,
		-0.534857, -0.808795, 0.244494,
		-0.759523, 0.333436, -0.558520,
		31.147966, 31.368816, 59.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478716, 30.469463, 59.286015>,  <31.679634, 31.135412, 59.614300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478716, 30.469463, 59.286015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323965, 30.771681, 59.074551>,  <31.231115, 30.953011, 58.947674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323965, 30.771681, 59.074551>,  <31.478716, 30.469463, 59.286015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323965, 30.771681, 59.074551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587932, -0.239558, -0.772624,
		-0.710397, -0.609725, -0.351529,
		-0.386876, 0.755545, -0.528658,
		31.207903, 30.998344, 58.915955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199417, 30.193453, 58.600399>,  <31.478716, 30.469463, 59.286015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199417, 30.193453, 58.600399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249556, 30.586500, 58.545631>,  <31.279638, 30.822329, 58.512772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249556, 30.586500, 58.545631>,  <31.199417, 30.193453, 58.600399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249556, 30.586500, 58.545631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655548, -0.185616, -0.731986,
		-0.744678, 0.001997, -0.667421,
		0.125346, 0.982620, -0.136915,
		31.287159, 30.881287, 58.504559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042473, 30.304649, 57.810379>,  <31.199417, 30.193453, 58.600399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042473, 30.304649, 57.810379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255758, 30.622375, 57.926826>,  <31.383730, 30.813011, 57.996693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255758, 30.622375, 57.926826>,  <31.042473, 30.304649, 57.810379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255758, 30.622375, 57.926826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699221, -0.220093, -0.680184,
		-0.476207, 0.566238, -0.672757,
		0.533215, 0.794314, 0.291115,
		31.415722, 30.860670, 58.014160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.870037, 34.644302, 50.550579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.856567, 34.719128, 50.943287>,  <47.848484, 34.764023, 51.178913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.856567, 34.719128, 50.943287>,  <47.870037, 34.644302, 50.550579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.856567, 34.719128, 50.943287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958080, -0.285687, 0.021571,
		0.284514, -0.939889, 0.188839,
		-0.033674, 0.187061, 0.981771,
		47.846466, 34.775246, 51.237820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.785480, 34.039032, 51.019505>,  <47.870037, 34.644302, 50.550579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.785480, 34.039032, 51.019505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.603951, 34.358555, 51.177467>,  <47.495033, 34.550270, 51.272243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.603951, 34.358555, 51.177467>,  <47.785480, 34.039032, 51.019505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603951, 34.358555, 51.177467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887025, -0.447258, -0.114659,
		0.085033, -0.402323, 0.911540,
		-0.453823, 0.798809, 0.394902,
		47.467804, 34.598198, 51.295937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086384, 33.824818, 51.285126>,  <47.785480, 34.039032, 51.019505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086384, 33.824818, 51.285126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.046471, 34.222195, 51.307434>,  <47.022522, 34.460621, 51.320820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.046471, 34.222195, 51.307434>,  <47.086384, 33.824818, 51.285126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046471, 34.222195, 51.307434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990570, -0.093890, -0.099780,
		-0.093890, -0.065197, 0.993445,
		0.099780, -0.993445, -0.055767,
		47.016537, 34.520229, 51.324165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536156, 33.958782, 51.728600>,  <47.086384, 33.824818, 51.285126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536156, 33.958782, 51.728600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.559387, 34.308975, 51.536701>,  <46.573326, 34.519093, 51.421562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.559387, 34.308975, 51.536701>,  <46.536156, 33.958782, 51.728600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559387, 34.308975, 51.536701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998268, 0.046429, -0.036117,
		-0.009346, 0.481014, 0.876663,
		0.058075, 0.875483, -0.479747,
		46.576809, 34.571621, 51.392776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958027, 34.327034, 52.003521>,  <46.536156, 33.958782, 51.728600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958027, 34.327034, 52.003521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.046524, 34.514317, 51.661331>,  <46.099621, 34.626686, 51.456017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.046524, 34.514317, 51.661331>,  <45.958027, 34.327034, 52.003521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046524, 34.514317, 51.661331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972612, 0.170027, -0.158479,
		0.071253, 0.867108, 0.492997,
		0.221241, 0.468203, -0.855475,
		46.112896, 34.654778, 51.404690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574745, 34.934586, 52.049206>,  <45.958027, 34.327034, 52.003521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574745, 34.934586, 52.049206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.661823, 34.896561, 51.660656>,  <45.714069, 34.873745, 51.427525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.661823, 34.896561, 51.660656>,  <45.574745, 34.934586, 52.049206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661823, 34.896561, 51.660656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960611, 0.155262, -0.230476,
		0.172729, 0.983288, -0.057522,
		0.217694, -0.095066, -0.971376,
		45.727131, 34.868042, 51.369244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095142, 35.412643, 51.743340>,  <45.574745, 34.934586, 52.049206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095142, 35.412643, 51.743340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.190868, 35.161522, 51.447071>,  <45.248302, 35.010849, 51.269310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.190868, 35.161522, 51.447071>,  <45.095142, 35.412643, 51.743340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190868, 35.161522, 51.447071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953512, -0.008060, -0.301249,
		0.183154, 0.778333, -0.600543,
		0.239312, -0.627800, -0.740673,
		45.262661, 34.973183, 51.224869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583420, 35.614113, 51.323250>,  <45.095142, 35.412643, 51.743340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583420, 35.614113, 51.323250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.727455, 35.280651, 51.155746>,  <44.813877, 35.080574, 51.055244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.727455, 35.280651, 51.155746>,  <44.583420, 35.614113, 51.323250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727455, 35.280651, 51.155746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889193, -0.170887, -0.424422,
		0.282261, 0.525186, -0.802813,
		0.360091, -0.833653, -0.418757,
		44.835484, 35.030556, 51.030121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615318, 35.675510, 50.485153>,  <44.583420, 35.614113, 51.323250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615318, 35.675510, 50.485153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.594685, 35.296013, 50.609875>,  <44.582302, 35.068314, 50.684708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.594685, 35.296013, 50.609875>,  <44.615318, 35.675510, 50.485153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594685, 35.296013, 50.609875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836588, -0.129457, -0.532317,
		0.545398, -0.288312, -0.787031,
		-0.051587, -0.948745, 0.311804,
		44.579208, 35.011391, 50.703415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453377, 35.303173, 49.862766>,  <44.615318, 35.675510, 50.485153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453377, 35.303173, 49.862766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.367569, 35.059021, 50.167770>,  <44.316082, 34.912529, 50.350773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.367569, 35.059021, 50.167770>,  <44.453377, 35.303173, 49.862766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367569, 35.059021, 50.167770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855530, -0.259214, -0.448193,
		0.471220, -0.748494, -0.466591,
		-0.214523, -0.610380, 0.762506,
		44.303211, 34.875908, 50.396523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184742, 34.738464, 49.510204>,  <44.453377, 35.303173, 49.862766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184742, 34.738464, 49.510204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.050686, 34.710930, 49.886063>,  <43.970253, 34.694408, 50.111580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.050686, 34.710930, 49.886063>,  <44.184742, 34.738464, 49.510204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050686, 34.710930, 49.886063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922032, -0.181124, -0.342127,
		0.193742, -0.981049, -0.002761,
		-0.335143, -0.068830, 0.939649,
		43.950142, 34.690281, 50.167957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768940, 34.222687, 49.478058>,  <44.184742, 34.738464, 49.510204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768940, 34.222687, 49.478058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.650887, 34.404968, 49.813972>,  <43.580055, 34.514336, 50.015522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.650887, 34.404968, 49.813972>,  <43.768940, 34.222687, 49.478058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650887, 34.404968, 49.813972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951548, -0.219618, -0.215233,
		0.086349, -0.862615, 0.498437,
		-0.295129, 0.455702, 0.839782,
		43.562347, 34.541679, 50.065907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246147, 33.719532, 49.712193>,  <43.768940, 34.222687, 49.478058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246147, 33.719532, 49.712193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.196812, 34.062675, 49.911739>,  <43.167210, 34.268562, 50.031467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.196812, 34.062675, 49.911739>,  <43.246147, 33.719532, 49.712193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196812, 34.062675, 49.911739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992192, -0.115963, -0.045904,
		0.018471, -0.500634, 0.865462,
		-0.123342, 0.857857, 0.498867,
		43.159809, 34.320034, 50.061401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848183, 33.549934, 50.226112>,  <43.246147, 33.719532, 49.712193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848183, 33.549934, 50.226112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.785995, 33.941971, 50.176723>,  <42.748684, 34.177193, 50.147091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.785995, 33.941971, 50.176723>,  <42.848183, 33.549934, 50.226112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785995, 33.941971, 50.176723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982177, -0.140003, 0.125404,
		0.105622, 0.140768, 0.984392,
		-0.155471, 0.980094, -0.123472,
		42.739353, 34.236000, 50.139683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224041, 33.662563, 50.708214>,  <42.848183, 33.549934, 50.226112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224041, 33.662563, 50.708214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.235493, 33.975719, 50.459614>,  <42.242363, 34.163612, 50.310455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.235493, 33.975719, 50.459614>,  <42.224041, 33.662563, 50.708214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235493, 33.975719, 50.459614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986264, 0.123311, 0.109897,
		0.162675, 0.609815, 0.775669,
		0.028631, 0.782892, -0.621498,
		42.244083, 34.210587, 50.273163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859665, 34.180111, 51.014339>,  <42.224041, 33.662563, 50.708214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859665, 34.180111, 51.014339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.856186, 34.305470, 50.634506>,  <41.854099, 34.380684, 50.406605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.856186, 34.305470, 50.634506>,  <41.859665, 34.180111, 51.014339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856186, 34.305470, 50.634506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973553, 0.214147, 0.079597,
		0.228296, 0.925162, 0.303243,
		-0.008702, 0.313395, -0.949583,
		41.853577, 34.399487, 50.349632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620705, 34.913963, 50.967373>,  <41.859665, 34.180111, 51.014339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620705, 34.913963, 50.967373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559303, 34.716103, 50.625202>,  <41.522461, 34.597385, 50.419899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559303, 34.716103, 50.625202>,  <41.620705, 34.913963, 50.967373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559303, 34.716103, 50.625202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965110, 0.260890, 0.022329,
		0.212127, 0.829009, -0.517442,
		-0.153506, -0.494652, -0.855427,
		41.513252, 34.567707, 50.368572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104393, 35.324814, 50.706303>,  <41.620705, 34.913963, 50.967373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104393, 35.324814, 50.706303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.084213, 35.017715, 50.450798>,  <41.072105, 34.833454, 50.297497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.084213, 35.017715, 50.450798>,  <41.104393, 35.324814, 50.706303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084213, 35.017715, 50.450798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970065, 0.189792, -0.151501,
		0.237546, 0.611997, -0.754341,
		-0.050450, -0.767749, -0.638762,
		41.069077, 34.787392, 50.259171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761230, 35.558434, 50.093193>,  <41.104393, 35.324814, 50.706303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761230, 35.558434, 50.093193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.700752, 35.163036, 50.094742>,  <40.664463, 34.925797, 50.095673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.700752, 35.163036, 50.094742>,  <40.761230, 35.558434, 50.093193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700752, 35.163036, 50.094742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987333, 0.150827, -0.049252,
		0.048101, -0.011274, -0.998779,
		-0.151198, -0.988496, 0.003876,
		40.655392, 34.866489, 50.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252823, 35.436165, 49.625999>,  <40.761230, 35.558434, 50.093193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252823, 35.436165, 49.625999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215782, 35.082066, 49.808319>,  <40.193558, 34.869606, 49.917709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215782, 35.082066, 49.808319>,  <40.252823, 35.436165, 49.625999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215782, 35.082066, 49.808319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995692, 0.084511, -0.038141,
		-0.004756, -0.457368, -0.889265,
		-0.092597, -0.885253, 0.455800,
		40.188004, 34.816490, 49.945061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638538, 35.157589, 49.345024>,  <40.252823, 35.436165, 49.625999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638538, 35.157589, 49.345024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704243, 34.936237, 49.671654>,  <39.743668, 34.803425, 49.867630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704243, 34.936237, 49.671654>,  <39.638538, 35.157589, 49.345024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704243, 34.936237, 49.671654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967195, 0.072270, 0.243539,
		-0.193783, -0.829789, -0.523353,
		0.164263, -0.553378, 0.816573,
		39.753521, 34.770226, 49.916626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119843, 34.698017, 49.410954>,  <39.638538, 35.157589, 49.345024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119843, 34.698017, 49.410954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260868, 34.699440, 49.785267>,  <39.345482, 34.700294, 50.009853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260868, 34.699440, 49.785267>,  <39.119843, 34.698017, 49.410954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260868, 34.699440, 49.785267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925856, -0.143989, 0.349369,
		0.135987, -0.989573, -0.047468,
		0.352561, 0.003561, 0.935782,
		39.366634, 34.700508, 50.066002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991127, 34.032009, 49.790791>,  <39.119843, 34.698017, 49.410954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991127, 34.032009, 49.790791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005989, 34.368393, 50.006718>,  <39.014904, 34.570225, 50.136272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005989, 34.368393, 50.006718>,  <38.991127, 34.032009, 49.790791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005989, 34.368393, 50.006718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970655, -0.098064, 0.219571,
		0.237588, -0.532135, 0.812640,
		0.037151, 0.840961, 0.539819,
		39.017136, 34.620682, 50.168663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362644, 33.762402, 49.839363>,  <38.991127, 34.032009, 49.790791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362644, 33.762402, 49.839363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350018, 34.160858, 49.806614>,  <38.342442, 34.399933, 49.786964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350018, 34.160858, 49.806614>,  <38.362644, 33.762402, 49.839363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350018, 34.160858, 49.806614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709488, -0.080025, -0.700159,
		-0.704010, 0.035988, 0.709277,
		-0.031562, 0.996143, -0.081871,
		38.340549, 34.459702, 49.782051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730587, 33.774124, 49.495949>,  <38.362644, 33.762402, 49.839363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730587, 33.774124, 49.495949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.917660, 34.127579, 49.487381>,  <38.029903, 34.339653, 49.482239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.917660, 34.127579, 49.487381>,  <37.730587, 33.774124, 49.495949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917660, 34.127579, 49.487381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544857, 0.269119, -0.794170,
		-0.695994, 0.383089, 0.607318,
		0.467679, 0.883639, -0.021424,
		38.057964, 34.392670, 49.480953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230881, 33.173290, 49.396091>,  <37.730587, 33.774124, 49.495949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230881, 33.173290, 49.396091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240082, 32.831074, 49.189201>,  <37.245602, 32.625744, 49.065067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240082, 32.831074, 49.189201>,  <37.230881, 33.173290, 49.396091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240082, 32.831074, 49.189201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939910, 0.157777, -0.302782,
		0.340648, 0.493107, -0.800502,
		0.023003, -0.855542, -0.517223,
		37.246983, 32.574409, 49.034035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891308, 33.331146, 48.766773>,  <37.230881, 33.173290, 49.396091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891308, 33.331146, 48.766773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875298, 32.931519, 48.760372>,  <36.865692, 32.691742, 48.756531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875298, 32.931519, 48.760372>,  <36.891308, 33.331146, 48.766773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875298, 32.931519, 48.760372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920219, 0.043101, -0.389024,
		0.389352, -0.000849, -0.921089,
		-0.040030, -0.999071, -0.016001,
		36.863289, 32.631798, 48.755573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825748, 33.123821, 48.112595>,  <36.891308, 33.331146, 48.766773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825748, 33.123821, 48.112595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691368, 32.826008, 48.343353>,  <36.610741, 32.647320, 48.481808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691368, 32.826008, 48.343353>,  <36.825748, 33.123821, 48.112595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691368, 32.826008, 48.343353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799585, -0.098271, -0.592458,
		0.497796, -0.660315, -0.562302,
		-0.335951, -0.744531, 0.576897,
		36.590584, 32.602650, 48.516422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699532, 32.601963, 47.646679>,  <36.825748, 33.123821, 48.112595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699532, 32.601963, 47.646679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474941, 32.537579, 47.971355>,  <36.340187, 32.498947, 48.166161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474941, 32.537579, 47.971355>,  <36.699532, 32.601963, 47.646679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474941, 32.537579, 47.971355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820490, -0.019073, -0.571342,
		0.107448, -0.986776, -0.121362,
		-0.561472, -0.160966, 0.811690,
		36.306499, 32.489288, 48.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160988, 32.271824, 47.398144>,  <36.699532, 32.601963, 47.646679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160988, 32.271824, 47.398144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997921, 32.348919, 47.755165>,  <35.900082, 32.395176, 47.969379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997921, 32.348919, 47.755165>,  <36.160988, 32.271824, 47.398144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997921, 32.348919, 47.755165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907763, 0.020266, -0.418994,
		-0.098846, -0.981040, 0.166703,
		-0.407671, 0.192743, 0.892555,
		35.875618, 32.406742, 48.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566128, 31.881304, 47.347736>,  <36.160988, 32.271824, 47.398144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566128, 31.881304, 47.347736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497463, 32.131866, 47.651882>,  <35.456264, 32.282204, 47.834370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497463, 32.131866, 47.651882>,  <35.566128, 31.881304, 47.347736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497463, 32.131866, 47.651882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970844, 0.023519, -0.238556,
		-0.167316, -0.779143, 0.604104,
		-0.171662, 0.626405, 0.760361,
		35.445965, 32.319786, 47.879990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053623, 31.576668, 47.741177>,  <35.566128, 31.881304, 47.347736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053623, 31.576668, 47.741177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052372, 31.975771, 47.767910>,  <35.051620, 32.215233, 47.783951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052372, 31.975771, 47.767910>,  <35.053623, 31.576668, 47.741177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052372, 31.975771, 47.767910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972551, 0.012513, -0.232354,
		-0.232669, -0.065721, 0.970333,
		-0.003129, 0.997760, 0.066829,
		35.051434, 32.275101, 47.787960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446938, 31.699038, 48.089413>,  <35.053623, 31.576668, 47.741177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446938, 31.699038, 48.089413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548260, 32.044758, 47.915600>,  <34.609055, 32.252190, 47.811314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548260, 32.044758, 47.915600>,  <34.446938, 31.699038, 48.089413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548260, 32.044758, 47.915600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960444, 0.170977, -0.219806,
		-0.115683, 0.473022, 0.873423,
		0.253308, 0.864301, -0.434532,
		34.624252, 32.304047, 47.785240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923447, 32.186066, 48.210583>,  <34.446938, 31.699038, 48.089413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923447, 32.186066, 48.210583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100342, 32.377514, 47.907177>,  <34.206478, 32.492382, 47.725132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.100342, 32.377514, 47.907177>,  <33.923447, 32.186066, 48.210583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100342, 32.377514, 47.907177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882803, 0.381637, -0.273884,
		0.158393, 0.790743, 0.591302,
		0.442234, 0.478622, -0.758518,
		34.233013, 32.521099, 47.679623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665665, 32.866283, 48.198498>,  <33.923447, 32.186066, 48.210583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665665, 32.866283, 48.198498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.794170, 32.816875, 47.822937>,  <33.871273, 32.787231, 47.597599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.794170, 32.816875, 47.822937>,  <33.665665, 32.866283, 48.198498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794170, 32.816875, 47.822937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938946, 0.087413, -0.332775,
		0.123175, 0.988485, -0.087892,
		0.321260, -0.123516, -0.938901,
		33.890549, 32.779819, 47.541267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.834208, 30.218426, 52.676720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.200737, 30.375725, 52.646511>,  <28.420654, 30.470104, 52.628384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.200737, 30.375725, 52.646511>,  <27.834208, 30.218426, 52.676720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200737, 30.375725, 52.646511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087981, 0.013719, -0.996028,
		-0.390649, 0.919330, 0.047170,
		0.916326, 0.393247, -0.075524,
		28.475636, 30.493698, 52.623856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774044, 30.836111, 52.284603>,  <27.834208, 30.218426, 52.676720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774044, 30.836111, 52.284603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.163223, 30.752413, 52.245426>,  <28.396730, 30.702194, 52.221920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.163223, 30.752413, 52.245426>,  <27.774044, 30.836111, 52.284603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163223, 30.752413, 52.245426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036423, 0.279711, -0.959393,
		0.228143, 0.937005, 0.264522,
		0.972946, -0.209244, -0.097943,
		28.455107, 30.689640, 52.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173412, 31.472975, 52.022488>,  <27.774044, 30.836111, 52.284603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173412, 31.472975, 52.022488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.394936, 31.159584, 51.909729>,  <28.527849, 30.971550, 51.842075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.394936, 31.159584, 51.909729>,  <28.173412, 31.472975, 52.022488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394936, 31.159584, 51.909729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185452, 0.446113, -0.875551,
		0.811730, 0.432608, 0.392358,
		0.553807, -0.783475, -0.281895,
		28.561077, 30.924541, 51.825161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668425, 31.810066, 51.699120>,  <28.173412, 31.472975, 52.022488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668425, 31.810066, 51.699120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.685669, 31.428394, 51.580673>,  <28.696016, 31.199392, 51.509605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.685669, 31.428394, 51.580673>,  <28.668425, 31.810066, 51.699120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685669, 31.428394, 51.580673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358612, 0.291421, -0.886832,
		0.932491, -0.067957, 0.354743,
		0.043113, -0.954178, -0.296117,
		28.698603, 31.142141, 51.491837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255938, 31.728756, 51.506256>,  <28.668425, 31.810066, 51.699120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255938, 31.728756, 51.506256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.070290, 31.428429, 51.318272>,  <28.958900, 31.248232, 51.205479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.070290, 31.428429, 51.318272>,  <29.255938, 31.728756, 51.506256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070290, 31.428429, 51.318272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343608, 0.336411, -0.876790,
		0.816411, -0.568418, 0.101852,
		-0.464119, -0.750819, -0.469963,
		28.931053, 31.203182, 51.177284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765236, 31.284737, 51.152588>,  <29.255938, 31.728756, 51.506256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765236, 31.284737, 51.152588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428785, 31.191423, 50.957413>,  <29.226915, 31.135435, 50.840305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428785, 31.191423, 50.957413>,  <29.765236, 31.284737, 51.152588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428785, 31.191423, 50.957413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483897, 0.078342, -0.871611,
		0.241556, -0.969248, 0.046988,
		-0.841127, -0.233280, -0.487940,
		29.176447, 31.121439, 50.811031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839630, 30.598907, 50.726337>,  <29.765236, 31.284737, 51.152588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839630, 30.598907, 50.726337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.543861, 30.799976, 50.547195>,  <29.366400, 30.920618, 50.439709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.543861, 30.799976, 50.547195>,  <29.839630, 30.598907, 50.726337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543861, 30.799976, 50.547195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569187, 0.111474, -0.814616,
		-0.359561, -0.857259, -0.368541,
		-0.739420, 0.502674, -0.447859,
		29.322035, 30.950779, 50.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818029, 30.330664, 50.047798>,  <29.839630, 30.598907, 50.726337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818029, 30.330664, 50.047798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.619183, 30.676710, 50.021122>,  <29.499874, 30.884338, 50.005116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.619183, 30.676710, 50.021122>,  <29.818029, 30.330664, 50.047798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619183, 30.676710, 50.021122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574430, 0.270527, -0.772558,
		-0.650311, -0.422361, -0.631432,
		-0.497118, 0.865116, -0.066691,
		29.470047, 30.936245, 50.001114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604710, 30.328379, 49.414078>,  <29.818029, 30.330664, 50.047798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604710, 30.328379, 49.414078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.633488, 30.696367, 49.568211>,  <29.650755, 30.917160, 49.660690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.633488, 30.696367, 49.568211>,  <29.604710, 30.328379, 49.414078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633488, 30.696367, 49.568211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421337, 0.322136, -0.847764,
		-0.904046, 0.223344, -0.364442,
		0.071943, 0.919970, 0.385329,
		29.655071, 30.972359, 49.683807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562752, 30.665043, 48.883717>,  <29.604710, 30.328379, 49.414078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562752, 30.665043, 48.883717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.663923, 30.981993, 49.105770>,  <29.724627, 31.172163, 49.239002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.663923, 30.981993, 49.105770>,  <29.562752, 30.665043, 48.883717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663923, 30.981993, 49.105770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236326, 0.505809, -0.829642,
		-0.938178, 0.341032, -0.059325,
		0.252927, 0.792372, 0.555134,
		29.739801, 31.219704, 49.272312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302443, 31.273809, 48.580711>,  <29.562752, 30.665043, 48.883717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302443, 31.273809, 48.580711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598736, 31.386137, 48.824829>,  <29.776512, 31.453533, 48.971298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598736, 31.386137, 48.824829>,  <29.302443, 31.273809, 48.580711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598736, 31.386137, 48.824829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324971, 0.645302, -0.691361,
		-0.587969, 0.710440, 0.386739,
		0.740734, 0.280820, 0.610290,
		29.820955, 31.470383, 49.007915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371243, 31.974846, 48.518383>,  <29.302443, 31.273809, 48.580711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371243, 31.974846, 48.518383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.735968, 31.862463, 48.638157>,  <29.954803, 31.795034, 48.710022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.735968, 31.862463, 48.638157>,  <29.371243, 31.974846, 48.518383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735968, 31.862463, 48.638157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407272, 0.711579, -0.572525,
		-0.052218, 0.643987, 0.763252,
		0.911813, -0.280955, 0.299435,
		30.009512, 31.778177, 48.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891394, 32.521187, 48.605743>,  <29.371243, 31.974846, 48.518383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891394, 32.521187, 48.605743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104929, 32.193169, 48.523243>,  <30.233049, 31.996357, 48.473743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104929, 32.193169, 48.523243>,  <29.891394, 32.521187, 48.605743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104929, 32.193169, 48.523243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453295, 0.483442, -0.748870,
		0.713821, 0.306282, 0.629803,
		0.533839, -0.820046, -0.206255,
		30.265081, 31.947155, 48.461365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935984, 33.249714, 48.828098>,  <29.891394, 32.521187, 48.605743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935984, 33.249714, 48.828098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.200102, 33.288460, 49.125992>,  <30.358572, 33.311707, 49.304729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.200102, 33.288460, 49.125992>,  <29.935984, 33.249714, 48.828098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200102, 33.288460, 49.125992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294662, -0.945545, -0.138270,
		0.690787, 0.310744, -0.652879,
		0.660294, 0.096863, 0.744735,
		30.398190, 33.317520, 49.349411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462152, 33.450546, 48.275791>,  <29.935984, 33.249714, 48.828098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462152, 33.450546, 48.275791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613657, 33.692848, 47.995903>,  <30.704559, 33.838230, 47.827972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.613657, 33.692848, 47.995903>,  <30.462152, 33.450546, 48.275791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613657, 33.692848, 47.995903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210246, 0.679963, 0.702458,
		0.901297, -0.413177, 0.130186,
		0.378761, 0.605752, -0.699717,
		30.727285, 33.874573, 47.785988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033363, 33.676025, 48.506588>,  <30.462152, 33.450546, 48.275791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033363, 33.676025, 48.506588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899557, 33.935616, 48.233261>,  <30.819273, 34.091370, 48.069263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899557, 33.935616, 48.233261>,  <31.033363, 33.676025, 48.506588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899557, 33.935616, 48.233261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138138, 0.751030, 0.645656,
		0.932211, 0.121590, -0.340880,
		-0.334517, 0.648976, -0.683322,
		30.799202, 34.130310, 48.028263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523561, 34.213268, 48.543156>,  <31.033363, 33.676025, 48.506588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523561, 34.213268, 48.543156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193489, 34.360153, 48.371468>,  <30.995445, 34.448284, 48.268456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.193489, 34.360153, 48.371468>,  <31.523561, 34.213268, 48.543156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193489, 34.360153, 48.371468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117908, 0.855098, 0.504881,
		0.552424, 0.366011, -0.748909,
		-0.825182, 0.367210, -0.429221,
		30.945934, 34.470318, 48.242702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650736, 34.921078, 48.411221>,  <31.523561, 34.213268, 48.543156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650736, 34.921078, 48.411221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251499, 34.897972, 48.402477>,  <31.011957, 34.884109, 48.397232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251499, 34.897972, 48.402477>,  <31.650736, 34.921078, 48.411221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251499, 34.897972, 48.402477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060683, 0.851264, 0.521216,
		-0.011504, 0.521547, -0.853145,
		-0.998091, -0.057768, -0.021857,
		30.952072, 34.880642, 48.395920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409019, 35.594292, 48.134762>,  <31.650736, 34.921078, 48.411221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409019, 35.594292, 48.134762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079437, 35.430645, 48.291588>,  <30.881687, 35.332455, 48.385685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079437, 35.430645, 48.291588>,  <31.409019, 35.594292, 48.134762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079437, 35.430645, 48.291588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263866, 0.889322, 0.373473,
		-0.501470, 0.204271, -0.840715,
		-0.823955, -0.409121, 0.392068,
		30.832251, 35.307907, 48.409210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903246, 36.212337, 48.115376>,  <31.409019, 35.594292, 48.134762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903246, 36.212337, 48.115376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.804783, 35.939911, 48.391220>,  <30.745705, 35.776455, 48.556725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.804783, 35.939911, 48.391220>,  <30.903246, 36.212337, 48.115376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804783, 35.939911, 48.391220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193793, 0.731718, 0.653478,
		-0.949658, 0.027217, -0.312103,
		-0.246157, -0.681064, 0.689608,
		30.730936, 35.735592, 48.598103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378807, 36.495857, 48.468437>,  <30.903246, 36.212337, 48.115376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378807, 36.495857, 48.468437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477608, 36.197308, 48.715633>,  <30.536888, 36.018177, 48.863953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477608, 36.197308, 48.715633>,  <30.378807, 36.495857, 48.468437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477608, 36.197308, 48.715633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339320, 0.530752, 0.776636,
		-0.907663, -0.401526, -0.122164,
		0.247001, -0.746377, 0.617990,
		30.551708, 35.973396, 48.901031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784782, 36.372723, 48.874660>,  <30.378807, 36.495857, 48.468437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784782, 36.372723, 48.874660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.074869, 36.221462, 49.104813>,  <30.248920, 36.130707, 49.242905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.074869, 36.221462, 49.104813>,  <29.784782, 36.372723, 48.874660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074869, 36.221462, 49.104813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484002, 0.314374, 0.816646,
		-0.489700, -0.870731, 0.044963,
		0.725214, -0.378149, 0.575384,
		30.292433, 36.108017, 49.277428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452576, 36.038342, 49.468979>,  <29.784782, 36.372723, 48.874660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452576, 36.038342, 49.468979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.827085, 36.096596, 49.596840>,  <30.051792, 36.131546, 49.673557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.827085, 36.096596, 49.596840>,  <29.452576, 36.038342, 49.468979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827085, 36.096596, 49.596840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348646, 0.274274, 0.896225,
		0.042845, -0.950561, 0.307569,
		0.936275, 0.145631, 0.319658,
		30.107967, 36.140285, 49.692738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417534, 35.701157, 50.090637>,  <29.452576, 36.038342, 49.468979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417534, 35.701157, 50.090637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709484, 35.974586, 50.090843>,  <29.884655, 36.138645, 50.090969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709484, 35.974586, 50.090843>,  <29.417534, 35.701157, 50.090637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709484, 35.974586, 50.090843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338854, 0.361147, 0.868764,
		0.593681, -0.634266, 0.495227,
		0.729878, 0.683578, 0.000518,
		29.928448, 36.179661, 50.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800341, 35.659195, 50.699215>,  <29.417534, 35.701157, 50.090637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800341, 35.659195, 50.699215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.872353, 36.036823, 50.588711>,  <29.915560, 36.263401, 50.522408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.872353, 36.036823, 50.588711>,  <29.800341, 35.659195, 50.699215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872353, 36.036823, 50.588711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369078, 0.325162, 0.870662,
		0.911795, -0.054783, 0.406974,
		0.180030, 0.944070, -0.276261,
		29.926361, 36.320045, 50.505833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225561, 35.967113, 51.277390>,  <29.800341, 35.659195, 50.699215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225561, 35.967113, 51.277390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.098982, 36.298653, 51.092838>,  <30.023035, 36.497578, 50.982109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.098982, 36.298653, 51.092838>,  <30.225561, 35.967113, 51.277390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098982, 36.298653, 51.092838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287248, 0.379810, 0.879337,
		0.904074, 0.410793, 0.117896,
		-0.316448, 0.828851, -0.461376,
		30.004047, 36.547306, 50.954426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569183, 36.458275, 51.549782>,  <30.225561, 35.967113, 51.277390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569183, 36.458275, 51.549782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258791, 36.675690, 51.421768>,  <30.072556, 36.806137, 51.344959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258791, 36.675690, 51.421768>,  <30.569183, 36.458275, 51.549782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258791, 36.675690, 51.421768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170026, 0.308346, 0.935956,
		0.607407, 0.780698, -0.146855,
		-0.775981, 0.543537, -0.320031,
		30.025997, 36.838753, 51.325760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671125, 37.040710, 51.803333>,  <30.569183, 36.458275, 51.549782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671125, 37.040710, 51.803333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.276413, 37.017769, 51.742702>,  <30.039585, 37.004002, 51.706326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.276413, 37.017769, 51.742702>,  <30.671125, 37.040710, 51.803333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276413, 37.017769, 51.742702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161151, 0.248245, 0.955199,
		-0.017159, 0.966998, -0.254206,
		-0.986781, -0.057356, -0.151573,
		29.980379, 37.000561, 51.697231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098103, 37.694199, 51.728905>,  <30.671125, 37.040710, 51.803333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098103, 37.694199, 51.728905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349848, 37.870369, 51.985008>,  <31.500895, 37.976070, 52.138668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349848, 37.870369, 51.985008>,  <31.098103, 37.694199, 51.728905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349848, 37.870369, 51.985008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655238, 0.142210, -0.741916,
		-0.417813, 0.886452, -0.199086,
		0.629361, 0.440431, 0.640254,
		31.538656, 38.002499, 52.177086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279287, 38.280029, 51.478542>,  <31.098103, 37.694199, 51.728905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279287, 38.280029, 51.478542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583458, 38.222618, 51.731888>,  <31.765961, 38.188171, 51.883896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583458, 38.222618, 51.731888>,  <31.279287, 38.280029, 51.478542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583458, 38.222618, 51.731888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639811, -0.001629, -0.768530,
		0.111335, 0.989645, 0.090591,
		0.760425, -0.143525, 0.633367,
		31.811584, 38.179562, 51.921898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860088, 38.677586, 51.286034>,  <31.279287, 38.280029, 51.478542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860088, 38.677586, 51.286034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067448, 38.405197, 51.492931>,  <32.191864, 38.241764, 51.617069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067448, 38.405197, 51.492931>,  <31.860088, 38.677586, 51.286034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067448, 38.405197, 51.492931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693184, -0.019568, -0.720495,
		0.500757, 0.732050, 0.461893,
		0.518400, -0.680970, 0.517244,
		32.222969, 38.200905, 51.648106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622463, 38.898510, 51.305481>,  <31.860088, 38.677586, 51.286034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622463, 38.898510, 51.305481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596809, 38.504570, 51.369934>,  <32.581417, 38.268208, 51.408604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596809, 38.504570, 51.369934>,  <32.622463, 38.898510, 51.305481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596809, 38.504570, 51.369934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756180, -0.153321, -0.636148,
		0.651213, 0.081047, 0.754555,
		-0.064132, -0.984847, 0.161131,
		32.577568, 38.209114, 51.418274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347061, 38.657547, 51.335930>,  <32.622463, 38.898510, 51.305481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347061, 38.657547, 51.335930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156403, 38.308647, 51.292118>,  <33.042007, 38.099308, 51.265831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156403, 38.308647, 51.292118>,  <33.347061, 38.657547, 51.335930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156403, 38.308647, 51.292118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771559, -0.355367, -0.527647,
		0.421317, -0.336005, 0.842373,
		-0.476644, -0.872247, -0.109526,
		33.013409, 38.046974, 51.259262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837288, 38.203777, 51.619621>,  <33.347061, 38.657547, 51.335930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837288, 38.203777, 51.619621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581131, 38.003281, 51.386848>,  <33.427437, 37.882984, 51.247185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581131, 38.003281, 51.386848>,  <33.837288, 38.203777, 51.619621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581131, 38.003281, 51.386848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759033, -0.297306, -0.579205,
		0.117309, -0.812628, 0.570853,
		-0.640396, -0.501243, -0.581935,
		33.389011, 37.852909, 51.212269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049328, 37.445606, 51.503532>,  <33.837288, 38.203777, 51.619621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049328, 37.445606, 51.503532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804230, 37.503937, 51.192848>,  <33.657169, 37.538937, 51.006439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804230, 37.503937, 51.192848>,  <34.049328, 37.445606, 51.503532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804230, 37.503937, 51.192848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692697, -0.373995, -0.616683,
		-0.380422, -0.915893, 0.128139,
		-0.612739, 0.145838, -0.776712,
		33.620407, 37.547684, 50.959835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007980, 36.812653, 51.130257>,  <34.049328, 37.445606, 51.503532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007980, 36.812653, 51.130257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935799, 37.096867, 50.858204>,  <33.892490, 37.267395, 50.694973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935799, 37.096867, 50.858204>,  <34.007980, 36.812653, 51.130257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935799, 37.096867, 50.858204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669248, -0.418039, -0.614289,
		-0.720795, -0.566025, -0.400088,
		-0.180450, 0.710534, -0.680131,
		33.881664, 37.310028, 50.654163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950912, 36.500996, 50.583641>,  <34.007980, 36.812653, 51.130257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950912, 36.500996, 50.583641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012486, 36.866657, 50.433643>,  <34.049431, 37.086056, 50.343643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012486, 36.866657, 50.433643>,  <33.950912, 36.500996, 50.583641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012486, 36.866657, 50.433643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583899, -0.390322, -0.711837,
		-0.797099, -0.109384, -0.593859,
		0.153932, 0.914158, -0.374994,
		34.058666, 37.140903, 50.321144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926834, 36.307072, 49.931278>,  <33.950912, 36.500996, 50.583641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926834, 36.307072, 49.931278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110023, 36.660221, 49.972855>,  <34.219936, 36.872108, 49.997799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110023, 36.660221, 49.972855>,  <33.926834, 36.307072, 49.931278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110023, 36.660221, 49.972855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741547, -0.314922, -0.592395,
		-0.490275, 0.348375, -0.798915,
		0.457971, 0.882870, 0.103938,
		34.247414, 36.925083, 50.004036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177814, 36.339050, 49.234547>,  <33.926834, 36.307072, 49.931278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177814, 36.339050, 49.234547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382603, 36.598911, 49.459347>,  <34.505474, 36.754826, 49.594227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382603, 36.598911, 49.459347>,  <34.177814, 36.339050, 49.234547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382603, 36.598911, 49.459347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847573, -0.275656, -0.453469,
		-0.139677, 0.708498, -0.691752,
		0.511967, 0.649649, 0.562001,
		34.536194, 36.793808, 49.627949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467236, 36.877464, 48.890762>,  <34.177814, 36.339050, 49.234547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467236, 36.877464, 48.890762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.698399, 36.784157, 49.203587>,  <34.837097, 36.728172, 49.391281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.698399, 36.784157, 49.203587>,  <34.467236, 36.877464, 48.890762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698399, 36.784157, 49.203587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724872, -0.293556, -0.623205,
		0.374950, 0.927045, -0.000560,
		0.577904, -0.233265, 0.782058,
		34.871769, 36.714176, 49.438206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.464745, 37.147308, 57.436878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.088696, 37.278065, 57.398281>,  <29.863066, 37.356518, 57.375122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.088696, 37.278065, 57.398281>,  <30.464745, 37.147308, 57.436878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088696, 37.278065, 57.398281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171631, 0.209459, -0.962637,
		-0.294471, -0.921557, -0.253022,
		-0.940122, 0.326895, -0.096488,
		29.806660, 37.376133, 57.369335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159941, 36.808662, 56.856930>,  <30.464745, 37.147308, 57.436878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159941, 36.808662, 56.856930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915197, 37.120144, 56.912426>,  <29.768351, 37.307034, 56.945724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915197, 37.120144, 56.912426>,  <30.159941, 36.808662, 56.856930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915197, 37.120144, 56.912426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039898, 0.205566, -0.977830,
		-0.789960, -0.592758, -0.156846,
		-0.611858, 0.778704, 0.138739,
		29.731640, 37.353756, 56.954048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666248, 36.882610, 56.294594>,  <30.159941, 36.808662, 56.856930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666248, 36.882610, 56.294594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684666, 37.241383, 56.470497>,  <29.695715, 37.456646, 56.576038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684666, 37.241383, 56.470497>,  <29.666248, 36.882610, 56.294594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684666, 37.241383, 56.470497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067096, 0.442009, -0.894498,
		-0.996684, 0.011678, 0.080531,
		0.046041, 0.896935, 0.439760,
		29.698479, 37.510464, 56.602425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143572, 37.330799, 56.011658>,  <29.666248, 36.882610, 56.294594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143572, 37.330799, 56.011658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.437428, 37.554169, 56.165783>,  <29.613741, 37.688190, 56.258259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.437428, 37.554169, 56.165783>,  <29.143572, 37.330799, 56.011658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437428, 37.554169, 56.165783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206920, 0.356448, -0.911114,
		-0.646133, 0.749069, 0.146311,
		0.734640, 0.558427, 0.385310,
		29.657820, 37.721695, 56.281376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011549, 37.950397, 55.689434>,  <29.143572, 37.330799, 56.011658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011549, 37.950397, 55.689434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386553, 37.933876, 55.827637>,  <29.611555, 37.923962, 55.910557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386553, 37.933876, 55.827637>,  <29.011549, 37.950397, 55.689434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386553, 37.933876, 55.827637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337110, 0.353872, -0.872428,
		-0.086226, 0.934381, 0.345683,
		0.937508, -0.041307, 0.345502,
		29.667805, 37.921482, 55.931286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219442, 38.542171, 55.376350>,  <29.011549, 37.950397, 55.689434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219442, 38.542171, 55.376350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565470, 38.378628, 55.492615>,  <29.773087, 38.280502, 55.562374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565470, 38.378628, 55.492615>,  <29.219442, 38.542171, 55.376350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565470, 38.378628, 55.492615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381008, 0.158590, -0.910869,
		0.326321, 0.898712, 0.292970,
		0.865071, -0.408860, 0.290665,
		29.824991, 38.255970, 55.579815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830090, 39.076115, 55.253887>,  <29.219442, 38.542171, 55.376350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830090, 39.076115, 55.253887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980631, 38.705627, 55.262592>,  <30.070955, 38.483334, 55.267815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980631, 38.705627, 55.262592>,  <29.830090, 39.076115, 55.253887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980631, 38.705627, 55.262592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620827, 0.234690, -0.747994,
		0.687699, 0.295021, 0.663349,
		0.376356, -0.926220, 0.021761,
		30.093538, 38.427761, 55.269119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436253, 39.237385, 55.048748>,  <29.830090, 39.076115, 55.253887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436253, 39.237385, 55.048748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423655, 38.841537, 54.992668>,  <30.416096, 38.604027, 54.959023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423655, 38.841537, 54.992668>,  <30.436253, 39.237385, 55.048748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423655, 38.841537, 54.992668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617050, 0.091093, -0.781633,
		0.786293, -0.111128, 0.607777,
		-0.031497, -0.989622, -0.140198,
		30.414206, 38.544651, 54.950607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070112, 39.109005, 54.755615>,  <30.436253, 39.237385, 55.048748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070112, 39.109005, 54.755615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876764, 38.769451, 54.670063>,  <30.760756, 38.565720, 54.618732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.876764, 38.769451, 54.670063>,  <31.070112, 39.109005, 54.755615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876764, 38.769451, 54.670063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559022, -0.111295, -0.821649,
		0.673682, -0.516727, 0.528343,
		-0.483371, -0.848886, -0.213884,
		30.731752, 38.514786, 54.605896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574163, 38.608437, 54.611107>,  <31.070112, 39.109005, 54.755615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574163, 38.608437, 54.611107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232756, 38.497250, 54.434818>,  <31.027910, 38.430538, 54.329044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.232756, 38.497250, 54.434818>,  <31.574163, 38.608437, 54.611107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232756, 38.497250, 54.434818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465001, -0.024696, -0.884966,
		0.235110, -0.960272, 0.150334,
		-0.853520, -0.277970, -0.440721,
		30.976700, 38.413860, 54.302601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780497, 38.014179, 54.169666>,  <31.574163, 38.608437, 54.611107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780497, 38.014179, 54.169666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.425037, 38.102779, 54.009045>,  <31.211761, 38.155941, 53.912670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.425037, 38.102779, 54.009045>,  <31.780497, 38.014179, 54.169666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425037, 38.102779, 54.009045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397711, -0.063729, -0.915295,
		-0.228331, -0.973075, -0.031461,
		-0.888646, 0.221502, -0.401554,
		31.158443, 38.169231, 53.888577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642750, 37.415817, 53.609341>,  <31.780497, 38.014179, 54.169666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642750, 37.415817, 53.609341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.416491, 37.737148, 53.534828>,  <31.280735, 37.929947, 53.490120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.416491, 37.737148, 53.534828>,  <31.642750, 37.415817, 53.609341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416491, 37.737148, 53.534828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244908, -0.052058, -0.968148,
		-0.787440, -0.593254, -0.167296,
		-0.565649, 0.803331, -0.186285,
		31.246796, 37.978146, 53.478943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214424, 37.220093, 53.088928>,  <31.642750, 37.415817, 53.609341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214424, 37.220093, 53.088928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244623, 37.618645, 53.073280>,  <31.262743, 37.857777, 53.063892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244623, 37.618645, 53.073280>,  <31.214424, 37.220093, 53.088928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244623, 37.618645, 53.073280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383849, -0.065250, -0.921087,
		-0.920304, 0.054522, -0.387385,
		0.075497, 0.996378, -0.039121,
		31.267273, 37.917557, 53.061543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904854, 37.443432, 52.490143>,  <31.214424, 37.220093, 53.088928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904854, 37.443432, 52.490143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.175331, 37.716576, 52.600750>,  <31.337618, 37.880463, 52.667114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.175331, 37.716576, 52.600750>,  <30.904854, 37.443432, 52.490143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175331, 37.716576, 52.600750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393504, -0.017463, -0.919157,
		-0.622829, 0.730338, -0.280517,
		0.676194, 0.682862, 0.276515,
		31.378189, 37.921432, 52.683704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373510, 37.702999, 52.030670>,  <30.904854, 37.443432, 52.490143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373510, 37.702999, 52.030670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066433, 37.447163, 52.014835>,  <29.882187, 37.293659, 52.005333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066433, 37.447163, 52.014835>,  <30.373510, 37.702999, 52.030670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066433, 37.447163, 52.014835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112618, 0.073844, 0.990891,
		-0.630842, 0.765160, -0.128719,
		-0.767695, -0.639591, -0.039587,
		29.836124, 37.255283, 52.002960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791605, 37.975082, 52.382557>,  <30.373510, 37.702999, 52.030670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791605, 37.975082, 52.382557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670311, 37.593945, 52.387150>,  <29.597534, 37.365261, 52.389904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670311, 37.593945, 52.387150>,  <29.791605, 37.975082, 52.382557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670311, 37.593945, 52.387150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409990, 0.141330, 0.901074,
		-0.860207, 0.268533, -0.433514,
		-0.303236, -0.952846, 0.011478,
		29.579340, 37.308090, 52.390594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191338, 38.025978, 52.688293>,  <29.791605, 37.975082, 52.382557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191338, 38.025978, 52.688293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225758, 37.628296, 52.714035>,  <29.246408, 37.389687, 52.729481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225758, 37.628296, 52.714035>,  <29.191338, 38.025978, 52.688293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225758, 37.628296, 52.714035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590059, 0.001193, 0.807360,
		-0.802762, -0.107447, -0.586539,
		0.086049, -0.994210, 0.064358,
		29.251572, 37.330032, 52.733341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485306, 37.764866, 52.810295>,  <29.191338, 38.025978, 52.688293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485306, 37.764866, 52.810295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741089, 37.485558, 52.938988>,  <28.894560, 37.317974, 53.016205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741089, 37.485558, 52.938988>,  <28.485306, 37.764866, 52.810295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741089, 37.485558, 52.938988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637834, -0.248181, 0.729092,
		-0.429255, -0.671436, -0.604081,
		0.639460, -0.698269, 0.321732,
		28.932926, 37.276077, 53.035507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094275, 37.190144, 52.692345>,  <28.485306, 37.764866, 52.810295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094275, 37.190144, 52.692345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368715, 37.102066, 52.969696>,  <28.533379, 37.049217, 53.136108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.368715, 37.102066, 52.969696>,  <28.094275, 37.190144, 52.692345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368715, 37.102066, 52.969696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719933, -0.342670, 0.603551,
		0.104702, -0.913286, -0.393632,
		0.686100, -0.220196, 0.693383,
		28.574545, 37.036007, 53.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959303, 36.424427, 52.944813>,  <28.094275, 37.190144, 52.692345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959303, 36.424427, 52.944813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197119, 36.585163, 53.223392>,  <28.339809, 36.681606, 53.390541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197119, 36.585163, 53.223392>,  <27.959303, 36.424427, 52.944813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197119, 36.585163, 53.223392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610000, -0.338891, 0.716277,
		0.523853, -0.850690, 0.043641,
		0.594540, 0.401845, 0.696450,
		28.375481, 36.705715, 53.432327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158998, 35.836132, 53.407177>,  <27.959303, 36.424427, 52.944813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158998, 35.836132, 53.407177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195366, 36.191174, 53.587799>,  <28.217186, 36.404198, 53.696171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195366, 36.191174, 53.587799>,  <28.158998, 35.836132, 53.407177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195366, 36.191174, 53.587799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586809, -0.318601, 0.744411,
		0.804605, -0.332656, 0.491885,
		0.090918, 0.887600, 0.451554,
		28.222641, 36.457455, 53.723267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275299, 35.676716, 54.113953>,  <28.158998, 35.836132, 53.407177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275299, 35.676716, 54.113953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177816, 36.063717, 54.140915>,  <28.119328, 36.295918, 54.157093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177816, 36.063717, 54.140915>,  <28.275299, 35.676716, 54.113953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177816, 36.063717, 54.140915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441879, -0.172637, 0.880307,
		0.863337, 0.184751, 0.469592,
		-0.243707, 0.967504, 0.067406,
		28.104704, 36.353970, 54.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346052, 35.866581, 54.810406>,  <28.275299, 35.676716, 54.113953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346052, 35.866581, 54.810406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112267, 36.159050, 54.669678>,  <27.971994, 36.334534, 54.585239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112267, 36.159050, 54.669678>,  <28.346052, 35.866581, 54.810406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112267, 36.159050, 54.669678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565194, -0.055745, 0.823073,
		0.582199, 0.679907, 0.445837,
		-0.584466, 0.731176, -0.351824,
		27.936926, 36.378403, 54.564129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283915, 36.302231, 55.345734>,  <28.346052, 35.866581, 54.810406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283915, 36.302231, 55.345734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977966, 36.359283, 55.094456>,  <27.794397, 36.393517, 54.943687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977966, 36.359283, 55.094456>,  <28.283915, 36.302231, 55.345734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977966, 36.359283, 55.094456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634352, 0.002959, 0.773038,
		0.112118, 0.989771, 0.088215,
		-0.764870, 0.142631, -0.628196,
		27.748505, 36.402073, 54.905998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030214, 36.745583, 55.698185>,  <28.283915, 36.302231, 55.345734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030214, 36.745583, 55.698185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771351, 36.572216, 55.447319>,  <27.616034, 36.468197, 55.296799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771351, 36.572216, 55.447319>,  <28.030214, 36.745583, 55.698185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771351, 36.572216, 55.447319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629195, -0.160864, 0.760418,
		-0.430465, 0.886722, -0.168597,
		-0.647158, -0.433414, -0.627168,
		27.577204, 36.442192, 55.259171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340864, 36.996250, 55.850658>,  <28.030214, 36.745583, 55.698185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340864, 36.996250, 55.850658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.227520, 36.672436, 55.644997>,  <27.159513, 36.478146, 55.521599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.227520, 36.672436, 55.644997>,  <27.340864, 36.996250, 55.850658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227520, 36.672436, 55.644997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696443, -0.194869, 0.690646,
		-0.659297, 0.553782, -0.508578,
		-0.283362, -0.809537, -0.514155,
		27.142511, 36.429573, 55.490749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619968, 37.004147, 55.821949>,  <27.340864, 36.996250, 55.850658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619968, 37.004147, 55.821949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733704, 36.627235, 55.751228>,  <26.801945, 36.401089, 55.708797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733704, 36.627235, 55.751228>,  <26.619968, 37.004147, 55.821949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733704, 36.627235, 55.751228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527227, -0.307703, 0.792054,
		-0.800740, -0.131996, -0.584288,
		0.284336, -0.942282, -0.176798,
		26.819004, 36.344551, 55.698189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095301, 36.737846, 56.085976>,  <26.619968, 37.004147, 55.821949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095301, 36.737846, 56.085976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375788, 36.452679, 56.083347>,  <26.544079, 36.281578, 56.081772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375788, 36.452679, 56.083347>,  <26.095301, 36.737846, 56.085976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375788, 36.452679, 56.083347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406810, -0.407666, 0.817505,
		-0.585494, -0.570574, -0.575884,
		0.701215, -0.712919, -0.006571,
		26.586153, 36.238804, 56.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.397182, 33.118370, 59.931965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121742, 33.291489, 59.699234>,  <32.956478, 33.395359, 59.559597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121742, 33.291489, 59.699234>,  <33.397182, 33.118370, 59.931965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121742, 33.291489, 59.699234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545421, -0.219614, -0.808880,
		-0.477858, -0.874331, -0.084831,
		-0.688599, 0.432798, -0.581822,
		32.915161, 33.421329, 59.524689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235889, 32.643730, 59.471756>,  <33.397182, 33.118370, 59.931965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235889, 32.643730, 59.471756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090256, 32.955250, 59.267437>,  <33.002876, 33.142162, 59.144844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090256, 32.955250, 59.267437>,  <33.235889, 32.643730, 59.471756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090256, 32.955250, 59.267437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651537, -0.178933, -0.737212,
		-0.665540, -0.601209, -0.442272,
		-0.364082, 0.778801, -0.510797,
		32.981030, 33.188889, 59.114197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274555, 32.390804, 58.769173>,  <33.235889, 32.643730, 59.471756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274555, 32.390804, 58.769173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223675, 32.785927, 58.733269>,  <33.193146, 33.022999, 58.711727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223675, 32.785927, 58.733269>,  <33.274555, 32.390804, 58.769173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223675, 32.785927, 58.733269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445407, -0.023970, -0.895007,
		-0.886246, -0.153822, -0.436928,
		-0.127198, 0.987808, -0.089756,
		33.185516, 33.082268, 58.706341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987469, 32.439426, 58.098309>,  <33.274555, 32.390804, 58.769173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987469, 32.439426, 58.098309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111996, 32.812771, 58.169781>,  <33.186710, 33.036777, 58.212662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111996, 32.812771, 58.169781>,  <32.987469, 32.439426, 58.098309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111996, 32.812771, 58.169781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181647, 0.126107, -0.975244,
		-0.932785, 0.336064, -0.130283,
		0.311315, 0.933358, 0.178676,
		33.205391, 33.092777, 58.223385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794853, 32.809433, 57.552109>,  <32.987469, 32.439426, 58.098309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794853, 32.809433, 57.552109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087482, 33.036839, 57.702625>,  <33.263062, 33.173283, 57.792934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087482, 33.036839, 57.702625>,  <32.794853, 32.809433, 57.552109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087482, 33.036839, 57.702625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347195, 0.164324, -0.923284,
		-0.586732, 0.806095, -0.077170,
		0.731574, 0.568513, 0.376287,
		33.306953, 33.207394, 57.815510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789017, 33.466839, 57.251396>,  <32.794853, 32.809433, 57.552109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789017, 33.466839, 57.251396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162949, 33.391022, 57.371513>,  <33.387306, 33.345531, 57.443584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162949, 33.391022, 57.371513>,  <32.789017, 33.466839, 57.251396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162949, 33.391022, 57.371513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319975, 0.082863, -0.943795,
		0.154005, 0.978370, 0.138111,
		0.934825, -0.189541, 0.300293,
		33.443398, 33.334160, 57.461601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182102, 33.805553, 56.855816>,  <32.789017, 33.466839, 57.251396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182102, 33.805553, 56.855816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465866, 33.562252, 56.998234>,  <33.636124, 33.416271, 57.083683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465866, 33.562252, 56.998234>,  <33.182102, 33.805553, 56.855816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465866, 33.562252, 56.998234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483712, 0.052777, -0.873635,
		0.512599, 0.791988, 0.331659,
		0.709412, -0.608251, 0.356040,
		33.678688, 33.379776, 57.105045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785160, 34.127701, 56.612309>,  <33.182102, 33.805553, 56.855816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785160, 34.127701, 56.612309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898170, 33.763115, 56.731915>,  <33.965977, 33.544365, 56.803677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898170, 33.763115, 56.731915>,  <33.785160, 34.127701, 56.612309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898170, 33.763115, 56.731915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532263, -0.110371, -0.839353,
		0.798045, 0.396293, 0.453957,
		0.282526, -0.911466, 0.299013,
		33.982929, 33.489674, 56.821617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529167, 34.126163, 56.552395>,  <33.785160, 34.127701, 56.612309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529167, 34.126163, 56.552395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389832, 33.752167, 56.525711>,  <34.306232, 33.527767, 56.509701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389832, 33.752167, 56.525711>,  <34.529167, 34.126163, 56.552395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389832, 33.752167, 56.525711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495495, -0.123252, -0.859822,
		0.795705, -0.332561, 0.506218,
		-0.348335, -0.934993, -0.066710,
		34.285332, 33.471668, 56.505699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061321, 33.747246, 56.372581>,  <34.529167, 34.126163, 56.552395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061321, 33.747246, 56.372581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771301, 33.491058, 56.271305>,  <34.597290, 33.337345, 56.210541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771301, 33.491058, 56.271305>,  <35.061321, 33.747246, 56.372581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771301, 33.491058, 56.271305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453621, -0.167493, -0.875314,
		0.518203, -0.749497, 0.411970,
		-0.725048, -0.640468, -0.253192,
		34.553787, 33.298920, 56.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331345, 33.141438, 56.031876>,  <35.061321, 33.747246, 56.372581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331345, 33.141438, 56.031876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949318, 33.119900, 55.915298>,  <34.720100, 33.106976, 55.845352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949318, 33.119900, 55.915298>,  <35.331345, 33.141438, 56.031876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949318, 33.119900, 55.915298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295863, -0.231179, -0.926834,
		-0.017468, -0.971420, 0.236724,
		-0.955071, -0.053848, -0.291445,
		34.662796, 33.103745, 55.827866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250687, 32.554016, 55.677540>,  <35.331345, 33.141438, 56.031876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250687, 32.554016, 55.677540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974739, 32.810936, 55.543953>,  <34.809170, 32.965088, 55.463799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974739, 32.810936, 55.543953>,  <35.250687, 32.554016, 55.677540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974739, 32.810936, 55.543953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258291, -0.212583, -0.942388,
		-0.676293, -0.736381, -0.019247,
		-0.689865, 0.642302, -0.333969,
		34.767780, 33.003628, 55.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963734, 32.116196, 55.094425>,  <35.250687, 32.554016, 55.677540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963734, 32.116196, 55.094425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805054, 32.476086, 55.021637>,  <34.709846, 32.692020, 54.977962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805054, 32.476086, 55.021637>,  <34.963734, 32.116196, 55.094425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805054, 32.476086, 55.021637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162932, -0.126075, -0.978549,
		-0.903371, -0.417843, -0.096581,
		-0.396704, 0.899729, -0.181973,
		34.686043, 32.746006, 54.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517857, 32.010796, 54.562824>,  <34.963734, 32.116196, 55.094425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517857, 32.010796, 54.562824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627670, 32.395378, 54.568844>,  <34.693558, 32.626129, 54.572456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627670, 32.395378, 54.568844>,  <34.517857, 32.010796, 54.562824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627670, 32.395378, 54.568844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426040, -0.107594, -0.898283,
		-0.862044, 0.253022, -0.439159,
		0.274536, 0.961459, 0.015047,
		34.710030, 32.683815, 54.573357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827309, 32.076969, 54.629463>,  <34.517857, 32.010796, 54.562824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827309, 32.076969, 54.629463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625565, 31.744160, 54.537075>,  <33.504517, 31.544474, 54.481644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625565, 31.744160, 54.537075>,  <33.827309, 32.076969, 54.629463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625565, 31.744160, 54.537075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306305, -0.077694, 0.948758,
		-0.807338, 0.549266, -0.215668,
		-0.504364, -0.832028, -0.230968,
		33.474255, 31.494551, 54.467785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187683, 32.194221, 54.800121>,  <33.827309, 32.076969, 54.629463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187683, 32.194221, 54.800121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176891, 31.794416, 54.806416>,  <33.170414, 31.554533, 54.810192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176891, 31.794416, 54.806416>,  <33.187683, 32.194221, 54.800121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176891, 31.794416, 54.806416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207448, 0.020999, 0.978020,
		-0.977874, 0.023124, -0.207914,
		-0.026982, -0.999512, 0.015737,
		33.168797, 31.494562, 54.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490860, 32.035465, 55.012413>,  <33.187683, 32.194221, 54.800121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490860, 32.035465, 55.012413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707092, 31.713871, 55.111519>,  <32.836830, 31.520916, 55.170982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707092, 31.713871, 55.111519>,  <32.490860, 32.035465, 55.012413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707092, 31.713871, 55.111519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413374, 0.002663, 0.910557,
		-0.732733, -0.594646, -0.330907,
		0.540578, -0.803983, 0.247762,
		32.869267, 31.472675, 55.185848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033699, 31.616131, 55.432625>,  <32.490860, 32.035465, 55.012413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033699, 31.616131, 55.432625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.393959, 31.459848, 55.508701>,  <32.610115, 31.366079, 55.554348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.393959, 31.459848, 55.508701>,  <32.033699, 31.616131, 55.432625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393959, 31.459848, 55.508701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342538, -0.369043, 0.863988,
		-0.267377, -0.843301, -0.466211,
		0.900654, -0.390706, 0.190189,
		32.664154, 31.342636, 55.565758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029881, 30.867893, 55.587906>,  <32.033699, 31.616131, 55.432625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029881, 30.867893, 55.587906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366417, 31.001637, 55.757774>,  <32.568340, 31.081882, 55.859695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366417, 31.001637, 55.757774>,  <32.029881, 30.867893, 55.587906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366417, 31.001637, 55.757774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301582, -0.361623, 0.882200,
		0.448540, -0.870307, -0.203414,
		0.841344, 0.334357, 0.424671,
		32.618820, 31.101944, 55.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293541, 30.233236, 55.999256>,  <32.029881, 30.867893, 55.587906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293541, 30.233236, 55.999256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419319, 30.584166, 56.144268>,  <32.494785, 30.794724, 56.231274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419319, 30.584166, 56.144268>,  <32.293541, 30.233236, 55.999256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419319, 30.584166, 56.144268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396282, -0.225715, 0.889951,
		0.862605, -0.423501, 0.276694,
		0.314441, 0.877325, 0.362529,
		32.513653, 30.847363, 56.253025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419216, 30.009350, 56.703201>,  <32.293541, 30.233236, 55.999256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419216, 30.009350, 56.703201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457550, 30.407234, 56.717979>,  <32.480553, 30.645966, 56.726849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457550, 30.407234, 56.717979>,  <32.419216, 30.009350, 56.703201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457550, 30.407234, 56.717979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481747, 0.013868, 0.876200,
		0.871054, -0.101774, 0.480528,
		0.095839, 0.994711, 0.036949,
		32.486301, 30.705647, 56.729065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724583, 30.174032, 57.328449>,  <32.419216, 30.009350, 56.703201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724583, 30.174032, 57.328449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521938, 30.494738, 57.201626>,  <32.400352, 30.687160, 57.125534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521938, 30.494738, 57.201626>,  <32.724583, 30.174032, 57.328449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521938, 30.494738, 57.201626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421038, 0.090845, 0.902482,
		0.752380, 0.590697, 0.291550,
		-0.506607, 0.801764, -0.317056,
		32.369957, 30.735268, 57.106510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762039, 30.659061, 57.905121>,  <32.724583, 30.174032, 57.328449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762039, 30.659061, 57.905121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480713, 30.829590, 57.677578>,  <32.311916, 30.931908, 57.541050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480713, 30.829590, 57.677578>,  <32.762039, 30.659061, 57.905121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480713, 30.829590, 57.677578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532539, 0.214121, 0.818874,
		0.470909, 0.878864, 0.076439,
		-0.703312, 0.426322, -0.568861,
		32.269718, 30.957487, 57.506920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575253, 31.261862, 58.227852>,  <32.762039, 30.659061, 57.905121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575253, 31.261862, 58.227852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265247, 31.182508, 57.987854>,  <32.079243, 31.134897, 57.843853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265247, 31.182508, 57.987854>,  <32.575253, 31.261862, 58.227852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265247, 31.182508, 57.987854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631548, 0.209573, 0.746476,
		-0.022344, 0.957457, -0.287710,
		-0.775015, -0.198382, -0.599997,
		32.032742, 31.122993, 57.807854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155788, 31.837626, 58.295319>,  <32.575253, 31.261862, 58.227852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155788, 31.837626, 58.295319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903635, 31.538883, 58.210636>,  <31.752342, 31.359638, 58.159828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903635, 31.538883, 58.210636>,  <32.155788, 31.837626, 58.295319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903635, 31.538883, 58.210636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658826, 0.370493, 0.654739,
		-0.410563, 0.552213, -0.725602,
		-0.630386, -0.746857, -0.211701,
		31.714520, 31.314825, 58.147125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487099, 32.163288, 58.217255>,  <32.155788, 31.837626, 58.295319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487099, 32.163288, 58.217255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418018, 31.777311, 58.296314>,  <31.376570, 31.545725, 58.343750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418018, 31.777311, 58.296314>,  <31.487099, 32.163288, 58.217255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418018, 31.777311, 58.296314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671978, 0.262140, 0.692625,
		-0.720153, -0.013199, -0.693690,
		-0.172702, -0.964940, 0.197650,
		31.366207, 31.487829, 58.355610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689522, 32.085674, 58.270897>,  <31.487099, 32.163288, 58.217255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689522, 32.085674, 58.270897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.849621, 31.770573, 58.458187>,  <30.945681, 31.581511, 58.570560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.849621, 31.770573, 58.458187>,  <30.689522, 32.085674, 58.270897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849621, 31.770573, 58.458187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686937, 0.080281, 0.722269,
		-0.606563, -0.610731, -0.509008,
		0.400248, -0.787758, 0.468229,
		30.969696, 31.534245, 58.598656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155766, 31.667059, 58.464699>,  <30.689522, 32.085674, 58.270897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155766, 31.667059, 58.464699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447975, 31.571436, 58.720570>,  <30.623301, 31.514061, 58.874092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447975, 31.571436, 58.720570>,  <30.155766, 31.667059, 58.464699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447975, 31.571436, 58.720570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655247, 0.018429, 0.755190,
		-0.192325, -0.970830, -0.143181,
		0.730522, -0.239061, 0.639677,
		30.667131, 31.499718, 58.912472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543005, 31.194374, 58.283176>,  <30.155766, 31.667059, 58.464699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543005, 31.194374, 58.283176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.171984, 31.301250, 58.178673>,  <28.949371, 31.365377, 58.115971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.171984, 31.301250, 58.178673>,  <29.543005, 31.194374, 58.283176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171984, 31.301250, 58.178673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214773, -0.190972, -0.957811,
		-0.305814, -0.944530, 0.119750,
		-0.927551, 0.267193, -0.261261,
		28.893719, 31.381409, 58.100296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176079, 30.610842, 57.952732>,  <29.543005, 31.194374, 58.283176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176079, 30.610842, 57.952732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.023359, 30.957930, 57.825428>,  <28.931728, 31.166182, 57.749046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.023359, 30.957930, 57.825428>,  <29.176079, 30.610842, 57.952732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023359, 30.957930, 57.825428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227728, -0.245414, -0.942291,
		-0.895751, -0.432243, -0.103905,
		-0.381799, 0.867720, -0.318263,
		28.908819, 31.218246, 57.729950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731833, 30.319202, 57.394779>,  <29.176079, 30.610842, 57.952732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731833, 30.319202, 57.394779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.733978, 30.713425, 57.327068>,  <28.735266, 30.949957, 57.286442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.733978, 30.713425, 57.327068>,  <28.731833, 30.319202, 57.394779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733978, 30.713425, 57.327068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070551, -0.168485, -0.983176,
		-0.997494, 0.017218, 0.068628,
		0.005366, 0.985554, -0.169278,
		28.735588, 31.009090, 57.276283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257833, 30.472134, 56.933975>,  <28.731833, 30.319202, 57.394779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257833, 30.472134, 56.933975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.497908, 30.789740, 56.895370>,  <28.641953, 30.980303, 56.872208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.497908, 30.789740, 56.895370>,  <28.257833, 30.472134, 56.933975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497908, 30.789740, 56.895370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035197, -0.094320, -0.994919,
		-0.799085, 0.600534, -0.028663,
		0.600187, 0.794017, -0.096507,
		28.677963, 31.027945, 56.866417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965242, 30.862341, 56.428013>,  <28.257833, 30.472134, 56.933975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965242, 30.862341, 56.428013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.342728, 30.994257, 56.417843>,  <28.569218, 31.073406, 56.411739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.342728, 30.994257, 56.417843>,  <27.965242, 30.862341, 56.428013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342728, 30.994257, 56.417843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023132, -0.010881, -0.999673,
		-0.329959, 0.943992, -0.002640,
		0.943712, 0.329790, -0.025427,
		28.625841, 31.093193, 56.410213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008907, 31.388885, 55.972046>,  <27.965242, 30.862341, 56.428013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008907, 31.388885, 55.972046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381462, 31.244225, 55.988659>,  <28.604996, 31.157427, 55.998627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381462, 31.244225, 55.988659>,  <28.008907, 31.388885, 55.972046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381462, 31.244225, 55.988659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018950, -0.065763, -0.997655,
		0.363537, 0.929990, -0.054398,
		0.931387, -0.361654, 0.041530,
		28.660879, 31.135729, 56.001118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287323, 31.763512, 55.469635>,  <28.008907, 31.388885, 55.972046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287323, 31.763512, 55.469635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.556837, 31.472170, 55.519455>,  <28.718546, 31.297365, 55.549347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.556837, 31.472170, 55.519455>,  <28.287323, 31.763512, 55.469635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556837, 31.472170, 55.519455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064405, -0.110032, -0.991839,
		0.736114, 0.676309, -0.027229,
		0.673786, -0.728354, 0.124554,
		28.758972, 31.253664, 55.556820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824413, 32.037594, 55.110035>,  <28.287323, 31.763512, 55.469635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824413, 32.037594, 55.110035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.895267, 31.646698, 55.156712>,  <28.937780, 31.412159, 55.184719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.895267, 31.646698, 55.156712>,  <28.824413, 32.037594, 55.110035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895267, 31.646698, 55.156712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119672, -0.096300, -0.988132,
		0.976883, 0.188999, 0.099890,
		0.177137, -0.977244, 0.116692,
		28.948408, 31.353525, 55.191719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319578, 31.868185, 54.699173>,  <28.824413, 32.037594, 55.110035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319578, 31.868185, 54.699173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.146046, 31.514002, 54.765816>,  <29.041925, 31.301493, 54.805801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.146046, 31.514002, 54.765816>,  <29.319578, 31.868185, 54.699173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146046, 31.514002, 54.765816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128087, -0.243644, -0.961370,
		0.891843, -0.395733, 0.219116,
		-0.433832, -0.885456, 0.166604,
		29.015896, 31.248365, 54.815796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741531, 31.330114, 54.316410>,  <29.319578, 31.868185, 54.699173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741531, 31.330114, 54.316410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.393751, 31.152866, 54.403774>,  <29.185083, 31.046518, 54.456192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.393751, 31.152866, 54.403774>,  <29.741531, 31.330114, 54.316410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393751, 31.152866, 54.403774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007641, -0.429994, -0.902800,
		0.493965, -0.786607, 0.370471,
		-0.869449, -0.443120, 0.218412,
		29.132917, 31.019930, 54.469299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820847, 30.563223, 54.200817>,  <29.741531, 31.330114, 54.316410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820847, 30.563223, 54.200817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.431944, 30.646896, 54.158936>,  <29.198603, 30.697100, 54.133808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.431944, 30.646896, 54.158936>,  <29.820847, 30.563223, 54.200817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431944, 30.646896, 54.158936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020255, -0.370625, -0.928562,
		-0.233045, -0.904919, 0.356105,
		-0.972255, 0.209183, -0.104702,
		29.140268, 30.709652, 54.127525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538578, 29.955751, 53.875282>,  <29.820847, 30.563223, 54.200817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538578, 29.955751, 53.875282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270973, 30.248526, 53.823597>,  <29.110411, 30.424191, 53.792587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270973, 30.248526, 53.823597>,  <29.538578, 29.955751, 53.875282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270973, 30.248526, 53.823597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159889, -0.311500, -0.936698,
		-0.725850, -0.606003, 0.325425,
		-0.669012, 0.731934, -0.129209,
		29.070269, 30.468105, 53.784836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222494, 29.686729, 53.349377>,  <29.538578, 29.955751, 53.875282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222494, 29.686729, 53.349377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.082148, 30.059151, 53.389439>,  <28.997940, 30.282604, 53.413475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.082148, 30.059151, 53.389439>,  <29.222494, 29.686729, 53.349377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082148, 30.059151, 53.389439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486204, -0.089716, -0.869228,
		-0.800313, -0.353679, 0.484160,
		-0.350864, 0.931055, 0.100159,
		28.976889, 30.338467, 53.419487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466858, 29.733858, 53.145695>,  <29.222494, 29.686729, 53.349377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466858, 29.733858, 53.145695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.632250, 30.093866, 53.090565>,  <28.731485, 30.309872, 53.057487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.632250, 30.093866, 53.090565>,  <28.466858, 29.733858, 53.145695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632250, 30.093866, 53.090565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199328, -0.058228, -0.978201,
		-0.888428, 0.431938, 0.155323,
		0.413478, 0.900021, -0.137829,
		28.756294, 30.363873, 53.049217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.681971, 35.524467, 55.556973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.004293, 35.559578, 55.791229>,  <26.197687, 35.580643, 55.931782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.004293, 35.559578, 55.791229>,  <25.681971, 35.524467, 55.556973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004293, 35.559578, 55.791229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449307, -0.553583, 0.701191,
		0.385745, -0.828156, -0.406643,
		0.805806, 0.087773, 0.585638,
		26.246035, 35.585911, 55.966919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694473, 34.871372, 55.827187>,  <25.681971, 35.524467, 55.556973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694473, 34.871372, 55.827187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.921335, 35.108280, 56.056118>,  <26.057451, 35.250423, 56.193478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.921335, 35.108280, 56.056118>,  <25.694473, 34.871372, 55.827187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921335, 35.108280, 56.056118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370610, -0.437047, 0.819535,
		0.735518, -0.676911, -0.028372,
		0.567152, 0.592268, 0.572326,
		26.091480, 35.285961, 56.227818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029194, 34.405071, 56.214428>,  <25.694473, 34.871372, 55.827187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029194, 34.405071, 56.214428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.028034, 34.753147, 56.411514>,  <26.027338, 34.961990, 56.529766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.028034, 34.753147, 56.411514>,  <26.029194, 34.405071, 56.214428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028034, 34.753147, 56.411514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189815, -0.484239, 0.854098,
		0.981816, -0.091050, 0.166577,
		-0.002897, 0.870185, 0.492716,
		26.027164, 35.014202, 56.559330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411161, 34.235668, 56.824821>,  <26.029194, 34.405071, 56.214428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411161, 34.235668, 56.824821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.248758, 34.585457, 56.930996>,  <26.151316, 34.795330, 56.994701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.248758, 34.585457, 56.930996>,  <26.411161, 34.235668, 56.824821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248758, 34.585457, 56.930996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243907, -0.383603, 0.890706,
		0.880719, 0.296893, 0.369036,
		-0.406008, 0.874473, 0.265432,
		26.126955, 34.847797, 57.010624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663834, 34.257847, 57.456669>,  <26.411161, 34.235668, 56.824821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663834, 34.257847, 57.456669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.367107, 34.525574, 57.440044>,  <26.189072, 34.686211, 57.430069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.367107, 34.525574, 57.440044>,  <26.663834, 34.257847, 57.456669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367107, 34.525574, 57.440044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371470, -0.358528, 0.856427,
		0.558319, 0.650749, 0.514592,
		-0.741815, 0.669315, -0.041561,
		26.144564, 34.726368, 57.427578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716717, 34.815723, 57.967796>,  <26.663834, 34.257847, 57.456669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716717, 34.815723, 57.967796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.324627, 34.781116, 57.896603>,  <26.089373, 34.760353, 57.853886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.324627, 34.781116, 57.896603>,  <26.716717, 34.815723, 57.967796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324627, 34.781116, 57.896603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174270, -0.048777, 0.983489,
		-0.093770, 0.995056, 0.032735,
		-0.980223, -0.086517, -0.177982,
		26.030560, 34.755161, 57.843208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498880, 35.245655, 58.480938>,  <26.716717, 34.815723, 57.967796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498880, 35.245655, 58.480938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.194298, 35.005650, 58.382824>,  <26.011549, 34.861645, 58.323956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.194298, 35.005650, 58.382824>,  <26.498880, 35.245655, 58.480938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194298, 35.005650, 58.382824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229604, -0.104214, 0.967688,
		-0.606191, 0.793171, -0.058412,
		-0.761455, -0.600016, -0.245289,
		25.965860, 34.825645, 58.309238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853191, 35.528137, 58.771088>,  <26.498880, 35.245655, 58.480938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853191, 35.528137, 58.771088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.780836, 35.140533, 58.703789>,  <25.737423, 34.907970, 58.663410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.780836, 35.140533, 58.703789>,  <25.853191, 35.528137, 58.771088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780836, 35.140533, 58.703789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448106, -0.071075, 0.891151,
		-0.875489, 0.236590, -0.421361,
		-0.180889, -0.969006, -0.168243,
		25.726570, 34.849831, 58.653316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187517, 35.450924, 58.942059>,  <25.853191, 35.528137, 58.771088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187517, 35.450924, 58.942059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.306173, 35.068962, 58.947247>,  <25.377367, 34.839787, 58.950359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.306173, 35.068962, 58.947247>,  <25.187517, 35.450924, 58.942059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306173, 35.068962, 58.947247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423053, -0.119218, 0.898228,
		-0.856171, -0.271942, -0.439339,
		0.296643, -0.954900, 0.012974,
		25.395166, 34.782494, 58.951138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619635, 35.121857, 59.131329>,  <25.187517, 35.450924, 58.942059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619635, 35.121857, 59.131329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.920918, 34.878048, 59.230259>,  <25.101686, 34.731762, 59.289616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.920918, 34.878048, 59.230259>,  <24.619635, 35.121857, 59.131329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920918, 34.878048, 59.230259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446649, -0.197885, 0.872551,
		-0.482894, -0.767678, -0.421289,
		0.753205, -0.609518, 0.247325,
		25.146879, 34.695194, 59.304455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.261473, 34.578129, 59.397507>,  <24.619635, 35.121857, 59.131329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.261473, 34.578129, 59.397507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.633078, 34.537880, 59.539948>,  <24.856041, 34.513729, 59.625412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.633078, 34.537880, 59.539948>,  <24.261473, 34.578129, 59.397507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633078, 34.537880, 59.539948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357427, 0.005133, 0.933927,
		-0.095802, -0.994912, -0.031197,
		0.929015, -0.100622, 0.356100,
		24.911781, 34.507694, 59.646778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430485, 34.022053, 59.771027>,  <24.261473, 34.578129, 59.397507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430485, 34.022053, 59.771027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.758347, 34.180080, 59.936962>,  <24.955063, 34.274899, 60.036522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.758347, 34.180080, 59.936962>,  <24.430485, 34.022053, 59.771027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758347, 34.180080, 59.936962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426698, -0.062129, 0.902258,
		0.382226, -0.916549, 0.117651,
		0.819654, 0.395067, 0.414837,
		25.004242, 34.298599, 60.061413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.623199, 33.609447, 60.417088>,  <24.430485, 34.022053, 59.771027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.623199, 33.609447, 60.417088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.748444, 33.988930, 60.434628>,  <24.823589, 34.216618, 60.445152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.748444, 33.988930, 60.434628>,  <24.623199, 33.609447, 60.417088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748444, 33.988930, 60.434628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468354, 0.114075, 0.876146,
		0.826200, -0.294870, 0.480047,
		0.313111, 0.948704, 0.043854,
		24.842377, 34.273540, 60.447784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720938, 33.325024, 61.118130>,  <24.623199, 33.609447, 60.417088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720938, 33.325024, 61.118130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.879353, 33.342857, 61.484989>,  <24.974401, 33.353558, 61.705105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.879353, 33.342857, 61.484989>,  <24.720938, 33.325024, 61.118130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879353, 33.342857, 61.484989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873465, -0.326367, -0.361308,
		0.283219, 0.944191, -0.168197,
		0.396038, 0.044585, 0.917151,
		24.998163, 33.356232, 61.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366774, 33.763191, 61.147640>,  <24.720938, 33.325024, 61.118130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366774, 33.763191, 61.147640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.367056, 33.482010, 61.432137>,  <25.367226, 33.313301, 61.602833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.367056, 33.482010, 61.432137>,  <25.366774, 33.763191, 61.147640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367056, 33.482010, 61.432137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806766, -0.419850, -0.415757,
		0.590870, 0.574095, 0.566822,
		0.000703, -0.702951, 0.711238,
		25.367268, 33.271126, 61.645508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012495, 33.607716, 61.275269>,  <25.366774, 33.763191, 61.147640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012495, 33.607716, 61.275269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.860308, 33.282677, 61.451870>,  <25.768995, 33.087654, 61.557831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.860308, 33.282677, 61.451870>,  <26.012495, 33.607716, 61.275269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860308, 33.282677, 61.451870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731610, -0.556496, -0.393776,
		0.565676, 0.173187, 0.806236,
		-0.380470, -0.812600, 0.441501,
		25.746166, 33.038898, 61.584320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552475, 33.288570, 61.609215>,  <26.012495, 33.607716, 61.275269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552475, 33.288570, 61.609215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.273157, 33.013725, 61.528954>,  <26.105566, 32.848820, 61.480797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.273157, 33.013725, 61.528954>,  <26.552475, 33.288570, 61.609215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273157, 33.013725, 61.528954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714965, -0.655876, -0.242179,
		0.034800, -0.312574, 0.949256,
		-0.698293, -0.687113, -0.200655,
		26.063669, 32.807590, 61.468758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843384, 32.731464, 61.826260>,  <26.552475, 33.288570, 61.609215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843384, 32.731464, 61.826260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.550978, 32.556087, 61.617115>,  <26.375534, 32.450859, 61.491631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.550978, 32.556087, 61.617115>,  <26.843384, 32.731464, 61.826260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550978, 32.556087, 61.617115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658029, -0.655754, -0.370113,
		-0.180592, -0.614614, 0.767878,
		-0.731016, -0.438447, -0.522858,
		26.331673, 32.424553, 61.460258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934137, 32.024521, 61.852757>,  <26.843384, 32.731464, 61.826260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934137, 32.024521, 61.852757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.704273, 32.064678, 61.527870>,  <26.566355, 32.088772, 61.332939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.704273, 32.064678, 61.527870>,  <26.934137, 32.024521, 61.852757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704273, 32.064678, 61.527870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610982, -0.607664, -0.507391,
		-0.544490, -0.787824, 0.287861,
		-0.574658, 0.100392, -0.812213,
		26.531876, 32.094795, 61.284206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887770, 31.319603, 61.529324>,  <26.934137, 32.024521, 61.852757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887770, 31.319603, 61.529324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.793974, 31.577108, 61.237957>,  <26.737696, 31.731611, 61.063137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.793974, 31.577108, 61.237957>,  <26.887770, 31.319603, 61.529324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793974, 31.577108, 61.237957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656864, -0.447442, -0.606899,
		-0.716620, -0.620780, -0.317943,
		-0.234489, 0.643761, -0.728413,
		26.723627, 31.770237, 61.019432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693312, 30.968975, 60.906830>,  <26.887770, 31.319603, 61.529324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693312, 30.968975, 60.906830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.810751, 31.334225, 60.793690>,  <26.881214, 31.553375, 60.725807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.810751, 31.334225, 60.793690>,  <26.693312, 30.968975, 60.906830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810751, 31.334225, 60.793690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645367, -0.407619, -0.646025,
		-0.705196, 0.007129, -0.708977,
		0.293598, 0.913124, -0.282850,
		26.898830, 31.608162, 60.708836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658648, 31.031179, 60.215248>,  <26.693312, 30.968975, 60.906830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658648, 31.031179, 60.215248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.898787, 31.347675, 60.261765>,  <27.042870, 31.537573, 60.289673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.898787, 31.347675, 60.261765>,  <26.658648, 31.031179, 60.215248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898787, 31.347675, 60.261765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548428, -0.301487, -0.779957,
		-0.582073, 0.532022, -0.614935,
		0.600349, 0.791239, 0.116288,
		27.078892, 31.585047, 60.296650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617111, 31.255163, 59.599312>,  <26.658648, 31.031179, 60.215248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617111, 31.255163, 59.599312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.953993, 31.376047, 59.777912>,  <27.156122, 31.448578, 59.885075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.953993, 31.376047, 59.777912>,  <26.617111, 31.255163, 59.599312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953993, 31.376047, 59.777912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505111, -0.152618, -0.849453,
		-0.188567, 0.940945, -0.281184,
		0.842203, 0.302208, 0.446503,
		27.206654, 31.466709, 59.911861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914707, 31.685791, 59.042603>,  <26.617111, 31.255163, 59.599312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914707, 31.685791, 59.042603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.217365, 31.620228, 59.295780>,  <27.398960, 31.580889, 59.447689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.217365, 31.620228, 59.295780>,  <26.914707, 31.685791, 59.042603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217365, 31.620228, 59.295780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649401, 0.075950, -0.756644,
		0.075950, 0.983547, 0.163910,
		0.756644, -0.163910, 0.632949,
		27.444359, 31.571054, 59.485664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424074, 32.212162, 58.945038>,  <26.914707, 31.685791, 59.042603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424074, 32.212162, 58.945038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.626926, 31.929033, 59.141735>,  <27.748638, 31.759155, 59.259754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.626926, 31.929033, 59.141735>,  <27.424074, 32.212162, 58.945038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626926, 31.929033, 59.141735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741072, 0.066817, -0.668092,
		0.440033, 0.703225, 0.558431,
		0.507131, -0.707821, 0.491739,
		27.779066, 31.716686, 59.289257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110624, 32.444824, 59.015923>,  <27.424074, 32.212162, 58.945038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110624, 32.444824, 59.015923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.113329, 32.046017, 59.046661>,  <28.114952, 31.806732, 59.065105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.113329, 32.046017, 59.046661>,  <28.110624, 32.444824, 59.015923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113329, 32.046017, 59.046661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637428, -0.054917, -0.768550,
		0.770480, 0.054183, 0.635157,
		0.006762, -0.997020, 0.076850,
		28.115358, 31.746910, 59.069717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803303, 32.168797, 59.063972>,  <28.110624, 32.444824, 59.015923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803303, 32.168797, 59.063972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.605246, 31.849022, 58.927891>,  <28.486412, 31.657158, 58.846241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.605246, 31.849022, 58.927891>,  <28.803303, 32.168797, 59.063972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605246, 31.849022, 58.927891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633390, -0.064123, -0.771172,
		0.594686, -0.597322, 0.538103,
		-0.495143, -0.799434, -0.340205,
		28.456703, 31.609192, 58.825829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348680, 31.738630, 58.781223>,  <28.803303, 32.168797, 59.063972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348680, 31.738630, 58.781223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.007555, 31.622465, 58.607616>,  <28.802879, 31.552767, 58.503452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.007555, 31.622465, 58.607616>,  <29.348680, 31.738630, 58.781223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007555, 31.622465, 58.607616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470310, -0.065878, -0.880039,
		0.226983, -0.954631, 0.192766,
		-0.852811, -0.290413, -0.434019,
		28.751711, 31.535341, 58.477409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845688, 31.209026, 58.993248>,  <29.348680, 31.738630, 58.781223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845688, 31.209026, 58.993248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.185484, 31.330597, 59.165756>,  <30.389362, 31.403540, 59.269260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.185484, 31.330597, 59.165756>,  <29.845688, 31.209026, 58.993248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185484, 31.330597, 59.165756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498585, 0.195094, 0.844601,
		0.172539, -0.932513, 0.317254,
		0.849496, 0.303905, 0.431276,
		30.440332, 31.421774, 59.295135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014904, 30.758196, 59.590099>,  <29.845688, 31.209026, 58.993248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014904, 30.758196, 59.590099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208076, 31.101345, 59.660336>,  <30.323980, 31.307234, 59.702477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.208076, 31.101345, 59.660336>,  <30.014904, 30.758196, 59.590099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208076, 31.101345, 59.660336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370694, 0.018620, 0.928568,
		0.793324, -0.513525, 0.327001,
		0.482932, 0.857873, 0.175589,
		30.352957, 31.358707, 59.713013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302687, 30.710716, 60.253994>,  <30.014904, 30.758196, 59.590099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302687, 30.710716, 60.253994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.290960, 31.106646, 60.198299>,  <30.283924, 31.344204, 60.164883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.290960, 31.106646, 60.198299>,  <30.302687, 30.710716, 60.253994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290960, 31.106646, 60.198299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022808, 0.138601, 0.990086,
		0.999310, 0.032199, 0.018513,
		-0.029314, 0.989825, -0.139240,
		30.282166, 31.403593, 60.156528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603266, 31.001101, 60.928852>,  <30.302687, 30.710716, 60.253994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603266, 31.001101, 60.928852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.405888, 31.315376, 60.779610>,  <30.287460, 31.503941, 60.690063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.405888, 31.315376, 60.779610>,  <30.603266, 31.001101, 60.928852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405888, 31.315376, 60.779610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272479, 0.267734, 0.924161,
		0.825995, 0.557685, 0.081972,
		-0.493445, 0.785688, -0.373104,
		30.257854, 31.551083, 60.667679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773611, 31.579407, 61.368301>,  <30.603266, 31.001101, 60.928852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773611, 31.579407, 61.368301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.417173, 31.658514, 61.204918>,  <30.203310, 31.705978, 61.106888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.417173, 31.658514, 61.204918>,  <30.773611, 31.579407, 61.368301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417173, 31.658514, 61.204918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276911, 0.476114, 0.834647,
		0.359538, 0.856856, -0.369499,
		-0.891096, 0.197769, -0.408455,
		30.149845, 31.717844, 61.082382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679096, 32.307522, 61.477077>,  <30.773611, 31.579407, 61.368301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679096, 32.307522, 61.477077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.319725, 32.136597, 61.436626>,  <30.104103, 32.034042, 61.412357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.319725, 32.136597, 61.436626>,  <30.679096, 32.307522, 61.477077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319725, 32.136597, 61.436626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300516, 0.430407, 0.851140,
		-0.320183, 0.795078, -0.515106,
		-0.898428, -0.427318, -0.101125,
		30.050196, 32.008400, 61.406288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249231, 32.898075, 61.595516>,  <30.679096, 32.307522, 61.477077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249231, 32.898075, 61.595516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.999182, 32.587006, 61.622169>,  <29.849152, 32.400364, 61.638161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.999182, 32.587006, 61.622169>,  <30.249231, 32.898075, 61.595516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999182, 32.587006, 61.622169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532602, 0.487414, 0.691927,
		-0.570574, 0.397050, -0.718886,
		-0.625125, -0.777675, 0.066637,
		29.811644, 32.353703, 61.642162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121553, 33.555473, 61.018890>,  <30.249231, 32.898075, 61.595516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121553, 33.555473, 61.018890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415333, 33.792244, 61.151684>,  <30.591600, 33.934307, 61.231358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415333, 33.792244, 61.151684>,  <30.121553, 33.555473, 61.018890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415333, 33.792244, 61.151684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590876, -0.317093, -0.741834,
		-0.333840, 0.740999, -0.582642,
		0.734450, 0.591923, 0.331980,
		30.635668, 33.969822, 61.251278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389053, 33.887871, 60.409302>,  <30.121553, 33.555473, 61.018890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389053, 33.887871, 60.409302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.674770, 33.986237, 60.671391>,  <30.846201, 34.045258, 60.828644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.674770, 33.986237, 60.671391>,  <30.389053, 33.887871, 60.409302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674770, 33.986237, 60.671391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693180, -0.119685, -0.710758,
		-0.096367, 0.961874, -0.255954,
		0.714294, 0.245916, 0.655218,
		30.889059, 34.060013, 60.867954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868088, 34.410332, 60.022797>,  <30.389053, 33.887871, 60.409302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868088, 34.410332, 60.022797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.091976, 34.272316, 60.324169>,  <31.226309, 34.189507, 60.504993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.091976, 34.272316, 60.324169>,  <30.868088, 34.410332, 60.022797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091976, 34.272316, 60.324169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796665, -0.026225, -0.603851,
		0.228113, 0.938221, 0.260204,
		0.559722, -0.345041, 0.753431,
		31.259893, 34.168804, 60.550198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551254, 34.754429, 60.013100>,  <30.868088, 34.410332, 60.022797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551254, 34.754429, 60.013100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.616613, 34.413200, 60.211323>,  <31.655828, 34.208466, 60.330257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.616613, 34.413200, 60.211323>,  <31.551254, 34.754429, 60.013100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616613, 34.413200, 60.211323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803599, -0.176305, -0.568459,
		0.572303, 0.491115, 0.656716,
		0.163397, -0.853067, 0.495559,
		31.665632, 34.157280, 60.359989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147243, 34.900082, 60.261181>,  <31.551254, 34.754429, 60.013100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147243, 34.900082, 60.261181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.120171, 34.501320, 60.277210>,  <32.103928, 34.262062, 60.286827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.120171, 34.501320, 60.277210>,  <32.147243, 34.900082, 60.261181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120171, 34.501320, 60.277210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776810, -0.077863, -0.624903,
		0.626087, -0.011166, 0.779673,
		-0.067686, -0.996902, 0.040075,
		32.099865, 34.202248, 60.289234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941490, 34.623714, 60.230854>,  <32.147243, 34.900082, 60.261181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941490, 34.623714, 60.230854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.676624, 34.341152, 60.130833>,  <32.517704, 34.171616, 60.070820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.676624, 34.341152, 60.130833>,  <32.941490, 34.623714, 60.230854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676624, 34.341152, 60.130833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682219, -0.430232, -0.591166,
		0.310026, -0.562038, 0.766810,
		-0.662164, -0.706410, -0.250050,
		32.477974, 34.129230, 60.055817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371990, 34.056347, 60.045376>,  <32.941490, 34.623714, 60.230854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371990, 34.056347, 60.045376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030315, 33.933926, 59.877235>,  <32.825310, 33.860474, 59.776352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030315, 33.933926, 59.877235>,  <33.371990, 34.056347, 60.045376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030315, 33.933926, 59.877235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508484, -0.322721, -0.798308,
		0.108669, -0.895646, 0.431288,
		-0.854187, -0.306055, -0.420352,
		32.774059, 33.842110, 59.751129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.691002, 35.938614, 61.631683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655272, 35.678299, 61.330090>,  <27.633833, 35.522110, 61.149132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655272, 35.678299, 61.330090>,  <27.691002, 35.938614, 61.631683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655272, 35.678299, 61.330090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235112, 0.721843, -0.650896,
		0.967855, -0.235414, 0.088528,
		-0.089327, -0.650786, -0.753988,
		27.628473, 35.483063, 61.103893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237614, 35.949253, 61.197266>,  <27.691002, 35.938614, 61.631683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237614, 35.949253, 61.197266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917616, 35.818748, 60.995846>,  <27.725618, 35.740444, 60.874992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917616, 35.818748, 60.995846>,  <28.237614, 35.949253, 61.197266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917616, 35.818748, 60.995846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376081, 0.381264, -0.844512,
		0.467519, -0.864980, -0.182307,
		-0.799993, -0.326264, -0.503550,
		27.677618, 35.720871, 60.844780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560017, 35.610546, 60.569687>,  <28.237614, 35.949253, 61.197266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560017, 35.610546, 60.569687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182550, 35.726692, 60.506210>,  <27.956070, 35.796379, 60.468124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182550, 35.726692, 60.506210>,  <28.560017, 35.610546, 60.569687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182550, 35.726692, 60.506210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274329, 0.418324, -0.865880,
		-0.185040, -0.860634, -0.474415,
		-0.943665, 0.290368, -0.158690,
		27.899450, 35.813801, 60.458603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365025, 35.351715, 59.986050>,  <28.560017, 35.610546, 60.569687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365025, 35.351715, 59.986050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154060, 35.684902, 60.052979>,  <28.027481, 35.884815, 60.093136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154060, 35.684902, 60.052979>,  <28.365025, 35.351715, 59.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154060, 35.684902, 60.052979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270718, 0.351436, -0.896217,
		-0.805325, -0.427378, -0.410852,
		-0.527412, 0.832971, 0.167322,
		27.995836, 35.934792, 60.103176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127268, 35.469826, 59.324085>,  <28.365025, 35.351715, 59.986050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127268, 35.469826, 59.324085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039087, 35.810654, 59.513981>,  <27.986179, 36.015152, 59.627918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039087, 35.810654, 59.513981>,  <28.127268, 35.469826, 59.324085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039087, 35.810654, 59.513981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318304, 0.522912, -0.790725,
		-0.922000, -0.023207, -0.386495,
		-0.220453, 0.852070, 0.474738,
		27.972952, 36.066277, 59.656403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735538, 35.899124, 58.854332>,  <28.127268, 35.469826, 59.324085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735538, 35.899124, 58.854332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903427, 36.150261, 59.116524>,  <28.004160, 36.300941, 59.273838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903427, 36.150261, 59.116524>,  <27.735538, 35.899124, 58.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903427, 36.150261, 59.116524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444093, 0.487775, -0.751570,
		-0.791591, 0.606543, -0.074089,
		0.419720, 0.627838, 0.655480,
		28.029343, 36.338612, 59.313168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587217, 36.526657, 58.492996>,  <27.735538, 35.899124, 58.854332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587217, 36.526657, 58.492996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887035, 36.566521, 58.754757>,  <28.066927, 36.590439, 58.911816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887035, 36.566521, 58.754757>,  <27.587217, 36.526657, 58.492996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887035, 36.566521, 58.754757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496169, 0.569811, -0.655081,
		-0.438173, 0.815710, 0.377652,
		0.749547, 0.099660, 0.654406,
		28.111900, 36.596420, 58.951080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816309, 37.323509, 58.415607>,  <27.587217, 36.526657, 58.492996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816309, 37.323509, 58.415607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114801, 37.119797, 58.587082>,  <28.293898, 36.997570, 58.689968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114801, 37.119797, 58.587082>,  <27.816309, 37.323509, 58.415607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114801, 37.119797, 58.587082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659374, 0.477010, -0.581108,
		0.091461, 0.716305, 0.691767,
		0.746231, -0.509282, 0.428685,
		28.338671, 36.967010, 58.715687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376965, 37.857193, 58.504223>,  <27.816309, 37.323509, 58.415607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376965, 37.857193, 58.504223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555628, 37.500942, 58.538353>,  <28.662827, 37.287193, 58.558830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555628, 37.500942, 58.538353>,  <28.376965, 37.857193, 58.504223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555628, 37.500942, 58.538353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712921, 0.296665, -0.635400,
		0.540591, 0.344638, 0.767454,
		0.446659, -0.890626, 0.085325,
		28.689625, 37.233753, 58.563950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087551, 37.957962, 58.583427>,  <28.376965, 37.857193, 58.504223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087551, 37.957962, 58.583427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064705, 37.579632, 58.455585>,  <29.050997, 37.352634, 58.378880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064705, 37.579632, 58.455585>,  <29.087551, 37.957962, 58.583427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064705, 37.579632, 58.455585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779784, 0.157646, -0.605875,
		0.623438, -0.283830, 0.728537,
		-0.057115, -0.945827, -0.319609,
		29.047571, 37.295883, 58.359703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709019, 37.789448, 58.504158>,  <29.087551, 37.957962, 58.583427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709019, 37.789448, 58.504158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485243, 37.545769, 58.279335>,  <29.350977, 37.399563, 58.144440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485243, 37.545769, 58.279335>,  <29.709019, 37.789448, 58.504158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485243, 37.545769, 58.279335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621599, 0.140218, -0.770684,
		0.548308, -0.780525, 0.300232,
		-0.559440, -0.609196, -0.562056,
		29.317411, 37.363010, 58.110718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235420, 37.408924, 58.185871>,  <29.709019, 37.789448, 58.504158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235420, 37.408924, 58.185871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899017, 37.398434, 57.969715>,  <29.697176, 37.392139, 57.840023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899017, 37.398434, 57.969715>,  <30.235420, 37.408924, 58.185871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899017, 37.398434, 57.969715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530450, 0.156546, -0.833137,
		0.106444, -0.987323, -0.117746,
		-0.841007, -0.026224, -0.540388,
		29.646715, 37.390568, 57.807598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842596, 37.147228, 58.641666>,  <30.235420, 37.408924, 58.185871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842596, 37.147228, 58.641666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129547, 37.350605, 58.832184>,  <31.301718, 37.472633, 58.946495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129547, 37.350605, 58.832184>,  <30.842596, 37.147228, 58.641666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129547, 37.350605, 58.832184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455038, -0.175728, 0.872961,
		0.527549, -0.842973, 0.105297,
		0.717379, 0.508444, 0.476290,
		31.344761, 37.503139, 58.975071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855145, 36.776543, 59.267914>,  <30.842596, 37.147228, 58.641666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855145, 36.776543, 59.267914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076370, 37.101387, 59.342319>,  <31.209105, 37.296291, 59.386963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076370, 37.101387, 59.342319>,  <30.855145, 36.776543, 59.267914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076370, 37.101387, 59.342319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360347, 0.031870, 0.932274,
		0.751180, -0.582634, 0.310267,
		0.553063, 0.812109, 0.186010,
		31.242289, 37.345020, 59.398121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302320, 36.662853, 59.851639>,  <30.855145, 36.776543, 59.267914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302320, 36.662853, 59.851639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226444, 37.054714, 59.825405>,  <31.180918, 37.289829, 59.809666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226444, 37.054714, 59.825405>,  <31.302320, 36.662853, 59.851639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226444, 37.054714, 59.825405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357934, -0.006796, 0.933722,
		0.914275, 0.200596, 0.351940,
		-0.189693, 0.979651, -0.065587,
		31.169537, 37.348610, 59.805729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331156, 36.878033, 60.537830>,  <31.302320, 36.662853, 59.851639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331156, 36.878033, 60.537830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201164, 37.220451, 60.377045>,  <31.123169, 37.425903, 60.280575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201164, 37.220451, 60.377045>,  <31.331156, 36.878033, 60.537830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201164, 37.220451, 60.377045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436202, 0.241442, 0.866853,
		0.839116, 0.457046, 0.294946,
		-0.324979, 0.856046, -0.401962,
		31.103670, 37.477264, 60.256454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535467, 37.415958, 61.033157>,  <31.331156, 36.878033, 60.537830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535467, 37.415958, 61.033157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225941, 37.540001, 60.812233>,  <31.040226, 37.614426, 60.679680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225941, 37.540001, 60.812233>,  <31.535467, 37.415958, 61.033157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225941, 37.540001, 60.812233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412469, 0.415053, 0.810925,
		0.480709, 0.855317, -0.193266,
		-0.773814, 0.310103, -0.552312,
		30.993797, 37.633030, 60.646538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500828, 37.997120, 61.295147>,  <31.535467, 37.415958, 61.033157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500828, 37.997120, 61.295147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147133, 37.902584, 61.134018>,  <30.934916, 37.845863, 61.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147133, 37.902584, 61.134018>,  <31.500828, 37.997120, 61.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147133, 37.902584, 61.134018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436436, 0.111091, 0.892851,
		-0.166268, 0.965298, -0.201379,
		-0.884239, -0.236341, -0.402820,
		30.881861, 37.831680, 61.013172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130772, 38.409092, 61.656757>,  <31.500828, 37.997120, 61.295147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130772, 38.409092, 61.656757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865549, 38.153835, 61.500233>,  <30.706415, 38.000679, 61.406319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865549, 38.153835, 61.500233>,  <31.130772, 38.409092, 61.656757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865549, 38.153835, 61.500233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599701, 0.139974, 0.787887,
		-0.448011, 0.757086, -0.475506,
		-0.663057, -0.638144, -0.391315,
		30.666632, 37.962391, 61.382839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527493, 38.714664, 61.683022>,  <31.130772, 38.409092, 61.656757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527493, 38.714664, 61.683022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433662, 38.326591, 61.658634>,  <30.377365, 38.093746, 61.644001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433662, 38.326591, 61.658634>,  <30.527493, 38.714664, 61.683022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433662, 38.326591, 61.658634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651698, 0.110416, 0.750399,
		-0.721294, 0.215754, -0.658168,
		-0.234574, -0.970185, -0.060964,
		30.363291, 38.035538, 61.640347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792707, 38.699005, 61.796146>,  <30.527493, 38.714664, 61.683022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792707, 38.699005, 61.796146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914551, 38.327103, 61.878860>,  <29.987658, 38.103962, 61.928490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914551, 38.327103, 61.878860>,  <29.792707, 38.699005, 61.796146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914551, 38.327103, 61.878860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683185, -0.062001, 0.727608,
		-0.663680, -0.362908, -0.654085,
		0.304609, -0.929760, 0.206784,
		30.005934, 38.048176, 61.940895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268799, 38.462212, 62.143658>,  <29.792707, 38.699005, 61.796146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268799, 38.462212, 62.143658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569695, 38.208378, 62.214584>,  <29.750233, 38.056076, 62.257141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569695, 38.208378, 62.214584>,  <29.268799, 38.462212, 62.143658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569695, 38.208378, 62.214584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327099, -0.126060, 0.936544,
		-0.571963, -0.762504, -0.302399,
		0.752239, -0.634584, 0.177312,
		29.795366, 38.018002, 62.267776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092180, 37.914017, 62.521297>,  <29.268799, 38.462212, 62.143658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092180, 37.914017, 62.521297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479141, 37.865875, 62.610424>,  <29.711317, 37.836990, 62.663898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479141, 37.865875, 62.610424>,  <29.092180, 37.914017, 62.521297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479141, 37.865875, 62.610424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245614, -0.231537, 0.941310,
		-0.061698, -0.965353, -0.253549,
		0.967402, -0.120352, 0.222818,
		29.769361, 37.829769, 62.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179844, 37.245369, 62.882580>,  <29.092180, 37.914017, 62.521297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179844, 37.245369, 62.882580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489717, 37.483158, 62.968807>,  <29.675642, 37.625832, 63.020542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489717, 37.483158, 62.968807>,  <29.179844, 37.245369, 62.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489717, 37.483158, 62.968807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051967, -0.279899, 0.958622,
		0.630208, -0.753833, -0.185941,
		0.774685, 0.594468, 0.215569,
		29.722122, 37.661499, 63.033478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584354, 36.860500, 63.192158>,  <29.179844, 37.245369, 62.882580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584354, 36.860500, 63.192158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684620, 37.230675, 63.305813>,  <29.744780, 37.452782, 63.374004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684620, 37.230675, 63.305813>,  <29.584354, 36.860500, 63.192158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684620, 37.230675, 63.305813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130959, -0.258391, 0.957123,
		0.959175, -0.277126, 0.056425,
		0.250664, 0.925438, 0.284135,
		29.759819, 37.508305, 63.391052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111355, 36.756588, 63.802460>,  <29.584354, 36.860500, 63.192158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111355, 36.756588, 63.802460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952536, 37.123703, 63.804012>,  <29.857244, 37.343971, 63.804943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952536, 37.123703, 63.804012>,  <30.111355, 36.756588, 63.802460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952536, 37.123703, 63.804012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184472, -0.083946, 0.979246,
		0.899068, 0.388092, 0.202637,
		-0.397048, 0.917790, 0.003882,
		29.833422, 37.399040, 63.805176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689007, 36.191574, 63.782230>,  <30.111355, 36.756588, 63.802460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689007, 36.191574, 63.782230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733213, 35.794315, 63.797390>,  <29.759737, 35.555958, 63.806484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733213, 35.794315, 63.797390>,  <29.689007, 36.191574, 63.782230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733213, 35.794315, 63.797390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452480, 0.016330, -0.891625,
		0.884900, 0.115686, 0.451186,
		0.110517, -0.993152, 0.037895,
		29.766369, 35.496368, 63.808758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270947, 36.042213, 63.600098>,  <29.689007, 36.191574, 63.782230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270947, 36.042213, 63.600098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104610, 35.685875, 63.526917>,  <30.004808, 35.472073, 63.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104610, 35.685875, 63.526917>,  <30.270947, 36.042213, 63.600098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104610, 35.685875, 63.526917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555506, -0.089530, -0.826679,
		0.720062, -0.445401, 0.532099,
		-0.415842, -0.890844, -0.182955,
		29.979858, 35.418621, 63.472031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791397, 35.810650, 63.249073>,  <30.270947, 36.042213, 63.600098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791397, 35.810650, 63.249073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479525, 35.576756, 63.159466>,  <30.292402, 35.436420, 63.105701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479525, 35.576756, 63.159466>,  <30.791397, 35.810650, 63.249073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479525, 35.576756, 63.159466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446043, -0.267539, -0.854089,
		0.439483, -0.765838, 0.469411,
		-0.779680, -0.584735, -0.224018,
		30.245621, 35.401337, 63.092262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025036, 35.135109, 62.987617>,  <30.791397, 35.810650, 63.249073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025036, 35.135109, 62.987617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656836, 35.100105, 62.835293>,  <30.435915, 35.079102, 62.743896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656836, 35.100105, 62.835293>,  <31.025036, 35.135109, 62.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656836, 35.100105, 62.835293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387804, -0.323793, -0.862998,
		-0.047782, -0.942072, 0.331989,
		-0.920502, -0.087511, -0.380811,
		30.380684, 35.073853, 62.721050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946491, 34.425842, 62.732075>,  <31.025036, 35.135109, 62.987617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946491, 34.425842, 62.732075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663355, 34.613533, 62.520870>,  <30.493473, 34.726147, 62.394150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663355, 34.613533, 62.520870>,  <30.946491, 34.425842, 62.732075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663355, 34.613533, 62.520870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255103, -0.527233, -0.810523,
		-0.658700, -0.708417, 0.253496,
		-0.707840, 0.469224, -0.528008,
		30.451002, 34.754299, 62.362469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516434, 33.935898, 62.356846>,  <30.946491, 34.425842, 62.732075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516434, 33.935898, 62.356846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480000, 34.283073, 62.161549>,  <30.458139, 34.491379, 62.044369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480000, 34.283073, 62.161549>,  <30.516434, 33.935898, 62.356846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480000, 34.283073, 62.161549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287517, -0.446484, -0.847341,
		-0.953435, -0.217558, -0.208880,
		-0.091084, 0.867941, -0.488245,
		30.452675, 34.543457, 62.015076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142683, 33.675323, 61.786598>,  <30.516434, 33.935898, 62.356846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142683, 33.675323, 61.786598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351852, 34.007763, 61.710884>,  <30.477354, 34.207226, 61.665455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351852, 34.007763, 61.710884>,  <30.142683, 33.675323, 61.786598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351852, 34.007763, 61.710884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410838, -0.440324, -0.798328,
		-0.746834, 0.339700, -0.571702,
		0.522926, 0.831095, -0.189288,
		30.508730, 34.257092, 61.654099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599396, 33.239288, 61.459400>,  <30.142683, 33.675323, 61.786598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599396, 33.239288, 61.459400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497147, 32.886623, 61.618053>,  <29.435797, 32.675022, 61.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497147, 32.886623, 61.618053>,  <29.599396, 33.239288, 61.459400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497147, 32.886623, 61.618053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741101, 0.442162, 0.505235,
		-0.620826, -0.164797, -0.766431,
		-0.255625, -0.881666, 0.396637,
		29.420460, 32.622124, 61.737045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901449, 33.263935, 61.488544>,  <29.599396, 33.239288, 61.459400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901449, 33.263935, 61.488544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978573, 32.959862, 61.736717>,  <29.024847, 32.777416, 61.885620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978573, 32.959862, 61.736717>,  <28.901449, 33.263935, 61.488544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978573, 32.959862, 61.736717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822398, 0.219713, 0.524774,
		-0.535244, -0.611426, -0.582814,
		0.192809, -0.760187, 0.620436,
		29.036415, 32.731804, 61.922848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281624, 32.947594, 61.645321>,  <28.901449, 33.263935, 61.488544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281624, 32.947594, 61.645321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505230, 32.848785, 61.961926>,  <28.639393, 32.789501, 62.151886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505230, 32.848785, 61.961926>,  <28.281624, 32.947594, 61.645321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505230, 32.848785, 61.961926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741924, 0.277192, 0.610502,
		-0.370204, -0.928519, -0.028313,
		0.559014, -0.247016, 0.791508,
		28.672934, 32.774681, 62.199379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857054, 32.554665, 61.991470>,  <28.281624, 32.947594, 61.645321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857054, 32.554665, 61.991470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131298, 32.646542, 62.267784>,  <28.295845, 32.701668, 62.433571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131298, 32.646542, 62.267784>,  <27.857054, 32.554665, 61.991470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131298, 32.646542, 62.267784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718546, 0.061355, 0.692768,
		0.116742, -0.971327, 0.207111,
		0.685611, 0.229693, 0.690781,
		28.336981, 32.715446, 62.475018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747995, 32.125866, 62.569706>,  <27.857054, 32.554665, 61.991470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747995, 32.125866, 62.569706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971165, 32.422413, 62.718891>,  <28.105066, 32.600342, 62.808403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971165, 32.422413, 62.718891>,  <27.747995, 32.125866, 62.569706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971165, 32.422413, 62.718891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610654, 0.062410, 0.789435,
		0.561981, -0.668196, 0.487536,
		0.557924, 0.741363, 0.372963,
		28.138542, 32.644821, 62.830780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699738, 32.054077, 63.306194>,  <27.747995, 32.125866, 62.569706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699738, 32.054077, 63.306194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817717, 32.436195, 63.297947>,  <27.888504, 32.665466, 63.292999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817717, 32.436195, 63.297947>,  <27.699738, 32.054077, 63.306194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817717, 32.436195, 63.297947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620882, 0.208012, 0.755801,
		0.726300, -0.210118, 0.654476,
		0.294946, 0.955291, -0.020621,
		27.906200, 32.722782, 63.291759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707182, 32.206631, 64.022270>,  <27.699738, 32.054077, 63.306194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707182, 32.206631, 64.022270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700016, 32.550346, 63.817802>,  <27.695717, 32.756577, 63.695118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700016, 32.550346, 63.817802>,  <27.707182, 32.206631, 64.022270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700016, 32.550346, 63.817802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761915, 0.319325, 0.563486,
		0.647429, 0.399569, 0.648984,
		-0.017915, 0.859288, -0.511178,
		27.694641, 32.808132, 63.664448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709169, 32.749966, 64.539024>,  <27.707182, 32.206631, 64.022270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709169, 32.749966, 64.539024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562365, 32.893517, 64.195747>,  <27.474281, 32.979649, 63.989780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562365, 32.893517, 64.195747>,  <27.709169, 32.749966, 64.539024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562365, 32.893517, 64.195747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791855, 0.363589, 0.490682,
		0.488127, 0.859657, 0.150736,
		-0.367013, 0.358876, -0.858201,
		27.452261, 33.001179, 63.938286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363522, 33.329517, 64.744743>,  <27.709169, 32.749966, 64.539024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363522, 33.329517, 64.744743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187914, 33.288876, 64.387657>,  <27.082548, 33.264492, 64.173409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187914, 33.288876, 64.387657>,  <27.363522, 33.329517, 64.744743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187914, 33.288876, 64.387657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803184, 0.489695, 0.339256,
		0.402688, 0.865953, -0.296594,
		-0.439020, -0.101605, -0.892714,
		27.056208, 33.258392, 64.119843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<35.476643, 34.842499, 45.937542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785381, 34.831184, 46.191612>,  <35.970627, 34.824394, 46.344055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785381, 34.831184, 46.191612>,  <35.476643, 34.842499, 45.937542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785381, 34.831184, 46.191612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624863, -0.218286, 0.749599,
		0.117448, -0.975475, -0.186158,
		0.771850, -0.028284, 0.635175,
		36.016937, 34.822701, 46.382164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436695, 34.254131, 46.377617>,  <35.476643, 34.842499, 45.937542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436695, 34.254131, 46.377617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689686, 34.475906, 46.593979>,  <35.841480, 34.608971, 46.723797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689686, 34.475906, 46.593979>,  <35.436695, 34.254131, 46.377617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689686, 34.475906, 46.593979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550339, -0.169750, 0.817503,
		0.545071, -0.814731, 0.197765,
		0.632475, 0.554435, 0.540904,
		35.879429, 34.642239, 46.756248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517166, 33.923725, 46.979885>,  <35.436695, 34.254131, 46.377617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517166, 33.923725, 46.979885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627640, 34.294636, 47.080982>,  <35.693924, 34.517181, 47.141640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627640, 34.294636, 47.080982>,  <35.517166, 33.923725, 46.979885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627640, 34.294636, 47.080982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482963, -0.093458, 0.870639,
		0.830945, -0.362523, 0.422029,
		0.276185, 0.927277, 0.252744,
		35.710495, 34.572819, 47.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653168, 33.892948, 47.611233>,  <35.517166, 33.923725, 46.979885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653168, 33.892948, 47.611233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623394, 34.291836, 47.612564>,  <35.605530, 34.531170, 47.613365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623394, 34.291836, 47.612564>,  <35.653168, 33.892948, 47.611233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623394, 34.291836, 47.612564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571119, -0.045366, 0.819613,
		0.817486, 0.059104, 0.572908,
		-0.074433, 0.997221, 0.003330,
		35.601063, 34.591003, 47.613564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671551, 34.144371, 48.359196>,  <35.653168, 33.892948, 47.611233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671551, 34.144371, 48.359196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506729, 34.470013, 48.195511>,  <35.407837, 34.665398, 48.097301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506729, 34.470013, 48.195511>,  <35.671551, 34.144371, 48.359196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506729, 34.470013, 48.195511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653521, 0.048888, 0.755328,
		0.634918, 0.578664, 0.511887,
		-0.412056, 0.814100, -0.409209,
		35.383114, 34.714241, 48.072750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546684, 34.479996, 48.925556>,  <35.671551, 34.144371, 48.359196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546684, 34.479996, 48.925556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296696, 34.596992, 48.636044>,  <35.146702, 34.667191, 48.462334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296696, 34.596992, 48.636044>,  <35.546684, 34.479996, 48.925556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296696, 34.596992, 48.636044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740643, 0.070843, 0.668154,
		0.246702, 0.953641, 0.172355,
		-0.624969, 0.292488, -0.723785,
		35.109203, 34.684738, 48.418907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077003, 35.062840, 49.231556>,  <35.546684, 34.479996, 48.925556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077003, 35.062840, 49.231556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893612, 34.908535, 48.911308>,  <34.783577, 34.815952, 48.719162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893612, 34.908535, 48.911308>,  <35.077003, 35.062840, 49.231556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893612, 34.908535, 48.911308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870065, 0.011288, 0.492807,
		-0.181071, 0.922528, -0.340816,
		-0.458475, -0.385765, -0.800616,
		34.756069, 34.792805, 48.671124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483768, 35.564323, 49.021954>,  <35.077003, 35.062840, 49.231556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483768, 35.564323, 49.021954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.394672, 35.210281, 48.858501>,  <34.341213, 34.997856, 48.760429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.394672, 35.210281, 48.858501>,  <34.483768, 35.564323, 49.021954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394672, 35.210281, 48.858501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898135, 0.023299, 0.439101,
		-0.379131, 0.464807, -0.800134,
		-0.222740, -0.885105, -0.408627,
		34.327850, 34.944748, 48.735912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762592, 35.569607, 48.650726>,  <34.483768, 35.564323, 49.021954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762592, 35.569607, 48.650726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847908, 35.188877, 48.738857>,  <33.899097, 34.960442, 48.791737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847908, 35.188877, 48.738857>,  <33.762592, 35.569607, 48.650726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847908, 35.188877, 48.738857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959317, -0.161332, 0.231695,
		-0.184986, -0.260786, -0.947508,
		0.213286, -0.951821, 0.220333,
		33.911892, 34.903332, 48.804958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153175, 35.203815, 48.375076>,  <33.762592, 35.569607, 48.650726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153175, 35.203815, 48.375076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338535, 34.958469, 48.630901>,  <33.449753, 34.811260, 48.784397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.338535, 34.958469, 48.630901>,  <33.153175, 35.203815, 48.375076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338535, 34.958469, 48.630901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837548, -0.067422, 0.542188,
		-0.289440, -0.786914, -0.544968,
		0.463399, -0.613368, 0.639563,
		33.477554, 34.774460, 48.822769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653606, 34.581791, 48.398315>,  <33.153175, 35.203815, 48.375076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653606, 34.581791, 48.398315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.891941, 34.558594, 48.718719>,  <33.034943, 34.544674, 48.910961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.891941, 34.558594, 48.718719>,  <32.653606, 34.581791, 48.398315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891941, 34.558594, 48.718719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765964, -0.340853, 0.545086,
		0.241415, -0.938326, -0.247513,
		0.595834, -0.057994, 0.801011,
		33.070690, 34.541195, 48.959023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608963, 33.874737, 48.681385>,  <32.653606, 34.581791, 48.398315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608963, 33.874737, 48.681385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772583, 34.042831, 49.005379>,  <32.870754, 34.143688, 49.199776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772583, 34.042831, 49.005379>,  <32.608963, 33.874737, 48.681385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772583, 34.042831, 49.005379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700706, -0.423959, 0.573820,
		0.584544, -0.802282, 0.121046,
		0.409046, 0.420241, 0.809987,
		32.895298, 34.168903, 49.248375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481583, 33.351994, 49.236111>,  <32.608963, 33.874737, 48.681385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481583, 33.351994, 49.236111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.550098, 33.699200, 49.422531>,  <32.591206, 33.907524, 49.534386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.550098, 33.699200, 49.422531>,  <32.481583, 33.351994, 49.236111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550098, 33.699200, 49.422531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702598, -0.223995, 0.675412,
		0.690664, -0.443138, 0.571500,
		0.171288, 0.868018, 0.466054,
		32.601486, 33.959606, 49.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511505, 33.210125, 50.000202>,  <32.481583, 33.351994, 49.236111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511505, 33.210125, 50.000202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.426815, 33.592110, 49.917042>,  <32.376003, 33.821301, 49.867146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.426815, 33.592110, 49.917042>,  <32.511505, 33.210125, 50.000202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426815, 33.592110, 49.917042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616389, 0.034605, 0.786681,
		0.758445, 0.294702, 0.581302,
		-0.211721, 0.954962, -0.207897,
		32.363300, 33.878597, 49.854671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499805, 33.642235, 50.629814>,  <32.511505, 33.210125, 50.000202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499805, 33.642235, 50.629814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.268261, 33.806469, 50.348011>,  <32.129333, 33.905010, 50.178928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.268261, 33.806469, 50.348011>,  <32.499805, 33.642235, 50.629814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268261, 33.806469, 50.348011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778581, -0.021537, 0.627174,
		0.242336, 0.911567, 0.332143,
		-0.578865, 0.410587, -0.704510,
		32.094601, 33.929646, 50.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244061, 34.223274, 50.918118>,  <32.499805, 33.642235, 50.629814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244061, 34.223274, 50.918118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974989, 34.132484, 50.636414>,  <31.813547, 34.078011, 50.467392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.974989, 34.132484, 50.636414>,  <32.244061, 34.223274, 50.918118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974989, 34.132484, 50.636414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737316, 0.125564, 0.663777,
		-0.062233, 0.965772, -0.251818,
		-0.672676, -0.226978, -0.704264,
		31.773186, 34.064392, 50.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661306, 34.507378, 51.068527>,  <32.244061, 34.223274, 50.918118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661306, 34.507378, 51.068527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.517458, 34.218891, 50.831707>,  <31.431149, 34.045799, 50.689613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.517458, 34.218891, 50.831707>,  <31.661306, 34.507378, 51.068527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517458, 34.218891, 50.831707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797453, -0.091905, 0.596340,
		-0.484501, 0.686590, -0.542082,
		-0.359621, -0.721213, -0.592052,
		31.409573, 34.002529, 50.654091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954706, 34.630074, 51.128803>,  <31.661306, 34.507378, 51.068527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954706, 34.630074, 51.128803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.968912, 34.267124, 50.961277>,  <30.977436, 34.049355, 50.860760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.968912, 34.267124, 50.961277>,  <30.954706, 34.630074, 51.128803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968912, 34.267124, 50.961277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929132, -0.184314, 0.320533,
		-0.368038, 0.377754, -0.849618,
		0.035514, -0.907375, -0.418818,
		30.979567, 33.994911, 50.835632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380508, 34.528675, 50.615200>,  <30.954706, 34.630074, 51.128803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380508, 34.528675, 50.615200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.481216, 34.163002, 50.742249>,  <30.541641, 33.943600, 50.818478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.481216, 34.163002, 50.742249>,  <30.380508, 34.528675, 50.615200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481216, 34.163002, 50.742249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967289, -0.227186, 0.112861,
		-0.031018, -0.335643, -0.941479,
		0.251772, -0.914183, 0.317617,
		30.556747, 33.888748, 50.837532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931316, 34.030846, 50.255707>,  <30.380508, 34.528675, 50.615200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931316, 34.030846, 50.255707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.052094, 33.823238, 50.575569>,  <30.124559, 33.698673, 50.767487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.052094, 33.823238, 50.575569>,  <29.931316, 34.030846, 50.255707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052094, 33.823238, 50.575569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951427, -0.216985, 0.218414,
		0.060152, -0.826762, -0.559327,
		0.301942, -0.519020, 0.799655,
		30.142675, 33.667534, 50.815464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497330, 33.434628, 50.145504>,  <29.931316, 34.030846, 50.255707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497330, 33.434628, 50.145504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.611933, 33.438381, 50.528717>,  <29.680695, 33.440636, 50.758644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.611933, 33.438381, 50.528717>,  <29.497330, 33.434628, 50.145504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611933, 33.438381, 50.528717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950110, -0.125908, 0.285374,
		0.123305, -0.991997, -0.027149,
		0.286509, 0.009394, 0.958032,
		29.697886, 33.441196, 50.816128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023821, 33.034492, 50.462807>,  <29.497330, 33.434628, 50.145504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023821, 33.034492, 50.462807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.187922, 33.219620, 50.777130>,  <29.286383, 33.330696, 50.965725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.187922, 33.219620, 50.777130>,  <29.023821, 33.034492, 50.462807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187922, 33.219620, 50.777130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905207, 0.101897, 0.412573,
		0.110880, -0.880572, 0.460759,
		0.410251, 0.462829, 0.785801,
		29.310997, 33.358463, 51.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746080, 32.725513, 51.055950>,  <29.023821, 33.034492, 50.462807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746080, 32.725513, 51.055950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.845697, 33.094391, 51.174297>,  <28.905468, 33.315716, 51.245308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.845697, 33.094391, 51.174297>,  <28.746080, 32.725513, 51.055950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845697, 33.094391, 51.174297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903327, 0.111015, 0.414338,
		0.349252, -0.370458, 0.860688,
		0.249044, 0.922191, 0.295872,
		28.920410, 33.371048, 51.263058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521498, 32.858402, 51.865284>,  <28.746080, 32.725513, 51.055950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521498, 32.858402, 51.865284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.541134, 33.220001, 51.695400>,  <28.552916, 33.436962, 51.593472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.541134, 33.220001, 51.695400>,  <28.521498, 32.858402, 51.865284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541134, 33.220001, 51.695400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898091, 0.226022, 0.377287,
		0.437060, 0.362905, 0.822969,
		0.049090, 0.903999, -0.424707,
		28.555861, 33.491199, 51.567989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272886, 33.368168, 52.310112>,  <28.521498, 32.858402, 51.865284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272886, 33.368168, 52.310112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.231279, 33.579929, 51.973324>,  <28.206316, 33.706985, 51.771252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.231279, 33.579929, 51.973324>,  <28.272886, 33.368168, 52.310112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231279, 33.579929, 51.973324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902592, 0.305325, 0.303485,
		0.417741, 0.791523, 0.446077,
		-0.104017, 0.529404, -0.841969,
		28.200075, 33.738750, 51.720734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158089, 34.104271, 52.471210>,  <28.272886, 33.368168, 52.310112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158089, 34.104271, 52.471210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.027781, 34.056999, 52.095997>,  <27.949594, 34.028637, 51.870869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.027781, 34.056999, 52.095997>,  <28.158089, 34.104271, 52.471210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027781, 34.056999, 52.095997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893398, 0.363137, 0.264521,
		0.309373, 0.924211, -0.223882,
		-0.325772, -0.118180, -0.938033,
		27.930048, 34.021545, 51.814587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750475, 34.745728, 52.330601>,  <28.158089, 34.104271, 52.471210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750475, 34.745728, 52.330601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.668816, 34.469902, 52.052658>,  <27.619820, 34.304405, 51.885891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.668816, 34.469902, 52.052658>,  <27.750475, 34.745728, 52.330601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668816, 34.469902, 52.052658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961076, 0.276158, 0.008312,
		0.186159, 0.669508, -0.719100,
		-0.204151, -0.689562, -0.694857,
		27.607571, 34.263035, 51.844200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300117, 35.100269, 51.772102>,  <27.750475, 34.745728, 52.330601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300117, 35.100269, 51.772102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.239784, 34.705368, 51.751751>,  <27.203585, 34.468430, 51.739540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.239784, 34.705368, 51.751751>,  <27.300117, 35.100269, 51.772102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239784, 34.705368, 51.751751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966170, 0.158115, -0.203755,
		0.209201, 0.018423, -0.977699,
		-0.150835, -0.987249, -0.050878,
		27.194534, 34.409195, 51.736488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952173, 34.940662, 51.084343>,  <27.300117, 35.100269, 51.772102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952173, 34.940662, 51.084343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.873472, 34.671257, 51.369347>,  <26.826252, 34.509613, 51.540348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.873472, 34.671257, 51.369347>,  <26.952173, 34.940662, 51.084343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873472, 34.671257, 51.369347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978481, 0.088819, -0.186243,
		0.062152, -0.733822, -0.676492,
		-0.196754, -0.673510, 0.712511,
		26.814445, 34.469204, 51.583099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294065, 34.765671, 50.859951>,  <26.952173, 34.940662, 51.084343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294065, 34.765671, 50.859951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.339262, 34.589550, 51.216236>,  <26.366381, 34.483879, 51.430008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.339262, 34.589550, 51.216236>,  <26.294065, 34.765671, 50.859951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339262, 34.589550, 51.216236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989493, -0.131248, 0.060644,
		0.090202, -0.888205, -0.450505,
		0.112992, -0.440302, 0.890712,
		26.373159, 34.457458, 51.483448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725641, 34.272766, 50.903324>,  <26.294065, 34.765671, 50.859951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725641, 34.272766, 50.903324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.836700, 34.287205, 51.287327>,  <25.903336, 34.295868, 51.517727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.836700, 34.287205, 51.287327>,  <25.725641, 34.272766, 50.903324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836700, 34.287205, 51.287327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956334, -0.084596, 0.279765,
		0.091311, -0.995761, 0.011033,
		0.277646, 0.036097, 0.960005,
		25.919994, 34.298035, 51.575329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212234, 33.887043, 51.162819>,  <25.725641, 34.272766, 50.903324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212234, 33.887043, 51.162819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.373268, 34.114223, 51.449974>,  <25.469889, 34.250530, 51.622265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.373268, 34.114223, 51.449974>,  <25.212234, 33.887043, 51.162819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373268, 34.114223, 51.449974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891744, 0.066253, 0.447664,
		0.206689, -0.820392, 0.533139,
		0.402582, 0.567951, 0.717886,
		25.494043, 34.284607, 51.665340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064381, 33.479633, 51.718761>,  <25.212234, 33.887043, 51.162819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064381, 33.479633, 51.718761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.126539, 33.865795, 51.802517>,  <25.163836, 34.097492, 51.852772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.126539, 33.865795, 51.802517>,  <25.064381, 33.479633, 51.718761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126539, 33.865795, 51.802517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889632, 0.044624, 0.454492,
		0.429425, -0.256910, 0.865790,
		0.155399, 0.965405, 0.209392,
		25.173159, 34.155418, 51.865334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110586, 33.456211, 52.422127>,  <25.064381, 33.479633, 51.718761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110586, 33.456211, 52.422127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.998159, 33.825119, 52.315975>,  <24.930702, 34.046463, 52.252285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.998159, 33.825119, 52.315975>,  <25.110586, 33.456211, 52.422127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998159, 33.825119, 52.315975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887654, -0.144725, 0.437178,
		0.364789, 0.358439, 0.859331,
		-0.281069, 0.922267, -0.265376,
		24.913839, 34.101799, 52.236362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713039, 33.831284, 52.950172>,  <25.110586, 33.456211, 52.422127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713039, 33.831284, 52.950172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.620651, 33.984100, 52.592247>,  <24.565218, 34.075790, 52.377491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.620651, 33.984100, 52.592247>,  <24.713039, 33.831284, 52.950172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620651, 33.984100, 52.592247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946976, 0.122857, 0.296888,
		0.223358, 0.915942, 0.333410,
		-0.230971, 0.382044, -0.894816,
		24.551359, 34.098713, 52.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<33.704021, 31.759853, 49.588089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308666, 31.812586, 49.557884>,  <33.071453, 31.844225, 49.539761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308666, 31.812586, 49.557884>,  <33.704021, 31.759853, 49.588089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308666, 31.812586, 49.557884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077146, -0.007335, 0.996993,
		0.130882, 0.991245, 0.017420,
		-0.988392, 0.131833, -0.075511,
		33.012150, 31.852135, 49.535233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425781, 32.443081, 49.944294>,  <33.704021, 31.759853, 49.588089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425781, 32.443081, 49.944294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141300, 32.161934, 49.949482>,  <32.970612, 31.993246, 49.952595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141300, 32.161934, 49.949482>,  <33.425781, 32.443081, 49.944294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141300, 32.161934, 49.949482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104642, 0.124088, 0.986738,
		-0.695152, 0.700417, -0.161801,
		-0.711205, -0.702865, 0.012967,
		32.927940, 31.951075, 49.953373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933388, 32.679176, 50.476048>,  <33.425781, 32.443081, 49.944294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933388, 32.679176, 50.476048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875172, 32.286411, 50.427605>,  <32.840240, 32.050751, 50.398537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875172, 32.286411, 50.427605>,  <32.933388, 32.679176, 50.476048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875172, 32.286411, 50.427605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041012, -0.116320, 0.992365,
		-0.988502, 0.149396, -0.023341,
		-0.145540, -0.981912, -0.121109,
		32.831509, 31.991838, 50.391273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422054, 32.603149, 50.946152>,  <32.933388, 32.679176, 50.476048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422054, 32.603149, 50.946152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527222, 32.223427, 50.877224>,  <32.590321, 31.995594, 50.835869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527222, 32.223427, 50.877224>,  <32.422054, 32.603149, 50.946152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527222, 32.223427, 50.877224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125548, -0.143420, 0.981666,
		-0.956616, -0.279729, 0.081476,
		0.262915, -0.949306, -0.172317,
		32.606094, 31.938635, 50.825527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980492, 32.131950, 51.386677>,  <32.422054, 32.603149, 50.946152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980492, 32.131950, 51.386677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307144, 31.926434, 51.281509>,  <32.503136, 31.803122, 51.218407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307144, 31.926434, 51.281509>,  <31.980492, 32.131950, 51.386677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307144, 31.926434, 51.281509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135267, -0.272476, 0.952607,
		-0.561086, -0.813492, -0.153013,
		0.816631, -0.513796, -0.262921,
		32.552132, 31.772295, 51.202633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930584, 31.585476, 51.808834>,  <31.980492, 32.131950, 51.386677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930584, 31.585476, 51.808834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317070, 31.576330, 51.706146>,  <32.548962, 31.570843, 51.644535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317070, 31.576330, 51.706146>,  <31.930584, 31.585476, 51.808834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317070, 31.576330, 51.706146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239293, -0.290432, 0.926493,
		-0.095744, -0.956622, -0.275148,
		0.966216, -0.022865, -0.256720,
		32.606934, 31.569469, 51.629131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175087, 31.010939, 52.117496>,  <31.930584, 31.585476, 51.808834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175087, 31.010939, 52.117496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493931, 31.244471, 52.055836>,  <32.685238, 31.384590, 52.018837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493931, 31.244471, 52.055836>,  <32.175087, 31.010939, 52.117496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493931, 31.244471, 52.055836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391831, -0.305857, 0.867710,
		0.459447, -0.752058, -0.472564,
		0.797105, 0.583832, -0.154155,
		32.733063, 31.419621, 52.009590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830143, 30.620945, 52.084343>,  <32.175087, 31.010939, 52.117496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830143, 30.620945, 52.084343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910927, 30.990404, 52.214630>,  <32.959396, 31.212080, 52.292801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910927, 30.990404, 52.214630>,  <32.830143, 30.620945, 52.084343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910927, 30.990404, 52.214630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371848, -0.379979, 0.846963,
		0.906059, -0.049934, -0.420195,
		0.201958, 0.923647, 0.325715,
		32.971516, 31.267498, 52.312344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565739, 30.640182, 52.420425>,  <32.830143, 30.620945, 52.084343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565739, 30.640182, 52.420425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388260, 30.970299, 52.560154>,  <33.281773, 31.168369, 52.643990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388260, 30.970299, 52.560154>,  <33.565739, 30.640182, 52.420425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388260, 30.970299, 52.560154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460924, -0.124127, 0.878716,
		0.768558, 0.550894, -0.325322,
		-0.443698, 0.825293, 0.349318,
		33.255150, 31.217886, 52.664951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033295, 30.824852, 52.952255>,  <33.565739, 30.640182, 52.420425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033295, 30.824852, 52.952255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714157, 31.048519, 53.042389>,  <33.522675, 31.182720, 53.096470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714157, 31.048519, 53.042389>,  <34.033295, 30.824852, 52.952255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714157, 31.048519, 53.042389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307472, 0.055912, 0.949913,
		0.518563, 0.827166, -0.216538,
		-0.797843, 0.559169, 0.225337,
		33.474804, 31.216270, 53.109989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343807, 31.114996, 53.609585>,  <34.033295, 30.824852, 52.952255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343807, 31.114996, 53.609585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955097, 31.209198, 53.604164>,  <33.721870, 31.265718, 53.600910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955097, 31.209198, 53.604164>,  <34.343807, 31.114996, 53.609585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955097, 31.209198, 53.604164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003633, 0.072401, 0.997369,
		0.235866, 0.969173, -0.071213,
		-0.971779, 0.235504, -0.013556,
		33.663563, 31.279850, 53.600098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180820, 31.780960, 53.967033>,  <34.343807, 31.114996, 53.609585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180820, 31.780960, 53.967033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841640, 31.569258, 53.978832>,  <33.638134, 31.442236, 53.985912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841640, 31.569258, 53.978832>,  <34.180820, 31.780960, 53.967033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841640, 31.569258, 53.978832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139785, 0.276941, 0.950665,
		-0.511313, 0.801993, -0.308814,
		-0.847950, -0.529255, 0.029497,
		33.587254, 31.410480, 53.987682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255459, 32.419025, 53.669704>,  <34.180820, 31.780960, 53.967033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255459, 32.419025, 53.669704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509758, 32.643723, 53.881470>,  <34.662338, 32.778542, 54.008530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509758, 32.643723, 53.881470>,  <34.255459, 32.419025, 53.669704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509758, 32.643723, 53.881470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422610, 0.320632, -0.847700,
		-0.645933, 0.762656, -0.033557,
		0.635745, 0.561739, 0.529413,
		34.700481, 32.812244, 54.040295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148521, 33.122128, 53.430584>,  <34.255459, 32.419025, 53.669704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148521, 33.122128, 53.430584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509022, 33.074974, 53.597366>,  <34.725323, 33.046680, 53.697433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509022, 33.074974, 53.597366>,  <34.148521, 33.122128, 53.430584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509022, 33.074974, 53.597366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429267, 0.373857, -0.822169,
		-0.058961, 0.919964, 0.387542,
		0.901251, -0.117883, 0.416953,
		34.779396, 33.039608, 53.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536926, 33.814953, 53.374729>,  <34.148521, 33.122128, 53.430584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536926, 33.814953, 53.374729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821991, 33.541233, 53.436508>,  <34.993031, 33.377003, 53.473576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821991, 33.541233, 53.436508>,  <34.536926, 33.814953, 53.374729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821991, 33.541233, 53.436508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523519, 0.372238, -0.766399,
		0.466954, 0.627036, 0.623521,
		0.712658, -0.684298, 0.154447,
		35.035789, 33.335945, 53.482841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131134, 34.165684, 53.370789>,  <34.536926, 33.814953, 53.374729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131134, 34.165684, 53.370789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252079, 33.791595, 53.297100>,  <35.324646, 33.567142, 53.252888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252079, 33.791595, 53.297100>,  <35.131134, 34.165684, 53.370789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252079, 33.791595, 53.297100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544917, 0.328168, -0.771603,
		0.782076, 0.132918, 0.608844,
		0.302363, -0.935221, -0.184223,
		35.342789, 33.511028, 53.241833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696587, 34.222317, 53.084446>,  <35.131134, 34.165684, 53.370789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696587, 34.222317, 53.084446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645264, 33.839649, 52.979897>,  <35.614471, 33.610046, 52.917168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645264, 33.839649, 52.979897>,  <35.696587, 34.222317, 53.084446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645264, 33.839649, 52.979897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640134, 0.121404, -0.758610,
		0.757473, -0.264646, 0.596822,
		-0.128307, -0.956673, -0.261369,
		35.606773, 33.552647, 52.901485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377640, 33.923866, 52.998066>,  <35.696587, 34.222317, 53.084446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377640, 33.923866, 52.998066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115387, 33.714947, 52.779945>,  <35.958035, 33.589596, 52.649071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115387, 33.714947, 52.779945>,  <36.377640, 33.923866, 52.998066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115387, 33.714947, 52.779945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597633, 0.082453, -0.797519,
		0.461505, -0.848768, 0.258084,
		-0.655628, -0.522298, -0.545304,
		35.918697, 33.558258, 52.616356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749382, 33.481480, 52.680473>,  <36.377640, 33.923866, 52.998066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749382, 33.481480, 52.680473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414150, 33.465603, 52.462830>,  <36.213013, 33.456078, 52.332245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414150, 33.465603, 52.462830>,  <36.749382, 33.481480, 52.680473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414150, 33.465603, 52.462830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540652, 0.072964, -0.838076,
		0.072964, -0.996545, -0.039691,
		0.838076, 0.039691, 0.544108,
		36.162727, 33.453697, 52.299599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859245, 32.960552, 52.183559>,  <36.749382, 33.481480, 52.680473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859245, 32.960552, 52.183559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555973, 33.172703, 52.031845>,  <36.374008, 33.299992, 51.940815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555973, 33.172703, 52.031845>,  <36.859245, 32.960552, 52.183559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555973, 33.172703, 52.031845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482401, 0.064903, -0.873543,
		-0.438691, -0.845273, -0.305063,
		-0.758182, 0.530378, -0.379289,
		36.328518, 33.331818, 51.918060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587395, 32.603512, 51.525356>,  <36.859245, 32.960552, 52.183559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587395, 32.603512, 51.525356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506462, 32.994438, 51.500343>,  <36.457901, 33.228996, 51.485336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506462, 32.994438, 51.500343>,  <36.587395, 32.603512, 51.525356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506462, 32.994438, 51.500343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507652, 0.050065, -0.860106,
		-0.837467, -0.205774, -0.506268,
		-0.202334, 0.977318, -0.062533,
		36.445763, 33.287632, 51.481583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278271, 32.674873, 50.869583>,  <36.587395, 32.603512, 51.525356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278271, 32.674873, 50.869583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418903, 33.036274, 50.967625>,  <36.503281, 33.253113, 51.026451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418903, 33.036274, 50.967625>,  <36.278271, 32.674873, 50.869583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418903, 33.036274, 50.967625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426707, 0.078376, -0.900988,
		-0.833254, 0.421356, -0.357975,
		0.351580, 0.903502, 0.245102,
		36.524376, 33.307323, 51.041157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144512, 33.058376, 50.316578>,  <36.278271, 32.674873, 50.869583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144512, 33.058376, 50.316578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442192, 33.240929, 50.511669>,  <36.620800, 33.350460, 50.628723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442192, 33.240929, 50.511669>,  <36.144512, 33.058376, 50.316578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442192, 33.240929, 50.511669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481748, 0.139066, -0.865205,
		-0.462688, 0.878851, -0.116367,
		0.744203, 0.456380, 0.487728,
		36.665455, 33.377842, 50.657990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200039, 33.740589, 49.993324>,  <36.144512, 33.058376, 50.316578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200039, 33.740589, 49.993324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555622, 33.697830, 50.171463>,  <36.768970, 33.672176, 50.278347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555622, 33.697830, 50.171463>,  <36.200039, 33.740589, 49.993324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555622, 33.697830, 50.171463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457038, 0.269882, -0.847514,
		-0.029596, 0.956942, 0.288768,
		0.888955, -0.106895, 0.445346,
		36.822308, 33.665760, 50.305065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537601, 34.341194, 49.782875>,  <36.200039, 33.740589, 49.993324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537601, 34.341194, 49.782875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816219, 34.079746, 49.901268>,  <36.983391, 33.922878, 49.972301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816219, 34.079746, 49.901268>,  <36.537601, 34.341194, 49.782875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816219, 34.079746, 49.901268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490966, 0.133368, -0.860909,
		0.523232, 0.744981, 0.413802,
		0.696549, -0.653618, 0.295978,
		37.025185, 33.883659, 49.990063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768726, 35.063374, 49.705540>,  <36.537601, 34.341194, 49.782875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768726, 35.063374, 49.705540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947952, 35.403034, 49.593700>,  <37.055489, 35.606831, 49.526596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947952, 35.403034, 49.593700>,  <36.768726, 35.063374, 49.705540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947952, 35.403034, 49.593700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446636, 0.483541, 0.752798,
		0.774437, -0.212427, 0.595922,
		0.448067, 0.849154, -0.279595,
		37.082371, 35.657780, 49.509823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260601, 35.435223, 50.255692>,  <36.768726, 35.063374, 49.705540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260601, 35.435223, 50.255692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151447, 35.720268, 49.997166>,  <37.085957, 35.891296, 49.842052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151447, 35.720268, 49.997166>,  <37.260601, 35.435223, 50.255692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151447, 35.720268, 49.997166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229698, 0.604117, 0.763074,
		0.934224, 0.356686, -0.001168,
		-0.272883, 0.712613, -0.646311,
		37.069584, 35.934052, 49.803272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499653, 35.917053, 50.647533>,  <37.260601, 35.435223, 50.255692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499653, 35.917053, 50.647533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189507, 36.009846, 50.412590>,  <37.003418, 36.065521, 50.271622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189507, 36.009846, 50.412590>,  <37.499653, 35.917053, 50.647533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189507, 36.009846, 50.412590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397396, 0.543610, 0.739300,
		0.490802, 0.806642, -0.329305,
		-0.775364, 0.231985, -0.587361,
		36.956898, 36.079441, 50.236382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292137, 36.566143, 50.650425>,  <37.499653, 35.917053, 50.647533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292137, 36.566143, 50.650425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943745, 36.404953, 50.538002>,  <36.734707, 36.308239, 50.470547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943745, 36.404953, 50.538002>,  <37.292137, 36.566143, 50.650425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943745, 36.404953, 50.538002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454030, 0.441604, 0.773849,
		-0.187729, 0.801619, -0.567595,
		-0.870985, -0.402980, -0.281057,
		36.682449, 36.284058, 50.453686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861366, 37.017918, 50.791927>,  <37.292137, 36.566143, 50.650425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861366, 37.017918, 50.791927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599522, 36.719025, 50.746094>,  <36.442413, 36.539688, 50.718594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599522, 36.719025, 50.746094>,  <36.861366, 37.017918, 50.791927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599522, 36.719025, 50.746094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547426, 0.364023, 0.753533,
		-0.521351, 0.555999, -0.647347,
		-0.654613, -0.747230, -0.114584,
		36.403137, 36.494854, 50.711720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218784, 37.287731, 50.827808>,  <36.861366, 37.017918, 50.791927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218784, 37.287731, 50.827808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165012, 36.896030, 50.888458>,  <36.132751, 36.661011, 50.924847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165012, 36.896030, 50.888458>,  <36.218784, 37.287731, 50.827808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165012, 36.896030, 50.888458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663607, 0.202595, 0.720126,
		-0.735904, -0.003813, -0.677075,
		-0.134426, -0.979255, 0.151621,
		36.124683, 36.602253, 50.933945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533897, 37.197739, 50.870087>,  <36.218784, 37.287731, 50.827808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533897, 37.197739, 50.870087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689190, 36.877117, 51.051983>,  <35.782368, 36.684746, 51.161121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689190, 36.877117, 51.051983>,  <35.533897, 37.197739, 50.870087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689190, 36.877117, 51.051983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576791, 0.173500, 0.798254,
		-0.718738, -0.572202, -0.394968,
		0.388236, -0.801550, 0.454742,
		35.805660, 36.636654, 51.188404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960716, 36.807209, 51.117287>,  <35.533897, 37.197739, 50.870087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960716, 36.807209, 51.117287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267380, 36.685333, 51.343349>,  <35.451378, 36.612209, 51.478989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267380, 36.685333, 51.343349>,  <34.960716, 36.807209, 51.117287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267380, 36.685333, 51.343349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542982, 0.162087, 0.823953,
		-0.342653, -0.938559, -0.041175,
		0.766655, -0.304688, 0.565160,
		35.497375, 36.593925, 51.512897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646236, 36.421078, 51.630741>,  <34.960716, 36.807209, 51.117287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646236, 36.421078, 51.630741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991982, 36.562317, 51.773960>,  <35.199429, 36.647060, 51.859890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991982, 36.562317, 51.773960>,  <34.646236, 36.421078, 51.630741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991982, 36.562317, 51.773960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438117, 0.179274, 0.880860,
		0.246841, -0.918250, 0.309656,
		0.864363, 0.353098, 0.358048,
		35.251289, 36.668247, 51.881374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793400, 35.977497, 52.205315>,  <34.646236, 36.421078, 51.630741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793400, 35.977497, 52.205315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991051, 36.324562, 52.227245>,  <35.109642, 36.532799, 52.240406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991051, 36.324562, 52.227245>,  <34.793400, 35.977497, 52.205315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991051, 36.324562, 52.227245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315659, 0.120287, 0.941218,
		0.810062, -0.482386, 0.333321,
		0.494124, 0.867661, 0.054830,
		35.139290, 36.584862, 52.243694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195904, 35.963852, 52.825916>,  <34.793400, 35.977497, 52.205315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195904, 35.963852, 52.825916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180840, 36.357620, 52.757225>,  <35.171803, 36.593884, 52.716011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180840, 36.357620, 52.757225>,  <35.195904, 35.963852, 52.825916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180840, 36.357620, 52.757225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335633, 0.149405, 0.930069,
		0.941240, 0.092660, 0.324780,
		-0.037656, 0.984425, -0.171725,
		35.169544, 36.652946, 52.705708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286243, 36.234699, 53.469273>,  <35.195904, 35.963852, 52.825916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286243, 36.234699, 53.469273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162182, 36.545765, 53.250534>,  <35.087746, 36.732407, 53.119293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162182, 36.545765, 53.250534>,  <35.286243, 36.234699, 53.469273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162182, 36.545765, 53.250534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548119, 0.323704, 0.771221,
		0.776768, 0.538935, 0.325854,
		-0.310158, 0.777666, -0.546843,
		35.069134, 36.779064, 53.086479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493065, 36.887680, 53.736919>,  <35.286243, 36.234699, 53.469273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493065, 36.887680, 53.736919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180027, 36.990334, 53.510052>,  <34.992203, 37.051926, 53.373932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180027, 36.990334, 53.510052>,  <35.493065, 36.887680, 53.736919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180027, 36.990334, 53.510052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543760, 0.161774, 0.823501,
		0.303091, 0.952874, 0.012943,
		-0.782599, 0.256634, -0.567167,
		34.945248, 37.067322, 53.339901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263527, 37.431717, 54.030090>,  <35.493065, 36.887680, 53.736919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263527, 37.431717, 54.030090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947456, 37.317581, 53.813129>,  <34.757812, 37.249100, 53.682953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.947456, 37.317581, 53.813129>,  <35.263527, 37.431717, 54.030090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947456, 37.317581, 53.813129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597214, 0.159673, 0.786028,
		-0.137679, 0.945032, -0.296580,
		-0.790177, -0.285341, -0.542402,
		34.710403, 37.231979, 53.650410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840923, 37.884964, 54.189224>,  <35.263527, 37.431717, 54.030090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840923, 37.884964, 54.189224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590851, 37.613262, 54.035465>,  <34.440807, 37.450241, 53.943211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590851, 37.613262, 54.035465>,  <34.840923, 37.884964, 54.189224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590851, 37.613262, 54.035465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658810, 0.195198, 0.726544,
		-0.418477, 0.707465, -0.569535,
		-0.625177, -0.679258, -0.384400,
		34.403297, 37.409485, 53.920147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175713, 38.255508, 54.122635>,  <34.840923, 37.884964, 54.189224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175713, 38.255508, 54.122635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067223, 37.871532, 54.094479>,  <34.002129, 37.641148, 54.077583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067223, 37.871532, 54.094479>,  <34.175713, 38.255508, 54.122635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067223, 37.871532, 54.094479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750386, 0.165081, 0.640054,
		-0.602792, 0.226421, -0.765099,
		-0.271224, -0.959938, -0.070394,
		33.985855, 37.583549, 54.073360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506008, 38.236610, 54.054443>,  <34.175713, 38.255508, 54.122635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506008, 38.236610, 54.054443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596951, 37.881775, 54.215137>,  <33.651516, 37.668873, 54.311554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596951, 37.881775, 54.215137>,  <33.506008, 38.236610, 54.054443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596951, 37.881775, 54.215137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704615, 0.134902, 0.696649,
		-0.672181, -0.441454, -0.594383,
		0.227355, -0.887085, 0.401734,
		33.665157, 37.615650, 54.335659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832096, 37.850914, 54.159657>,  <33.506008, 38.236610, 54.054443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832096, 37.850914, 54.159657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105370, 37.706219, 54.413399>,  <33.269333, 37.619400, 54.565643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105370, 37.706219, 54.413399>,  <32.832096, 37.850914, 54.159657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105370, 37.706219, 54.413399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639700, 0.122517, 0.758797,
		-0.352208, -0.924193, -0.147704,
		0.683179, -0.361741, 0.634358,
		33.310322, 37.597698, 54.603706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443684, 37.435272, 54.548233>,  <32.832096, 37.850914, 54.159657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443684, 37.435272, 54.548233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.780758, 37.481461, 54.758587>,  <32.983002, 37.509174, 54.884800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.780758, 37.481461, 54.758587>,  <32.443684, 37.435272, 54.548233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780758, 37.481461, 54.758587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517461, -0.096120, 0.850291,
		0.148729, -0.988650, -0.021249,
		0.842682, 0.115467, 0.525884,
		33.033562, 37.516102, 54.916351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229885, 37.116798, 55.095245>,  <32.443684, 37.435272, 54.548233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229885, 37.116798, 55.095245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575050, 37.279228, 55.215572>,  <32.782150, 37.376686, 55.287769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575050, 37.279228, 55.215572>,  <32.229885, 37.116798, 55.095245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575050, 37.279228, 55.215572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305481, -0.055053, 0.950605,
		0.402575, -0.912181, 0.076542,
		0.862911, 0.406072, 0.300817,
		32.833923, 37.401051, 55.305817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374798, 36.791294, 55.648270>,  <32.229885, 37.116798, 55.095245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374798, 36.791294, 55.648270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620541, 37.098969, 55.718613>,  <32.767986, 37.283573, 55.760818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620541, 37.098969, 55.718613>,  <32.374798, 36.791294, 55.648270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620541, 37.098969, 55.718613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293032, 0.015484, 0.955977,
		0.732598, -0.638842, 0.234908,
		0.614356, 0.769182, 0.175857,
		32.804848, 37.329723, 55.771370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752151, 36.660473, 56.239563>,  <32.374798, 36.791294, 55.648270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752151, 36.660473, 56.239563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754456, 37.058704, 56.202045>,  <32.755840, 37.297642, 56.179535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754456, 37.058704, 56.202045>,  <32.752151, 36.660473, 56.239563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754456, 37.058704, 56.202045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211891, 0.092884, 0.972869,
		0.977276, 0.014267, 0.211489,
		0.005764, 0.995575, -0.093796,
		32.756184, 37.357376, 56.173908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167522, 36.923355, 56.866447>,  <32.752151, 36.660473, 56.239563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167522, 36.923355, 56.866447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951149, 37.226265, 56.720066>,  <32.821323, 37.408012, 56.632236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951149, 37.226265, 56.720066>,  <33.167522, 36.923355, 56.866447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951149, 37.226265, 56.720066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231607, 0.284171, 0.930379,
		0.808547, 0.588033, 0.021672,
		-0.540935, 0.757274, -0.365958,
		32.788868, 37.453445, 56.610279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338058, 37.366287, 57.362335>,  <33.167522, 36.923355, 56.866447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338058, 37.366287, 57.362335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008701, 37.493324, 57.174225>,  <32.811089, 37.569546, 57.061359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.008701, 37.493324, 57.174225>,  <33.338058, 37.366287, 57.362335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008701, 37.493324, 57.174225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384756, 0.296713, 0.874027,
		0.417120, 0.900610, -0.122117,
		-0.823392, 0.317589, -0.470280,
		32.761684, 37.588600, 57.033142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199444, 38.053905, 57.548988>,  <33.338058, 37.366287, 57.362335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199444, 38.053905, 57.548988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847000, 37.925880, 57.409725>,  <32.635536, 37.849068, 57.326168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847000, 37.925880, 57.409725>,  <33.199444, 38.053905, 57.548988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847000, 37.925880, 57.409725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450467, 0.343849, 0.823922,
		-0.143988, 0.882797, -0.447143,
		-0.881105, -0.320058, -0.348161,
		32.582668, 37.829865, 57.305275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696167, 38.537647, 57.791359>,  <33.199444, 38.053905, 57.548988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696167, 38.537647, 57.791359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512173, 38.193584, 57.703228>,  <32.401775, 37.987148, 57.650349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512173, 38.193584, 57.703228>,  <32.696167, 38.537647, 57.791359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512173, 38.193584, 57.703228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424661, -0.004801, 0.905339,
		-0.779792, 0.510006, -0.363067,
		-0.459986, -0.860157, -0.220323,
		32.374176, 37.935535, 57.637131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952501, 38.700871, 57.928596>,  <32.696167, 38.537647, 57.791359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952501, 38.700871, 57.928596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964521, 38.301071, 57.932781>,  <31.971733, 38.061192, 57.935291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964521, 38.301071, 57.932781>,  <31.952501, 38.700871, 57.928596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964521, 38.301071, 57.932781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407881, -0.002703, 0.913032,
		-0.912541, -0.031704, -0.407756,
		0.030049, -0.999494, 0.010465,
		31.973536, 38.001225, 57.935921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287149, 38.498631, 58.148258>,  <31.952501, 38.700871, 57.928596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287149, 38.498631, 58.148258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517920, 38.179844, 58.219814>,  <31.656382, 37.988571, 58.262749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517920, 38.179844, 58.219814>,  <31.287149, 38.498631, 58.148258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517920, 38.179844, 58.219814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521990, -0.191291, 0.831225,
		-0.628237, -0.572935, -0.526369,
		0.576927, -0.796965, 0.178890,
		31.690998, 37.940754, 58.273479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864876, 37.862862, 58.294090>,  <31.287149, 38.498631, 58.148258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864876, 37.862862, 58.294090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209637, 37.762558, 58.470383>,  <31.416492, 37.702374, 58.576157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209637, 37.762558, 58.470383>,  <30.864876, 37.862862, 58.294090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209637, 37.762558, 58.470383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486231, -0.162087, 0.858666,
		-0.143867, -0.954388, -0.261623,
		0.861906, -0.250743, 0.440734,
		31.468208, 37.687328, 58.602600>
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
