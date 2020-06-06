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
	<24.214853, 35.577202, 34.938477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211763, 35.177319, 34.947628>,  <24.209909, 34.937389, 34.953117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211763, 35.177319, 34.947628>,  <24.214853, 35.577202, 34.938477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211763, 35.177319, 34.947628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784515, 0.020243, 0.619779,
		-0.620062, -0.013159, -0.784443,
		-0.007724, -0.999709, 0.022875,
		24.209446, 34.877407, 34.954491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619720, 35.124382, 34.620533>,  <24.214853, 35.577202, 34.938477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619720, 35.124382, 34.620533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007929, 35.139576, 34.525333>,  <25.240854, 35.148693, 34.468212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007929, 35.139576, 34.525333>,  <24.619720, 35.124382, 34.620533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007929, 35.139576, 34.525333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138277, -0.721044, -0.678951,
		-0.197402, 0.691847, -0.694536,
		0.970522, 0.037988, -0.238002,
		25.299086, 35.150970, 34.453934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765419, 35.194889, 33.887260>,  <24.619720, 35.124382, 34.620533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765419, 35.194889, 33.887260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083412, 35.012646, 34.047470>,  <25.274208, 34.903297, 34.143597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083412, 35.012646, 34.047470>,  <24.765419, 35.194889, 33.887260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083412, 35.012646, 34.047470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150386, -0.787648, -0.597491,
		0.587693, 0.414763, -0.694685,
		0.794985, -0.455612, 0.400521,
		25.321907, 34.875961, 34.167625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234034, 34.985676, 33.328617>,  <24.765419, 35.194889, 33.887260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234034, 34.985676, 33.328617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302971, 34.745014, 33.640594>,  <25.344334, 34.600616, 33.827782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302971, 34.745014, 33.640594>,  <25.234034, 34.985676, 33.328617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302971, 34.745014, 33.640594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136610, -0.798740, -0.585963,
		0.975518, -0.005563, -0.219848,
		0.172342, -0.601651, 0.779945,
		25.354673, 34.564518, 33.874577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854580, 34.522823, 33.127155>,  <25.234034, 34.985676, 33.328617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854580, 34.522823, 33.127155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620728, 34.369133, 33.412975>,  <25.480415, 34.276920, 33.584465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620728, 34.369133, 33.412975>,  <25.854580, 34.522823, 33.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620728, 34.369133, 33.412975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177550, -0.798802, -0.574798,
		0.791633, -0.462912, 0.398785,
		-0.584631, -0.384225, 0.714547,
		25.445337, 34.253864, 33.627338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012121, 33.849903, 33.165775>,  <25.854580, 34.522823, 33.127155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012121, 33.849903, 33.165775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638536, 33.898769, 33.300110>,  <25.414385, 33.928089, 33.380711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638536, 33.898769, 33.300110>,  <26.012121, 33.849903, 33.165775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638536, 33.898769, 33.300110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233594, -0.919898, -0.314994,
		0.270454, -0.372642, 0.887689,
		-0.933964, 0.122167, 0.335838,
		25.358347, 33.935421, 33.400860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872332, 33.323936, 33.781452>,  <26.012121, 33.849903, 33.165775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872332, 33.323936, 33.781452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526800, 33.440845, 33.617317>,  <25.319481, 33.510990, 33.518837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526800, 33.440845, 33.617317>,  <25.872332, 33.323936, 33.781452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526800, 33.440845, 33.617317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261557, -0.956320, -0.130540,
		-0.430565, -0.005439, 0.902543,
		-0.863830, 0.292272, -0.410335,
		25.267651, 33.528526, 33.494217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382591, 32.910637, 34.052643>,  <25.872332, 33.323936, 33.781452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.382591, 32.910637, 34.052643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238632, 33.033131, 33.700123>,  <25.152256, 33.106628, 33.488609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238632, 33.033131, 33.700123>,  <25.382591, 32.910637, 34.052643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238632, 33.033131, 33.700123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387912, -0.908197, -0.157172,
		-0.848527, 0.285302, 0.445651,
		-0.359897, 0.306238, -0.881301,
		25.130663, 33.125004, 33.435734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633703, 32.581978, 33.960567>,  <25.382591, 32.910637, 34.052643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633703, 32.581978, 33.960567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761992, 32.657597, 33.589321>,  <24.838964, 32.702969, 33.366573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761992, 32.657597, 33.589321>,  <24.633703, 32.581978, 33.960567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761992, 32.657597, 33.589321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320674, -0.900342, -0.294199,
		-0.891239, 0.391979, -0.228138,
		0.320722, 0.189044, -0.928117,
		24.858208, 32.714310, 33.310886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335363, 32.065502, 33.532528>,  <24.633703, 32.581978, 33.960567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335363, 32.065502, 33.532528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590542, 32.211044, 33.261047>,  <24.743649, 32.298370, 33.098160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590542, 32.211044, 33.261047>,  <24.335363, 32.065502, 33.532528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590542, 32.211044, 33.261047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091162, -0.839458, -0.535724,
		-0.764668, 0.403634, -0.502357,
		0.637944, 0.363855, -0.678702,
		24.781925, 32.320202, 33.057438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.090233, 31.970373, 32.846424>,  <24.335363, 32.065502, 33.532528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.090233, 31.970373, 32.846424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487814, 31.989479, 32.806881>,  <24.726362, 32.000942, 32.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487814, 31.989479, 32.806881>,  <24.090233, 31.970373, 32.846424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487814, 31.989479, 32.806881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017820, -0.818288, -0.574533,
		-0.108341, 0.572821, -0.812489,
		0.993954, 0.047767, -0.098861,
		24.785999, 32.003811, 32.777222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337196, 31.835135, 32.140152>,  <24.090233, 31.970373, 32.846424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337196, 31.835135, 32.140152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656620, 31.736881, 32.359959>,  <24.848274, 31.677929, 32.491844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656620, 31.736881, 32.359959>,  <24.337196, 31.835135, 32.140152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656620, 31.736881, 32.359959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162423, -0.791144, -0.589669,
		0.579590, 0.560139, -0.591878,
		0.798558, -0.245632, 0.549519,
		24.896187, 31.663191, 32.524815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969229, 31.682650, 31.715939>,  <24.337196, 31.835135, 32.140152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969229, 31.682650, 31.715939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014366, 31.502897, 32.070412>,  <25.041449, 31.395046, 32.283096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014366, 31.502897, 32.070412>,  <24.969229, 31.682650, 31.715939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014366, 31.502897, 32.070412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318024, -0.828629, -0.460690,
		0.941343, 0.333813, 0.049410,
		0.112842, -0.449381, 0.886185,
		25.048218, 31.368082, 32.336266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245182, 30.911989, 31.978523>,  <24.969229, 31.682650, 31.715939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245182, 30.911989, 31.978523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418333, 31.217707, 31.787331>,  <25.522224, 31.401138, 31.672615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418333, 31.217707, 31.787331>,  <25.245182, 30.911989, 31.978523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418333, 31.217707, 31.787331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004337, 0.528464, 0.848945,
		0.901441, -0.369564, 0.225446,
		0.432880, 0.764296, -0.477982,
		25.548197, 31.446995, 31.643936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897947, 31.050074, 32.298939>,  <25.245182, 30.911989, 31.978523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897947, 31.050074, 32.298939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730232, 31.379183, 32.145447>,  <25.629602, 31.576649, 32.053352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730232, 31.379183, 32.145447>,  <25.897947, 31.050074, 32.298939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730232, 31.379183, 32.145447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077476, 0.388703, 0.918100,
		0.904542, 0.414677, -0.099233,
		-0.419287, 0.822771, -0.383726,
		25.604446, 31.626015, 32.030331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095930, 31.603922, 32.561974>,  <25.897947, 31.050074, 32.298939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095930, 31.603922, 32.561974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732653, 31.746025, 32.473454>,  <25.514687, 31.831287, 32.420341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732653, 31.746025, 32.473454>,  <26.095930, 31.603922, 32.561974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732653, 31.746025, 32.473454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037585, 0.595823, 0.802236,
		0.416859, 0.720268, -0.554475,
		-0.908194, 0.355259, -0.221303,
		25.460194, 31.852602, 32.407063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025227, 32.269470, 32.870892>,  <26.095930, 31.603922, 32.561974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025227, 32.269470, 32.870892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643625, 32.182423, 32.788406>,  <25.414665, 32.130196, 32.738914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643625, 32.182423, 32.788406>,  <26.025227, 32.269470, 32.870892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643625, 32.182423, 32.788406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291384, 0.834869, 0.466999,
		0.070535, 0.505605, -0.859877,
		-0.954002, -0.217615, -0.206213,
		25.357424, 32.117138, 32.726543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825367, 32.745060, 32.446182>,  <26.025227, 32.269470, 32.870892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825367, 32.745060, 32.446182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482405, 32.611401, 32.602741>,  <25.276627, 32.531204, 32.696678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482405, 32.611401, 32.602741>,  <25.825367, 32.745060, 32.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482405, 32.611401, 32.602741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188019, 0.911352, 0.366177,
		-0.479063, 0.240372, -0.844227,
		-0.857407, -0.334153, 0.391401,
		25.225183, 32.511154, 32.720161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226538, 33.101940, 32.111675>,  <25.825367, 32.745060, 32.446182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226538, 33.101940, 32.111675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117596, 32.993423, 32.480938>,  <25.052231, 32.928314, 32.702496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117596, 32.993423, 32.480938>,  <25.226538, 33.101940, 32.111675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117596, 32.993423, 32.480938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012748, 0.958328, 0.285385,
		-0.962113, 0.089494, -0.257545,
		-0.272353, -0.271289, 0.923161,
		25.035891, 32.912037, 32.757885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687288, 33.557106, 32.328167>,  <25.226538, 33.101940, 32.111675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687288, 33.557106, 32.328167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848660, 33.418072, 32.666737>,  <24.945482, 33.334652, 32.869877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848660, 33.418072, 32.666737>,  <24.687288, 33.557106, 32.328167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848660, 33.418072, 32.666737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222541, 0.934536, 0.277701,
		-0.887537, 0.076331, 0.454369,
		0.403427, -0.347586, 0.846422,
		24.969688, 33.313797, 32.920662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013826, 34.130901, 32.344097>,  <24.687288, 33.557106, 32.328167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013826, 34.130901, 32.344097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.089685, 34.506420, 32.229073>,  <24.135201, 34.731731, 32.160057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.089685, 34.506420, 32.229073>,  <24.013826, 34.130901, 32.344097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089685, 34.506420, 32.229073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841378, -0.004429, 0.540430,
		0.506080, -0.344443, -0.790723,
		0.189649, 0.938797, -0.287565,
		24.146580, 34.788059, 32.142803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147963, 33.895538, 33.061951>,  <24.013826, 34.130901, 32.344097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147963, 33.895538, 33.061951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481049, 33.777184, 33.249157>,  <24.680901, 33.706169, 33.361481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481049, 33.777184, 33.249157>,  <24.147963, 33.895538, 33.061951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481049, 33.777184, 33.249157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164014, 0.939121, 0.301912,
		-0.528852, -0.174647, 0.830551,
		0.832716, -0.295889, 0.468011,
		24.730864, 33.688416, 33.389561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135061, 34.128670, 33.756401>,  <24.147963, 33.895538, 33.061951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135061, 34.128670, 33.756401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517004, 34.067848, 33.654316>,  <24.746170, 34.031357, 33.593067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517004, 34.067848, 33.654316>,  <24.135061, 34.128670, 33.756401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517004, 34.067848, 33.654316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216000, 0.945145, 0.245042,
		0.203951, -0.289105, 0.935320,
		0.954855, -0.152053, -0.255209,
		24.803461, 34.022232, 33.577751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680363, 34.363754, 34.299267>,  <24.135061, 34.128670, 33.756401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680363, 34.363754, 34.299267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800949, 34.393902, 33.919071>,  <24.873301, 34.411991, 33.690952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800949, 34.393902, 33.919071>,  <24.680363, 34.363754, 34.299267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800949, 34.393902, 33.919071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101215, 0.988708, 0.110506,
		0.948090, -0.129518, 0.290432,
		0.301465, 0.075373, -0.950493,
		24.891388, 34.416515, 33.633923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761959, 33.605595, 34.557102>,  <24.680363, 34.363754, 34.299267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761959, 33.605595, 34.557102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975534, 33.799683, 34.280125>,  <25.103680, 33.916134, 34.113937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975534, 33.799683, 34.280125>,  <24.761959, 33.605595, 34.557102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975534, 33.799683, 34.280125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229715, 0.704901, 0.671078,
		0.813720, -0.517378, 0.264913,
		0.533938, 0.485215, -0.692442,
		25.135715, 33.945248, 34.072392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474007, 33.757889, 34.866730>,  <24.761959, 33.605595, 34.557102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474007, 33.757889, 34.866730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432600, 34.015442, 34.563496>,  <25.407755, 34.169975, 34.381554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432600, 34.015442, 34.563496>,  <25.474007, 33.757889, 34.866730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432600, 34.015442, 34.563496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404819, 0.723472, 0.559204,
		0.908518, -0.249001, -0.335550,
		-0.103519, 0.643884, -0.758088,
		25.401545, 34.208607, 34.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155565, 34.109333, 34.757908>,  <25.474007, 33.757889, 34.866730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155565, 34.109333, 34.757908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889101, 34.340500, 34.569336>,  <25.729223, 34.479202, 34.456192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889101, 34.340500, 34.569336>,  <26.155565, 34.109333, 34.757908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889101, 34.340500, 34.569336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322869, 0.793264, 0.516225,
		0.672301, 0.191679, -0.715032,
		-0.666158, 0.577920, -0.471425,
		25.689253, 34.513874, 34.427910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426722, 34.757904, 34.712547>,  <26.155565, 34.109333, 34.757908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426722, 34.757904, 34.712547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042931, 34.850227, 34.647884>,  <25.812656, 34.905621, 34.609089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042931, 34.850227, 34.647884>,  <26.426722, 34.757904, 34.712547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042931, 34.850227, 34.647884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133284, 0.877158, 0.461334,
		0.248276, 0.421093, -0.872376,
		-0.959476, 0.230812, -0.161653,
		25.755087, 34.919472, 34.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391825, 35.361877, 34.466526>,  <26.426722, 34.757904, 34.712547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391825, 35.361877, 34.466526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778244, 35.447834, 34.409157>,  <27.010096, 35.499409, 34.374737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778244, 35.447834, 34.409157>,  <26.391825, 35.361877, 34.466526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778244, 35.447834, 34.409157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258284, 0.789981, -0.556075,
		-0.006198, 0.574239, 0.818664,
		0.966049, 0.214894, -0.143420,
		27.068058, 35.512302, 34.366131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448299, 36.058094, 34.463650>,  <26.391825, 35.361877, 34.466526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448299, 36.058094, 34.463650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781448, 36.002098, 34.249462>,  <26.981339, 35.968502, 34.120949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781448, 36.002098, 34.249462>,  <26.448299, 36.058094, 34.463650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781448, 36.002098, 34.249462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176528, 0.849765, -0.496727,
		0.524559, 0.508236, 0.683033,
		0.832872, -0.139988, -0.535469,
		27.031309, 35.960102, 34.088821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951151, 36.646072, 34.560219>,  <26.448299, 36.058094, 34.463650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951151, 36.646072, 34.560219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046036, 36.507175, 34.197308>,  <27.102966, 36.423840, 33.979561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046036, 36.507175, 34.197308>,  <26.951151, 36.646072, 34.560219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046036, 36.507175, 34.197308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021664, 0.935594, -0.352413,
		0.971216, 0.063941, 0.229458,
		0.237213, -0.347240, -0.907278,
		27.117199, 36.403004, 33.925125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518921, 37.039646, 34.216278>,  <26.951151, 36.646072, 34.560219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518921, 37.039646, 34.216278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338438, 36.856510, 33.909866>,  <27.230148, 36.746628, 33.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338438, 36.856510, 33.909866>,  <27.518921, 37.039646, 34.216278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338438, 36.856510, 33.909866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027981, 0.850689, -0.524925,
		0.891982, -0.258282, -0.371023,
		-0.451203, -0.457842, -0.766026,
		27.203077, 36.719158, 33.680058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837414, 37.091129, 33.506760>,  <27.518921, 37.039646, 34.216278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837414, 37.091129, 33.506760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478765, 37.005707, 33.351601>,  <27.263577, 36.954453, 33.258503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478765, 37.005707, 33.351601>,  <27.837414, 37.091129, 33.506760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478765, 37.005707, 33.351601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011022, 0.886511, -0.462576,
		0.442661, -0.410480, -0.797218,
		-0.896621, -0.213552, -0.387900,
		27.209780, 36.941643, 33.235229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839750, 37.428219, 32.796116>,  <27.837414, 37.091129, 33.506760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839750, 37.428219, 32.796116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457756, 37.345673, 32.881363>,  <27.228559, 37.296146, 32.932510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457756, 37.345673, 32.881363>,  <27.839750, 37.428219, 32.796116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457756, 37.345673, 32.881363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293288, 0.764763, -0.573690,
		-0.044596, -0.610369, -0.790860,
		-0.954984, -0.206365, 0.213120,
		27.171261, 37.283764, 32.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059484, 38.099026, 33.060593>,  <27.839750, 37.428219, 32.796116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059484, 38.099026, 33.060593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332468, 38.301033, 32.849232>,  <28.496258, 38.422237, 32.722416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332468, 38.301033, 32.849232>,  <28.059484, 38.099026, 33.060593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332468, 38.301033, 32.849232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027157, -0.704902, -0.708784,
		-0.730418, 0.498067, -0.467353,
		0.682460, 0.505017, -0.528399,
		28.537207, 38.452538, 32.690712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821711, 38.133659, 32.352283>,  <28.059484, 38.099026, 33.060593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821711, 38.133659, 32.352283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218641, 38.154690, 32.397049>,  <28.456799, 38.167309, 32.423908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218641, 38.154690, 32.397049>,  <27.821711, 38.133659, 32.352283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218641, 38.154690, 32.397049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117501, -0.682865, -0.721033,
		0.038511, 0.728650, -0.683803,
		0.992326, 0.052580, 0.111915,
		28.516338, 38.170464, 32.430622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312141, 37.539272, 31.994005>,  <27.821711, 38.133659, 32.352283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312141, 37.539272, 31.994005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077946, 37.509731, 32.316929>,  <26.937428, 37.492008, 32.510681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077946, 37.509731, 32.316929>,  <27.312141, 37.539272, 31.994005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077946, 37.509731, 32.316929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586608, 0.725945, -0.359020,
		-0.559547, -0.683776, -0.468355,
		-0.585490, -0.073852, 0.807309,
		26.902298, 37.487576, 32.559120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675808, 37.387463, 31.689699>,  <27.312141, 37.539272, 31.994005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675808, 37.387463, 31.689699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603563, 37.538609, 32.052929>,  <26.560217, 37.629295, 32.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603563, 37.538609, 32.052929>,  <26.675808, 37.387463, 31.689699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603563, 37.538609, 32.052929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520673, 0.746544, -0.414213,
		-0.834433, -0.547620, 0.061911,
		-0.180612, 0.377868, 0.908072,
		26.549379, 37.651970, 32.325352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041723, 37.495514, 31.660995>,  <26.675808, 37.387463, 31.689699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041723, 37.495514, 31.660995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183193, 37.725677, 31.955973>,  <26.268076, 37.863773, 32.132957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183193, 37.725677, 31.955973>,  <26.041723, 37.495514, 31.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183193, 37.725677, 31.955973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332649, 0.814233, -0.475783,
		-0.874219, -0.077038, 0.479381,
		0.353674, 0.575405, 0.737444,
		26.289295, 37.898300, 32.177204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449038, 38.036526, 31.776840>,  <26.041723, 37.495514, 31.660995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449038, 38.036526, 31.776840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808800, 38.151894, 31.908226>,  <26.024656, 38.221115, 31.987057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808800, 38.151894, 31.908226>,  <25.449038, 38.036526, 31.776840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808800, 38.151894, 31.908226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086368, 0.853872, -0.513268,
		-0.428501, 0.433267, 0.792885,
		0.899404, 0.288415, 0.328464,
		26.078621, 38.238419, 32.006763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391632, 38.689564, 32.268147>,  <25.449038, 38.036526, 31.776840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391632, 38.689564, 32.268147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690847, 38.631859, 32.009033>,  <25.870377, 38.597237, 31.853565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690847, 38.631859, 32.009033>,  <25.391632, 38.689564, 32.268147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690847, 38.631859, 32.009033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258552, 0.835618, -0.484658,
		0.611221, 0.530028, 0.587775,
		0.748038, -0.144263, -0.647787,
		25.915258, 38.588581, 31.814697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096731, 39.202755, 32.293583>,  <25.391632, 38.689564, 32.268147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096731, 39.202755, 32.293583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963163, 39.039928, 31.953516>,  <25.883022, 38.942230, 31.749475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963163, 39.039928, 31.953516>,  <26.096731, 39.202755, 32.293583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963163, 39.039928, 31.953516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158569, 0.913346, -0.375039,
		0.929168, 0.009578, -0.369532,
		-0.333919, -0.407071, -0.850172,
		25.862988, 38.917809, 31.698465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865227, 39.063782, 32.351254>,  <26.096731, 39.202755, 32.293583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865227, 39.063782, 32.351254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571667, 38.796677, 32.301495>,  <26.395531, 38.636414, 32.271641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571667, 38.796677, 32.301495>,  <26.865227, 39.063782, 32.351254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571667, 38.796677, 32.301495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487249, -0.645142, 0.588541,
		-0.473260, 0.371321, 0.798840,
		-0.733903, -0.667767, -0.124394,
		26.351496, 38.596348, 32.264175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641260, 38.834999, 33.040005>,  <26.865227, 39.063782, 32.351254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641260, 38.834999, 33.040005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547400, 38.547523, 32.778187>,  <26.491083, 38.375038, 32.621098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547400, 38.547523, 32.778187>,  <26.641260, 38.834999, 33.040005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547400, 38.547523, 32.778187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309380, -0.693545, 0.650600,
		-0.921533, -0.049838, 0.385088,
		-0.234652, -0.718687, -0.654543,
		26.477003, 38.331917, 32.581825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454168, 38.262115, 33.480965>,  <26.641260, 38.834999, 33.040005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454168, 38.262115, 33.480965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433855, 38.066132, 33.132858>,  <26.421667, 37.948544, 32.923996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433855, 38.066132, 33.132858>,  <26.454168, 38.262115, 33.480965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433855, 38.066132, 33.132858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309136, -0.836306, 0.452798,
		-0.949661, -0.246036, 0.193933,
		-0.050783, -0.489956, -0.870266,
		26.418621, 37.919144, 32.871777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059095, 37.647408, 33.587833>,  <26.454168, 38.262115, 33.480965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059095, 37.647408, 33.587833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304478, 37.586491, 33.277870>,  <26.451708, 37.549942, 33.091892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304478, 37.586491, 33.277870>,  <26.059095, 37.647408, 33.587833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304478, 37.586491, 33.277870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232687, -0.902816, 0.361636,
		-0.754669, -0.402159, -0.518404,
		0.613458, -0.152289, -0.774904,
		26.488516, 37.540802, 33.045399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963581, 36.958286, 33.334621>,  <26.059095, 37.647408, 33.587833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963581, 36.958286, 33.334621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326111, 37.065125, 33.203629>,  <26.543629, 37.129227, 33.125034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326111, 37.065125, 33.203629>,  <25.963581, 36.958286, 33.334621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326111, 37.065125, 33.203629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366003, -0.883498, 0.292359,
		-0.211239, -0.384829, -0.898490,
		0.906322, 0.267093, -0.327478,
		26.598007, 37.145252, 33.105385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027147, 36.538422, 32.916729>,  <25.963581, 36.958286, 33.334621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027147, 36.538422, 32.916729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397589, 36.671734, 32.987450>,  <26.619854, 36.751720, 33.029881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397589, 36.671734, 32.987450>,  <26.027147, 36.538422, 32.916729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397589, 36.671734, 32.987450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288684, -0.927713, 0.236665,
		0.242894, -0.168138, -0.955370,
		0.926102, 0.333284, 0.176797,
		26.675419, 36.771721, 33.040489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533957, 36.181175, 32.548393>,  <26.027147, 36.538422, 32.916729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533957, 36.181175, 32.548393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719383, 36.327469, 32.871216>,  <26.830639, 36.415245, 33.064911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719383, 36.327469, 32.871216>,  <26.533957, 36.181175, 32.548393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719383, 36.327469, 32.871216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433098, -0.888143, 0.153716,
		0.773002, 0.278278, -0.570113,
		0.463566, 0.365737, 0.807058,
		26.858454, 36.437191, 33.113335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313320, 36.128059, 32.489727>,  <26.533957, 36.181175, 32.548393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313320, 36.128059, 32.489727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201006, 36.071980, 32.869518>,  <27.133617, 36.038330, 33.097393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201006, 36.071980, 32.869518>,  <27.313320, 36.128059, 32.489727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201006, 36.071980, 32.869518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596803, -0.800266, 0.058320,
		0.751655, 0.583025, 0.308377,
		-0.280785, -0.140204, 0.949475,
		27.116770, 36.029919, 33.154362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950802, 36.064545, 32.963551>,  <27.313320, 36.128059, 32.489727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950802, 36.064545, 32.963551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635929, 35.842045, 33.070084>,  <27.447006, 35.708546, 33.134003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635929, 35.842045, 33.070084>,  <27.950802, 36.064545, 32.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635929, 35.842045, 33.070084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610129, -0.765380, 0.204783,
		0.089933, 0.323697, 0.941877,
		-0.787181, -0.556250, 0.266330,
		27.399775, 35.675171, 33.149982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156546, 35.694229, 33.589306>,  <27.950802, 36.064545, 32.963551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156546, 35.694229, 33.589306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880339, 35.469875, 33.406616>,  <27.714615, 35.335262, 33.297005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880339, 35.469875, 33.406616>,  <28.156546, 35.694229, 33.589306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880339, 35.469875, 33.406616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453008, -0.827603, 0.331447,
		-0.563887, 0.021971, 0.825559,
		-0.690518, -0.560884, -0.456722,
		27.673183, 35.301609, 33.269600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118719, 35.203259, 33.980476>,  <28.156546, 35.694229, 33.589306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118719, 35.203259, 33.980476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984442, 35.051487, 33.635605>,  <27.903875, 34.960423, 33.428684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984442, 35.051487, 33.635605>,  <28.118719, 35.203259, 33.980476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984442, 35.051487, 33.635605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437484, -0.873385, 0.214025,
		-0.834217, -0.305341, 0.459183,
		-0.335693, -0.379428, -0.862174,
		27.883734, 34.937660, 33.376953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873341, 34.524193, 33.910984>,  <28.118719, 35.203259, 33.980476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873341, 34.524193, 33.910984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239925, 34.684090, 33.904049>,  <28.459877, 34.780029, 33.899887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239925, 34.684090, 33.904049>,  <27.873341, 34.524193, 33.910984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239925, 34.684090, 33.904049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394500, -0.895510, 0.205989,
		0.066817, -0.195621, -0.978401,
		0.916463, 0.399743, -0.017337,
		28.514864, 34.804012, 33.898849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260756, 34.050480, 33.577240>,  <27.873341, 34.524193, 33.910984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260756, 34.050480, 33.577240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485420, 34.261452, 33.832226>,  <28.620218, 34.388035, 33.985218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485420, 34.261452, 33.832226>,  <28.260756, 34.050480, 33.577240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485420, 34.261452, 33.832226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560474, -0.809302, 0.175780,
		0.608611, 0.258552, -0.750163,
		0.561660, 0.527429, 0.637462,
		28.653917, 34.419682, 34.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048855, 33.967533, 33.430126>,  <28.260756, 34.050480, 33.577240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048855, 33.967533, 33.430126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016621, 34.042572, 33.821701>,  <28.997280, 34.087593, 34.056644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016621, 34.042572, 33.821701>,  <29.048855, 33.967533, 33.430126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016621, 34.042572, 33.821701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629529, -0.751875, 0.195903,
		0.772787, 0.632055, -0.057506,
		-0.080584, 0.187593, 0.978936,
		28.992445, 34.098850, 34.115383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689676, 33.953461, 33.875759>,  <29.048855, 33.967533, 33.430126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689676, 33.953461, 33.875759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400452, 33.895519, 34.145931>,  <29.226917, 33.860756, 34.308033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400452, 33.895519, 34.145931>,  <29.689676, 33.953461, 33.875759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400452, 33.895519, 34.145931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566801, -0.683319, 0.460230,
		0.394869, 0.715607, 0.576181,
		-0.723059, -0.144850, 0.675428,
		29.183535, 33.852066, 34.348560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907301, 34.093349, 34.633938>,  <29.689676, 33.953461, 33.875759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907301, 34.093349, 34.633938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593058, 33.846024, 34.642925>,  <29.404512, 33.697628, 34.648319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593058, 33.846024, 34.642925>,  <29.907301, 34.093349, 34.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593058, 33.846024, 34.642925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591643, -0.740094, 0.319719,
		-0.181056, 0.264468, 0.947246,
		-0.785607, -0.618318, 0.022472,
		29.357376, 33.660526, 34.649666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863230, 33.883987, 35.303123>,  <29.907301, 34.093349, 34.633938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863230, 33.883987, 35.303123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695021, 33.585045, 35.097359>,  <29.594095, 33.405678, 34.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695021, 33.585045, 35.097359>,  <29.863230, 33.883987, 35.303123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695021, 33.585045, 35.097359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721487, -0.619233, 0.309849,
		-0.550108, -0.240841, 0.799611,
		-0.420521, -0.747359, -0.514408,
		29.568865, 33.360836, 34.943035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534008, 33.925827, 34.933407>,  <29.863230, 33.883987, 35.303123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534008, 33.925827, 34.933407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624054, 33.584930, 35.122303>,  <30.678082, 33.380394, 35.235641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624054, 33.584930, 35.122303>,  <30.534008, 33.925827, 34.933407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624054, 33.584930, 35.122303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272171, 0.520387, 0.809395,
		-0.935546, -0.053678, 0.349102,
		0.225114, -0.852242, 0.472237,
		30.691587, 33.329258, 35.263973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835831, 33.683773, 34.213058>,  <30.534008, 33.925827, 34.933407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835831, 33.683773, 34.213058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644985, 33.501667, 33.912369>,  <30.530478, 33.392403, 33.731956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644985, 33.501667, 33.912369>,  <30.835831, 33.683773, 34.213058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644985, 33.501667, 33.912369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869382, 0.119349, 0.479510,
		-0.128589, 0.882318, -0.452746,
		-0.477115, -0.455269, -0.751725,
		30.501850, 33.365086, 33.686852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391579, 34.079304, 34.663258>,  <30.835831, 33.683773, 34.213058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391579, 34.079304, 34.663258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495768, 34.464149, 34.695484>,  <31.558281, 34.695057, 34.714821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495768, 34.464149, 34.695484>,  <31.391579, 34.079304, 34.663258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495768, 34.464149, 34.695484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939232, -0.271834, 0.209642,
		0.223601, 0.021068, -0.974453,
		0.260473, 0.962114, 0.080570,
		31.573910, 34.752785, 34.719654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060234, 34.312649, 34.291393>,  <31.391579, 34.079304, 34.663258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060234, 34.312649, 34.291393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012989, 34.554813, 34.606232>,  <31.984642, 34.700111, 34.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012989, 34.554813, 34.606232>,  <32.060234, 34.312649, 34.291393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012989, 34.554813, 34.606232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982868, -0.041668, 0.179539,
		0.141492, 0.794821, -0.590119,
		-0.118112, 0.605412, 0.787099,
		31.977556, 34.736439, 34.842361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395527, 34.896145, 34.177612>,  <32.060234, 34.312649, 34.291393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395527, 34.896145, 34.177612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387844, 34.835350, 34.572891>,  <32.383236, 34.798874, 34.810059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387844, 34.835350, 34.572891>,  <32.395527, 34.896145, 34.177612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387844, 34.835350, 34.572891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991789, 0.122091, 0.038053,
		-0.126433, 0.980813, 0.148395,
		-0.019205, -0.151987, 0.988196,
		32.382084, 34.789753, 34.869350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578785, 35.516392, 34.688286>,  <32.395527, 34.896145, 34.177612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578785, 35.516392, 34.688286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657005, 35.136120, 34.784595>,  <32.703938, 34.907955, 34.842381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657005, 35.136120, 34.784595>,  <32.578785, 35.516392, 34.688286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657005, 35.136120, 34.784595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969182, 0.149828, -0.195547,
		0.149828, 0.271590, 0.950679,
		0.195547, -0.950679, 0.240771,
		32.715668, 34.850918, 34.856827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963512, 35.209663, 35.387035>,  <32.578785, 35.516392, 34.688286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963512, 35.209663, 35.387035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052002, 34.976070, 35.074619>,  <33.105095, 34.835915, 34.887169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052002, 34.976070, 35.074619>,  <32.963512, 35.209663, 35.387035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052002, 34.976070, 35.074619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974949, 0.113478, 0.191304,
		-0.023089, -0.803792, 0.594462,
		0.221227, -0.583987, -0.781036,
		33.118370, 34.800873, 34.840309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451981, 34.634781, 35.616447>,  <32.963512, 35.209663, 35.387035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451981, 34.634781, 35.616447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464424, 34.764534, 35.238281>,  <33.471889, 34.842384, 35.011383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464424, 34.764534, 35.238281>,  <33.451981, 34.634781, 35.616447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464424, 34.764534, 35.238281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954636, 0.270611, 0.124257,
		0.296146, -0.906392, -0.301250,
		0.031104, 0.324382, -0.945415,
		33.473755, 34.861847, 34.954659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158123, 34.754875, 35.715099>,  <33.451981, 34.634781, 35.616447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158123, 34.754875, 35.715099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431057, 35.029270, 35.614037>,  <34.594818, 35.193909, 35.553398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431057, 35.029270, 35.614037>,  <34.158123, 34.754875, 35.715099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431057, 35.029270, 35.614037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320719, -0.029672, -0.946710,
		-0.656932, 0.727004, 0.199765,
		0.682334, 0.685992, -0.252656,
		34.635757, 35.235069, 35.538239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864346, 35.131153, 35.279484>,  <34.158123, 34.754875, 35.715099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864346, 35.131153, 35.279484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237255, 35.258728, 35.211197>,  <34.460999, 35.335274, 35.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237255, 35.258728, 35.211197>,  <33.864346, 35.131153, 35.279484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237255, 35.258728, 35.211197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204652, 0.075833, -0.975893,
		-0.298305, 0.944736, 0.135969,
		0.932272, 0.318940, -0.170721,
		34.516937, 35.354408, 35.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740784, 35.681255, 34.850597>,  <33.864346, 35.131153, 35.279484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740784, 35.681255, 34.850597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128265, 35.589493, 34.812672>,  <34.360756, 35.534435, 34.789917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128265, 35.589493, 34.812672>,  <33.740784, 35.681255, 34.850597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128265, 35.589493, 34.812672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068373, 0.120584, -0.990346,
		0.238622, 0.965833, 0.101125,
		0.968703, -0.229404, -0.094811,
		34.418877, 35.520672, 34.784229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035122, 36.199551, 34.493652>,  <33.740784, 35.681255, 34.850597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035122, 36.199551, 34.493652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246849, 35.867302, 34.424500>,  <34.373886, 35.667953, 34.383007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246849, 35.867302, 34.424500>,  <34.035122, 36.199551, 34.493652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246849, 35.867302, 34.424500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156386, 0.104757, -0.982125,
		0.833887, 0.546890, -0.074449,
		0.529316, -0.830624, -0.172881,
		34.405643, 35.618114, 34.372635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537861, 36.380306, 33.971375>,  <34.035122, 36.199551, 34.493652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537861, 36.380306, 33.971375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479080, 35.984650, 33.971355>,  <34.443813, 35.747253, 33.971344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479080, 35.984650, 33.971355>,  <34.537861, 36.380306, 33.971375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479080, 35.984650, 33.971355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145157, 0.021612, -0.989173,
		0.978435, -0.145351, -0.146757,
		-0.146949, -0.989144, -0.000047,
		34.434994, 35.687908, 33.971340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970085, 36.112797, 33.371559>,  <34.537861, 36.380306, 33.971375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970085, 36.112797, 33.371559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688999, 35.838554, 33.447594>,  <34.520348, 35.674007, 33.493214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688999, 35.838554, 33.447594>,  <34.970085, 36.112797, 33.371559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688999, 35.838554, 33.447594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306604, 0.050725, -0.950485,
		0.642018, -0.726201, -0.245855,
		-0.702714, -0.685609, 0.190090,
		34.478184, 35.632874, 33.504620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031651, 35.586124, 32.949486>,  <34.970085, 36.112797, 33.371559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031651, 35.586124, 32.949486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652229, 35.629475, 33.068478>,  <34.424576, 35.655483, 33.139874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652229, 35.629475, 33.068478>,  <35.031651, 35.586124, 32.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652229, 35.629475, 33.068478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283441, 0.127959, -0.950415,
		-0.141068, -0.985840, -0.090658,
		-0.948558, 0.108377, 0.297478,
		34.367661, 35.661987, 33.157722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798447, 35.549316, 32.252060>,  <35.031651, 35.586124, 32.949486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798447, 35.549316, 32.252060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463665, 35.578438, 32.469025>,  <34.262798, 35.595909, 32.599205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463665, 35.578438, 32.469025>,  <34.798447, 35.549316, 32.252060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463665, 35.578438, 32.469025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518243, 0.213113, -0.828255,
		-0.175893, -0.974312, -0.140637,
		-0.836950, 0.072800, 0.542416,
		34.212582, 35.600277, 32.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274155, 35.083328, 31.945080>,  <34.798447, 35.549316, 32.252060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274155, 35.083328, 31.945080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094715, 35.384586, 32.137550>,  <33.987053, 35.565342, 32.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094715, 35.384586, 32.137550>,  <34.274155, 35.083328, 31.945080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094715, 35.384586, 32.137550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514601, 0.222522, -0.828052,
		-0.730717, -0.619075, 0.287748,
		-0.448595, 0.753147, 0.481177,
		33.960136, 35.610531, 32.281902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712524, 35.139816, 31.556974>,  <34.274155, 35.083328, 31.945080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712524, 35.139816, 31.556974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672073, 35.461060, 31.791851>,  <33.647800, 35.653805, 31.932777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672073, 35.461060, 31.791851>,  <33.712524, 35.139816, 31.556974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672073, 35.461060, 31.791851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606721, 0.417974, -0.676157,
		-0.788456, -0.424641, 0.444991,
		-0.101129, 0.803105, 0.587193,
		33.641735, 35.701992, 31.968008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062325, 35.280632, 31.582178>,  <33.712524, 35.139816, 31.556974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062325, 35.280632, 31.582178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223492, 35.627266, 31.699957>,  <33.320190, 35.835247, 31.770624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223492, 35.627266, 31.699957>,  <33.062325, 35.280632, 31.582178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223492, 35.627266, 31.699957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573330, 0.489748, -0.656841,
		-0.713410, 0.095835, 0.694163,
		0.402914, 0.866581, 0.294446,
		33.344364, 35.887241, 31.788290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553940, 35.744076, 31.394098>,  <33.062325, 35.280632, 31.582178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553940, 35.744076, 31.394098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871338, 35.985832, 31.422588>,  <33.061775, 36.130886, 31.439682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871338, 35.985832, 31.422588>,  <32.553940, 35.744076, 31.394098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871338, 35.985832, 31.422588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392002, 0.597124, -0.699841,
		-0.465511, 0.527399, 0.710739,
		0.793494, 0.604395, 0.071226,
		33.109386, 36.167152, 31.443956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386875, 36.402401, 31.445896>,  <32.553940, 35.744076, 31.394098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386875, 36.402401, 31.445896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767975, 36.496296, 31.368786>,  <32.996635, 36.552631, 31.322519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767975, 36.496296, 31.368786>,  <32.386875, 36.402401, 31.445896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767975, 36.496296, 31.368786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302336, 0.671676, -0.676346,
		-0.029279, 0.702674, 0.710909,
		0.952751, 0.234737, -0.192778,
		33.053799, 36.566715, 31.310953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490833, 37.082802, 31.575472>,  <32.386875, 36.402401, 31.445896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490833, 37.082802, 31.575472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756611, 36.995918, 31.289442>,  <32.916077, 36.943787, 31.117825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756611, 36.995918, 31.289442>,  <32.490833, 37.082802, 31.575472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756611, 36.995918, 31.289442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329733, 0.773459, -0.541329,
		0.670662, 0.595467, 0.442302,
		0.664446, -0.217208, -0.715075,
		32.955944, 36.930756, 31.074919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846653, 37.725666, 31.385330>,  <32.490833, 37.082802, 31.575472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846653, 37.725666, 31.385330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920368, 37.478645, 31.079475>,  <32.964596, 37.330433, 30.895962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920368, 37.478645, 31.079475>,  <32.846653, 37.725666, 31.385330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920368, 37.478645, 31.079475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206478, 0.736279, -0.644407,
		0.960940, 0.276638, 0.008177,
		0.184288, -0.617548, -0.764639,
		32.975655, 37.293381, 30.850084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367905, 38.049210, 31.008812>,  <32.846653, 37.725666, 31.385330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367905, 38.049210, 31.008812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146908, 37.817799, 30.768793>,  <33.014309, 37.678951, 30.624781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146908, 37.817799, 30.768793>,  <33.367905, 38.049210, 31.008812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146908, 37.817799, 30.768793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317162, 0.811662, -0.490523,
		0.770817, -0.080699, -0.631925,
		-0.552494, -0.578526, -0.600048,
		32.981159, 37.644241, 30.588778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396538, 38.394428, 30.414291>,  <33.367905, 38.049210, 31.008812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396538, 38.394428, 30.414291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091957, 38.152344, 30.321417>,  <32.909210, 38.007092, 30.265692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091957, 38.152344, 30.321417>,  <33.396538, 38.394428, 30.414291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091957, 38.152344, 30.321417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350711, 0.685876, -0.637633,
		0.545152, -0.404098, -0.734516,
		-0.761454, -0.605210, -0.232185,
		32.863522, 37.970779, 30.251760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289589, 38.507431, 29.704508>,  <33.396538, 38.394428, 30.414291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289589, 38.507431, 29.704508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943207, 38.353161, 29.831865>,  <32.735378, 38.260597, 29.908279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943207, 38.353161, 29.831865>,  <33.289589, 38.507431, 29.704508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943207, 38.353161, 29.831865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484817, 0.491070, -0.723742,
		0.122776, -0.781091, -0.612228,
		-0.865955, -0.385676, 0.318395,
		32.683422, 38.237457, 29.927383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910435, 38.230221, 29.078672>,  <33.289589, 38.507431, 29.704508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910435, 38.230221, 29.078672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653019, 38.286835, 29.379557>,  <32.498569, 38.320805, 29.560087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653019, 38.286835, 29.379557>,  <32.910435, 38.230221, 29.078672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653019, 38.286835, 29.379557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618823, 0.482157, -0.620148,
		-0.450457, -0.864576, -0.222702,
		-0.643542, 0.141537, 0.752210,
		32.459957, 38.329296, 29.605219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340099, 38.210846, 28.796070>,  <32.910435, 38.230221, 29.078672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340099, 38.210846, 28.796070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204285, 38.388630, 29.127653>,  <32.122795, 38.495300, 29.326603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204285, 38.388630, 29.127653>,  <32.340099, 38.210846, 28.796070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204285, 38.388630, 29.127653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633405, 0.543482, -0.550841,
		-0.695350, -0.712097, 0.096989,
		-0.339540, 0.444460, 0.828956,
		32.102421, 38.521969, 29.376339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615980, 38.348106, 28.649351>,  <32.340099, 38.210846, 28.796070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615980, 38.348106, 28.649351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730696, 38.606094, 28.932693>,  <31.799526, 38.760887, 29.102699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730696, 38.606094, 28.932693>,  <31.615980, 38.348106, 28.649351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730696, 38.606094, 28.932693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713017, 0.637539, -0.291807,
		-0.639811, -0.421383, 0.642712,
		0.286791, 0.644966, 0.708358,
		31.816732, 38.799583, 29.145201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986834, 38.434715, 28.961035>,  <31.615980, 38.348106, 28.649351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986834, 38.434715, 28.961035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226364, 38.743454, 29.046513>,  <31.370083, 38.928696, 29.097799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226364, 38.743454, 29.046513>,  <30.986834, 38.434715, 28.961035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226364, 38.743454, 29.046513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646432, 0.623340, -0.439970,
		-0.472793, 0.125326, 0.872216,
		0.598826, 0.771843, 0.213696,
		31.406012, 38.975006, 29.110620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637623, 38.874260, 29.459127>,  <30.986834, 38.434715, 28.961035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637623, 38.874260, 29.459127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907005, 39.082253, 29.248957>,  <31.068634, 39.207050, 29.122854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907005, 39.082253, 29.248957>,  <30.637623, 38.874260, 29.459127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907005, 39.082253, 29.248957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730561, 0.576683, -0.365673,
		0.112861, 0.630121, 0.768251,
		0.673456, 0.519985, -0.525427,
		31.109041, 39.238247, 29.091328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242987, 39.421524, 29.263344>,  <30.637623, 38.874260, 29.459127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242987, 39.421524, 29.263344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568214, 39.487633, 29.040058>,  <30.763351, 39.527298, 28.906088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568214, 39.487633, 29.040058>,  <30.242987, 39.421524, 29.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568214, 39.487633, 29.040058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536679, 0.584346, -0.608700,
		0.225591, 0.794498, 0.563810,
		0.813071, 0.165268, -0.558213,
		30.812136, 39.537212, 28.872595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370140, 40.096039, 29.235285>,  <30.242987, 39.421524, 29.263344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370140, 40.096039, 29.235285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514814, 39.945427, 28.894133>,  <30.601618, 39.855061, 28.689442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514814, 39.945427, 28.894133>,  <30.370140, 40.096039, 29.235285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514814, 39.945427, 28.894133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509058, 0.686643, -0.519019,
		0.781053, 0.621888, 0.056671,
		0.361684, -0.376532, -0.852882,
		30.623320, 39.832466, 28.638268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515785, 40.722328, 28.816532>,  <30.370140, 40.096039, 29.235285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515785, 40.722328, 28.816532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503109, 40.426968, 28.547085>,  <30.495504, 40.249752, 28.385416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503109, 40.426968, 28.547085>,  <30.515785, 40.722328, 28.816532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503109, 40.426968, 28.547085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403086, 0.626160, -0.667417,
		0.914613, 0.250376, -0.317482,
		-0.031689, -0.738401, -0.673617,
		30.493603, 40.205448, 28.344999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735111, 41.040623, 28.229717>,  <30.515785, 40.722328, 28.816532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735111, 41.040623, 28.229717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528355, 40.708527, 28.146271>,  <30.404301, 40.509270, 28.096203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528355, 40.708527, 28.146271>,  <30.735111, 41.040623, 28.229717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528355, 40.708527, 28.146271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526936, 0.500635, -0.686806,
		0.674656, -0.245077, -0.696259,
		-0.516892, -0.830242, -0.208617,
		30.373287, 40.459454, 28.083687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633215, 41.070358, 27.451082>,  <30.735111, 41.040623, 28.229717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633215, 41.070358, 27.451082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363735, 40.804871, 27.581072>,  <30.202047, 40.645576, 27.659065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363735, 40.804871, 27.581072>,  <30.633215, 41.070358, 27.451082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363735, 40.804871, 27.581072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612890, 0.256106, -0.747513,
		0.412910, -0.702772, -0.579324,
		-0.673700, -0.663717, 0.324973,
		30.161625, 40.605755, 27.678564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344919, 40.964222, 26.828981>,  <30.633215, 41.070358, 27.451082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344919, 40.964222, 26.828981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094881, 40.793640, 27.090483>,  <29.944859, 40.691292, 27.247383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094881, 40.793640, 27.090483>,  <30.344919, 40.964222, 26.828981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094881, 40.793640, 27.090483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763724, 0.161193, -0.625094,
		0.161193, -0.890031, -0.426453,
		0.625094, 0.426453, -0.653755,
		29.907352, 40.665703, 27.286610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984722, 40.392853, 26.429983>,  <30.344919, 40.964222, 26.828981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984722, 40.392853, 26.429983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779882, 40.525635, 26.746859>,  <29.656979, 40.605305, 26.936983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779882, 40.525635, 26.746859>,  <29.984722, 40.392853, 26.429983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779882, 40.525635, 26.746859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767549, 0.237103, -0.595526,
		-0.385518, -0.913010, 0.133373,
		-0.512098, 0.331956, 0.792187,
		29.626253, 40.625221, 26.984514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366674, 40.183437, 26.254660>,  <29.984722, 40.392853, 26.429983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366674, 40.183437, 26.254660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292727, 40.487572, 26.503727>,  <29.248358, 40.670052, 26.653168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292727, 40.487572, 26.503727>,  <29.366674, 40.183437, 26.254660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292727, 40.487572, 26.503727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767800, 0.283740, -0.574435,
		-0.613438, -0.584280, 0.531329,
		-0.184871, 0.760334, 0.622667,
		29.237265, 40.715672, 26.690527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606619, 40.189198, 26.332680>,  <29.366674, 40.183437, 26.254660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606619, 40.189198, 26.332680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758251, 40.547592, 26.425200>,  <28.849232, 40.762630, 26.480711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758251, 40.547592, 26.425200>,  <28.606619, 40.189198, 26.332680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758251, 40.547592, 26.425200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760828, 0.444062, -0.473233,
		-0.526723, 0.003415, 0.850030,
		0.379083, 0.895990, 0.231299,
		28.871977, 40.816387, 26.494589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039427, 40.584148, 26.409719>,  <28.606619, 40.189198, 26.332680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039427, 40.584148, 26.409719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336716, 40.845154, 26.350597>,  <28.515089, 41.001755, 26.315125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336716, 40.845154, 26.350597>,  <28.039427, 40.584148, 26.409719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336716, 40.845154, 26.350597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594559, 0.542860, -0.593129,
		-0.306786, 0.528707, 0.791424,
		0.743224, 0.652512, -0.147806,
		28.559683, 41.040909, 26.306255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695616, 41.208084, 26.360336>,  <28.039427, 40.584148, 26.409719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695616, 41.208084, 26.360336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059689, 41.299660, 26.222260>,  <28.278131, 41.354603, 26.139414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059689, 41.299660, 26.222260>,  <27.695616, 41.208084, 26.360336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059689, 41.299660, 26.222260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413253, 0.558457, -0.719269,
		0.028108, 0.797317, 0.602905,
		0.910183, 0.228935, -0.345190,
		28.332743, 41.368340, 26.118702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732506, 41.872807, 26.354712>,  <27.695616, 41.208084, 26.360336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732506, 41.872807, 26.354712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997879, 41.765526, 26.075306>,  <28.157103, 41.701157, 25.907663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997879, 41.765526, 26.075306>,  <27.732506, 41.872807, 26.354712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997879, 41.765526, 26.075306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391242, 0.671413, -0.629392,
		0.637798, 0.690848, 0.340504,
		0.663433, -0.268205, -0.698514,
		28.196909, 41.685062, 25.865751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061163, 42.577133, 26.113008>,  <27.732506, 41.872807, 26.354712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061163, 42.577133, 26.113008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178442, 42.371033, 25.790878>,  <28.248810, 42.247372, 25.597601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178442, 42.371033, 25.790878>,  <28.061163, 42.577133, 26.113008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178442, 42.371033, 25.790878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352584, 0.724696, -0.592031,
		0.888661, 0.457528, 0.030811,
		0.293199, -0.515252, -0.805326,
		28.266401, 42.216457, 25.549280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435883, 43.100555, 25.732973>,  <28.061163, 42.577133, 26.113008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435883, 43.100555, 25.732973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384895, 42.802937, 25.470633>,  <28.354303, 42.624363, 25.313229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384895, 42.802937, 25.470633>,  <28.435883, 43.100555, 25.732973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384895, 42.802937, 25.470633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343564, 0.653433, -0.674529,
		0.930438, 0.139345, -0.338922,
		-0.127470, -0.744049, -0.655853,
		28.346655, 42.579723, 25.273876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846657, 43.335541, 25.094746>,  <28.435883, 43.100555, 25.732973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846657, 43.335541, 25.094746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593723, 43.063095, 24.947107>,  <28.441963, 42.899628, 24.858524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593723, 43.063095, 24.947107>,  <28.846657, 43.335541, 25.094746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593723, 43.063095, 24.947107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268747, 0.639716, -0.720096,
		0.726590, -0.356146, -0.587561,
		-0.632331, -0.681119, -0.369098,
		28.404024, 42.858761, 24.836378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078259, 43.371212, 24.414223>,  <28.846657, 43.335541, 25.094746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078259, 43.371212, 24.414223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697767, 43.252750, 24.448757>,  <28.469473, 43.181671, 24.469479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697767, 43.252750, 24.448757>,  <29.078259, 43.371212, 24.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697767, 43.252750, 24.448757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285082, 0.737007, -0.612821,
		0.117861, -0.607546, -0.785491,
		-0.951229, -0.296157, 0.086336,
		28.412399, 43.163902, 24.474657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916824, 43.398846, 23.765148>,  <29.078259, 43.371212, 24.414223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916824, 43.398846, 23.765148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554417, 43.384266, 23.933815>,  <28.336971, 43.375519, 24.035015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554417, 43.384266, 23.933815>,  <28.916824, 43.398846, 23.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554417, 43.384266, 23.933815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321109, 0.708226, -0.628732,
		-0.275717, -0.705044, -0.653371,
		-0.906018, -0.036451, 0.421666,
		28.282612, 43.373329, 24.060314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424568, 43.563595, 23.139158>,  <28.916824, 43.398846, 23.765148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424568, 43.563595, 23.139158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250111, 43.621643, 23.494398>,  <28.145437, 43.656471, 23.707542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250111, 43.621643, 23.494398>,  <28.424568, 43.563595, 23.139158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250111, 43.621643, 23.494398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351671, 0.880941, -0.316654,
		-0.828316, -0.450425, -0.333182,
		-0.436143, 0.145119, 0.888099,
		28.119268, 43.665180, 23.760828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768202, 43.548492, 22.978371>,  <28.424568, 43.563595, 23.139158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768202, 43.548492, 22.978371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804317, 43.746925, 23.323797>,  <27.825987, 43.865986, 23.531054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804317, 43.746925, 23.323797>,  <27.768202, 43.548492, 22.978371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804317, 43.746925, 23.323797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373868, 0.820573, -0.432299,
		-0.923077, -0.283829, 0.259558,
		0.090287, 0.496085, 0.863567,
		27.831404, 43.895752, 23.582867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169405, 43.892555, 23.085758>,  <27.768202, 43.548492, 22.978371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169405, 43.892555, 23.085758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390682, 44.096577, 23.349218>,  <27.523449, 44.218990, 23.507296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390682, 44.096577, 23.349218>,  <27.169405, 43.892555, 23.085758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390682, 44.096577, 23.349218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415429, 0.854229, -0.312589,
		-0.722077, -0.100701, 0.684445,
		0.553195, 0.510052, 0.658652,
		27.556641, 44.249592, 23.546814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703936, 44.251438, 23.466486>,  <27.169405, 43.892555, 23.085758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703936, 44.251438, 23.466486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066902, 44.413204, 23.420801>,  <27.284681, 44.510265, 23.393391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066902, 44.413204, 23.420801>,  <26.703936, 44.251438, 23.466486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066902, 44.413204, 23.420801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420115, 0.879551, -0.223368,
		0.010120, 0.250669, 0.968020,
		0.907415, 0.404419, -0.114211,
		27.339127, 44.534531, 23.386538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806250, 44.968063, 23.903461>,  <26.703936, 44.251438, 23.466486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806250, 44.968063, 23.903461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991825, 44.949451, 23.549604>,  <27.103170, 44.938286, 23.337290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991825, 44.949451, 23.549604>,  <26.806250, 44.968063, 23.903461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991825, 44.949451, 23.549604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435819, 0.857423, -0.273658,
		0.771248, 0.512505, 0.377512,
		0.463938, -0.046531, -0.884645,
		27.131006, 44.935493, 23.284210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318020, 45.373703, 23.881001>,  <26.806250, 44.968063, 23.903461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318020, 45.373703, 23.881001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183596, 45.307217, 23.510178>,  <27.102942, 45.267323, 23.287683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183596, 45.307217, 23.510178>,  <27.318020, 45.373703, 23.881001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183596, 45.307217, 23.510178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382992, 0.923365, -0.026723,
		0.860454, 0.346074, -0.373968,
		-0.336061, -0.166220, -0.927057,
		27.082777, 45.257351, 23.232061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676571, 45.600918, 24.437723>,  <27.318020, 45.373703, 23.881001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676571, 45.600918, 24.437723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806522, 45.962841, 24.547829>,  <27.884493, 46.179996, 24.613892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806522, 45.962841, 24.547829>,  <27.676571, 45.600918, 24.437723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806522, 45.962841, 24.547829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835922, 0.410854, -0.363914,
		-0.442367, -0.111872, 0.889829,
		0.324878, 0.904811, 0.275265,
		27.903986, 46.234283, 24.630407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157734, 45.891190, 24.856180>,  <27.676571, 45.600918, 24.437723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157734, 45.891190, 24.856180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365704, 46.202450, 24.715239>,  <27.490486, 46.389206, 24.630674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365704, 46.202450, 24.715239>,  <27.157734, 45.891190, 24.856180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365704, 46.202450, 24.715239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843541, 0.402717, -0.355328,
		-0.134601, 0.481970, 0.865788,
		0.519925, 0.778154, -0.352355,
		27.521681, 46.435898, 24.609531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932035, 46.271748, 24.114758>,  <27.157734, 45.891190, 24.856180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932035, 46.271748, 24.114758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869301, 46.659756, 24.040508>,  <26.831659, 46.892563, 23.995958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869301, 46.659756, 24.040508>,  <26.932035, 46.271748, 24.114758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869301, 46.659756, 24.040508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944252, 0.202364, 0.259684,
		0.289463, -0.134546, -0.947686,
		-0.156838, 0.970024, -0.185623,
		26.822248, 46.950764, 23.984821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360449, 46.443153, 23.613705>,  <26.932035, 46.271748, 24.114758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360449, 46.443153, 23.613705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270245, 46.772575, 23.821896>,  <27.216122, 46.970230, 23.946810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270245, 46.772575, 23.821896>,  <27.360449, 46.443153, 23.613705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270245, 46.772575, 23.821896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943946, 0.052515, 0.325895,
		0.241061, 0.564794, -0.789238,
		-0.225511, 0.823559, 0.520476,
		27.202591, 47.019642, 23.978039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866398, 47.070450, 23.561916>,  <27.360449, 46.443153, 23.613705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866398, 47.070450, 23.561916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683033, 47.011360, 23.912466>,  <27.573013, 46.975906, 24.122797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683033, 47.011360, 23.912466>,  <27.866398, 47.070450, 23.561916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683033, 47.011360, 23.912466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886130, -0.151484, 0.437980,
		0.068055, 0.977358, 0.200349,
		-0.458413, -0.147729, 0.876375,
		27.545509, 46.967041, 24.175379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259798, 47.470436, 24.093748>,  <27.866398, 47.070450, 23.561916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259798, 47.470436, 24.093748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061811, 47.157883, 24.245770>,  <27.943020, 46.970348, 24.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061811, 47.157883, 24.245770>,  <28.259798, 47.470436, 24.093748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061811, 47.157883, 24.245770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790929, -0.224057, 0.569411,
		-0.359777, 0.582436, 0.728923,
		-0.494966, -0.781388, 0.380055,
		27.913322, 46.923466, 24.359787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467239, 47.441387, 24.779419>,  <28.259798, 47.470436, 24.093748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467239, 47.441387, 24.779419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301413, 47.084267, 24.708937>,  <28.201916, 46.869995, 24.666647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301413, 47.084267, 24.708937>,  <28.467239, 47.441387, 24.779419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301413, 47.084267, 24.708937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485675, -0.380812, 0.786830,
		-0.769580, 0.240616, 0.591481,
		-0.414567, -0.892797, -0.176204,
		28.177042, 46.816429, 24.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343391, 47.187160, 25.502813>,  <28.467239, 47.441387, 24.779419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343391, 47.187160, 25.502813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327194, 46.870338, 25.259171>,  <28.317476, 46.680244, 25.112984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327194, 46.870338, 25.259171>,  <28.343391, 47.187160, 25.502813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327194, 46.870338, 25.259171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602376, -0.505720, 0.617568,
		-0.797184, -0.341906, 0.497591,
		-0.040492, -0.792053, -0.609108,
		28.315046, 46.632721, 25.076439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978359, 46.567791, 25.885996>,  <28.343391, 47.187160, 25.502813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978359, 46.567791, 25.885996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230768, 46.433529, 25.606241>,  <28.382214, 46.352970, 25.438389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230768, 46.433529, 25.606241>,  <27.978359, 46.567791, 25.885996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230768, 46.433529, 25.606241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395232, -0.636667, 0.662153,
		-0.667536, -0.694253, -0.269087,
		0.631021, -0.335660, -0.699389,
		28.420076, 46.332832, 25.396425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824867, 45.920856, 25.846243>,  <27.978359, 46.567791, 25.885996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824867, 45.920856, 25.846243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202650, 45.954647, 25.719208>,  <28.429319, 45.974922, 25.642986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202650, 45.954647, 25.719208>,  <27.824867, 45.920856, 25.846243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202650, 45.954647, 25.719208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302071, -0.603744, 0.737731,
		-0.129422, -0.792690, -0.595728,
		0.944459, 0.084473, -0.317586,
		28.485989, 45.979988, 25.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041964, 45.215839, 25.874964>,  <27.824867, 45.920856, 25.846243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041964, 45.215839, 25.874964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361555, 45.456375, 25.876793>,  <28.553310, 45.600697, 25.877890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361555, 45.456375, 25.876793>,  <28.041964, 45.215839, 25.874964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361555, 45.456375, 25.876793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407077, -0.546429, 0.731918,
		0.442632, -0.582925, -0.681378,
		0.798978, 0.601344, 0.004571,
		28.601248, 45.636780, 25.878164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516289, 44.729996, 25.888491>,  <28.041964, 45.215839, 25.874964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516289, 44.729996, 25.888491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695171, 45.071449, 25.995308>,  <28.802502, 45.276321, 26.059399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695171, 45.071449, 25.995308>,  <28.516289, 44.729996, 25.888491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695171, 45.071449, 25.995308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545372, -0.496885, 0.675037,
		0.708926, -0.156243, -0.687759,
		0.447207, 0.853636, 0.267044,
		28.829334, 45.327541, 26.075420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110950, 44.499775, 26.011604>,  <28.516289, 44.729996, 25.888491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110950, 44.499775, 26.011604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127554, 44.852982, 26.198606>,  <29.137516, 45.064903, 26.310808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127554, 44.852982, 26.198606>,  <29.110950, 44.499775, 26.011604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127554, 44.852982, 26.198606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644033, -0.381379, 0.663153,
		0.763871, 0.273563, -0.584521,
		0.041510, 0.883014, 0.467508,
		29.140007, 45.117886, 26.338860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802343, 44.577183, 26.110579>,  <29.110950, 44.499775, 26.011604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802343, 44.577183, 26.110579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613686, 44.806999, 26.378145>,  <29.500490, 44.944889, 26.538685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613686, 44.806999, 26.378145>,  <29.802343, 44.577183, 26.110579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613686, 44.806999, 26.378145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603895, -0.342311, 0.719815,
		0.642543, 0.743453, -0.185514,
		-0.471646, 0.574543, 0.668917,
		29.472193, 44.979362, 26.578821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285513, 44.925655, 26.510361>,  <29.802343, 44.577183, 26.110579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285513, 44.925655, 26.510361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961014, 44.945675, 26.743382>,  <29.766314, 44.957687, 26.883194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961014, 44.945675, 26.743382>,  <30.285513, 44.925655, 26.510361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961014, 44.945675, 26.743382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512255, -0.419524, 0.749396,
		0.281902, 0.906364, 0.314700,
		-0.811249, 0.050050, 0.582554,
		29.717638, 44.960690, 26.918148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551188, 45.227802, 27.107664>,  <30.285513, 44.925655, 26.510361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551188, 45.227802, 27.107664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229738, 45.005409, 27.192585>,  <30.036869, 44.871975, 27.243538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229738, 45.005409, 27.192585>,  <30.551188, 45.227802, 27.107664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229738, 45.005409, 27.192585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467286, -0.368555, 0.803624,
		-0.368555, 0.745018, 0.555982,
		-0.803624, -0.555982, 0.212304,
		29.988651, 44.838615, 27.256277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563671, 45.132923, 27.852930>,  <30.551188, 45.227802, 27.107664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563671, 45.132923, 27.852930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311399, 44.846832, 27.732470>,  <30.160036, 44.675179, 27.660192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311399, 44.846832, 27.732470>,  <30.563671, 45.132923, 27.852930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311399, 44.846832, 27.732470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251695, -0.555601, 0.792437,
		-0.734095, 0.423974, 0.530425,
		-0.630678, -0.715229, -0.301152,
		30.122196, 44.632263, 27.642124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056282, 45.029488, 28.382843>,  <30.563671, 45.132923, 27.852930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056282, 45.029488, 28.382843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074589, 44.688198, 28.175030>,  <30.085573, 44.483425, 28.050341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074589, 44.688198, 28.175030>,  <30.056282, 45.029488, 28.382843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074589, 44.688198, 28.175030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177000, -0.504925, 0.844821,
		-0.983146, -0.130624, 0.127911,
		0.045769, -0.853222, -0.519535,
		30.088320, 44.432232, 28.019169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616329, 44.496010, 28.859213>,  <30.056282, 45.029488, 28.382843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616329, 44.496010, 28.859213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826109, 44.287979, 28.589552>,  <29.951977, 44.163162, 28.427755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826109, 44.287979, 28.589552>,  <29.616329, 44.496010, 28.859213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826109, 44.287979, 28.589552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239517, -0.669688, 0.702958,
		-0.817060, -0.530135, -0.226649,
		0.524446, -0.520073, -0.674151,
		29.983442, 44.131958, 28.387306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336281, 43.770611, 28.834373>,  <29.616329, 44.496010, 28.859213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336281, 43.770611, 28.834373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699343, 43.720646, 28.674093>,  <29.917179, 43.690666, 28.577925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699343, 43.720646, 28.674093>,  <29.336281, 43.770611, 28.834373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699343, 43.720646, 28.674093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123970, -0.832313, 0.540264,
		-0.400993, -0.540048, -0.739968,
		0.907654, -0.124908, -0.400702,
		29.971640, 43.683174, 28.553883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348175, 43.134609, 28.834976>,  <29.336281, 43.770611, 28.834373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348175, 43.134609, 28.834976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736437, 43.211319, 28.776932>,  <29.969393, 43.257343, 28.742105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736437, 43.211319, 28.776932>,  <29.348175, 43.134609, 28.834976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736437, 43.211319, 28.776932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240250, -0.800020, 0.549770,
		-0.010663, -0.568499, -0.822615,
		0.970653, 0.191771, -0.145112,
		30.027632, 43.268852, 28.733398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577707, 42.454601, 28.674849>,  <29.348175, 43.134609, 28.834976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577707, 42.454601, 28.674849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890118, 42.683136, 28.775707>,  <30.077564, 42.820255, 28.836222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890118, 42.683136, 28.775707>,  <29.577707, 42.454601, 28.674849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890118, 42.683136, 28.775707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391760, -0.762670, 0.514645,
		0.486339, -0.303169, -0.819489,
		0.781024, 0.571335, 0.252147,
		30.124424, 42.854538, 28.851351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131149, 42.088547, 28.599253>,  <29.577707, 42.454601, 28.674849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131149, 42.088547, 28.599253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253292, 42.359146, 28.867315>,  <30.326578, 42.521507, 29.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253292, 42.359146, 28.867315>,  <30.131149, 42.088547, 28.599253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253292, 42.359146, 28.867315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277084, -0.736440, 0.617155,
		0.911033, -0.002763, -0.412323,
		0.305357, 0.676497, 0.670156,
		30.344898, 42.562096, 29.068361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727463, 41.858383, 28.867422>,  <30.131149, 42.088547, 28.599253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727463, 41.858383, 28.867422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603588, 42.128387, 29.135290>,  <30.529263, 42.290390, 29.296011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603588, 42.128387, 29.135290>,  <30.727463, 41.858383, 28.867422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603588, 42.128387, 29.135290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286935, -0.605115, 0.742633,
		0.906511, 0.422135, -0.006287,
		-0.309687, 0.675009, 0.669669,
		30.510681, 42.330891, 29.336191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254997, 41.787918, 29.388205>,  <30.727463, 41.858383, 28.867422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254997, 41.787918, 29.388205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956503, 41.970642, 29.581890>,  <30.777407, 42.080276, 29.698101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956503, 41.970642, 29.581890>,  <31.254997, 41.787918, 29.388205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956503, 41.970642, 29.581890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149747, -0.593553, 0.790740,
		0.648622, 0.662587, 0.374524,
		-0.746234, 0.456808, 0.484212,
		30.732632, 42.107685, 29.727154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481440, 41.863270, 30.048988>,  <31.254997, 41.787918, 29.388205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481440, 41.863270, 30.048988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082891, 41.876427, 30.080393>,  <30.843763, 41.884323, 30.099236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082891, 41.876427, 30.080393>,  <31.481440, 41.863270, 30.048988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082891, 41.876427, 30.080393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034221, -0.689702, 0.723284,
		0.077943, 0.723345, 0.686073,
		-0.996370, 0.032897, 0.078512,
		30.783981, 41.886295, 30.103947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263775, 42.014721, 30.778074>,  <31.481440, 41.863270, 30.048988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263775, 42.014721, 30.778074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917669, 41.865963, 30.643606>,  <30.710007, 41.776707, 30.562925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917669, 41.865963, 30.643606>,  <31.263775, 42.014721, 30.778074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917669, 41.865963, 30.643606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099524, -0.784658, 0.611887,
		-0.491338, 0.495987, 0.715950,
		-0.865264, -0.371897, -0.336169,
		30.658091, 41.754395, 30.542755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949547, 41.894264, 31.379108>,  <31.263775, 42.014721, 30.778074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949547, 41.894264, 31.379108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772854, 41.674381, 31.095507>,  <30.666838, 41.542450, 30.925344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772854, 41.674381, 31.095507>,  <30.949547, 41.894264, 31.379108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772854, 41.674381, 31.095507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108057, -0.817137, 0.566224,
		-0.890615, 0.173507, 0.420358,
		-0.441734, -0.549710, -0.709006,
		30.640333, 41.509468, 30.882805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604527, 41.363663, 31.818567>,  <30.949547, 41.894264, 31.379108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604527, 41.363663, 31.818567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571686, 41.205360, 31.452696>,  <30.551981, 41.110378, 31.233173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571686, 41.205360, 31.452696>,  <30.604527, 41.363663, 31.818567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571686, 41.205360, 31.452696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212472, -0.903626, 0.371907,
		-0.973712, -0.163809, 0.158277,
		-0.082102, -0.395759, -0.914677,
		30.547056, 41.086632, 31.178293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114542, 40.895885, 31.796669>,  <30.604527, 41.363663, 31.818567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114542, 40.895885, 31.796669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380262, 40.812424, 31.509569>,  <30.539694, 40.762344, 31.337309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380262, 40.812424, 31.509569>,  <30.114542, 40.895885, 31.796669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380262, 40.812424, 31.509569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344129, -0.767048, 0.541491,
		-0.663535, -0.606712, -0.437746,
		0.664301, -0.208657, -0.717750,
		30.579554, 40.749825, 31.294245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108910, 40.212353, 31.770830>,  <30.114542, 40.895885, 31.796669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108910, 40.212353, 31.770830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452166, 40.309132, 31.589697>,  <30.658119, 40.367199, 31.481016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452166, 40.309132, 31.589697>,  <30.108910, 40.212353, 31.770830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452166, 40.309132, 31.589697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461957, -0.748734, 0.475388,
		-0.224035, -0.617139, -0.754286,
		0.858140, 0.241944, -0.452834,
		30.709608, 40.381714, 31.453846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293362, 39.550571, 31.617754>,  <30.108910, 40.212353, 31.770830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293362, 39.550571, 31.617754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628748, 39.767185, 31.593365>,  <30.829979, 39.897152, 31.578732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628748, 39.767185, 31.593365>,  <30.293362, 39.550571, 31.617754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628748, 39.767185, 31.593365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518689, -0.758720, 0.394087,
		0.167152, -0.362054, -0.917048,
		0.838464, 0.541536, -0.060972,
		30.880287, 39.929646, 31.575073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908590, 39.048737, 31.551407>,  <30.293362, 39.550571, 31.617754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908590, 39.048737, 31.551407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084778, 39.396648, 31.640379>,  <31.190491, 39.605396, 31.693762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084778, 39.396648, 31.640379>,  <30.908590, 39.048737, 31.551407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084778, 39.396648, 31.640379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768021, -0.493362, 0.408334,
		0.464899, -0.009027, -0.885318,
		0.440468, 0.869777, 0.222431,
		31.216919, 39.657581, 31.707108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652161, 38.905331, 31.466492>,  <30.908590, 39.048737, 31.551407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652161, 38.905331, 31.466492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603830, 39.229130, 31.696312>,  <31.574831, 39.423409, 31.834204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603830, 39.229130, 31.696312>,  <31.652161, 38.905331, 31.466492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603830, 39.229130, 31.696312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796319, -0.266531, 0.542989,
		0.592686, 0.523134, -0.612417,
		-0.120827, 0.809501, 0.574551,
		31.567581, 39.471981, 31.868677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298649, 39.184666, 31.580683>,  <31.652161, 38.905331, 31.466492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298649, 39.184666, 31.580683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121078, 39.363487, 31.891314>,  <32.014538, 39.470779, 32.077694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121078, 39.363487, 31.891314>,  <32.298649, 39.184666, 31.580683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121078, 39.363487, 31.891314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684592, -0.389970, 0.615838,
		0.578155, 0.805026, -0.132932,
		-0.443926, 0.447054, 0.776577,
		31.987900, 39.497604, 32.124287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824806, 39.406754, 31.973362>,  <32.298649, 39.184666, 31.580683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824806, 39.406754, 31.973362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506050, 39.423828, 32.214405>,  <32.314796, 39.434074, 32.359032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506050, 39.423828, 32.214405>,  <32.824806, 39.406754, 31.973362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506050, 39.423828, 32.214405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554635, -0.343688, 0.757799,
		0.239457, 0.938113, 0.250208,
		-0.796894, 0.042686, 0.602609,
		32.266983, 39.436634, 32.395187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021519, 39.728939, 32.580471>,  <32.824806, 39.406754, 31.973362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021519, 39.728939, 32.580471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708344, 39.503998, 32.686886>,  <32.520439, 39.369034, 32.750732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708344, 39.503998, 32.686886>,  <33.021519, 39.728939, 32.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708344, 39.503998, 32.686886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556397, -0.441699, 0.703792,
		-0.278272, 0.699044, 0.658712,
		-0.782935, -0.562351, 0.266034,
		32.473461, 39.335293, 32.766697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173779, 39.662647, 33.285812>,  <33.021519, 39.728939, 32.580471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173779, 39.662647, 33.285812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927670, 39.362411, 33.189430>,  <32.780006, 39.182270, 33.131599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927670, 39.362411, 33.189430>,  <33.173779, 39.662647, 33.285812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927670, 39.362411, 33.189430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515726, -0.614426, 0.597082,
		-0.596214, 0.243097, 0.765136,
		-0.615268, -0.750589, -0.240958,
		32.743088, 39.137234, 33.117142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868248, 39.474403, 33.941818>,  <33.173779, 39.662647, 33.285812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868248, 39.474403, 33.941818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805630, 39.165604, 33.695400>,  <32.768059, 38.980324, 33.547550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805630, 39.165604, 33.695400>,  <32.868248, 39.474403, 33.941818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805630, 39.165604, 33.695400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528480, -0.592403, 0.608086,
		-0.834388, -0.230375, 0.500723,
		-0.156542, -0.772002, -0.616042,
		32.758667, 38.934002, 33.510586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704254, 38.948021, 34.338848>,  <32.868248, 39.474403, 33.941818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704254, 38.948021, 34.338848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855705, 38.776375, 34.010822>,  <32.946575, 38.673389, 33.814007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855705, 38.776375, 34.010822>,  <32.704254, 38.948021, 34.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855705, 38.776375, 34.010822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591081, -0.569705, 0.571016,
		-0.712223, -0.700927, 0.037931,
		0.378631, -0.429111, -0.820062,
		32.969296, 38.647640, 33.764805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748425, 38.241684, 34.485592>,  <32.704254, 38.948021, 34.338848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748425, 38.241684, 34.485592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020729, 38.316601, 34.202328>,  <33.184113, 38.361553, 34.032372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020729, 38.316601, 34.202328>,  <32.748425, 38.241684, 34.485592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020729, 38.316601, 34.202328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673110, -0.541298, 0.503903,
		-0.288945, -0.819705, -0.494565,
		0.680759, 0.187297, -0.708157,
		33.224957, 38.372791, 33.989880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071434, 37.619415, 34.483845>,  <32.748425, 38.241684, 34.485592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071434, 37.619415, 34.483845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332371, 37.855961, 34.294224>,  <33.488934, 37.997890, 34.180450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332371, 37.855961, 34.294224>,  <33.071434, 37.619415, 34.483845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332371, 37.855961, 34.294224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716416, -0.276975, 0.640338,
		0.247373, -0.757344, -0.604348,
		0.652346, 0.591367, -0.474057,
		33.528076, 38.033371, 34.152008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661327, 37.209740, 34.067158>,  <33.071434, 37.619415, 34.483845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661327, 37.209740, 34.067158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753777, 37.568901, 34.217007>,  <33.809246, 37.784397, 34.306915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753777, 37.568901, 34.217007>,  <33.661327, 37.209740, 34.067158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753777, 37.568901, 34.217007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732025, -0.414128, 0.540961,
		0.640875, 0.149205, -0.753005,
		0.231126, 0.897906, 0.374626,
		33.823116, 37.838272, 34.329395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386288, 37.189751, 34.167389>,  <33.661327, 37.209740, 34.067158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386288, 37.189751, 34.167389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305279, 37.517620, 34.381721>,  <34.256676, 37.714344, 34.510323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305279, 37.517620, 34.381721>,  <34.386288, 37.189751, 34.167389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305279, 37.517620, 34.381721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765988, -0.208315, 0.608167,
		0.610122, 0.533608, -0.585674,
		-0.202518, 0.819675, 0.535835,
		34.244522, 37.763523, 34.542473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032974, 37.402931, 34.314243>,  <34.386288, 37.189751, 34.167389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032974, 37.402931, 34.314243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 37.639874, 34.559162>,  <34.697842, 37.782040, 34.706116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823517, 37.639874, 34.559162>,  <35.032974, 37.402931, 34.314243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823517, 37.639874, 34.559162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773391, 0.029093, 0.633261,
		0.357304, 0.805149, -0.473359,
		-0.523642, 0.592358, 0.612300,
		34.666424, 37.817581, 34.742851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420822, 37.959614, 34.534622>,  <35.032974, 37.402931, 34.314243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420822, 37.959614, 34.534622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144516, 37.944885, 34.823479>,  <34.978733, 37.936050, 34.996792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144516, 37.944885, 34.823479>,  <35.420822, 37.959614, 34.534622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144516, 37.944885, 34.823479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720760, 0.044811, 0.691735,
		-0.057828, 0.998317, -0.004418,
		-0.690769, -0.036817, 0.722138,
		34.937286, 37.933842, 35.040119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992188, 38.399254, 34.309921>,  <35.420822, 37.959614, 34.534622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992188, 38.399254, 34.309921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381199, 38.309544, 34.284985>,  <36.614605, 38.255718, 34.270023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381199, 38.309544, 34.284985>,  <35.992188, 38.399254, 34.309921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381199, 38.309544, 34.284985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107742, 0.671079, -0.733516,
		0.206348, 0.706649, 0.676808,
		0.972529, -0.224280, -0.062340,
		36.672958, 38.242260, 34.266281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395054, 39.099606, 34.147205>,  <35.992188, 38.399254, 34.309921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395054, 39.099606, 34.147205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671051, 38.822197, 34.064312>,  <36.836647, 38.655754, 34.014576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671051, 38.822197, 34.064312>,  <36.395054, 39.099606, 34.147205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671051, 38.822197, 34.064312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306519, 0.539329, -0.784328,
		0.655714, 0.477657, 0.584708,
		0.689989, -0.693519, -0.207234,
		36.878048, 38.614140, 34.002140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088470, 39.350311, 34.101158>,  <36.395054, 39.099606, 34.147205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088470, 39.350311, 34.101158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119167, 39.015392, 33.884628>,  <37.137585, 38.814438, 33.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119167, 39.015392, 33.884628>,  <37.088470, 39.350311, 34.101158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119167, 39.015392, 33.884628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193958, 0.545093, -0.815631,
		0.978004, -0.042405, 0.204232,
		0.076739, -0.837302, -0.541328,
		37.142189, 38.764202, 33.722229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694305, 39.351955, 33.799866>,  <37.088470, 39.350311, 34.101158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694305, 39.351955, 33.799866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456116, 39.120686, 33.576752>,  <37.313202, 38.981922, 33.442883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456116, 39.120686, 33.576752>,  <37.694305, 39.351955, 33.799866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456116, 39.120686, 33.576752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076077, 0.650599, -0.755601,
		0.799767, -0.492372, -0.343427,
		-0.595471, -0.578178, -0.557786,
		37.277473, 38.947231, 33.409416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074860, 39.159077, 33.174305>,  <37.694305, 39.351955, 33.799866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074860, 39.159077, 33.174305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698650, 39.086239, 33.059582>,  <37.472923, 39.042538, 32.990749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698650, 39.086239, 33.059582>,  <38.074860, 39.159077, 33.174305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698650, 39.086239, 33.059582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178887, 0.452260, -0.873762,
		0.288818, -0.873099, -0.392787,
		-0.940523, -0.182094, -0.286807,
		37.416492, 39.031612, 32.973541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124664, 39.167519, 32.457386>,  <38.074860, 39.159077, 33.174305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124664, 39.167519, 32.457386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728951, 39.168419, 32.515778>,  <37.491524, 39.168961, 32.550812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728951, 39.168419, 32.515778>,  <38.124664, 39.167519, 32.457386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728951, 39.168419, 32.515778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124532, 0.508920, -0.851758,
		-0.076211, -0.860811, -0.503187,
		-0.989284, 0.002251, 0.145984,
		37.432167, 39.169094, 32.559574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829063, 39.001125, 31.849352>,  <38.124664, 39.167519, 32.457386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829063, 39.001125, 31.849352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519279, 39.173645, 32.034473>,  <37.333408, 39.277157, 32.145546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519279, 39.173645, 32.034473>,  <37.829063, 39.001125, 31.849352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519279, 39.173645, 32.034473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205830, 0.519973, -0.829013,
		-0.598200, -0.737298, -0.313925,
		-0.774462, 0.431300, 0.462806,
		37.286942, 39.303036, 32.173317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376888, 38.959164, 31.360178>,  <37.829063, 39.001125, 31.849352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376888, 38.959164, 31.360178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230225, 39.234234, 31.610828>,  <37.142227, 39.399277, 31.761219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230225, 39.234234, 31.610828>,  <37.376888, 38.959164, 31.360178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230225, 39.234234, 31.610828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333621, 0.531552, -0.778556,
		-0.868479, -0.494522, 0.034524,
		-0.366662, 0.687677, 0.626625,
		37.120228, 39.440536, 31.798817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788990, 39.008057, 31.190126>,  <37.376888, 38.959164, 31.360178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788990, 39.008057, 31.190126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863518, 39.354134, 31.376343>,  <36.908234, 39.561779, 31.488073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863518, 39.354134, 31.376343>,  <36.788990, 39.008057, 31.190126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863518, 39.354134, 31.376343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471624, 0.494440, -0.730137,
		-0.861890, -0.083519, 0.500171,
		0.186324, 0.865190, 0.465542,
		36.919415, 39.613689, 31.516005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218338, 39.328941, 31.124779>,  <36.788990, 39.008057, 31.190126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218338, 39.328941, 31.124779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467628, 39.620911, 31.237062>,  <36.617203, 39.796093, 31.304434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467628, 39.620911, 31.237062>,  <36.218338, 39.328941, 31.124779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467628, 39.620911, 31.237062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536896, 0.660342, -0.525063,
		-0.568621, 0.176522, 0.803436,
		0.623228, 0.729924, 0.280710,
		36.654598, 39.839890, 31.321276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785294, 39.864468, 31.228100>,  <36.218338, 39.328941, 31.124779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785294, 39.864468, 31.228100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140671, 40.040436, 31.175739>,  <36.353897, 40.146015, 31.144323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140671, 40.040436, 31.175739>,  <35.785294, 39.864468, 31.228100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140671, 40.040436, 31.175739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426991, 0.687588, -0.587283,
		-0.168352, 0.577662, 0.798727,
		0.888446, 0.439920, -0.130899,
		36.407204, 40.172413, 31.136469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613522, 40.624634, 31.295429>,  <35.785294, 39.864468, 31.228100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613522, 40.624634, 31.295429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953075, 40.602863, 31.085123>,  <36.156807, 40.589802, 30.958939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953075, 40.602863, 31.085123>,  <35.613522, 40.624634, 31.295429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953075, 40.602863, 31.085123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367091, 0.654979, -0.660490,
		0.380312, 0.753685, 0.536024,
		0.848886, -0.054423, -0.525768,
		36.207741, 40.586536, 30.927393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771530, 41.320526, 31.132658>,  <35.613522, 40.624634, 31.295429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771530, 41.320526, 31.132658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997559, 41.126553, 30.865664>,  <36.133175, 41.010170, 30.705467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997559, 41.126553, 30.865664>,  <35.771530, 41.320526, 31.132658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997559, 41.126553, 30.865664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411233, 0.535827, -0.737412,
		0.715250, 0.691182, 0.103360,
		0.565070, -0.484929, -0.667488,
		36.167080, 40.981075, 30.665417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089565, 41.894245, 30.668282>,  <35.771530, 41.320526, 31.132658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089565, 41.894245, 30.668282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092506, 41.550453, 30.463831>,  <36.094273, 41.344177, 30.341162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092506, 41.550453, 30.463831>,  <36.089565, 41.894245, 30.668282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092506, 41.550453, 30.463831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481158, 0.445035, -0.755268,
		0.876603, 0.251487, -0.410271,
		0.007355, -0.859475, -0.511124,
		36.094711, 41.292610, 30.310493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312962, 42.115131, 29.849794>,  <36.089565, 41.894245, 30.668282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312962, 42.115131, 29.849794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118450, 41.767220, 29.883305>,  <36.001743, 41.558472, 29.903410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118450, 41.767220, 29.883305>,  <36.312962, 42.115131, 29.849794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118450, 41.767220, 29.883305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656162, 0.300160, -0.692355,
		0.577051, -0.391645, -0.716677,
		-0.486275, -0.869780, 0.083775,
		35.972569, 41.506287, 29.908438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954590, 42.161217, 29.117975>,  <36.312962, 42.115131, 29.849794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954590, 42.161217, 29.117975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789402, 41.893879, 29.365450>,  <35.690289, 41.733475, 29.513935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789402, 41.893879, 29.365450>,  <35.954590, 42.161217, 29.117975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789402, 41.893879, 29.365450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900220, 0.196570, -0.388541,
		0.138063, -0.717411, -0.682833,
		-0.412967, -0.668343, 0.618689,
		35.665512, 41.693375, 29.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568474, 41.746014, 28.679211>,  <35.954590, 42.161217, 29.117975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568474, 41.746014, 28.679211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405373, 41.746365, 29.044447>,  <35.307514, 41.746574, 29.263590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405373, 41.746365, 29.044447>,  <35.568474, 41.746014, 28.679211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405373, 41.746365, 29.044447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884589, 0.247532, -0.395260,
		-0.226366, -0.968879, -0.100158,
		-0.407751, 0.000875, 0.913093,
		35.283047, 41.746628, 29.318375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817532, 41.617252, 28.578239>,  <35.568474, 41.746014, 28.679211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817532, 41.617252, 28.578239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833740, 41.778580, 28.943905>,  <34.843464, 41.875378, 29.163303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833740, 41.778580, 28.943905>,  <34.817532, 41.617252, 28.578239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833740, 41.778580, 28.943905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929771, 0.350262, -0.113322,
		-0.365901, -0.845370, 0.389187,
		0.040519, 0.403320, 0.914162,
		34.845898, 41.899574, 29.218153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173958, 41.479389, 28.921297>,  <34.817532, 41.617252, 28.578239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173958, 41.479389, 28.921297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322800, 41.800468, 29.107723>,  <34.412106, 41.993114, 29.219578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322800, 41.800468, 29.107723>,  <34.173958, 41.479389, 28.921297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322800, 41.800468, 29.107723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899112, 0.436413, -0.033774,
		-0.230507, -0.406475, 0.884106,
		0.372107, 0.802696, 0.466063,
		34.434433, 42.041279, 29.247541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696465, 41.600342, 29.418392>,  <34.173958, 41.479389, 28.921297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696465, 41.600342, 29.418392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907795, 41.934494, 29.357727>,  <34.034595, 42.134987, 29.321327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907795, 41.934494, 29.357727>,  <33.696465, 41.600342, 29.418392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907795, 41.934494, 29.357727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808569, 0.440559, -0.390032,
		-0.259009, 0.328696, 0.908225,
		0.528329, 0.835384, -0.151665,
		34.066292, 42.185108, 29.312227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180592, 42.193462, 29.541182>,  <33.696465, 41.600342, 29.418392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180592, 42.193462, 29.541182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507851, 42.319389, 29.348713>,  <33.704205, 42.394947, 29.233232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507851, 42.319389, 29.348713>,  <33.180592, 42.193462, 29.541182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507851, 42.319389, 29.348713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558163, 0.635882, -0.533018,
		0.138164, 0.704658, 0.695965,
		0.818147, 0.314819, -0.481170,
		33.753296, 42.413834, 29.204361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174969, 42.894966, 29.522865>,  <33.180592, 42.193462, 29.541182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174969, 42.894966, 29.522865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415104, 42.821564, 29.211504>,  <33.559185, 42.777523, 29.024687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415104, 42.821564, 29.211504>,  <33.174969, 42.894966, 29.522865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415104, 42.821564, 29.211504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490336, 0.684456, -0.539528,
		0.631791, 0.705581, 0.320928,
		0.600342, -0.183506, -0.778406,
		33.595207, 42.766510, 28.977982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253307, 43.549084, 29.313221>,  <33.174969, 42.894966, 29.522865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253307, 43.549084, 29.313221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361832, 43.314774, 29.007736>,  <33.426949, 43.174187, 28.824446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361832, 43.314774, 29.007736>,  <33.253307, 43.549084, 29.313221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361832, 43.314774, 29.007736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373660, 0.667137, -0.644443,
		0.886999, 0.460215, -0.037877,
		0.271313, -0.585774, -0.763714,
		33.443226, 43.139042, 28.778622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406055, 44.006191, 28.783251>,  <33.253307, 43.549084, 29.313221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406055, 44.006191, 28.783251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314049, 43.664162, 28.597374>,  <33.258846, 43.458942, 28.485847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314049, 43.664162, 28.597374>,  <33.406055, 44.006191, 28.783251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314049, 43.664162, 28.597374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408210, 0.518229, -0.751534,
		0.883436, 0.016830, -0.468250,
		-0.230013, -0.855076, -0.464692,
		33.245045, 43.407639, 28.457966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570465, 44.110313, 28.081699>,  <33.406055, 44.006191, 28.783251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570465, 44.110313, 28.081699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301971, 43.813862, 28.076416>,  <33.140877, 43.635990, 28.073246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301971, 43.813862, 28.076416>,  <33.570465, 44.110313, 28.081699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301971, 43.813862, 28.076416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422457, 0.397134, -0.814748,
		0.609080, -0.541304, -0.579665,
		-0.671231, -0.741130, -0.013209,
		33.100601, 43.591522, 28.072454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640602, 43.783077, 27.453587>,  <33.570465, 44.110313, 28.081699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640602, 43.783077, 27.453587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280239, 43.676018, 27.590250>,  <33.064022, 43.611782, 27.672247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280239, 43.676018, 27.590250>,  <33.640602, 43.783077, 27.453587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280239, 43.676018, 27.590250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406864, 0.246781, -0.879523,
		0.151091, -0.931376, -0.331225,
		-0.900907, -0.267651, 0.341657,
		33.009968, 43.595722, 27.692747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426655, 43.408291, 26.943884>,  <33.640602, 43.783077, 27.453587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426655, 43.408291, 26.943884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108868, 43.548401, 27.142326>,  <32.918194, 43.632469, 27.261393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108868, 43.548401, 27.142326>,  <33.426655, 43.408291, 26.943884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108868, 43.548401, 27.142326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487131, 0.120259, -0.865009,
		-0.362655, -0.928893, 0.075089,
		-0.794471, 0.350278, 0.496106,
		32.870525, 43.653484, 27.291159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880749, 43.044189, 26.633997>,  <33.426655, 43.408291, 26.943884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880749, 43.044189, 26.633997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713329, 43.366726, 26.801153>,  <32.612877, 43.560246, 26.901447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713329, 43.366726, 26.801153>,  <32.880749, 43.044189, 26.633997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713329, 43.366726, 26.801153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469446, 0.201812, -0.859589,
		-0.777454, -0.555960, 0.294063,
		-0.418552, 0.806337, 0.417893,
		32.587765, 43.608627, 26.926521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205753, 43.029636, 26.433514>,  <32.880749, 43.044189, 26.633997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205753, 43.029636, 26.433514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221325, 43.408192, 26.561785>,  <32.230667, 43.635326, 26.638746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221325, 43.408192, 26.561785>,  <32.205753, 43.029636, 26.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221325, 43.408192, 26.561785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403742, 0.308452, -0.861307,
		-0.914044, -0.095944, 0.394104,
		0.038925, 0.946389, 0.320676,
		32.233002, 43.692108, 26.657988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573107, 43.447067, 26.148523>,  <32.205753, 43.029636, 26.433514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573107, 43.447067, 26.148523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832169, 43.745777, 26.209017>,  <31.987606, 43.925003, 26.245312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832169, 43.745777, 26.209017>,  <31.573107, 43.447067, 26.148523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832169, 43.745777, 26.209017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407151, 0.506969, -0.759744,
		-0.644027, 0.430478, 0.632391,
		0.647655, 0.746774, 0.151232,
		32.026466, 43.969810, 26.254387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158913, 44.009537, 26.063154>,  <31.573107, 43.447067, 26.148523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158913, 44.009537, 26.063154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532269, 44.143070, 26.010485>,  <31.756283, 44.223190, 25.978882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532269, 44.143070, 26.010485>,  <31.158913, 44.009537, 26.063154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532269, 44.143070, 26.010485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323831, 0.625394, -0.709941,
		-0.154653, 0.705292, 0.691842,
		0.933390, 0.333834, -0.131676,
		31.812286, 44.243221, 25.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064869, 44.774590, 26.072344>,  <31.158913, 44.009537, 26.063154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064869, 44.774590, 26.072344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390892, 44.679966, 25.860788>,  <31.586506, 44.623192, 25.733854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390892, 44.679966, 25.860788>,  <31.064869, 44.774590, 26.072344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390892, 44.679966, 25.860788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316014, 0.583600, -0.748028,
		0.485609, 0.776822, 0.400913,
		0.815057, -0.236555, -0.528889,
		31.635408, 44.609001, 25.702122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216068, 45.381638, 25.572714>,  <31.064869, 44.774590, 26.072344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216068, 45.381638, 25.572714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407021, 45.070911, 25.408438>,  <31.521591, 44.884476, 25.309872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407021, 45.070911, 25.408438>,  <31.216068, 45.381638, 25.572714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407021, 45.070911, 25.408438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197592, 0.360514, -0.911585,
		0.856193, 0.516320, 0.018609,
		0.477378, -0.776816, -0.410690,
		31.550234, 44.837868, 25.285231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541838, 45.656719, 25.061827>,  <31.216068, 45.381638, 25.572714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541838, 45.656719, 25.061827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552517, 45.271671, 24.954008>,  <31.558924, 45.040642, 24.889317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552517, 45.271671, 24.954008>,  <31.541838, 45.656719, 25.061827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552517, 45.271671, 24.954008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189028, 0.259916, -0.946949,
		0.981609, 0.076232, -0.175023,
		0.026697, -0.962617, -0.269546,
		31.560526, 44.982887, 24.873144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797585, 45.655334, 24.401573>,  <31.541838, 45.656719, 25.061827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797585, 45.655334, 24.401573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689165, 45.270519, 24.388786>,  <31.624113, 45.039631, 24.381113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689165, 45.270519, 24.388786>,  <31.797585, 45.655334, 24.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689165, 45.270519, 24.388786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164216, 0.078941, -0.983261,
		0.948454, -0.261264, -0.179379,
		-0.271051, -0.962034, -0.031969,
		31.607849, 44.981911, 24.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211613, 45.302685, 23.876169>,  <31.797585, 45.655334, 24.401573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211613, 45.302685, 23.876169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892914, 45.065559, 23.923119>,  <31.701696, 44.923286, 23.951288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892914, 45.065559, 23.923119>,  <32.211613, 45.302685, 23.876169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892914, 45.065559, 23.923119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188236, 0.058887, -0.980357,
		0.574255, -0.803186, -0.158506,
		-0.796743, -0.592811, 0.117372,
		31.653891, 44.887714, 23.958330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203262, 44.693733, 23.342381>,  <32.211613, 45.302685, 23.876169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203262, 44.693733, 23.342381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821396, 44.713120, 23.459864>,  <31.592276, 44.724751, 23.530354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821396, 44.713120, 23.459864>,  <32.203262, 44.693733, 23.342381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821396, 44.713120, 23.459864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297678, -0.152857, -0.942350,
		-0.000771, -0.987060, 0.160353,
		-0.954666, 0.048460, 0.293708,
		31.534996, 44.727657, 23.547976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695368, 44.104069, 23.222816>,  <32.203262, 44.693733, 23.342381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695368, 44.104069, 23.222816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560431, 44.477966, 23.178188>,  <31.479467, 44.702305, 23.151411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560431, 44.477966, 23.178188>,  <31.695368, 44.104069, 23.222816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560431, 44.477966, 23.178188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230653, -0.196977, -0.952890,
		-0.912687, -0.295719, 0.282052,
		-0.337345, 0.934746, -0.111570,
		31.459227, 44.758389, 23.144718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838850, 44.458508, 22.550148>,  <31.695368, 44.104069, 23.222816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838850, 44.458508, 22.550148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111740, 44.365334, 22.272930>,  <32.275475, 44.309429, 22.106600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111740, 44.365334, 22.272930>,  <31.838850, 44.458508, 22.550148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111740, 44.365334, 22.272930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565979, -0.431826, 0.702277,
		-0.462863, -0.871358, -0.162763,
		0.682221, -0.232938, -0.693048,
		32.316406, 44.295452, 22.065016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931391, 43.749840, 22.615986>,  <31.838850, 44.458508, 22.550148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931391, 43.749840, 22.615986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250370, 43.914383, 22.439415>,  <32.441757, 44.013111, 22.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250370, 43.914383, 22.439415>,  <31.931391, 43.749840, 22.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250370, 43.914383, 22.439415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574431, -0.293675, 0.764057,
		0.184667, -0.862866, -0.470490,
		0.797450, 0.411360, -0.441425,
		32.489605, 44.037792, 22.306988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485771, 43.306240, 22.674715>,  <31.931391, 43.749840, 22.615986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485771, 43.306240, 22.674715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702732, 43.622677, 22.561604>,  <32.832909, 43.812538, 22.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702732, 43.622677, 22.561604>,  <32.485771, 43.306240, 22.674715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702732, 43.622677, 22.561604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724121, -0.269573, 0.634807,
		0.425964, -0.549088, -0.719067,
		0.542406, 0.791096, -0.282777,
		32.865456, 43.860004, 22.476770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144608, 43.040550, 22.564339>,  <32.485771, 43.306240, 22.674715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144608, 43.040550, 22.564339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175190, 43.434196, 22.628435>,  <33.193539, 43.670383, 22.666893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175190, 43.434196, 22.628435>,  <33.144608, 43.040550, 22.564339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175190, 43.434196, 22.628435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774444, -0.159834, 0.612119,
		0.628006, 0.077297, -0.774360,
		0.076454, 0.984113, 0.160239,
		33.198128, 43.729431, 22.676506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800816, 43.015553, 22.587132>,  <33.144608, 43.040550, 22.564339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800816, 43.015553, 22.587132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724308, 43.377491, 22.739271>,  <33.678406, 43.594654, 22.830555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724308, 43.377491, 22.739271>,  <33.800816, 43.015553, 22.587132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724308, 43.377491, 22.739271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670936, -0.162313, 0.723532,
		0.716423, 0.393578, -0.576051,
		-0.191266, 0.904848, 0.380351,
		33.666927, 43.648945, 22.853376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434319, 43.531696, 22.562622>,  <33.800816, 43.015553, 22.587132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434319, 43.531696, 22.562622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214592, 43.637352, 22.879728>,  <34.082756, 43.700745, 23.069992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214592, 43.637352, 22.879728>,  <34.434319, 43.531696, 22.562622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214592, 43.637352, 22.879728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787652, -0.153118, 0.596791,
		0.279021, 0.952254, -0.123937,
		-0.549320, 0.264136, 0.792767,
		34.049797, 43.716595, 23.117559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870934, 43.930351, 23.054485>,  <34.434319, 43.531696, 22.562622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870934, 43.930351, 23.054485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557037, 43.869438, 23.294815>,  <34.368698, 43.832890, 23.439014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557037, 43.869438, 23.294815>,  <34.870934, 43.930351, 23.054485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557037, 43.869438, 23.294815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599085, 0.062305, 0.798258,
		-0.158992, 0.986372, 0.042334,
		-0.784741, -0.152278, 0.600827,
		34.321613, 43.823753, 23.475063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877300, 44.450180, 23.538408>,  <34.870934, 43.930351, 23.054485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877300, 44.450180, 23.538408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669590, 44.153423, 23.708090>,  <34.544964, 43.975368, 23.809898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669590, 44.153423, 23.708090>,  <34.877300, 44.450180, 23.538408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669590, 44.153423, 23.708090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641880, -0.010870, 0.766728,
		-0.564216, 0.670434, 0.481849,
		-0.519279, -0.741889, 0.424205,
		34.513805, 43.930855, 23.835352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692451, 44.555206, 24.335869>,  <34.877300, 44.450180, 23.538408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692451, 44.555206, 24.335869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711845, 44.160805, 24.272070>,  <34.723480, 43.924164, 24.233791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711845, 44.160805, 24.272070>,  <34.692451, 44.555206, 24.335869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711845, 44.160805, 24.272070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624174, -0.094757, 0.775518,
		-0.779780, -0.137153, 0.610846,
		0.048483, -0.986007, -0.159496,
		34.726391, 43.865002, 24.224220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716961, 44.319077, 25.057144>,  <34.692451, 44.555206, 24.335869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716961, 44.319077, 25.057144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814377, 43.989689, 24.852173>,  <34.872826, 43.792057, 24.729189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814377, 43.989689, 24.852173>,  <34.716961, 44.319077, 25.057144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814377, 43.989689, 24.852173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279861, -0.446201, 0.850048,
		-0.928638, -0.350427, 0.121791,
		0.243537, -0.823471, -0.512430,
		34.887440, 43.742649, 24.698444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486465, 43.733364, 25.509378>,  <34.716961, 44.319077, 25.057144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486465, 43.733364, 25.509378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765362, 43.588783, 25.261765>,  <34.932701, 43.502037, 25.113195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765362, 43.588783, 25.261765>,  <34.486465, 43.733364, 25.509378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765362, 43.588783, 25.261765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426174, -0.485361, 0.763414,
		-0.576392, -0.796102, -0.184374,
		0.697243, -0.361450, -0.619036,
		34.974537, 43.480350, 25.076054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497585, 43.008121, 25.647787>,  <34.486465, 43.733364, 25.509378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497585, 43.008121, 25.647787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852795, 43.096016, 25.486231>,  <35.065922, 43.148754, 25.389297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852795, 43.096016, 25.486231>,  <34.497585, 43.008121, 25.647787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852795, 43.096016, 25.486231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449448, -0.600150, 0.661677,
		-0.097001, -0.769113, -0.631708,
		0.888024, 0.219736, -0.403892,
		35.119202, 43.161938, 25.365063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872189, 42.373573, 25.595785>,  <34.497585, 43.008121, 25.647787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872189, 42.373573, 25.595785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147041, 42.663998, 25.585291>,  <35.311954, 42.838253, 25.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147041, 42.663998, 25.585291>,  <34.872189, 42.373573, 25.595785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147041, 42.663998, 25.585291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526311, -0.472550, 0.706890,
		0.500846, -0.499535, -0.706837,
		0.687132, 0.726059, -0.026236,
		35.353180, 42.881817, 25.577419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622253, 42.034191, 25.400219>,  <34.872189, 42.373573, 25.595785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622253, 42.034191, 25.400219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674446, 42.382278, 25.590248>,  <35.705761, 42.591129, 25.704266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674446, 42.382278, 25.590248>,  <35.622253, 42.034191, 25.400219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674446, 42.382278, 25.590248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641082, -0.439572, 0.629119,
		0.756300, 0.222475, -0.615236,
		0.130478, 0.870219, 0.475073,
		35.713589, 42.643345, 25.732769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298206, 42.024521, 25.572374>,  <35.622253, 42.034191, 25.400219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298206, 42.024521, 25.572374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143459, 42.295094, 25.823061>,  <36.050610, 42.457436, 25.973473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143459, 42.295094, 25.823061>,  <36.298206, 42.024521, 25.572374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143459, 42.295094, 25.823061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579031, -0.350749, 0.736001,
		0.717674, 0.647625, -0.255981,
		-0.386868, 0.676430, 0.626718,
		36.027397, 42.498024, 26.011076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850044, 42.299427, 25.733734>,  <36.298206, 42.024521, 25.572374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850044, 42.299427, 25.733734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572250, 42.347973, 26.017412>,  <36.405575, 42.377102, 26.187618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572250, 42.347973, 26.017412>,  <36.850044, 42.299427, 25.733734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572250, 42.347973, 26.017412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573208, -0.502427, 0.647302,
		0.434881, 0.856059, 0.279359,
		-0.694486, 0.121369, 0.709196,
		36.363903, 42.384384, 26.230171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151783, 42.571827, 26.417345>,  <36.850044, 42.299427, 25.733734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151783, 42.571827, 26.417345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797482, 42.416843, 26.519573>,  <36.584900, 42.323853, 26.580910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797482, 42.416843, 26.519573>,  <37.151783, 42.571827, 26.417345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797482, 42.416843, 26.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453669, -0.606320, 0.653115,
		-0.098094, 0.694445, 0.712828,
		-0.885755, -0.387455, 0.255572,
		36.531754, 42.300606, 26.596245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116760, 42.575436, 27.202463>,  <37.151783, 42.571827, 26.417345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116760, 42.575436, 27.202463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860516, 42.292648, 27.082586>,  <36.706768, 42.122978, 27.010660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860516, 42.292648, 27.082586>,  <37.116760, 42.575436, 27.202463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860516, 42.292648, 27.082586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397506, -0.639255, 0.658287,
		-0.656966, 0.302577, 0.690538,
		-0.640613, -0.706965, -0.299693,
		36.668331, 42.080559, 26.992678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928989, 42.346470, 27.830353>,  <37.116760, 42.575436, 27.202463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928989, 42.346470, 27.830353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845146, 42.070049, 27.553654>,  <36.794842, 41.904198, 27.387634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845146, 42.070049, 27.553654>,  <36.928989, 42.346470, 27.830353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845146, 42.070049, 27.553654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466713, -0.692380, 0.550263,
		-0.859212, -0.207511, 0.467647,
		-0.209604, -0.691050, -0.691749,
		36.782265, 41.862736, 27.346128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749332, 41.875099, 28.271908>,  <36.928989, 42.346470, 27.830353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749332, 41.875099, 28.271908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824326, 41.669910, 27.936834>,  <36.869320, 41.546799, 27.735790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824326, 41.669910, 27.936834>,  <36.749332, 41.875099, 28.271908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824326, 41.669910, 27.936834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439006, -0.719134, 0.538629,
		-0.878707, -0.468729, 0.090376,
		0.187478, -0.512972, -0.837682,
		36.880569, 41.516018, 27.685530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707500, 41.214775, 28.575693>,  <36.749332, 41.875099, 28.271908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707500, 41.214775, 28.575693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884399, 41.182758, 28.218367>,  <36.990540, 41.163548, 28.003971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884399, 41.182758, 28.218367>,  <36.707500, 41.214775, 28.575693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884399, 41.182758, 28.218367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683579, -0.614720, 0.393496,
		-0.580635, -0.784673, -0.217143,
		0.442247, -0.080043, -0.893314,
		37.017075, 41.158745, 27.950373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873360, 40.556114, 28.537037>,  <36.707500, 41.214775, 28.575693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873360, 40.556114, 28.537037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102982, 40.717960, 28.252295>,  <37.240757, 40.815067, 28.081450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102982, 40.717960, 28.252295>,  <36.873360, 40.556114, 28.537037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102982, 40.717960, 28.252295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799311, -0.465532, 0.379975,
		-0.177647, -0.787123, -0.590660,
		0.574058, 0.404620, -0.711857,
		37.275200, 40.839348, 28.038738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181385, 39.938614, 28.183374>,  <36.873360, 40.556114, 28.537037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181385, 39.938614, 28.183374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409222, 40.267071, 28.168983>,  <37.545921, 40.464146, 28.160349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409222, 40.267071, 28.168983>,  <37.181385, 39.938614, 28.183374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409222, 40.267071, 28.168983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718140, -0.475894, 0.507740,
		0.399806, -0.315038, -0.860759,
		0.569587, 0.821143, -0.035976,
		37.580097, 40.513412, 28.158190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847893, 39.687439, 27.902512>,  <37.181385, 39.938614, 28.183374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847893, 39.687439, 27.902512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873020, 40.028576, 28.109861>,  <37.888096, 40.233257, 28.234272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873020, 40.028576, 28.109861>,  <37.847893, 39.687439, 27.902512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873020, 40.028576, 28.109861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608338, -0.444476, 0.657545,
		0.791188, 0.274042, -0.546738,
		0.062817, 0.852843, 0.518375,
		37.891865, 40.284428, 28.265373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368832, 39.523674, 28.306435>,  <37.847893, 39.687439, 27.902512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368832, 39.523674, 28.306435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268238, 39.875603, 28.467764>,  <38.207882, 40.086761, 28.564562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268238, 39.875603, 28.467764>,  <38.368832, 39.523674, 28.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268238, 39.875603, 28.467764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574768, -0.199520, 0.793621,
		0.778716, 0.431399, -0.455518,
		-0.251482, 0.879822, 0.403324,
		38.192795, 40.139549, 28.588760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985470, 40.002434, 28.542179>,  <38.368832, 39.523674, 28.306435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985470, 40.002434, 28.542179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671494, 40.085495, 28.775673>,  <38.483109, 40.135330, 28.915770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671494, 40.085495, 28.775673>,  <38.985470, 40.002434, 28.542179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671494, 40.085495, 28.775673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508998, -0.321056, 0.798652,
		0.353254, 0.924015, 0.146315,
		-0.784941, 0.207653, 0.583736,
		38.436012, 40.147789, 28.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381420, 40.023277, 29.146940>,  <38.985470, 40.002434, 28.542179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381420, 40.023277, 29.146940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008602, 40.060814, 29.286934>,  <38.784912, 40.083336, 29.370930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008602, 40.060814, 29.286934>,  <39.381420, 40.023277, 29.146940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008602, 40.060814, 29.286934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269502, -0.466098, 0.842687,
		0.242205, 0.879742, 0.409133,
		-0.932044, 0.093840, 0.349984,
		38.728989, 40.088966, 29.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550354, 40.190254, 29.913271>,  <39.381420, 40.023277, 29.146940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550354, 40.190254, 29.913271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182625, 40.038319, 29.872150>,  <38.961987, 39.947159, 29.847477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182625, 40.038319, 29.872150>,  <39.550354, 40.190254, 29.913271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182625, 40.038319, 29.872150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178487, -0.635339, 0.751324,
		-0.350697, 0.672360, 0.651877,
		-0.919323, -0.379838, -0.102803,
		38.906830, 39.924366, 29.841309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289577, 40.090057, 30.632307>,  <39.550354, 40.190254, 29.913271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289577, 40.090057, 30.632307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068207, 39.847992, 30.403399>,  <38.935387, 39.702751, 30.266052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068207, 39.847992, 30.403399>,  <39.289577, 40.090057, 30.632307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068207, 39.847992, 30.403399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134808, -0.743108, 0.655452,
		-0.821918, 0.285595, 0.492835,
		-0.553423, -0.605166, -0.572273,
		38.902180, 39.666443, 30.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745255, 39.807587, 31.011734>,  <39.289577, 40.090057, 30.632307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745255, 39.807587, 31.011734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804008, 39.561668, 30.701778>,  <38.839260, 39.414120, 30.515804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804008, 39.561668, 30.701778>,  <38.745255, 39.807587, 31.011734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804008, 39.561668, 30.701778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114876, -0.788689, 0.603964,
		-0.982461, 0.000305, -0.186469,
		0.146882, -0.614792, -0.774891,
		38.848072, 39.377232, 30.469311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165081, 39.351654, 31.049379>,  <38.745255, 39.807587, 31.011734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165081, 39.351654, 31.049379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450005, 39.166996, 30.837908>,  <38.620960, 39.056202, 30.711025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450005, 39.166996, 30.837908>,  <38.165081, 39.351654, 31.049379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450005, 39.166996, 30.837908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066494, -0.794246, 0.603948,
		-0.698709, -0.395043, -0.596445,
		0.712310, -0.461644, -0.528678,
		38.663696, 39.028503, 30.679304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034378, 38.578827, 31.136154>,  <38.165081, 39.351654, 31.049379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034378, 38.578827, 31.136154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403614, 38.607376, 30.984991>,  <38.625156, 38.624504, 30.894293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403614, 38.607376, 30.984991>,  <38.034378, 38.578827, 31.136154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403614, 38.607376, 30.984991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263095, -0.833915, 0.485147,
		-0.280516, -0.547258, -0.788555,
		0.923088, 0.071374, -0.377907,
		38.680542, 38.628788, 30.871618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156994, 37.866112, 30.878298>,  <38.034378, 38.578827, 31.136154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156994, 37.866112, 30.878298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498089, 38.070969, 30.919384>,  <38.702747, 38.193882, 30.944036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498089, 38.070969, 30.919384>,  <38.156994, 37.866112, 30.878298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498089, 38.070969, 30.919384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399639, -0.766310, 0.503048,
		0.336345, -0.387918, -0.858133,
		0.852737, 0.512141, 0.102717,
		38.753910, 38.224609, 30.950199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813171, 37.367691, 30.836720>,  <38.156994, 37.866112, 30.878298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813171, 37.367691, 30.836720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978500, 37.689159, 31.007963>,  <39.077698, 37.882042, 31.110710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978500, 37.689159, 31.007963>,  <38.813171, 37.367691, 30.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978500, 37.689159, 31.007963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551695, -0.595051, 0.584420,
		0.724428, -0.005370, -0.689330,
		0.413325, 0.803670, 0.428108,
		39.102497, 37.930260, 31.136396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629913, 37.370831, 30.881617>,  <38.813171, 37.367691, 30.836720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629913, 37.370831, 30.881617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553989, 37.626007, 31.180147>,  <39.508434, 37.779114, 31.359266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553989, 37.626007, 31.180147>,  <39.629913, 37.370831, 30.881617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553989, 37.626007, 31.180147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585386, -0.536725, 0.607660,
		0.788223, 0.552230, -0.271565,
		-0.189812, 0.637941, 0.746326,
		39.497047, 37.817390, 31.404045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254513, 37.428841, 31.216988>,  <39.629913, 37.370831, 30.881617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254513, 37.428841, 31.216988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992802, 37.563717, 31.487757>,  <39.835773, 37.644642, 31.650219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992802, 37.563717, 31.487757>,  <40.254513, 37.428841, 31.216988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992802, 37.563717, 31.487757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503907, -0.473067, 0.722693,
		0.563912, 0.813949, 0.139606,
		-0.654279, 0.337187, 0.676923,
		39.796516, 37.664871, 31.690834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635433, 37.497181, 31.765047>,  <40.254513, 37.428841, 31.216988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635433, 37.497181, 31.765047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268604, 37.533180, 31.920424>,  <40.048508, 37.554779, 32.013649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268604, 37.533180, 31.920424>,  <40.635433, 37.497181, 31.765047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268604, 37.533180, 31.920424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246314, -0.638213, 0.729393,
		0.313552, 0.764581, 0.563117,
		-0.917068, 0.089999, 0.388440,
		39.993484, 37.560181, 32.036957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812939, 37.686501, 32.540565>,  <40.635433, 37.497181, 31.765047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812939, 37.686501, 32.540565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451416, 37.530155, 32.470875>,  <40.234501, 37.436348, 32.429058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451416, 37.530155, 32.470875>,  <40.812939, 37.686501, 32.540565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451416, 37.530155, 32.470875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116285, -0.616135, 0.779009,
		-0.411836, 0.683815, 0.602319,
		-0.903808, -0.390865, -0.174229,
		40.180275, 37.412895, 32.418606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710888, 37.428539, 33.218025>,  <40.812939, 37.686501, 32.540565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710888, 37.428539, 33.218025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431919, 37.236664, 33.005047>,  <40.264538, 37.121540, 32.877258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431919, 37.236664, 33.005047>,  <40.710888, 37.428539, 33.218025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431919, 37.236664, 33.005047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040307, -0.715528, 0.697421,
		-0.715528, 0.507857, 0.479689,
		-0.697421, -0.479689, -0.532450,
		40.222694, 37.092758, 32.845310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253433, 37.212902, 33.773350>,  <40.710888, 37.428539, 33.218025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253433, 37.212902, 33.773350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224491, 36.986416, 33.444920>,  <40.207127, 36.850525, 33.247860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224491, 36.986416, 33.444920>,  <40.253433, 37.212902, 33.773350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224491, 36.986416, 33.444920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287209, -0.800192, 0.526502,
		-0.955131, -0.197724, 0.220521,
		-0.072357, -0.566214, -0.821076,
		40.202785, 36.816551, 33.198597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869312, 36.684406, 33.995598>,  <40.253433, 37.212902, 33.773350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869312, 36.684406, 33.995598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062355, 36.568104, 33.665131>,  <40.178181, 36.498322, 33.466850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062355, 36.568104, 33.665131>,  <39.869312, 36.684406, 33.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062355, 36.568104, 33.665131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368628, -0.788236, 0.492745,
		-0.794480, -0.542352, -0.273232,
		0.482612, -0.290755, -0.826164,
		40.207138, 36.480877, 33.417282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908333, 35.877708, 34.016216>,  <39.869312, 36.684406, 33.995598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908333, 35.877708, 34.016216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177876, 35.975288, 33.737247>,  <40.339603, 36.033836, 33.569866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177876, 35.975288, 33.737247>,  <39.908333, 35.877708, 34.016216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177876, 35.975288, 33.737247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493384, -0.851198, 0.178979,
		-0.549986, -0.464706, -0.693948,
		0.673860, 0.243947, -0.697426,
		40.380035, 36.048473, 33.528019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980354, 35.276859, 33.472466>,  <39.908333, 35.877708, 34.016216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980354, 35.276859, 33.472466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310772, 35.493179, 33.535938>,  <40.509022, 35.622971, 33.574024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310772, 35.493179, 33.535938>,  <39.980354, 35.276859, 33.472466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310772, 35.493179, 33.535938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515903, -0.838907, 0.173437,
		0.226917, -0.061400, -0.971977,
		0.826047, 0.540801, 0.158686,
		40.558586, 35.655418, 33.583546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514408, 34.858509, 33.333282>,  <39.980354, 35.276859, 33.472466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514408, 34.858509, 33.333282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705513, 35.167953, 33.499783>,  <40.820175, 35.353619, 33.599682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705513, 35.167953, 33.499783>,  <40.514408, 34.858509, 33.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705513, 35.167953, 33.499783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761910, -0.600764, 0.242023,
		0.437302, 0.201517, -0.876446,
		0.477766, 0.773611, 0.416253,
		40.848843, 35.400036, 33.624657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212147, 34.746422, 33.081272>,  <40.514408, 34.858509, 33.333282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212147, 34.746422, 33.081272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239620, 34.990726, 33.396805>,  <41.256104, 35.137310, 33.586124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239620, 34.990726, 33.396805>,  <41.212147, 34.746422, 33.081272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239620, 34.990726, 33.396805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737275, -0.563756, 0.372296,
		0.672092, 0.556017, -0.489017,
		0.068683, 0.610757, 0.788834,
		41.260223, 35.173954, 33.633453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872131, 34.459106, 33.344288>,  <41.212147, 34.746422, 33.081272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872131, 34.459106, 33.344288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798164, 34.775494, 33.577587>,  <41.753784, 34.965324, 33.717567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798164, 34.775494, 33.577587>,  <41.872131, 34.459106, 33.344288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798164, 34.775494, 33.577587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832290, -0.189545, 0.520928,
		0.522587, 0.581764, -0.623261,
		-0.184921, 0.790964, 0.583250,
		41.742687, 35.012783, 33.752563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478699, 34.890625, 33.264080>,  <41.872131, 34.459106, 33.344288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478699, 34.890625, 33.264080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283844, 34.913261, 33.612679>,  <42.166931, 34.926842, 33.821838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283844, 34.913261, 33.612679>,  <42.478699, 34.890625, 33.264080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283844, 34.913261, 33.612679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812096, -0.337721, 0.475862,
		0.321250, 0.939544, 0.118559,
		-0.487133, 0.056590, 0.871493,
		42.137703, 34.930237, 33.874126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946983, 35.262882, 33.690147>,  <42.478699, 34.890625, 33.264080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946983, 35.262882, 33.690147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691681, 35.049541, 33.912197>,  <42.538498, 34.921535, 34.045429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691681, 35.049541, 33.912197>,  <42.946983, 35.262882, 33.690147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691681, 35.049541, 33.912197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758234, -0.310882, 0.573091,
		-0.133081, 0.786694, 0.602828,
		-0.638256, -0.533352, 0.555126,
		42.500206, 34.889534, 34.078735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010616, 35.423168, 34.484165>,  <42.946983, 35.262882, 33.690147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010616, 35.423168, 34.484165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855049, 35.061050, 34.415840>,  <42.761707, 34.843781, 34.374844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855049, 35.061050, 34.415840>,  <43.010616, 35.423168, 34.484165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855049, 35.061050, 34.415840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701672, -0.411227, 0.581849,
		-0.596990, 0.106437, 0.795157,
		-0.388920, -0.905297, -0.170815,
		42.738373, 34.789463, 34.364597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945011, 35.210308, 35.148964>,  <43.010616, 35.423168, 34.484165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945011, 35.210308, 35.148964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981014, 34.887386, 34.915668>,  <43.002617, 34.693634, 34.775692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981014, 34.887386, 34.915668>,  <42.945011, 35.210308, 35.148964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981014, 34.887386, 34.915668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760660, -0.322291, 0.563493,
		-0.642881, -0.494359, 0.585076,
		0.090003, -0.807302, -0.583234,
		43.008015, 34.645195, 34.740700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665257, 34.527626, 35.240276>,  <42.945011, 35.210308, 35.148964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665257, 34.527626, 35.240276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830261, 34.270035, 34.982555>,  <42.929264, 34.115479, 34.827923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830261, 34.270035, 34.982555>,  <42.665257, 34.527626, 35.240276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830261, 34.270035, 34.982555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772465, -0.127610, 0.622104,
		-0.482841, -0.754326, 0.444811,
		0.412507, -0.643978, -0.644306,
		42.954014, 34.076843, 34.789265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999645, 34.072395, 35.522182>,  <42.665257, 34.527626, 35.240276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999645, 34.072395, 35.522182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187195, 33.993240, 35.177860>,  <43.299725, 33.945747, 34.971268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187195, 33.993240, 35.177860>,  <42.999645, 34.072395, 35.522182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187195, 33.993240, 35.177860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863445, -0.102595, 0.493900,
		-0.186053, -0.974840, 0.122764,
		0.468878, -0.197892, -0.860809,
		43.327858, 33.933872, 34.919617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403538, 33.499142, 35.651237>,  <42.999645, 34.072395, 35.522182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403538, 33.499142, 35.651237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553932, 33.731159, 35.362186>,  <43.644169, 33.870369, 35.188755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553932, 33.731159, 35.362186>,  <43.403538, 33.499142, 35.651237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553932, 33.731159, 35.362186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906721, -0.069531, 0.415960,
		0.191030, -0.811613, -0.552079,
		0.375985, 0.580042, -0.722624,
		43.666729, 33.905170, 35.145401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816586, 33.044449, 35.330875>,  <43.403538, 33.499142, 35.651237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816586, 33.044449, 35.330875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935852, 33.425133, 35.301613>,  <44.007412, 33.653542, 35.284058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935852, 33.425133, 35.301613>,  <43.816586, 33.044449, 35.330875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935852, 33.425133, 35.301613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810403, -0.211914, 0.546205,
		0.504324, -0.222146, -0.834451,
		0.298169, 0.951706, -0.073154,
		44.025303, 33.710644, 35.279667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500153, 33.062431, 35.155304>,  <43.816586, 33.044449, 35.330875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500153, 33.062431, 35.155304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418392, 33.406452, 35.342293>,  <44.369335, 33.612865, 35.454487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418392, 33.406452, 35.342293>,  <44.500153, 33.062431, 35.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418392, 33.406452, 35.342293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688640, -0.213057, 0.693095,
		0.695697, 0.463586, -0.548720,
		-0.204401, 0.860055, 0.467467,
		44.357071, 33.664467, 35.482533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195484, 33.536797, 35.175041>,  <44.500153, 33.062431, 35.155304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195484, 33.536797, 35.175041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962467, 33.657455, 35.476944>,  <44.822659, 33.729851, 35.658085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962467, 33.657455, 35.476944>,  <45.195484, 33.536797, 35.175041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962467, 33.657455, 35.476944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748094, -0.164093, 0.642984,
		0.317804, 0.939192, -0.130070,
		-0.582542, 0.301647, 0.754754,
		44.787704, 33.747952, 35.703369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566498, 33.916996, 35.656376>,  <45.195484, 33.536797, 35.175041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566498, 33.916996, 35.656376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260685, 33.793530, 35.882725>,  <45.077198, 33.719452, 36.018536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260685, 33.793530, 35.882725>,  <45.566498, 33.916996, 35.656376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260685, 33.793530, 35.882725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636671, -0.224478, 0.737740,
		-0.100686, 0.924304, 0.368137,
		-0.764534, -0.308662, 0.565875,
		45.031326, 33.700932, 36.052486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719299, 34.156879, 36.341850>,  <45.566498, 33.916996, 35.656376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719299, 34.156879, 36.341850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438808, 33.882576, 36.419838>,  <45.270515, 33.717995, 36.466629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438808, 33.882576, 36.419838>,  <45.719299, 34.156879, 36.341850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438808, 33.882576, 36.419838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368503, -0.114527, 0.922545,
		-0.610316, 0.718760, 0.333014,
		-0.701227, -0.685761, 0.194968,
		45.228439, 33.676849, 36.478329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307838, 34.344452, 36.975735>,  <45.719299, 34.156879, 36.341850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307838, 34.344452, 36.975735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311520, 33.949959, 36.909698>,  <45.313728, 33.713261, 36.870075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311520, 33.949959, 36.909698>,  <45.307838, 34.344452, 36.975735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311520, 33.949959, 36.909698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517941, -0.136522, 0.844451,
		-0.855367, -0.093281, 0.509555,
		0.009206, -0.986235, -0.165091,
		45.314281, 33.654087, 36.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204998, 33.994720, 37.569279>,  <45.307838, 34.344452, 36.975735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204998, 33.994720, 37.569279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390255, 33.714096, 37.352646>,  <45.501408, 33.545719, 37.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390255, 33.714096, 37.352646>,  <45.204998, 33.994720, 37.569279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390255, 33.714096, 37.352646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551830, -0.249908, 0.795632,
		-0.693532, -0.667348, 0.271402,
		0.463138, -0.701564, -0.541582,
		45.529198, 33.503628, 37.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481110, 33.589371, 38.064438>,  <45.204998, 33.994720, 37.569279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481110, 33.589371, 38.064438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681606, 33.442394, 37.751072>,  <45.801907, 33.354206, 37.563053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.681606, 33.442394, 37.751072>,  <45.481110, 33.589371, 38.064438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.681606, 33.442394, 37.751072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710449, -0.342090, 0.615010,
		-0.493980, -0.864847, 0.089579,
		0.501244, -0.367444, -0.783415,
		45.831982, 33.332161, 37.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788876, 33.032955, 38.419952>,  <45.481110, 33.589371, 38.064438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788876, 33.032955, 38.419952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975582, 33.054325, 38.066845>,  <46.087608, 33.067146, 37.854980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975582, 33.054325, 38.066845>,  <45.788876, 33.032955, 38.419952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975582, 33.054325, 38.066845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760577, -0.533591, 0.369870,
		-0.451275, -0.844054, -0.289695,
		0.466768, 0.053422, -0.882765,
		46.115612, 33.070351, 37.802017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172939, 32.398796, 38.213310>,  <45.788876, 33.032955, 38.419952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172939, 32.398796, 38.213310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368629, 32.694332, 38.027935>,  <46.486042, 32.871655, 37.916710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368629, 32.694332, 38.027935>,  <46.172939, 32.398796, 38.213310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368629, 32.694332, 38.027935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871867, -0.400604, 0.281716,
		0.022486, -0.541881, -0.840154,
		0.489226, 0.738838, -0.463441,
		46.515396, 32.915985, 37.888905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361794, 31.914591, 37.604675>,  <46.172939, 32.398796, 38.213310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361794, 31.914591, 37.604675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151814, 31.651726, 37.388317>,  <46.025826, 31.494007, 37.258503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.151814, 31.651726, 37.388317>,  <46.361794, 31.914591, 37.604675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151814, 31.651726, 37.388317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843547, 0.486366, 0.227765,
		0.113393, 0.575833, -0.809665,
		-0.524948, -0.657164, -0.540893,
		45.994328, 31.454576, 37.226048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203487, 32.646626, 37.347004>,  <46.361794, 31.914591, 37.604675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203487, 32.646626, 37.347004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823982, 32.737461, 37.434887>,  <45.596279, 32.791962, 37.487617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823982, 32.737461, 37.434887>,  <46.203487, 32.646626, 37.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823982, 32.737461, 37.434887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208598, 0.072133, -0.975338,
		-0.237341, -0.971198, -0.021066,
		-0.948766, 0.227094, 0.219710,
		45.539352, 32.805588, 37.500801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.873383, 32.507206, 36.722996>,  <46.203487, 32.646626, 37.347004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.873383, 32.507206, 36.722996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643494, 32.768108, 36.920685>,  <45.505562, 32.924652, 37.039299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643494, 32.768108, 36.920685>,  <45.873383, 32.507206, 36.722996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643494, 32.768108, 36.920685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508371, 0.188700, -0.840209,
		-0.641294, -0.734132, 0.223141,
		-0.574718, 0.652259, 0.494224,
		45.471077, 32.963787, 37.068951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148140, 32.377171, 36.616547>,  <45.873383, 32.507206, 36.722996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148140, 32.377171, 36.616547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167969, 32.761612, 36.725227>,  <45.179867, 32.992275, 36.790436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167969, 32.761612, 36.725227>,  <45.148140, 32.377171, 36.616547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167969, 32.761612, 36.725227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505882, 0.258723, -0.822889,
		-0.861177, -0.096654, 0.499032,
		0.049576, 0.961104, 0.271702,
		45.182842, 33.049942, 36.806736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403423, 32.678619, 36.679119>,  <45.148140, 32.377171, 36.616547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403423, 32.678619, 36.679119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664349, 32.973118, 36.607090>,  <44.820904, 33.149818, 36.563873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664349, 32.973118, 36.607090>,  <44.403423, 32.678619, 36.679119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664349, 32.973118, 36.607090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669528, 0.448356, -0.592207,
		-0.355274, 0.506869, 0.785407,
		0.652313, 0.736248, -0.180073,
		44.860043, 33.193993, 36.553066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060707, 33.297165, 36.791718>,  <44.403423, 32.678619, 36.679119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060707, 33.297165, 36.791718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356777, 33.405464, 36.545521>,  <44.534420, 33.470444, 36.397800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356777, 33.405464, 36.545521>,  <44.060707, 33.297165, 36.791718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356777, 33.405464, 36.545521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644888, 0.545044, -0.535767,
		0.190414, 0.793488, 0.578031,
		0.740177, 0.270748, -0.615495,
		44.578831, 33.486687, 36.360874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872185, 34.049324, 36.707092>,  <44.060707, 33.297165, 36.791718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872185, 34.049324, 36.707092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116188, 33.909119, 36.422832>,  <44.262589, 33.824993, 36.252277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116188, 33.909119, 36.422832>,  <43.872185, 34.049324, 36.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116188, 33.909119, 36.422832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435900, 0.600510, -0.670358,
		0.661726, 0.718697, 0.213526,
		0.610009, -0.350517, -0.710653,
		44.299191, 33.803963, 36.209637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063812, 34.671715, 36.261009>,  <43.872185, 34.049324, 36.707092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063812, 34.671715, 36.261009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144825, 34.357929, 36.026543>,  <44.193432, 34.169659, 35.885860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144825, 34.357929, 36.026543>,  <44.063812, 34.671715, 36.261009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144825, 34.357929, 36.026543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547033, 0.405848, -0.732150,
		0.812242, 0.468936, -0.346932,
		0.202530, -0.784466, -0.586170,
		44.205585, 34.122589, 35.850693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451157, 34.765667, 35.757309>,  <44.063812, 34.671715, 36.261009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451157, 34.765667, 35.757309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508957, 34.428654, 35.549747>,  <44.543636, 34.226444, 35.425213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508957, 34.428654, 35.549747>,  <44.451157, 34.765667, 35.757309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508957, 34.428654, 35.549747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813067, 0.197776, -0.547547,
		0.563952, 0.501023, -0.656456,
		0.144503, -0.842532, -0.518901,
		44.552307, 34.175896, 35.394077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353775, 34.942486, 35.022758>,  <44.451157, 34.765667, 35.757309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353775, 34.942486, 35.022758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266804, 34.558613, 35.094006>,  <44.214622, 34.328289, 35.136753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266804, 34.558613, 35.094006>,  <44.353775, 34.942486, 35.022758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266804, 34.558613, 35.094006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837491, 0.089700, -0.539039,
		0.501331, -0.266373, -0.823233,
		-0.217429, -0.959687, 0.178116,
		44.201576, 34.270706, 35.147442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282494, 34.664898, 34.349949>,  <44.353775, 34.942486, 35.022758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282494, 34.664898, 34.349949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083858, 34.439034, 34.613632>,  <43.964680, 34.303516, 34.771843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083858, 34.439034, 34.613632>,  <44.282494, 34.664898, 34.349949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083858, 34.439034, 34.613632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845403, 0.142524, -0.514762,
		0.196716, -0.812920, -0.548146,
		-0.496584, -0.564666, 0.659209,
		43.934883, 34.269634, 34.811398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901741, 34.157330, 33.972126>,  <44.282494, 34.664898, 34.349949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901741, 34.157330, 33.972126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719620, 34.233658, 34.319984>,  <43.610348, 34.279457, 34.528702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719620, 34.233658, 34.319984>,  <43.901741, 34.157330, 33.972126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719620, 34.233658, 34.319984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879660, 0.054406, -0.472481,
		-0.137476, -0.980115, 0.143091,
		-0.455300, 0.190826, 0.869648,
		43.583031, 34.290905, 34.580879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345947, 33.704647, 33.835808>,  <43.901741, 34.157330, 33.972126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345947, 33.704647, 33.835808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248997, 33.984226, 34.104950>,  <43.190826, 34.151974, 34.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248997, 33.984226, 34.104950>,  <43.345947, 33.704647, 33.835808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248997, 33.984226, 34.104950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902949, 0.091169, -0.419966,
		-0.354877, -0.709341, 0.609014,
		-0.242376, 0.698945, 0.672852,
		43.176285, 34.193909, 34.306805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642853, 33.549526, 34.032280>,  <43.345947, 33.704647, 33.835808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642853, 33.549526, 34.032280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664089, 33.938873, 34.121483>,  <42.676830, 34.172482, 34.175003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664089, 33.938873, 34.121483>,  <42.642853, 33.549526, 34.032280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664089, 33.938873, 34.121483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953543, 0.115733, -0.278139,
		-0.296541, -0.197879, 0.934295,
		0.053091, 0.973370, 0.223006,
		42.680016, 34.230885, 34.188385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003502, 33.763721, 34.172417>,  <42.642853, 33.549526, 34.032280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003502, 33.763721, 34.172417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220509, 34.070988, 34.308414>,  <42.350712, 34.255348, 34.390011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220509, 34.070988, 34.308414>,  <42.003502, 33.763721, 34.172417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220509, 34.070988, 34.308414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581981, 0.635561, -0.507307,
		-0.605781, 0.077354, 0.791862,
		0.542519, 0.768166, 0.339992,
		42.383263, 34.301437, 34.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724068, 34.029518, 34.758987>,  <42.003502, 33.763721, 34.172417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724068, 34.029518, 34.758987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933773, 34.299171, 34.550873>,  <42.059597, 34.460964, 34.426006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933773, 34.299171, 34.550873>,  <41.724068, 34.029518, 34.758987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933773, 34.299171, 34.550873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818108, 0.568288, -0.088027,
		0.236329, 0.471797, 0.849445,
		0.524260, 0.674134, -0.520284,
		42.091049, 34.501411, 34.394787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580284, 34.761810, 35.032650>,  <41.724068, 34.029518, 34.758987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580284, 34.761810, 35.032650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733158, 34.839840, 34.671345>,  <41.824883, 34.886658, 34.454563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733158, 34.839840, 34.671345>,  <41.580284, 34.761810, 35.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733158, 34.839840, 34.671345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641041, 0.759997, -0.107099,
		0.665585, 0.619960, 0.415507,
		0.382181, 0.195074, -0.903263,
		41.847813, 34.898361, 34.400368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295998, 35.322769, 34.921513>,  <41.580284, 34.761810, 35.032650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295998, 35.322769, 34.921513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465607, 35.278877, 34.561920>,  <41.567371, 35.252541, 34.346165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465607, 35.278877, 34.561920>,  <41.295998, 35.322769, 34.921513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465607, 35.278877, 34.561920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453741, 0.833325, -0.315735,
		0.783787, 0.541783, 0.303562,
		0.424026, -0.109730, -0.898978,
		41.592815, 35.245956, 34.292225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516083, 35.900158, 34.745003>,  <41.295998, 35.322769, 34.921513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516083, 35.900158, 34.745003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443707, 35.702641, 34.404785>,  <41.400280, 35.584129, 34.200653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443707, 35.702641, 34.404785>,  <41.516083, 35.900158, 34.745003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443707, 35.702641, 34.404785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435188, 0.815747, -0.381009,
		0.881971, 0.301209, -0.362492,
		-0.180938, -0.493791, -0.850548,
		41.389423, 35.554504, 34.149620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391575, 36.405476, 34.152370>,  <41.516083, 35.900158, 34.745003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391575, 36.405476, 34.152370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276062, 36.094456, 33.928936>,  <41.206757, 35.907845, 33.794876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276062, 36.094456, 33.928936>,  <41.391575, 36.405476, 34.152370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276062, 36.094456, 33.928936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529252, 0.615842, -0.583636,
		0.797809, 0.127093, -0.589363,
		-0.288778, -0.777551, -0.558589,
		41.189430, 35.861191, 33.761360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440262, 36.556095, 33.532711>,  <41.391575, 36.405476, 34.152370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440262, 36.556095, 33.532711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180717, 36.252983, 33.505161>,  <41.024990, 36.071117, 33.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180717, 36.252983, 33.505161>,  <41.440262, 36.556095, 33.532711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180717, 36.252983, 33.505161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650038, 0.599100, -0.467472,
		0.395505, -0.258553, -0.881321,
		-0.648866, -0.757779, -0.068878,
		40.986057, 36.025650, 33.484497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347984, 36.423107, 32.792835>,  <41.440262, 36.556095, 33.532711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347984, 36.423107, 32.792835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033134, 36.294479, 33.003368>,  <40.844223, 36.217304, 33.129688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033134, 36.294479, 33.003368>,  <41.347984, 36.423107, 32.792835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033134, 36.294479, 33.003368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600469, 0.594524, -0.534769,
		-0.140950, -0.736977, -0.661058,
		-0.787128, -0.321569, 0.526330,
		40.796997, 36.198009, 33.161266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894123, 36.137867, 32.400475>,  <41.347984, 36.423107, 32.792835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894123, 36.137867, 32.400475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659153, 36.237965, 32.708321>,  <40.518169, 36.298023, 32.893028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659153, 36.237965, 32.708321>,  <40.894123, 36.137867, 32.400475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659153, 36.237965, 32.708321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590381, 0.517931, -0.619029,
		-0.553514, -0.818002, -0.156510,
		-0.587429, 0.250241, 0.769615,
		40.482925, 36.313038, 32.939205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594616, 36.084652, 31.981730>,  <40.894123, 36.137867, 32.400475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594616, 36.084652, 31.981730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864582, 35.945385, 31.721495>,  <42.026562, 35.861824, 31.565353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864582, 35.945385, 31.721495>,  <41.594616, 36.084652, 31.981730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864582, 35.945385, 31.721495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728378, 0.173195, 0.662925,
		-0.118134, -0.921292, 0.370493,
		0.674915, -0.348173, -0.650588,
		42.067059, 35.840935, 31.526318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155167, 35.729160, 32.433514>,  <41.594616, 36.084652, 31.981730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155167, 35.729160, 32.433514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299091, 35.774815, 32.063107>,  <42.385445, 35.802208, 31.840862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299091, 35.774815, 32.063107>,  <42.155167, 35.729160, 32.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299091, 35.774815, 32.063107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904305, 0.201699, 0.376231,
		0.229717, -0.972775, -0.030637,
		0.359809, 0.114132, -0.926019,
		42.407036, 35.809055, 31.785301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568043, 35.252972, 32.271782>,  <42.155167, 35.729160, 32.433514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568043, 35.252972, 32.271782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674988, 35.586220, 32.078114>,  <42.739155, 35.786167, 31.961912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674988, 35.586220, 32.078114>,  <42.568043, 35.252972, 32.271782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674988, 35.586220, 32.078114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821234, 0.065839, 0.566780,
		0.504074, -0.549157, -0.666585,
		0.267364, 0.833122, -0.484174,
		42.755196, 35.836155, 31.932861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249489, 35.090267, 32.251339>,  <42.568043, 35.252972, 32.271782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249489, 35.090267, 32.251339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258213, 35.482460, 32.173191>,  <43.263447, 35.717777, 32.126301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258213, 35.482460, 32.173191>,  <43.249489, 35.090267, 32.251339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258213, 35.482460, 32.173191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878156, 0.074616, 0.472519,
		0.477876, -0.181876, -0.859393,
		0.021815, 0.980486, -0.195373,
		43.264759, 35.776608, 32.114578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707054, 35.252575, 31.668192>,  <43.249489, 35.090267, 32.251339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707054, 35.252575, 31.668192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653954, 35.498970, 31.978786>,  <43.622093, 35.646809, 32.165142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653954, 35.498970, 31.978786>,  <43.707054, 35.252575, 31.668192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653954, 35.498970, 31.978786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953183, -0.135409, 0.270381,
		0.271695, 0.776030, -0.569174,
		-0.132752, 0.615989, 0.776489,
		43.614128, 35.683765, 32.211735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249130, 35.640671, 31.595894>,  <43.707054, 35.252575, 31.668192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249130, 35.640671, 31.595894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096146, 35.650803, 31.965343>,  <44.004353, 35.656883, 32.187012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096146, 35.650803, 31.965343>,  <44.249130, 35.640671, 31.595894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096146, 35.650803, 31.965343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919358, -0.089329, 0.383147,
		0.092210, 0.995680, 0.010879,
		-0.382463, 0.025328, 0.923624,
		43.981407, 35.658401, 32.242432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720425, 36.038849, 31.882948>,  <44.249130, 35.640671, 31.595894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720425, 36.038849, 31.882948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552715, 35.838493, 32.185818>,  <44.452087, 35.718281, 32.367538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552715, 35.838493, 32.185818>,  <44.720425, 36.038849, 31.882948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552715, 35.838493, 32.185818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904016, -0.153696, 0.398913,
		-0.083438, 0.851754, 0.517256,
		-0.419276, -0.500892, 0.757176,
		44.426933, 35.688225, 32.412971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934464, 36.401646, 32.520908>,  <44.720425, 36.038849, 31.882948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934464, 36.401646, 32.520908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852428, 36.011875, 32.557636>,  <44.803207, 35.778011, 32.579674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852428, 36.011875, 32.557636>,  <44.934464, 36.401646, 32.520908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852428, 36.011875, 32.557636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907840, -0.154335, 0.389882,
		-0.365741, 0.163318, 0.916276,
		-0.205088, -0.974427, 0.091820,
		44.790901, 35.719547, 32.585182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845493, 36.082668, 33.218487>,  <44.934464, 36.401646, 32.520908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845493, 36.082668, 33.218487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002693, 35.809353, 32.972340>,  <45.097012, 35.645363, 32.824654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002693, 35.809353, 32.972340>,  <44.845493, 36.082668, 33.218487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002693, 35.809353, 32.972340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784226, -0.100383, 0.612302,
		-0.480149, -0.723217, 0.496401,
		0.392997, -0.683286, -0.615364,
		45.120594, 35.604366, 32.787731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256207, 35.650856, 33.668736>,  <44.845493, 36.082668, 33.218487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256207, 35.650856, 33.668736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370014, 35.496563, 33.317677>,  <45.438297, 35.403988, 33.107040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370014, 35.496563, 33.317677>,  <45.256207, 35.650856, 33.668736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370014, 35.496563, 33.317677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788371, -0.426735, 0.443134,
		-0.545453, -0.817989, 0.182686,
		0.284520, -0.385734, -0.877643,
		45.455372, 35.380844, 33.054382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298077, 35.726833, 34.448204>,  <45.256207, 35.650856, 33.668736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298077, 35.726833, 34.448204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579105, 35.445980, 34.494507>,  <45.747723, 35.277470, 34.522289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579105, 35.445980, 34.494507>,  <45.298077, 35.726833, 34.448204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579105, 35.445980, 34.494507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344672, -0.193444, 0.918576,
		-0.622567, -0.685268, -0.377913,
		0.702576, -0.702131, 0.115761,
		45.789879, 35.235340, 34.529236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291981, 36.460773, 34.382938>,  <45.298077, 35.726833, 34.448204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291981, 36.460773, 34.382938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993645, 36.667442, 34.551121>,  <44.814644, 36.791443, 34.652031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993645, 36.667442, 34.551121>,  <45.291981, 36.460773, 34.382938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993645, 36.667442, 34.551121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463664, -0.855848, 0.229217,
		0.478274, -0.023991, 0.877883,
		-0.745836, 0.516671, 0.420453,
		44.769894, 36.822445, 34.677258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103237, 36.146759, 35.051712>,  <45.291981, 36.460773, 34.382938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103237, 36.146759, 35.051712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796524, 36.362656, 34.912731>,  <44.612495, 36.492195, 34.829342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796524, 36.362656, 34.912731>,  <45.103237, 36.146759, 35.051712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796524, 36.362656, 34.912731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636342, -0.710275, 0.300962,
		-0.084344, 0.451870, 0.888088,
		-0.766782, 0.539743, -0.347451,
		44.566490, 36.524578, 34.808495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625946, 35.638958, 35.256950>,  <45.103237, 36.146759, 35.051712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625946, 35.638958, 35.256950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415661, 35.883877, 35.493164>,  <45.289490, 36.030827, 35.634892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415661, 35.883877, 35.493164>,  <45.625946, 35.638958, 35.256950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415661, 35.883877, 35.493164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775319, 0.059246, 0.628785,
		0.350013, 0.788408, -0.505869,
		-0.525710, 0.612293, 0.590531,
		45.257946, 36.067566, 35.670322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869335, 36.356804, 35.392452>,  <45.625946, 35.638958, 35.256950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869335, 36.356804, 35.392452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636089, 36.265873, 35.704426>,  <45.496143, 36.211315, 35.891609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636089, 36.265873, 35.704426>,  <45.869335, 36.356804, 35.392452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636089, 36.265873, 35.704426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761281, 0.182239, 0.622286,
		-0.283597, 0.956615, 0.066793,
		-0.583116, -0.227327, 0.779935,
		45.461155, 36.197674, 35.938408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078224, 36.773964, 35.904675>,  <45.869335, 36.356804, 35.392452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078224, 36.773964, 35.904675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343002, 36.587509, 36.139465>,  <46.501869, 36.475636, 36.280338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343002, 36.587509, 36.139465>,  <46.078224, 36.773964, 35.904675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343002, 36.587509, 36.139465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218778, -0.628850, -0.746113,
		0.716913, 0.622304, -0.314283,
		0.661945, -0.466140, 0.586977,
		46.541588, 36.447666, 36.315559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658051, 36.632149, 35.376163>,  <46.078224, 36.773964, 35.904675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658051, 36.632149, 35.376163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.747490, 36.392254, 35.683491>,  <46.801155, 36.248318, 35.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.747490, 36.392254, 35.683491>,  <46.658051, 36.632149, 35.376163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747490, 36.392254, 35.683491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428464, -0.647550, -0.630157,
		0.875455, 0.470103, 0.112171,
		0.223602, -0.599735, 0.768323,
		46.814571, 36.212334, 35.913986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398609, 36.393326, 35.338062>,  <46.658051, 36.632149, 35.376163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398609, 36.393326, 35.338062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164112, 36.134262, 35.532738>,  <47.023415, 35.978825, 35.649544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164112, 36.134262, 35.532738>,  <47.398609, 36.393326, 35.338062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164112, 36.134262, 35.532738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386226, -0.751514, -0.534841,
		0.712148, -0.125572, 0.690708,
		-0.586238, -0.647656, 0.486690,
		46.988239, 35.939964, 35.678745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.751316, 35.764755, 35.707897>,  <47.398609, 36.393326, 35.338062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.751316, 35.764755, 35.707897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402534, 35.683128, 35.529884>,  <47.193264, 35.634151, 35.423077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402534, 35.683128, 35.529884>,  <47.751316, 35.764755, 35.707897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402534, 35.683128, 35.529884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459908, -0.653080, -0.601640,
		-0.167869, -0.729277, 0.663306,
		-0.871954, -0.204064, -0.445032,
		47.140949, 35.621910, 35.396374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.630917, 34.988277, 35.551571>,  <47.751316, 35.764755, 35.707897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.630917, 34.988277, 35.551571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.472435, 35.244026, 35.287987>,  <47.377346, 35.397476, 35.129837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.472435, 35.244026, 35.287987>,  <47.630917, 34.988277, 35.551571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.472435, 35.244026, 35.287987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454917, -0.486710, -0.745764,
		-0.797543, -0.595245, -0.098025,
		-0.396203, 0.639372, -0.658959,
		47.353573, 35.435837, 35.090298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581398, 34.658924, 35.055290>,  <47.630917, 34.988277, 35.551571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581398, 34.658924, 35.055290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547123, 35.012939, 34.872265>,  <47.526558, 35.225349, 34.762451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547123, 35.012939, 34.872265>,  <47.581398, 34.658924, 35.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547123, 35.012939, 34.872265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482372, -0.364985, -0.796307,
		-0.871765, -0.288951, -0.395642,
		-0.085690, 0.885039, -0.457562,
		47.521416, 35.278450, 34.734997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.083233, 37.980442, 25.607222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.752098, 37.892097, 25.813486>,  <32.553417, 37.839088, 25.937244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.752098, 37.892097, 25.813486>,  <33.083233, 37.980442, 25.607222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752098, 37.892097, 25.813486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560373, -0.367975, 0.742008,
		0.025866, 0.903223, 0.428390,
		-0.827836, -0.220865, 0.515660,
		32.503746, 37.825836, 25.968184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267017, 38.212059, 26.325514>,  <33.083233, 37.980442, 25.607222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267017, 38.212059, 26.325514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.951088, 37.971619, 26.374264>,  <32.761528, 37.827354, 26.403513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.951088, 37.971619, 26.374264>,  <33.267017, 38.212059, 26.325514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951088, 37.971619, 26.374264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469026, -0.463910, 0.751533,
		-0.395208, 0.650743, 0.648339,
		-0.789826, -0.601100, 0.121875,
		32.714142, 37.791290, 26.410826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132965, 38.141674, 27.131178>,  <33.267017, 38.212059, 26.325514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132965, 38.141674, 27.131178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.932236, 37.837700, 26.965923>,  <32.811798, 37.655315, 26.866772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.932236, 37.837700, 26.965923>,  <33.132965, 38.141674, 27.131178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932236, 37.837700, 26.965923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222678, -0.575029, 0.787246,
		-0.835818, 0.303059, 0.457781,
		-0.501820, -0.759932, -0.413135,
		32.781689, 37.609722, 26.841982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716564, 37.840088, 27.661158>,  <33.132965, 38.141674, 27.131178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716564, 37.840088, 27.661158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794048, 37.553379, 27.393213>,  <32.840538, 37.381355, 27.232447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794048, 37.553379, 27.393213>,  <32.716564, 37.840088, 27.661158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794048, 37.553379, 27.393213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292619, -0.609503, 0.736804,
		-0.936402, -0.338743, 0.091672,
		0.193713, -0.716770, -0.669863,
		32.852161, 37.338348, 27.192255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449051, 37.180729, 27.932497>,  <32.716564, 37.840088, 27.661158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449051, 37.180729, 27.932497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.729275, 37.077785, 27.666271>,  <32.897411, 37.016022, 27.506535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.729275, 37.077785, 27.666271>,  <32.449051, 37.180729, 27.932497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729275, 37.077785, 27.666271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406976, -0.622043, 0.668904,
		-0.586158, -0.739479, -0.331042,
		0.700563, -0.257358, -0.665567,
		32.939445, 37.000580, 27.466602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378883, 36.486298, 27.989613>,  <32.449051, 37.180729, 27.932497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378883, 36.486298, 27.989613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.731129, 36.562641, 27.816135>,  <32.942478, 36.608448, 27.712049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.731129, 36.562641, 27.816135>,  <32.378883, 36.486298, 27.989613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731129, 36.562641, 27.816135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454031, -0.601718, 0.657108,
		-0.135548, -0.775570, -0.616537,
		0.880615, 0.190857, -0.433694,
		32.995312, 36.619900, 27.686028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842503, 35.856857, 28.014723>,  <32.378883, 36.486298, 27.989613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842503, 35.856857, 28.014723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112873, 36.140987, 27.936182>,  <33.275097, 36.311466, 27.889057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112873, 36.140987, 27.936182>,  <32.842503, 35.856857, 28.014723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112873, 36.140987, 27.936182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665832, -0.474404, 0.575855,
		0.315896, -0.519974, -0.793622,
		0.675927, 0.710329, -0.196353,
		33.315651, 36.354088, 27.877275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485275, 35.437458, 28.093504>,  <32.842503, 35.856857, 28.014723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485275, 35.437458, 28.093504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583969, 35.825035, 28.100115>,  <33.643185, 36.057583, 28.104080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583969, 35.825035, 28.100115>,  <33.485275, 35.437458, 28.093504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583969, 35.825035, 28.100115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669055, -0.182657, 0.720418,
		0.701062, -0.166695, -0.693343,
		0.246734, 0.968942, 0.016526,
		33.657990, 36.115719, 28.105072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273220, 35.501827, 27.944864>,  <33.485275, 35.437458, 28.093504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273220, 35.501827, 27.944864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.163345, 35.835026, 28.136974>,  <34.097420, 36.034946, 28.252241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.163345, 35.835026, 28.136974>,  <34.273220, 35.501827, 27.944864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163345, 35.835026, 28.136974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679361, -0.185347, 0.710011,
		0.680455, 0.521309, -0.514993,
		-0.274682, 0.832997, 0.480277,
		34.080940, 36.084927, 28.281057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849304, 35.784111, 28.069452>,  <34.273220, 35.501827, 27.944864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849304, 35.784111, 28.069452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601826, 35.967411, 28.324707>,  <34.453339, 36.077393, 28.477859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601826, 35.967411, 28.324707>,  <34.849304, 35.784111, 28.069452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601826, 35.967411, 28.324707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715014, -0.008118, 0.699063,
		0.325527, 0.888785, -0.322634,
		-0.618698, 0.458252, 0.638137,
		34.416218, 36.104885, 28.516148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254387, 36.355103, 28.350664>,  <34.849304, 35.784111, 28.069452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254387, 36.355103, 28.350664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951061, 36.285408, 28.601934>,  <34.769066, 36.243591, 28.752697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951061, 36.285408, 28.601934>,  <35.254387, 36.355103, 28.350664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951061, 36.285408, 28.601934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626317, 0.072538, 0.776187,
		-0.180805, 0.982029, 0.054120,
		-0.758312, -0.174235, 0.628176,
		34.723568, 36.233139, 28.790388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410679, 36.808762, 28.885231>,  <35.254387, 36.355103, 28.350664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410679, 36.808762, 28.885231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150200, 36.553322, 29.049248>,  <34.993912, 36.400059, 29.147657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150200, 36.553322, 29.049248>,  <35.410679, 36.808762, 28.885231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150200, 36.553322, 29.049248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600236, -0.102777, 0.793192,
		-0.464387, 0.762647, 0.450237,
		-0.651200, -0.638597, 0.410040,
		34.954842, 36.361744, 29.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493397, 36.842545, 29.614830>,  <35.410679, 36.808762, 28.885231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493397, 36.842545, 29.614830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293114, 36.496929, 29.635727>,  <35.172943, 36.289558, 29.648266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293114, 36.496929, 29.635727>,  <35.493397, 36.842545, 29.614830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293114, 36.496929, 29.635727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490317, -0.233367, 0.839720,
		-0.713357, 0.446072, 0.540501,
		-0.500710, -0.864037, 0.052242,
		35.142902, 36.237717, 29.651400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478466, 36.789665, 30.339470>,  <35.493397, 36.842545, 29.614830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478466, 36.789665, 30.339470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432568, 36.431755, 30.166862>,  <35.405029, 36.217010, 30.063299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432568, 36.431755, 30.166862>,  <35.478466, 36.789665, 30.339470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432568, 36.431755, 30.166862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466477, -0.432051, 0.771836,
		-0.877059, -0.112724, 0.466970,
		-0.114751, -0.894777, -0.431517,
		35.398144, 36.163322, 30.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185562, 36.474285, 30.795721>,  <35.478466, 36.789665, 30.339470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185562, 36.474285, 30.795721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361881, 36.196144, 30.568678>,  <35.467674, 36.029259, 30.432453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361881, 36.196144, 30.568678>,  <35.185562, 36.474285, 30.795721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361881, 36.196144, 30.568678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384151, -0.425375, 0.819442,
		-0.811249, -0.579255, 0.079618,
		0.440798, -0.695356, -0.567606,
		35.494122, 35.987537, 30.398396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067425, 35.852421, 31.162001>,  <35.185562, 36.474285, 30.795721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067425, 35.852421, 31.162001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367981, 35.774605, 30.909790>,  <35.548317, 35.727917, 30.758463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367981, 35.774605, 30.909790>,  <35.067425, 35.852421, 31.162001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367981, 35.774605, 30.909790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424037, -0.589771, 0.687286,
		-0.505572, -0.783788, -0.360657,
		0.751392, -0.194540, -0.630526,
		35.593399, 35.716244, 30.720633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141350, 35.123547, 31.140066>,  <35.067425, 35.852421, 31.162001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141350, 35.123547, 31.140066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501225, 35.260685, 31.031973>,  <35.717148, 35.342968, 30.967117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501225, 35.260685, 31.031973>,  <35.141350, 35.123547, 31.140066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501225, 35.260685, 31.031973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433480, -0.628446, 0.645872,
		0.051604, -0.698223, -0.714018,
		0.899685, 0.342843, -0.270235,
		35.771130, 35.363537, 30.950903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553303, 34.568871, 31.282501>,  <35.141350, 35.123547, 31.140066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553303, 34.568871, 31.282501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816120, 34.868053, 31.244883>,  <35.973812, 35.047565, 31.222311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816120, 34.868053, 31.244883>,  <35.553303, 34.568871, 31.282501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816120, 34.868053, 31.244883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598652, -0.441879, 0.668101,
		0.458156, -0.495274, -0.738104,
		0.657045, 0.747962, -0.094047,
		36.013233, 35.092442, 31.216669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284615, 34.221077, 31.275772>,  <35.553303, 34.568871, 31.282501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284615, 34.221077, 31.275772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323982, 34.604031, 31.384380>,  <36.347603, 34.833805, 31.449545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323982, 34.604031, 31.384380>,  <36.284615, 34.221077, 31.275772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323982, 34.604031, 31.384380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699380, -0.260645, 0.665531,
		0.707941, 0.124394, -0.695230,
		0.098420, 0.957387, 0.271520,
		36.353508, 34.891247, 31.465836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907082, 34.279263, 31.393312>,  <36.284615, 34.221077, 31.275772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907082, 34.279263, 31.393312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776581, 34.592175, 31.605576>,  <36.698280, 34.779922, 31.732933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776581, 34.592175, 31.605576>,  <36.907082, 34.279263, 31.393312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776581, 34.592175, 31.605576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521114, -0.319526, 0.791418,
		0.788670, 0.534734, -0.303412,
		-0.326250, 0.782280, 0.530658,
		36.678707, 34.826859, 31.764772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542595, 34.568077, 31.701946>,  <36.907082, 34.279263, 31.393312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542595, 34.568077, 31.701946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244205, 34.712708, 31.925657>,  <37.065174, 34.799488, 32.059883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244205, 34.712708, 31.925657>,  <37.542595, 34.568077, 31.701946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244205, 34.712708, 31.925657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523441, -0.200883, 0.828043,
		0.411752, 0.910443, -0.039412,
		-0.745969, 0.361579, 0.559277,
		37.020416, 34.821182, 32.093441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818558, 35.038033, 32.146732>,  <37.542595, 34.568077, 31.701946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818558, 35.038033, 32.146732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481651, 34.884335, 32.297962>,  <37.279507, 34.792114, 32.388702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481651, 34.884335, 32.297962>,  <37.818558, 35.038033, 32.146732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481651, 34.884335, 32.297962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479780, -0.214590, 0.850742,
		-0.245763, 0.897945, 0.365096,
		-0.842265, -0.384247, 0.378078,
		37.228973, 34.769062, 32.411385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428974, 35.200459, 31.698751>,  <37.818558, 35.038033, 32.146732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428974, 35.200459, 31.698751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.723118, 35.100147, 31.446922>,  <38.899605, 35.039963, 31.295826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.723118, 35.100147, 31.446922>,  <38.428974, 35.200459, 31.698751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723118, 35.100147, 31.446922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578487, 0.251611, -0.775915,
		0.352987, 0.934775, 0.039955,
		0.735359, -0.250774, -0.629571,
		38.943726, 35.024914, 31.258051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492031, 35.755775, 31.174234>,  <38.428974, 35.200459, 31.698751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492031, 35.755775, 31.174234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698555, 35.462257, 30.997614>,  <38.822472, 35.286148, 30.891642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698555, 35.462257, 30.997614>,  <38.492031, 35.755775, 31.174234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698555, 35.462257, 30.997614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540937, 0.120282, -0.832417,
		0.663933, 0.668639, -0.334834,
		0.516313, -0.733794, -0.441551,
		38.853447, 35.242119, 30.865149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850204, 36.049435, 30.619627>,  <38.492031, 35.755775, 31.174234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850204, 36.049435, 30.619627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815594, 35.661556, 30.528233>,  <38.794827, 35.428829, 30.473396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815594, 35.661556, 30.528233>,  <38.850204, 36.049435, 30.619627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815594, 35.661556, 30.528233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456710, 0.242439, -0.855943,
		0.885397, 0.030286, -0.463848,
		-0.086531, -0.969694, -0.228486,
		38.789635, 35.370647, 30.459686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134785, 36.071163, 29.969915>,  <38.850204, 36.049435, 30.619627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134785, 36.071163, 29.969915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916698, 35.736206, 29.985468>,  <38.785847, 35.535233, 29.994799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916698, 35.736206, 29.985468>,  <39.134785, 36.071163, 29.969915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916698, 35.736206, 29.985468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314792, 0.161531, -0.935315,
		0.776945, -0.522190, -0.351674,
		-0.545218, -0.837392, 0.038881,
		38.753132, 35.484989, 29.997131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217033, 35.894726, 29.385281>,  <39.134785, 36.071163, 29.969915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217033, 35.894726, 29.385281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900726, 35.665306, 29.470808>,  <38.710941, 35.527653, 29.522125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900726, 35.665306, 29.470808>,  <39.217033, 35.894726, 29.385281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900726, 35.665306, 29.470808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358057, 0.150110, -0.921554,
		0.496463, -0.805298, -0.324067,
		-0.790771, -0.573552, 0.213819,
		38.663494, 35.493240, 29.534954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230721, 35.537457, 28.767429>,  <39.217033, 35.894726, 29.385281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230721, 35.537457, 28.767429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875465, 35.513733, 28.949722>,  <38.662312, 35.499500, 29.059097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875465, 35.513733, 28.949722>,  <39.230721, 35.537457, 28.767429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875465, 35.513733, 28.949722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458938, 0.166632, -0.872703,
		-0.024185, -0.984234, -0.175209,
		-0.888139, -0.059304, 0.455732,
		38.609024, 35.495941, 29.086441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893967, 35.186867, 28.279661>,  <39.230721, 35.537457, 28.767429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893967, 35.186867, 28.279661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619972, 35.341156, 28.526892>,  <38.455578, 35.433727, 28.675230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619972, 35.341156, 28.526892>,  <38.893967, 35.186867, 28.279661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619972, 35.341156, 28.526892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656094, 0.042263, -0.753495,
		-0.316760, -0.921647, 0.224120,
		-0.684984, 0.385721, 0.618075,
		38.414478, 35.456871, 28.712315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219910, 34.858849, 28.340445>,  <38.893967, 35.186867, 28.279661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219910, 34.858849, 28.340445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138969, 35.232376, 28.458450>,  <38.090405, 35.456493, 28.529253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138969, 35.232376, 28.458450>,  <38.219910, 34.858849, 28.340445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138969, 35.232376, 28.458450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569715, 0.132774, -0.811046,
		-0.796541, -0.332192, 0.505144,
		-0.202353, 0.933820, 0.295015,
		38.078262, 35.512524, 28.546955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439075, 34.935329, 28.364943>,  <38.219910, 34.858849, 28.340445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439075, 34.935329, 28.364943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574059, 35.311825, 28.359440>,  <37.655048, 35.537724, 28.356138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574059, 35.311825, 28.359440>,  <37.439075, 34.935329, 28.364943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574059, 35.311825, 28.359440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726039, 0.250941, -0.640231,
		-0.599160, 0.226037, 0.768059,
		0.337453, 0.941242, -0.013758,
		37.675293, 35.594196, 28.355312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802727, 35.416618, 28.397036>,  <37.439075, 34.935329, 28.364943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802727, 35.416618, 28.397036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096222, 35.643936, 28.248083>,  <37.272320, 35.780327, 28.158712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096222, 35.643936, 28.248083>,  <36.802727, 35.416618, 28.397036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096222, 35.643936, 28.248083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645701, 0.412719, -0.642443,
		-0.211405, 0.711834, 0.669776,
		0.733742, 0.568291, -0.372381,
		37.316345, 35.814423, 28.136368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457645, 35.978153, 28.235193>,  <36.802727, 35.416618, 28.397036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457645, 35.978153, 28.235193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793442, 36.045033, 28.028393>,  <36.994919, 36.085159, 27.904312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793442, 36.045033, 28.028393>,  <36.457645, 35.978153, 28.235193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793442, 36.045033, 28.028393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514130, 0.552325, -0.656207,
		0.175836, 0.816689, 0.549637,
		0.839495, 0.167200, -0.517003,
		37.045292, 36.095192, 27.873293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403423, 36.677948, 28.032099>,  <36.457645, 35.978153, 28.235193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403423, 36.677948, 28.032099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676254, 36.541634, 27.773289>,  <36.839951, 36.459846, 27.618002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676254, 36.541634, 27.773289>,  <36.403423, 36.677948, 28.032099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676254, 36.541634, 27.773289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451760, 0.499401, -0.739264,
		0.575055, 0.796532, 0.186675,
		0.682073, -0.340785, -0.647025,
		36.880875, 36.439400, 27.579182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643642, 37.315384, 27.609186>,  <36.403423, 36.677948, 28.032099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643642, 37.315384, 27.609186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717583, 36.973995, 27.414286>,  <36.761948, 36.769161, 27.297344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717583, 36.973995, 27.414286>,  <36.643642, 37.315384, 27.609186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717583, 36.973995, 27.414286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369592, 0.399030, -0.839153,
		0.910623, 0.335199, -0.241678,
		0.184846, -0.853474, -0.487252,
		36.773037, 36.717953, 27.268110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015720, 37.486229, 27.015774>,  <36.643642, 37.315384, 27.609186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015720, 37.486229, 27.015774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832245, 37.136639, 26.951561>,  <36.722160, 36.926884, 26.913034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832245, 37.136639, 26.951561>,  <37.015720, 37.486229, 27.015774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832245, 37.136639, 26.951561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465260, 0.390124, -0.794567,
		0.757060, -0.289768, -0.585572,
		-0.458686, -0.873978, -0.160530,
		36.694637, 36.874447, 26.903402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072536, 37.299885, 26.332272>,  <37.015720, 37.486229, 27.015774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072536, 37.299885, 26.332272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750851, 37.098194, 26.458130>,  <36.557838, 36.977180, 26.533644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750851, 37.098194, 26.458130>,  <37.072536, 37.299885, 26.332272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750851, 37.098194, 26.458130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545194, 0.415061, -0.728346,
		0.236652, -0.757287, -0.608697,
		-0.804213, -0.504223, 0.314644,
		36.509586, 36.946926, 26.552523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761993, 37.179249, 25.708044>,  <37.072536, 37.299885, 26.332272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761993, 37.179249, 25.708044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474720, 37.080139, 25.968143>,  <36.302357, 37.020672, 26.124203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474720, 37.080139, 25.968143>,  <36.761993, 37.179249, 25.708044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474720, 37.080139, 25.968143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685617, 0.092261, -0.722092,
		0.118930, -0.964413, -0.236144,
		-0.718182, -0.247783, 0.650245,
		36.259266, 37.005806, 26.163218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189304, 36.806965, 25.298944>,  <36.761993, 37.179249, 25.708044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189304, 36.806965, 25.298944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006367, 36.925888, 25.634192>,  <35.896603, 36.997242, 25.835340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006367, 36.925888, 25.634192>,  <36.189304, 36.806965, 25.298944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006367, 36.925888, 25.634192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733352, 0.407006, -0.544556,
		-0.503022, -0.863685, 0.031893,
		-0.457344, 0.297313, 0.838118,
		35.869164, 37.015083, 25.885628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489758, 36.620457, 25.212976>,  <36.189304, 36.806965, 25.298944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489758, 36.620457, 25.212976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529808, 36.930275, 25.462791>,  <35.553841, 37.116165, 25.612680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529808, 36.930275, 25.462791>,  <35.489758, 36.620457, 25.212976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529808, 36.930275, 25.462791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673733, 0.514674, -0.530278,
		-0.732160, -0.367676, 0.573373,
		0.100130, 0.774549, 0.624539,
		35.559849, 37.162640, 25.650154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.805317, 36.718918, 25.441570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977600, 37.067207, 25.536510>,  <35.080971, 37.276180, 25.593473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977600, 37.067207, 25.536510>,  <34.805317, 36.718918, 25.441570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977600, 37.067207, 25.536510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780628, 0.491413, -0.386179,
		-0.452890, -0.018950, 0.891365,
		0.430710, 0.870720, 0.237349,
		35.106812, 37.328423, 25.607716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282272, 37.168232, 25.658535>,  <34.805317, 36.718918, 25.441570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282272, 37.168232, 25.658535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568813, 37.443493, 25.612436>,  <34.740738, 37.608650, 25.584776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568813, 37.443493, 25.612436>,  <34.282272, 37.168232, 25.658535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568813, 37.443493, 25.612436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689416, 0.672648, -0.268794,
		-0.107451, 0.272005, 0.956278,
		0.716352, 0.688155, -0.115248,
		34.783718, 37.649940, 25.577862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920540, 37.790852, 25.851717>,  <34.282272, 37.168232, 25.658535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920540, 37.790852, 25.851717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246342, 37.903225, 25.648680>,  <34.441826, 37.970650, 25.526857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246342, 37.903225, 25.648680>,  <33.920540, 37.790852, 25.851717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246342, 37.903225, 25.648680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520980, 0.739147, -0.426898,
		0.255254, 0.612157, 0.748404,
		0.814509, 0.280936, -0.507592,
		34.490696, 37.987507, 25.496403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933758, 38.529362, 25.914385>,  <33.920540, 37.790852, 25.851717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933758, 38.529362, 25.914385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146568, 38.436455, 25.588686>,  <34.274254, 38.380711, 25.393267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.146568, 38.436455, 25.588686>,  <33.933758, 38.529362, 25.914385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146568, 38.436455, 25.588686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468036, 0.720704, -0.511398,
		0.705612, 0.653175, 0.274725,
		0.532028, -0.232268, -0.814247,
		34.306175, 38.366776, 25.344412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103981, 39.187210, 25.658939>,  <33.933758, 38.529362, 25.914385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103981, 39.187210, 25.658939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140907, 38.925388, 25.358799>,  <34.163063, 38.768295, 25.178715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140907, 38.925388, 25.358799>,  <34.103981, 39.187210, 25.658939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140907, 38.925388, 25.358799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486107, 0.628043, -0.607670,
		0.869010, 0.420850, -0.260206,
		0.092317, -0.654559, -0.750353,
		34.168602, 38.729019, 25.133694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389027, 39.581505, 25.102358>,  <34.103981, 39.187210, 25.658939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389027, 39.581505, 25.102358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226921, 39.255852, 24.936005>,  <34.129658, 39.060459, 24.836193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226921, 39.255852, 24.936005>,  <34.389027, 39.581505, 25.102358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226921, 39.255852, 24.936005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326903, 0.553888, -0.765730,
		0.853756, -0.174366, -0.490609,
		-0.405260, -0.814128, -0.415884,
		34.105343, 39.011612, 24.811239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572945, 39.632835, 24.425287>,  <34.389027, 39.581505, 25.102358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572945, 39.632835, 24.425287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243645, 39.407101, 24.449909>,  <34.046066, 39.271660, 24.464684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243645, 39.407101, 24.449909>,  <34.572945, 39.632835, 24.425287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243645, 39.407101, 24.449909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460236, 0.600009, -0.654348,
		0.332340, -0.567019, -0.753684,
		-0.823245, -0.564339, 0.061556,
		33.996670, 39.237801, 24.468376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291401, 39.622097, 23.778801>,  <34.572945, 39.632835, 24.425287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291401, 39.622097, 23.778801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968937, 39.469292, 23.959541>,  <33.775459, 39.377609, 24.067986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968937, 39.469292, 23.959541>,  <34.291401, 39.622097, 23.778801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968937, 39.469292, 23.959541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583058, 0.382833, -0.716577,
		0.100761, -0.841131, -0.531362,
		-0.806158, -0.382017, 0.451853,
		33.727089, 39.354687, 24.095097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999168, 39.228264, 23.220768>,  <34.291401, 39.622097, 23.778801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999168, 39.228264, 23.220768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722450, 39.273769, 23.505997>,  <33.556419, 39.301071, 23.677134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722450, 39.273769, 23.505997>,  <33.999168, 39.228264, 23.220768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722450, 39.273769, 23.505997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638974, 0.363529, -0.677908,
		-0.336344, -0.924611, -0.178796,
		-0.691798, 0.113764, 0.713073,
		33.514912, 39.307899, 23.719919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429058, 38.750996, 23.036543>,  <33.999168, 39.228264, 23.220768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429058, 38.750996, 23.036543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289936, 39.042629, 23.272326>,  <33.206463, 39.217609, 23.413795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289936, 39.042629, 23.272326>,  <33.429058, 38.750996, 23.036543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289936, 39.042629, 23.272326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634762, 0.279585, -0.720353,
		-0.690004, -0.624711, 0.365555,
		-0.347809, 0.729087, 0.589458,
		33.185593, 39.261356, 23.449163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637745, 38.807034, 22.966450>,  <33.429058, 38.750996, 23.036543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637745, 38.807034, 22.966450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726711, 39.169949, 23.109203>,  <32.780090, 39.387695, 23.194855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726711, 39.169949, 23.109203>,  <32.637745, 38.807034, 22.966450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726711, 39.169949, 23.109203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688722, 0.405300, -0.601160,
		-0.690069, -0.112087, 0.715011,
		0.222412, 0.907286, 0.356883,
		32.793434, 39.442135, 23.216269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934505, 39.229195, 23.069101>,  <32.637745, 38.807034, 22.966450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934505, 39.229195, 23.069101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244244, 39.482147, 23.060278>,  <32.430088, 39.633919, 23.054985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244244, 39.482147, 23.060278>,  <31.934505, 39.229195, 23.069101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244244, 39.482147, 23.060278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555215, 0.662310, -0.503073,
		-0.303524, 0.401798, 0.863963,
		0.774345, 0.632380, -0.022057,
		32.476547, 39.671860, 23.053661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669065, 39.836533, 23.233526>,  <31.934505, 39.229195, 23.069101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669065, 39.836533, 23.233526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998882, 39.940819, 23.032663>,  <32.196774, 40.003391, 22.912146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998882, 39.940819, 23.032663>,  <31.669065, 39.836533, 23.233526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998882, 39.940819, 23.032663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531062, 0.662810, -0.527879,
		0.195208, 0.701934, 0.684969,
		0.824540, 0.260714, -0.502156,
		32.246246, 40.019032, 22.882017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590544, 40.521984, 23.078962>,  <31.669065, 39.836533, 23.233526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590544, 40.521984, 23.078962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885946, 40.398819, 22.839029>,  <32.063187, 40.324921, 22.695070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885946, 40.398819, 22.839029>,  <31.590544, 40.521984, 23.078962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885946, 40.398819, 22.839029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196706, 0.752541, -0.628481,
		0.644914, 0.582128, 0.495190,
		0.738507, -0.307909, -0.599833,
		32.107498, 40.306446, 22.659079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001266, 41.153763, 22.839626>,  <31.590544, 40.521984, 23.078962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001266, 41.153763, 22.839626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104359, 40.886574, 22.560373>,  <32.166214, 40.726261, 22.392820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104359, 40.886574, 22.560373>,  <32.001266, 41.153763, 22.839626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104359, 40.886574, 22.560373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197509, 0.670866, -0.714793,
		0.945814, 0.322113, 0.040974,
		0.257733, -0.667969, -0.698135,
		32.181679, 40.686184, 22.350933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381756, 41.614811, 22.427448>,  <32.001266, 41.153763, 22.839626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381756, 41.614811, 22.427448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277988, 41.291370, 22.216219>,  <32.215729, 41.097305, 22.089481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277988, 41.291370, 22.216219>,  <32.381756, 41.614811, 22.427448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277988, 41.291370, 22.216219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304825, 0.587400, -0.749695,
		0.916396, -0.033516, -0.398867,
		-0.259421, -0.808602, -0.528075,
		32.200161, 41.048790, 22.057796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581959, 41.754475, 21.716553>,  <32.381756, 41.614811, 22.427448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581959, 41.754475, 21.716553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305489, 41.465668, 21.728964>,  <32.139606, 41.292381, 21.736410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305489, 41.465668, 21.728964>,  <32.581959, 41.754475, 21.716553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305489, 41.465668, 21.728964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512844, 0.459779, -0.724979,
		0.509184, -0.516999, -0.688072,
		-0.691175, -0.722021, 0.031027,
		32.098137, 41.249062, 21.738274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421295, 41.637901, 21.060040>,  <32.581959, 41.754475, 21.716553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421295, 41.637901, 21.060040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.102676, 41.508671, 21.264446>,  <31.911507, 41.431133, 21.387091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.102676, 41.508671, 21.264446>,  <32.421295, 41.637901, 21.060040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102676, 41.508671, 21.264446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592934, 0.252340, -0.764692,
		0.118106, -0.912110, -0.392563,
		-0.796543, -0.323079, 0.511018,
		31.863714, 41.411747, 21.417751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055962, 41.586857, 20.503231>,  <32.421295, 41.637901, 21.060040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055962, 41.586857, 20.503231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821516, 41.600704, 20.827026>,  <31.680849, 41.609013, 21.021303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821516, 41.600704, 20.827026>,  <32.055962, 41.586857, 20.503231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821516, 41.600704, 20.827026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616466, 0.629277, -0.473265,
		-0.525778, -0.776410, -0.347485,
		-0.586112, 0.034619, 0.809490,
		31.645683, 41.611092, 21.069874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369698, 41.475868, 20.322208>,  <32.055962, 41.586857, 20.503231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369698, 41.475868, 20.322208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375647, 41.686462, 20.662230>,  <31.379217, 41.812820, 20.866241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375647, 41.686462, 20.662230>,  <31.369698, 41.475868, 20.322208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375647, 41.686462, 20.662230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448424, 0.763370, -0.464954,
		-0.893697, -0.374269, 0.247444,
		0.014873, 0.526488, 0.850052,
		31.380108, 41.844410, 20.917246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652464, 41.632645, 20.437057>,  <31.369698, 41.475868, 20.322208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652464, 41.632645, 20.437057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843569, 41.894627, 20.671247>,  <30.958231, 42.051815, 20.811762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843569, 41.894627, 20.671247>,  <30.652464, 41.632645, 20.437057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843569, 41.894627, 20.671247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477769, 0.752993, -0.452481,
		-0.737211, -0.063543, 0.672668,
		0.477762, 0.654954, 0.585473,
		30.986897, 42.091114, 20.846889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137362, 42.092800, 20.604519>,  <30.652464, 41.632645, 20.437057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137362, 42.092800, 20.604519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490919, 42.275585, 20.644363>,  <30.703053, 42.385254, 20.668270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490919, 42.275585, 20.644363>,  <30.137362, 42.092800, 20.604519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490919, 42.275585, 20.644363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349827, 0.787335, -0.507666,
		-0.310411, 0.413875, 0.855776,
		0.883893, 0.456959, 0.099612,
		30.756086, 42.412674, 20.674248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951969, 42.797382, 20.693502>,  <30.137362, 42.092800, 20.604519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951969, 42.797382, 20.693502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335218, 42.787125, 20.579422>,  <30.565168, 42.780968, 20.510973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335218, 42.787125, 20.579422>,  <29.951969, 42.797382, 20.693502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335218, 42.787125, 20.579422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123461, 0.861656, -0.492247,
		0.258372, 0.506845, 0.822407,
		0.958124, -0.025648, -0.285203,
		30.622656, 42.779430, 20.493860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462454, 43.151234, 20.994759>,  <29.951969, 42.797382, 20.693502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462454, 43.151234, 20.994759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.166672, 43.339352, 21.187437>,  <28.989202, 43.452221, 21.303043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.166672, 43.339352, 21.187437>,  <29.462454, 43.151234, 20.994759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166672, 43.339352, 21.187437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295177, -0.416578, 0.859845,
		0.605043, 0.778002, 0.169221,
		-0.739455, 0.470293, 0.481696,
		28.944836, 43.480438, 21.331945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676476, 43.488018, 21.649616>,  <29.462454, 43.151234, 20.994759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676476, 43.488018, 21.649616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299070, 43.355579, 21.654617>,  <29.072626, 43.276115, 21.657618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.299070, 43.355579, 21.654617>,  <29.676476, 43.488018, 21.649616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299070, 43.355579, 21.654617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224521, -0.611162, 0.758994,
		-0.243658, 0.718929, 0.650978,
		-0.943515, -0.331093, 0.012501,
		29.016016, 43.256252, 21.658367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407015, 43.610172, 22.340216>,  <29.676476, 43.488018, 21.649616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407015, 43.610172, 22.340216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.179249, 43.322643, 22.180685>,  <29.042589, 43.150127, 22.084967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.179249, 43.322643, 22.180685>,  <29.407015, 43.610172, 22.340216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179249, 43.322643, 22.180685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130316, -0.557956, 0.819575,
		-0.811656, 0.414704, 0.411382,
		-0.569414, -0.718822, -0.398826,
		29.008425, 43.106998, 22.061037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012247, 43.184948, 22.978249>,  <29.407015, 43.610172, 22.340216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012247, 43.184948, 22.978249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.997358, 42.935108, 22.666225>,  <28.988426, 42.785206, 22.479012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.997358, 42.935108, 22.666225>,  <29.012247, 43.184948, 22.978249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997358, 42.935108, 22.666225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302615, -0.750990, 0.586888,
		-0.952386, -0.214213, 0.216966,
		-0.037221, -0.624601, -0.780057,
		28.986193, 42.747726, 22.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732576, 42.592335, 23.200014>,  <29.012247, 43.184948, 22.978249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732576, 42.592335, 23.200014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897415, 42.453682, 22.862963>,  <28.996319, 42.370491, 22.660732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.897415, 42.453682, 22.862963>,  <28.732576, 42.592335, 23.200014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897415, 42.453682, 22.862963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306820, -0.818000, 0.486557,
		-0.857926, -0.459044, -0.230741,
		0.412097, -0.346634, -0.842628,
		29.021044, 42.349693, 22.610174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462561, 41.920631, 23.174747>,  <28.732576, 42.592335, 23.200014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462561, 41.920631, 23.174747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.794289, 41.924213, 22.951265>,  <28.993324, 41.926361, 22.817177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.794289, 41.924213, 22.951265>,  <28.462561, 41.920631, 23.174747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794289, 41.924213, 22.951265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331591, -0.812673, 0.479177,
		-0.449754, -0.582652, -0.676933,
		0.829318, 0.008954, -0.558705,
		29.043085, 41.926899, 22.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421141, 41.355618, 22.817240>,  <28.462561, 41.920631, 23.174747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421141, 41.355618, 22.817240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.800846, 41.480396, 22.801289>,  <29.028669, 41.555264, 22.791718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.800846, 41.480396, 22.801289>,  <28.421141, 41.355618, 22.817240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800846, 41.480396, 22.801289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259302, -0.704633, 0.660496,
		0.177937, -0.637326, -0.749770,
		0.949263, 0.311944, -0.039880,
		29.085625, 41.573978, 22.789324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875164, 40.725178, 22.900846>,  <28.421141, 41.355618, 22.817240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875164, 40.725178, 22.900846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.110476, 41.031052, 23.006056>,  <29.251661, 41.214577, 23.069181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.110476, 41.031052, 23.006056>,  <28.875164, 40.725178, 22.900846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110476, 41.031052, 23.006056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485996, -0.594290, 0.640802,
		0.646327, -0.249140, -0.721243,
		0.588277, 0.764689, 0.263024,
		29.286959, 41.260460, 23.084963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434452, 40.356422, 22.879660>,  <28.875164, 40.725178, 22.900846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434452, 40.356422, 22.879660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528828, 40.697186, 23.066669>,  <29.585453, 40.901646, 23.178875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528828, 40.697186, 23.066669>,  <29.434452, 40.356422, 22.879660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528828, 40.697186, 23.066669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521773, -0.516933, 0.678626,
		0.819809, 0.083830, -0.566468,
		0.235937, 0.851911, 0.467526,
		29.599609, 40.952759, 23.206926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104742, 40.443321, 22.852211>,  <29.434452, 40.356422, 22.879660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104742, 40.443321, 22.852211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967102, 40.646091, 23.168343>,  <29.884518, 40.767754, 23.358021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967102, 40.646091, 23.168343>,  <30.104742, 40.443321, 22.852211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967102, 40.646091, 23.168343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738819, -0.373263, 0.561089,
		0.579433, 0.776980, -0.246089,
		-0.344099, 0.506929, 0.790328,
		29.863873, 40.798172, 23.405441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687410, 40.744411, 23.159460>,  <30.104742, 40.443321, 22.852211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687410, 40.744411, 23.159460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.419252, 40.744968, 23.456261>,  <30.258358, 40.745300, 23.634340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.419252, 40.744968, 23.456261>,  <30.687410, 40.744411, 23.159460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419252, 40.744968, 23.456261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690910, -0.363489, 0.624915,
		0.270577, 0.931598, 0.242722,
		-0.670396, 0.001388, 0.742002,
		30.218134, 40.745384, 23.678862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036320, 41.005577, 23.761448>,  <30.687410, 40.744411, 23.159460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036320, 41.005577, 23.761448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.715637, 40.799698, 23.883005>,  <30.523228, 40.676170, 23.955940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.715637, 40.799698, 23.883005>,  <31.036320, 41.005577, 23.761448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715637, 40.799698, 23.883005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550457, -0.437617, 0.710977,
		-0.232952, 0.737274, 0.634161,
		-0.801705, -0.514701, 0.303894,
		30.475126, 40.645287, 23.974173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254242, 40.894886, 24.425072>,  <31.036320, 41.005577, 23.761448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254242, 40.894886, 24.425072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938395, 40.649498, 24.420046>,  <30.748886, 40.502266, 24.417030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938395, 40.649498, 24.420046>,  <31.254242, 40.894886, 24.425072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938395, 40.649498, 24.420046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453105, -0.596772, 0.662238,
		-0.413763, 0.517220, 0.749189,
		-0.789618, -0.613470, -0.012567,
		30.701509, 40.465458, 24.416275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117586, 40.688541, 25.067924>,  <31.254242, 40.894886, 24.425072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117586, 40.688541, 25.067924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967319, 40.390263, 24.847811>,  <30.877159, 40.211296, 24.715742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967319, 40.390263, 24.847811>,  <31.117586, 40.688541, 25.067924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967319, 40.390263, 24.847811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478307, -0.664588, 0.574060,
		-0.793787, -0.047551, 0.606334,
		-0.375665, -0.745696, -0.550285,
		30.854620, 40.166553, 24.682726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781950, 40.243256, 25.573191>,  <31.117586, 40.688541, 25.067924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781950, 40.243256, 25.573191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.830967, 40.017040, 25.246964>,  <30.860376, 39.881313, 25.051228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.830967, 40.017040, 25.246964>,  <30.781950, 40.243256, 25.573191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830967, 40.017040, 25.246964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388481, -0.728858, 0.563780,
		-0.913272, -0.385920, 0.130385,
		0.122542, -0.565536, -0.815569,
		30.867729, 39.847378, 25.002293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545782, 39.514599, 25.729443>,  <30.781950, 40.243256, 25.573191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545782, 39.514599, 25.729443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720804, 39.435425, 25.378590>,  <30.825817, 39.387920, 25.168077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720804, 39.435425, 25.378590>,  <30.545782, 39.514599, 25.729443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720804, 39.435425, 25.378590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412197, -0.822787, 0.391299,
		-0.799147, -0.532768, -0.278427,
		0.437558, -0.197939, -0.877133,
		30.852072, 39.376041, 25.115450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443714, 38.760342, 25.607351>,  <30.545782, 39.514599, 25.729443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443714, 38.760342, 25.607351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.755554, 38.848610, 25.372906>,  <30.942657, 38.901569, 25.232239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.755554, 38.848610, 25.372906>,  <30.443714, 38.760342, 25.607351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755554, 38.848610, 25.372906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475584, -0.817514, 0.324794,
		-0.407485, -0.531956, -0.742279,
		0.779600, 0.220668, -0.586114,
		30.989433, 38.914810, 25.197071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695181, 38.109325, 25.278824>,  <30.443714, 38.760342, 25.607351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695181, 38.109325, 25.278824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006701, 38.358574, 25.249998>,  <31.193613, 38.508121, 25.232702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006701, 38.358574, 25.249998>,  <30.695181, 38.109325, 25.278824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006701, 38.358574, 25.249998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600139, -0.706753, 0.374610,
		0.182494, -0.334996, -0.924377,
		0.778800, 0.623119, -0.072066,
		31.240341, 38.545509, 25.228378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275145, 37.674515, 24.980225>,  <30.695181, 38.109325, 25.278824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275145, 37.674515, 24.980225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.427517, 37.994980, 25.164843>,  <31.518940, 38.187260, 25.275614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.427517, 37.994980, 25.164843>,  <31.275145, 37.674515, 24.980225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427517, 37.994980, 25.164843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673354, -0.582469, 0.455329,
		0.633631, 0.137336, -0.761348,
		0.380929, 0.801167, 0.461546,
		31.541796, 38.235329, 25.303307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900160, 37.568027, 24.983658>,  <31.275145, 37.674515, 24.980225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900160, 37.568027, 24.983658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896061, 37.847286, 25.270010>,  <31.893602, 38.014843, 25.441822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896061, 37.847286, 25.270010>,  <31.900160, 37.568027, 24.983658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896061, 37.847286, 25.270010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735094, -0.480079, 0.478707,
		0.677888, 0.531147, -0.508283,
		-0.010248, 0.698145, 0.715883,
		31.892986, 38.056728, 25.484776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576286, 37.868378, 25.094425>,  <31.900160, 37.568027, 24.983658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576286, 37.868378, 25.094425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371933, 37.911629, 25.435555>,  <32.249321, 37.937580, 25.640232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371933, 37.911629, 25.435555>,  <32.576286, 37.868378, 25.094425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371933, 37.911629, 25.435555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679265, -0.557252, 0.477566,
		0.526876, 0.823273, 0.211242,
		-0.510882, 0.108129, 0.852824,
		32.218670, 37.944069, 25.691402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.583496, 35.687691, 26.872644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372013, 35.950054, 27.088142>,  <37.245121, 36.107471, 27.217442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372013, 35.950054, 27.088142>,  <37.583496, 35.687691, 26.872644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372013, 35.950054, 27.088142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482164, -0.290281, 0.826592,
		0.698557, 0.696792, -0.162782,
		-0.528711, 0.655910, 0.538746,
		37.213398, 36.146828, 27.249765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100189, 36.073296, 27.166477>,  <37.583496, 35.687691, 26.872644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100189, 36.073296, 27.166477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.776028, 36.122990, 27.395498>,  <37.581532, 36.152805, 27.532911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.776028, 36.122990, 27.395498>,  <38.100189, 36.073296, 27.166477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776028, 36.122990, 27.395498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537128, -0.232731, 0.810759,
		0.233977, 0.964573, 0.121874,
		-0.810400, 0.124237, 0.572553,
		37.532909, 36.160259, 27.567265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263268, 36.617470, 27.649494>,  <38.100189, 36.073296, 27.166477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263268, 36.617470, 27.649494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980648, 36.376167, 27.797482>,  <37.811077, 36.231388, 27.886274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980648, 36.376167, 27.797482>,  <38.263268, 36.617470, 27.649494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980648, 36.376167, 27.797482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567569, -0.170804, 0.805414,
		-0.422676, 0.779046, 0.463069,
		-0.706548, -0.603252, 0.369968,
		37.768684, 36.195190, 27.908472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097244, 36.803230, 28.333206>,  <38.263268, 36.617470, 27.649494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097244, 36.803230, 28.333206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.973255, 36.423016, 28.341116>,  <37.898861, 36.194885, 28.345861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.973255, 36.423016, 28.341116>,  <38.097244, 36.803230, 28.333206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973255, 36.423016, 28.341116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394020, -0.109508, 0.912555,
		-0.865255, 0.290656, 0.408476,
		-0.309971, -0.950540, 0.019772,
		37.880264, 36.137852, 28.347048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801720, 36.686089, 28.952133>,  <38.097244, 36.803230, 28.333206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801720, 36.686089, 28.952133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.901428, 36.326672, 28.807640>,  <37.961254, 36.111023, 28.720945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.901428, 36.326672, 28.807640>,  <37.801720, 36.686089, 28.952133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901428, 36.326672, 28.807640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305286, -0.281078, 0.909833,
		-0.919055, -0.337077, 0.204246,
		0.249274, -0.898540, -0.361231,
		37.976212, 36.057110, 28.699270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490578, 36.096817, 29.360270>,  <37.801720, 36.686089, 28.952133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490578, 36.096817, 29.360270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.766445, 35.885342, 29.162342>,  <37.931965, 35.758457, 29.043587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.766445, 35.885342, 29.162342>,  <37.490578, 36.096817, 29.360270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766445, 35.885342, 29.162342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275988, -0.439841, 0.854617,
		-0.669466, -0.725968, -0.157434,
		0.689671, -0.528688, -0.494817,
		37.973347, 35.726734, 29.013897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404427, 35.475365, 29.653534>,  <37.490578, 36.096817, 29.360270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404427, 35.475365, 29.653534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.771793, 35.493828, 29.496367>,  <37.992214, 35.504906, 29.402067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.771793, 35.493828, 29.496367>,  <37.404427, 35.475365, 29.653534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771793, 35.493828, 29.496367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366926, -0.470708, 0.802371,
		-0.147914, -0.881081, -0.449242,
		0.918415, 0.046157, -0.392916,
		38.047318, 35.507675, 29.378492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588669, 34.826843, 29.749439>,  <37.404427, 35.475365, 29.653534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588669, 34.826843, 29.749439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913643, 35.053875, 29.696062>,  <38.108627, 35.190094, 29.664036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913643, 35.053875, 29.696062>,  <37.588669, 34.826843, 29.749439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913643, 35.053875, 29.696062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470220, -0.502493, 0.725531,
		0.344744, -0.652191, -0.675129,
		0.812431, 0.567581, -0.133441,
		38.157372, 35.224148, 29.656029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043224, 34.319080, 30.068413>,  <37.588669, 34.826843, 29.749439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043224, 34.319080, 30.068413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238968, 34.665688, 30.029078>,  <38.356415, 34.873653, 30.005476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238968, 34.665688, 30.029078>,  <38.043224, 34.319080, 30.068413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238968, 34.665688, 30.029078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626302, -0.270737, 0.731059,
		0.606852, -0.419342, -0.675191,
		0.489362, 0.866518, -0.098337,
		38.385777, 34.925644, 29.999577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749390, 34.115082, 30.100504>,  <38.043224, 34.319080, 30.068413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749390, 34.115082, 30.100504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.763691, 34.501286, 30.203663>,  <38.772270, 34.733009, 30.265558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.763691, 34.501286, 30.203663>,  <38.749390, 34.115082, 30.100504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763691, 34.501286, 30.203663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668773, -0.214874, 0.711738,
		0.742607, 0.147031, -0.653389,
		0.035749, 0.965511, 0.257898,
		38.774414, 34.790939, 30.281033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436646, 34.235737, 30.266148>,  <38.749390, 34.115082, 30.100504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436646, 34.235737, 30.266148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.248833, 34.537678, 30.449335>,  <39.136147, 34.718842, 30.559248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.248833, 34.537678, 30.449335>,  <39.436646, 34.235737, 30.266148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248833, 34.537678, 30.449335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596940, -0.110776, 0.794601,
		0.650540, 0.646471, -0.398589,
		-0.469532, 0.754854, 0.457969,
		39.107971, 34.764133, 30.586725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943806, 34.553108, 30.616772>,  <39.436646, 34.235737, 30.266148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943806, 34.553108, 30.616772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601803, 34.651855, 30.799204>,  <39.396599, 34.711105, 30.908663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601803, 34.651855, 30.799204>,  <39.943806, 34.553108, 30.616772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601803, 34.651855, 30.799204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419927, -0.186508, 0.888187,
		0.304329, 0.950931, 0.055799,
		-0.855012, 0.246870, 0.456081,
		39.345299, 34.725918, 30.936028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168068, 35.179745, 31.126823>,  <39.943806, 34.553108, 30.616772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168068, 35.179745, 31.126823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813160, 35.045250, 31.253130>,  <39.600216, 34.964554, 31.328913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813160, 35.045250, 31.253130>,  <40.168068, 35.179745, 31.126823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813160, 35.045250, 31.253130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416855, -0.291445, 0.860983,
		-0.197463, 0.895549, 0.398749,
		-0.887266, -0.336233, 0.315764,
		39.546982, 34.944382, 31.347858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071217, 35.516636, 31.686275>,  <40.168068, 35.179745, 31.126823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071217, 35.516636, 31.686275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891136, 35.159466, 31.687088>,  <39.783089, 34.945164, 31.687576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891136, 35.159466, 31.687088>,  <40.071217, 35.516636, 31.686275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891136, 35.159466, 31.687088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242001, -0.119824, 0.962849,
		-0.859507, 0.433970, 0.270033,
		-0.450204, -0.892923, 0.002032,
		39.756077, 34.891590, 31.687698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172050, 36.051971, 32.163635>,  <40.071217, 35.516636, 31.686275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172050, 36.051971, 32.163635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187210, 36.305035, 32.473038>,  <40.196308, 36.456871, 32.658680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187210, 36.305035, 32.473038>,  <40.172050, 36.051971, 32.163635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187210, 36.305035, 32.473038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536668, 0.665843, -0.518305,
		-0.842942, -0.395469, 0.364766,
		0.037903, 0.632659, 0.773503,
		40.198582, 36.494831, 32.705090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545410, 36.373238, 32.084621>,  <40.172050, 36.051971, 32.163635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545410, 36.373238, 32.084621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739868, 36.612659, 32.339302>,  <39.856544, 36.756313, 32.492111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739868, 36.612659, 32.339302>,  <39.545410, 36.373238, 32.084621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739868, 36.612659, 32.339302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480411, 0.791675, -0.377433,
		-0.729976, -0.122390, 0.672425,
		0.486148, 0.598558, 0.636701,
		39.885712, 36.792225, 32.530312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014664, 36.868851, 32.331738>,  <39.545410, 36.373238, 32.084621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014664, 36.868851, 32.331738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368343, 37.049271, 32.380318>,  <39.580551, 37.157524, 32.409466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368343, 37.049271, 32.380318>,  <39.014664, 36.868851, 32.331738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368343, 37.049271, 32.380318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342577, 0.802903, -0.487841,
		-0.317554, 0.389741, 0.864443,
		0.884195, 0.451054, 0.121449,
		39.633602, 37.184586, 32.416752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903591, 37.574734, 32.667038>,  <39.014664, 36.868851, 32.331738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903591, 37.574734, 32.667038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251213, 37.567238, 32.469292>,  <39.459785, 37.562740, 32.350643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251213, 37.567238, 32.469292>,  <38.903591, 37.574734, 32.667038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251213, 37.567238, 32.469292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322281, 0.736701, -0.594479,
		0.375341, 0.675958, 0.634192,
		0.869053, -0.018744, -0.494363,
		39.511929, 37.561615, 32.320984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006760, 38.244907, 32.573124>,  <38.903591, 37.574734, 32.667038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006760, 38.244907, 32.573124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234127, 38.052959, 32.305805>,  <39.370548, 37.937790, 32.145412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234127, 38.052959, 32.305805>,  <39.006760, 38.244907, 32.573124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234127, 38.052959, 32.305805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170877, 0.725716, -0.666436,
		0.804799, 0.493012, 0.330512,
		0.568419, -0.479870, -0.668300,
		39.404652, 37.908997, 32.105316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405724, 38.766594, 32.254379>,  <39.006760, 38.244907, 32.573124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405724, 38.766594, 32.254379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385143, 38.459103, 31.999378>,  <39.372795, 38.274609, 31.846378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385143, 38.459103, 31.999378>,  <39.405724, 38.766594, 32.254379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385143, 38.459103, 31.999378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076784, 0.639503, -0.764944,
		0.995719, 0.009593, -0.091929,
		-0.051451, -0.768729, -0.637502,
		39.369709, 38.228485, 31.808128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783237, 38.896523, 31.686375>,  <39.405724, 38.766594, 32.254379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783237, 38.896523, 31.686375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555058, 38.615482, 31.516228>,  <39.418148, 38.446857, 31.414139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555058, 38.615482, 31.516228>,  <39.783237, 38.896523, 31.686375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555058, 38.615482, 31.516228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171812, 0.608525, -0.774712,
		0.803160, -0.368852, -0.467849,
		-0.570452, -0.702599, -0.425370,
		39.383923, 38.404701, 31.388617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853634, 38.959442, 31.041418>,  <39.783237, 38.896523, 31.686375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853634, 38.959442, 31.041418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518265, 38.741653, 31.031656>,  <39.317043, 38.610981, 31.025799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.518265, 38.741653, 31.031656>,  <39.853634, 38.959442, 31.041418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518265, 38.741653, 31.031656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262210, 0.442220, -0.857722,
		0.477801, -0.712734, -0.513534,
		-0.838423, -0.544474, -0.024407,
		39.266739, 38.578312, 31.024336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856579, 38.666374, 30.399851>,  <39.853634, 38.959442, 31.041418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856579, 38.666374, 30.399851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484074, 38.665318, 30.545589>,  <39.260571, 38.664684, 30.633032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484074, 38.665318, 30.545589>,  <39.856579, 38.666374, 30.399851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484074, 38.665318, 30.545589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290808, 0.607849, -0.738884,
		-0.219514, -0.794048, -0.566834,
		-0.931260, -0.002644, 0.364347,
		39.204697, 38.664524, 30.654894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429413, 38.420475, 29.878967>,  <39.856579, 38.666374, 30.399851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429413, 38.420475, 29.878967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.199005, 38.626717, 30.132690>,  <39.060760, 38.750462, 30.284924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.199005, 38.626717, 30.132690>,  <39.429413, 38.420475, 29.878967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199005, 38.626717, 30.132690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392079, 0.506617, -0.767863,
		-0.717266, -0.691006, -0.089665,
		-0.576024, 0.515606, 0.634308,
		39.026199, 38.781399, 30.322983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859226, 38.559490, 29.484764>,  <39.429413, 38.420475, 29.878967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859226, 38.559490, 29.484764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851097, 38.822392, 29.786121>,  <38.846222, 38.980133, 29.966936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851097, 38.822392, 29.786121>,  <38.859226, 38.559490, 29.484764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851097, 38.822392, 29.786121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328755, 0.707253, -0.625870,
		-0.944197, -0.260399, 0.201705,
		-0.020319, 0.657256, 0.753393,
		38.845001, 39.019569, 30.012140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278416, 38.898922, 29.380699>,  <38.859226, 38.559490, 29.484764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278416, 38.898922, 29.380699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.457455, 39.126686, 29.656504>,  <38.564880, 39.263344, 29.821987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.457455, 39.126686, 29.656504>,  <38.278416, 38.898922, 29.380699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457455, 39.126686, 29.656504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465011, 0.806823, -0.364419,
		-0.763819, -0.157517, 0.625915,
		0.447601, 0.569408, 0.689513,
		38.591736, 39.297508, 29.863358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784142, 39.352562, 29.635199>,  <38.278416, 38.898922, 29.380699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784142, 39.352562, 29.635199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126850, 39.546921, 29.704298>,  <38.332474, 39.663536, 29.745758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126850, 39.546921, 29.704298>,  <37.784142, 39.352562, 29.635199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126850, 39.546921, 29.704298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378988, 0.820443, -0.428067,
		-0.349728, 0.301286, 0.887083,
		0.856772, 0.485901, 0.172748,
		38.383881, 39.692692, 29.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509983, 40.019161, 29.871380>,  <37.784142, 39.352562, 29.635199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509983, 40.019161, 29.871380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879807, 40.034214, 29.719711>,  <38.101700, 40.043243, 29.628710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879807, 40.034214, 29.719711>,  <37.509983, 40.019161, 29.871380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879807, 40.034214, 29.719711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298739, 0.689279, -0.660037,
		0.236517, 0.723518, 0.648522,
		0.924562, 0.037629, -0.379169,
		38.157173, 40.045502, 29.605961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315563, 40.711121, 30.294989>,  <37.509983, 40.019161, 29.871380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315563, 40.711121, 30.294989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.969505, 40.644001, 30.484035>,  <36.761871, 40.603729, 30.597464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.969505, 40.644001, 30.484035>,  <37.315563, 40.711121, 30.294989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969505, 40.644001, 30.484035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499173, -0.379208, 0.779119,
		0.048486, 0.909970, 0.411831,
		-0.865144, -0.167799, 0.472619,
		36.709961, 40.593662, 30.625822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522732, 40.831261, 31.015364>,  <37.315563, 40.711121, 30.294989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522732, 40.831261, 31.015364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.191483, 40.611996, 31.062229>,  <36.992733, 40.480434, 31.090349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.191483, 40.611996, 31.062229>,  <37.522732, 40.831261, 31.015364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191483, 40.611996, 31.062229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363349, -0.365776, 0.856846,
		-0.426839, 0.752144, 0.502083,
		-0.828122, -0.548167, 0.117163,
		36.943047, 40.447544, 31.097378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175461, 40.922897, 31.683144>,  <37.522732, 40.831261, 31.015364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175461, 40.922897, 31.683144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052883, 40.569801, 31.540674>,  <36.979336, 40.357944, 31.455193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052883, 40.569801, 31.540674>,  <37.175461, 40.922897, 31.683144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052883, 40.569801, 31.540674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183461, -0.421934, 0.887870,
		-0.934041, 0.206739, 0.291248,
		-0.306445, -0.882740, -0.356176,
		36.960949, 40.304977, 31.433821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297161, 40.543640, 32.271854>,  <37.175461, 40.922897, 31.683144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297161, 40.543640, 32.271854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.173309, 40.256973, 32.021885>,  <37.098999, 40.084972, 31.871904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.173309, 40.256973, 32.021885>,  <37.297161, 40.543640, 32.271854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173309, 40.256973, 32.021885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000506, -0.657342, 0.753592,
		-0.950858, 0.233015, 0.203892,
		-0.309625, -0.716663, -0.624921,
		37.080421, 40.041973, 31.834408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706421, 40.388702, 32.583652>,  <37.297161, 40.543640, 32.271854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706421, 40.388702, 32.583652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838955, 40.097023, 32.344158>,  <36.918476, 39.922016, 32.200462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838955, 40.097023, 32.344158>,  <36.706421, 40.388702, 32.583652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838955, 40.097023, 32.344158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030053, -0.642420, 0.765763,
		-0.943036, -0.235728, -0.234768,
		0.331332, -0.729198, -0.598740,
		36.938354, 39.878265, 32.164536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355896, 39.955059, 32.786789>,  <36.706421, 40.388702, 32.583652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355896, 39.955059, 32.786789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.654125, 39.761803, 32.603180>,  <36.833061, 39.645847, 32.493015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.654125, 39.761803, 32.603180>,  <36.355896, 39.955059, 32.786789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654125, 39.761803, 32.603180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065044, -0.738246, 0.671388,
		-0.663247, -0.470709, -0.581839,
		0.745569, -0.483141, -0.459023,
		36.877796, 39.616859, 32.465473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176613, 39.285004, 32.716209>,  <36.355896, 39.955059, 32.786789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176613, 39.285004, 32.716209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568050, 39.246910, 32.643238>,  <36.802914, 39.224056, 32.599457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568050, 39.246910, 32.643238>,  <36.176613, 39.285004, 32.716209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568050, 39.246910, 32.643238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054923, -0.733460, 0.677510,
		-0.198324, -0.673028, -0.712531,
		0.978596, -0.095232, -0.182428,
		36.861629, 39.218342, 32.588509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257103, 38.568172, 32.617878>,  <36.176613, 39.285004, 32.716209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257103, 38.568172, 32.617878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607533, 38.729595, 32.723431>,  <36.817791, 38.826450, 32.786762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607533, 38.729595, 32.723431>,  <36.257103, 38.568172, 32.617878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607533, 38.729595, 32.723431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132077, -0.727192, 0.673607,
		0.463736, -0.555276, -0.690375,
		0.876073, 0.403559, 0.263886,
		36.870354, 38.850662, 32.802597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696819, 37.998539, 32.685184>,  <36.257103, 38.568172, 32.617878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696819, 37.998539, 32.685184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864429, 38.288578, 32.903778>,  <36.964996, 38.462601, 33.034935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864429, 38.288578, 32.903778>,  <36.696819, 37.998539, 32.685184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864429, 38.288578, 32.903778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158267, -0.650989, 0.742405,
		0.894075, -0.224595, -0.387540,
		0.419025, 0.725100, 0.546487,
		36.990135, 38.506107, 33.067722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285095, 37.687019, 33.062050>,  <36.696819, 37.998539, 32.685184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285095, 37.687019, 33.062050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227798, 38.027264, 33.264412>,  <37.193420, 38.231411, 33.385830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227798, 38.027264, 33.264412>,  <37.285095, 37.687019, 33.062050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227798, 38.027264, 33.264412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061491, -0.502541, 0.862364,
		0.987776, 0.154634, 0.019679,
		-0.143240, 0.850612, 0.505906,
		37.184826, 38.282448, 33.416183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736317, 37.696552, 33.642563>,  <37.285095, 37.687019, 33.062050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736317, 37.696552, 33.642563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479469, 37.983082, 33.751789>,  <37.325363, 38.154999, 33.817326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.479469, 37.983082, 33.751789>,  <37.736317, 37.696552, 33.642563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479469, 37.983082, 33.751789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035446, -0.383563, 0.922834,
		0.765788, 0.582887, 0.271683,
		-0.642115, 0.716326, 0.273067,
		37.286835, 38.197979, 33.833710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994541, 38.041573, 34.180119>,  <37.736317, 37.696552, 33.642563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994541, 38.041573, 34.180119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595337, 38.064190, 34.191204>,  <37.355812, 38.077763, 34.197857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595337, 38.064190, 34.191204>,  <37.994541, 38.041573, 34.180119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595337, 38.064190, 34.191204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009212, -0.304286, 0.952536,
		0.062297, 0.950901, 0.303161,
		-0.998015, 0.056547, 0.027716,
		37.295933, 38.081154, 34.199520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.852146, 42.854939, 28.523453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514397, 42.741959, 28.705555>,  <34.311749, 42.674171, 28.814816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514397, 42.741959, 28.705555>,  <34.852146, 42.854939, 28.523453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514397, 42.741959, 28.705555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533987, -0.374656, 0.757952,
		-0.043520, 0.883093, 0.467175,
		-0.844372, -0.282451, 0.455255,
		34.261086, 42.657223, 28.842131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782082, 43.228630, 29.161381>,  <34.852146, 42.854939, 28.523453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782082, 43.228630, 29.161381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548233, 42.911163, 29.228685>,  <34.407925, 42.720684, 29.269068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548233, 42.911163, 29.228685>,  <34.782082, 43.228630, 29.161381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548233, 42.911163, 29.228685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646370, -0.330296, 0.687831,
		-0.490333, 0.510878, 0.706100,
		-0.584619, -0.793668, 0.168261,
		34.372849, 42.673061, 29.279163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773678, 43.071617, 29.951363>,  <34.782082, 43.228630, 29.161381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773678, 43.071617, 29.951363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706051, 42.750393, 29.722797>,  <34.665474, 42.557659, 29.585659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706051, 42.750393, 29.722797>,  <34.773678, 43.071617, 29.951363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706051, 42.750393, 29.722797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737753, -0.487553, 0.466919,
		-0.653557, -0.342620, 0.674889,
		-0.169069, -0.803059, -0.571412,
		34.655331, 42.509476, 29.551374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146873, 42.455830, 30.326946>,  <34.773678, 43.071617, 29.951363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146873, 42.455830, 30.326946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041458, 42.258602, 29.995302>,  <34.978207, 42.140266, 29.796316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041458, 42.258602, 29.995302>,  <35.146873, 42.455830, 30.326946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041458, 42.258602, 29.995302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583102, -0.766124, 0.270270,
		-0.768465, -0.412230, 0.489416,
		-0.263540, -0.493073, -0.829112,
		34.962395, 42.110680, 29.746569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960300, 41.745010, 30.595757>,  <35.146873, 42.455830, 30.326946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960300, 41.745010, 30.595757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060646, 41.728786, 30.208887>,  <35.120853, 41.719051, 29.976767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060646, 41.728786, 30.208887>,  <34.960300, 41.745010, 30.595757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060646, 41.728786, 30.208887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674530, -0.709299, 0.204706,
		-0.694317, -0.703740, -0.150578,
		0.250865, -0.040562, -0.967172,
		35.135906, 41.716618, 29.918736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901390, 40.882599, 30.258675>,  <34.960300, 41.745010, 30.595757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901390, 40.882599, 30.258675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152161, 41.133999, 30.074522>,  <35.302624, 41.284840, 29.964029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152161, 41.133999, 30.074522>,  <34.901390, 40.882599, 30.258675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152161, 41.133999, 30.074522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758766, -0.626625, 0.177805,
		-0.176738, -0.460794, -0.869731,
		0.626927, 0.628498, -0.460383,
		35.340240, 41.322548, 29.936407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324383, 40.385181, 29.801197>,  <34.901390, 40.882599, 30.258675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324383, 40.385181, 29.801197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517582, 40.730534, 29.859554>,  <35.633503, 40.937744, 29.894569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517582, 40.730534, 29.859554>,  <35.324383, 40.385181, 29.801197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517582, 40.730534, 29.859554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863159, -0.497482, 0.086422,
		0.147195, 0.084189, -0.985518,
		0.483002, 0.863379, 0.145895,
		35.662483, 40.989548, 29.903322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123539, 40.241806, 29.533283>,  <35.324383, 40.385181, 29.801197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123539, 40.241806, 29.533283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104233, 40.553707, 29.782970>,  <36.092648, 40.740849, 29.932783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104233, 40.553707, 29.782970>,  <36.123539, 40.241806, 29.533283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104233, 40.553707, 29.782970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768544, -0.370171, 0.521836,
		0.637974, 0.504927, -0.581411,
		-0.048268, 0.779757, 0.624219,
		36.089752, 40.787636, 29.970236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877747, 40.358959, 29.740654>,  <36.123539, 40.241806, 29.533283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877747, 40.358959, 29.740654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672832, 40.557396, 30.021069>,  <36.549885, 40.676456, 30.189318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672832, 40.557396, 30.021069>,  <36.877747, 40.358959, 29.740654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672832, 40.557396, 30.021069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562858, -0.422588, 0.710359,
		0.648654, 0.758493, -0.062743,
		-0.512288, 0.496093, 0.701037,
		36.519146, 40.706223, 30.231380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561535, 40.703285, 29.635731>,  <36.877747, 40.358959, 29.740654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561535, 40.703285, 29.635731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855156, 40.535305, 29.422262>,  <38.031330, 40.434517, 29.294182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855156, 40.535305, 29.422262>,  <37.561535, 40.703285, 29.635731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855156, 40.535305, 29.422262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365197, 0.418433, -0.831592,
		0.572536, 0.805328, 0.153787,
		0.734053, -0.419953, -0.533671,
		38.075371, 40.409321, 29.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853916, 41.216202, 29.216070>,  <37.561535, 40.703285, 29.635731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853916, 41.216202, 29.216070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931816, 40.876816, 29.019220>,  <37.978558, 40.673183, 28.901112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931816, 40.876816, 29.019220>,  <37.853916, 41.216202, 29.216070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931816, 40.876816, 29.019220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242758, 0.444426, -0.862296,
		0.950337, 0.287399, -0.119418,
		0.194751, -0.848462, -0.492123,
		37.990242, 40.622276, 28.871584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088028, 41.495136, 28.683853>,  <37.853916, 41.216202, 29.216070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088028, 41.495136, 28.683853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050751, 41.116085, 28.561666>,  <38.028385, 40.888653, 28.488356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050751, 41.116085, 28.561666>,  <38.088028, 41.495136, 28.683853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050751, 41.116085, 28.561666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543524, 0.305475, -0.781835,
		0.834204, 0.093163, -0.543530,
		-0.093196, -0.947632, -0.305465,
		38.022793, 40.831795, 28.470028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323429, 41.536549, 27.927471>,  <38.088028, 41.495136, 28.683853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323429, 41.536549, 27.927471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078903, 41.228691, 28.001169>,  <37.932186, 41.043976, 28.045387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078903, 41.228691, 28.001169>,  <38.323429, 41.536549, 27.927471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078903, 41.228691, 28.001169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534774, 0.230128, -0.813055,
		0.583360, -0.595563, -0.552265,
		-0.611317, -0.769640, 0.184244,
		37.895508, 40.997799, 28.056442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193001, 41.389839, 27.340361>,  <38.323429, 41.536549, 27.927471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193001, 41.389839, 27.340361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900723, 41.223240, 27.556734>,  <37.725357, 41.123280, 27.686558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900723, 41.223240, 27.556734>,  <38.193001, 41.389839, 27.340361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900723, 41.223240, 27.556734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659197, 0.224320, -0.717732,
		0.177591, -0.881028, -0.438464,
		-0.730699, -0.416497, 0.540934,
		37.681515, 41.098289, 27.719013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686905, 41.061840, 26.830116>,  <38.193001, 41.389839, 27.340361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686905, 41.061840, 26.830116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454491, 41.088413, 27.154581>,  <37.315041, 41.104359, 27.349260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454491, 41.088413, 27.154581>,  <37.686905, 41.061840, 26.830116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454491, 41.088413, 27.154581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760408, 0.310975, -0.570153,
		-0.290128, -0.948093, -0.130172,
		-0.581039, 0.066434, 0.811160,
		37.280178, 41.108345, 27.397928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008640, 41.070847, 26.495148>,  <37.686905, 41.061840, 26.830116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008640, 41.070847, 26.495148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927666, 41.156658, 26.877352>,  <36.879082, 41.208145, 27.106674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927666, 41.156658, 26.877352>,  <37.008640, 41.070847, 26.495148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927666, 41.156658, 26.877352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838332, 0.466364, -0.282320,
		-0.506179, -0.858186, 0.085432,
		-0.202441, 0.214525, 0.955509,
		36.866932, 41.221016, 27.164005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262241, 40.951263, 26.547712>,  <37.008640, 41.070847, 26.495148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262241, 40.951263, 26.547712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417686, 41.232639, 26.785753>,  <36.510952, 41.401466, 26.928577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417686, 41.232639, 26.785753>,  <36.262241, 40.951263, 26.547712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417686, 41.232639, 26.785753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705477, 0.642614, -0.298915,
		-0.592691, -0.303668, 0.745991,
		0.388613, 0.703444, 0.595102,
		36.534271, 41.443672, 26.964285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682392, 41.251808, 26.828787>,  <36.262241, 40.951263, 26.547712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682392, 41.251808, 26.828787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973457, 41.522923, 26.870951>,  <36.148094, 41.685593, 26.896250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973457, 41.522923, 26.870951>,  <35.682392, 41.251808, 26.828787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973457, 41.522923, 26.870951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643744, 0.727854, -0.236270,
		-0.236865, 0.104067, 0.965953,
		0.727660, 0.677790, 0.105411,
		36.191757, 41.726261, 26.902575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372128, 41.927345, 27.039713>,  <35.682392, 41.251808, 26.828787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372128, 41.927345, 27.039713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732311, 42.026543, 26.896791>,  <35.948421, 42.086060, 26.811039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732311, 42.026543, 26.896791>,  <35.372128, 41.927345, 27.039713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732311, 42.026543, 26.896791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386543, 0.832900, -0.396059,
		0.199380, 0.494750, 0.845855,
		0.900462, 0.247993, -0.357305,
		36.002449, 42.100941, 26.789600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412846, 42.710163, 27.149799>,  <35.372128, 41.927345, 27.039713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412846, 42.710163, 27.149799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692764, 42.616932, 26.879702>,  <35.860718, 42.560993, 26.717644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692764, 42.616932, 26.879702>,  <35.412846, 42.710163, 27.149799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692764, 42.616932, 26.879702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339725, 0.722939, -0.601620,
		0.628383, 0.650412, 0.426731,
		0.699801, -0.233076, -0.675243,
		35.902706, 42.547009, 26.677128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480545, 43.343681, 26.838764>,  <35.412846, 42.710163, 27.149799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480545, 43.343681, 26.838764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656658, 43.092438, 26.582130>,  <35.762325, 42.941692, 26.428150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656658, 43.092438, 26.582130>,  <35.480545, 43.343681, 26.838764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656658, 43.092438, 26.582130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264669, 0.592024, -0.761221,
		0.857962, 0.504962, 0.094419,
		0.440286, -0.628109, -0.641582,
		35.788742, 42.904007, 26.389656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964561, 43.763237, 26.401781>,  <35.480545, 43.343681, 26.838764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964561, 43.763237, 26.401781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872379, 43.430656, 26.199560>,  <35.817070, 43.231110, 26.078228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872379, 43.430656, 26.199560>,  <35.964561, 43.763237, 26.401781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872379, 43.430656, 26.199560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378663, 0.555212, -0.740509,
		0.896386, 0.020784, -0.442787,
		-0.230450, -0.831449, -0.505555,
		35.803246, 43.181221, 26.047894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275234, 43.794811, 25.650444>,  <35.964561, 43.763237, 26.401781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275234, 43.794811, 25.650444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961327, 43.547733, 25.670807>,  <35.772984, 43.399487, 25.683025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961327, 43.547733, 25.670807>,  <36.275234, 43.794811, 25.650444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961327, 43.547733, 25.670807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336635, 0.355832, -0.871815,
		0.520404, -0.701308, -0.487183,
		-0.784765, -0.617698, 0.050908,
		35.725895, 43.362423, 25.686079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.300924, 39.720596, 27.998810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.573225, 39.994240, 27.894060>,  <29.736605, 40.158424, 27.831209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.573225, 39.994240, 27.894060>,  <29.300924, 39.720596, 27.998810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573225, 39.994240, 27.894060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712481, -0.535336, 0.453636,
		0.170143, -0.495394, -0.851842,
		0.680751, 0.684105, -0.261876,
		29.777451, 40.199471, 27.815498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825588, 39.360378, 27.666498>,  <29.300924, 39.720596, 27.998810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825588, 39.360378, 27.666498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.001310, 39.689884, 27.809843>,  <30.106745, 39.887589, 27.895851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.001310, 39.689884, 27.809843>,  <29.825588, 39.360378, 27.666498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001310, 39.689884, 27.809843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719048, -0.561567, 0.409404,
		0.538498, 0.077827, -0.839025,
		0.439306, 0.823763, 0.358364,
		30.133102, 39.937012, 27.917353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515457, 39.196293, 27.509346>,  <29.825588, 39.360378, 27.666498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515457, 39.196293, 27.509346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.487144, 39.495537, 27.773262>,  <30.470156, 39.675083, 27.931612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.487144, 39.495537, 27.773262>,  <30.515457, 39.196293, 27.509346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487144, 39.495537, 27.773262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765195, -0.383597, 0.517039,
		0.639895, 0.541465, -0.545298,
		-0.070784, 0.748110, 0.659788,
		30.465910, 39.719971, 27.971199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185230, 39.431362, 27.560205>,  <30.515457, 39.196293, 27.509346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185230, 39.431362, 27.560205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017740, 39.560410, 27.899755>,  <30.917246, 39.637840, 28.103485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017740, 39.560410, 27.899755>,  <31.185230, 39.431362, 27.560205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017740, 39.560410, 27.899755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791338, -0.328928, 0.515355,
		0.445483, 0.887537, -0.117574,
		-0.418723, 0.322623, 0.848873,
		30.892124, 39.657196, 28.154417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714725, 39.697865, 28.066652>,  <31.185230, 39.431362, 27.560205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714725, 39.697865, 28.066652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440636, 39.684475, 28.357677>,  <31.276182, 39.676441, 28.532293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440636, 39.684475, 28.357677>,  <31.714725, 39.697865, 28.066652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440636, 39.684475, 28.357677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700061, -0.305893, 0.645247,
		0.200955, 0.951477, 0.233041,
		-0.685224, -0.033477, 0.727563,
		31.235069, 39.674431, 28.575947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060513, 39.956787, 28.613775>,  <31.714725, 39.697865, 28.066652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060513, 39.956787, 28.613775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.752312, 39.743523, 28.753527>,  <31.567392, 39.615562, 28.837378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.752312, 39.743523, 28.753527>,  <32.060513, 39.956787, 28.613775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752312, 39.743523, 28.753527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609263, -0.454815, 0.649570,
		-0.187424, 0.713358, 0.675272,
		-0.770500, -0.533164, 0.349380,
		31.521162, 39.583572, 28.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090126, 40.011600, 29.402988>,  <32.060513, 39.956787, 28.613775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090126, 40.011600, 29.402988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.896791, 39.682808, 29.282501>,  <31.780790, 39.485531, 29.210209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.896791, 39.682808, 29.282501>,  <32.090126, 40.011600, 29.402988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896791, 39.682808, 29.282501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525115, -0.547527, 0.651513,
		-0.700456, 0.156726, 0.696274,
		-0.483338, -0.821980, -0.301219,
		31.751789, 39.436214, 29.192135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046638, 39.672009, 30.078886>,  <32.090126, 40.011600, 29.402988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046638, 39.672009, 30.078886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.970146, 39.389477, 29.806261>,  <31.924250, 39.219959, 29.642685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.970146, 39.389477, 29.806261>,  <32.046638, 39.672009, 30.078886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970146, 39.389477, 29.806261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380942, -0.693359, 0.611667,
		-0.904607, -0.142666, 0.401663,
		-0.191233, -0.706328, -0.681565,
		31.912777, 39.177578, 29.601791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862247, 39.142906, 30.508097>,  <32.046638, 39.672009, 30.078886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862247, 39.142906, 30.508097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.928797, 38.958588, 30.159388>,  <31.968725, 38.847996, 29.950163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.928797, 38.958588, 30.159388>,  <31.862247, 39.142906, 30.508097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928797, 38.958588, 30.159388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479434, -0.734755, 0.479873,
		-0.861663, -0.497794, 0.098680,
		0.166372, -0.460799, -0.871771,
		31.978708, 38.820347, 29.897856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625059, 38.565216, 30.612274>,  <31.862247, 39.142906, 30.508097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625059, 38.565216, 30.612274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885109, 38.501823, 30.315027>,  <32.041138, 38.463787, 30.136679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885109, 38.501823, 30.315027>,  <31.625059, 38.565216, 30.612274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885109, 38.501823, 30.315027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393413, -0.766496, 0.507651,
		-0.650050, -0.622388, -0.435968,
		0.650124, -0.158483, -0.743116,
		32.080147, 38.454277, 30.092093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602930, 37.775364, 30.455624>,  <31.625059, 38.565216, 30.612274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602930, 37.775364, 30.455624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.936924, 37.922810, 30.292198>,  <32.137321, 38.011276, 30.194143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.936924, 37.922810, 30.292198>,  <31.602930, 37.775364, 30.455624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936924, 37.922810, 30.292198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466451, -0.868033, 0.170125,
		-0.291935, -0.332626, -0.896735,
		0.834983, 0.368617, -0.408563,
		32.187420, 38.033394, 30.169630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853771, 37.213249, 29.911810>,  <31.602930, 37.775364, 30.455624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853771, 37.213249, 29.911810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158775, 37.442657, 30.031578>,  <32.341778, 37.580303, 30.103439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158775, 37.442657, 30.031578>,  <31.853771, 37.213249, 29.911810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158775, 37.442657, 30.031578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527969, -0.819088, 0.224373,
		0.373934, -0.013002, -0.927364,
		0.762510, 0.573520, 0.299421,
		32.387527, 37.614712, 30.121405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434052, 36.828930, 29.753738>,  <31.853771, 37.213249, 29.911810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434052, 36.828930, 29.753738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585224, 37.093266, 30.013109>,  <32.675930, 37.251865, 30.168732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585224, 37.093266, 30.013109>,  <32.434052, 36.828930, 29.753738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585224, 37.093266, 30.013109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519845, -0.731014, 0.442018,
		0.766112, 0.170027, -0.619809,
		0.377934, 0.660840, 0.648426,
		32.698605, 37.291519, 30.207638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161369, 36.617603, 29.784012>,  <32.434052, 36.828930, 29.753738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161369, 36.617603, 29.784012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.113079, 36.840401, 30.112690>,  <33.084106, 36.974079, 30.309896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.113079, 36.840401, 30.112690>,  <33.161369, 36.617603, 29.784012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113079, 36.840401, 30.112690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398033, -0.731134, 0.554088,
		0.909393, 0.393954, -0.133436,
		-0.120726, 0.556996, 0.821694,
		33.076862, 37.007500, 30.359198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512302, 36.733097, 29.275377>,  <33.161369, 36.617603, 29.784012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512302, 36.733097, 29.275377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790668, 36.547363, 29.056253>,  <33.957687, 36.435925, 28.924778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790668, 36.547363, 29.056253>,  <33.512302, 36.733097, 29.275377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790668, 36.547363, 29.056253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414532, 0.363168, -0.834429,
		0.586402, 0.807776, 0.060252,
		0.695913, -0.464335, -0.547811,
		33.999443, 36.408062, 28.891911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596428, 37.188938, 28.804911>,  <33.512302, 36.733097, 29.275377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596428, 37.188938, 28.804911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.753941, 36.859951, 28.640722>,  <33.848450, 36.662560, 28.542210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.753941, 36.859951, 28.640722>,  <33.596428, 37.188938, 28.804911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753941, 36.859951, 28.640722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301107, 0.306493, -0.902993,
		0.868486, 0.479180, -0.126958,
		0.393784, -0.822465, -0.410470,
		33.872074, 36.613213, 28.517582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940434, 37.379169, 28.262581>,  <33.596428, 37.188938, 28.804911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940434, 37.379169, 28.262581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871174, 36.990929, 28.195696>,  <33.829617, 36.757984, 28.155565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871174, 36.990929, 28.195696>,  <33.940434, 37.379169, 28.262581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871174, 36.990929, 28.195696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370902, 0.221536, -0.901861,
		0.912387, -0.094140, -0.398355,
		-0.173151, -0.970598, -0.167210,
		33.819229, 36.699749, 28.145533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247952, 37.208363, 27.612726>,  <33.940434, 37.379169, 28.262581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247952, 37.208363, 27.612726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.952827, 36.947094, 27.680851>,  <33.775753, 36.790333, 27.721725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.952827, 36.947094, 27.680851>,  <34.247952, 37.208363, 27.612726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952827, 36.947094, 27.680851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445729, 0.281956, -0.849604,
		0.506916, -0.702758, -0.499167,
		-0.737809, -0.653171, 0.170311,
		33.731483, 36.751144, 27.731945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152969, 36.814945, 27.006634>,  <34.247952, 37.208363, 27.612726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152969, 36.814945, 27.006634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811935, 36.762173, 27.208899>,  <33.607315, 36.730511, 27.330257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.811935, 36.762173, 27.208899>,  <34.152969, 36.814945, 27.006634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811935, 36.762173, 27.208899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522185, 0.253225, -0.814371,
		-0.020608, -0.958370, -0.284786,
		-0.852583, -0.131929, 0.505665,
		33.556160, 36.722595, 27.360598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706676, 36.620312, 26.493313>,  <34.152969, 36.814945, 27.006634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706676, 36.620312, 26.493313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.476910, 36.738548, 26.798645>,  <33.339050, 36.809490, 26.981844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.476910, 36.738548, 26.798645>,  <33.706676, 36.620312, 26.493313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476910, 36.738548, 26.798645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626276, 0.441773, -0.642352,
		-0.527094, -0.847030, -0.068636,
		-0.574413, 0.295594, 0.763330,
		33.304585, 36.827225, 27.027645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086838, 36.424049, 26.331074>,  <33.706676, 36.620312, 26.493313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086838, 36.424049, 26.331074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995152, 36.710617, 26.594650>,  <32.940140, 36.882557, 26.752796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995152, 36.710617, 26.594650>,  <33.086838, 36.424049, 26.331074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995152, 36.710617, 26.594650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565883, 0.452726, -0.689068,
		-0.791981, -0.530831, 0.301636,
		-0.229220, 0.716420, 0.658939,
		32.926384, 36.925545, 26.792332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262234, 36.643524, 26.184172>,  <33.086838, 36.424049, 26.331074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262234, 36.643524, 26.184172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416126, 36.937653, 26.407341>,  <32.508461, 37.114132, 26.541243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416126, 36.937653, 26.407341>,  <32.262234, 36.643524, 26.184172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416126, 36.937653, 26.407341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563798, 0.665800, -0.488715,
		-0.730829, -0.126530, 0.670731,
		0.384735, 0.735324, 0.557923,
		32.531548, 37.158249, 26.574718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729980, 36.935951, 26.415743>,  <32.262234, 36.643524, 26.184172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729980, 36.935951, 26.415743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025402, 37.203060, 26.452869>,  <32.202656, 37.363327, 26.475145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025402, 37.203060, 26.452869>,  <31.729980, 36.935951, 26.415743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025402, 37.203060, 26.452869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540711, 0.668923, -0.510073,
		-0.402699, 0.326531, 0.855109,
		0.738556, 0.667772, 0.092816,
		32.246967, 37.403393, 26.480715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469336, 37.525826, 26.714209>,  <31.729980, 36.935951, 26.415743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469336, 37.525826, 26.714209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791897, 37.628483, 26.501099>,  <31.985434, 37.690075, 26.373232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.791897, 37.628483, 26.501099>,  <31.469336, 37.525826, 26.714209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791897, 37.628483, 26.501099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495141, 0.785615, -0.371006,
		0.323342, 0.562979, 0.760595,
		0.806403, 0.256640, -0.532776,
		32.033817, 37.705475, 26.341267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516651, 38.303364, 26.714348>,  <31.469336, 37.525826, 26.714209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516651, 38.303364, 26.714348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746019, 38.161320, 26.419027>,  <31.883640, 38.076096, 26.241835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746019, 38.161320, 26.419027>,  <31.516651, 38.303364, 26.714348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746019, 38.161320, 26.419027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191118, 0.818333, -0.542038,
		0.796656, 0.451918, 0.401383,
		0.573422, -0.355107, -0.738299,
		31.918045, 38.054787, 26.197538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968250, 38.878551, 26.479443>,  <31.516651, 38.303364, 26.714348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968250, 38.878551, 26.479443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.917328, 38.624027, 26.175100>,  <31.886774, 38.471313, 25.992495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.917328, 38.624027, 26.175100>,  <31.968250, 38.878551, 26.479443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917328, 38.624027, 26.175100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242881, 0.763742, -0.598086,
		0.961666, 0.108658, -0.251777,
		-0.127306, -0.636311, -0.760855,
		31.879135, 38.433132, 25.946844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196320, 39.243565, 25.874451>,  <31.968250, 38.878551, 26.479443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196320, 39.243565, 25.874451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.993923, 38.945457, 25.700762>,  <31.872486, 38.766594, 25.596548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.993923, 38.945457, 25.700762>,  <32.196320, 39.243565, 25.874451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993923, 38.945457, 25.700762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452719, 0.657974, -0.601760,
		0.734181, -0.107903, -0.670325,
		-0.505988, -0.745270, -0.434223,
		31.842127, 38.721878, 25.570496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213299, 39.377445, 25.197094>,  <32.196320, 39.243565, 25.874451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213299, 39.377445, 25.197094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.907507, 39.119762, 25.206642>,  <31.724031, 38.965153, 25.212372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.907507, 39.119762, 25.206642>,  <32.213299, 39.377445, 25.197094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907507, 39.119762, 25.206642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494313, 0.562030, -0.663157,
		0.413792, -0.518772, -0.748099,
		-0.764481, -0.644204, 0.023872,
		31.678164, 38.926502, 25.213804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721649, 38.961815, 24.804976>,  <32.213299, 39.377445, 25.197094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721649, 38.961815, 24.804976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.030628, 39.059372, 24.570425>,  <33.216015, 39.117905, 24.429695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.030628, 39.059372, 24.570425>,  <32.721649, 38.961815, 24.804976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030628, 39.059372, 24.570425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617375, -0.504846, 0.603307,
		-0.148885, -0.828038, -0.540543,
		0.772451, 0.243894, -0.586374,
		33.262363, 39.132542, 24.394512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080116, 38.293507, 24.551729>,  <32.721649, 38.961815, 24.804976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080116, 38.293507, 24.551729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.328545, 38.606155, 24.528618>,  <33.477600, 38.793747, 24.514751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.328545, 38.606155, 24.528618>,  <33.080116, 38.293507, 24.551729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328545, 38.606155, 24.528618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741651, -0.562265, 0.365802,
		0.253434, -0.270039, -0.928897,
		0.621067, 0.781625, -0.057777,
		33.514866, 38.840641, 24.511284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601009, 38.027748, 24.198723>,  <33.080116, 38.293507, 24.551729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601009, 38.027748, 24.198723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.742561, 38.338593, 24.406900>,  <33.827492, 38.525101, 24.531807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.742561, 38.338593, 24.406900>,  <33.601009, 38.027748, 24.198723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742561, 38.338593, 24.406900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658844, -0.602082, 0.451022,
		0.663846, 0.183283, -0.725063,
		0.353883, 0.777113, 0.520445,
		33.848724, 38.571728, 24.563034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344368, 37.965118, 24.114502>,  <33.601009, 38.027748, 24.198723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344368, 37.965118, 24.114502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.268478, 38.195351, 24.432674>,  <34.222946, 38.333492, 24.623577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.268478, 38.195351, 24.432674>,  <34.344368, 37.965118, 24.114502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268478, 38.195351, 24.432674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649485, -0.533992, 0.541315,
		0.736326, 0.619319, -0.272523,
		-0.189721, 0.575583, 0.795430,
		34.211563, 38.368027, 24.671303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964943, 38.133442, 24.287901>,  <34.344368, 37.965118, 24.114502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964943, 38.133442, 24.287901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.758831, 38.205448, 24.623062>,  <34.635166, 38.248653, 24.824160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.758831, 38.205448, 24.623062>,  <34.964943, 38.133442, 24.287901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758831, 38.205448, 24.623062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731699, -0.416632, 0.539475,
		0.446213, 0.891073, 0.082962,
		-0.515277, 0.180018, 0.837904,
		34.604248, 38.259453, 24.874434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414665, 38.473919, 24.722544>,  <34.964943, 38.133442, 24.287901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414665, 38.473919, 24.722544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.134457, 38.305275, 24.952856>,  <34.966331, 38.204090, 25.091043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.134457, 38.305275, 24.952856>,  <35.414665, 38.473919, 24.722544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134457, 38.305275, 24.952856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712898, -0.450075, 0.537781,
		0.032412, 0.787198, 0.615848,
		-0.700518, -0.421606, 0.575780,
		34.924301, 38.178795, 25.125589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743908, 38.510437, 25.296276>,  <35.414665, 38.473919, 24.722544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743908, 38.510437, 25.296276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444996, 38.270966, 25.411621>,  <35.265648, 38.127285, 25.480827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444996, 38.270966, 25.411621>,  <35.743908, 38.510437, 25.296276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444996, 38.270966, 25.411621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652228, -0.577789, 0.490671,
		-0.127141, 0.554748, 0.822246,
		-0.747284, -0.598677, 0.288362,
		35.220810, 38.091362, 25.498129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771358, 38.406376, 25.965158>,  <35.743908, 38.510437, 25.296276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771358, 38.406376, 25.965158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548519, 38.088638, 25.868280>,  <35.414814, 37.897995, 25.810154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548519, 38.088638, 25.868280>,  <35.771358, 38.406376, 25.965158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548519, 38.088638, 25.868280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563829, -0.575918, 0.591960,
		-0.609704, 0.193224, 0.768717,
		-0.557098, -0.794345, -0.242194,
		35.381390, 37.850334, 25.795622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536385, 38.015884, 26.612848>,  <35.771358, 38.406376, 25.965158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536385, 38.015884, 26.612848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513588, 37.748627, 26.316111>,  <35.499912, 37.588272, 26.138067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513588, 37.748627, 26.316111>,  <35.536385, 38.015884, 26.612848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513588, 37.748627, 26.316111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384991, -0.700291, 0.601144,
		-0.921159, -0.251344, 0.297139,
		-0.056990, -0.668145, -0.741845,
		35.496490, 37.548183, 26.093557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241009, 37.500206, 26.878391>,  <35.536385, 38.015884, 26.612848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241009, 37.500206, 26.878391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.442635, 37.346321, 26.569092>,  <35.563610, 37.253990, 26.383512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.442635, 37.346321, 26.569092>,  <35.241009, 37.500206, 26.878391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442635, 37.346321, 26.569092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322815, -0.746495, 0.581838,
		-0.801066, -0.542902, -0.252093,
		0.504067, -0.384711, -0.773248,
		35.593857, 37.230907, 26.337118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332527, 36.835693, 27.058554>,  <35.241009, 37.500206, 26.878391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332527, 36.835693, 27.058554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.600166, 36.877934, 26.764301>,  <35.760750, 36.903278, 26.587749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.600166, 36.877934, 26.764301>,  <35.332527, 36.835693, 27.058554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600166, 36.877934, 26.764301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638627, -0.587944, 0.496465,
		-0.380082, -0.801979, -0.460834,
		0.669099, 0.105604, -0.735632,
		35.800896, 36.909615, 26.543612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636921, 36.109135, 26.936277>,  <35.332527, 36.835693, 27.058554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636921, 36.109135, 26.936277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897060, 36.377674, 26.794098>,  <36.053143, 36.538799, 26.708790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897060, 36.377674, 26.794098>,  <35.636921, 36.109135, 26.936277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897060, 36.377674, 26.794098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758283, -0.545777, 0.356560,
		0.045382, -0.501415, -0.864016,
		0.650344, 0.671350, -0.355446,
		36.092163, 36.579079, 26.687464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205147, 35.681358, 26.673109>,  <35.636921, 36.109135, 26.936277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205147, 35.681358, 26.673109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355034, 36.046177, 26.739744>,  <36.444965, 36.265068, 26.779724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.355034, 36.046177, 26.739744>,  <36.205147, 35.681358, 26.673109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355034, 36.046177, 26.739744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714896, -0.398642, 0.574463,
		0.590348, -0.096170, -0.801399,
		0.374718, 0.912050, 0.166586,
		36.467449, 36.319794, 26.789721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883778, 35.612213, 26.616751>,  <36.205147, 35.681358, 26.673109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883778, 35.612213, 26.616751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.867199, 35.951366, 26.828175>,  <36.857250, 36.154858, 26.955029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.867199, 35.951366, 26.828175>,  <36.883778, 35.612213, 26.616751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867199, 35.951366, 26.828175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727450, -0.337028, 0.597686,
		0.684908, 0.409271, -0.602825,
		-0.041447, 0.847885, 0.528557,
		36.854763, 36.205730, 26.986742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.247028, 43.370823, 24.798645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.895718, 43.329277, 24.985338>,  <35.684933, 43.304348, 25.097355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.895718, 43.329277, 24.985338>,  <36.247028, 43.370823, 24.798645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895718, 43.329277, 24.985338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475196, 0.297946, -0.827899,
		-0.053070, -0.948915, -0.311037,
		-0.878278, -0.103867, 0.466732,
		35.632233, 43.298119, 25.125359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881584, 43.047543, 24.236404>,  <36.247028, 43.370823, 24.798645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881584, 43.047543, 24.236404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610905, 43.176517, 24.501165>,  <35.448498, 43.253902, 24.660021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610905, 43.176517, 24.501165>,  <35.881584, 43.047543, 24.236404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610905, 43.176517, 24.501165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623655, 0.226790, -0.748078,
		-0.391318, -0.919023, 0.047619,
		-0.676701, 0.322434, 0.661900,
		35.407894, 43.273247, 24.699736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302094, 42.662903, 24.144680>,  <35.881584, 43.047543, 24.236404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302094, 42.662903, 24.144680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183460, 43.012299, 24.299110>,  <35.112282, 43.221935, 24.391769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183460, 43.012299, 24.299110>,  <35.302094, 42.662903, 24.144680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183460, 43.012299, 24.299110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471588, 0.217587, -0.854553,
		-0.830449, -0.435512, 0.347396,
		-0.296579, 0.873491, 0.386077,
		35.094486, 43.274345, 24.414934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530510, 42.653244, 23.918180>,  <35.302094, 42.662903, 24.144680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530510, 42.653244, 23.918180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574848, 43.029739, 24.045801>,  <34.601452, 43.255634, 24.122374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574848, 43.029739, 24.045801>,  <34.530510, 42.653244, 23.918180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574848, 43.029739, 24.045801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791015, 0.277904, -0.545037,
		-0.601672, -0.191960, 0.775333,
		0.110843, 0.941234, 0.319050,
		34.608101, 43.312111, 24.141516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885567, 42.895908, 24.219509>,  <34.530510, 42.653244, 23.918180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885567, 42.895908, 24.219509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084774, 43.221790, 24.100698>,  <34.204300, 43.417320, 24.029411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084774, 43.221790, 24.100698>,  <33.885567, 42.895908, 24.219509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084774, 43.221790, 24.100698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731029, 0.210194, -0.649165,
		-0.466448, 0.540432, 0.700257,
		0.498019, 0.814710, -0.297027,
		34.234180, 43.466202, 24.011591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310951, 43.435349, 24.174036>,  <33.885567, 42.895908, 24.219509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310951, 43.435349, 24.174036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618671, 43.569107, 23.956280>,  <33.803303, 43.649361, 23.825626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618671, 43.569107, 23.956280>,  <33.310951, 43.435349, 24.174036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618671, 43.569107, 23.956280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631989, 0.273416, -0.725144,
		-0.093637, 0.901901, 0.421671,
		0.769300, 0.334392, -0.544389,
		33.849461, 43.669426, 23.792963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087112, 44.133476, 23.876801>,  <33.310951, 43.435349, 24.174036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087112, 44.133476, 23.876801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403267, 44.028847, 23.655216>,  <33.592960, 43.966068, 23.522266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403267, 44.028847, 23.655216>,  <33.087112, 44.133476, 23.876801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403267, 44.028847, 23.655216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475336, 0.308584, -0.823912,
		0.386455, 0.914526, 0.119566,
		0.790385, -0.261571, -0.553961,
		33.640381, 43.950375, 23.489027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147900, 44.623455, 23.488297>,  <33.087112, 44.133476, 23.876801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147900, 44.623455, 23.488297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349255, 44.354778, 23.270884>,  <33.470070, 44.193573, 23.140436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349255, 44.354778, 23.270884>,  <33.147900, 44.623455, 23.488297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349255, 44.354778, 23.270884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481154, 0.304582, -0.822022,
		0.717697, 0.675320, -0.169865,
		0.503390, -0.671694, -0.543530,
		33.500271, 44.153271, 23.107824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391376, 44.984047, 22.869549>,  <33.147900, 44.623455, 23.488297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391376, 44.984047, 22.869549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338108, 44.592514, 22.807375>,  <33.306149, 44.357594, 22.770071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338108, 44.592514, 22.807375>,  <33.391376, 44.984047, 22.869549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338108, 44.592514, 22.807375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603596, 0.204491, -0.770620,
		0.786090, -0.008805, -0.618049,
		-0.133171, -0.978829, -0.155434,
		33.298157, 44.298866, 22.760744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549210, 44.932182, 22.157724>,  <33.391376, 44.984047, 22.869549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549210, 44.932182, 22.157724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328312, 44.614914, 22.260414>,  <33.195774, 44.424553, 22.322027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328312, 44.614914, 22.260414>,  <33.549210, 44.932182, 22.157724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328312, 44.614914, 22.260414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543648, 0.109160, -0.832185,
		0.632043, -0.599133, -0.491489,
		-0.552240, -0.793174, 0.256724,
		33.162640, 44.376961, 22.337431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538807, 44.427197, 21.577080>,  <33.549210, 44.932182, 22.157724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538807, 44.427197, 21.577080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212421, 44.335777, 21.789482>,  <33.016590, 44.280926, 21.916924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212421, 44.335777, 21.789482>,  <33.538807, 44.427197, 21.577080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212421, 44.335777, 21.789482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496078, -0.194813, -0.846141,
		0.296834, -0.953841, 0.045581,
		-0.815963, -0.228552, 0.531007,
		32.967632, 44.267212, 21.948784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147221, 43.942780, 21.141222>,  <33.538807, 44.427197, 21.577080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147221, 43.942780, 21.141222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897758, 44.062084, 21.430248>,  <32.748081, 44.133667, 21.603664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897758, 44.062084, 21.430248>,  <33.147221, 43.942780, 21.141222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897758, 44.062084, 21.430248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761380, -0.022369, -0.647919,
		-0.177085, -0.954223, 0.241039,
		-0.623651, 0.298259, 0.722565,
		32.710663, 44.151562, 21.647018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447468, 43.639736, 21.106815>,  <33.147221, 43.942780, 21.141222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447468, 43.639736, 21.106815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352272, 43.975101, 21.302946>,  <32.295155, 44.176319, 21.420624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352272, 43.975101, 21.302946>,  <32.447468, 43.639736, 21.106815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352272, 43.975101, 21.302946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807831, 0.109403, -0.579172,
		-0.539229, -0.533941, 0.651259,
		-0.237994, 0.838414, 0.490327,
		32.280872, 44.226627, 21.450045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800573, 43.632122, 21.513350>,  <32.447468, 43.639736, 21.106815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800573, 43.632122, 21.513350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902151, 43.974358, 21.332912>,  <31.963099, 44.179699, 21.224649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902151, 43.974358, 21.332912>,  <31.800573, 43.632122, 21.513350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902151, 43.974358, 21.332912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702067, -0.157742, -0.694420,
		-0.665292, 0.493043, 0.560620,
		0.253945, 0.855585, -0.451094,
		31.978334, 44.231033, 21.197584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845392, 42.979874, 21.046127>,  <31.800573, 43.632122, 21.513350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845392, 42.979874, 21.046127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508432, 42.807278, 20.917019>,  <31.306255, 42.703720, 20.839554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508432, 42.807278, 20.917019>,  <31.845392, 42.979874, 21.046127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508432, 42.807278, 20.917019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239574, -0.836445, 0.492913,
		-0.482664, 0.337904, 0.807995,
		-0.842401, -0.431486, -0.322769,
		31.255713, 42.677834, 20.820189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459921, 42.815777, 21.747356>,  <31.845392, 42.979874, 21.046127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459921, 42.815777, 21.747356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325092, 42.599785, 21.438862>,  <31.244196, 42.470188, 21.253765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.325092, 42.599785, 21.438862>,  <31.459921, 42.815777, 21.747356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325092, 42.599785, 21.438862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120898, -0.837216, 0.533341,
		-0.933685, 0.086532, 0.347483,
		-0.337070, -0.539983, -0.771235,
		31.223972, 42.437790, 21.207491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351612, 42.272491, 22.132593>,  <31.459921, 42.815777, 21.747356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351612, 42.272491, 22.132593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.294407, 42.142338, 21.758711>,  <31.260084, 42.064247, 21.534382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.294407, 42.142338, 21.758711>,  <31.351612, 42.272491, 22.132593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294407, 42.142338, 21.758711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174800, -0.937871, 0.299737,
		-0.974163, -0.120520, 0.191004,
		-0.143012, -0.325380, -0.934706,
		31.251503, 42.044724, 21.478298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865515, 41.618687, 22.110073>,  <31.351612, 42.272491, 22.132593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865515, 41.618687, 22.110073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095669, 41.605705, 21.783176>,  <31.233761, 41.597916, 21.587038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095669, 41.605705, 21.783176>,  <30.865515, 41.618687, 22.110073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095669, 41.605705, 21.783176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281074, -0.930509, 0.234841,
		-0.768069, -0.364829, -0.526279,
		0.575384, -0.032451, -0.817239,
		31.268284, 41.595970, 21.538004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746206, 40.898705, 21.724321>,  <30.865515, 41.618687, 22.110073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746206, 40.898705, 21.724321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098911, 41.074299, 21.655281>,  <31.310534, 41.179653, 21.613857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098911, 41.074299, 21.655281>,  <30.746206, 40.898705, 21.724321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098911, 41.074299, 21.655281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471057, -0.800466, 0.370621,
		0.024536, -0.408103, -0.912606,
		0.881762, 0.438983, -0.172599,
		31.363440, 41.205994, 21.603500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162600, 40.349289, 21.630898>,  <30.746206, 40.898705, 21.724321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162600, 40.349289, 21.630898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.449434, 40.627876, 21.641624>,  <31.621536, 40.795029, 21.648060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.449434, 40.627876, 21.641624>,  <31.162600, 40.349289, 21.630898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449434, 40.627876, 21.641624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599251, -0.635729, 0.486567,
		0.355925, -0.332842, -0.873232,
		0.717088, 0.696466, 0.026815,
		31.664560, 40.836815, 21.649670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799973, 39.956520, 21.473841>,  <31.162600, 40.349289, 21.630898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799973, 39.956520, 21.473841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.930828, 40.299244, 21.633265>,  <32.009342, 40.504879, 21.728918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.930828, 40.299244, 21.633265>,  <31.799973, 39.956520, 21.473841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930828, 40.299244, 21.633265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578080, -0.515096, 0.632851,
		0.747532, 0.023368, -0.663815,
		0.327140, 0.856814, 0.398559,
		32.028969, 40.556290, 21.752832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462006, 39.794640, 21.425175>,  <31.799973, 39.956520, 21.473841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462006, 39.794640, 21.425175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376713, 40.061859, 21.710339>,  <32.325539, 40.222191, 21.881437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.376713, 40.061859, 21.710339>,  <32.462006, 39.794640, 21.425175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376713, 40.061859, 21.710339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578474, -0.501710, 0.643160,
		0.787338, 0.549541, -0.279471,
		-0.213229, 0.668051, 0.712911,
		32.312744, 40.262276, 21.924212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016056, 39.804523, 21.865479>,  <32.462006, 39.794640, 21.425175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016056, 39.804523, 21.865479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733955, 39.972858, 22.093695>,  <32.564693, 40.073860, 22.230625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733955, 39.972858, 22.093695>,  <33.016056, 39.804523, 21.865479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733955, 39.972858, 22.093695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551024, -0.180992, 0.814626,
		0.446088, 0.888897, -0.104247,
		-0.705251, 0.420837, 0.570542,
		32.522381, 40.099110, 22.264856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403908, 40.253544, 22.325094>,  <33.016056, 39.804523, 21.865479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403908, 40.253544, 22.325094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041443, 40.173588, 22.474176>,  <32.823963, 40.125614, 22.563625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041443, 40.173588, 22.474176>,  <33.403908, 40.253544, 22.325094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041443, 40.173588, 22.474176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419120, -0.306516, 0.854626,
		-0.056592, 0.930640, 0.361533,
		-0.906165, -0.199891, 0.372703,
		32.769592, 40.113621, 22.585987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458233, 40.523750, 23.016029>,  <33.403908, 40.253544, 22.325094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458233, 40.523750, 23.016029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156269, 40.261421, 23.016552>,  <32.975090, 40.104023, 23.016865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156269, 40.261421, 23.016552>,  <33.458233, 40.523750, 23.016029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156269, 40.261421, 23.016552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281871, -0.322660, 0.903570,
		-0.592161, 0.682485, 0.428438,
		-0.754913, -0.655824, 0.001306,
		32.929794, 40.064674, 23.016943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127296, 40.595272, 23.613018>,  <33.458233, 40.523750, 23.016029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127296, 40.595272, 23.613018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011375, 40.229977, 23.498472>,  <32.941822, 40.010799, 23.429745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011375, 40.229977, 23.498472>,  <33.127296, 40.595272, 23.613018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011375, 40.229977, 23.498472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235023, -0.357944, 0.903681,
		-0.927783, 0.194585, 0.318365,
		-0.289800, -0.913243, -0.286363,
		32.924435, 39.956005, 23.412563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843498, 40.334888, 24.157965>,  <33.127296, 40.595272, 23.613018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843498, 40.334888, 24.157965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961460, 40.023987, 23.935646>,  <33.032238, 39.837448, 23.802254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.961460, 40.023987, 23.935646>,  <32.843498, 40.334888, 24.157965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961460, 40.023987, 23.935646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362353, -0.447253, 0.817719,
		-0.884157, -0.442542, 0.149744,
		0.294901, -0.777252, -0.555798,
		33.049931, 39.790810, 23.768906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688091, 39.724037, 24.589346>,  <32.843498, 40.334888, 24.157965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688091, 39.724037, 24.589346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980083, 39.615868, 24.338266>,  <33.155277, 39.550964, 24.187618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980083, 39.615868, 24.338266>,  <32.688091, 39.724037, 24.589346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980083, 39.615868, 24.338266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410502, -0.560822, 0.719004,
		-0.546455, -0.782530, -0.298384,
		0.729983, -0.270416, -0.627694,
		33.199078, 39.534740, 24.149958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025715, 39.399078, 24.494831>,  <32.688091, 39.724037, 24.589346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025715, 39.399078, 24.494831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720650, 39.243332, 24.701418>,  <31.537611, 39.149883, 24.825371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720650, 39.243332, 24.701418>,  <32.025715, 39.399078, 24.494831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720650, 39.243332, 24.701418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638897, 0.577903, -0.507778,
		-0.100760, -0.717235, -0.689508,
		-0.762665, -0.389361, 0.516468,
		31.491850, 39.126522, 24.856358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525383, 39.307568, 24.064804>,  <32.025715, 39.399078, 24.494831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525383, 39.307568, 24.064804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.330372, 39.331173, 24.413248>,  <31.213366, 39.345337, 24.622314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.330372, 39.331173, 24.413248>,  <31.525383, 39.307568, 24.064804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330372, 39.331173, 24.413248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592312, 0.710663, -0.379637,
		-0.641469, -0.701053, -0.311516,
		-0.487529, 0.059011, 0.871111,
		31.184113, 39.348877, 24.674582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907637, 39.230072, 23.848282>,  <31.525383, 39.307568, 24.064804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907637, 39.230072, 23.848282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892445, 39.410595, 24.204906>,  <30.883329, 39.518909, 24.418880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892445, 39.410595, 24.204906>,  <30.907637, 39.230072, 23.848282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892445, 39.410595, 24.204906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468598, 0.779980, -0.414785,
		-0.882594, -0.433538, 0.181856,
		-0.037981, 0.451305, 0.891561,
		30.881050, 39.545986, 24.472374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212259, 39.446804, 23.843822>,  <30.907637, 39.230072, 23.848282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212259, 39.446804, 23.843822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413504, 39.654377, 24.120255>,  <30.534250, 39.778919, 24.286114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413504, 39.654377, 24.120255>,  <30.212259, 39.446804, 23.843822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413504, 39.654377, 24.120255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600570, 0.784953, -0.152201,
		-0.621447, -0.338469, 0.706570,
		0.503109, 0.518930, 0.691081,
		30.564436, 39.810055, 24.327579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709764, 39.674305, 24.308397>,  <30.212259, 39.446804, 23.843822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709764, 39.674305, 24.308397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.017305, 39.927471, 24.344812>,  <30.201830, 40.079372, 24.366661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.017305, 39.927471, 24.344812>,  <29.709764, 39.674305, 24.308397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017305, 39.927471, 24.344812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607370, 0.767380, -0.205500,
		-0.199924, 0.102706, 0.974414,
		0.768851, 0.632914, 0.091037,
		30.247961, 40.117344, 24.372124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348141, 40.204815, 24.516151>,  <29.709764, 39.674305, 24.308397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348141, 40.204815, 24.516151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.694534, 40.346390, 24.374846>,  <29.902370, 40.431335, 24.290062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.694534, 40.346390, 24.374846>,  <29.348141, 40.204815, 24.516151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694534, 40.346390, 24.374846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497995, 0.674668, -0.544816,
		0.045505, 0.647727, 0.760513,
		0.865985, 0.353939, -0.353266,
		29.954330, 40.452572, 24.268866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254684, 40.918041, 24.586040>,  <29.348141, 40.204815, 24.516151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254684, 40.918041, 24.586040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.535439, 40.856331, 24.307886>,  <29.703890, 40.819305, 24.140993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.535439, 40.856331, 24.307886>,  <29.254684, 40.918041, 24.586040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535439, 40.856331, 24.307886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483244, 0.614087, -0.623997,
		0.523293, 0.774013, 0.356466,
		0.701883, -0.154274, -0.695384,
		29.746004, 40.810047, 24.099270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270945, 41.491837, 25.124174>,  <29.254684, 40.918041, 24.586040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270945, 41.491837, 25.124174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.950846, 41.613121, 25.331121>,  <28.758787, 41.685894, 25.455290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.950846, 41.613121, 25.331121>,  <29.270945, 41.491837, 25.124174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950846, 41.613121, 25.331121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390553, -0.391161, 0.833344,
		0.455056, 0.868938, 0.194603,
		-0.800245, 0.303215, 0.517366,
		28.710772, 41.704086, 25.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548859, 41.630836, 25.729109>,  <29.270945, 41.491837, 25.124174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548859, 41.630836, 25.729109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.165140, 41.603470, 25.838701>,  <28.934908, 41.587048, 25.904457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.165140, 41.603470, 25.838701>,  <29.548859, 41.630836, 25.729109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165140, 41.603470, 25.838701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280324, -0.347957, 0.894619,
		0.034125, 0.935010, 0.352974,
		-0.959298, -0.068418, 0.273980,
		28.877350, 41.582943, 25.920895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444031, 41.956539, 26.342999>,  <29.548859, 41.630836, 25.729109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444031, 41.956539, 26.342999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.164383, 41.670540, 26.343140>,  <28.996593, 41.498940, 26.343224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.164383, 41.670540, 26.343140>,  <29.444031, 41.956539, 26.342999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164383, 41.670540, 26.343140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423281, -0.413481, 0.806143,
		-0.576248, 0.563742, 0.591721,
		-0.699122, -0.715002, 0.000354,
		28.954647, 41.456039, 26.343246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174177, 41.896431, 27.039576>,  <29.444031, 41.956539, 26.342999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174177, 41.896431, 27.039576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.075964, 41.559219, 26.848150>,  <29.017036, 41.356892, 26.733295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.075964, 41.559219, 26.848150>,  <29.174177, 41.896431, 27.039576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075964, 41.559219, 26.848150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284103, -0.534576, 0.795936,
		-0.926822, 0.059469, 0.370763,
		-0.245534, -0.843025, -0.478562,
		29.002304, 41.306313, 26.704582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727760, 41.553192, 27.500425>,  <29.174177, 41.896431, 27.039576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727760, 41.553192, 27.500425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.898218, 41.281700, 27.261185>,  <29.000492, 41.118805, 27.117640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.898218, 41.281700, 27.261185>,  <28.727760, 41.553192, 27.500425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898218, 41.281700, 27.261185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243548, -0.550655, 0.798413,
		-0.871255, -0.485906, -0.069356,
		0.426144, -0.678730, -0.598102,
		29.026062, 41.078079, 27.081755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906076, 41.116692, 27.968536>,  <28.727760, 41.553192, 27.500425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906076, 41.116692, 27.968536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109327, 40.941940, 27.671633>,  <29.231277, 40.837090, 27.493490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109327, 40.941940, 27.671633>,  <28.906076, 41.116692, 27.968536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109327, 40.941940, 27.671633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580848, -0.462509, 0.669852,
		-0.635942, -0.771509, 0.018744,
		0.508127, -0.436874, -0.742258,
		29.261766, 40.810879, 27.448956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960024, 40.416496, 28.128117>,  <28.906076, 41.116692, 27.968536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960024, 40.416496, 28.128117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252254, 40.485554, 27.863859>,  <29.427593, 40.526989, 27.705305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252254, 40.485554, 27.863859>,  <28.960024, 40.416496, 28.128117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252254, 40.485554, 27.863859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638697, -0.514960, 0.571736,
		-0.241500, -0.839649, -0.486484,
		0.730578, 0.172642, -0.660644,
		29.471428, 40.537346, 27.665667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.481802, 45.494099, 23.632174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732670, 45.215397, 23.492928>,  <30.883190, 45.048176, 23.409380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.732670, 45.215397, 23.492928>,  <30.481802, 45.494099, 23.632174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732670, 45.215397, 23.492928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092898, -0.376837, 0.921609,
		-0.773321, -0.610346, -0.171615,
		0.627171, -0.696757, -0.348116,
		30.920822, 45.006371, 23.388493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331421, 44.882061, 24.012943>,  <30.481802, 45.494099, 23.632174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331421, 44.882061, 24.012943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689980, 44.819450, 23.847063>,  <30.905115, 44.781883, 23.747536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689980, 44.819450, 23.847063>,  <30.331421, 44.882061, 24.012943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689980, 44.819450, 23.847063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293653, -0.491104, 0.820112,
		-0.332028, -0.856923, -0.394260,
		0.896396, -0.156525, -0.414698,
		30.958899, 44.772491, 23.722654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512794, 44.239799, 24.118128>,  <30.331421, 44.882061, 24.012943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512794, 44.239799, 24.118128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854296, 44.444286, 24.078604>,  <31.059196, 44.566978, 24.054890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854296, 44.444286, 24.078604>,  <30.512794, 44.239799, 24.118128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854296, 44.444286, 24.078604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329926, -0.384341, 0.862224,
		0.402805, -0.768728, -0.496796,
		0.853755, 0.511214, -0.098809,
		31.110422, 44.597649, 24.048962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009575, 43.835484, 24.436453>,  <30.512794, 44.239799, 24.118128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009575, 43.835484, 24.436453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.175596, 44.198734, 24.414406>,  <31.275209, 44.416683, 24.401178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.175596, 44.198734, 24.414406>,  <31.009575, 43.835484, 24.436453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175596, 44.198734, 24.414406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477170, -0.165706, 0.863047,
		0.774622, -0.384511, -0.502107,
		0.415053, 0.908126, -0.055118,
		31.300112, 44.471172, 24.397871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667244, 43.726326, 24.560762>,  <31.009575, 43.835484, 24.436453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667244, 43.726326, 24.560762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.619556, 44.115997, 24.637457>,  <31.590944, 44.349800, 24.683474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.619556, 44.115997, 24.637457>,  <31.667244, 43.726326, 24.560762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619556, 44.115997, 24.637457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447141, -0.119742, 0.886413,
		0.886483, 0.191408, -0.421320,
		-0.119217, 0.974179, 0.191735,
		31.583792, 44.408253, 24.694977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398926, 43.885349, 24.830336>,  <31.667244, 43.726326, 24.560762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398926, 43.885349, 24.830336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.138763, 44.166496, 24.945539>,  <31.982666, 44.335186, 25.014662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.138763, 44.166496, 24.945539>,  <32.398926, 43.885349, 24.830336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138763, 44.166496, 24.945539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423639, 0.020942, 0.905589,
		0.630479, 0.711011, -0.311384,
		-0.650405, 0.702869, 0.288008,
		31.943642, 44.377357, 25.031942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826252, 44.295033, 25.151203>,  <32.398926, 43.885349, 24.830336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826252, 44.295033, 25.151203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.470627, 44.398151, 25.302517>,  <32.257252, 44.460022, 25.393305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.470627, 44.398151, 25.302517>,  <32.826252, 44.295033, 25.151203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470627, 44.398151, 25.302517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335967, -0.193846, 0.921710,
		0.310944, 0.946554, 0.085730,
		-0.889067, 0.257797, 0.378286,
		32.203907, 44.475491, 25.416002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998558, 44.674809, 25.761900>,  <32.826252, 44.295033, 25.151203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998558, 44.674809, 25.761900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.623661, 44.543999, 25.810291>,  <32.398724, 44.465511, 25.839325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.623661, 44.543999, 25.810291>,  <32.998558, 44.674809, 25.761900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623661, 44.543999, 25.810291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209722, -0.251524, 0.944856,
		-0.278565, 0.910928, 0.304323,
		-0.937240, -0.327027, 0.120976,
		32.342487, 44.445892, 25.846584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982880, 44.831940, 26.389744>,  <32.998558, 44.674809, 25.761900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982880, 44.831940, 26.389744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679047, 44.576649, 26.339630>,  <32.496746, 44.423473, 26.309561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679047, 44.576649, 26.339630>,  <32.982880, 44.831940, 26.389744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679047, 44.576649, 26.339630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056376, -0.256508, 0.964896,
		-0.647959, 0.725859, 0.230821,
		-0.759586, -0.638226, -0.125286,
		32.451172, 44.385181, 26.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449856, 44.914684, 27.025440>,  <32.982880, 44.831940, 26.389744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449856, 44.914684, 27.025440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.375389, 44.546688, 26.887478>,  <32.330708, 44.325890, 26.804701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.375389, 44.546688, 26.887478>,  <32.449856, 44.914684, 27.025440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375389, 44.546688, 26.887478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126026, -0.370503, 0.920242,
		-0.974402, 0.127854, 0.184919,
		-0.186170, -0.919990, -0.344905,
		32.319538, 44.270691, 26.784006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901068, 44.656212, 27.392166>,  <32.449856, 44.914684, 27.025440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901068, 44.656212, 27.392166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131767, 44.354019, 27.267843>,  <32.270187, 44.172703, 27.193249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131767, 44.354019, 27.267843>,  <31.901068, 44.656212, 27.392166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131767, 44.354019, 27.267843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063967, -0.337530, 0.939139,
		-0.814412, -0.561530, -0.146344,
		0.576750, -0.755485, -0.310808,
		32.304790, 44.127373, 27.174601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778805, 44.091713, 27.870676>,  <31.901068, 44.656212, 27.392166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778805, 44.091713, 27.870676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.099865, 43.935909, 27.689993>,  <32.292500, 43.842426, 27.581583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.099865, 43.935909, 27.689993>,  <31.778805, 44.091713, 27.870676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099865, 43.935909, 27.689993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340469, -0.322609, 0.883178,
		-0.489732, -0.862673, -0.126325,
		0.802648, -0.389511, -0.451706,
		32.340660, 43.819057, 27.554482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097656, 43.649342, 27.882484>,  <31.778805, 44.091713, 27.870676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097656, 43.649342, 27.882484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762991, 43.636944, 28.101219>,  <30.562191, 43.629505, 28.232460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.762991, 43.636944, 28.101219>,  <31.097656, 43.649342, 27.882484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762991, 43.636944, 28.101219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501674, 0.444043, -0.742394,
		-0.219807, -0.895469, -0.387066,
		-0.836665, -0.030998, 0.546837,
		30.511992, 43.627644, 28.265270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635090, 43.426403, 27.479353>,  <31.097656, 43.649342, 27.882484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635090, 43.426403, 27.479353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422016, 43.643906, 27.738762>,  <30.294172, 43.774406, 27.894407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422016, 43.643906, 27.738762>,  <30.635090, 43.426403, 27.479353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422016, 43.643906, 27.738762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434871, 0.481526, -0.760933,
		-0.726041, -0.687360, -0.020038,
		-0.532683, 0.543755, 0.648521,
		30.262211, 43.807034, 27.933317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896183, 43.354771, 27.312164>,  <30.635090, 43.426403, 27.479353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896183, 43.354771, 27.312164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.950346, 43.687347, 27.527710>,  <29.982843, 43.886894, 27.657038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.950346, 43.687347, 27.527710>,  <29.896183, 43.354771, 27.312164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950346, 43.687347, 27.527710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480414, 0.530757, -0.698212,
		-0.866526, -0.164335, 0.471303,
		0.135407, 0.831439, 0.538863,
		29.990969, 43.936779, 27.689369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259605, 43.742111, 27.285368>,  <29.896183, 43.354771, 27.312164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259605, 43.742111, 27.285368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538301, 44.009819, 27.388617>,  <29.705519, 44.170444, 27.450565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538301, 44.009819, 27.388617>,  <29.259605, 43.742111, 27.285368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538301, 44.009819, 27.388617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319275, 0.611571, -0.723909,
		-0.642354, 0.421964, 0.639788,
		0.696739, 0.669274, 0.258123,
		29.747324, 44.210602, 27.466053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946375, 44.293011, 27.651941>,  <29.259605, 43.742111, 27.285368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946375, 44.293011, 27.651941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278416, 44.448139, 27.491678>,  <29.477640, 44.541218, 27.395521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278416, 44.448139, 27.491678>,  <28.946375, 44.293011, 27.651941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278416, 44.448139, 27.491678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554242, 0.652725, -0.516494,
		0.061210, 0.650803, 0.756775,
		0.830102, 0.387822, -0.400655,
		29.527447, 44.564487, 27.371481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647791, 45.081024, 27.614357>,  <28.946375, 44.293011, 27.651941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647791, 45.081024, 27.614357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988417, 45.034943, 27.409782>,  <29.192793, 45.007294, 27.287039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988417, 45.034943, 27.409782>,  <28.647791, 45.081024, 27.614357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988417, 45.034943, 27.409782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314808, 0.667715, -0.674576,
		0.419204, 0.735449, 0.532336,
		0.851565, -0.115201, -0.511435,
		29.243887, 45.000381, 27.256351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874327, 45.751575, 27.474432>,  <28.647791, 45.081024, 27.614357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874327, 45.751575, 27.474432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064688, 45.519672, 27.209888>,  <29.178904, 45.380531, 27.051163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064688, 45.519672, 27.209888>,  <28.874327, 45.751575, 27.474432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064688, 45.519672, 27.209888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270877, 0.618800, -0.737368,
		0.836746, 0.530062, 0.137444,
		0.475901, -0.579759, -0.661360,
		29.207458, 45.345745, 27.011480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127762, 46.230991, 27.008442>,  <28.874327, 45.751575, 27.474432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127762, 46.230991, 27.008442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138067, 45.892296, 26.795889>,  <29.144251, 45.689079, 26.668358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138067, 45.892296, 26.795889>,  <29.127762, 46.230991, 27.008442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138067, 45.892296, 26.795889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147471, 0.522524, -0.839774,
		0.988731, 0.100000, -0.111407,
		0.025764, -0.846740, -0.531383,
		29.145796, 45.638275, 26.636475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552843, 46.377460, 26.532656>,  <29.127762, 46.230991, 27.008442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552843, 46.377460, 26.532656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317724, 46.084724, 26.394730>,  <29.176653, 45.909081, 26.311974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317724, 46.084724, 26.394730>,  <29.552843, 46.377460, 26.532656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317724, 46.084724, 26.394730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122173, 0.501633, -0.856410,
		0.799728, -0.461270, -0.384271,
		-0.587799, -0.731843, -0.344815,
		29.141384, 45.865173, 26.291285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658445, 46.425262, 25.843161>,  <29.552843, 46.377460, 26.532656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658445, 46.425262, 25.843161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343359, 46.178856, 25.844959>,  <29.154306, 46.031010, 25.846039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343359, 46.178856, 25.844959>,  <29.658445, 46.425262, 25.843161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343359, 46.178856, 25.844959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259781, 0.325550, -0.909137,
		0.558583, -0.717312, -0.416472,
		-0.787717, -0.616020, 0.004497,
		29.107044, 45.994049, 25.846308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651455, 46.065392, 25.105131>,  <29.658445, 46.425262, 25.843161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651455, 46.065392, 25.105131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.289412, 46.033848, 25.272251>,  <29.072186, 46.014919, 25.372522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.289412, 46.033848, 25.272251>,  <29.651455, 46.065392, 25.105131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289412, 46.033848, 25.272251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419689, 0.323098, -0.848215,
		-0.068098, -0.943074, -0.325537,
		-0.905110, -0.078862, 0.417800,
		29.017879, 46.010189, 25.397591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128992, 45.808205, 24.498407>,  <29.651455, 46.065392, 25.105131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128992, 45.808205, 24.498407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894558, 45.952660, 24.788534>,  <28.753897, 46.039333, 24.962610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894558, 45.952660, 24.788534>,  <29.128992, 45.808205, 24.498407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894558, 45.952660, 24.788534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691503, 0.243615, -0.680055,
		-0.422288, -0.900131, 0.106945,
		-0.586085, 0.361132, 0.725319,
		28.718733, 46.061001, 25.006130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490479, 45.601372, 24.217161>,  <29.128992, 45.808205, 24.498407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490479, 45.601372, 24.217161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445494, 45.913021, 24.463840>,  <28.418503, 46.100010, 24.611849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445494, 45.913021, 24.463840>,  <28.490479, 45.601372, 24.217161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445494, 45.913021, 24.463840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659392, 0.405773, -0.632891,
		-0.743340, -0.477823, 0.468113,
		-0.112462, 0.779124, 0.616700,
		28.411755, 46.146759, 24.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351313, 44.929817, 24.283901>,  <28.490479, 45.601372, 24.217161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351313, 44.929817, 24.283901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103971, 44.706566, 24.062582>,  <27.955566, 44.572617, 23.929790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103971, 44.706566, 24.062582>,  <28.351313, 44.929817, 24.283901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103971, 44.706566, 24.062582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300708, -0.818479, 0.489557,
		-0.726095, 0.136338, 0.673942,
		-0.618353, -0.558125, -0.553296,
		27.918465, 44.539127, 23.896593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041241, 44.431431, 24.793665>,  <28.351313, 44.929817, 24.283901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041241, 44.431431, 24.793665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960566, 44.281948, 24.431522>,  <27.912161, 44.192261, 24.214237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960566, 44.281948, 24.431522>,  <28.041241, 44.431431, 24.793665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960566, 44.281948, 24.431522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294567, -0.904700, 0.307811,
		-0.934105, -0.204606, 0.292548,
		-0.201689, -0.373703, -0.905355,
		27.900059, 44.169838, 24.159916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497887, 43.958553, 24.882990>,  <28.041241, 44.431431, 24.793665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497887, 43.958553, 24.882990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688398, 43.856499, 24.546404>,  <27.802706, 43.795265, 24.344452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688398, 43.856499, 24.546404>,  <27.497887, 43.958553, 24.882990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688398, 43.856499, 24.546404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115450, -0.930547, 0.347497,
		-0.871683, -0.262652, -0.413743,
		0.476278, -0.255140, -0.841465,
		27.831282, 43.779957, 24.293964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163595, 43.398819, 24.655611>,  <27.497887, 43.958553, 24.882990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163595, 43.398819, 24.655611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516214, 43.386189, 24.467196>,  <27.727785, 43.378609, 24.354147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.516214, 43.386189, 24.467196>,  <27.163595, 43.398819, 24.655611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516214, 43.386189, 24.467196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162789, -0.916232, 0.366087,
		-0.443142, -0.399403, -0.802560,
		0.881547, -0.031580, -0.471039,
		27.780678, 43.376713, 24.325884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187576, 42.740570, 24.464792>,  <27.163595, 43.398819, 24.655611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187576, 42.740570, 24.464792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569370, 42.859486, 24.455156>,  <27.798447, 42.930836, 24.449375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569370, 42.859486, 24.455156>,  <27.187576, 42.740570, 24.464792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569370, 42.859486, 24.455156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278980, -0.861293, 0.424670,
		0.105499, -0.412061, -0.905028,
		0.954484, 0.297287, -0.024091,
		27.855715, 42.948673, 24.447929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509205, 42.064327, 24.427908>,  <27.187576, 42.740570, 24.464792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509205, 42.064327, 24.427908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808895, 42.305737, 24.537031>,  <27.988708, 42.450581, 24.602505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808895, 42.305737, 24.537031>,  <27.509205, 42.064327, 24.427908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808895, 42.305737, 24.537031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361229, -0.717602, 0.595451,
		0.555135, -0.347581, -0.755654,
		0.749226, 0.603519, 0.272809,
		28.033663, 42.486794, 24.618874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118284, 41.651276, 24.371532>,  <27.509205, 42.064327, 24.427908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118284, 41.651276, 24.371532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.198065, 41.930496, 24.646614>,  <28.245934, 42.098030, 24.811663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.198065, 41.930496, 24.646614>,  <28.118284, 41.651276, 24.371532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198065, 41.930496, 24.646614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464853, -0.685214, 0.560709,
		0.862630, 0.207847, -0.461161,
		0.199452, 0.698056, 0.687704,
		28.257900, 42.139912, 24.852924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751032, 41.573921, 24.559586>,  <28.118284, 41.651276, 24.371532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751032, 41.573921, 24.559586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592604, 41.772953, 24.868269>,  <28.497547, 41.892372, 25.053480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592604, 41.772953, 24.868269>,  <28.751032, 41.573921, 24.559586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592604, 41.772953, 24.868269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494971, -0.592182, 0.635865,
		0.773389, 0.633823, -0.011743,
		-0.396072, 0.497584, 0.771711,
		28.473782, 41.922230, 25.099783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551455, 41.622787, 24.386116>,  <28.751032, 41.573921, 24.559586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551455, 41.622787, 24.386116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636364, 41.367321, 24.090267>,  <29.687309, 41.214039, 23.912758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636364, 41.367321, 24.090267>,  <29.551455, 41.622787, 24.386116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636364, 41.367321, 24.090267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360360, 0.652371, -0.666748,
		0.908340, 0.408063, -0.091670,
		0.212272, -0.638668, -0.739624,
		29.700047, 41.175720, 23.868380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923368, 42.069824, 23.919628>,  <29.551455, 41.622787, 24.386116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923368, 42.069824, 23.919628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865648, 41.748306, 23.688770>,  <29.831017, 41.555397, 23.550255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.865648, 41.748306, 23.688770>,  <29.923368, 42.069824, 23.919628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865648, 41.748306, 23.688770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316786, 0.590077, -0.742601,
		0.937456, 0.075675, -0.339778,
		-0.144299, -0.803792, -0.577144,
		29.822359, 41.507168, 23.515627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118792, 42.229225, 23.322811>,  <29.923368, 42.069824, 23.919628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118792, 42.229225, 23.322811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893530, 41.912903, 23.226904>,  <29.758373, 41.723110, 23.169359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893530, 41.912903, 23.226904>,  <30.118792, 42.229225, 23.322811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893530, 41.912903, 23.226904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285687, 0.458580, -0.841479,
		0.775396, -0.405385, -0.484174,
		-0.563155, -0.790802, -0.239768,
		29.724583, 41.675663, 23.154974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307306, 41.982582, 22.652905>,  <30.118792, 42.229225, 23.322811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307306, 41.982582, 22.652905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933779, 41.848206, 22.702105>,  <29.709661, 41.767582, 22.731625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933779, 41.848206, 22.702105>,  <30.307306, 41.982582, 22.652905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933779, 41.848206, 22.702105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333679, 0.693915, -0.638076,
		0.129002, -0.636889, -0.760086,
		-0.933819, -0.335938, 0.123000,
		29.653633, 41.747425, 22.739004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050451, 41.968250, 21.994799>,  <30.307306, 41.982582, 22.652905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050451, 41.968250, 21.994799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.742912, 41.947342, 22.249714>,  <29.558388, 41.934799, 22.402664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.742912, 41.947342, 22.249714>,  <30.050451, 41.968250, 21.994799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742912, 41.947342, 22.249714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508553, 0.654140, -0.559888,
		-0.387613, -0.754566, -0.529515,
		-0.768850, -0.052266, 0.637290,
		29.512257, 41.931664, 22.440901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537043, 41.862679, 21.527487>,  <30.050451, 41.968250, 21.994799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537043, 41.862679, 21.527487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.376976, 42.007225, 21.864363>,  <29.280935, 42.093952, 22.066488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.376976, 42.007225, 21.864363>,  <29.537043, 41.862679, 21.527487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376976, 42.007225, 21.864363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523589, 0.664075, -0.533722,
		-0.752144, -0.654539, -0.076535,
		-0.400167, 0.361363, 0.842190,
		29.256926, 42.115635, 22.117020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879107, 41.872253, 21.472258>,  <29.537043, 41.862679, 21.527487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879107, 41.872253, 21.472258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905588, 42.157940, 21.750975>,  <28.921476, 42.329350, 21.918205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.905588, 42.157940, 21.750975>,  <28.879107, 41.872253, 21.472258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905588, 42.157940, 21.750975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556319, 0.606133, -0.568430,
		-0.828328, -0.350007, 0.437457,
		0.066203, 0.714212, 0.696792,
		28.925449, 42.372204, 21.960012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198254, 42.251217, 21.572668>,  <28.879107, 41.872253, 21.472258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198254, 42.251217, 21.572668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455904, 42.516972, 21.724297>,  <28.610495, 42.676426, 21.815273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455904, 42.516972, 21.724297>,  <28.198254, 42.251217, 21.572668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455904, 42.516972, 21.724297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395633, 0.713500, -0.578267,
		-0.654659, 0.222503, 0.722436,
		0.644124, 0.664387, 0.379070,
		28.649141, 42.716290, 21.838018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795156, 42.824570, 21.873039>,  <28.198254, 42.251217, 21.572668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795156, 42.824570, 21.873039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166000, 42.940842, 21.778406>,  <28.388508, 43.010605, 21.721626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166000, 42.940842, 21.778406>,  <27.795156, 42.824570, 21.873039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166000, 42.940842, 21.778406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374694, 0.733023, -0.567698,
		0.008403, 0.614965, 0.788510,
		0.927110, 0.290679, -0.236583,
		28.444134, 43.028046, 21.707432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.049076, 34.423763, 32.847424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414078, 34.516289, 32.712475>,  <36.633080, 34.571804, 32.631504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414078, 34.516289, 32.712475>,  <36.049076, 34.423763, 32.847424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414078, 34.516289, 32.712475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398289, 0.690435, -0.603876,
		0.093247, 0.685414, 0.722158,
		0.912508, 0.231318, -0.337373,
		36.687832, 34.585686, 32.611263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028030, 35.231033, 32.781933>,  <36.049076, 34.423763, 32.847424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028030, 35.231033, 32.781933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337601, 35.096123, 32.567535>,  <36.523342, 35.015179, 32.438896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337601, 35.096123, 32.567535>,  <36.028030, 35.231033, 32.781933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337601, 35.096123, 32.567535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211037, 0.660639, -0.720430,
		0.597078, 0.670673, 0.440109,
		0.773926, -0.337273, -0.535990,
		36.569778, 34.994942, 32.406738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309856, 35.835274, 32.446529>,  <36.028030, 35.231033, 32.781933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309856, 35.835274, 32.446529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417847, 35.517990, 32.228199>,  <36.482639, 35.327618, 32.097202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417847, 35.517990, 32.228199>,  <36.309856, 35.835274, 32.446529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417847, 35.517990, 32.228199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278508, 0.478314, -0.832856,
		0.921708, 0.376869, -0.091782,
		0.269977, -0.793212, -0.545827,
		36.498840, 35.280025, 32.064449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561298, 36.129776, 31.814005>,  <36.309856, 35.835274, 32.446529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561298, 36.129776, 31.814005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493958, 35.757465, 31.684202>,  <36.453552, 35.534077, 31.606319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493958, 35.757465, 31.684202>,  <36.561298, 36.129776, 31.814005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493958, 35.757465, 31.684202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182962, 0.352991, -0.917563,
		0.968599, -0.095097, -0.229723,
		-0.168348, -0.930782, -0.324508,
		36.443455, 35.478230, 31.586849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799587, 36.096539, 31.144943>,  <36.561298, 36.129776, 31.814005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799587, 36.096539, 31.144943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574989, 35.765919, 31.160616>,  <36.440231, 35.567547, 31.170019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574989, 35.765919, 31.160616>,  <36.799587, 36.096539, 31.144943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574989, 35.765919, 31.160616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426483, 0.248494, -0.869691,
		0.709110, -0.505035, -0.492039,
		-0.561493, -0.826554, 0.039180,
		36.406540, 35.517952, 31.172369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873489, 35.834267, 30.482721>,  <36.799587, 36.096539, 31.144943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873489, 35.834267, 30.482721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535431, 35.682137, 30.632969>,  <36.332596, 35.590858, 30.723118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535431, 35.682137, 30.632969>,  <36.873489, 35.834267, 30.482721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535431, 35.682137, 30.632969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511673, 0.372259, -0.774347,
		0.154672, -0.846629, -0.509212,
		-0.845143, -0.380320, 0.375619,
		36.281887, 35.568039, 30.745655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603207, 35.407803, 29.973419>,  <36.873489, 35.834267, 30.482721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603207, 35.407803, 29.973419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297825, 35.531223, 30.200377>,  <36.114597, 35.605274, 30.336550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297825, 35.531223, 30.200377>,  <36.603207, 35.407803, 29.973419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297825, 35.531223, 30.200377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524323, 0.216872, -0.823439,
		-0.377123, -0.926156, -0.003792,
		-0.763455, 0.308549, 0.567392,
		36.068787, 35.623787, 30.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048115, 35.097576, 29.639309>,  <36.603207, 35.407803, 29.973419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048115, 35.097576, 29.639309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878933, 35.368702, 29.879868>,  <35.777424, 35.531376, 30.024202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878933, 35.368702, 29.879868>,  <36.048115, 35.097576, 29.639309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878933, 35.368702, 29.879868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726652, 0.142811, -0.671999,
		-0.541377, -0.721230, 0.432133,
		-0.422952, 0.677815, 0.601397,
		35.752048, 35.572044, 30.060287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354084, 34.878544, 29.693075>,  <36.048115, 35.097576, 29.639309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354084, 34.878544, 29.693075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375141, 35.271229, 29.766243>,  <35.387775, 35.506840, 29.810144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375141, 35.271229, 29.766243>,  <35.354084, 34.878544, 29.693075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375141, 35.271229, 29.766243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707258, 0.165970, -0.687197,
		-0.704992, -0.093196, 0.703065,
		0.052644, 0.981717, 0.182922,
		35.390934, 35.565742, 29.821119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678452, 35.028465, 29.605236>,  <35.354084, 34.878544, 29.693075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678452, 35.028465, 29.605236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801765, 35.408569, 29.622959>,  <34.875751, 35.636631, 29.633593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801765, 35.408569, 29.622959>,  <34.678452, 35.028465, 29.605236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801765, 35.408569, 29.622959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815900, 0.288066, -0.501323,
		-0.489152, 0.118397, 0.864125,
		0.308280, 0.950263, 0.044308,
		34.894249, 35.693649, 29.636251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058754, 35.453159, 29.633108>,  <34.678452, 35.028465, 29.605236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058754, 35.453159, 29.633108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317093, 35.730270, 29.504774>,  <34.472095, 35.896538, 29.427774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317093, 35.730270, 29.504774>,  <34.058754, 35.453159, 29.633108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317093, 35.730270, 29.504774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688305, 0.346542, -0.637294,
		-0.330322, 0.632428, 0.700658,
		0.645850, 0.692779, -0.320833,
		34.510849, 35.938103, 29.408524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742523, 36.127285, 29.701292>,  <34.058754, 35.453159, 29.633108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742523, 36.127285, 29.701292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031303, 36.152657, 29.425682>,  <34.204571, 36.167881, 29.260315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031303, 36.152657, 29.425682>,  <33.742523, 36.127285, 29.701292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031303, 36.152657, 29.425682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681302, 0.239109, -0.691849,
		0.120869, 0.968919, 0.215840,
		0.721955, 0.063429, -0.689027,
		34.247890, 36.171684, 29.218973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916855, 36.637901, 30.229946>,  <33.742523, 36.127285, 29.701292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916855, 36.637901, 30.229946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632820, 36.727859, 30.496841>,  <33.462399, 36.781834, 30.656979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632820, 36.727859, 30.496841>,  <33.916855, 36.637901, 30.229946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632820, 36.727859, 30.496841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344399, -0.715599, 0.607707,
		0.614144, 0.661318, 0.430681,
		-0.710082, 0.224893, 0.667238,
		33.419796, 36.795326, 30.697012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244022, 36.593243, 30.834341>,  <33.916855, 36.637901, 30.229946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244022, 36.593243, 30.834341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867935, 36.596275, 30.970535>,  <33.642281, 36.598095, 31.052252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867935, 36.596275, 30.970535>,  <34.244022, 36.593243, 30.834341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867935, 36.596275, 30.970535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280767, -0.548589, 0.787541,
		0.192759, 0.836058, 0.513664,
		-0.940220, 0.007586, 0.340483,
		33.585869, 36.598553, 31.072680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200352, 36.916866, 31.469622>,  <34.244022, 36.593243, 30.834341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200352, 36.916866, 31.469622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878048, 36.680462, 31.454353>,  <33.684666, 36.538620, 31.445192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878048, 36.680462, 31.454353>,  <34.200352, 36.916866, 31.469622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878048, 36.680462, 31.454353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278072, -0.434439, 0.856702,
		-0.522906, 0.679680, 0.514397,
		-0.805758, -0.591014, -0.038171,
		33.636322, 36.503159, 31.442902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855068, 37.052742, 31.968893>,  <34.200352, 36.916866, 31.469622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855068, 37.052742, 31.968893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721344, 36.679039, 31.919245>,  <33.641109, 36.454819, 31.889456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721344, 36.679039, 31.919245>,  <33.855068, 37.052742, 31.968893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721344, 36.679039, 31.919245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229183, -0.208335, 0.950827,
		-0.914172, 0.289425, 0.283763,
		-0.334311, -0.934253, -0.124123,
		33.621052, 36.398762, 31.882008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787201, 36.759422, 32.676079>,  <33.855068, 37.052742, 31.968893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787201, 36.759422, 32.676079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720940, 36.436779, 32.449120>,  <33.681183, 36.243195, 32.312943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720940, 36.436779, 32.449120>,  <33.787201, 36.759422, 32.676079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720940, 36.436779, 32.449120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054629, -0.581972, 0.811372,
		-0.984670, 0.103407, 0.140467,
		-0.165649, -0.806607, -0.567402,
		33.671246, 36.194798, 32.278900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244911, 36.388390, 33.053291>,  <33.787201, 36.759422, 32.676079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244911, 36.388390, 33.053291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461567, 36.159801, 32.806698>,  <33.591560, 36.022648, 32.658741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461567, 36.159801, 32.806698>,  <33.244911, 36.388390, 33.053291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461567, 36.159801, 32.806698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313354, -0.543251, 0.778902,
		-0.780024, -0.615059, -0.115172,
		0.541637, -0.571473, -0.616480,
		33.624058, 35.988361, 32.621754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080101, 35.732269, 33.156868>,  <33.244911, 36.388390, 33.053291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080101, 35.732269, 33.156868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454350, 35.716866, 33.016506>,  <33.678898, 35.707623, 32.932289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454350, 35.716866, 33.016506>,  <33.080101, 35.732269, 33.156868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454350, 35.716866, 33.016506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269130, -0.565469, 0.779624,
		-0.228448, -0.823870, -0.518700,
		0.935618, -0.038506, -0.350909,
		33.735035, 35.705315, 32.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353001, 35.019726, 33.180492>,  <33.080101, 35.732269, 33.156868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353001, 35.019726, 33.180492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659374, 35.275337, 33.208740>,  <33.843197, 35.428703, 33.225689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659374, 35.275337, 33.208740>,  <33.353001, 35.019726, 33.180492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659374, 35.275337, 33.208740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381635, -0.540304, 0.749951,
		0.517398, -0.547461, -0.657713,
		0.765933, 0.639030, 0.070622,
		33.889153, 35.467045, 33.229927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765938, 34.616104, 33.577854>,  <33.353001, 35.019726, 33.180492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765938, 34.616104, 33.577854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984818, 34.950821, 33.570332>,  <34.116146, 35.151649, 33.565819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984818, 34.950821, 33.570332>,  <33.765938, 34.616104, 33.577854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984818, 34.950821, 33.570332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423801, -0.257614, 0.868348,
		0.721780, -0.483131, -0.495599,
		0.547199, 0.836792, -0.018810,
		34.148975, 35.201859, 33.564690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404789, 34.382519, 33.981644>,  <33.765938, 34.616104, 33.577854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404789, 34.382519, 33.981644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428444, 34.781361, 33.962498>,  <34.442635, 35.020664, 33.951008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.428444, 34.781361, 33.962498>,  <34.404789, 34.382519, 33.981644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428444, 34.781361, 33.962498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296727, 0.028228, 0.954545,
		0.953130, -0.070650, -0.294198,
		0.059134, 0.997102, -0.047868,
		34.446182, 35.080490, 33.948135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044090, 34.517941, 34.209076>,  <34.404789, 34.382519, 33.981644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044090, 34.517941, 34.209076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826416, 34.850368, 34.255024>,  <34.695812, 35.049824, 34.282593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826416, 34.850368, 34.255024>,  <35.044090, 34.517941, 34.209076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826416, 34.850368, 34.255024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322431, 0.080771, 0.943141,
		0.774535, 0.550276, -0.311916,
		-0.544182, 0.831067, 0.114866,
		34.663162, 35.099689, 34.289482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575989, 34.997570, 34.462688>,  <35.044090, 34.517941, 34.209076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575989, 34.997570, 34.462688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225697, 35.150959, 34.580029>,  <35.015522, 35.242992, 34.650433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225697, 35.150959, 34.580029>,  <35.575989, 34.997570, 34.462688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225697, 35.150959, 34.580029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300967, -0.041502, 0.952731,
		0.377522, 0.922619, -0.079068,
		-0.875726, 0.383474, 0.293346,
		34.962978, 35.266003, 34.668034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748501, 35.701244, 34.948120>,  <35.575989, 34.997570, 34.462688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748501, 35.701244, 34.948120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361607, 35.625500, 35.015759>,  <35.129471, 35.580055, 35.056339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361607, 35.625500, 35.015759>,  <35.748501, 35.701244, 34.948120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361607, 35.625500, 35.015759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113616, 0.272764, 0.955349,
		-0.227026, 0.943262, -0.242314,
		-0.967238, -0.189359, 0.169094,
		35.071434, 35.568691, 35.066486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406689, 36.318672, 35.311497>,  <35.748501, 35.701244, 34.948120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406689, 36.318672, 35.311497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186867, 35.990337, 35.373741>,  <35.054974, 35.793335, 35.411087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186867, 35.990337, 35.373741>,  <35.406689, 36.318672, 35.311497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186867, 35.990337, 35.373741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213696, 0.041962, 0.975998,
		-0.807667, 0.569616, 0.152350,
		-0.549552, -0.820839, 0.155616,
		35.022003, 35.744087, 35.420425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898682, 36.533012, 35.822445>,  <35.406689, 36.318672, 35.311497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898682, 36.533012, 35.822445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998657, 36.145706, 35.822407>,  <35.058643, 35.913322, 35.822384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998657, 36.145706, 35.822407>,  <34.898682, 36.533012, 35.822445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998657, 36.145706, 35.822407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139743, 0.035976, 0.989534,
		-0.958126, -0.247331, 0.144299,
		0.249934, -0.968263, -0.000093,
		35.073639, 35.855228, 35.822380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419415, 37.151222, 35.934647>,  <34.898682, 36.533012, 35.822445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419415, 37.151222, 35.934647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642750, 37.451355, 35.793079>,  <34.776752, 37.631435, 35.708138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642750, 37.451355, 35.793079>,  <34.419415, 37.151222, 35.934647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642750, 37.451355, 35.793079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784093, 0.337909, -0.520591,
		-0.271022, 0.568175, 0.776997,
		0.558341, 0.750330, -0.353921,
		34.810253, 37.676453, 35.686901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018803, 37.784405, 35.956661>,  <34.419415, 37.151222, 35.934647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018803, 37.784405, 35.956661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307465, 37.847652, 35.687080>,  <34.480659, 37.885601, 35.525330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307465, 37.847652, 35.687080>,  <34.018803, 37.784405, 35.956661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307465, 37.847652, 35.687080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688741, 0.261978, -0.676020,
		0.069668, 0.952032, 0.297963,
		0.721652, 0.158122, -0.673955,
		34.523960, 37.895088, 35.484894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965988, 38.508667, 35.660053>,  <34.018803, 37.784405, 35.956661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965988, 38.508667, 35.660053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179451, 38.308670, 35.387230>,  <34.307529, 38.188671, 35.223534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179451, 38.308670, 35.387230>,  <33.965988, 38.508667, 35.660053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179451, 38.308670, 35.387230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532756, 0.427597, -0.730296,
		0.656793, 0.753103, -0.038184,
		0.533661, -0.499996, -0.682063,
		34.339550, 38.158672, 35.182610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020901, 38.951141, 35.054092>,  <33.965988, 38.508667, 35.660053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020901, 38.951141, 35.054092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107681, 38.589149, 34.907696>,  <34.159748, 38.371956, 34.819859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107681, 38.589149, 34.907696>,  <34.020901, 38.951141, 35.054092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107681, 38.589149, 34.907696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406318, 0.257184, -0.876791,
		0.887603, 0.338926, -0.311913,
		0.216949, -0.904978, -0.365989,
		34.172768, 38.317657, 34.797897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413475, 39.105904, 34.357784>,  <34.020901, 38.951141, 35.054092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413475, 39.105904, 34.357784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260639, 38.736565, 34.342648>,  <34.168938, 38.514961, 34.333565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260639, 38.736565, 34.342648>,  <34.413475, 39.105904, 34.357784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260639, 38.736565, 34.342648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362512, 0.187423, -0.912939,
		0.850055, -0.335106, -0.406338,
		-0.382088, -0.923351, -0.037840,
		34.146011, 38.459560, 34.331295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307499, 38.978981, 33.630836>,  <34.413475, 39.105904, 34.357784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307499, 38.978981, 33.630836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078007, 38.697075, 33.797756>,  <33.940311, 38.527931, 33.897907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078007, 38.697075, 33.797756>,  <34.307499, 38.978981, 33.630836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078007, 38.697075, 33.797756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715562, 0.183413, -0.674041,
		0.398502, -0.685322, -0.609533,
		-0.573731, -0.704765, 0.417300,
		33.905888, 38.485645, 33.922947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089294, 38.474190, 33.041622>,  <34.307499, 38.978981, 33.630836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089294, 38.474190, 33.041622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826725, 38.458508, 33.342972>,  <33.669182, 38.449097, 33.523781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826725, 38.458508, 33.342972>,  <34.089294, 38.474190, 33.041622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826725, 38.458508, 33.342972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738920, 0.234646, -0.631616,
		-0.152013, -0.971290, -0.182997,
		-0.656422, -0.039207, 0.753375,
		33.629799, 38.446747, 33.568985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513927, 38.275162, 32.668858>,  <34.089294, 38.474190, 33.041622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513927, 38.275162, 32.668858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331779, 38.348404, 33.017365>,  <33.222488, 38.392349, 33.226467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331779, 38.348404, 33.017365>,  <33.513927, 38.275162, 32.668858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331779, 38.348404, 33.017365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818459, 0.299027, -0.490619,
		-0.350369, -0.936512, 0.013698,
		-0.455374, 0.183109, 0.871266,
		33.195168, 38.403336, 33.278744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795292, 37.976498, 32.618237>,  <33.513927, 38.275162, 32.668858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795292, 37.976498, 32.618237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792049, 38.281464, 32.877052>,  <32.790104, 38.464443, 33.032341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792049, 38.281464, 32.877052>,  <32.795292, 37.976498, 32.618237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792049, 38.281464, 32.877052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775829, 0.403442, -0.485102,
		-0.630892, -0.505926, 0.588230,
		-0.008109, 0.762413, 0.647041,
		32.789616, 38.510189, 33.071163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033779, 38.147175, 32.712112>,  <32.795292, 37.976498, 32.618237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033779, 38.147175, 32.712112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.240295, 38.466831, 32.835281>,  <32.364204, 38.658627, 32.909184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.240295, 38.466831, 32.835281>,  <32.033779, 38.147175, 32.712112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240295, 38.466831, 32.835281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742906, 0.596788, -0.303207,
		-0.426072, -0.072218, 0.901802,
		0.516288, 0.799143, 0.307926,
		32.395184, 38.706573, 32.927658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402880, 38.617168, 32.927555>,  <32.033779, 38.147175, 32.712112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402880, 38.617168, 32.927555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741697, 38.823547, 32.876465>,  <31.944988, 38.947376, 32.845810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741697, 38.823547, 32.876465>,  <31.402880, 38.617168, 32.927555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741697, 38.823547, 32.876465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499171, 0.689614, -0.524653,
		-0.182614, 0.508161, 0.841680,
		0.847042, 0.515951, -0.127726,
		31.995810, 38.978333, 32.838146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186726, 39.294445, 33.065372>,  <31.402880, 38.617168, 32.927555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186726, 39.294445, 33.065372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.536022, 39.335850, 32.874908>,  <31.745600, 39.360691, 32.760628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.536022, 39.335850, 32.874908>,  <31.186726, 39.294445, 33.065372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536022, 39.335850, 32.874908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381756, 0.752614, -0.536502,
		0.302835, 0.650275, 0.696730,
		0.873243, 0.103510, -0.476164,
		31.797995, 39.366901, 32.732059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235218, 39.987156, 33.038456>,  <31.186726, 39.294445, 33.065372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235218, 39.987156, 33.038456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463161, 39.823811, 32.753220>,  <31.599928, 39.725803, 32.582077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463161, 39.823811, 32.753220>,  <31.235218, 39.987156, 33.038456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463161, 39.823811, 32.753220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374296, 0.643548, -0.667645,
		0.731549, 0.647371, 0.213884,
		0.569858, -0.408359, -0.713095,
		31.634119, 39.701302, 32.539291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704569, 40.503815, 32.687222>,  <31.235218, 39.987156, 33.038456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704569, 40.503815, 32.687222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645178, 40.201382, 32.432255>,  <31.609543, 40.019924, 32.279274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645178, 40.201382, 32.432255>,  <31.704569, 40.503815, 32.687222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645178, 40.201382, 32.432255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400121, 0.635374, -0.660456,
		0.904355, 0.156982, -0.396861,
		-0.148475, -0.756079, -0.637416,
		31.600636, 39.974556, 32.241032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699059, 40.836128, 32.032795>,  <31.704569, 40.503815, 32.687222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699059, 40.836128, 32.032795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577368, 40.467030, 31.938143>,  <31.504354, 40.245571, 31.881351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577368, 40.467030, 31.938143>,  <31.699059, 40.836128, 32.032795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577368, 40.467030, 31.938143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529604, 0.370309, -0.763145,
		0.791812, -0.106850, -0.601346,
		-0.304226, -0.922743, -0.236627,
		31.486099, 40.190208, 31.867155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959366, 40.668018, 31.314568>,  <31.699059, 40.836128, 32.032795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959366, 40.668018, 31.314568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.642517, 40.433918, 31.383873>,  <31.452408, 40.293457, 31.425457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.642517, 40.433918, 31.383873>,  <31.959366, 40.668018, 31.314568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642517, 40.433918, 31.383873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501742, 0.462729, -0.730847,
		0.347555, -0.665855, -0.660184,
		-0.792124, -0.585251, 0.173264,
		31.404881, 40.258343, 31.435852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719986, 40.502792, 30.700098>,  <31.959366, 40.668018, 31.314568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719986, 40.502792, 30.700098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393799, 40.436920, 30.922050>,  <31.198086, 40.397396, 31.055222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393799, 40.436920, 30.922050>,  <31.719986, 40.502792, 30.700098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393799, 40.436920, 30.922050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553629, 0.501582, -0.664764,
		-0.168842, -0.849291, -0.500197,
		-0.815468, -0.164683, 0.554880,
		31.149158, 40.387516, 31.088514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205173, 40.242500, 30.258877>,  <31.719986, 40.502792, 30.700098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205173, 40.242500, 30.258877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008120, 40.382523, 30.577566>,  <30.889887, 40.466537, 30.768780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008120, 40.382523, 30.577566>,  <31.205173, 40.242500, 30.258877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008120, 40.382523, 30.577566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591156, 0.537250, -0.601579,
		-0.638626, -0.767348, -0.057732,
		-0.492637, 0.350056, 0.796725,
		30.860329, 40.487537, 30.816584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616367, 40.456676, 30.044615>,  <31.205173, 40.242500, 30.258877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616367, 40.456676, 30.044615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590818, 40.666878, 30.383970>,  <30.575489, 40.792999, 30.587584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590818, 40.666878, 30.383970>,  <30.616367, 40.456676, 30.044615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590818, 40.666878, 30.383970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336060, 0.789148, -0.514110,
		-0.939672, -0.317946, 0.126197,
		-0.063871, 0.525505, 0.848390,
		30.571657, 40.824528, 30.638487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970722, 40.759861, 30.078720>,  <30.616367, 40.456676, 30.044615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970722, 40.759861, 30.078720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.181114, 40.992233, 30.327194>,  <30.307348, 41.131657, 30.476278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.181114, 40.992233, 30.327194>,  <29.970722, 40.759861, 30.078720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181114, 40.992233, 30.327194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117939, 0.773140, -0.623174,
		-0.842281, 0.254514, 0.475168,
		0.525978, 0.580928, 0.621184,
		30.338907, 41.166512, 30.513550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649172, 41.322010, 29.962580>,  <29.970722, 40.759861, 30.078720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649172, 41.322010, 29.962580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961777, 41.451912, 30.175659>,  <30.149340, 41.529854, 30.303507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961777, 41.451912, 30.175659>,  <29.649172, 41.322010, 29.962580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961777, 41.451912, 30.175659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025805, 0.869933, -0.492494,
		-0.623356, 0.371144, 0.688244,
		0.781512, 0.324759, 0.532701,
		30.196230, 41.549339, 30.335470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494259, 41.976997, 30.319519>,  <29.649172, 41.322010, 29.962580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494259, 41.976997, 30.319519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.882992, 41.945728, 30.230587>,  <30.116232, 41.926968, 30.177227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.882992, 41.945728, 30.230587>,  <29.494259, 41.976997, 30.319519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882992, 41.945728, 30.230587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045319, 0.863788, -0.501813,
		0.231277, 0.497753, 0.835914,
		0.971832, -0.078175, -0.222332,
		30.174541, 41.922276, 30.163887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658278, 42.700478, 30.238409>,  <29.494259, 41.976997, 30.319519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658278, 42.700478, 30.238409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.987598, 42.524372, 30.095112>,  <30.185192, 42.418709, 30.009134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.987598, 42.524372, 30.095112>,  <29.658278, 42.700478, 30.238409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987598, 42.524372, 30.095112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194318, 0.811637, -0.550896,
		0.533303, 0.383942, 0.753775,
		0.823304, -0.440266, -0.358241,
		30.234589, 42.392292, 29.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198288, 43.203434, 30.205744>,  <29.658278, 42.700478, 30.238409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198288, 43.203434, 30.205744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286118, 42.925159, 29.932158>,  <30.338816, 42.758194, 29.768005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286118, 42.925159, 29.932158>,  <30.198288, 43.203434, 30.205744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286118, 42.925159, 29.932158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027907, 0.705266, -0.708394,
		0.975197, 0.136457, 0.174272,
		0.219573, -0.695687, -0.683964,
		30.351990, 42.716454, 29.726969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678591, 43.522652, 29.834810>,  <30.198288, 43.203434, 30.205744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678591, 43.522652, 29.834810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.555435, 43.220390, 29.603571>,  <30.481543, 43.039036, 29.464827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.555435, 43.220390, 29.603571>,  <30.678591, 43.522652, 29.834810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555435, 43.220390, 29.603571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097746, 0.579277, -0.809249,
		0.946388, -0.305666, -0.104491,
		-0.307889, -0.755650, -0.578098,
		30.463068, 42.993694, 29.430141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142889, 43.549397, 29.192982>,  <30.678591, 43.522652, 29.834810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142889, 43.549397, 29.192982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.817768, 43.331593, 29.110174>,  <30.622696, 43.200909, 29.060490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.817768, 43.331593, 29.110174>,  <31.142889, 43.549397, 29.192982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817768, 43.331593, 29.110174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038949, 0.405378, -0.913319,
		0.581235, -0.734286, -0.350701,
		-0.812803, -0.544513, -0.207020,
		30.573927, 43.168240, 29.048069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300011, 43.589462, 28.578630>,  <31.142889, 43.549397, 29.192982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300011, 43.589462, 28.578630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914236, 43.489857, 28.614092>,  <30.682772, 43.430096, 28.635368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914236, 43.489857, 28.614092>,  <31.300011, 43.589462, 28.578630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914236, 43.489857, 28.614092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246225, 0.724402, -0.643906,
		0.096119, -0.642834, -0.759951,
		-0.964435, -0.249011, 0.088652,
		30.624907, 43.415154, 28.640688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833906, 43.274178, 28.073614>,  <31.300011, 43.589462, 28.578630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833906, 43.274178, 28.073614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204365, 43.367313, 27.954927>,  <32.426640, 43.423195, 27.883715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204365, 43.367313, 27.954927>,  <31.833906, 43.274178, 28.073614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204365, 43.367313, 27.954927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376659, -0.530119, 0.759672,
		0.019588, -0.815327, -0.578669,
		0.926145, 0.232841, -0.296716,
		32.482208, 43.437164, 27.865913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213215, 42.611103, 28.239658>,  <31.833906, 43.274178, 28.073614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213215, 42.611103, 28.239658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480995, 42.899788, 28.169279>,  <32.641663, 43.072998, 28.127050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480995, 42.899788, 28.169279>,  <32.213215, 42.611103, 28.239658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480995, 42.899788, 28.169279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689707, -0.515893, 0.508092,
		0.275926, -0.461499, -0.843139,
		0.669454, 0.721715, -0.175951,
		32.681831, 43.116302, 28.116493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873314, 42.279888, 27.925823>,  <32.213215, 42.611103, 28.239658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873314, 42.279888, 27.925823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998913, 42.628983, 28.075352>,  <33.074272, 42.838440, 28.165070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998913, 42.628983, 28.075352>,  <32.873314, 42.279888, 27.925823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998913, 42.628983, 28.075352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778676, -0.461996, 0.424528,
		0.543204, 0.157787, -0.824641,
		0.313996, 0.872733, 0.373823,
		33.093113, 42.890804, 28.187498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624893, 42.314667, 27.828003>,  <32.873314, 42.279888, 27.925823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624893, 42.314667, 27.828003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599384, 42.595997, 28.111202>,  <33.584080, 42.764797, 28.281122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599384, 42.595997, 28.111202>,  <33.624893, 42.314667, 27.828003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599384, 42.595997, 28.111202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836226, -0.349535, 0.422553,
		0.544664, 0.618994, -0.565851,
		-0.063773, 0.703329, 0.707998,
		33.580254, 42.806995, 28.323601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311092, 42.445805, 27.980843>,  <33.624893, 42.314667, 27.828003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311092, 42.445805, 27.980843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083183, 42.540257, 28.295704>,  <33.946438, 42.596928, 28.484621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083183, 42.540257, 28.295704>,  <34.311092, 42.445805, 27.980843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083183, 42.540257, 28.295704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688464, -0.385886, 0.614093,
		0.448756, 0.891815, 0.057298,
		-0.569768, 0.236131, 0.787151,
		33.912254, 42.611095, 28.531849>
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
